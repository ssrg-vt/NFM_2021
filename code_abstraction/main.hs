{-# LANGUAGE PartialTypeSignatures #-}

import X86_Datastructures
import X86_Symb
import RamblrParser 
import X86_CFG
import ConfigParser
import BB_Comp
import ProgramTransformations

import System.Console.ArgParser
import Data.List
import qualified Data.Map as M
import qualified Data.Set as Set
import Control.Monad.State.Lazy
import System.Exit (die)
import Control.Lens.Combinators (iforM)


data CheckResult a = Result a | IndirectCalls | Alloca
 deriving Eq

-- get the edges of a CFG
bm_edges (CFG _ _ edges edge_info _ _ _ Nothing) =
  foldl mk_edges M.empty edges
 where
  mk_edges m (_,v,cs) = M.insert v (map (mk_edge v) cs) m
  mk_edge v c = (c,get_flag v c)
  get_flag v c =
    case find (\(e,l) -> e == (v,c)) edge_info of
      Nothing -> ""
      Just (e,l) -> l
      
-- get all nodes from a CFG                                         
cfg_nodes :: CFG -> [Node]
cfg_nodes (CFG _ _ _ _ node_to_block _ _ Nothing) = M.keys node_to_block

-- apply symbolic execution to a node of the CFG                                                                              
se_node :: Config -> CFG -> Node -> SState
se_node c (CFG _ _ _ _ node_to_block addr_to_instr _ Nothing) i =
  let block = node_to_block M.! i
      bd = map (\a -> (a,addr_to_instr a)) block
      ss = execState (se_instrs $ map addr_to_instr block) (initial_state c bd) in
    ss
    
-- apply symbolic execution to every node in a CFG                                                                          
se_cfg :: Config -> CFG -> Maybe (M.Map Node SState)
se_cfg c cfg = 
  let se = map (\node -> (node,se_node c cfg node)) $ cfg_nodes cfg in
  if any (\(node,ss) -> error_msg ss /= Nothing) se then
    Nothing
  else
    Just $ M.fromList se

-- print out a .dot file of the CFG                                                                                         
print_dot cfg name typ = do
  putStrLn "--------"
  putStrLn $ ".dot code for CFG of text section " ++ name ++ " for " ++ typ
  putStrLn $ cfg_to_dot cfg typ
  putStrLn "--------"

-- build a BinaryModel from a CFG 
build_binary_model :: Config -> CFG -> String -> IO (CheckResult BinaryModel)
build_binary_model c cfg typ = do
  let se = se_cfg c cfg
  case se of
    -- failure during symbolic execution is caused by indirect calls
    Nothing -> return IndirectCalls
    Just se -> do
      let edges = bm_edges cfg
      let se'   = normalize_local_vars c edges se (cfg_entry cfg)
      case se' of
        -- failure during local variable normalization is caused by alloca
        Nothing -> do
          print_dot cfg (cfg_name cfg) typ
          return Alloca
        Just se' -> do
          let bm    = BinaryModel (cfg_name cfg) (cfg_entry cfg) edges se' typ
          print_dot cfg (cfg_name cfg) typ
          return $ Result bm

data Args = Args String String String
  deriving (Show)

argsParser = Args
  `parsedBy` optPos [] "objdump_file_name1" `Descr` "Name of objdump file."
  `andBy`    optPos [] "objdump_file_name2" `Descr` "Name of objdump file."
  `andBy`    optPos [] "config_file_name"   `Descr` "Name of config file."




run (Args file_name1 file_name2 config_file_name) =
  if file_name1 == "" then
    putStrLn "No command-line arguments given. Use -h file for help message."
  else do
    -- parse the config file                                                                                                            
    config <- parse_config config_file_name False
    -- parse the Ramblr file #1                                                                           
    ret1 <- parseI file_name1
    -- parse the Ramblr file #2                                                                                                       
    ret2 <- parseI file_name2
    -- check for errors
    case (config,ret1,ret2) of
      (Left err,_,_) -> print err
      (_,Left err,_) -> print err
      (_,_,Left err) -> print err
      (Right config, Right tss1', Right tss2') -> do
        -- replace jumps into PLT sections with function calls
        let tss1 = map (replace_jumps_into_plt config) tss1'
        let tss2 = map (replace_jumps_into_plt config) tss2'
        -- the relevant vanilla text sections: the intersection of the config file and the vanilla binary
        let relevant_tss1 = filter (\(ts_name,_) -> ts_name `elem` text_sections config) tss1
        -- the relevant randomized text sections: the intersection of the relevant vanilla text sections and the randomized binary
        let relevant_tss2 = filter (\(ts_name,_) -> ts_name `elem` map fst relevant_tss1) tss2

        -- build all the cfgs. Some may fail, due to indirect branching.
        let all_instrs1           = concatMap snd tss1
        let all_instrs2           = concatMap snd tss2
        let build_cfgs1           = execState (build_cfgs config all_instrs1 relevant_tss1) []
        let build_cfgs2           = execState (build_cfgs config all_instrs2 relevant_tss2) []
        let (cfgs1,cfg_failures1) = partition isSuccesCfg build_cfgs1
        let (cfgs2,cfg_failures2) = partition isSuccesCfg build_cfgs2
        let total                 = length cfgs1

        -- for all vanilla cfgs, build a binary model and run the check
        ret <- iforM cfgs1 $ \i cfg1 -> do
          let ts_name1 = cfg_name cfg1
          case find_cfg ts_name1 cfgs2 of
            Just cfg2 -> do
              putStrLn $ "Considering text section (" ++ show i ++ "/" ++ show total ++ "): " ++ show ts_name1
              --putStrLn $ show_ts ts1 ++ "\n\n"
              --putStrLn $ show_ts ts2 ++ "\n\n"
              -- build two binary models
              bm1 <- build_binary_model config cfg1 "Vanilla"
              bm2 <- build_binary_model config cfg2 "Randomized"
              case (bm1,bm2) of
                (Result bm1,Result bm2) -> do
                  putStrLn $ show bm1
                  putStrLn $ show bm2
                  -- applying check will crash program if discrepancy is found
                  evalStateT (check config bm1 bm2) (CheckState [] [] [] [])
                  return $ Result True
                (IndirectCalls,IndirectCalls) -> return IndirectCalls
                (Alloca,Alloca) -> return Alloca
                _ -> error $ "Text section: " ++  ts_name1 ++ " is differrent."
            Nothing -> error $ "Text section: " ++  ts_name1 ++ " has no indirect jumps vanilla, but does have indirect jumps randomized."

        let successes = length $ filter ((==) (Result True)) ret
        let alloca    = length $ filter ((==) Alloca) ret
        let ind_calls = length $ filter ((==) IndirectCalls)ret

        putStrLn $ "Relevant vanilla text sections: " ++ show (length relevant_tss1)
        putStrLn $ "Success: " ++ show successes ++ " text sections"
        putStrLn $ "Failure during CFG generation (indirect branching): " ++ show (length cfg_failures1) ++ " text sections"
        putStrLn $ "Failure during symbolic excution (indirect calls): " ++ show ind_calls ++ " text sections"
        putStrLn $ "Failure caused by alloca: " ++ show alloca ++ " text sections"
 where
    find_text_section ts_name = find (\(ts_name', instrs) -> ts_name' == ts_name)
    find_cfg ts_name          = find (\cfg -> cfg_name cfg == ts_name)
    isSuccesCfg cfg           = cfg_error_msg cfg == Nothing
    get_ts_name config        =
      case text_sections config of
        [ts_name] -> ts_name
        _ -> error "Error"


show_tss = intercalate "\n\n" . map show_ts

show_ts :: ([Char], [Instr]) -> String
show_ts (ts_name,instrs) = ts_name ++ ":\n" ++ intercalate "\n" (map show_instruction instrs)

main :: IO ()
main = withParseResult argsParser run
  
