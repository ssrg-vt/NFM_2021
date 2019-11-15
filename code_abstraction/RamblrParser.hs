-- Parser that can be used to read the output of Ramblr assembly file

module RamblrParser where

import X86_Datastructures
import Text.Parsec.Token
import Text.ParserCombinators.Parsec
import Text.ParserCombinators.Parsec.Number
import Text.Parsec.Expr
import Data.Char
import Debug.Trace
import Data.Maybe
import Data.List
import Data.Word (Word64)
import Data.Bits (shiftL)
import Control.Exception (assert)
import Control.Monad.Trans (liftIO)


isWhiteSpace '\t' = True
isWhiteSpace '\f' = True
isWhiteSpace '\v' = True
isWhiteSpace ' ' = True
isWhiteSpace _ = False

whitespace = satisfy isWhiteSpace <?> "white space"
whitespaces = skipMany whitespace <?> "white spaces"

hexToWord64 :: [Char] -> Word64
hexToWord64 = hexToWord64' 0 . reverse
 where
  hexToWord64' _ [] = 0
  hexToWord64' n (c:cs) = shiftL (fromIntegral (digitToInt c)) n + hexToWord64' (n+4) cs

-- Opcodes / mnemonics
parseMnemonic :: [Char] -> Opcode
parseMnemonic s =
  case readsPrec 5 $ map toUpper s of
    [(m,s')] -> m
    _ -> InvalidOpcode

mnemonic = try (do
  m <- many1 alphaNum
  let m' = parseMnemonic m
  case m' of
    InvalidOpcode -> fail ("Invalid mnemonic: " ++ m)
    _ -> return $ m'
  )


-- Registers
parseRegister :: [Char] -> Register
parseRegister s =
  if "st(" `isPrefixOf` s && last s == ')' then
   case read $ init $ drop 3 s of
     0 -> ST_0
     1 -> ST_1
     2 -> ST_2
     3 -> ST_3
     4 -> ST_4
     5 -> ST_5
     6 -> ST_6
     7 -> ST_7
  else
    case readsPrec 5 $ map toUpper s of
      [(m,s')] -> m
      _ -> InvalidRegister

isRegisterChar c = isAlphaNum c || c `elem` "_lh()"

register =
  try (do
    m <- many1 (satisfy isRegisterChar)
    let m' = parseRegister m
    case m' of
      InvalidRegister -> fail ("Invalid register: " ++ m)
      _ -> return $ m'
  )


--Prefixes
parsePrefix :: [Char] -> Prefix
parsePrefix s =
  case readsPrec 5 $ map toUpper s of
    [(m,s')] -> m
    _ -> InvalidPrefix

prefix =
  try (do
    m <- many1 alphaNum
    let m' = parsePrefix m
    case m' of
      InvalidPrefix -> fail ("Invalid prefix: " ++ m)
      _ -> return $ m'
  )


-- Addresses
-- An unresolved address is parsed by op_address.
-- It first must be either a size directive ("qword ptr ..."), dereference ("[...]"), or a register offset "cs:[...]"
-- Then, it can be an expression with address_term as terms at the leaves.
-- Address terms are immediates or registers. Address operands are '+', '-' or '*'.
address_term = try
 (do
   r <- register
   return $ FromReg r
 )
 <|> (do
   i <- int
   return $ AddrImm i
 )
 <|> (do
   l <- label_name
   return $ AddrLabel l
 )

size_directive =
      (try (string "xmmword ptr") >> return 128)
  <|> (try (string "xword ptr") >> return 80)
  <|> (try (string "qword ptr") >> return 64)
  <|> (try (string "dword ptr") >> return 32)
  <|> (try (string "word ptr") >> return 16)
  <|> (try (string "byte ptr") >> return 8)
  <|> (try (string "XMMWORD PTR") >> return 128)
  <|> (try (string "XWORD PTR") >> return 80)
  <|> (try (string "QWORD PTR") >> return 64)
  <|> (try (string "DWORD PTR") >> return 32)
  <|> (try (string "WORD PTR") >> return 16)
  <|> (try (string "BYTE PTR") >> return 8)

-- is this part necessary? I don't see any places which contains ( and )
addr_expr0 = try
  (try (do
    a0 <- addr_expr1
    whitespaces
    symbol <- char '+' <|> char '-'
    whitespaces
    a1 <- addr_expr0
    case symbol of
      '+' -> return $ AddrPlus a0 a1
      '-' -> return $ AddrMinus a0 a1
  ))
  <|>
  (try (do
    whitespaces
    char '('
    whitespaces
    a <- addr_expr0
    whitespaces
    char ')'
    return a
  ))
  <|>
  addr_expr1
  <|>
  address_term

addr_expr1 = try
  (try (do
    a0 <- address_term
    whitespaces
    symbol <- char '*'
    whitespaces
    a1 <- addr_expr1
    return $ AddrTimes a0 a1
  ))
  <|>
  (try (do
    whitespaces
    char '('
    whitespaces
    a <- addr_expr0
    whitespaces
    char ')'
    return a
  ))
  <|>
  address_term

address_expr_inner = try
{--  (do
    s <- size_directive
    whitespace
    a <- address_expr_inner
    return $ SizeDir s a
  )
  <|>--}
  (do
    char '['
    whitespaces
    a <- address_expr_inner
    whitespaces
    char ']'
    return a
  )
  <|> try addr_expr0

op_address = try (
  (try (do
    whitespaces
    s <- size_directive -- QWORD WORD PTR ETC
    whitespace
    Address a <- op_address
    return $ Address $ SizeDir s a
  ))
  <|> (try (do -- subsequent block qword ptr [word ptr], just parse the address and return the remaining with ignoring size dir
    whitespaces
    char '['
    s <- size_directive -- QWORD WORD PTR ETC
    whitespaces
    Address a <- op_address
    char ']'
    return $ Address a -- trace message traceShow (s,a) $
  ))
  <|> (try (do
    whitespaces
    string "[+"
    whitespaces
    a <- address_expr_inner
    whitespaces
    char ']'
    return $ Address a -- traceShow (a) $
  ))
  <|> (try (do
    whitespaces
    char '['
    whitespaces
    a <- address_expr_inner
    whitespaces
    char ']'
    return $ Address a --  traceShow (a) $
  ))
  <|> (try (do
    whitespaces
    r <- register
    whitespaces
    char ':'
    whitespaces
    a <- address_expr_inner
    whitespaces
    return $ Address $ AddrPlus (FromReg r) a
  )))


-- Operands
op_reg = try (do
  r <- register
  return $ Reg r
  )

op_immediate = try (do
  m <- optionMaybe (string "-") -- minus / fails produces nothing / char '-' parser which takes in the minus / tries this pser and produce Nothing
  i <- many1 hexDigit
  return $ Immediate ( if m == Nothing then hexToWord64 i else -(hexToWord64 i))
  )

op_immediate_0x = try (do
  string "0x"
  i <- many1 hexDigit
  return $ Immediate (hexToWord64 i)
  )

op_immediate_minus_0x = try (do
  string "-0x"
  i <- many1 hexDigit
  return $ Immediate (hexToWord64 i)
  )


label_name = try (do
  l1 <- satisfy is_label_char0
  l <- many1 (satisfy is_label_char)
  return $ l1:l
 )
 where
  is_label_char0 c = isAlpha c || c `elem` ['_','.']
  is_label_char c = isAlphaNum c || c `elem` ['_','.']

op_label = try (do
  l <- label_name
  return $ Address $ AddrLabel l
 )
 <|>
 try (do 
  char '('
  l <- label_name
  char '+'
  Immediate i <- op_immediate
  char ')'
  return $ Address $ (AddrPlus (AddrLabel l) (AddrImm $ fromIntegral i))
 )

op_offset_flat = try (do
  string "OFFSET"
  whitespaces
  string "FLAT"
  whitespaces
  char ':'
  whitespaces
  op_label
 )

operand = try
      op_immediate_0x
  <|> op_immediate_minus_0x
  <|> op_offset_flat
  <|> op_address
  <|> op_reg
  <|> op_label
  <|> op_immediate -- must be last to try

second_operand = do
  char ','
  whitespaces
  op2 <- operand
  return $ op2




-- Instructions
instruction is_first_instr ts_name = try (do
  pos <- getPosition
  l <- optionMaybe assembly_section_label
  whitespaces
  skipMany newline
  whitespaces
  p <- optionMaybe prefix
  whitespaces
  skipMany (do
    prefix
    whitespaces
    )
  whitespaces
  m <- mnemonic
  whitespaces
  op1 <- optionMaybe operand
  whitespaces
  op2 <- optionMaybe second_operand
  whitespaces
  op3 <- optionMaybe second_operand
  whitespaces
  skipMany newline

  let a = case (is_first_instr,l) of
            (True,_) -> ts_name
            (_,Nothing) -> ts_name ++ "_" ++ show (sourceLine pos)
            (_,Just l) -> l
  return $ Instr a p m op1 op2 op3 
  )

-- Lines that are ignored:
-- empty lines
-- comments (starting with #)
ignored_line = try
      newline
  <|> (try (do
    whitespaces
    string "#"
    skipMany (noneOf "\n")
    newline
  ))

-- Labels
assembly_section_label = do
  l <- label_name 
  whitespaces
  char ':'
  whitespaces
  newline
  return l


line_text_section = try (do
  whitespaces
  string ".section"
  whitespaces
  string ".text"
  newline
 )

line_dot_align = try (do
  whitespaces
  string ".align"
  skipMany (noneOf "\n")
  newline
 )

line_dot_globl = try (do
  whitespaces
  string ".globl"
  skipMany (noneOf "\n")
  newline
 )


line_dot_type = try (do
  whitespaces
  string ".type"
  skipMany (noneOf "\n")
  newline
 )

-- A text section consists of ignored lines, a label, and many instructions
text_section = try (do
  skipMany ignored_line
  line_text_section
  line_dot_align
  skipMany ignored_line
  line_dot_globl
  line_dot_type
  l <- assembly_section_label
  i0 <- instruction True l
  is <- many (instruction False l)
  return $ (l,i0:is)
  )

-- An objdump consists of many text sections
ramblrOutput = do
  tss <- many text_section
  eof
  return tss

-- The parse function.
-- Takes as input a filename f and produces a mapping from strings (labels of text sections)
-- to lists of instructions.
parseI :: String -> IO (Either ParseError [([Char], [Instr])])
parseI f = parseFromFile ramblrOutput f

