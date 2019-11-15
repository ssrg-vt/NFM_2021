{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE LambdaCase #-}
module BB_Comp where

import X86_Datastructures
import X86_Symb
import RamblrParser
import X86_CFG
import X86_Symb
import X86_Expr
import ConfigParser

import System.Console.ArgParser
import Data.List
import qualified Data.Map as M
import qualified Data.Set as Set
import System.Exit (die)
import Control.Conditional hiding (when)
import Control.Monad.State.Lazy
import Control.Monad.Loops (allM) 
import Control.Monad
import Control.Monad.Extra (findM)


----------------
-- data types --
----------------
-- A control flow graph (CFG) has nodes, each of which has a unique ID.
-- Nodes are thus Ints.
type Node = Int
type Region = (Expr,Int)


type Label = String
-- A CheckState consists of
-- 1) Visited nodes of binary A
-- 2) Visited nodes of binary B
-- 3) label relationship when there is string mismatch
-- 4) local variable relationship
data CheckState = CheckState {
  child_1 :: [Node],
  child_2 :: [Node],
  label_relations :: [(Label,Label)],
  local_var_relations :: [(Expr,Expr)]
  }

-- A BinaryModel consists of:
-- 1.) the name of the current text_section
-- 2.) exactly one start node
-- 3.) edges: a function that given a node produces a list of children nodes (possibly empty).
--     Also, a string representation of the flag on the edge.
-- 4.) symbs: a function that given a node produces an object of type SState (Symbolic State).
--     This object represents the semantic behavior of the node.
-- 5.) either the string "Vanilla" or "Randomized"
data BinaryModel = BinaryModel {
  text_section :: String,
  start_node   :: Node,
  edges        :: M.Map Node [(Node,String)],
  symbs        :: M.Map Node SState,
  bin_type     :: String
 }



