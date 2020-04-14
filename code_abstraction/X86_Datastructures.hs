module X86_Datastructures where

import Data.List
import Data.Word (Word64)
import Numeric (showHex)
import qualified Data.Map as M


-- Configuration
data Config = Config {
    text_sections :: [String],
    signatures :: M.Map String (Maybe String, [Register],Register),
    ftypes :: M.Map String ([String], String),
    f_addresses :: M.Map String Int,
    data_section :: M.Map Word64 String,
    c_preamble :: String,
    plt_jumps_to_calls :: Bool,
    plt_names :: [String]
  }
  deriving (Show,Eq,Ord)

empty_config = Config [] M.empty M.empty M.empty M.empty "" False []


-- pretty printing
show_config (Config {text_sections = ts, signatures = ss}) =
     "Text sections:\n"
  ++ intercalate "\n" ts
  ++ "\n"
  ++ "Function signatures:\n"
  ++ intercalate "\n" (map show_signature $ M.assocs ss)
 where
  show_signature (name,(rename,ins,out)) =
       name
    ++ show_rename rename
    ++ " :: "
    ++ (intercalate " => " $ map show ins)
    ++ (if length ins == 0 then "" else " => ")
    ++ show out
  show_rename Nothing = ""
  show_rename (Just s) = " [" ++ s ++ "]"

-- An instruction
data Instr = Instr {
  i_addr :: String,                 -- address (label)
  i_prefix :: Maybe Prefix,         -- prefix, e.g., lock or repz
  i_opcode :: Opcode,               -- opcode (see data Opcode)
  i_op1 :: Maybe Operand,           -- optional: operand
  i_op2 :: Maybe Operand,           -- optional: operand
  i_op3 :: Maybe Operand            -- optional: operand
 }
 deriving (Eq,Ord)

instance Show Instr
 where
  show = show_instruction

-- Instruction prefixes
data Prefix = InvalidPrefix | REP | REPZ | LOCK | DATA16
  deriving (Show,Eq,Ord,Read)


-- Registers
data Register = InvalidRegister
  | RIP | EIP
  | RAX | EAX | AX | AH | AL
  | RBX | EBX | BX | BH | BL
  | RCX | ECX | CX | CH | CL
  | RDX | EDX | DX | DH | DL
  | RDI | EDI | DI | DIL
  | RSI | ESI | SI | SIL
  | RSP | ESP | SP | SPL
  | RBP | EBP | BP | BPL
  | R15 | R15D | R15W | R15B
  | R14 | R14D | R14W | R14B
  | R13 | R13D | R13W | R13B
  | R12 | R12D | R12W | R12B
  | R11 | R11D | R11W | R11B
  | R10 | R10D | R10W | R10B
  | R9 | R9D | R9W | R9B
  | R8 | R8D | R8W | R8B
  | CS | DS | ES | FS | GS
  | XMM0 | XMM1 | XMM2 | XMM3 | XMM4 | XMM5 | XMM6 | XMM7 | XMM8 | XMM9 | XMM10 | XMM11 | XMM12 | XMM13 | XMM14 | XMM15
  | XMM0_L | XMM1_L | XMM2_L | XMM3_L | XMM4_L | XMM5_L | XMM6_L | XMM7_L | XMM8_L | XMM9_L | XMM10_L | XMM11_L | XMM12_L | XMM13_L | XMM14_L | XMM15_L
  | ST_0 | ST_1 | ST_2 | ST_3 | ST_4 | ST_5 | ST_6 | ST_7
  | FPUControlWord
  deriving (Show,Eq,Read,Ord)

-- Flags
data Flag = ZF | CF | SF | OF | PF | DF | InvalidFlag
  deriving (Show,Eq,Ord)

-- An unresolved address.
data Address =
    FromReg Register
  | AddrImm Int
  | AddrLabel String
  | AddrMinus Address Address
  | AddrPlus Address Address
  | AddrTimes Address Address
  | SizeDir Int Address        -- size directive, e.g., qword ptr
  deriving (Show,Eq,Ord)

-- Operands are unresolved addresses, registers, or immediates
data Operand =
    Address Address
  | Reg Register
  | Immediate Word64
  deriving (Show,Eq,Ord)

