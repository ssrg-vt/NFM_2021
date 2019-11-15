module ConfigParser where

import X86_Datastructures
import RamblrParser 
import Text.Parsec.Token
import Text.ParserCombinators.Parsec
import Text.ParserCombinators.Parsec.Number
import Data.Char
import Debug.Trace
import qualified Data.Map as M
import Data.List



-- Included from Data.String.Utils, but I don't won't to inlcude that pckaage since it installs many other ones.
strip :: String -> String
strip = lstrip . rstrip

lstrip :: String -> String
lstrip s = case s of
                  [] -> []
                  (x:xs) -> if elem x wschars
                            then lstrip xs
                            else s

rstrip :: String -> String
rstrip = reverse . lstrip . reverse

wschars :: String
wschars = " \t\r\n"


ts_name = try (do
  cs <- many1 (noneOf " \n")
  newline
  return cs
 )

f_input = try (do
  whitespaces
  r <- register
  whitespaces
  string "=>"
  return r
 )

f_rename = try (do
  char '['
  s <- many1 (noneOf " \n]:=")
  char ']'
  return $ strip s
 )

signature = try (do
  name <- many1 (noneOf " :[]\n")
  whitespaces
  rename <- optionMaybe f_rename
  whitespaces
  string "::"
  whitespaces
  inputs <- many f_input
  whitespaces
  output <- register
  whitespaces
  newline
  return (strip name,(rename,inputs,output))
 )

f_type = try (do
  whitespaces
  ft <- many1 (noneOf "\n=")
  whitespaces
  string "=>"
  return $ strip ft
 )



function_type = try (do
  name <- many1 (noneOf " :\n")
  whitespaces
  string "::"
  whitespaces
  inputs <- many f_type
  whitespaces
  output <- many1 (noneOf "\n")
  whitespaces
  newline
  return (name,(inputs,strip output))
 )

data_section' = try (do
  a <- nat
  whitespaces
  string "->"
  whitespaces
  s <- many1 (noneOf "\n")
  newline
  return (a,strip s)
 )

config extract_calls = do
  string "Text sections:"
  newline
  ts_names <- many ts_name
  many newline
  string "PLT sections:"
  newline
  plt_names <- many ts_name
  many newline
  string "Function signatures:"
  newline
  signs <- many signature
  many newline
  string "Function types:"
  newline
  ftypes <- many function_type
  newline
  string "Data:"
  newline
  data_sections <- many data_section'
  many newline
  string "Preamble:"
  preamble <- manyTill anyChar eof
  eof
  return  $ Config ts_names (M.fromList signs) (M.fromList ftypes) M.empty (M.fromList data_sections) preamble extract_calls plt_names

parse_config :: String -> Bool -> IO (Either ParseError Config)
parse_config f plt_jumps_to_calls_flg = parseFromFile (config $ plt_jumps_to_calls_flg) f