----------------------------Data Structure-------------------------------
--data ExprF =                data Expr =                       data SState = SState {
--    Op Opcode                    E_reg Register                    regs :: M.Map Register Expr
--  | F Operation                | E_flg Flag                      | mem :: M.Map Region Expr
--  | F2 String String           | E_val Word64 Int                | flags :: M.Map Flag Expr
--  | TakeBits Int Int           | E_var String ExprSize           | config :: Config
--  | Concat                     | E_app ExprF [Expr]              | block_data :: [(String,Instr)]
--  | SExtend Int Int            | E_deref Expr Int                | regions :: Set.Set Region
--                               | E_ite Expr Expr Expr            
--  deriving (Show,Ord,Eq)       deriving (Show,Ord,Eq)              deriving (Show,Eq,Ord)



---------------------
-- pretty printing --
---------------------
-- pretty printing of a BinaryModel
instance Show BinaryModel where
  show (BinaryModel ts sn es ss typ) =
       "Starting Node: " ++ show sn ++ "\n\n"
    ++ "Edges: " ++ (intercalate ", " (map show_edges (M.toList es))) ++ "\n\n"
    ++ "Symbolic Execution for Binary " ++ show typ ++ ":\n" ++ "Current text section: " ++ show ts ++
    "\n" ++ intercalate "\n" (map show_symb $ M.toList ss) ++ "\n"
    ++ "--------\n"
   where
    show_edges (node,children) = intercalate ", " $ map (show_edge node) children
    show_edge node (c,flg)     = show node ++ " --" ++ flg ++ "--> " ++ show c
    show_symb (node,sstate)    = "node " ++ show node ++ ":\n" ++ show_SState "" sstate

-- pretty printing of the local variable relations
show_local_var_relations :: [(Expr,Expr)] -> String
show_local_var_relations [] = ""
show_local_var_relations ((e1,e2):lv_relations) = 
  let (x,y) = partition (\(e1',_) -> e1 == e1') lv_relations in
    show_expr e1 ++ " <--> " ++ (intercalate "," $ map show_expr (e2:map snd x)) ++ "\n" ++ show_local_var_relations y

-- pretty printing of the label relations
show_label_relations :: [(Label,Label)] -> String
show_label_relations [] = ""
show_label_relations ((l1,l2):l_relations) = 
  let (x,y) = partition (\(l1',_) -> l1 == l1') l_relations in
    l1 ++ " <--> " ++ (intercalate "," $ l2:map snd x) ++ "\n" ++ show_label_relations y

-- pretty printing of memory
show_mem :: M.Map Region Expr -> String
show_mem m = intercalate "\n" $ map show_mem_entry $ M.toList m
 where
  show_mem_entry ((e,s),v) = "[" ++ show_expr e ++ "," ++ show s ++ "] := " ++ show_expr v

-- pretty printing of a node
print_node :: BinaryModel -> Node -> String
print_node b n =
    let s = symbs b M.! n
        bd = block_data s
        i0 = head bd
        i1 = last bd
        in
      fst i0 ++ " -> " ++ fst i1

-- pretty printing of a memory region
show_region :: Region -> String
show_region (a,s) = "[" ++ show_expr a ++ "," ++ show s ++ "]"




-----------
-- check --
-----------

-- The check function is of type:
--    StateT CheckState IO ()
-- This means that it is a function that returns nothing (indicated by "()").
-- It has two side-effects:
-- First, it can do IO.
-- Second, it can update the current state. The current state is of type CheckState.
-- It contains two lists of visited nodes (one for vanilla, one for modified), and the 
-- relations between labels and local variables.
--
-- To get the currently visited states, do:
--    CheckState visited1 visited2 label_rel lv_relations <- get
--
-- To update the current state, use function put, e.g.:
--    put $ (n:visited1) (m:visited2) label_rel lv_relations)
-- adds nodes n and m to the lists of visited nodes.
--
-- To do IO, use this function. E.g.: io $ putStrLn "hello"
io :: IO x -> StateT CheckState IO x 
io = liftIO

-- Function "check" decides, given two binary models, whether they semantically do the same thing.
-- It applies check' to the start nodes of the CFGs
-- As soon as a difference is found, the program is exitted with an error message (using the "die" function of System.Exit).
-- Thus if the function returns, the check has been succesfull.
check :: Config -> BinaryModel -> BinaryModel -> StateT CheckState IO ()
check c a b = do
  check' (start_node a) (start_node b)


  -- Print out the label- and local variable relations
  CheckState _ _ label_rel lv_relations <- get
  io $ putStrLn $ "Label relationship:\n" ++ show_label_relations label_rel
  io $ putStrLn $ "Local variable relationship:\n" ++ show_local_var_relations lv_relations
  io $ putStrLn "Succesful check!"
 where
  -- check' recursively browses the CFG.
  -- It first checks whether the current two nodes "do the same thing".
  -- if they have not been visited yet, then proceeds with their children.
  check' :: Node -> Node -> StateT CheckState IO ()
  check' n m = do
    (CheckState visited1 visited2 _ _) <- get           -- in the beginning visited1 and visited2 will be empty
    if n `elem` visited1 && m `elem` visited2 then      -- check whether node n and m are in the visited.
                                                        -- if not, they are NOT visited, hence else stmt
      return () 
    else do
      -- verify that the nodes do the same, and add the nodes to the lists of visited nodes. 
      comp_result <- same_behavior c n m
      --io $ putStrLn $ "Comp result for the: " ++ print_node a n ++ " and " ++ print_node b m ++ " is " ++  show comp_result ++ "\n"
      -- same behavior returns either True or False
      --     If it returns true, proceed normally
      --     Else if it returns false, put the m node into the visited, while check if it is a skip and it has exactly one child.
      --     Then run the check' again on n and that child.

      if comp_result then do
         io $ putStrLn $ "Nodes " ++ print_node a n ++ " and " ++ print_node b m ++ " have been verified to do the same.\n"
         modify (add_to_visited [n] [m])
         let edge_chk_a = case M.lookup n (edges a) of
                            Nothing ->  error $ "Node " ++ show n
                            Just v -> v
         let edge_chk_b = case M.lookup m (edges b) of
                            Nothing ->  error $ "Node " ++ show m
                            Just v -> v

         --io $ putStrLn $ "Nodes " ++ print_node a n ++ " and " ++ print_node b m ++ " checking children.\n"
         check_children (edge_chk_a) (edge_chk_b)
      else do
         -- if node b is not a skip, then fail: nodes a and b are different
         when (not $ is_skip b m) $ fail $  "Nodes " ++ print_node a n ++ " and " ++ print_node b m ++ " are different.\n\n" ++ show_SState "" (symbs a M.! n) ++ "\n\n" ++ show_SState "" (symbs b M.! m)
         -- if node b is a skip, then proceed with the child of b
         modify (add_to_visited [] [m])
         let edge_chk_b = case M.lookup m (edges b) of
                            Nothing ->  error $ "Node " ++ show m
                            Just v -> v
         case edge_chk_b of -- this is where checking for children of a node happens. Use case instead of creating new function
           [(child,flg)] -> check' n child
           _ -> error $ "Node " ++ print_node a n




  -- check_children takes lists of children. Each child is represented by a node and a flag-string.
  -- If both lists are empty, then all children have been verified to be correct, so we return true.
  -- If both lists contain at least one element, we compare the heads of the lists.
  -- If the lists contain a different number of elements, then we return false.
  -- Two children are considered "the same" 1.) when the flag-strings are the same, and 2.) when check' has verified the nodes
  check_children :: [(Node,String)] -> [(Node,String)] -> StateT CheckState IO ()
  check_children [] [] = return ()
  check_children ((n',flg0):children0) ((m',flg1):children1) = do
    if flg0 == flg1 then do
      check' n' m'
      check_children children0 children1
    else do
      io $ putStrLn $ "Edges to nodes " ++ print_node a n' ++ show " and " ++ print_node a m' ++ " have different flags: " ++ flg0 ++ " and " ++ flg1
  check_children _ _ = io $ die "Unequal number of children"

  -- Decides whether two nodes do "the same". 
  same_behavior :: Config -> Node -> Node -> StateT CheckState IO Bool 
  same_behavior c n m = do
    let sa = symbs a M.! n
    let sb = symbs b M.! m

    io $ putStrLn $ "same_behavior for the nodes: " ++ print_node a n ++ " and " ++ print_node b m ++ "\n"
    io $ putStrLn $ "same_behavior checking these two SStates:" ++ "\n\n" ++ show_SState "SA || " sa ++ "\n\n" ++ show_SState "SB || " sb ++ "\n"
    are_similar <- sstates_are_similar c sa sb
    case are_similar of
       Success -> return True
       Error errMsg -> do
                       io $ putStrLn $ errMsg
                       return False 