-- Opcodes / mnemonics
data Opcode = InvalidOpcode
  | AAA
  | AAD
  | AAM
  | AAS
  | ADC
  | ADD
  | ADDPD
  | ADDPS
  | ADDSD
  | ADDSS
  | ADDSUBPD
  | ADDUBPS
  | AND
  | ANDNPD
  | ANDNPS
  | ANDPD
  | ANDPS
  | ARPL
  | BOUND
  | BSF
  | BSR
  | BT
  | BTC
  | BTR
  | BTS
  | CALL
  | CALLF
  | CBW
  | CDQ
  | CDQE
  | CLC
  | CLD
  | CLFLUSH
  | CLI
  | CLTS
  | CMC
  | CMOVA
  | CMOVAE
  | CMOVB
  | CMOVBE
  | CMOVE
  | CMOVG
  | CMOVGE
  | CMOVL
  | CMOVLE
  | CMOVNB
  | CMOVNE
  | CMOVNO
  | CMOVNP
  | CMOVNS
  | CMOVO
  | CMOVP
  | CMOVS
  | CMP
  | CMPLTSD
  | CMPS
  | CMPXCHG
  | CMPXCHG16B
  | CMPXCHG8B
  | COMISD
  | COMISS
  | CPUID
  | CVTSD2SS
  | CVTSI2SD
  | CVTSI2SS
  | CVTSS2SD
  | CVTTSD2SI
  | CVTTSS2SI
  | CWD
  | CWDE
  | CQO
  | DAA
  | DAS
  | DEC
  | DIV
  | DIVPD
  | DIVPS
  | DIVSD
  | DIVSS
  | EMMS
  | ENTER
  | FABS
  | FADD
  | FADDP
  | FBLD
  | FBSTP
  | FCHS
  | FCLEX
  | FCMOVB
  | FCMOVBE
  | FCMOVE
  | FCMOVNB
  | FCMOVNBE
  | FCMOVNE
  | FCMOVNU
  | FCMOVU
  | FCOM
  | FCOMI
  | FCOMIP
  | FCOMP
  | FCOMPP
  | FDIV
  | FDIVP
  | FDIVR
  | FDIVRP
  | FFREE
  | FIADD
  | FICOM
  | FICOMP
  | FIDIV
  | FIDIVR
  | FILD
  | FIMUL
  | FINIT
  | FIST
  | FISTP
  | FISTPP
  | FISTTP
  | FISUB
  | FISUBR
  | FLD
  | FLD1
  | FLDCW
  | FLDENV
  | FLDL2E
  | FLDL2T
  | FLDLG2
  | FLDLN2
  | FLDPI
  | FLDZ
  | FMUL
  | FMULP
  | FNOP
  | FNSTCW
  | FRSTOR
  | FSAVE
  | FST
  | FSTCW
  | FSTENV
  | FSTP
  | FSTSW
  | FSUB
  | FSUBP
  | FSUBR
  | FSUBRP
  | FTST
  | FUCOM
  | FUCOMI
  | FUCOMIP
  | FUCOMP
  | FUCOMPP
  | FXAM
  | FXCH
  | FXRSTOR
  | FXSAVE
  | HADDPD
  | HADDPS
  | HLT
  | HSUBPD
  | HSUBPS
  | IDIV
  | IMUL
  | BSWAP
  | IN
  | INC
  | INS
  | INT
  | INT3
  | INTO
  | INVD
  | INVLPG
  | IRET
  | JA
  | JAE
  | JB
  | JBE
  | JC
  | JCXZ
  | JE
  | JECXZ
  | JG
  | JGE
  | JL
  | JLE
  | JMP
  | JMPF
  | JMPN
  | JNAE
  | JNA
  | JNB
  | JNBE
  | JNC
  | JNG
  | JNE
  | JNGE
  | JNLE
  | JNL
  | JNO
  | JNP
  | JNS
  | JNZ
  | JO
  | JP
  | JPE
  | JPO
  | JS
  | JZ
  | LAHF
  | LAR
  | LDDQU
  | LDMXCSR
  | LDS
  | LEA
  | LEAVE
  | LES
  | LFENCE
  | LFS
  | LGDT
  | LGS
  | LIDT
  | LLDT
  | LMSW
  | LODS
  | LOOP
  | LOOPE
  | LOOPNE
  | LSL
  | LSS
  | LTR
  | MASKMOVQ
  | MAXPD
  | MAXPS
  | MAXSD
  | MAXSS
  | MFENCE
  | MINPD
  | MINPS
  | MINSD
  | MINSS
  | MONITOR
  | MOV
  | MOVABS
  | MOVAPD
  | MOVAPS
  | MOVD
  | MOVDDUP
  | MOVDQA
  | MOVDQU
  | MOVHPD
  | MOVHPS
  | MOVLHPS
  | MOVLPD
  | MOVLPS
  | MOVLSDUP
  | MOVMSKPD
  | MOVMSKPS
  | MOVNTDQ
  | MOVNTPD
  | MOVNTPS
  | MOVNTQ
  | MOVQ
  | MOVS
  | MOVSD
  | MOVSLDUP
  | MOVSQ
  | MOVSS
  | MOVSX
  | MOVSXB
  | MOVSXD
  | MOVSXW
  | MOVUPD
  | MOVUPS
  | MOVZX
  | MOVZXB
  | MOVZXW
  | MUL
  | MULPD
  | MULPS
  | MULSD
  | MULSS
  | MWAIT
  | NEG
  | NOP
  | NOT
  | OR
  | ORPD
  | ORPS
  | OUT
  | OUTS
  | PACKUSWB
  | PADDB
  | PADDD
  | PADDQ
  | PADDSB
  | PADDSW
  | PADDUSB
  | PADDUSW
  | PADDW
  | PAND
  | PANDN
  | PAUSE
  | PAVGB
  | PAVGW
  | PCMPEQB
  | PCMPGTD
  | PCMPEQD
  | PMADDWD
  | PMAXSW
  | PMAXUB
  | PMINSW
  | PMINUB
  | PMOVMSKB
  | PMULHUW
  | PMULHW
  | PMULLW
  | PMULUDQ
  | POP
  | POPA
  | POPAD
  | POPF
  | POPFD
  | POPFQ
  | POR
  | PREFETCHNTA
  | PREFETCHT0
  | PREFETCHT1
  | PREFETCHT2
  | PSADBW
  | PSHUFD
  | PSLLD
  | PSLLDQ
  | PSLLQ
  | PSLLW
  | PSRAD
  | PSRAW
  | PSRLD
  | PSRLDQ
  | PSRLQ
  | PSRLW
  | PSUBB
  | PSUBD
  | PSUBQ
  | PSUBSB
  | PSUBSQ
  | PSUBUSB
  | PSUBUSW
  | PSUBW
  | PUNPCKLDQ
  | PUNPCKLWD
  | PUNPCKLBW
  | PUSH
  | PUSHA
  | PUSHAD
  | PUSHF
  | PUSHFD
  | PUSHFQ
  | PXOR
  | RCL
  | RCPPS
  | RCPSS
  | RCR
  | RDMSR
  | RDPMC
  | RDTSC
  | RET
  | RETF
  | ROL
  | ROR
  | RSM
  | RSQRTPS
  | RSQRTSS
  | SAHF
  | SAL
  | SAR
  | SBB
  | SCAS
  | SETA
  | SETAE
  | SETB
  | SETBE
  | SETE
  | SETG
  | SETGE
  | SETL
  | SETLE
  | SETNB
  | SETNE
  | SETNO
  | SETNP
  | SETNS
  | SETO
  | SETP
  | SETS
  | SFENCE
  | SGDT
  | SHL
  | SHLD
  | SHR
  | SHRD
  | SIDT
  | SLDT
  | SMSW
  | SQRTPD
  | SQRTPS
  | SQRTSD
  | SQRTSS
  | STC
  | STD
  | STI
  | STMXCSR
  | STOS
  | STOSQ
  | STR
  | SUB
  | SUBPD
  | SUBPS
  | SUBSD
  | SUBSS
  | SWAPGS
  | SYSCALL
  | SYSENTER
  | SYSEXIT
  | TEST
  | UCOMISD
  | UCOMISS
  | UD2
  | UNPCKHPD
  | UNPCKHPS
  | UNPCKLPD
  | UNPCKLPS
  | VERR
  | VERW
  | VMCALL
  | VMCLEAR
  | VMLAUNCH
  | VMPTRLD
  | VMPTRST
  | VMREAD
  | VMRESUME
  | VMWRITE
  | VMXOFF
  | VMXON
  | WAIT
  | WBINVD
  | WRMSR
  | XADD
  | XCHG
  | XLAT
  | XOR
  | XORPD
  | XORPS
  deriving (Show, Eq, Read, Ord)



