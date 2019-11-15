module X86_Expr where


import Z3.Monad
import X86_Datastructures
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
import Numeric (showHex)

data Operation =
    FP_MUL
  | FP_DIV
  | FP_ADD
  | FP_SUB
  | FPS_MUL
  | FPS_DIV
  | FPS_ADD
  | FPS_SUB
  | FloatToInt
  | IntToFloat
  | IntToSFloat
  | FloatToSFloat
  | SFloatToFloat
  | SFloatToInt
  | Cf
  | AddressOf
  | Equal
  | NotEqual
  | Or
  | And
  | Not
  | LessThan
  | LessThanOrEqual
  | GreaterThan
  | GreaterThanOrEqual
  | SignedLessThan
  | SignedLessThanOrEqual
  | SignedGreaterThan
  | SignedGreaterThanOrEqual
  | FPEqual
  | FPNotEqual
  | FPLessThan
  | FPLessThanOrEqual
  | FPGreaterThan
  | FPGreaterThanOrEqual
  | FPSEqual
  | FPSNotEqual
  | FPSLessThan
  | FPSLessThanOrEqual
  | FPSGreaterThan
  | FPSGreaterThanOrEqual
  | IMod
  | Mod
  | IsNAN
  | ZExtend
  | TestBit
  | SetBit
  deriving (Ord, Eq)

instance Show Operation where
  show FP_MUL                   = "FP_MUL"
  show FP_DIV                   = "FP_DIV"
  show FP_ADD                   = "FP_ADD"
  show FP_SUB                   = "FP_SUB"
  show FPS_MUL                  = "FPS_MUL"
  show FPS_DIV                  = "FPS_DIV"
  show FPS_ADD                  = "FPS_ADD"
  show FPS_SUB                  = "FPS_SUB"
  show FloatToInt               = "FloatToInt"
  show SFloatToInt              = "SFloatToInt"
  show IntToFloat               = "IntToFloat"
  show IntToSFloat              = "IntToSFloat"
  show FloatToSFloat            = "FloatToSFloat"
  show SFloatToFloat            = "SFloatToFloat"
  show Cf                       = "Cf"
  show AddressOf                = "address_of"
  show Or                       = "||"
  show And                      = "&&"
  show Not                      = "!"
  show Equal                    = "=="
  show NotEqual                 = "!="
  show LessThan                 = "<"
  show LessThanOrEqual          = "≤"
  show GreaterThan              = ">"
  show GreaterThanOrEqual       = "≥"
  show SignedLessThan           = "<s"
  show SignedLessThanOrEqual    = "≤s"
  show SignedGreaterThan        = ">s"
  show SignedGreaterThanOrEqual = "≥s"
  show FPEqual                  = "FP(==)"
  show FPNotEqual               = "FP(!=)"
  show FPLessThan               = "FP(<)"
  show FPLessThanOrEqual        = "FP(≤)"
  show FPGreaterThan            = "FP(>)"
  show FPGreaterThanOrEqual     = "FP(≥)"
  show FPSEqual                 = "FPS(==)"
  show FPSNotEqual              = "FPS(!=)"
  show FPSLessThan              = "FPS(<)"
  show FPSLessThanOrEqual       = "FPS(≤)"
  show FPSGreaterThan           = "FPS(>)"
  show FPSGreaterThanOrEqual    = "FPS(≥)"
  show IMod                     = "imod"
  show Mod                      = "mod"
  show IsNAN                    = "isnan"
  show ZExtend                  = "zextend"
  show TestBit                  = "!!"
  show SetBit                   = "set_bit"

-- Symbolic expressions
-- An Expr consists of reading a register, an actual value (a word), applying a function to a list of arguments, or dereferencing an address.
-- A function is either an opcode, (in)equality or some other non-opcode operation, a function defined by some string, taking bits of some expression, concatanation, or sign-extension.
data ExprF =
    Op Opcode
  | F Operation
  | F2 String String
  | TakeBits Int Int
  | Concat
  | SExtend Int Int
  deriving (Show,Ord,Eq)

data Expr =
    E_reg Register
  | E_flg Flag
  | E_val Word64 Int
  | E_var String ExprSize
  | E_app ExprF [Expr] -- non-terminal
  | E_deref Expr Int   -- non-terminal
  | E_ite Expr Expr Expr -- non-terminal if then else
  deriving (Show,Ord,Eq)