-- add x and y to the visited nodes
add_to_visited x y (CheckState visited1 visited2 label_rel lv_relations) = CheckState (x ++ visited1) (y ++ visited2) label_rel lv_relations



-- returns true iff node n is a skip
-- The node is a skip if:
--   its memory is empty (indicating that it does not do any memory writes)
--   its registers are empty except for RIP (indicating that it solely writes to RIP)
-- Trivial assignments are ignored, e.g.:
--   RDI     := E_reg RDI
--   [(a,s)] := E_deref a s
is_skip bm n =
  let ss = symbs bm M.! n
      m  = mem ss
      r  = regs ss in
    M.size (M.filterWithKey is_not_trivial_mem m) == 0 && M.size (M.filterWithKey is_not_trivial_reg $ M.delete RIP r) == 0
 where
  is_not_trivial_mem (a,s) e = e /= E_deref a s
  is_not_trivial_reg reg val = val /= E_reg reg


-- Renaming the True or False as Success and Error
data Result = Success | Error String deriving (Show,Eq,Ord) 

is_local_var :: Expr -> Bool
is_local_var (E_app (Op SUB) [E_var "RSP0" _,_]) = True
is_local_var (E_app (Op SUB) [E_var "RBP0" _,_]) = True

-- TODO: TEMP
is_local_var (E_app (Op SUB) [E_reg RSP,_]) = True
is_local_var (E_app (Op SUB) [E_reg RBP,_]) = True
-- END TEMP

is_local_var _ = False


sstates_are_similar :: Config -> SState -> SState -> StateT CheckState IO Result 
sstates_are_similar c sa sb = do
  let all_regs = M.keys (regs sa) -- get all registers from the first symbolic execution
  let real_mems = M.filterWithKey is_not_trivial (mem sa) -- this is where I filter for useless memory which basically says A == A
  let all_mems = M.keys (real_mems)  -- get all memory from the first symbolic execution
  let all_real_regs = delete RIP all_regs -- filtering by delete function
 
  chk_b <- allM (reg_chk sb) all_real_regs
  if not chk_b then
    return $ Error "Register or Memory is not compatible"
  else do 
    reg_chk_a <- (allM (reg_cmp c sa sb) all_real_regs)
    io $ putStrLn $ "Reg Chk: " ++ show reg_chk_a
    mem_chk_a <- (allM (mem_cmp c sa sb) all_mems)
    io $ putStrLn $ "Mem Chk: " ++ show mem_chk_a
    let result = if (reg_chk_a && mem_chk_a) then Success else Error $ "Either reg_chk_a or mem_chk_a failed: " ++ show (reg_chk_a, mem_chk_a)
    io $ putStrLn $ "Result: " ++ show result
    return result

  where
    is_not_trivial (a,s) e = e /= E_deref a s -- filtering out all the "trivial" statements which functionally equal to each other
    -- lazy eval = line doesn't mean haskell will run it + make inf list,
    --             it will only compute the necessary elements instaed of all the way to the end
    --             remember these return IO Bool, hence entire of this statement needs to return singular Bool
    -- IO Monad => imperative programming order