-- Pretty printing
show_address' (FromReg r) = show r
show_address' (AddrImm i) = show i
show_address' (AddrMinus a0 a1) = show_address' a0 ++ " - " ++ show_address' a1
show_address' (AddrPlus a0 a1) = show_address' a0 ++ " + " ++ show_address' a1
show_address' (AddrTimes a0 a1) = show_address' a0 ++ " * " ++ show_address' a1
show_address' (SizeDir _ a) = show_address' a
show_address a = "[" ++ show_address' a ++ "]"

show_operand Nothing = ""
show_operand (Just op) = show op

show_operand2 Nothing = ""
show_operand2 (Just op) = ", " ++ show op

show_prefix Nothing = ""
show_prefix (Just p) = show p ++ " "

show_instruction (Instr addr pre opcode op1 op2 op3) =
     addr ++ ": "
  ++ show_prefix pre
  ++ show opcode
  ++ " "
  ++ show_operand op1
  ++ show_operand2 op2
  ++ show_operand2 op3

show_text_section :: ([Char], [Instr]) -> String
show_text_section (name,is) = "// text section " ++ name ++ "\n" ++ intercalate "\n" (map show_instruction is)






-- Registers
reg128 = [XMM0,XMM1,XMM2,XMM3,XMM4,XMM5,XMM6,XMM7,XMM8,XMM9,XMM10,XMM11,XMM12,XMM13,XMM14,XMM15]
reg80 = [ST_0,ST_1,ST_2,ST_3,ST_4,ST_5,ST_6,ST_7]
reg64 = [RAX, RBX, RCX, RDX, RSI, RDI, RSP, RBP, R8, R9, R10, R11, R12, R13, R14, R15, RIP,CS,DS,ES,FS,GS,
          XMM0_L,XMM1_L,XMM2_L,XMM3_L,XMM4_L,XMM5_L,XMM6_L,XMM7_L,XMM8_L,XMM9_L,XMM10_L,XMM11_L,XMM12_L,XMM13_L,XMM14_L,XMM15_L]