-- Pretty printing
show_expr (E_reg r) = "Reg: " ++ show r
show_expr (E_flg f) = "Flag: " ++ show f
show_expr (E_val i _) = "Value: " ++ show i -- ++ "_" ++ show s
show_expr (E_var v s) = "Var: " ++ v -- ++ "(of size " ++ show s ++ ")"
show_expr (E_deref e s) = "Dereference: " ++ "[" ++ show_expr e ++ "," ++ show s ++ "]"
show_expr (E_app (TakeBits h l) [e]) = "TakeBits: " ++ "<" ++ show h ++ "," ++ show l ++ ">(" ++ show_expr e ++ ")"
show_expr (E_app Concat es) = "(" ++ intercalate " . " (map show_expr es) ++ ")"
show_expr (E_app (SExtend from to) [e]) = "sextend(" ++ show_expr e ++ "," ++ show from ++ "," ++ show to ++ ")"
show_expr (E_app (F f) es) =
  if isInfixOp f && length es == 2 then
    "(" ++ show_expr (head es) ++ " " ++ show f ++ " " ++ show_expr (last es) ++ ")"
  else
    show f ++ "(" ++ intercalate "," (map show_expr es) ++ ")"
show_expr (E_app (F2 f addr) es) =
  f ++ "@" ++ addr ++ "(" ++ intercalate "," (map show_expr es) ++ ")"
show_expr (E_app (Op ADD) [e0,e1]) = "(" ++ show_expr e0 ++ " + " ++ show_expr e1 ++ ")"
show_expr (E_app (Op SUB) [e0,e1]) = "(" ++ show_expr e0 ++ " - " ++ show_expr e1 ++ ")"
show_expr (E_app (Op MUL) [e0,e1]) = "(" ++ show_expr e0 ++ " * " ++ show_expr e1 ++ ")"
show_expr (E_app (Op op) es) = show op ++ "(" ++ intercalate "," (map show_expr es) ++ ")"
show_expr (E_ite e0 e1 e2) = "(if " ++ show_expr e0 ++ " then " ++ show_expr e1 ++ " else " ++ show_expr e2 ++ ")"
show_expr e = "ERROR"

isInfixOp :: Operation -> Bool
isInfixOp TestBit = True
isInfixOp Equal = True
isInfixOp NotEqual = True
isInfixOp LessThan = True
isInfixOp LessThanOrEqual = True
isInfixOp GreaterThan = True
isInfixOp GreaterThanOrEqual = True
isInfixOp SignedLessThan = True
isInfixOp SignedLessThanOrEqual = True
isInfixOp SignedGreaterThan = True
isInfixOp SignedGreaterThanOrEqual = True
isInfixOp FPEqual = True
isInfixOp FPNotEqual = True
isInfixOp FPLessThan = True
isInfixOp FPLessThanOrEqual = True
isInfixOp FPGreaterThan = True
isInfixOp FPGreaterThanOrEqual = True
isInfixOp FPSEqual = True
isInfixOp FPSNotEqual = True
isInfixOp FPSLessThan = True
isInfixOp FPSLessThanOrEqual = True
isInfixOp FPSGreaterThan = True
isInfixOp FPSGreaterThanOrEqual = True
isInfixOp IMod = True
isInfixOp Mod = True
isInfixOp _ = False


-- The size of the value represented by an expression, in bits.
-- It is either known, any size (TODO: remove this?), or unknown.
data ExprSize = Known Int | AnySize | Unknown
  deriving (Eq,Ord)

instance Show ExprSize where
  show (Known i) = show i
  show AnySize = "any size"
  show Unknown = "unknown"

-- Add sizes, if they are known
add_expr_size (Known s0) (Known s1) = Known (s0 + s1)
add_expr_size _ _ = Unknown

expr_size_max Unknown s = s
expr_size_max s Unknown = s
expr_size_max (Known s0) (Known s1) = Known (max s0 s1)
expr_size_max s0 s1 = error $ "Cannot determine max of: " ++ show s0 ++ " and " ++ show s1

-- Computed the size of an expression.
get_expr_size c = get_expr_size_with_info c M.empty

