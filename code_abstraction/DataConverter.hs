
{-# LANGUAGE PartialTypeSignatures #-}


module Main where


import System.Environment
import Data.List.Split
import Data.Binary.IEEE754
import Data.Char (digitToInt,chr)
import Data.Word
import Data.Bits
import Numeric (showHex)

-- Command line arguments parser
data Args =  Args String
  deriving (Show) 

message =
  "Read data in little-endian form and interpret it as various types.\n\n\
\Example usage:\n\
\  ./dataconverter 4743433a 20285562 756e7475 20352e34\n\
\  ./dataconverter 182d4454 fb210940\n\
\  ./dataconverter 00000000 0000e03f\n"


bytes_to_ints :: [[Char]] -> [Int]
bytes_to_ints [] = []
bytes_to_ints ([a,b]:bs) = (digitToInt a * 16 + digitToInt b) : bytes_to_ints bs

ints_to_word :: [Int] -> Word64
ints_to_word [] = 0
ints_to_word (i:is) = (shift (fromIntegral i) (length is * 8)) + ints_to_word is

ints_to_string :: [Int] -> String
ints_to_string = map chr

word64_to_sint :: Word64 -> Int
word64_to_sint w =
  let neg = testBit w 63
      val = fromInteger $ toInteger $ clearBit w 63 in
    if neg then - val else val

run d =
  let bytes  = chunksOf 2 d
      bytes' = reverse bytes
      ints   = bytes_to_ints bytes'
      w      = ints_to_word ints 
      f      = wordToDouble w
      s      = ints_to_string (reverse ints) in
    putStrLn $
         "Data (little endian): 0x" ++ d ++ "\n"
      ++ "Data as unsigned hex: 0x" ++ showHex w "" ++ "\n"
      ++ "Data as word64:       " ++ show w ++ "\n"
      ++ "Data as signed int:   " ++ show (word64_to_sint w) ++ "\n"
      ++ "Data as double:       " ++ show f ++ "\n"
      ++ "Data as string:       " ++ s


-- Parse the command line arguments and run
main = do
  x <- getArgs;
  case x of
    [] -> putStrLn message
    ds -> run (concat ds)