-- Obtain the candidate list for the given node

-- Sanity check for registers
reg_chk :: SState -> Register -> StateT CheckState IO Bool
reg_chk sym_r r = do
  io $ putStrLn $ "reg_chk debug " ++ show r ++ show (regs sym_r)
  case M.lookup r (regs sym_r) of -- lookup -> partial function
    Nothing -> do -- if you want to debug the message using io, just use do command
              io $ putStrLn $ "Nothing: " ++ show r ++ "\nShow memory of SState: " ++ show (regs sym_r) ++ "\n"  
              return False
    Just v -> do 
              return True

reg_cmp :: Config -> SState -> SState -> Register -> StateT CheckState IO Bool
reg_cmp c sa sb r = do
  let value_a = case M.lookup r (regs sa) of
                  Just v -> v
  let value_b = case M.lookup r (regs sb) of
                  Nothing -> error $ "Register " ++ show r ++ " from vanilla" ++ "\nVanilla SState " ++ show_SState "" sa ++ "\nRand SState " ++ show_SState "" sb
                  Just v -> v
  io $ putStrLn $ "Resulting values:\nValue A:\n" ++ show value_a ++ "\nValue B:\n" ++ show value_b
  expr_cmp value_a value_b -- This allows parsing of each registers (RSI, RAX, etc) per symbolic state for both A and B

-- [(Reg: RSP - Value: 8),8] := Reg: RBP || Expr := Expr e
mem_cmp :: Config -> SState -> SState -> Region -> StateT CheckState IO Bool --  Expr -> Set.Set Region ->
mem_cmp c sa sb (a,s)  = do
  let value_a = case M.lookup (a,s) (mem sa) of
                  Just v -> v
  candidates <- filterM (is_candidate (a,s) value_a) (M.toList $ mem sb) {- candidates is a list which contains of filtered value
                                                                            resulting from checking it with randomized binary's 
                                                                            memory -}
  if candidates == [] then io $ putStrLn $ "Vanilla region: " ++ show_region (a,s) ++ "\nVanilla Memory:\n" ++ show_mem (mem sa) ++ "\nRandom Memory:\n" ++ show_mem (mem sb) ++ "\n"
  else return ()
  return $ candidates /= []
 where
  is_candidate (a1,s1) v1 ((a2,s2),v2) =
    if s1 /= s2 then {- check for size between two memory regions, if they are different, then return false -}
      return False
    else if is_local_var a1 && is_local_var a2 then do {- otherwise, check whether both registers are local variable -}
      s <- get
      b0 <- local_var_cmp a1 a2 {- making local variable relations with this comparison function -}
      b1 <- expr_cmp v1 v2      {- checking value for both memory regions as a double check -}
      if b0 && b1 then do
        io $ putStrLn $ "If resulting values:\n(a1 := a2):\n" ++ show a1 ++ "\n" ++ show a2 ++ "\n(v1 := v2):\n" ++ show v1 ++ "\n" ++ show v2
        io $ putStrLn $ "b0: " ++ show b0 ++ " b1: " ++ show b1
        return True
      else do
        put s
        return False
    else do  {- otherwise, do the "normal" check which is simply just doing memory comparison -}
       s <- get
       b0 <- expr_cmp a1 a2
       b1 <- expr_cmp v1 v2
       if b0 && b1 then do
         io $ putStrLn $ "Else resulting values:\n(a1 := a2):\n" ++ show a1 ++ "\n" ++ show a2 ++ "\n(v1 := v2):\n" ++ show v1 ++ "\n" ++ show v2
         io $ putStrLn $ "b0: " ++ show b0 ++ " b1: " ++ show b1 ++ "\n\n"
         return True
       else do
         put s
         return False