get_expr_size_with_info :: Config -> M.Map Expr ExprSize -> Expr -> ExprSize
get_expr_size_with_info c ti = size
 where
  size (E_app (F2 f _) es) = get_return_size c f
  size (E_app Concat [e0,e1]) = add_expr_size (size e0) (size e1)
  size (E_app (Op CMP) [e0,e1]) = Known 1
  size (E_app (Op TEST) [e0,e1]) = Known 1
  size (E_app (Op SUB) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (Op ADD) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (Op IMUL) [e0,e1]) = add_expr_size (size e0) (size e1)
  size (E_app (Op MUL) [e0,e1]) = add_expr_size (size e0) (size e1)
  size (E_app (Op DIV) [e0,e1]) = size e1
  size (E_app (Op IDIV) [e0,e1]) = size e1
  size (E_app (Op SAL) [e0,e1]) = size e0
  size (E_app (Op SAR) [e0,e1]) = size e0
  size (E_app (Op SHL) [e0,e1]) = size e0
  size (E_app (Op SHR) [e0,e1]) = size e0
  size (E_app (Op ROL) [e0,e1]) = size e0
  size (E_app (Op ROR) [e0,e1]) = size e0
  size (E_app (Op OR) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (Op AND) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (Op XOR) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (Op NEG) [e0]) = size e0
  size (E_app (Op NOT) [e0]) = size e0
  size (E_app (Op SQRTSD) [e0]) = Known 64
  size (E_app (Op BSR) [e0]) = size e0
  size (E_app (Op BSF) [e0]) = size e0
  size (E_app (Op BSWAP) [e0]) = size e0
  size (E_app (Op PUNPCKLDQ) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (F ZExtend) [e0, E_val s _]) = Known $ fromIntegral s
  size (E_app (F Mod) [e0,e1]) = size e1
  size (E_app (F IMod) [e0,e1]) = size e1
  size (E_app (F AddressOf) [e0]) = Known 64
  size (E_app (F TestBit) [e0,e1]) = Known 1
  size (E_app (F SetBit) [e0,e1,e2]) = size e0
  size (E_app (F FP_MUL) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (F FP_DIV) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (F FP_ADD) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (F FP_SUB) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (F FPS_MUL) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (F FPS_DIV) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (F FPS_ADD) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (F FPS_SUB) [e0,e1]) = expr_size_max (size e0) (size e1)
  size (E_app (F FloatToInt) [e0]) = A.assert (expr_has_size c e0 64) $ Known 32
  size (E_app (F SFloatToInt) [e0]) = A.assert (expr_has_size c e0 32) $ Known 64
  size (E_app (F IntToFloat) [e0]) = Known 64
  size (E_app (F IntToSFloat) [e0]) = Known 32
  size (E_app (F FloatToSFloat) [e0]) = Known 32
  size (E_app (F SFloatToFloat) [e0]) = Known 64
  size (E_app (F Cf) [e0]) = Known 1
  size (E_app (F Or) [e0,e1]) = Known 1
  size (E_app (F And) [e0,e1]) = Known 1
  size (E_app (F Not) [e0]) = Known 1
  size (E_app (F Equal) [e0,e1]) = Known 1
  size (E_app (F NotEqual) [e0,e1]) = Known 1
  size (E_app (F LessThan) [e0,e1]) = Known 1
  size (E_app (F LessThanOrEqual) [e0,e1]) = Known 1
  size (E_app (F GreaterThan) [e0,e1]) = Known 1
  size (E_app (F GreaterThanOrEqual) [e0,e1]) = Known 1
  size (E_app (F SignedLessThan) [e0,e1]) = Known 1
  size (E_app (F SignedLessThanOrEqual) [e0,e1]) = Known 1
  size (E_app (F SignedGreaterThan) [e0,e1]) = Known 1
  size (E_app (F SignedGreaterThanOrEqual) [e0,e1]) = Known 1
  size (E_app (F FPEqual) [e0,e1]) = Known 1
  size (E_app (F FPNotEqual) [e0,e1]) = Known 1
  size (E_app (F FPLessThan) [e0,e1]) = Known 1
  size (E_app (F FPLessThanOrEqual) [e0,e1]) = Known 1
  size (E_app (F FPGreaterThan) [e0,e1]) = Known 1
  size (E_app (F FPGreaterThanOrEqual) [e0,e1]) = Known 1
  size (E_app (F FPSEqual) [e0,e1]) = Known 1
  size (E_app (F FPSNotEqual) [e0,e1]) = Known 1
  size (E_app (F FPSLessThan) [e0,e1]) = Known 1
  size (E_app (F FPSLessThanOrEqual) [e0,e1]) = Known 1
  size (E_app (F FPSGreaterThan) [e0,e1]) = Known 1
  size (E_app (F FPSGreaterThanOrEqual) [e0,e1]) = Known 1
  size (E_app (F IsNAN) [e0]) = Known 1
  size (E_app (TakeBits h l) _) = Known $ h + 1 - l
  size (E_app (SExtend l h) _) = Known $ h
  size (E_deref e s) = Known $ s * 8
  size (E_val _ s) = Known $ s
  size (E_reg r) =  Known $ get_size r * 8
  size (E_flg f) =  AnySize
  size (E_var v (Known n)) = Known n
  size (E_var v s) = case M.lookup (E_var v s) ti of
                       Nothing -> Unknown
                       Just si' -> si'
  size (E_ite e0 e1 e2) = expr_size_max (size e1) (size e2)
  size e = error $ "Cannot determine size of " ++ show_expr e

get_return_size c f =
  case M.lookup f (signatures c)  of
    Nothing -> error $ "Function " ++ f ++ " has no signature in config file."
    Just (_,_,r) -> Known $ get_size r * 8

get_param_sizes c f =
  case M.lookup f (signatures c) of
    Nothing -> error $ "Function " ++ f ++ " has no signature in config file."
    Just (_,ps,_) -> map (\r -> Known $ get_size r * 8) ps

-- Return true iff the expression has the given size
expr_has_size c e i =
  case get_expr_size c e of
    AnySize -> True
    Known s -> s == i
    _ -> False