reg32 = [EAX, EBX, ECX, EDX, ESI, EDI, ESP, EBP, R8D, R9D, R10D, R11D, R12D, R13D, R14D, R15D]
reg8 = [AL,BL,CL,DL,SIL,DIL,SPL,BPL,R8B,R9B,R10B,R11B,R12B,R13B,R14B,R15B]
reg8h = [AH,BH,CH,DH]
reg16 = [AX,BX,CX,DX,SI,DI,SP,BP,R8W,R9W,R10W,R11W,R12W,R13W,R14W,R15W]

get_size r =
  if r `elem` reg128 then 16
  else if r `elem` reg80 then 10
  else if r `elem` reg64 then 8
  else if r `elem` reg32 then 4
  else if r `elem` reg16 then 2
  else if r `elem` reg8 then 1
  else if r `elem` reg8h then 1
  else if r == FPUControlWord then 2
  else error $ "Size of " ++ show r ++ " unknown"


-- Matches register names to the real registers
-- E.g.: EAX is actually a part of RAX
real_reg EAX = RAX
real_reg EBX = RBX
real_reg ECX = RCX
real_reg EDX = RDX
real_reg ESI = RSI
real_reg EDI = RDI
real_reg ESP = RSP
real_reg EBP = RBP
real_reg R8D = R8
real_reg R9D = R9
real_reg R10D = R10
real_reg R11D = R11
real_reg R12D = R12
real_reg R13D = R13
real_reg R14D = R14
real_reg R15D = R15

real_reg AX = RAX
real_reg BX = RBX
real_reg CX = RCX
real_reg DX = RDX
real_reg SI = RSI
real_reg DI = RDI
real_reg SP = RSP
real_reg BP = RBP
real_reg R8W = R8
real_reg R9W = R9
real_reg R10W = R10
real_reg R11W = R11
real_reg R12W = R12
real_reg R13W = R13
real_reg R14W = R14
real_reg R15W = R15

real_reg AL = RAX
real_reg BL = RBX
real_reg CL = RCX
real_reg DL = RDX
real_reg SIL = RSI
real_reg DIL = RDI
real_reg SPL = RSP
real_reg BPL = RBP
real_reg R8B = R8
real_reg R9B = R9
real_reg R10B = R10
real_reg R11B = R11
real_reg R12B = R12
real_reg R13B = R13
real_reg R14B = R14
real_reg R15B = R15

real_reg XMM0_L = XMM0
real_reg XMM1_L = XMM1
real_reg XMM2_L = XMM2
real_reg XMM3_L = XMM3
real_reg XMM4_L = XMM4
real_reg XMM5_L = XMM5
real_reg XMM6_L = XMM6
real_reg XMM7_L = XMM7
real_reg XMM8_L = XMM8
real_reg XMM9_L = XMM9
real_reg XMM10_L = XMM10
real_reg XMM11_L = XMM11
real_reg XMM12_L = XMM12
real_reg XMM13_L = XMM13
real_reg XMM14_L = XMM14
real_reg XMM15_L = XMM15

real_reg AH = RAX
real_reg BH = RBX
real_reg CH = RCX
real_reg DH = RDX

real_reg FPUControlWord = FPUControlWord

real_reg r = if r `elem` (reg64 ++ reg80 ++ reg128) then r else error $ "Cannot match register " ++ show r ++ " to real register"

{-
  Gets the appropriately-sized subset of the specified register; does not
  support high eight bits.
-}
reg_of_size r 128 = reg_of_size' r reg128
reg_of_size r 80 = reg_of_size' r reg80
reg_of_size r 64 = reg_of_size' r reg64
reg_of_size r 32 = reg_of_size' r reg32
reg_of_size r 16 = reg_of_size' r reg16
reg_of_size r 8 = reg_of_size' r reg8

reg_of_size' r regs = case find (\r2 -> r == real_reg r2) regs of
  Just r2 -> r2
  Nothing -> error $ show r ++ " does not have a corresponding register in " ++ show regs