label_cmp :: Label -> Label -> StateT CheckState IO Bool
label_cmp str1 str2 = do
    (CheckState child_0 child_1 label_relations lv_relations) <- get -- in the beginning visited1 and visited2 will be empty
    if (str1, str2) `elem` label_relations then do      -- check whether node n and m are in the visited,
                                                        -- if not, they are NOT visisted, hence else stmt
      return True
    else do
      put(CheckState child_0 child_1 ((str1,str2):label_relations) lv_relations)
      return True

local_var_cmp :: Expr -> Expr -> StateT CheckState IO Bool
local_var_cmp e1 e2 = do
 (CheckState child_0 child_1 label_relations lv_relations) <- get
 io $ putStrLn $ "local_var_cmp called\n"
 if (e1,e2) `elem` lv_relations then do
   return True
 else do
   put(CheckState child_0 child_1 label_relations ((e1,e2):lv_relations))
   return True

expr_cmp :: Expr -> Expr -> StateT CheckState IO Bool
expr_cmp (E_var "RBP0" _) (E_var "RBP0" _) = return True
expr_cmp (E_var "RSP0" _) (E_var "RSP0" _) = return True
expr_cmp (E_var str1 _) (E_var str2 _) = do
  label_cmp str1 str2
expr_cmp e1@(E_app (Op SUB) [E_var "RSP0" _, _]) e2@(E_app (Op SUB) [E_var "RSP0" _, _]) = 
  local_var_cmp e1 e2
expr_cmp e1@(E_app (Op SUB) [E_var "RBP0" _, _]) e2@(E_app (Op SUB) [E_var "RBP0" _, _]) = 
  local_var_cmp e1 e2

-- TODO: TEMP
expr_cmp e1@(E_app (Op SUB) [E_reg RBP, _]) e2@(E_app (Op SUB) [E_reg RBP, _]) = 
  local_var_cmp e1 e2
expr_cmp e1@(E_app (Op SUB) [E_reg RSP, _]) e2@(E_app (Op SUB) [E_reg RSP, _]) = 
  local_var_cmp e1 e2
expr_cmp e1@(E_app (Op ADD) [E_reg RSP, _]) e2@(E_app (Op ADD) [E_reg RSP, _]) = 
  local_var_cmp e1 e2 -- discuss about this one, reason why this is okay
expr_cmp e1@(E_app (Op ADD) [E_reg RBP, _]) e2@(E_app (Op ADD) [E_reg RBP, _]) = 
  local_var_cmp e1 e2 -- discuss about this one, reason why this is okay
-- END TEMP

expr_cmp (E_reg reg1) (E_reg reg2) = do
  return $ reg1 == reg2
expr_cmp (E_flg flg1) (E_flg flg2) =  do
  return $ flg1 == flg2
expr_cmp (E_val val1 _) (E_val val2 _) =  do
  return $ val1 == val2
expr_cmp (E_deref exp1 s1) (E_deref exp2 s2) =  do
  b <- expr_cmp exp1 exp2
  return $ s1 == s2 && b
expr_cmp (E_app (F2 f1 a1) exps1) (E_app (F2 f2 a2) exps2) = do
  let b0 = f1 == f2
  b1 <- expr_cmp (E_var a1 Unknown) (E_var a2 Unknown)
  bs <- zipWithM expr_cmp exps1 exps2
  return $ b0 && b1 && all id bs 

expr_cmp (E_app (Op ADD) [e0,e1]) (E_app (Op ADD) [e2,e3]) = do
  s <- get
  b0 <- expr_cmp e0 e2
  b1 <- expr_cmp e1 e3
  if b0 && b1 then
    return True
  else do
    put s
    b0 <- expr_cmp e0 e3
    b1 <- expr_cmp e1 e2
    return $ b0 && b1

expr_cmp (E_app f1 exps1) (E_app f2 exps2) = do -- expression 1 and 2 do it for all nonterminals and make it recursive
  bs <- zipWithM expr_cmp exps1 exps2
  return $ f1 == f2 && all id bs
expr_cmp (E_ite a1 a2 a3) (E_ite b1 b2 b3) = do
  c1 <- expr_cmp a1 b1
  c2 <- expr_cmp a2 b2
  c3 <- expr_cmp a3 b3
  return $ all id [c1, c2, c3]
expr_cmp a b = return False

multiple_labels :: (Expr,Expr) -> StateT CheckState IO Bool
multiple_labels (a, b) = expr_cmp a b

