module X86_CFG where

import RamblrParser 
import X86_Datastructures
import Data.List
import Data.Maybe
import Data.Tuple
import qualified Data.Map as M
import Debug.Trace
import Control.Monad (mapM_)
import Control.Monad.Extra (concatMapM,allM)
import Control.Monad.State.Lazy
import Data.Either (lefts,isLeft)
import Data.Either.Utils (fromLeft)
import Control.Exception (assert)

-- stores a CFG. Each node is represented by an Int.
-- edges are of the form (n,_,[n0,n1,...]) which models edges n-->n0, n-->n1, ...
-- edge info consists of the form (n,n0,f) where f is the flag on edge n-->n0 (possible empty)
--
-- if cfg_error_msg /= Nothing, then none of these elemetns are trustworthy, and the error message should be shown
data CFG = CFG {
  cfg_name          :: String,                -- name of the text section
  cfg_entry         :: Int,                   -- entry node
  cfg_edges         :: [(Int,Int,[Int])],     -- edges. Ignore the second part of the triple.
  cfg_edge_info     :: [((Int,Int),String)],  -- given an edge, return a string (possibly empty)
  cfg_node_to_block :: M.Map Int [String],    -- given a node, return a list of addresses of the basic block
  cfg_addr_to_instr :: String -> Instr,       -- given an address, return an instruction
  cfg_is_exit       :: Bool,                  -- returns true iff the function always exits
  cfg_error_msg     :: Maybe String           -- either Nothing, or an error message
 }
  

