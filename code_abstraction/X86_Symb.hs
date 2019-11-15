{-# LANGUAGE PartialTypeSignatures #-}


module X86_Symb where


import X86_Datastructures
import X86_ACode
import X86_CFG
import X86_Expr
import Z3
import qualified Data.Map as M
import Control.Monad.State.Lazy
import Data.List
import Data.Maybe
import Data.Bits ((.&.),shiftL,shiftR)
import Data.Bits.Bitwise (mask)
import Data.Bits.Extras (w64)
import Debug.Trace
import System.Random
import qualified Data.Set as Set
import System.IO.Unsafe
import Control.Exception.Base (assert)
import Data.Word (Word64)
import Numeric (showHex)
import Data.Bits.Extras (w64)

-- A symbolic state (sstate) consists of registers, memory, flags, and the current config.
-- The stored values are symbolic expressions.
-- Addresses are also symbolic expressions.
-- Memory is a mapping from blocks (addresses with a size) to expressions.
-- A config consists of static meta data and is not changed by symbolic execution.
-- The reason it is part of the state is to prevent passing the config as a parameter to all functions.
-- The block_data field provides addresses/instructions of the basic block corresponding to this symbolic state.
-- The regions contain all actual memory regions accessed by this block.
data SState = SState {
    regs :: M.Map Register Expr,
    mem :: M.Map (Expr,Int) Expr,
    flags :: M.Map Flag Expr,
    config :: Config,
    block_data :: [(String,Instr)],
    regions :: Set.Set (Expr,Int),
    error_msg :: Maybe String
  } 
  deriving (Show,Eq,Ord)

-- Pretty printing
show_SState = show_SState_flg True

show_SState_flg show_flgs indent (SState {regs = rs, mem = m, flags = fs, config = _, block_data = _, regions = _}) =
  let rs' = M.filterWithKey print_reg rs
      m' = M.filterWithKey print_mem m
      fs' = if show_flgs then fs else (M.empty :: M.Map Flag Expr) in
  if (M.size rs' == 0 && M.size m' == 0 && M.size fs' == 0) then indent ++ "skip'" else
    (if M.size rs' == 0 then "" else indent ++ intercalate ", " (map show_sstate_reg (M.assocs rs')) ++ (if M.size m' == 0 && M.size fs' == 0 then "" else "\n"))
    ++
    (if M.size m' == 0 then "" else indent ++ intercalate ", " (map show_sstate_mem (M.assocs m')) ++ (if M.size fs' == 0 then "" else "\n"))
    ++
    (if M.size fs' == 0 then "" else indent ++ intercalate ", " (map show_sstate_flg (M.assocs fs')))
 where
  print_reg RIP _ = False
  print_reg r (E_reg r') = r /= r'
  print_reg _ _ = True
  print_mem (e,_) (E_deref e' _) = e /= e'
  print_mem _ _ = True
  show_sstate_reg (r,e) = show r ++ " := " ++ show_expr e
  show_sstate_mem ((a,s),e) = "[" ++ show_expr a ++ "," ++ show s ++ "] := " ++ show_expr e
  show_sstate_flg (f,e) = show f ++ " := " ++ show_expr e


takebits :: Int -> Int -> Word64 -> Word64
takebits h l i =
  let h' = min 63 h in
    if i /= 0 && h' >= l then
      (mask (h'+l+1)::Word64) .&. shiftR i l
    else
      0

-- Simplification of an expression.
-- Searches through an expression to find a pattern that can be simplified.
-- This happens until a fixpoint is reached.
-- All simplification rules have been proven correct in Isabelle/HOL.
simplify_expr c e =
  let e' = simp' e in
    if e == e' then e' else simplify_expr c e'
 where
  simp' (E_app Concat [E_val 0 _, e1]) = simp e1
  simp' e = simp e
  -- 0
  simp (E_app (SExtend l' h') [E_val 0 _]) = E_val 0 h'
  simp (E_app (Op MUL) [E_val 0 s, _]) = E_val 0 s
  simp (E_app (Op MUL) [_,E_val 0 s]) = E_val 0 s
  simp (E_app (Op IMUL) [E_val 0 s, _]) = E_val 0 s
  simp (E_app (Op IMUL) [_,E_val 0 s]) = E_val 0 s
  simp (E_app (Op AND) [E_val 0 s, _]) = E_val 0 s
  simp (E_app (Op AND) [_, E_val 0 s]) = E_val 0 s
  simp (E_app (Op OR) [E_val 0 s, e]) = e
  simp (E_app (Op OR) [e, E_val 0 s]) = e
  simp (E_app (Op XOR) [E_val 0 s, e]) = e
  simp (E_app (Op XOR) [e, E_val 0 s]) = e
  simp (E_app (F IsNAN) [E_val 0 s]) = E_val 0 1
  simp (E_app (F And) [E_val 0 s, _]) = E_val 0 1
  simp (E_app (F And) [_,E_val 0 s]) = E_val 0 1
  simp (E_app (F Or) [E_val 0 s,e]) = e
  simp (E_app (F Or) [e,E_val 0 s]) = e
  -- take bits / concat
  simp (E_app Concat [E_app (F ZExtend) [E_val 0 _, E_val s0 _], E_app (F ZExtend) [b, E_val s1 _]]) = E_app (F ZExtend) [b, E_val (s0+s1) (-1)]
  simp (E_app (TakeBits h0 l0) [E_app (TakeBits h1 l1) [e]]) = E_app (TakeBits (if h0+1 - l0 < h1+1 - (l0 + l1) then h0 + l1 else h1) (l0+l1)) [e]
  simp (E_app (TakeBits h l) [E_ite e0 e1 e2]) = E_ite e0 (simp $ E_app (TakeBits h l) [e1]) (simp $ E_app (TakeBits h l) [e2])
  simp (E_app (TakeBits h l) [E_app (Op AND) [e0,e1]]) = E_app (Op AND) [E_app (TakeBits h l) [e0], E_app (TakeBits h l) [e1]]
  simp (E_app (TakeBits h l) [E_app (Op OR)  [e0,e1]]) = E_app (Op OR)  [E_app (TakeBits h l) [e0], E_app (TakeBits h l) [e1]]
  simp (E_app (TakeBits h l) [E_app (Op XOR) [e0,e1]]) = E_app (Op XOR) [E_app (TakeBits h l) [e0], E_app (TakeBits h l) [e1]]
  simp (E_app (TakeBits h l) [E_app Concat [e0, e1]]) =
    case get_expr_size c e1 of
      Known size1 ->
        if h >= size1 then
          if l >= size1 then
            E_app (TakeBits (h - size1) (l - size1)) [e0]
          else
            E_app Concat [E_app (TakeBits (h - size1) 0) [e0], E_app (TakeBits (size1 - 1) l) [e1]]
        else
          if l >= size1 then
            E_val 0 0
          else
            E_app (TakeBits h l) [e1]
      _ -> E_app (TakeBits h l) [E_app Concat [simp e0, simp e1]]
  
  -- Rewrite rule for BB_Comp
  {--

  simp (E_app (TakeBits h 0) [E_app (Op ADD) [a,b] ] ) =               
    E_app (Op ADD) [E_app (TakeBits h 0) ([simp a]), E_app (TakeBits h 0) ([simp b])]  

  simp (E_app (TakeBits h 0) [E_deref e s]) =
    if (((s*8)-1) <= h) then
      E_deref (simp e) s
    else
      E_app (TakeBits h 0) [E_deref (simp e) s]

  -- mkdir fix
  simp (E_app (TakeBits h l) [E_app (SExtend l' h') [e]]) =
    if l' > h then
      E_app (TakeBits h l) [e]
    else if h' == h+1 && l == 0 then
      E_app (SExtend l' h') [simp e]
    else
      E_app (TakeBits h l) [E_app (SExtend l' h') [simp e]]
--}
  simp (E_app (TakeBits h l) [E_val i s]) =
    assert (s*8 > h) $ E_val (takebits h l i) (h+1-l)
  simp (E_app (TakeBits h 0) [e]) =
    case get_expr_size c e of
      Known size1 ->
        if h+1 >= size1 then
          e
        else
          E_app (TakeBits h 0) [simp e]
{--
  simp (E_app (TakeBits h 0) [e]) =
    if expr_has_size c e (h+1) then
      e
    else
      E_app (TakeBits h 0) [simp e]
--}
  simp (E_app (TakeBits h l) [e]) =
    if l > h then E_val 0 (-1)
    else
      case get_expr_size c e of
        Known s -> if l >= s then E_val 0 0 else E_app (TakeBits h l) [simp e]
        _ -> E_app (TakeBits h l) [simp e]
  -- arithmetic

  -- Instruction substitution
  -- Negation + Negation simplifications
--  simp (E_app (Op NOT) [E_app (Op NOT)[e]]) = e
--  simp (E_app (Op XOR) [E_app (Op NOT)[e], E_val 4294967295 32]) = e
--  simp (E_app (Op XOR) [e0, E_val 4294967295 32]) = E_app (Op NOT) [e0]
--  simp (E_app (Op OR) [E_app (Op NOT)[e0], E_app (Op NOT)[e1]]) = E_app (Op NOT) [E_app (Op AND) [e0, e1]] -- deMorgan's law

  -- Nonce simplifications
-- simp (E_app (Op XOR) [E_val 4294967295 32, E_val nonce 32]) = E_val nonce 32 -- XOR nonce + 0xFFFFFFFF = nonce
--  simp (E_app (Op XOR) [E_val nonce 32, E_val 4294967295 32]) = E_val nonce 32
--  simp (E_app (Op OR) [E_app (Op AND) [E_app (Op NOT) [e0], E_val nonce0 32], E_app (Op AND) [e1, E_val nonce1 32] ]) = e0
--  simp (E_app (Op AND) [E_app (Op AND) [e0, e1], E_app (Op OR) [E_val nonce0 _, E_val nonce1 _]]) = E_app (Op AND) [e0, e1]

  -- Register order sort (ensuring that we will always make RDI first and then RSI next when we get AND (RSI, RDI) -> AND (RDI, RSI))
--  simp (E_app (Op AND) [E_app (TakeBits h1 l1)[E_reg RSI], E_app (TakeBits h2 l2)[E_reg RDI]] ) = E_app (Op AND) [E_app (TakeBits h2 l2)[E_reg RDI], E_app (TakeBits h1 l1)[E_reg RSI]]
--  simp (E_app (Op AND) [E_val nonce 32, E_app (Op NOT) [e0]]) = E_app (Op AND) [E_app (Op NOT) [e0], E_val nonce 32] 
--  simp (E_app (Op AND) [E_app (TakeBits h1 l1)[E_reg RSI], E_app (Op NOT) [E_app (TakeBits h2 l2)[E_reg RDI]]]) = E_app (Op AND) [E_app (Op NOT) [E_app (TakeBits h2 l2)[E_reg RDI]], E_app (TakeBits h1 l1)[E_reg RSI]]
--  simp (E_app (Op AND) [E_app (Op NOT) [E_app (TakeBits h2 l2)[E_reg RSI]], E_app (TakeBits h1 l1)[E_reg RDI]]) = E_app (Op AND) [E_app (TakeBits h1 l1)[E_reg RDI], E_app (Op NOT) [E_app (TakeBits h2 l2)[E_reg RSI]]]
  
  -- ADD Operation
--  simp (E_app (Op SUB) [E_app (Op ADD) [e0, E_val 0 _]]) = e0

  -- AND Operation
--  simp (E_app (Op AND) [E_app (Op XOR) [E_app (TakeBits h1 l1)[E_reg RDI], E_app (Op XOR) [E_app (TakeBits h2 l2)[E_reg RSI], E_val 4294967295 32]],E_app (TakeBits h3 l3)[E_reg RDI] ]) = E_app (Op AND)[E_app (TakeBits h1 l1)[E_reg RDI], E_app (TakeBits h2 l2)[E_reg RSI]] -- ( A XOR ~B) AND (B)
--  simp (E_app (Op AND) [E_app (Op XOR) [E_app (TakeBits h1 l1)[E_reg RDI], E_app (Op NOT) [E_app (TakeBits h2 l2)[E_reg RSI]]], E_app (TakeBits h3 l3)[E_reg RDI] ]) = E_app (Op AND)[E_app (TakeBits h1 l1)[E_reg RDI], E_app (TakeBits h2 l2)[E_reg RSI]] -- ( A XOR ~B) AND (B)


  -- OR Operation
--  simp (E_app (Op OR) [E_app (Op XOR)[e0,e1], E_app (Op AND)[e2,e3]]) = E_app (Op OR) [e0,e1] -- (A XOR B) OR (A AND B) - make expression more explicit?
--  simp (E_app (Op OR) [E_app (Op AND)[e0,e1], E_app (Op XOR)[e2,e3]]) = E_app (Op OR) [e0,e1] -- (A XOR B) OR (A AND B) - make expression more explicit?

  -- XOR Operation
--  simp (E_app (Op OR) [E_app (Op AND) [E_app (Op NOT) [E_app (TakeBits h1 l1)[E_reg RDI]], E_app (TakeBits h2 l2)[E_reg RSI]], E_app (Op AND) [E_app (TakeBits h3 l3)[E_reg RDI], E_app (Op NOT) [E_app (TakeBits h4 l4)[E_reg RSI]]] ]) = E_app (Op XOR) [E_app (TakeBits h1 l1)[E_reg RDI],E_app (TakeBits h2 l2)[E_reg RSI]]



  --simp (E_app (Op AND) [E_app (Op NOT) [e0], E_val nonce 32]) = e0
  -- this is interesting, as if nonce ends with = 
  
  -- decreases the number of immediate value
  simp (E_app (Op ADD) [e0, E_val 0 _]) = e0
  simp (E_app (Op ADD) [E_val i0 s0, E_val i1 s1]) = E_val (i0 + i1) (max s0 s1)
  simp (E_app (Op SUB) [E_val i0 s0, E_val i1 s1]) = E_val (i0 - i1) (max s0 s1)
  simp (E_app (Op SUB) [E_app (Op SUB) [e0,E_val i0 s0], E_val i1 s1]) = E_app (Op SUB) [e0, E_val (i0+i1) (max s0 s1)]
  simp (E_app (Op ADD) [E_app (Op SUB) [e0,E_val i0 s0], E_val i1 s1]) = if i0 > i1 then E_app (Op SUB) [e0, E_val (i0 - i1) (max s0 s1)] else E_app (Op ADD) [e0, E_val (i1 - i0) (max s0 s1)]
  simp (E_app (Op ADD) [E_app (Op ADD) [e0,E_val i0 s0], E_val i1 s1]) = E_app (Op ADD) [e0, E_val (i0+i1) (max s0 s1)]
  simp (E_app (Op SUB) [E_app (Op ADD) [e0,E_val i0 s0], E_val i1 s1]) = if i0 >= i1 then E_app (Op ADD) [e0, E_val (i0 - i1) (max s0 s1)] else E_app (Op SUB) [e0, E_val (i1 - i0) (max s0 s1)]
  simp (E_app (Op ADD) [E_app (Op SUB) [E_val i0 s0,e1], E_val i1 s1]) = E_app (Op ADD) [E_app (Op NEG) [e1], E_val (i0+i1) (max s0 s1)]
  simp (E_app (Op ADD) [E_app (Op SUB) [e0,E_val i0 s0], E_app (Op SUB) [e1,E_val i1 s1]]) = assert (s0==s1) $ E_app (Op SUB) [E_app (Op ADD) [e0,e1], E_val (i0+i1) s0]
  -- move immediate values to the right
  simp (E_app (Op ADD) [E_app (Op ADD) [e0,E_val v s], e2]) = E_app (Op ADD) [E_app (Op ADD) [e0,e2], E_val v s]
  simp (E_app (Op ADD) [E_app (Op SUB) [e0,E_val v s], e2]) = E_app (Op SUB) [E_app (Op ADD) [e0,e2], E_val v s]
  simp (E_app (Op ADD) [E_app (Op SUB) [E_val v s,e1], e2]) = E_app (Op ADD) [E_app (Op SUB) [e2,e1], E_val v s]
  simp (E_app (Op SUB) [E_app (Op ADD) [e0,E_val v s], e2]) = E_app (Op ADD) [E_app (Op SUB) [e0,e2], E_val v s]
  simp (E_app (Op SUB) [E_app (Op ADD) [E_val v s,e1], e2]) = E_app (Op ADD) [E_app (Op SUB) [e1,e2], E_val v s]
  simp (E_app (Op SUB) [E_app (Op SUB) [e0,E_val v s], e2]) = E_app (Op SUB) [E_app (Op SUB) [e0,e2], E_val v s]
  -- apply associativity to the left
  simp (E_app (Op ADD) [e0, E_app (Op SUB) [e1,e2]]) = E_app (Op SUB) [E_app (Op ADD) [e0,e1], e2]
  simp (E_app (Op SUB) [e0, E_app (Op SUB) [e1,e2]]) = E_app (Op ADD) [E_app (Op SUB) [e0,e1], e2]
  simp (E_app (Op SUB) [e0, e1]) =
    case (e0 == e1,get_expr_size c e0) of
      (True,Known s) -> E_val 0 s
      _ -> case e0 of
             E_app (Op ADD) [e00,e01] -> if e00 == e1 then simp e01 else E_app (Op SUB) [simp e0, simp e1]
             E_app (Op SUB) [e00,e01] -> if e00 == e1 then E_app (Op SUB) [E_val 0 (-1), e01] else E_app (Op SUB) [simp e0, simp e1]
             _ -> E_app (Op SUB) [simp e0, simp e1]
  -- logic
  simp (E_app (Op XOR) [e0, e1]) =
    case (e0 == e1,get_expr_size c e0) of
      (True,Known s) -> E_val 0 s
      _ -> E_app (Op XOR) [simp e0, simp e1]
  -- recursive simplification if no rules apply
  simp (E_app f es) = E_app f (map simp es)
  simp (E_deref e s) = E_deref (simp e) s
  simp (E_ite e0 e1 e2) = E_ite (simp e0) (simp e1) (simp e2)
  simp e = e




-- The set of memory regions accessed by an expression
get_memory_regions_expr :: Expr -> Set.Set (Expr, Int)
get_memory_regions_expr (E_reg _) = Set.empty
get_memory_regions_expr (E_var _ _) = Set.empty
get_memory_regions_expr (E_val _ _) = Set.empty
get_memory_regions_expr (E_deref e s) = Set.insert (e,s) $ get_memory_regions_expr e
get_memory_regions_expr (E_app _ es) = Set.unions $ map get_memory_regions_expr es
get_memory_regions_expr (E_ite e0 e1 e2) = Set.unions $ map get_memory_regions_expr [e0,e1,e2]




-- Write to real register r currently storing e'
-- E.g.: writing to a 16-bit register actually means writing the lower 16 bits while keeping the rest
write_rreg r e' =
  if r `elem` (reg64 ++ reg80 ++ reg128) then
    id
  else if r `elem` reg32 then
    \e -> E_app (TakeBits 31 0) [e]
  else if r `elem` reg16 then
    \e -> E_app Concat [E_app (TakeBits 63 16) [e'], E_app (TakeBits 15 0) [e]]
  else if r `elem` reg8 then
    \e -> E_app Concat [E_app (TakeBits 63 8) [e'], E_app (TakeBits 7 0) [e]]
  else if r `elem` reg8h then
    \e -> E_app Concat [E_app Concat [E_app (TakeBits 63 16) [e'], E_app (TakeBits 7 0) [e]], E_app (TakeBits 7 0) [e']]
  else if r == FPUControlWord then
    \e -> E_app (TakeBits 15 0) [e]
  else
    error $ "Unknown register: " ++ show r

-- Reading from real register r
read_rreg r =
  if r `elem` (reg64 ++ reg80 ++ reg128) then
    id
  else if r `elem` reg32 then
    \e -> E_app (TakeBits 31 0) [e]
  else if r `elem` reg16 then
    \e -> E_app (TakeBits 15 0) [e]
  else if r `elem` reg8 then
    \e -> E_app (TakeBits 7 0) [e]
  else if r `elem` reg8h then
    \e -> E_app (TakeBits 15 8) [e]
  else if r == FPUControlWord then
    \e -> E_app (TakeBits 15 0) [e]
  else
    error $ "Unknown register: " ++ show r

-- Write to expression e to a register r
-- This either adds r to the current sstate (if it hasn't been written to yet), or
-- updates the register.
update_reg :: Register -> Expr -> State SState ()
update_reg r e = do
  SState {regs = rs, mem = m, flags = fs, config = c, block_data = bd, regions = rios, error_msg = msg} <- get
  let rr = real_reg r
  let e' = case M.lookup rr rs of
             Nothing -> E_reg rr
             Just e' -> e'
  let rios' = Set.union rios $ get_memory_regions_expr e
  put (SState {regs = M.insert rr (simplify_expr c $ write_rreg r e' e) rs, mem = m, flags = fs, config = c, block_data = bd, regions = rios', error_msg = msg})

sep c (a,s) (a',s') = check_sep c a s a' s'
enc c (a,s) (a',s') = check_enc c a s a' s'
eq c (a,s) (a',s') = check_eq c a s a' s'
overlap c (a,s) (a',s') = check_overlap c a s a' s'

-- When an expression is written to a block that overlaps with a block that has already been written to,
-- the blocks need to be merged.
-- Merging of two blocks (a,s) and (a',s') where (a,s) is written over the existing block (a',s') occurs by creating
-- a new expression consisting a three parts: the part of (a',s') left of (a,s), followed by (a,s), followed by the part of (a',s') right of (a,s)
merge :: Config -> Expr -> Int -> Expr -> _ -> _
merge c a s e [] = (a,s,e)
merge c a s e (((a',s'),e'):blocks) =
  let offset0 = fromJust $ simp_expr c (E_app (Op SUB) [a, a'])
      offset1 = fromJust $ simp_expr c (E_app (Op SUB) [E_app (Op ADD) [a',E_val (fromIntegral s') 64], E_app (Op ADD) [a,E_val (fromIntegral s) 64]])
      (a'',s'',e'') = merge' offset0 offset1 in
    merge c a'' s'' e'' blocks
 where
  merge' i0 i1 =
    let a'' = if i0 < 0 then a else a'
        b2 = if i0 > 0 then \e -> E_app Concat [e,E_app (TakeBits (i0*8-1) 0) [e']] else id
        b1 = b2 $ E_app (TakeBits (s*8-1) 0) [e]
        b0 = if i1 > 0 then E_app Concat [E_app (TakeBits (s'*8-1) (s'*8-i1*8)) [e'],b1] else b1
        s2 = if i0 > 0 then i0 else 0
        s1 = s
        s0 = if i1 > 0 then i1 else 0 in
       (a'',s0+s1+s2,simplify_expr c b0)

partitionByKey :: Ord k => (k -> Bool) -> M.Map k a -> (M.Map k a, M.Map k a)
partitionByKey f = M.partitionWithKey (\k a -> f k)

-- Write expression e' with size s to memory at address a'.
-- First, check if there is a block equal to (a,s).
-- If so, then overwrite that block.
-- Otherwise, merge all blocks that overlap with (a,s) into one big block.
update_mem :: Expr -> Int -> Expr -> State SState ()
update_mem a' s e' = do
  SState {regs = rs, mem = m, flags = fs,config = c, block_data = bd, regions = rios, error_msg = msg} <- get
  let a = simplify_expr c a'
  let e = simplify_expr c e'
  let (eq_blocks,diff_blocks) = partitionByKey (eq c (a,s)) m
  let m' = case M.size eq_blocks of
             1 -> M.insert (a,s) e diff_blocks
             0 -> let (separated,not_sep) = partitionByKey (sep c (a,s)) diff_blocks
                      (overlapped,not_overlapped) = partitionByKey (overlap c (a,s)) not_sep
                      (a'',s'',e'') = merge c a s e (M.toList overlapped) in
                    M.insert (a'',s'') e'' (M.union separated not_overlapped)
  let rios' = Set.unions [rios, get_memory_regions_expr e, get_memory_regions_expr (E_deref a s)]
  put (SState {regs = rs, mem = m', flags = fs,config = c, block_data = bd, regions = rios', error_msg = msg})

-- Write expression e' to flg f
update_flg :: Flag -> Expr -> State SState ()
update_flg f e' = do
  SState {regs = rs, mem = m, flags = fs,config = c, block_data = bd, regions = rios, error_msg = msg} <- get
  let e = simplify_expr c e'
  let rios' = Set.union rios $ get_memory_regions_expr e
  put (SState {regs = rs, mem = m, flags = M.insert f e fs,config = c, block_data = bd, regions = rios', error_msg = msg})

puts :: [a] -> (a -> b -> b) -> State b ()
puts [] f = return ()
puts (a:as) f = do
  modify (f a)
  puts as f

-- Write expression e' to a set of flags
update_flgs :: [Flag] -> Expr -> State SState ()
update_flgs flgs e' = do
  SState {regs = rs, mem = m, flags = fs,config = c, block_data = bd, regions = rios, error_msg = msg} <- get
  let e = simplify_expr c e'
  puts flgs (\f (SState {regs = rs, mem = m, flags = fs,config = c, block_data = bd, regions = rios, error_msg = msg}) ->
                   SState {regs = rs, mem = m, flags = M.insert f e fs,config = c, block_data = bd, regions = rios, error_msg = msg})
-- trace message here -to-do-

-- Read the contents of register r
read_reg :: Register -> State SState Expr
read_reg r = do
  SState {regs = rs, mem = m, flags = fs,config = c, block_data = bd, regions = rios} <- get
  let rr = real_reg r
  let e = case M.lookup rr rs of
            Nothing -> read_rreg r (E_reg rr)
            Just e -> read_rreg r e
  return (simplify_expr c e)


find_min_block :: Config -> [_] -> _
find_min_block c [b] = b
find_min_block c (((a,s),e):((a',s'),e'):bs) =
  let offset0 = fromJust $ simp_expr c (E_app (Op SUB) [a, a'])
      b = if offset0 < 0 then ((a,s),e) else ((a',s'),e') in
    find_min_block c $ b:bs

find_max_block c [b] = b
find_max_block c (((a,s),e):((a',s'),e'):bs) =
  let offset0 = fromJust $ simp_expr c (E_app (Op SUB) [E_app (Op ADD) [a',E_val (fromIntegral s') 64], E_app (Op ADD) [a,E_val (fromIntegral s) 64]])
      b = if offset0 > 0 then ((a',s'),e') else ((a,s),e) in
    find_max_block c $ b:bs

-- Read memory block (e',s) == (a,s).
-- First, check if there is a block in memory equal to (a,s).
-- If so, return that block.
-- Otherwise, consider the set of overlapping blocks.
-- If there are none, return the expression "E_deref a s" indicating reading from memory.
-- If there are, then merge all overlapping blocks and read from that block.
read_mem :: Expr -> Int -> State SState Expr
read_mem e' s = do
  SState {regs = rs, mem = m, flags = fs,config = c, block_data = bd, regions = rios, error_msg = msg} <- get
  let a = simplify_expr c e'

  let rios' = Set.union rios $ get_memory_regions_expr (E_deref a s)
  put (SState {regs = rs, mem = m, flags = fs,config = c, block_data = bd, regions = rios', error_msg = msg})

  let (eq_blocks,diff_blocks) = partitionByKey (eq c (a,s)) m
  let (overlapped,not_overlapped) = partitionByKey (overlap c (a,s)) diff_blocks
  case M.size eq_blocks of
    1 -> return $ simplify_expr c $ snd $ head $ M.toList eq_blocks
    0 -> case M.size overlapped of
           0 -> do
             put (SState {regs = rs, mem = M.insert (a,s) (E_deref a s) m, flags = fs,config = c, block_data = bd, regions = rios', error_msg = msg})
             return $ E_deref a s
           _ -> do
             let blocks = M.toList overlapped
             let min_block = find_min_block c (((a,s),E_deref a s):blocks)
             let max_block = find_max_block c (((a,s),E_deref a s):blocks)
             let a'' = fst (fst min_block)
             let s'' = fromJust $ simp_expr c (E_app (Op SUB) [E_app (Op ADD) [fst (fst max_block), E_val (fromIntegral $ snd (fst max_block)) 64], a''])
             let e'' = E_deref a'' s''
             let (a',s',e') = overwrite c blocks (a'',s'',e'')
             put (SState {regs = rs, mem = M.insert (a',s') e' not_overlapped, flags = fs,config = c, block_data = bd, regions = rios', error_msg = msg})

             let l = fromJust $ simp_expr c (E_app (Op SUB) [a,a'])
             let h = l + s
             return $ E_app (TakeBits (h*8 - 1) (l*8)) [e']
 where
  msg a m = "Reading block (" ++ show_expr a ++ "," ++ show s ++ ") in mem: " ++ intercalate ";" (map (\((a,s),_) -> "[(" ++ show_expr a ++ "," ++ show s ++ "]") (M.toList m))
  overwrite c [] (a'',s'',e'') = (a'',s'',e'')
  overwrite c (((a',s'),e'):blocks) (a'',s'',e'') = overwrite c blocks (merge c a' s' e' [((a'',s''),e'')])

-- Read a flag
read_flg :: Flag -> State SState Expr
read_flg f = do
  SState {regs = rs, mem = m, flags = fs,config = c, block_data = bd, regions = rios} <- get
  case M.lookup f fs of
    Just e -> return $ simplify_expr c e
    Nothing -> return $ E_flg f

-- Write to an operand
update_op (Reg r) e = update_reg r e
update_op (Address a) e = do
  e' <- se_address a
  let s = get_op_size (Address a)
  update_mem e' s e

-- Symbolically execute an expression
-- This may update the current sstate, and returns an expression.
se_expr :: Expr -> State SState Expr
se_expr (E_reg r) = read_reg r
se_expr (E_val int s) = return $ E_val int s
se_expr (E_app op ops) = do
  ops' <- mapM se_expr ops
  SState {regs = rs, mem = m, flags = fs,config = c, block_data = bd, regions = rios} <- get
  return $ simplify_expr c $ E_app op ops'

-- Symbolically execute an address
-- This may update the current sstate, and returns an expression.
se_address :: Address -> State SState Expr
se_address (FromReg r) = do
 e <- se_expr (E_reg r)
 return $ E_app (TakeBits 63 0) [e]
se_address (AddrImm i) = return $ E_val (fromIntegral i) 64
se_address (AddrMinus a0 a1) = do
  e0 <- se_address a0
  e1 <- se_address a1
  return $ E_app (Op SUB) [e0, e1]
se_address (AddrPlus a0 a1) = do
  e0 <- se_address a0
  e1 <- se_address a1
  return $ E_app (Op ADD) [e0, e1]
se_address (AddrTimes a0 a1) = do
  e0 <- se_address a0
  e1 <- se_address a1
  return $ E_app (TakeBits 63 0) [E_app (Op MUL) [e0,e1]]
se_address (AddrLabel f) =
  return $ E_var f (Known 64)
se_address (SizeDir _ a) = se_address a

-- Symbolically execute an operand
-- This may update the current sstate, and returns an expression.
-- Takes as argument the expected size of the operand. This read_memis only necessary when reading op2/op3,
-- and when that operand is an immediate. The supplied size should be the size of op1 in bytes.
se_op :: Operand -> Int -> State SState Expr
se_op (Reg r) _ = se_expr (E_reg r)
se_op (Immediate i) s = return $ E_val (fromIntegral i) (s*8)
se_op (Address a) s' = do
  e <- se_address a
  let s = case a of
            SizeDir n _ -> n  `div` 8
            _ -> s'
  read_mem e s

-- return the operand size in bytes
get_op_size :: Operand -> Int
get_op_size (Reg r) = get_size r
get_op_size (Immediate _) = 8 -- going with 64-bit immediates all the time for this function
get_op_size (Address (SizeDir n _)) = n `div` 8
get_op_size (Address _) = 8

lookup_address c f = maybe def val $ M.lookup f $ f_addresses c where
  def = E_var (f ++ "_addr") (Known 64)
  val a = E_val (w64 a) 64



push_fp_register_stack :: Expr -> State SState ()
push_fp_register_stack e = do
  st6 <- se_op (Reg ST_6) 10
  update_op (Reg ST_7) st6
  st5 <- se_op (Reg ST_5) 10
  update_op (Reg ST_6) st5
  st4 <- se_op (Reg ST_4) 10
  update_op (Reg ST_5) st4
  st3 <- se_op (Reg ST_3) 10
  update_op (Reg ST_4) st3
  st2 <- se_op (Reg ST_2) 10
  update_op (Reg ST_3) st2
  st1 <- se_op (Reg ST_1) 10
  update_op (Reg ST_2) st1
  st0 <- se_op (Reg ST_0) 10
  update_op (Reg ST_1) st0
  update_op (Reg ST_0) e

pop_fp_register_stack :: State SState ()
pop_fp_register_stack = do
  st1 <- se_op (Reg ST_1) 10
  update_op (Reg ST_0) st1
  st2 <- se_op (Reg ST_2) 10
  update_op (Reg ST_1) st2
  st3 <- se_op (Reg ST_3) 10
  update_op (Reg ST_2) st3
  st4 <- se_op (Reg ST_4) 10
  update_op (Reg ST_3) st4
  st5 <- se_op (Reg ST_5) 10
  update_op (Reg ST_4) st5
  st6 <- se_op (Reg ST_6) 10
  update_op (Reg ST_5) st6
  st7 <- se_op (Reg ST_7) 10
  update_op (Reg ST_6) st7




-- Symbolically execute an instruction
-- This may update the current sstate.
se_instr :: Instr -> State SState ()
-- PUSH
se_instr (Instr _ _ PUSH (Just op) _ _) = do
  let size = get_op_size op -- converts into 2 bytes or 4 bytes
  let e = E_app (Op SUB) [E_reg RSP, E_val (fromIntegral size) 64] -- number is of 64 bit value
  e' <- se_expr e
  update_reg RSP e'
  e'' <- se_op op size
  update_mem e' size e''
-- POP
se_instr (Instr _ _ POP (Just (Reg r)) _ _) = do
  e' <- se_op (Address (SizeDir 64 (FromReg RSP))) 8
  update_reg r e'
  let size = get_size r
  let e = E_app (Op ADD) [E_reg RSP, E_val size 64]
  e' <- se_expr e
  update_reg RSP e'
-- LEAVE
se_instr (Instr x0 x1 LEAVE x2 x3 x4) = do
  e' <- se_expr (E_reg RBP)
  update_reg RSP e'
  se_instr (Instr x0 x1 POP (Just (Reg RBP)) x3 x4)
-- RET
se_instr (Instr _ _ RET _ _ _) = do
  e'' <- se_op (Address (SizeDir 64 (FromReg RSP))) 8
  update_reg RIP e''
  e' <- se_expr (E_app (Op ADD) [E_reg RSP, E_val 8 64])
  update_reg RSP e'
-- CALL
se_instr (Instr addr _ CALL (Just (Address (AddrLabel f))) _ _)  = do
  update_reg RAX (E_app (F2 f "") [])
se_instr (Instr addr _ CALL _ _ _)  =
  put $ SState M.empty M.empty M.empty empty_config [] Set.empty (Just "Indirect call")
-- XCHG
se_instr (Instr _ _ XCHG (Just op1) (Just op2) _) = do
  e1 <- se_op op1 (get_op_size op1)
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 e2
  update_op op2 e1
-- MOV
se_instr (Instr _ _ MOV (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 e2
-- MOVD
se_instr (Instr _ _ MOVD (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op2)
  update_op op1 (E_app (TakeBits 31 0) [e2])
-- MOVZX
se_instr (Instr _ _ MOVZX (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  let size = get_op_size op2
  update_op op1 (E_app (TakeBits (size * 8 - 1) 0) [e2])
-- MOVSD
se_instr (Instr _ _ MOVSD (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 (E_app (TakeBits 63 0) [e2])
-- MOVSS
se_instr (Instr _ _ MOVSS (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 (E_app (TakeBits 31 0) [e2])
-- MOVAPD
se_instr (Instr _ _ MOVAPD (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 e2
-- MOVDQA
se_instr (Instr _ _ MOVDQA (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 e2
-- MOVDQU
se_instr (Instr _ _ MOVDQU (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 e2
-- MOVUPD
se_instr (Instr _ _ MOVUPD (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 e2
-- MOVABS
se_instr (Instr _ _ MOVABS (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 e2
-- MOVAPS
se_instr (Instr _ _ MOVAPS (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 e2
-- MOVUPS
se_instr (Instr _ _ MOVUPS (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 e2
-- MOVQ
se_instr (Instr _ _ MOVQ (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 (E_app (TakeBits 63 0) [e2])
-- MOVSX
se_instr (Instr _ _ MOVSX (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  let s1 = get_op_size op1
  let s2 = get_op_size op2
  update_op op1 (E_app (SExtend (8*s2) (8*s1)) [e2])
-- MOVSXD
se_instr (Instr _ _ MOVSXD (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  let s1 = get_op_size op1
  let s2 = get_op_size op2
  update_op op1 (E_app (SExtend (8*s2) (8*s1)) [e2])
-- REP MOVSQ
se_instr (Instr addr (Just REP) MOVSQ (Just op1) (Just op2) _) = do
  e1 <- se_op op1 (get_op_size op1)
  e2 <- se_op op2 (get_op_size op1)
  c  <- se_op (Reg RCX) 8
  df <- read_flg DF
  update_op (Reg RCX) (E_val 0 64)
  update_op (Reg RAX) (E_app (F2 "rep_movsq" addr) [e1,e2,c,df]) -- TODO: is a void function
-- REP STOSQ
se_instr (Instr addr (Just REP) STOSQ (Just (op1@(Address (SizeDir 64 (FromReg RDI))))) (Just (op2@(Reg RAX))) _) = do
  e1 <- se_op op1 (get_op_size op1)
  e2 <- se_op op2 (get_op_size op1)
  c  <- se_op (Reg RCX) 8
  df <- read_flg DF
  update_op (Reg RCX) (E_val 0 64)
  update_op (Reg RDI) (E_app (F2 "rep_stosq" addr) [e1,e2,c,df])
-- CLD
se_instr (Instr _ _ CLD Nothing _ _) = do
  update_flg DF (E_val 0 1)
-- STD
se_instr (Instr _ _ STD Nothing _ _) = do
  update_flg DF (E_val 1 1)
-- CMOVA
se_instr (Instr _ _ CMOVA (Just op1) (Just op2) _) = do
  ss <- get
  let f = mk_flg "!CF && !ZF" ss
  let s = get_op_size op1
  e1 <- se_op op1 s
  e2 <- se_op op2 s
  update_op op1 (E_ite f e2 e1)
-- CMOVAE
se_instr (Instr _ _ CMOVAE (Just op1) (Just op2) _) = do
  ss <- get
  let f = mk_flg "!CF" ss
  let s = get_op_size op1
  e1 <- se_op op1 s
  e2 <- se_op op2 s
  update_op op1 (E_ite f e2 e1)
-- CMOVB
se_instr (Instr _ _ CMOVB (Just op1) (Just op2) _) = do
  ss <- get
  let f = mk_flg "CF" ss
  let s = get_op_size op1
  e1 <- se_op op1 s
  e2 <- se_op op2 s
  update_op op1 (E_ite f e2 e1)
-- CMOVBE
se_instr (Instr _ _ CMOVBE (Just op1) (Just op2) _) = do
  ss <- get
  let f = mk_flg "CF || ZF" ss
  let s = get_op_size op1
  e1 <- se_op op1 s
  e2 <- se_op op2 s
  update_op op1 (E_ite f e2 e1)
-- CMOVE
se_instr (Instr _ _ CMOVE (Just op1) (Just op2) _) = do
  ss <- get
  let f = mk_flg "ZF" ss
  let s = get_op_size op1
  e1 <- se_op op1 s
  e2 <- se_op op2 s
  update_op op1 (E_ite f e2 e1)
-- CMOVG
se_instr (Instr _ _ CMOVG (Just op1) (Just op2) _) = do
  ss <- get
  let f = mk_flg "!ZF && SF == OF" ss
  let s = get_op_size op1
  e1 <- se_op op1 s
  e2 <- se_op op2 s
  update_op op1 (E_ite f e2 e1)
-- CMOVGE
se_instr (Instr _ _ CMOVGE (Just op1) (Just op2) _) = do
  ss <- get
  let f = mk_flg "SF == OF" ss
  let s = get_op_size op1
  e1 <- se_op op1 s
  e2 <- se_op op2 s
  update_op op1 (E_ite f e2 e1)
-- CMOVL
se_instr (Instr _ _ CMOVL (Just op1) (Just op2) _) = do
  ss <- get
  let f = mk_flg "SF != OF" ss
  let s = get_op_size op1
  e1 <- se_op op1 s
  e2 <- se_op op2 s
  update_op op1 (E_ite f e2 e1)
-- CMOVLE
se_instr (Instr _ _ CMOVLE (Just op1) (Just op2) _) = do
  ss <- get
  let f = mk_flg "ZF || SF != OF" ss
  let s = get_op_size op1
  e1 <- se_op op1 s
  e2 <- se_op op2 s
  update_op op1 (E_ite f e2 e1)
-- CMOVNE
se_instr (Instr _ _ CMOVNE (Just op1) (Just op2) _) = do
  ss <- get
  let f = mk_flg "!ZF" ss
  let s = get_op_size op1
  e1 <- se_op op1 s
  e2 <- se_op op2 s
  update_op op1 (E_ite f e2 e1)
-- CMOVNS
se_instr (Instr _ _ CMOVNS (Just op1) (Just op2) _) = do
  ss <- get
  let f = mk_flg "!SF" ss
  let s = get_op_size op1
  e1 <- se_op op1 s
  e2 <- se_op op2 s
  update_op op1 (E_ite f e2 e1)
-- CMOVS
se_instr (Instr _ _ CMOVS (Just op1) (Just op2) _) = do
  ss <- get
  let f = mk_flg "SF" ss
  let s = get_op_size op1
  e1 <- se_op op1 s
  e2 <- se_op op2 s
  update_op op1 (E_ite f e2 e1)
-- CDQ
se_instr (Instr _ _ CDQ _ _ _) = do
  e2 <- se_op (Reg EAX) (-1)
  update_op (Reg EDX) (E_ite (E_app (F SignedLessThan) [e2,E_val 0 32]) (E_val 4294967295 32) (E_val 0 32))
-- CQO
se_instr (Instr _ _ CQO _ _ _) = do
  e2 <- se_op (Reg RAX) (-1)
  update_op (Reg RDX) (E_ite (E_app (F SignedLessThan) [e2,E_val 0 64]) (E_val 18446744073709551615 64) (E_val 0 64))
-- CDQE
se_instr (Instr _ _ CDQE _ _ _) = do
  e2 <- se_op (Reg EAX) (-1)
  update_op (Reg RAX) (E_app (SExtend 32 64) [e2])
-- LEA
se_instr (Instr _ _ LEA (Just op1) (Just (Address a)) _) = do
  e2 <- se_address a
  update_op op1 e2
-- IMUL
se_instr (Instr _ _ IMUL (Just op1) Nothing _) = do
  let size = get_op_size op1
  e2 <- se_op op1 size
  let (dst1,dst0) = case size of
                      8 -> (RDX,RAX)
                      4 -> (EDX,EAX)
                      2 -> (DX,AX)
                      1 -> (DL,AL)
  e1 <- se_op (Reg dst0) size
  update_op (Reg dst0) (E_app (TakeBits (size * 8 - 1) 0)  [E_app (Op IMUL) [e1,e2]])
  let l = size * 8
  let h = size * 16 - 1
  update_op (Reg dst1) (E_app (TakeBits h l) [E_app (Op IMUL) [e1,e2]])
se_instr (Instr _ _ IMUL (Just op1) (Just op2) Nothing) = do
  let size = get_op_size op1
  e1 <- se_op op1 size
  e2 <- se_op op2 size
  update_op op1 (E_app (TakeBits (size * 8 - 1) 0)  [E_app (Op IMUL) [e1,e2]])
se_instr (Instr _ _ IMUL (Just op1) (Just op2) (Just op3)) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e3 <- se_op op3 size
  update_op op1 (E_app (TakeBits (size * 8 - 1) 0)  [E_app (Op IMUL) [e2,e3]])
-- INC
se_instr (Instr _ _ INC (Just op) _ _ ) = do
  let size = get_op_size op
  e <- se_op op size
  let e' = E_app (Op ADD) [e, E_val 1 size]
  update_op op e'
  update_flgs [OF, SF, ZF, PF] e'
-- DEC
se_instr (Instr _ _ DEC (Just op) _ _ ) = do
  let size = get_op_size op
  e <- se_op op size
  let e' = E_app (Op SUB) [e, E_val 1 size]
  update_op op e'
  update_flgs [OF, SF, ZF, PF] e'
-- MUL
se_instr (Instr _ _ MUL (Just op1) Nothing _) = do
  let size = get_op_size op1
  e2 <- se_op op1 size
  let (dst1,dst0) = case size of
                      8 -> (RDX,RAX)
                      4 -> (EDX,EAX)
                      2 -> (DX,AX)
                      1 -> (DL,AL)
  e1 <- se_op (Reg dst0) size
  update_op (Reg dst0) (E_app (TakeBits (size * 8 - 1) 0)  [E_app (Op MUL) [e1,e2]])
  let l = size * 8
  let h = size * 16 - 1
  update_op (Reg dst1) (E_app (TakeBits h l) [E_app (Op MUL) [e1,e2]])
se_instr (Instr _ _ MUL (Just op1) (Just op2) (Just op3)) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e3 <- se_op op3 size
  update_op op1 (E_app (TakeBits (size * 8 - 1) 0)  [E_app (Op MUL) [e2,e3]])
-- DIV
se_instr (Instr _ _ DIV (Just op1) Nothing _) = do
  let size = get_op_size op1
  -- dividend
  let (h,l) = case size of
                8 -> (RDX,RAX)
                4 -> (EDX,EAX)
                2 -> (DX,AX)
                1 -> (DL,AL)
  dividend_h <- se_expr (E_reg h)
  dividend_l <- se_expr (E_reg l)
  let dividend = E_app Concat [E_app (F ZExtend) [dividend_h, E_val (fromIntegral $ 8*size) (-1)], E_app (F ZExtend) [dividend_l, E_val (fromIntegral $ 8*size) (-1)]]
  -- divisor
  d <- se_op op1 size
  let divisor = E_app (F ZExtend) [d, E_val (fromIntegral $ 8*size) (-1)]
  update_op (Reg $ l) (E_app (Op DIV) [dividend,divisor])
  update_op (Reg $ h) (E_app (F Mod) [dividend,divisor])
-- IDIV
se_instr (Instr _ _ IDIV (Just op1) Nothing _) = do
  let size = get_op_size op1
  -- dividend
  let (h,l) = case size of
                8 -> (RDX,RAX)
                4 -> (EDX,EAX)
                2 -> (DX,AX)
                1 -> (DL,AL)
  dividend_h <- se_expr (E_reg h)
  dividend_l <- se_expr (E_reg l)
  let dividend = E_app Concat [E_app (F ZExtend) [dividend_h, E_val (fromIntegral $ 8*size) (-1)], E_app (F ZExtend) [dividend_l, E_val (fromIntegral $ 8*size) (-1)]]
  -- divisor
  d <- se_op op1 size
  let divisor = E_app (F ZExtend) [d, E_val (fromIntegral $ 8*size) (-1)]
  update_op (Reg $ l) (E_app (Op IDIV) [dividend,divisor])
  update_op (Reg $ h) (E_app (F IMod) [dividend,divisor])
-- SAL
se_instr (Instr _ _ SAL (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  update_op op1 (E_app (Op SHL) [E_app (F ZExtend) [e1, E_val (fromIntegral $ 8*size) (-1)], e2])
-- SHL
se_instr (Instr _ _ SHL (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  update_op op1 (E_app (Op SHL) [E_app (F ZExtend) [e1, E_val (fromIntegral $ 8*size) (-1)], e2])
-- SHR
se_instr (Instr _ _ SHR (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  update_op op1 (E_app (Op SHR) [E_app (F ZExtend) [e1, E_val (fromIntegral $ 8*size) (-1)], e2])
-- SAR
se_instr (Instr _ _ SAR (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  update_op op1 (E_app (Op SAR) [E_app (F ZExtend) [e1, E_val (fromIntegral $ 8*size) (-1)], e2])
-- ROL
se_instr (Instr _ _ ROL (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  update_op op1 (E_app (Op ROL) [E_app (F ZExtend) [e1, E_val (fromIntegral $ 8*size) (-1)], e2])
-- ROR
se_instr (Instr _ _ ROR (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  update_op op1 (E_app (Op ROR) [E_app (F ZExtend) [e1, E_val (fromIntegral $ 8*size) (-1)], e2])
-- TEST
se_instr (Instr _ _ TEST (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  update_flgs [ZF,CF,OF,SF,PF] (E_app (Op TEST) [e1,e2])
-- CMP
se_instr (Instr _ _ CMP (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  update_flgs [ZF,CF,OF,SF,PF] (E_app (Op CMP) [e1,e2])
-- ADC
se_instr (Instr _ _ ADC (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  e_cf <- gets $ mk_flg "CF"
  let e_0 = E_val 0 (8*size)
  let e_1 = E_val 1 (8*size)
  let e = E_app (Op ADD) [e1, E_app (Op ADD) [e2, E_ite e_cf e_1 e_0]]
  update_op op1 e
  update_flgs [ZF,CF,OF,SF,PF] e
-- SBB
se_instr (Instr _ _ SBB (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  e_cf <- gets $ mk_flg "CF"
  let e_0 = E_val 0 (8*size)
  let e_1 = E_val 1 (8*size)
  let e = E_app (Op SUB) [e1, E_app (Op ADD) [e2, E_ite e_cf e_1 e_0]]
  update_op op1 e
  update_flgs [ZF,CF,OF,SF,PF] e
-- BSF
se_instr (Instr _ _ BSF (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  update_op op1 $ E_app (Op BSF) [e2]
  update_flgs [ZF] (E_app (Op TEST) [e2,e2])
-- BSR
se_instr (Instr _ _ BSR (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 $ E_app (Op BSR) [e2]
-- BSWAP
se_instr (Instr _ _ BSWAP (Just op1) _ _) = do
  let size = get_op_size op1
  e1 <- se_op op1 size
  update_op op1 $ E_app (Op BSWAP) [E_app (F ZExtend) [e1, E_val (fromIntegral $ 8*size) (-1)]]
-- BT
se_instr (Instr _ _ BT (Just op1) (Just op2) _) = do
  let s = get_op_size op1
  base <- se_op op1 s
  offset <- se_op op2 s
  let mod_offset = E_app (F Mod) [offset, E_val (w64 $ s * 8) 64]
  update_flgs [CF, OF, SF, PF] $ E_app (Op BT) [base, mod_offset]
-- BTR
se_instr (Instr _ _ BTR (Just op1) (Just op2) _) = do
  let s = get_op_size op1
  base <- se_op op1 s
  offset <- se_op op2 s
  let mod_offset = E_app (F Mod) [offset, E_val (w64 $ s * 8) 64]
  update_flgs [CF, OF, SF, PF] $ E_app (Op BT) [base, mod_offset]
  update_op op1 $ E_app (F SetBit) [base, offset, E_val 0 1]
-- BTS
se_instr (Instr _ _ BTS (Just op1) (Just op2) _) = do
  let s = get_op_size op1
  base <- se_op op1 s
  offset <- se_op op2 s
  let mod_offset = E_app (F Mod) [offset, E_val (w64 $ s * 8) 64]
  update_flgs [CF, OF, SF, PF] $ E_app (Op BT) [base, mod_offset]
  update_op op1 $ E_app (F SetBit) [base, offset, E_val 1 1]
-- UCOMISS
se_instr (Instr _ _ UCOMISS (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  let e2_l = E_app (TakeBits 31 0) [e2]
  let e1_l = E_app (TakeBits 31 0) [e1]
  update_flgs [ZF,CF,OF,SF,PF] (E_app (Op UCOMISS) [e1_l,e2_l])
-- UCOMISD 
se_instr (Instr _ _ UCOMISD (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  let e2_l = E_app (TakeBits 63 0) [e2]
  let e1_l = E_app (TakeBits 63 0) [e1]
  update_flgs [ZF,CF,OF,SF,PF] (E_app (Op UCOMISD) [e1_l,e2_l]) -- based on Operation UCOMISD based on these two operands
-- CVTSD2SS
se_instr (Instr _ _ CVTSD2SS (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  let e2_l = E_app (TakeBits 63 0) [e2]
  update_op op1 (E_app (F FloatToSFloat) [e2_l])
-- CVTSS2SD
se_instr (Instr _ _ CVTSS2SD (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  let e2_l = E_app (TakeBits 31 0) [e2]
  update_op op1 (E_app (F SFloatToFloat) [e2_l])
-- CVTSI2SD
se_instr (Instr _ _ CVTSI2SD (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  e1 <- se_op op1 size
  let e1_h = E_app (TakeBits 127 64) [e1]
  update_op op1 (E_app Concat [e1_h, E_app (F IntToFloat) [e2]])
-- CVTTSD2SI
se_instr (Instr _ _ CVTTSD2SI (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  let e2_l = E_app (TakeBits 63 0) [e2]
  update_op op1 (E_app (F FloatToInt) [e2_l]) -- TODO use size of destination
-- CVTSI2SS
se_instr (Instr _ _ CVTSI2SS (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op2)
  e1 <- se_op op1 (get_op_size op1)
  let e1_h = E_app (TakeBits 127 32) [e1]
  update_op op1 (E_app Concat [e1_h, E_app (F IntToSFloat) [e2]])
-- CVTTSS2SI
se_instr (Instr _ _ CVTTSS2SI (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e2 <- se_op op2 size
  let e2_l = E_app (TakeBits 31 0) [e2]
  update_op op1 (E_app (F SFloatToInt) [e2_l]) -- TODO use size of destination
-- SETA
se_instr (Instr _ _ SETA (Just op1) _ _) = do
 ss <- get
 let e = mk_flg "!CF && !ZF" ss
 update_op op1 (E_ite e (E_val 1 1) (E_val 0 1))
-- SETB
se_instr (Instr _ _ SETB (Just op1) _ _) = do
 ss <- get
 let e = mk_flg "CF" ss
 update_op op1 (E_ite e (E_val 1 1) (E_val 0 1))
-- SETBE
se_instr (Instr _ _ SETBE (Just op1) _ _) = do
 ss <- get
 let e = mk_flg "CF || ZF" ss
 update_op op1 (E_ite e (E_val 1 1) (E_val 0 1))
-- SETE
se_instr (Instr _ _ SETE (Just op1) _ _) = do
 ss <- get
 let e = mk_flg "ZF" ss
 update_op op1 (E_ite e (E_val 1 1) (E_val 0 1)) -- set 1 or 0 || size E_Val 1 size <- INC
-- SETG
se_instr (Instr _ _ SETG (Just op1) _ _) = do
 ss <- get
 let e = mk_flg "!ZF && SF == OF" ss
 update_op op1 (E_ite e (E_val 1 1) (E_val 0 1))
-- SETGE
se_instr (Instr _ _ SETGE (Just op1) _ _) = do
 ss <- get
 let e = mk_flg "SF == OF" ss
 update_op op1 (E_ite e (E_val 1 1) (E_val 0 1))
-- SETL
se_instr (Instr _ _ SETL (Just op1) _ _) = do
  ss <- get
  let e = mk_flg "SF != OF" ss
  update_op op1 (E_ite e (E_val 1 1) (E_val 0 1))
-- SETLE
se_instr (Instr _ _ SETLE (Just op1) _ _) = do
  ss <- get
  let e = mk_flg "ZF || SF != OF" ss
  update_op op1 (E_ite e (E_val 1 1) (E_val 0 1))
-- SETNE
se_instr (Instr _ _ SETNE (Just op1) _ _) = do
 ss <- get
 let e = mk_flg "!ZF" ss
 update_op op1 (E_ite e (E_val 1 1) (E_val 0 1))
-- SETNS
se_instr (Instr _ _ SETNS (Just op1) _ _) = do
 ss <- get
 let e = mk_flg "!SF" ss
 update_op op1 (E_ite e (E_val 1 1) (E_val 0 1))
-- SETAE
se_instr (Instr _ _ SETAE (Just op1) _ _) = do
 ss <- get
 let e = mk_flg "!CF" ss
 update_op op1 (E_ite e (E_val 1 1) (E_val 0 1))
-- SETP
se_instr (Instr _ _ SETP (Just op1) _ _) = do
 ss <- get
 let e = mk_flg "PF" ss
 update_op op1 (E_ite e (E_val 1 1) (E_val 0 1))
-- SQRTSD
se_instr (Instr _ _ SQRTSD (Just op1) (Just op2) _) = do
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 $ E_app (Op SQRTSD) [e2]
-- PSHUFD
se_instr (Instr _ _ PSHUFD (Just op1) (Just op2) (Just (Immediate order))) = do
  e2 <- se_op op2 (get_op_size op1)
  let d0 = E_app (TakeBits 31 0) [E_app (Op SHR) [e2, E_val (32 * takebits 1 0 order) 128]]
  let d1 = E_app (TakeBits 31 0) [E_app (Op SHR) [e2, E_val (32 * takebits 3 2 order) 128]]
  let d2 = E_app (TakeBits 31 0) [E_app (Op SHR) [e2, E_val (32 * takebits 5 4 order) 128]]
  let d3 = E_app (TakeBits 31 0) [E_app (Op SHR) [e2, E_val (32 * takebits 7 6 order) 128]]
  let v  = E_app Concat [d3, E_app Concat [d2, E_app Concat [d1,d0]]]
  update_op op1 v
-- PUNPCKLDQ
se_instr (Instr _ _ PUNPCKLDQ (Just op1) (Just op2) _) = do
  e1 <- se_op op1 (get_op_size op1)
  e2 <- se_op op2 (get_op_size op1)
  update_op op1 (E_app (Op PUNPCKLDQ) [e1,e2])
-- FLD
se_instr i@(Instr _ _ FLD (Just op1) _ _) = do
  e1 <- se_op op1 (get_op_size op1)
  push_fp_register_stack e1 -- TODO: conversion from source size to 80 bits?
-- FLDZ
se_instr (Instr _ _ FLDZ Nothing _ _ ) = do
  push_fp_register_stack (E_var "FP_ZERO" (Known 80))
-- FLD1
se_instr (Instr _ _ FLD1 Nothing _ _ ) = do
  push_fp_register_stack (E_var "FP_ONE" (Known 80))
-- FILD
se_instr (Instr _ _ FILD (Just op1) _ _ ) = do
  let size = get_op_size op1
  e1 <- se_op op1 size
  push_fp_register_stack (E_app (F IntToFloat) [e1])
-- FNSTCW
se_instr (Instr _ _ FNSTCW (Just op1) _ _ ) = do
  e1 <- se_op (Reg FPUControlWord) 2
  update_op op1 e1
-- FLDCW
se_instr (Instr _ _ FLDCW (Just op1) _ _ ) = do
  e1 <- se_op op1 2
  update_op (Reg FPUControlWord) e1
-- FSTP
se_instr (Instr _ _ FSTP (Just op1) _ _ ) = do
  let size = get_op_size op1
  e0 <- se_op (Reg ST_0) size
  update_op op1 e0 -- TODO: conversion from 80 bits to operand size?
  pop_fp_register_stack
-- FISTP
se_instr (Instr _ _ FISTP (Just op1) _ _ ) = do
  let size = get_op_size op1
  e0 <- se_op (Reg ST_0) size
  update_op op1 (E_app (F FloatToInt) [e0]) -- TODO: conversion from 80 bits to operand size?
  pop_fp_register_stack
-- FADD
se_instr (Instr _ _ FADD (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e1 <- se_op op1 size
  e2 <- se_op op2 size
  update_op op1 (E_app (F FP_ADD) [e1,e2])
-- FADDP
se_instr (Instr _ _ FADDP (Just op1) Nothing _) = do
  let size = get_op_size op1
  e0 <- se_op (Reg ST_0) size
  e1 <- se_op op1 size
  update_op op1 (E_app (F FP_ADD) [e0,e1])
  pop_fp_register_stack
-- FSUB
se_instr (Instr _ _ FSUB (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e1 <- se_op op1 size
  e2 <- se_op op2 size
  update_op op1 (E_app (F FP_SUB) [e1,e2])
se_instr (Instr _ _ FSUB (Just op1) Nothing _) = do
  let size = get_op_size op1
  e1 <- se_op op1 size
  e2 <- se_op (Reg ST_0) size
  update_op op1 (E_app (F FP_SUB) [e1,e2])
-- FSUBP
se_instr (Instr _ _ FSUBP (Just op1) Nothing _) = do
  let size = get_op_size op1
  e0 <- se_op (Reg ST_0) size
  e1 <- se_op op1 size
  update_op op1 (E_app (F FP_SUB) [e0,e1])
  pop_fp_register_stack
-- FSUBRP
se_instr (Instr _ _ FSUBRP (Just op1) Nothing _) = do
  let size = get_op_size op1
  e0 <- se_op (Reg ST_0) size
  e1 <- se_op op1 size
  update_op op1 (E_app (F FP_SUB) [e1,e0])
  pop_fp_register_stack
-- FCHS
se_instr (Instr _ _ FCHS Nothing _ _) = do
  e1 <- se_op (Reg ST_0) 10
  update_op (Reg ST_0) (E_app (F FP_SUB) [E_var "FP_ZERO" (Known 80),e1])
-- FMUL
se_instr (Instr _ _ FMUL (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e1 <- se_op op1 size
  e2 <- se_op op2 size
  update_op op1 (E_app (F FP_MUL) [e1,e2])
-- FMULP
se_instr (Instr _ _ FMULP (Just op1) Nothing _) = do
  let size = get_op_size op1
  e0 <- se_op (Reg ST_0) size
  e1 <- se_op op1 size
  update_op op1 (E_app (F FP_MUL) [e0,e1])
  pop_fp_register_stack
-- FDIV
se_instr (Instr _ _ FDIV (Just op1) (Just op2) _) = do
  let size = get_op_size op1
  e1 <- se_op op1 size
  e2 <- se_op op2 size
  update_op op1 (E_app (F FP_DIV) [e1,e2])
-- FDIVP
se_instr (Instr _ _ FDIVP (Just op1) Nothing _) = do
  let size = get_op_size op1
  e0 <- se_op (Reg ST_0) size
  e1 <- se_op op1 size
  update_op op1 (E_app (F FP_DIV) [e0,e1])
  pop_fp_register_stack
-- FDIVRP
se_instr (Instr _ _ FDIVRP (Just op1) Nothing _) = do
  let size = get_op_size op1
  e0 <- se_op (Reg ST_0) size
  e1 <- se_op op1 size
  update_op op1 (E_app (F FP_DIV) [e1,e0])
  pop_fp_register_stack
-- FXCH
se_instr (Instr _ _ FXCH (Just (op1@(Reg r))) Nothing _) = do
  e1 <- se_op op1 (get_op_size op1)
  e0 <- se_op (Reg ST_0) (get_op_size op1)
  update_op op1 e0
  update_op (Reg ST_0) e1
-- FUCOMIP
se_instr (Instr _ _ FUCOMIP (Just (op1@(Reg r))) Nothing _) = do
  let size = get_op_size op1
  e0 <- se_op (Reg ST_0) size
  e1 <- se_op op1 size
  update_flgs [ZF,CF,PF] (E_app (Op UCOMISD) [e0,e1])
-- REMAINING
se_instr i =
  -- JUMPS / NOP / UD2
  if is_cond_jump i || i_opcode i `elem` [JMP, NOP, UD2] then
    return ()
  -- SIMD LOGICAL
  else if i_opcode i `elem` [ANDPD,ORPD,XORPD,XORPS,PXOR,PAND,POR] then
    case (i_op1 i,i_op2 i) of
      (Just op1,Just op2) -> do
        let size = get_op_size op1
        e2 <- se_op op2 size
        e1 <- se_op op1 size
        let e2_l = E_app (TakeBits 63 0) [e2]
        let e2_h = E_app (TakeBits 127 64) [e2]
        let e1_l = E_app (TakeBits 63 0) [e1]
        let e1_h = E_app (TakeBits 127 64) [e1]
        let f = case i_opcode i of
                  ANDPD -> (Op AND)
                  ORPD -> (Op OR)
                  XORPD -> (Op XOR)
                  XORPS -> (Op XOR)
                  PXOR -> (Op XOR)
                  _ -> error $ "Cannot symbolically execute op " ++ show_instruction i
        update_op op1 (E_app Concat [E_app f [e1_h,e2_h], E_app f [e1_l,e2_l]])
  -- SIMD ARITHMETIC 32 BIT
  else if i_opcode i `elem` [DIVSS,MULSS,ADDSS,SUBSS] then
    case (i_op1 i,i_op2 i) of
      (Just op1,Just op2) -> do
        let size = get_op_size op1
        e2 <- se_op op2 size
        e1 <- se_op op1 size
        let e2_l = E_app (TakeBits 31 0) [e2]
        let e1_l = E_app (TakeBits 31 0) [e1]
        let e1_h = E_app (TakeBits 127 32) [e1]
        let f = case i_opcode i of
                  DIVSS -> F FPS_DIV
                  MULSS -> F FPS_MUL
                  ADDSS -> F FPS_ADD
                  SUBSS -> F FPS_SUB
                  _ -> error $ "Cannot symbolically execute op " ++ show_instruction i
        update_op op1 (E_app Concat [e1_h, E_app f [e1_l,e2_l]])
  -- SIMD ARITHMETIC 64 BIT
  else if i_opcode i `elem` [DIVSD,MULSD,ADDSD,SUBSD] then
    case (i_op1 i,i_op2 i) of
      (Just op1,Just op2) -> do
        let size = get_op_size op1
        e2 <- se_op op2 size
        e1 <- se_op op1 size
        let e2_l = E_app (TakeBits 63 0) [e2]
        let e1_l = E_app (TakeBits 63 0) [e1]
        let e1_h = E_app (TakeBits 127 64) [e1]
        let f = case i_opcode i of
                  DIVSD -> F FP_DIV
                  MULSD -> F FP_MUL
                  ADDSD -> F FP_ADD
                  SUBSD -> F FP_SUB
                  _ -> error $ "Cannot symbolically execute op " ++ show_instruction i
        update_op op1 (E_app Concat [e1_h, E_app f [e1_l,e2_l]])
  -- SIMD PACKED ARITHMETIC 64 BIT
  else if i_opcode i `elem` [DIVPD,MULPD,ADDPD,SUBPD] then
    case (i_op1 i,i_op2 i) of
      (Just op1,Just op2) -> do
        let size = get_op_size op1
        e2 <- se_op op2 size
        e1 <- se_op op1 size
        let e2_l = E_app (TakeBits 63 0) [e2]
        let e1_l = E_app (TakeBits 63 0) [e1]
        let e1_h = E_app (TakeBits 127 64) [e1]
        let e2_h = E_app (TakeBits 127 64) [e2]
        let f = case i_opcode i of
                  DIVPD -> F FP_DIV
                  MULPD -> F FP_MUL
                  ADDPD -> F FP_ADD
                  SUBPD -> F FP_SUB
                  _ -> error $ "Cannot symbolically execute op " ++ show_instruction i
        update_op op1 (E_app Concat [E_app f [e1_h,e2_h], E_app f [e1_l,e2_l]])
  -- UNARY INSTRUCTIONS
  else if i_opcode i `elem` [NEG,NOT,INC,DEC] then
    case i_op1 i of
      Just op1 -> do
        let size = get_op_size op1
        e1 <- se_op op1 size
        update_op op1 (E_app (Op (i_opcode i)) [e1])
        update_flgs [ZF,CF,OF,SF,PF] (E_app (Op $ i_opcode i) [e1])
  -- BINARY INSTRUCTIONS
  else if i_opcode i `elem` [SUB,ADD,MUL,IMUL,AND,OR,XOR] then
    case (i_op1 i,i_op2 i) of
      (Just op1,Just op2) -> do
        let size = get_op_size op1
        e2 <- se_op op2 size
        e1 <- se_op op1 size
        update_op op1 (E_app (Op (i_opcode i)) [e1,e2])
        update_flgs [ZF,CF,OF,SF,PF] (E_app (Op $ i_opcode i) [e1,e2])
      _ -> error $ "Cannot symbolically execute instruction " ++ show_instruction i
  -- UNKNOWN
  else
    error $ "Cannot symbolically execute instruction " ++ show_instruction i


-- Symbolically execute a list of instructions (a basic block).
-- This may update the current sstate.
se_instrs :: [Instr] -> State SState ()
se_instrs [] = return ()
se_instrs (i:i':is) = do
  ss <- get
  case error_msg ss of
    Nothing -> do
      update_reg RIP (E_var (i_addr i) (Known 64))
      se_instr i
      se_instrs (i':is)
    Just _ -> return ()
se_instrs [i] = do
  update_reg RIP (E_var "returned" (Known 64))
  se_instr i

initial_state :: Config -> [(String,Instr)] -> SState
initial_state c bd = SState { regs = M.empty, mem = M.empty,flags = M.empty,config = c, block_data = bd, regions = Set.empty, error_msg = Nothing }

all_equal [] = True
all_equal [a] = True
all_equal (a:a':as) = a == a' && all_equal (a':as)

-- returns a result iff all given flags are set by the same instruction
-- If so, then it returns which instructions set the flags and its operands
flgs_set_by flgs ss =
  let flg_exprs = map (\f -> M.lookup f (flags ss)) flgs in
  case flg_exprs of
    (Just (E_app (Op op) [e0,e1]):_) -> if all_equal flg_exprs then Just (op, [e0,e1]) else Nothing
    _ -> Nothing

-- returns, given a string representing a flag and a sstate, an expression representing the value of the flag
mk_flg "ZF" ss =
  case M.lookup ZF (flags ss) of
    Just (E_app (Op TEST) [e1,e2]) ->
      if e1 == e2 then
        E_app (F Equal) [e1,E_val 0 (-1)]
      else
        E_app (F Equal) [E_app (Op AND) [e1,e2], E_val 0 (-1)]
    Just (E_app (Op CMP) [e1,e2]) -> E_app (F Equal) [e1,e2]
    Just (E_app (Op SUB) [e1,e2]) -> E_app (F Equal) [e1,e2]
    Just (E_app (Op UCOMISD) [e1,e2]) -> E_app (F FPEqual) [e1,e2]
    Just (E_app (Op UCOMISS) [e1,e2]) -> E_app (F FPSEqual) [e1,e2]
    Just (E_app (Op BT) [e0,e1]) -> E_flg ZF
    Just e -> E_app (F Equal) [e,E_val 0 (-1)]
    Nothing -> E_flg ZF
mk_flg "!ZF" ss =
  case M.lookup ZF (flags ss) of
    Just (E_app (Op TEST) [e1,e2]) ->
      if e1 == e2 then
        E_app (F NotEqual) [e1,E_val 0 (-1)]
      else
        E_app (F NotEqual) [E_app (Op AND) [e1,e2], E_val 0 (-1)]
    Just (E_app (Op CMP) [e1,e2]) -> E_app (F NotEqual) [e1,e2]
    Just (E_app (Op SUB) [e1,e2]) -> E_app (F NotEqual) [e1,e2]
    Just (E_app (Op UCOMISD) [e1,e2]) -> E_app (F FPNotEqual) [e1,e2]
    Just (E_app (Op UCOMISS) [e1,e2]) -> E_app (F FPSNotEqual) [e1,e2]
    Just (E_app (Op BT) [e0,e1]) -> E_app (F Not) [E_flg ZF]
    Just e -> E_app (F NotEqual) [e,E_val 0 (-1)]
    Nothing -> E_app (F Not) [E_flg ZF]
mk_flg "CF" ss =
  case flgs_set_by [CF] ss of
    Just (CMP, [e0,e1]) -> E_app (F LessThan) [e0,e1]
    Just (SUB, [e0,e1]) -> E_app (F LessThan) [e0,e1]
    Just (UCOMISD, [e0,e1]) -> E_app (F FPLessThan) [e0,e1]
    Just (UCOMISS, [e0,e1]) -> E_app (F FPSLessThan) [e0,e1]
    Just (ADD, [e0,e1]) -> E_app (Op ADD) [e0,e1]
    Just (BT, [e0,e1]) -> E_app (F TestBit) [e0,e1]
    Just (op, _) -> error $ "Cannot translate CF set by " ++ show op ++ " in state:\n" ++ show_SState_flg True "" ss
    _ -> error $ "Cannot translate CF in state:\n" ++ show_SState_flg True "" ss
mk_flg "!CF" ss =
  case flgs_set_by [CF] ss of
    Just (CMP, [e0,e1]) -> E_app (F GreaterThanOrEqual) [e0,e1]
    Just (SUB, [e0,e1]) -> E_app (F GreaterThanOrEqual) [e0,e1]
    Just (UCOMISD, [e0,e1]) -> E_app (F FPGreaterThanOrEqual) [e0,e1]
    Just (UCOMISS, [e0,e1]) -> E_app (F FPSGreaterThanOrEqual) [e0,e1]
    Just (BT, [e0,e1]) -> E_app (F Not) [E_app (F TestBit) [e0,e1]]
    Just (op, _) -> error $ "Cannot translate !CF set by " ++ show op ++ " in state:\n" ++ show_SState_flg True "" ss
    _ -> error $ "Cannot translate !CF in state:\n" ++ show_SState_flg True "" ss
mk_flg "SF" ss =
  case flgs_set_by [SF] ss of
    Just (CMP, [e0,e1]) -> E_app (F SignedLessThan) [e0,e1]
    Just (SUB , [e0,e1]) -> E_app (F SignedLessThan) [e0,e1]
    Just (TEST, [e0,e1]) -> E_app (F SignedLessThan) [e0,E_val 0 (-1)]
    Just (SHL, [e0,e1]) -> E_app (F SignedLessThan) [E_app (Op SHL) [e0,e1],E_val 0 (-1)]
    Just (ADD, [e0,e1]) -> E_app (F SignedLessThan) [E_app (Op ADD) [e0,e1],E_val 0 (-1)]
    Just (BT, [e0,e1]) -> (E_var "undefined" AnySize)
    Just (op, _) -> error $ "Cannot translate SF set by " ++ show op ++ " in state:\n" ++ show_SState_flg True "" ss
    Nothing -> E_flg SF
mk_flg "!SF" ss =
  case flgs_set_by [SF] ss of
    Just (CMP, [e0,e1]) -> E_app (F SignedGreaterThanOrEqual) [e0,e1]
    Just (SUB, [e0,e1]) -> E_app (F SignedGreaterThanOrEqual) [e0,e1]
    Just (TEST, [e0,e1]) -> E_app (F SignedGreaterThanOrEqual) [e0,E_val 0 (-1)]
    Just (SHL, [e0,e1]) -> E_app (F SignedGreaterThanOrEqual) [E_app (Op SHL) [e0,e1],E_val 0 (-1)]
    Just (ADD, [e0,e1]) -> E_app (F SignedGreaterThanOrEqual) [E_app (Op ADD) [e0,e1],E_val 0 (-1)]
    Just (BT, [e0,e1]) -> (E_var "undefined" AnySize)
    Just (op, _) -> error $ "Cannot translate !SF set by " ++ show op ++ " in state:\n" ++ show_SState_flg True "" ss
    _ -> error $ "Cannot translate !SF in state:\n" ++ show_SState_flg True "" ss
mk_flg "OF" ss =
  case M.lookup OF (flags ss) of
    Nothing -> E_flg OF
    _ -> error $ "Cannot translate OF in state:\n" ++ show_SState_flg True "" ss
mk_flg "PF" ss =
  case flgs_set_by [PF] ss of
    Just (UCOMISD, [e0,e1]) ->
      E_app (F Or) [ E_app (F IsNAN) [e0], E_app (F IsNAN) [e1] ]
    Just (UCOMISS, [e0,e1]) ->
      E_app (F Or) [ E_app (F IsNAN) [e0], E_app (F IsNAN) [e1] ]
    _ -> error $ "Cannot translate PF in state:\n" ++ show_SState "" ss
mk_flg "!PF" ss =
  case flgs_set_by [PF] ss of
    Just (UCOMISD, [e0,e1]) ->
      E_app (F And) [ E_app (F Not) [E_app (F IsNAN) [e0]], E_app (F Not) [E_app (F IsNAN) [e1] ]]
    Just (UCOMISS, [e0,e1]) ->
      E_app (F And) [ E_app (F Not) [E_app (F IsNAN) [e0]], E_app (F Not) [E_app (F IsNAN) [e1] ]]
    _ -> error $ "Cannot translate !PF in state:\n" ++ show_SState "" ss
mk_flg "SF == OF" ss =
  case flgs_set_by [SF,OF] ss of
    Just (CMP, [e0,e1]) -> E_app (F SignedGreaterThanOrEqual) [e0,e1]
    Just (SUB, [e0,e1]) -> E_app (F SignedGreaterThanOrEqual) [e0,e1]
mk_flg "SF != OF" ss =
  case flgs_set_by [SF,OF] ss of
    Just (CMP, [e0,e1]) -> E_app (F SignedLessThan) [e0,e1]
    Just (SUB, [e0,e1]) -> E_app (F SignedLessThan) [e0,e1]
    _ -> case (M.lookup SF (flags ss), M.lookup OF (flags ss)) of
           (Nothing,Nothing) -> E_app (F NotEqual) [E_flg SF, E_flg OF]
           _ -> error $ "Cannot translate SF != OF in state:\n" ++ show_SState_flg True "" ss
mk_flg "!ZF && SF == OF" ss =
  case flgs_set_by [ZF,SF,OF] ss of
    Just (CMP, [e0,e1]) -> E_app (F SignedGreaterThan) [e0,e1]
    Just (SUB, [e0,e1]) -> E_app (F SignedGreaterThan) [e0,e1]
    Just (TEST, [e0,e1]) -> E_app (F SignedGreaterThan) [e0,E_val 0 (-1)]
mk_flg "ZF || SF != OF" ss =
  case flgs_set_by [ZF,SF,OF] ss of
    Just (CMP, [e0,e1]) -> E_app (F SignedLessThanOrEqual) [e0,e1]
    Just (SUB, [e0,e1]) -> E_app (F SignedLessThanOrEqual) [e0,e1]
    Just (TEST, [e0,e1]) ->
      assert (e0 == e1) $ E_app (F SignedLessThanOrEqual) [e0,E_val 0 (-1)]
    Just (OR, [e0,e1]) -> E_app (F Or) [
                            E_app (F And) [E_app (F Equal) [e0,E_val 0 (-1)], E_app (F Equal) [e1,E_val 0 (-1)]],
                            E_app (F SignedLessThan) [E_app (Op OR) [e0,e1], E_val 0 (-1)]
                          ]
    _ -> case (M.lookup ZF (flags ss), M.lookup SF (flags ss), M.lookup OF (flags ss)) of
           (Nothing,Nothing,Nothing) -> E_app (Op OR) [E_flg ZF, E_app (F NotEqual) [E_flg SF, E_flg OF]]
           _ -> error $ "Cannot translate ZF || SF != OF in state:\n" ++ show_SState_flg True "" ss
mk_flg "CF || ZF" ss =
  case flgs_set_by [CF,ZF] ss of
    Just (CMP, [e0,e1]) -> E_app (F LessThanOrEqual) [e0,e1]
    Just (SUB, [e0,e1]) -> E_app (F LessThanOrEqual) [e0,e1]
    Just (UCOMISD, [e0,e1]) -> E_app (F FPLessThanOrEqual) [e0,e1]
    Just (UCOMISS, [e0,e1]) -> E_app (F FPSLessThanOrEqual) [e0,e1]
    _ -> error $ "Cannot translate CF || ZF in state:\n" ++ show_SState "" ss
mk_flg "!CF && !ZF" ss =
  case flgs_set_by [CF,ZF] ss of
    Just (CMP, [e0,e1]) -> E_app (F GreaterThan) [e0,e1]
    Just (SUB, [e0,e1]) -> E_app (F GreaterThan) [e0,e1]
    Just (UCOMISD, [e0,e1]) -> E_app (F FPGreaterThan) [e0,e1]
    Just (UCOMISS, [e0,e1]) -> E_app (F FPSGreaterThan) [e0,e1]
    _ -> error $ "Cannot translate !CF && !ZF in state:\n" ++ show_SState "" ss
mk_flg flg ss = error $ "Cannot translate flag: " ++ flg ++ " in state:\n" ++ show_SState_flg True "" ss

-- Symbolically execute abstract code.
-- Assumes basic blocks are represented by integers that are mapped to basic blocks using node_to_block,
-- and flags are represented by strings.
-- Produces abstract code where basic blocks are represented by sstates, and flags by expressions.
se_acode_function :: Config -> (String -> Instr) -> _ -> ACode Int String -> ACode SState Expr
se_acode_function c addr_to_instr node_to_block (BasicBlock i) =
  let block = node_to_block M.! i
      bd = map (\a -> (a,addr_to_instr a)) block
      ss = execState (se_instrs $ map addr_to_instr block) (initial_state c bd) in
    BasicBlock ss
se_acode_function c addr_to_instr node_to_block (Seq a b) =
  let ss0 = se_acode_function c addr_to_instr node_to_block a
      ss1 = se_acode_function c addr_to_instr node_to_block b in
    Seq ss0 ss1
se_acode_function c addr_to_instr node_to_block (ITE a flg b c') =
  let (BasicBlock ss0) = se_acode_function c addr_to_instr node_to_block a
      flg' = mk_flg flg ss0
      ss1 = se_acode_function c addr_to_instr node_to_block b
      ss2 = se_acode_function c addr_to_instr node_to_block c' in
    ITE (BasicBlock ss0) flg' ss1 ss2
se_acode_function c addr_to_instr node_to_block (While b) =
  let ss = se_acode_function c addr_to_instr node_to_block b in
    While ss
se_acode_function _ _ _ (Break i) = Break i
se_acode_function _ _ _ Continue = Continue
se_acode_function c addr_to_instr node_to_block Skip = Skip
se_acode_function _ _ _ (Call i) = Call i
se_acode_function c addr_to_instr node_to_block (WhileResume x) = let (is,as) = unzip x in WhileResume (zip is (map (se_acode_function c addr_to_instr node_to_block) as))


se_acode :: Config -> (_,M.Map (ACode Int String) Int) -> M.Map (ACode SState Expr) Int
se_acode c ((name, start, edgeList, edgeInfo, node_to_block,addr_to_instr), m) =
  M.mapKeys (se_acode_function c addr_to_instr node_to_block) m






