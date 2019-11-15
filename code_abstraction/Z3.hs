module Z3 where


import Z3.Monad
import X86_Datastructures
import X86_Expr
import X86_CFG
import qualified Data.Map as M
import qualified Data.Set as Set
import Data.Maybe
import System.IO.Unsafe
import Debug.Trace
import qualified Control.Exception.Base as A (assert)
import Data.Traversable (sequence)
import Data.List
import Text.Read
import Data.Word
import Data.IORef
import Control.Monad (when)


-- Can be used to count the number of calls to Z3
counter = unsafePerformIO $ newIORef 0

incr_counter = return () -- do
--   i <- readIORef counter
--   writeIORef counter (i+1)
--   if (i `mod` 100) == 0 then putStrLn $ "Number of Z3 calls == " ++ show i else return ()

-- Enumerate vars from an expr that are exported to Z3
get_z3_vars (E_reg r) = Set.singleton (E_reg r)
get_z3_vars (E_flg f) = Set.singleton (E_flg f)
get_z3_vars (E_var v s) = Set.singleton (E_var v s)
get_z3_vars (E_app (TakeBits h 0) [E_reg r]) = Set.singleton (E_reg r)
get_z3_vars (E_app (TakeBits 15 8) e) = Set.singleton (E_app (TakeBits 15 8) e)
get_z3_vars (E_val _ _) = Set.empty
get_z3_vars (E_deref a s) = Set.singleton (E_deref a s)
get_z3_vars (E_app (F2 f a) _) = Set.singleton (E_var ("f" ++ a) (Known 0))
get_z3_vars (E_app _ es) = Set.unions (map get_z3_vars es)
get_z3_vars (E_ite e0 e1 e2) = Set.unions (map get_z3_vars [e0,e1,e2])

-- Given a mapping from expression to variable names, add all variables to the Z3 problem.
-- Return a mapping from expression to Z3 ASTs.
z3_add_vars :: [(Expr,String)] -> Z3 (M.Map Expr AST)
z3_add_vars [] = return M.empty
z3_add_vars ((e,n):vs) = do
  ast <- mkFreshIntVar n
  asts <- z3_add_vars vs
  return $ M.insert e ast asts

-- Translate an Expr into a Z3 AST.
-- Requires all variables in the Expr to already be added to the Z3 problem.
z3_mk_expr :: Config -> M.Map Expr AST -> Expr -> Z3 AST
z3_mk_expr _ var_asts (E_reg r) = return $ fromJust $ M.lookup (E_reg r) var_asts
z3_mk_expr _ var_asts (E_flg f) = return $ fromJust $ M.lookup (E_flg f) var_asts
z3_mk_expr _ var_asts (E_var v s) = return $ fromJust $ M.lookup (E_var v s) var_asts
z3_mk_expr _ var_asts (E_val i _) = mkIntNum i
z3_mk_expr _ var_asts (E_deref a s) = return $ fromJust $ M.lookup (E_deref a s) var_asts
z3_mk_expr _ var_asts (E_app (TakeBits h 0) [E_reg r]) = return $ fromJust $ M.lookup (E_reg r) var_asts
z3_mk_expr _ var_asts (E_app (TakeBits 15 8) e) = return $ fromJust $ M.lookup (E_app (TakeBits 15 8) e) var_asts
z3_mk_expr c var_asts (E_app (Op NEG) [e0]) = do
  ast0 <- z3_mk_expr c var_asts e0
  mkUnaryMinus ast0
z3_mk_expr c var_asts (E_app (Op SUB) [e0,e1]) = do
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  mkSub [ast0,ast1]
z3_mk_expr c var_asts (E_app (Op ADD) [e0,e1]) = do
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  mkAdd [ast0,ast1]
z3_mk_expr c var_asts (E_app (Op MUL) [e0,e1]) = do
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  mkMul [ast0,ast1]
z3_mk_expr c var_asts (E_app (Op IMUL) [e0,e1]) = do
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  mkMul [ast0,ast1]
z3_mk_expr c var_asts (E_app (Op IDIV) [e0,e1]) = do
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  mkDiv ast0 ast1
z3_mk_expr c var_asts (E_app (Op SHR) [e0,E_val n s]) =
  if expr_has_size c e0 (fromIntegral $ n+1) then do
    ast0 <- z3_mk_expr c var_asts e0
    _0 <- mkInteger 0
    _1 <- mkInteger 1
    ast1 <- mkGe ast0 _0
    mkIte ast1 _0 _1
  else do
    ast0 <- z3_mk_expr c var_asts e0
    _2pn <- mkInteger (2^n)
    mkDiv ast0 _2pn