-- fetches an instruction based on its address
-- for sake of efficiency, it also returns the instruction after the fetched one, if it exists
fetch_in_ts :: [Instr] -> String -> Maybe (Instr, Maybe Instr)
fetch_in_ts [] _ = Nothing
fetch_in_ts (i:i':ts) a = if i_addr i == a then Just (i, Just i') else fetch_in_ts (i':ts) a
fetch_in_ts [i] a = if i_addr i == a then Just (i, Nothing) else Nothing

-- returns true iff m is the mnemonic of a conditional jump
is_cond_jump_mnemonic m = m `elem` [JO, JNO, JS, JNS, JE, JZ, JNE, JNZ, JB, JNAE, JC, JNB, JAE, JNC, JBE, JNA, JA, JNBE, JL, JNGE, JGE, JNL, JLE, JNG, JG, JNLE, JP, JPE, JNP, JPO, JCXZ, JECXZ]

-- returns true iff the instructions is a conditional jump
is_cond_jump :: Instr -> Bool
is_cond_jump (Instr _ _ m _ _ _) = is_cond_jump_mnemonic m

-- resolves an address to which is jumped
-- Either it is an immediate, or it is obtained by RIP-relative addressing.
-- RIP-relative addressing is relative to the next instruction.
-- Since we assume the the assembly has been symbolized, we only consider jumps to labels
resolve_jump_address ts a0 (Just (Immediate a)) = error $ "Jump to immediate instead of label"
resolve_jump_address ts a0 (Just (Address (SizeDir 64 (AddrPlus (FromReg RIP) (AddrImm imm))))) = error $ "Jump to immediate instead of label"
resolve_jump_address ts a0 (Just (Address (SizeDir 64 (AddrLabel l)))) = Left l
resolve_jump_address ts a0 (Just (Address (AddrLabel l))) = Left l
resolve_jump_address ts a0 _ = Right "Indirect jump"


-- Returns, iff the given instruction modifies RIP and the instruction is not a conditional jump, the address to which the RIP is set.
modifies_rip :: [Instr] -> Instr -> Maybe (Either String String)
modifies_rip ts (Instr a0 _ JMP a _ _) = Just $ resolve_jump_address ts a0 a
modifies_rip ts (Instr a0 _ JMPF a _ _) = Just $ resolve_jump_address ts a0 a
modifies_rip ts (Instr a0 _ JMPN a _ _) = Just $ resolve_jump_address ts a0 a
modifies_rip ts _ = Nothing


------------------------------------------------------------------------
-- The following functions run in the "State [CFG]" monad.
-- This keeps track of the CFGs already built.
-- We assume the CFGs are built in order (by function build_cfgs), 
-- so that a text section that calls internal function "foo" is built 
-- after "foo".
--
-- Also, generally, we return something of type "Either t String".
-- This is either "Left t", i.e., the result as expected,
-- or "Right err" where "err" is an error message.
--
-- The current possible error messages are:
--    "Pick later": this means that this text section must be delayed;
--                  we must first do other text sections
--    "Indirect jump": this means the text section cannot be done.
--
------------------------------------------------------------------------



-- return true if the instruction exits
-- if it calls an internal function that always exits, the instruction is considered an exit
isExit :: Config -> String -> Instr -> State [CFG] (Either Bool String)
isExit c ts_name (Instr _ _ HLT _ _ _) = return $ Left True
isExit c ts_name (Instr _ _ UD2 _ _ _) = return $ Left True
isExit c ts_name (Instr _ _ CALL (Just (Address (AddrLabel f))) _ _) = do
  cfgs <- get
  case find (\cfg -> cfg_name cfg == f) cfgs of
    Just cfg -> return $ Left $ cfg_is_exit cfg
    Nothing  -> if f /= ts_name && f `elem` (text_sections c) then
                  return $ trace ("Calling " ++ show f ++ " but CFG not yet computed.") $ Right "Pick later"
                else return $ Left $
                 f `elem` [
                  "__stack_chk_fail",
                  "__overflow",
                  "exit",
                  "_exit",
                  "abort",
                  "__assert_fail",
                  "error",
                  "err",
                  "errx",
                  "die2",
                  "UD2"
                ]
isExit _ _ _ = return $ Left False

-- returns true of the instructions is the RET instruction
isRet (Instr _ _ RET _ _ _) = True
isRet _ = False


-- Returns the possible next addresses after execution of the instruction at address a.
-- In case of unconditional jumps, the address is given by the operand.
-- In case of conditional jumps, there are two children.
-- In case of returns or exits, no children.
-- In case of normal instructions, it is the address of the next instruction.
get_children :: Config -> (String, [Instr]) -> String -> State [CFG] (Either [String] String)
get_children c ts a =
  case fetch_in_ts (snd ts) a of
    Nothing -> error $ "Instruction at address " ++ a ++ " not found. This might be resolvable by adding the text section containing the address to the config file."
    Just (i,i') -> case modifies_rip (snd ts) i of
      -- unconditional jumps
      Just (Left a') -> return $ Left [a']
      Just (Right err) -> return $ Right err
      _ ->
        if is_cond_jump i then
          -- conditional jumps
          case resolve_jump_address (snd ts) (i_addr i) (i_op1 i) of
            Left a' -> return $ Left [a', i_addr $ fromJust i']
            Right err -> return $ Right err
        else do
          b <- isExit c (fst ts) i
          case b of
            Right err -> return $ Right err
            Left b -> if isRet i || b then
                        -- exits
                        return $ Left []
                      else case i' of
                        -- normal
                          Nothing -> return $ Left []
                          Just i' -> return $ Left [i_addr i']

-- Symbolically runs the instructions in text section ts starting at address a, producing a basic block.
-- All normal instructions are added to the block, until a conditional jump is encountered.
-- Non-conditional jumps or other RIP modifying instructions are executed.
-- The first element is the basic block. The second element is the children of the block that still need to be explored.
make_basic_block_starting_from :: Config -> (String,[Instr]) -> String -> [[String]] -> State [CFG] (Either ([String],[String]) String)
make_basic_block_starting_from c ts a p =
  case find (\block -> a `elem` block) p of
    Just _ -> return $ Left ([],[])
    Nothing -> do
      children <- get_children c ts a
      case children of
        Right err -> return $ Right err
        Left [a0,a1] -> return $ Left ([a],[a0,a1]) -- conditional jump
        Left [] -> return $ Left ([a],[]) -- last instruction
        Left [a0] -> case fetch_in_ts (snd ts) a of
           Nothing -> error $ "Instruction at address " ++ a ++ " not found. This might be resolvable by adding the text section containing the address to the config file."
           Just (i,_) -> case modifies_rip (snd ts) i of
             Just (Left a') -> do
               bb <- make_basic_block_starting_from c ts a' p
               case bb of
                 Left bb -> return $ Left $ add_to_fst a bb
                 Right err -> return $ Right err
             Nothing -> do
               bb <- make_basic_block_starting_from c ts a0 p
               case bb of
                 Left bb -> return $ Left $ add_to_fst a bb
                 Right err -> return $ Right err
 where
  add_to_fst a (xs,ys) = (a:xs,ys)


-- Consider a set of basic blocks:
-- [[a0 ... a10], ...]
-- Consider adding a new block [b0 ... bn] where a5 is a child of bn.
-- The new set of basic blocks becomes:
-- [[b0...bn],[a0...a4], [a5...a10], ...]
-- Normalization ensures that the children of the last instruction of each basic block point to the head of some other basic block.
normalize_partitioning :: Config -> (String,[Instr]) -> [[String]] -> State [CFG] (Either [[String]] String)
normalize_partitioning c ts p = do
  children <- concatMapM get_children' p
  p' <- normalize_partitioning' ts p children
  case p' of
    Left p' -> if p == p' then return $ Left p' else normalize_partitioning c ts p'
    Right err -> return $ Right err
 where
  normalize_partitioning' :: (String,[Instr]) -> [[String]] -> [String] -> State [CFG] (Either [[String]] String)
  normalize_partitioning' ts [] _ = return $ Left []
  normalize_partitioning' ts (p:ps) children = do
    let split = split_for_each p children
    if length split == 1 then do
      nxt <- normalize_partitioning' ts ps children
      case nxt of
        Left nxt -> return $ Left $ split ++ nxt
        Right err -> return $ Right err
    else do
      children' <- concatMapM get_children' split
      normalize_partitioning' ts (split ++ ps) (children ++ children')
  split_for_each [] _ = []
  split_for_each (x:xs) ys = add_to_head x (split_for_each' xs ys)
  split_for_each' [] ys = []
  split_for_each' (x:xs) ys = if x `elem` ys then [] : add_to_head x (split_for_each' xs ys) else add_to_head x (split_for_each' xs ys)
  add_to_head x [] = [[x]]
  add_to_head x (ys:yss) = (x:ys):yss

  get_children' :: [String] -> State [CFG] [String]
  get_children' bb = do
    cs <- get_children c ts (last bb) 
    case cs of
      Left cs -> return cs

-- returns true if the instruction is a call
-- jumps into PLT sections are considered calls
-- some string related instructions are also considered calls
is_call c (Instr _ _ CALL _ _ _) = True
is_call c (Instr _ (Just REP) MOVSQ _ _ _) = True
is_call c (Instr _ (Just REP) STOSQ _ _ _) = True
is_call c _ = False

-- Split a block by function calls
-- E.g.,: [a0 .. a10] becomes [[a0..a4], [a5], [a6..a10]] if a5 is a CALL
split_calls :: Config -> [Instr] -> [String] -> [[String]]
split_calls c ts [] = [[]]
split_calls c ts [a] = [[a]]
split_calls c ts (a:as) =
  let i = addr_to_instr a in
    if is_call c i then
      [a] : split_calls c ts as
    else
      let (p:ps) = split_calls c ts as
          i' = addr_to_instr (head p) in
        if is_call c i' then
          [a] : p : ps
        else
          (a:p) : ps
 where
   addr_to_instr a =
    case fetch_in_ts ts a of
       Nothing -> error "Could not translate address to instruction."
       Just (i,_) -> i


-- Partition the instructions into basic blocks.
partition_into_basic_blocks :: Config -> (String,[Instr]) -> String -> [[String]] -> State [CFG] (Either [[String]] String)
partition_into_basic_blocks c ts a p =
  case find (\block -> a `elem` block) p of
    Just _ -> return $ Left p
    Nothing -> do
      bb <- make_basic_block_starting_from c ts a p 
      case bb of
        Right err -> return $ Right err
        Left (block, []) ->
          normalize_partitioning c ts (split_calls c (snd ts) block ++ p)
        Left (block, [a0,a1]) -> do
          p' <- normalize_partitioning c ts (split_calls c (snd ts) block ++ p)
          case p' of
            Right err -> return $ Right err
            Left p' -> do
              p''  <- partition_into_basic_blocks c ts a0 p'
              case p'' of
                Left p'' -> partition_into_basic_blocks c ts a1 p''
                Right err -> return $ Right err


sameElts [] _ = True
sameElts (a:as) bs = a `elem` bs && sameElts as bs

get_dups [] = []
get_dups (a:as) = if a `elem` as then a:(get_dups as) else get_dups as


-- partition the given text section, i.e., a name n and a list of instructions ts into basic blocks
-- returns a triple: the basic blocks, the first basic block, and a bool that should always be true (a sanity check)
partition_function_into_basic_blocks :: Config -> String -> (String,[Instr]) -> State [CFG] (Either ([[String]], Int, Bool) String)
partition_function_into_basic_blocks c start ts = do
  p' <- partition_into_basic_blocks c ts start []
  case p' of
    Right err -> return $ Right err
    Left p' -> do
      p  <- normalize_partitioning c ts p'
      case p of
        Right err -> return $ Right err
        Left p -> let sanity_check = sameElts (concat p) (map i_addr (snd ts)) && get_dups (concat p) == [] in
                    case findIndex (\b -> head b == start) p of
                      Nothing -> error "Cannot find starting block."
                      Just b -> return $ Left (p,b,sanity_check)
 where
  stores_cond_jump a = is_cond_jump (fst (fromJust (fetch_in_ts (snd ts) a)))


-- translate conditional jumps to flags (first if the jump occurs, otherwise if not)
-- for now, we just translate it to strings
-- we can build a datatype for flags and logical expressions over flags
instr_to_flag (Instr _ _ JO _ _ _) = ("OF","!OF")
instr_to_flag (Instr _ _ JNO _ _ _) = ("!OF","OF")
instr_to_flag (Instr _ _ JS _ _ _) = ("SF","!SF")
instr_to_flag (Instr _ _ JNS _ _ _) = ("!SF","SF")
instr_to_flag (Instr _ _ JE _ _ _) = ("ZF","!ZF")
instr_to_flag (Instr _ _ JZ _ _ _) = ("ZF","!ZF")
instr_to_flag (Instr _ _ JNE _ _ _) = ("!ZF","ZF")
instr_to_flag (Instr _ _ JNZ _ _ _) = ("!ZF","ZF")
instr_to_flag (Instr _ _ JB _ _ _) = ("CF","!CF")
instr_to_flag (Instr _ _ JNAE _ _ _) = ("CF","!CF")
instr_to_flag (Instr _ _ JC _ _ _) = ("CF","!CF")
instr_to_flag (Instr _ _ JNB _ _ _) = ("!CF","CF")
instr_to_flag (Instr _ _ JAE _ _ _) = ("!CF","CF")
instr_to_flag (Instr _ _ JNC _ _ _) = ("!CF","CF")
instr_to_flag (Instr _ _ JBE _ _ _) = ("CF || ZF","!CF && !ZF")
instr_to_flag (Instr _ _ JNA _ _ _) = ("CF || ZF","!CF && !ZF")
instr_to_flag (Instr _ _ JA _ _ _) = ("!CF && !ZF","CF || ZF")
instr_to_flag (Instr _ _ JNBE _ _ _) = ("!CF && !ZF","CF || ZF")
instr_to_flag (Instr _ _ JL _ _ _) = ("SF != OF","SF == OF")
instr_to_flag (Instr _ _ JNGE _ _ _) = ("SF != OF","SF == OF")
instr_to_flag (Instr _ _ JGE _ _ _) = ("SF == OF","SF != OF")
instr_to_flag (Instr _ _ JNL _ _ _) = ("SF == OF","SF != OF")
instr_to_flag (Instr _ _ JLE _ _ _) = ("ZF || SF != OF", "!ZF && SF == OF")
instr_to_flag (Instr _ _ JNG _ _ _) = ("ZF || SF != OF", "!ZF && SF == OF")
instr_to_flag (Instr _ _ JG _ _ _) = ("!ZF && SF == OF", "ZF || SF != OF")
instr_to_flag (Instr _ _ JNLE _ _ _) = ("!ZF && SF == OF", "ZF || SF != OF")
instr_to_flag (Instr _ _ JP _ _ _) = ("PF","!PF")
instr_to_flag (Instr _ _ JPE _ _ _) = ("PF","!PF")
instr_to_flag (Instr _ _ JNP _ _ _) = ("!PF","PF")
instr_to_flag (Instr _ _ JPO _ _ _) = ("!PF","PF")
instr_to_flag (Instr _ _ JCXZ _ _ _) = ("!CX","CX")
instr_to_flag (Instr _ _ JECXZ _ _ _) = ("!ECX","ECX")
instr_to_flag (Instr _ _ m _ _ _) = error $ "cannot translate " ++ show m ++ " to flag"


concat_tss :: [([Char], [Instr])] -> [Instr]
concat_tss = concatMap snd

start_address :: ([Char], [Instr]) -> ([Char], String)
start_address (n,((Instr a _ _ _ _ _):ts)) = (n,a)

-- given a node number, find all the adjacent nodes.
neighbors :: Int -> [(Int,Int,[Int])] -> [Int]
neighbors node_num edges =
  case find (\(n',_,_) -> n' == node_num) edges of
    Nothing -> error $ "Managed to find a non-existing node"
    Just (_,_,ns) -> ns

-- returns list of visited nodes and list of final nodes of a graph
final_node :: [(Int,Int,[Int])] -> (M.Map Int [String]) -> (String -> Instr) -> Int -> State [Int] [Int] -- State [Int] => Monad
final_node edges node_to_block addr_to_instr curr_node = do
  -- visited :: State [Int]
  visited <- get
  -- check whether curr_node (type Int) exists in the list of visited state {State [Int]}
  if curr_node `elem` visited then do 
    return [] -- return empty list if you have already visited that node || do nothing
  else do
    put $ curr_node : visited -- first put the node into the list of visited Node {State [Int]}
    -- x :: [Int]
    let x = neighbors curr_node edges -- Int -> [(Int,Int,[Int])]
    if (null x) then do
       -- (null x) == True then empty; Done! return the current node with its current State of visited
       return $ [curr_node]
    else do
       -- (null x) == False then neighbor exists; need to traverse through all nodes existed in x
       -- mapM :: (a -> m b) -> t a -> m (t b)
       --         (a -> m b) is "Int -> State [Int] [Int]" | t a is "[Int]" | m (t b) is "State [Int]" m "[Int]" t b
       -- result :: [[Int]] = this is because each node in neighbors will have its own respective final node
       result <- mapM (final_node edges node_to_block addr_to_instr) x

       -- concat :: [[a]] -> [a]
       -- concat >> each node will have its own final node: [[final nodes for node 1],[final nodes for node 2],..], connect them all together
       return $ concat result

cfg_exit :: Config -> String -> Int -> [(Int,Int,[Int])] -> (M.Map Int [String]) -> (String -> Instr) -> State [CFG] Bool
cfg_exit c ts_name entry edges node_to_block addr_to_instr = do
  -- evalState :: State s a -> s -> a || evalState m s = fst (runState m s) || fst :: (a,b) -> a || runState :: State s a -> s -> (a,s) 
  -- final_set >> State s is "final_node ... " because final_node func what returns (State [Int]) [Int] | a in this case is []
  -- final_set :: [Int]; after running through State evaluation, it returns a, which is a form of [Int]
  let final_set = evalState (final_node edges node_to_block addr_to_instr entry) []
  
      -- map :: (a -> b) -> [a] -> [b]
      -- final_BB_Address >> (Int -> [String]) -> [Int] -> [[String]] -- takes 1st Int from final_set, returns addr [String]
      --                  >> running map returns [b], in this case b = [String]
      -- final_BB_Address :: [[String]]
  let final_BB_Addresses = map nodeToAddrBB final_set
      
      -- last :: [a] -> a
      -- final_AddrofBB :: [String] 
  let final_AddrofBB = map last final_BB_Addresses
      
      -- addrToInst :: String -> Instr
      -- checkInst >> (String -> Instr) -> [String] -> [Instr]
      -- checkInst :: [Instr]
  let checkInst = map addr_to_instr final_AddrofBB in -- this "in" is for keeping the non-nomadic style
    
    -- all :: (a -> Bool) -> [a] -> Bool
    -- all >> this function basically iterate through list of instructions in checkInst, and see if they are all True
    -- isExit (Instr -> Bool) -> [Instr] -> [Bool] -> Bool
    allM isExit' checkInst
  where
    isExit' :: Instr -> State [CFG] Bool
    isExit' i = fromLeft <$> isExit c ts_name i
    nodeToAddrBB :: Int -> [String]
    nodeToAddrBB a = case M.lookup a node_to_block of -- node_to_block = [a,v]
       Nothing -> error $ "Lookup failed"
       Just v -> v



-- given a text section, build a CFG.
build_cfg :: Config -> (String,[Instr]) -> (String, String) -> State [CFG] (Maybe CFG)
build_cfg c ts (n,start) = do
  bbs <- partition_function_into_basic_blocks c start ts
  case bbs of
    Right "Pick later" -> return Nothing
    Right err -> return $ Just $ CFG n 0 [] [] M.empty addr_to_instr False (Just err)
    Left (blocks,b0,sanity_check) -> do
      let blocks_with_IDs  = zip blocks [0..]
      edges               <- mapM (mk_edge blocks_with_IDs) blocks_with_IDs
      edge_info           <- concatMapM (mk_edge_info blocks_with_IDs) blocks_with_IDs
      let node_to_block    = M.fromList (map swap blocks_with_IDs)
      let node_neighbors   = neighbors b0 (lefts edges)
      is_exit_cfg         <- cfg_exit c (fst ts) b0 (lefts edges) node_to_block addr_to_instr
      case (sanity_check,all isLeft edges, all isLeft edge_info) of
        (True,True,True) -> return $ Just $ CFG n b0 (lefts edges) (lefts edge_info) node_to_block addr_to_instr is_exit_cfg Nothing
        _ -> return $ Just $ CFG n b0 [] [] M.empty addr_to_instr False $ Just $ "Sanity check failed when building basic blocks of " ++ n
 where
  get_vertex (v,_,_) = v
  mk_edge blocks_with_IDs (block, id) = do
    l <- get_children c ts (last block)
    case l of
      Left l -> return $ Left (id, id, map (get_block blocks_with_IDs (last block)) l)
      Right err -> return $ Right err
  mk_edge_info :: [([[Char]], Int)] -> ([String], Int) -> State [CFG] [Either ((Int,Int),String) String]
  mk_edge_info blocks_with_IDs (block, id) =
    if stores_cond_jump $ last block then do
      l <- get_children c ts (last block)
      case l of
        Right err -> return [Right err]
        Left l -> case map (get_block blocks_with_IDs (last block)) l of
                    [c1,c2] -> do
                      let (flg,nflg) = instr_to_flag (fst (fromJust (fetch_in_ts (snd ts) (last block))))
                      return $ map Left $ [((id,c1),flg), ((id,c2),nflg)]
    else
      return []
  stores_cond_jump a = is_cond_jump (fst (fromJust (fetch_in_ts (snd ts) a)))
  get_block blocks_with_IDs parent a =
    case find (\b -> head (fst b) `elem` [a]) blocks_with_IDs of
      Just (b,id) -> id
      Nothing -> error ("No block starting at: " ++ a ++ "(child of: " ++ parent ++ ")" )
  addr_to_instr a =
    case fetch_in_ts (snd ts) a of
       Nothing -> error "Could not translate block to instructions."
       Just (i,_) -> i




-- return a list of all functions called by the text section
get_function_calls :: (String,[Instr]) -> [String]
get_function_calls (_,is) = concatMap get_function_call is
 where
  get_function_call (Instr _ _ CALL (Just (Address (AddrLabel f))) _ _) = [f]
  get_function_call _ = []

-- given a list of parsed text sections, produce a list of CFGs
-- First, picks a text section that has no calls to any other text sections.
-- Note that this is actually hard to assess, it may be possible that the current text section jumps into another one,
-- and calls an internal functions not analyzed yet from that text section.
-- We thus pick one and hope for the best. The build_cfg function may return Nothing
-- indicating that during CFG analysis it found an internal function.
--
-- Builds the CFG and adds it to the current list of CFGs.
-- Then proceeds with the remaining text sections, until no text sections remain
build_cfgs :: Config -> [Instr] -> [(String, [Instr])] -> State [CFG] ()
build_cfgs c is []  = return ()
build_cfgs c is tss =  do
  let (ts,tss') = (head tss,tail tss) -- pick_ts tss []
  cfg <- build_cfg c (fst ts,is) (start_address ts)
  case cfg of
    Just cfg -> do
      modify $ trace ("Build cfg of: " ++ show (fst ts) ++ " (" ++ show (length tss') ++ " text sections remaining)") $ ((:) cfg)
      build_cfgs c is tss'
    Nothing ->
      build_cfgs c is $ trace ("Delayed building cfg of: " ++ fst ts) $ (tss' ++ [ts])
 where -- This function does not work (e.g. ccr/nice)   
  pick_ts [] _          = error $ "Found a circularity in function calls."
  pick_ts (ts:tss) tss' =
    let ts_calls   = get_function_calls ts
        tss_names  = map fst tss
        tss'_names = map fst tss' in
      if ts_calls `intersect` (tss_names ++ tss'_names) == [] then
        (ts, tss++tss')
      else
        pick_ts tss (ts:tss')


-- given a CFG, output a .dot file
cfg_to_dot :: CFG -> String -> String
cfg_to_dot (CFG name _ edges edge_info node_to_block _ _ Nothing) typ =
  "diGraph " ++ name ++ "_" ++ typ ++ "{\n"
  ++ intercalate "\n" (map edge_to_dot edges)
  ++ "\n\n"
  ++ intercalate "\n" (map edge_to_dot' edges)
  ++ "\n}"
 where
  edge_to_dot (n,v,cs)   = "\t" ++ mk_node v ++ "  [label=\"[" ++ (head (node_to_block M.! n)) ++ "," ++ (last (node_to_block M.! n)) ++ "]" ++ "\"]"
  edge_to_dot' (_,v,cs)  = intercalate "\n" $ map (edge_to_dot'' v) cs
  edge_to_dot'' n0 n1    = "\t" ++ mk_node n0 ++ " -> " ++ mk_node n1 ++ edge_info_to_dot n0 n1 ++ ";"
  edge_info_to_dot n0 n1 =
    case find (\(e,l) -> e == (n0,n1)) edge_info of
      Nothing -> ""
      Just (e,l) -> " [label=\"" ++ l ++ "\"]"
  mk_node v = name ++ "_" ++ show v




-- In the config file it is stored which labels are actually PLT sections, i.e., linked at runtime.
-- A CALL to such a label is simply treated as a black-box function.
-- A JMP to such a label should be treated similarly, i.e., they should not be resolved as normal jumps.
-- This code transformation achieves that.
replace_jumps_into_plt c (ts_name, is) = (ts_name, concatMap repl is)
 where
  repl (i@(Instr a prefix JMP (Just (Address (AddrLabel f))) Nothing Nothing)) =
    if f `elem` plt_names c then
      [Instr a prefix CALL (Just (Address (AddrLabel f))) Nothing Nothing,
       Instr (a++"_ret") prefix RET Nothing Nothing Nothing]
    else
      [i]
  repl i = [i]