z3_mk_expr c var_asts (E_app (Op SAR) [e0,E_val n s]) =
  if expr_has_size c e0 (fromIntegral $ n+1) then do
    ast0 <- z3_mk_expr c var_asts e0
    _0 <- mkInteger 0
    _1 <- mkInteger 1
    ast1 <- mkGe ast0 _0
    mkIte ast1 _0 _1
  else do
    ast0 <- z3_mk_expr c var_asts e0
    _2pn <- mkInteger (2^n)
    mkDiv ast0 _2pn
z3_mk_expr c var_asts (E_app (F Equal) [e0,e1]) = do
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  mkEq ast0 ast1
z3_mk_expr c var_asts (E_app (F NotEqual) [e0,e1]) = do
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  mkEq ast0 ast1 >>= mkNot
z3_mk_expr c var_asts (E_app (F SignedGreaterThanOrEqual) [e0,e1]) = do
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  mkGe ast0 ast1
z3_mk_expr c var_asts (E_app (Op SHL) [e0,E_val n _]) = do
  ast0 <- z3_mk_expr c var_asts e0
  _2pn <- mkInteger (2^n)
  mkMul [ast0,_2pn]
z3_mk_expr c var_asts (E_app (Op AND) [e0,E_val 255 _]) = do -- TODO generalize
  ast0 <- z3_mk_expr c var_asts e0
  _255 <- mkInteger 256
  mkMod ast0 _255
z3_mk_expr c var_asts (E_app (Op AND) [e0,E_val 127 _]) = do
  ast0 <- z3_mk_expr c var_asts e0
  _128 <- mkInteger 128
  mkMod ast0 _128
z3_mk_expr c var_asts (E_app (Op AND) [e0,E_val 63 _]) = do
  ast0 <- z3_mk_expr c var_asts e0
  _64 <- mkInteger 64
  mkMod ast0 _64
z3_mk_expr c var_asts (E_app (Op AND) [e0,E_val 31 _]) = do
  ast0 <- z3_mk_expr c var_asts e0
  _32 <- mkInteger 32
  mkMod ast0 _32
z3_mk_expr c var_asts (E_app (Op AND) [e0,E_val 15 _]) = do
  ast0 <- z3_mk_expr c var_asts e0
  _16 <- mkInteger 16
  mkMod ast0 _16
z3_mk_expr c var_asts (E_app (Op AND) [e0,E_val 7 _]) = do
  ast0 <- z3_mk_expr c var_asts e0
  _8 <- mkInteger 8
  mkMod ast0 _8
z3_mk_expr c var_asts (E_app (Op AND) [e0,E_val 3 _]) = do
  ast0 <- z3_mk_expr c var_asts e0
  _4 <- mkInteger 4
  mkMod ast0 _4
z3_mk_expr c var_asts (E_app (Op AND) [e0,E_val 1 _]) = do
  ast0 <- z3_mk_expr c var_asts e0
  _2 <- mkInteger 2
  mkMod ast0 _2
z3_mk_expr c var_asts (E_app (Op XOR) [e0,E_val 255 _]) = do -- one's complement, TODO generalizeA
  when (not $ expr_has_size c e0 8) $ fail $ "Cannot translate to Z3: " ++ show e0
  ast0 <- z3_mk_expr c var_asts e0
  mkUnaryMinus ast0
z3_mk_expr c var_asts (E_app (Op DIV) [e0,e1]) = do
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  mkDiv ast0 ast1
z3_mk_expr c var_asts (E_app (F Mod) [e0,e1]) = do
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  mkMod ast0 ast1
z3_mk_expr c var_asts (E_app (Op NOT) [e0]) = do -- NOT a == (-a) - 1
  ast0 <- z3_mk_expr c var_asts e0 >>= mkUnaryMinus
  _1 <- mkInteger 1
  mkSub [ast0, _1]
z3_mk_expr c var_asts (E_app (F ZExtend) [e0,E_val s _]) = z3_mk_expr c var_asts e0
z3_mk_expr c var_asts (E_app (F2 f a) _) = return $ fromJust $ M.lookup (E_var ("f" ++ a) (Known 0)) var_asts -- treat function results as free variables
z3_mk_expr c var_asts (E_app (SExtend _ _) [e]) = z3_mk_expr c var_asts e -- values translated to ints remain their value after sign-extension
z3_mk_expr c var_asts (E_app (TakeBits 15 0) [e]) = do
  ast0 <- z3_mk_expr c var_asts e
  _65536 <- mkInteger 65536
  mkMod ast0 _65536
z3_mk_expr c var_asts (E_app (TakeBits 7 0) [e]) = do
  ast0 <- z3_mk_expr c var_asts e
  _256 <- mkInteger 256
  mkMod ast0 _256
z3_mk_expr c var_asts (E_app (TakeBits 31 0) [e]) = z3_mk_expr c var_asts e
z3_mk_expr c var_asts (E_app (TakeBits 63 0) [e]) = z3_mk_expr c var_asts e
-- A specific pattern:
-- 	 (if a <s 0 then -1 else 0) . a
-- This is simply sign-extension
z3_mk_expr c var_asts e@(E_app Concat [E_app (F ZExtend) [E_ite (E_app (F SignedLessThan) [e0, E_val 0 _]) (E_val 4294967295 _) (E_val 0 _), E_val 32 _],
                                       E_app (F ZExtend) [e1, E_val 32 _]]) = do
  when (e0 /= e1) $ fail $ "Cannot translate to Z3: " ++ show e
  z3_mk_expr c var_asts e0
z3_mk_expr c var_asts e@(E_app Concat [E_app (F ZExtend) [E_ite (E_app (F SignedLessThan) [e0, E_val 0 _]) (E_val 18446744073709551615 _) (E_val 0 _), E_val 64_],
                                       E_app (F ZExtend) [e1, E_val 64 _]]) = do
  when (e0 /= e1) $ fail $ "Cannot translate to Z3: " ++ show e
  z3_mk_expr c var_asts e0
z3_mk_expr c var_asts (E_ite e0 e1 e2) = do
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  ast2 <- z3_mk_expr c var_asts e2
  mkIte ast0 ast1 ast2
z3_mk_expr c var_asts e = error $ "Cannot translate to Z3: " ++ show_expr e


-- Blocks (e0,s0) and (e1,s1) are separated iff for any address x:
-- x in (e0,s0) and x in (e1,s1) is unsat
mk_check_sep_problem :: Config -> Expr -> Int -> Expr -> Int -> Z3 Result
mk_check_sep_problem c e0 s0 e1 s1 = do
  let vars = Set.toList $ Set.union (get_z3_vars e0) (get_z3_vars e1)
  let var_names = zip vars (map (\n -> "q" ++ show n) [0..])
  var_asts <- z3_add_vars var_names
  x <- mkFreshIntVar "x"
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  ast2 <- mkIntNum s0
  ast3 <- mkIntNum s1
  assert =<< mkGe x ast0
  assert =<< mkLt x =<< mkAdd [ast0, ast2]
  assert =<< mkGe x ast1
  assert =<< mkLt x =<< mkAdd [ast1, ast3]
  check

-- Block (e0,s0) is enclosed in (e1,s1) iff for any address x:
-- x in (e0,s0) and x notin (e1,s1) is unsat
mk_check_enc_problem :: Config -> Expr -> Int -> Expr -> Int -> Z3 Result
mk_check_enc_problem c e0 s0 e1 s1 = do
  let vars = Set.toList $ Set.union (get_z3_vars e0) (get_z3_vars e1)
  let var_names = zip vars (map (\n -> "q" ++ show n) [0..])
  var_asts <- z3_add_vars var_names
  x <- mkFreshIntVar "x"
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  ast2 <- mkIntNum s0
  ast3 <- mkIntNum s1
  assert =<< mkGe x ast0
  assert =<< mkLt x =<< mkAdd [ast0, ast2]
  assert =<< mkOr =<< sequence [mkLt x ast1, mkGe x =<< mkAdd [ast1,ast3]]
  check

-- Block (e0,s0) is overlapping with (e1,s1) iff:
-- (e0 < e1 || e0 >= e1 + s1) && (e1 < e0 || e1 >= e0 + s0)
-- is unsat
mk_check_overlap_problem :: Config -> Expr -> Int -> Expr -> Int -> Z3 Result
mk_check_overlap_problem c e0 s0 e1 s1 = do
  let vars = Set.toList $ Set.union (get_z3_vars e0) (get_z3_vars e1)
  let var_names = zip vars (map (\n -> "q" ++ show n) [0..])
  var_asts <- z3_add_vars var_names
  ast0 <- z3_mk_expr c var_asts e0
  ast1 <- z3_mk_expr c var_asts e1
  ast2 <- mkIntNum s0
  ast3 <- mkIntNum s1
  assert =<< mkAnd =<< sequence
    [
      mkOr =<< sequence [mkLt ast0 ast1, mkGe ast0 =<< mkAdd [ast1,ast3]],
      mkOr =<< sequence [mkLt ast1 ast0, mkGe ast1 =<< mkAdd [ast0,ast2]]
    ]
  check

-- Make A Z3 problem that simplifies an expression as far as possible
-- Returns a string that can be, e.g., "42", "(- 42)", or some expression.
mk_simp_problem :: Config -> Expr -> Z3 String
mk_simp_problem c e = do
  let vars = Set.toList $ get_z3_vars e
  let var_names = zip vars (map (\n -> "q" ++ show n) [0..])
  var_asts <- z3_add_vars var_names
  ast <- z3_mk_expr c var_asts e
  astToString =<< simplify ast

-- Simplify an expression to an Int, if possible.
-- Examples:
-- simp_expr ((((RBP - 56) + 4) + 4) - ((RBP - 56) + 8)) = 0
-- simp_expr (((RBP - 56) + 4) - ((RBP - 56) + 8)) = -4
-- simp_expr (((RBP - 56) + 8) - (RBP - 56)) = 8
-- Uses unsafePerformIO to call Z3.
simp_expr :: Config -> Expr -> Maybe Int
simp_expr c e = unsafePerformIO do_simp
 where
  do_simp = evalZ3 (mk_simp_problem c e) >>= process_result
  process_result result = do
    incr_counter
    -- putStrLn ("Result simp of " ++ show_expr e ++ " = " ++ show result)
    return $ stringToInt result
  stringToInt s =
    case readMaybe s :: Maybe Int of
      Just i -> Just i
      Nothing ->
        if isPrefixOf "(- " s && isSuffixOf ")" s then
          readMaybe $ init (drop 2 s)
        else
          -- traceShow $ "Cannot read SMT output: " ++ s
          Nothing




check_sep :: Config -> Expr -> Int -> Expr -> Int -> Bool
check_sep c e0 s0 e1 s1 =
  case (e0,e1) of
    (E_app (Op SUB) [e0',E_val v0 _], E_app (Op SUB) [e1',E_val v1 _]) ->
      if e0' == e1' && v0 >= fromIntegral s0 && v1 >= fromIntegral s1 then
        v0 - fromIntegral s0 >= v1 || v0 <= v1 - fromIntegral s1
      else
        unsafePerformIO do_check
    _ -> unsafePerformIO do_check
 where
  do_check = evalZ3 (mk_check_sep_problem c e0 s0 e1 s1) >>= process_result
  process_result result = do
    incr_counter
    -- putStrLn ("Result sep = " ++ show result)
    return (A.assert (result /= Undef) (result == Unsat))

check_enc :: Config -> Expr -> Int -> Expr -> Int -> Bool
check_enc c e0 s0 e1 s1 = unsafePerformIO do_check
 where
  do_check = evalZ3 (mk_check_enc_problem c e0 s0 e1 s1) >>= process_result
  process_result result = do
    incr_counter
    -- putStrLn ("Result enc = " ++ show result)
    return (A.assert (result /= Undef) (result == Unsat))

check_overlap :: Config -> Expr -> Int -> Expr -> Int -> Bool
check_overlap c e0 s0 e1 s1 =
  case (e0,e1) of
    (E_app (Op SUB) [e0',E_val v0 _], E_app (Op SUB) [e1',E_val v1 _]) ->
      if e0' == e1' && v0 >= fromIntegral s0 && v1 >= fromIntegral s1 then
        (v1 >= v0 && v0 > v1 - fromIntegral s1) || (v0 >= v1 && v1 > v0 - fromIntegral s0)
      else
        unsafePerformIO do_check
    _ -> unsafePerformIO do_check
 where
  do_check = evalZ3 (mk_check_overlap_problem c e0 s0 e1 s1) >>= process_result
  process_result result = do
    incr_counter
    -- putStrLn ("Result ovl = " ++ show result)
    return (A.assert (result /= Undef) (result == Unsat))





-- Block (e0,s0) is equal to (e1,s1) iff they are enclosed and have the same size
check_eq c e0 s0 e1 s1 =
  s0 == s1 && check_enc c e0 s0 e1 s1
