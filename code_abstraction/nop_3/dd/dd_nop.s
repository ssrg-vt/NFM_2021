	.section	.text
	.align	16
	#Procedure 0x401cf0

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edi
	test	ebp, ebp
	nop	
	jne	.label_9
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rcx, rdx
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.17
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.22
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
	mov	rbp, rbp
	xor	eax, eax
	call	__printf_chk
	mov	rsp, rsp
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	nop	
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.50
	lea	rsi, [rsi]
	mov	edx, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	mov	rsp, rsp
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.25
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.53
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.25
	mov	ecx, OFFSET FLAT:.str.54
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_9:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rdi, rbx
	call	__fprintf_chk
	nop	
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402230

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	nop	
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x2e8
	mov	r12, rsi
	nop	
	mov	r14d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	mov	rbp, rax
	mov	edi, OFFSET FLAT:caught_signals
	mov	rbp, rbp
	call	sigemptyset
	mov	rbp, rbp
	test	rbp, rbp
	nop	
	jne	.label_158
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	lea	rdi, [rdi]
	call	sigaddset
.label_158:
	lea	rdx, [rsp + 0x40]
	mov	edi, 2
	nop	
	xor	esi, esi
	mov	rbp, rbp
	call	sigaction
	nop	
	cmp	qword ptr [rsp + 0x40], 1
	je	.label_164
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:caught_signals
	mov	rsp, rsp
	mov	esi, 2
	call	sigaddset
.label_164:
	movups	xmm0,  xmmword ptr [word ptr [rip + label_168]]
	movups	xmmword ptr [rsp + 0xb8], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_169]]
	movups	xmmword ptr [rsp + 0xa8], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_170]]
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x98], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_171]]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x88], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_172]]
	movups	xmmword ptr [rsp + 0x78], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_173]]
	movups	xmmword ptr [rsp + 0x68], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_174]]
	nop	
	movups	xmmword ptr [rsp + 0x58], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x48], xmm0
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 0xa
	call	sigismember
	mov	rbp, rbp
	test	eax, eax
	je	.label_235
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rsp + 64]], OFFSET FLAT:siginfo_handler
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc8], 0
	lea	rsi, [rsp + 0x40]
	lea	rdi, [rdi]
	mov	edi, 0xa
	mov	rsp, rsp
	xor	edx, edx
	call	sigaction
.label_235:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	mov	rbp, rbp
	mov	esi, 2
	call	sigismember
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_247
	mov	qword ptr [word ptr [rsp + 64]], OFFSET FLAT:interrupt_handler
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc8], 0xc0000000
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x40]
	mov	edi, 2
	nop	
	xor	edx, edx
	call	sigaction
.label_247:
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.27
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.28
	call	bindtextdomain
	nop	
	mov	edi, OFFSET FLAT:.str.27
	call	textdomain
	nop	
	mov	edi, OFFSET FLAT:maybe_close_stdout
	lea	rdi, [rdi]
	call	atexit
	mov	rsp, rsp
	call	getpagesize
	cdqe	
	mov	qword ptr [word ptr [rip + page_size]],  rax
	mov	rsp, rsp
	mov	r8,  qword ptr [word ptr [rip + Version]]
	nop	
	mov	qword ptr [rsp + 0x20], 0
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str.31
	mov	qword ptr [word ptr [rsp + 16]], OFFSET FLAT:.str.30
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.29
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:usage
	xor	r13d, r13d
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.25
	nop	
	mov	ecx, OFFSET FLAT:.str.27
	mov	rbp, rbp
	mov	r9d, 1
	xor	eax, eax
	mov	edi, r14d
	lea	rsi, [rsi]
	mov	rsi, r12
	call	parse_gnu_standard_options_only
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + close_stdout_required]],  1
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_199]]
	movaps	xmmword ptr [word ptr [rip + trans_table]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_200]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [word ptr [rip + label_201]],  xmm0
	lea	rdi, [rdi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_202]]
	movaps	xmmword ptr [word ptr [rip + label_203]],  xmm0
	lea	rdi, [rdi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_204]]
	nop	
	movaps	xmmword ptr [word ptr [rip + label_205]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_206]]
	mov	rbp, rbp
	movaps	xmmword ptr [word ptr [rip + label_207]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_208]]
	mov	rbp, rbp
	movaps	xmmword ptr [word ptr [rip + label_209]],  xmm0
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_210]]
	movaps	xmmword ptr [word ptr [rip + label_211]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_212]]
	mov	rsp, rsp
	movaps	xmmword ptr [word ptr [rip + label_213]],  xmm0
	mov	rsp, rsp
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_214]]
	movaps	xmmword ptr [word ptr [rip + label_215]],  xmm0
	nop	
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_216]]
	nop	
	movaps	xmmword ptr [word ptr [rip + label_217]],  xmm0
	mov	rsp, rsp
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_218]]
	mov	rbp, rbp
	movaps	xmmword ptr [word ptr [rip + label_219]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_220]]
	movaps	xmmword ptr [word ptr [rip + label_221]],  xmm0
	mov	rsp, rsp
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_222]]
	movaps	xmmword ptr [word ptr [rip + label_223]],  xmm0
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_224]]
	mov	rsp, rsp
	movaps	xmmword ptr [word ptr [rip + label_225]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_226]]
	mov	rbp, rbp
	movaps	xmmword ptr [word ptr [rip + label_227]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_228]]
	movaps	xmmword ptr [word ptr [rip + label_229]],  xmm0
	lea	rsi, [rsi]
	movsxd	r15,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	rbp, -1
	mov	rsp, rsp
	cmp	r15d, r14d
	mov	r8d, 0
	mov	rbp, rbp
	jge	.label_230
	movsxd	r13, r14d
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], -1
	xor	ebx, ebx
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x2e0], rax
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rax
.label_67:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12 + r15*8]
	mov	esi, 0x3d
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strchr
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_19
	lea	rdi, [rdi]
	inc	r14
	mov	rsp, rsp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_106:
	mov	al,  byte ptr [byte ptr [rcx + .str.57]]
	test	al, al
	mov	rsp, rsp
	je	.label_253
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbp + rcx]
	movzx	eax, al
	inc	rcx
	cmp	edx, eax
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	je	.label_106
	jmp	.label_154
	nop	dword ptr [rax]
.label_253:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + rcx]
	cmp	eax, 0x3d
	mov	rbp, rbp
	je	.label_155
	test	al, al
	mov	eax, 0
	jne	.label_154
.label_155:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + input_file]],  r14
	lea	rsi, [rsi]
	jmp	.label_32
	nop	dword ptr [rax + rax]
.label_154:
	mov	cl,  byte ptr [byte ptr [rax + .str.58]]
	test	cl, cl
	je	.label_161
	movzx	edx, byte ptr [rbp + rax]
	movzx	ecx, cl
	inc	rax
	cmp	edx, ecx
	lea	rdi, [rdi]
	mov	ecx, 0
	mov	rsp, rsp
	je	.label_154
	mov	rbp, rbp
	jmp	.label_74
	nop	dword ptr [rax]
.label_161:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + rax]
	mov	rsp, rsp
	cmp	eax, 0x3d
	je	.label_52
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	mov	ecx, 0
	mov	rbp, rbp
	jne	.label_74
.label_52:
	nop	
	mov	qword ptr [word ptr [rip + output_file]],  r14
	nop	
	jmp	.label_32
.label_74:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rcx + .str.59]]
	test	al, al
	je	.label_187
	movzx	edx, byte ptr [rbp + rcx]
	movzx	eax, al
	inc	rcx
	cmp	edx, eax
	nop	
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_74
	mov	rsp, rsp
	jmp	.label_34
	nop	word ptr [rax + rax]
.label_187:
	movzx	eax, byte ptr [rbp + rcx]
	nop	
	cmp	eax, 0x3d
	je	.label_196
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	mov	eax, 0
	mov	rsp, rsp
	jne	.label_34
.label_196:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:conversions
	xor	edx, edx
	mov	ecx, OFFSET FLAT:.str.60
	mov	rdi, r14
	call	parse_symbols
	lea	rdi, [rdi]
	or	dword ptr [dword ptr [rip + conversions_mask]],  eax
	nop	
	jmp	.label_32
	nop	word ptr cs:[rax + rax]
.label_34:
	mov	cl,  byte ptr [byte ptr [rax + .str.61]]
	test	cl, cl
	je	.label_242
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbp + rax]
	movzx	ecx, cl
	lea	rdi, [rdi]
	inc	rax
	cmp	edx, ecx
	mov	ecx, 0
	je	.label_34
	jmp	.label_245
.label_242:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + rax]
	mov	rbp, rbp
	cmp	eax, 0x3d
	mov	rbp, rbp
	je	.label_246
	mov	rbp, rbp
	test	al, al
	mov	ecx, 0
	jne	.label_245
.label_246:
	mov	esi, OFFSET FLAT:flags
	lea	rsi, [rsi]
	xor	edx, edx
	mov	ecx, OFFSET FLAT:.str.62
	mov	rdi, r14
	mov	rbp, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + input_flags]],  eax
	nop	
	jmp	.label_32
	nop	dword ptr [rax + rax]
.label_245:
	mov	al,  byte ptr [byte ptr [rcx + .str.63]]
	nop	
	test	al, al
	je	.label_113
	movzx	edx, byte ptr [rbp + rcx]
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	inc	rcx
	mov	rbp, rbp
	cmp	edx, eax
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_245
	jmp	.label_14
.label_113:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + rcx]
	cmp	eax, 0x3d
	je	.label_16
	test	al, al
	mov	eax, 0
	mov	rsp, rsp
	jne	.label_14
.label_16:
	mov	esi, OFFSET FLAT:flags
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.64
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + output_flags]],  eax
	lea	rsi, [rsi]
	jmp	.label_32
	nop	word ptr cs:[rax + rax]
.label_14:
	mov	cl,  byte ptr [byte ptr [rax + .str.65]]
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_41
	movzx	edx, byte ptr [rbp + rax]
	movzx	ecx, cl
	inc	rax
	mov	rsp, rsp
	cmp	edx, ecx
	je	.label_14
	lea	rsi, [rsi]
	jmp	.label_50
.label_41:
	nop	
	movzx	eax, byte ptr [rbp + rax]
	mov	rbp, rbp
	cmp	eax, 0x3d
	mov	rsp, rsp
	je	.label_53
	nop	
	test	al, al
	mov	rbp, rbp
	jne	.label_50
.label_53:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:statuses
	mov	edx, 1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.66
	mov	rdi, r14
	lea	rsi, [rsi]
	call	parse_symbols
	mov	dword ptr [dword ptr [rip + status_level]],  eax
	jmp	.label_32
.label_50:
	mov	dword ptr [rsp + 0x40], 0
	mov	rdi, r14
	lea	rsi, [rsp + 0x40]
	mov	rsp, rsp
	call	parse_integer
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	cl,  byte ptr [byte ptr [rdx + .str.67]]
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_77
	nop	
	movzx	esi, byte ptr [rbp + rdx]
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rdi, [rdi]
	inc	rdx
	mov	rbp, rbp
	cmp	esi, ecx
	lea	rsi, [rsi]
	mov	ecx, 0
	lea	rdi, [rdi]
	je	.label_79
	mov	rsp, rsp
	jmp	.label_87
.label_77:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp + rdx]
	cmp	ecx, 0x3d
	mov	rsp, rsp
	je	.label_88
	test	cl, cl
	mov	ecx, 0
	jne	.label_87
.label_88:
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + page_size]]
	lea	rdi, [rdi]
	add	rdx, rdx
	lea	rdi, [rdi]
	mov	rcx, -4
	nop	
	sub	rcx, rdx
	lea	rdi, [rdi]
	movabs	rdx, 0x7fffffffffffffff
	cmp	rcx, rdx
	cmovae	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + input_blocksize]],  rax
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_13
	nop	dword ptr [rax + rax]
.label_87:
	mov	dl,  byte ptr [byte ptr [rcx + .str.68]]
	mov	rbp, rbp
	test	dl, dl
	je	.label_116
	movzx	esi, byte ptr [rbp + rcx]
	lea	rsi, [rsi]
	movzx	edx, dl
	inc	rcx
	nop	
	cmp	esi, edx
	lea	rdi, [rdi]
	mov	edx, 0
	mov	rsp, rsp
	je	.label_87
	nop	
	jmp	.label_126
.label_116:
	movzx	ecx, byte ptr [rbp + rcx]
	cmp	ecx, 0x3d
	je	.label_127
	test	cl, cl
	mov	edx, 0
	jne	.label_126
.label_127:
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + page_size]]
	mov	rbp, rbp
	neg	rcx
	movabs	rdx, 0x7fffffffffffffff
	cmp	rcx, rdx
	cmovae	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + output_blocksize]],  rax
	mov	edx, 1
	mov	rbp, rbp
	jmp	.label_13
	nop	dword ptr [rax]
.label_126:
	mov	cl,  byte ptr [byte ptr [rdx + .str.69]]
	mov	rsp, rsp
	test	cl, cl
	je	.label_139
	movzx	esi, byte ptr [rbp + rdx]
	movzx	ecx, cl
	lea	rsi, [rsi]
	inc	rdx
	cmp	esi, ecx
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_126
	mov	rsp, rsp
	jmp	.label_103
.label_139:
	movzx	ecx, byte ptr [rbp + rdx]
	cmp	ecx, 0x3d
	lea	rdi, [rdi]
	je	.label_148
	test	cl, cl
	mov	ecx, 0
	mov	rbp, rbp
	jne	.label_103
.label_148:
	mov	rdx,  qword ptr [word ptr [rip + page_size]]
	add	rdx, rdx
	mov	rcx, -4
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rbp, rbp
	movabs	rdx, 0x7fffffffffffffff
	cmp	rcx, rdx
	cmovae	rcx, rdx
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	mov	edx, 1
	jmp	.label_13
	nop	word ptr cs:[rax + rax]
.label_103:
	mov	dl,  byte ptr [byte ptr [rcx + .str.70]]
	test	dl, dl
	nop	
	je	.label_256
	movzx	esi, byte ptr [rbp + rcx]
	movzx	edx, dl
	inc	rcx
	mov	rsp, rsp
	cmp	esi, edx
	lea	rdi, [rdi]
	mov	edx, 0
	je	.label_103
	lea	rsi, [rsi]
	jmp	.label_176
.label_256:
	movzx	ecx, byte ptr [rbp + rcx]
	cmp	ecx, 0x3d
	mov	rbp, rbp
	je	.label_178
	nop	
	test	cl, cl
	mov	edx, 0
	mov	rbp, rbp
	jne	.label_176
.label_178:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + conversion_blocksize]],  rax
	lea	rsi, [rsi]
	mov	rcx, -1
	mov	rsp, rsp
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_13
	nop	dword ptr [rax + rax]
.label_176:
	mov	cl,  byte ptr [byte ptr [rdx + .str.71]]
	mov	rbp, rbp
	test	cl, cl
	je	.label_193
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rbp + rdx]
	mov	rbp, rbp
	movzx	ecx, cl
	inc	rdx
	cmp	esi, ecx
	nop	
	mov	esi, 0
	lea	rdi, [rdi]
	je	.label_176
	jmp	.label_95
.label_193:
	mov	rsp, rsp
	mov	dl, byte ptr [rbp + rdx]
	nop	
	mov	rcx, -1
	test	dl, dl
	lea	rdi, [rdi]
	je	.label_232
	mov	rsp, rsp
	movzx	edx, dl
	cmp	edx, 0x3d
	lea	rsi, [rsi]
	mov	esi, 0
	nop	
	jne	.label_95
.label_232:
	mov	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	jmp	.label_13
	nop	dword ptr [rax]
.label_95:
	mov	cl,  byte ptr [byte ptr [rsi + .str.72]]
	test	cl, cl
	je	.label_243
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp + rsi]
	movzx	ecx, cl
	inc	rsi
	lea	rsi, [rsi]
	cmp	edx, ecx
	nop	
	mov	edx, 0
	nop	
	je	.label_95
	jmp	.label_132
.label_243:
	mov	dl, byte ptr [rbp + rsi]
	mov	rcx, -1
	test	dl, dl
	je	.label_250
	lea	rdi, [rdi]
	movzx	edx, dl
	lea	rdi, [rdi]
	cmp	edx, 0x3d
	mov	edx, 0
	jne	.label_132
.label_250:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x2e0], rdx
	xor	edx, edx
	jmp	.label_13
	nop	dword ptr [rax]
.label_132:
	nop	
	mov	cl,  byte ptr [byte ptr [rdx + .str.73]]
	mov	rsp, rsp
	test	cl, cl
	nop	
	je	.label_130
	movzx	esi, byte ptr [rbp + rdx]
	movzx	ecx, cl
	inc	rdx
	mov	rsp, rsp
	cmp	esi, ecx
	lea	rsi, [rsi]
	je	.label_132
	mov	rbp, rbp
	jmp	.label_19
.label_130:
	mov	dl, byte ptr [rbp + rdx]
	nop	
	mov	rcx, -1
	test	dl, dl
	nop	
	je	.label_15
	movzx	edx, dl
	lea	rdi, [rdi]
	cmp	edx, 0x3d
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	mov	edx, 0
	je	.label_13
	jmp	.label_19
.label_15:
	mov	qword ptr [rsp + 0x38], rax
	xor	edx, edx
.label_13:
	cmp	rax, rdx
	mov	rbp, rbp
	jb	.label_31
	cmp	rcx, rax
	mov	rsp, rsp
	jb	.label_35
	mov	eax, dword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_39
	nop	dword ptr [rax + rax]
.label_32:
	inc	r15
	cmp	r15, r13
	jl	.label_67
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_49
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + output_blocksize]],  rbx
	mov	qword ptr [word ptr [rip + input_blocksize]],  rbx
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x2e0]
	nop	
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_54
.label_49:
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x30]
	nop	
	mov	r8, qword ptr [rsp + 0x2e0]
	mov	rbp, qword ptr [rsp + 0x38]
.label_230:
	nop	
	or	byte ptr [byte ptr [rip + label_65]],  8
	nop	
	mov	rdi,  qword ptr [word ptr [rip + input_blocksize]]
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_66
	mov	qword ptr [word ptr [rip + input_blocksize]],  0x200
	mov	edi, 0x200
.label_66:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	test	rbx, rbx
	jne	.label_54
	mov	qword ptr [word ptr [rip + output_blocksize]],  0x200
	mov	ebx, 0x200
.label_54:
	cmp	qword ptr [word ptr [rip + conversion_blocksize]],  0
	lea	rdi, [rdi]
	jne	.label_84
	mov	rsp, rsp
	and	byte ptr [byte ptr [rip + conversions_mask]],  0xe7
.label_84:
	mov	esi,  dword ptr [dword ptr [rip + input_flags]]
	test	esi, 0x101000
	mov	rsp, rsp
	je	.label_89
	or	esi, 0x101000
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + input_flags]],  esi
.label_89:
	mov	ecx,  dword ptr [dword ptr [rip + output_flags]]
	nop	
	test	cl, 1
	jne	.label_251
	test	sil, 0x10
	mov	rsp, rsp
	jne	.label_100
	nop	
	test	cl, 0xc
	mov	rsp, rsp
	jne	.label_102
	mov	rsp, rsp
	test	r13, r13
	je	.label_107
	nop	
	mov	eax, esi
	mov	rbp, rbp
	and	eax, 8
	lea	rsi, [rsi]
	je	.label_107
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r13
	div	rdi
	mov	qword ptr [word ptr [rip + skip_records]],  rax
	mov	qword ptr [word ptr [rip + skip_bytes]],  rdx
	jmp	.label_114
.label_107:
	test	r13, r13
	mov	rbp, rbp
	je	.label_114
	mov	qword ptr [word ptr [rip + skip_records]],  r13
.label_114:
	cmp	rbp, -1
	mov	rsp, rsp
	je	.label_80
	nop	
	mov	eax, esi
	and	eax, 4
	je	.label_80
	nop	
	xor	edx, edx
	mov	rax, rbp
	lea	rdi, [rdi]
	div	rdi
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + max_records]],  rax
	mov	qword ptr [word ptr [rip + max_bytes]],  rdx
	jmp	.label_128
.label_80:
	cmp	rbp, -1
	nop	
	je	.label_128
	mov	qword ptr [word ptr [rip + max_records]],  rbp
.label_128:
	mov	rsp, rsp
	test	r8, r8
	je	.label_135
	nop	
	mov	eax, ecx
	lea	rsi, [rsi]
	and	eax, 0x10
	je	.label_135
	xor	edx, edx
	mov	rax, r8
	nop	
	div	rbx
	mov	qword ptr [word ptr [rip + seek_records]],  rax
	mov	qword ptr [word ptr [rip + seek_bytes]],  rdx
	jmp	.label_137
.label_135:
	lea	rdi, [rdi]
	test	r8, r8
	mov	rsp, rsp
	je	.label_137
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + seek_records]],  r8
.label_137:
	nop	
	mov	ebx,  dword ptr [dword ptr [rip + conversions_mask]]
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	rsp, rsp
	and	edi, 0x800
	mov	edx, esi
	lea	rsi, [rsi]
	and	edx, 1
	xor	eax, eax
	or	edi, edx
	jne	.label_145
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + skip_records]],  0
	mov	rsp, rsp
	jne	.label_152
	mov	rdx,  qword ptr [word ptr [rip + max_records]]
	inc	rdx
	mov	rbp, rbp
	cmp	rdx, 1
	lea	rsi, [rsi]
	ja	.label_152
	nop	
	mov	eax, ecx
	or	eax, esi
	lea	rsi, [rsi]
	and	eax, 0x4000
	mov	rbp, rbp
	shr	eax, 0xe
.label_152:
	xor	edx, edx
.label_145:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  al
	mov	rbp, rbp
	test	edx, edx
	mov	eax, OFFSET FLAT:iread_fullblock
	mov	edx, OFFSET FLAT:iread
	lea	rsi, [rsi]
	cmovne	rdx, rax
	mov	qword ptr [word ptr [rip + iread_fnc]],  rdx
	mov	r14d, esi
	and	r14d, 0xfffffffe
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + input_flags]],  r14d
	lea	rsi, [rsi]
	lea	eax, [rbx + 7]
	lea	rdi, [rdi]
	and	eax, ebx
	lea	rsi, [rsi]
	test	al, 7
	jne	.label_162
	mov	eax, ebx
	and	eax, 0x18
	lea	edx, [rax + 0x1f]
	test	edx, eax
	nop	
	jne	.label_183
	mov	eax, ebx
	nop	
	and	eax, 0x60
	nop	
	lea	edx, [rax + 0x7f]
	lea	rsi, [rsi]
	test	edx, eax
	jne	.label_185
	mov	eax, ebx
	and	eax, 0x3000
	lea	edx, [rax + 0x3fff]
	test	edx, eax
	lea	rsi, [rsi]
	jne	.label_189
	mov	rbp, rbp
	mov	eax, esi
	and	eax, 0x4002
	lea	edx, [rax + 0x7fff]
	nop	
	test	edx, eax
	mov	rbp, rbp
	jne	.label_194
	mov	rbp, rbp
	mov	eax, ecx
	and	eax, 0x4002
	lea	edx, [rax + 0x7fff]
	nop	
	test	edx, eax
	lea	rdi, [rdi]
	jne	.label_194
	test	sil, 2
	lea	rdi, [rdi]
	je	.label_237
	mov	byte ptr [byte ptr [rip + i_nocache]],  1
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + i_nocache_eof]]
	lea	rsi, [rsi]
	and	esi, 0xfffffffc
	mov	dword ptr [dword ptr [rip + input_flags]],  esi
	mov	rbp, rbp
	mov	r14d, esi
.label_237:
	nop	
	test	cl, 2
	je	.label_244
	mov	byte ptr [byte ptr [rip + o_nocache]],  1
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + o_nocache_eof]]
	and	ecx, 0xfffffffd
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + output_flags]],  ecx
.label_244:
	test	bl, 1
	je	.label_255
	mov	rax, -0x100
	nop	word ptr [rax + rax]
.label_259:
	mov	rbp, rbp
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rcx + ebcdic_to_ascii]]
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_44]]
	mov	cl,  byte ptr [byte ptr [rcx + ebcdic_to_ascii]]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rax + label_44]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_45]]
	mov	cl,  byte ptr [byte ptr [rcx + ebcdic_to_ascii]]
	mov	byte ptr [byte ptr [rax + label_45]],  cl
	mov	rsp, rsp
	movzx	ecx,  byte ptr [byte ptr [rax + label_46]]
	mov	cl,  byte ptr [byte ptr [rcx + ebcdic_to_ascii]]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rax + label_46]],  cl
	add	rax, 4
	jne	.label_259
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
.label_255:
	test	bl, 0x40
	mov	rsp, rsp
	jne	.label_29
	lea	rsi, [rsi]
	test	bl, 0x20
	je	.label_33
	lea	rsi, [rsi]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, -0x100
	nop	word ptr cs:[rax + rax]
.label_47:
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	mov	rsp, rsp
	mov	dl, byte ptr [rax + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	lea	rdi, [rdi]
	movzx	edx,  byte ptr [byte ptr [rcx + label_44]]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + label_44]],  dl
	movzx	edx,  byte ptr [byte ptr [rcx + label_45]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rcx + label_45]],  dl
	lea	rsi, [rsi]
	movzx	edx,  byte ptr [byte ptr [rcx + label_46]]
	mov	dl, byte ptr [rax + rdx*4]
	nop	
	mov	byte ptr [byte ptr [rcx + label_46]],  dl
	add	rcx, 4
	jne	.label_47
	lea	rdi, [rdi]
	jmp	.label_70
.label_29:
	call	__ctype_toupper_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, -0x100
	nop	word ptr cs:[rax + rax]
.label_120:
	lea	rdi, [rdi]
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	lea	rsi, [rsi]
	movzx	edx,  byte ptr [byte ptr [rcx + label_44]]
	mov	dl, byte ptr [rax + rdx*4]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rcx + label_44]],  dl
	mov	rsp, rsp
	movzx	edx,  byte ptr [byte ptr [rcx + label_45]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rcx + label_45]],  dl
	mov	rbp, rbp
	movzx	edx,  byte ptr [byte ptr [rcx + label_46]]
	mov	dl, byte ptr [rax + rdx*4]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rcx + label_46]],  dl
	mov	rbp, rbp
	add	rcx, 4
	lea	rdi, [rdi]
	jne	.label_120
.label_70:
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
.label_33:
	mov	rbp, rbp
	test	bl, 2
	jne	.label_22
	mov	rsp, rsp
	test	bl, 4
	mov	rbp, rbp
	je	.label_104
	lea	rsi, [rsi]
	mov	rax, -0x100
.label_111:
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ibm]]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_44]]
	mov	rbp, rbp
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ibm]]
	mov	byte ptr [byte ptr [rax + label_44]],  cl
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rax + label_45]]
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ibm]]
	mov	byte ptr [byte ptr [rax + label_45]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_46]]
	nop	
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ibm]]
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rax + label_46]],  cl
	lea	rsi, [rsi]
	add	rax, 4
	lea	rsi, [rsi]
	jne	.label_111
	jmp	.label_133
.label_22:
	lea	rsi, [rsi]
	mov	rax, -0x100
	nop	word ptr [rax + rax]
.label_136:
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ebcdic]]
	nop	
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rax + label_44]]
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ebcdic]]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rax + label_44]],  cl
	nop	
	movzx	ecx,  byte ptr [byte ptr [rax + label_45]]
	nop	
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ebcdic]]
	mov	byte ptr [byte ptr [rax + label_45]],  cl
	nop	
	movzx	ecx,  byte ptr [byte ptr [rax + label_46]]
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ebcdic]]
	mov	byte ptr [byte ptr [rax + label_46]],  cl
	lea	rsi, [rsi]
	add	rax, 4
	mov	rsp, rsp
	jne	.label_136
.label_133:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
	mov	byte ptr [byte ptr [rip + newline_character]],  1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + space_character]],  1
.label_104:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + input_file]]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_160
	nop	dword ptr [rax]
.label_179:
	lea	rdi, [rdi]
	call	process_signals
	mov	rsp, rsp
	xor	edi, edi
	xor	ecx, ecx
	mov	rsi, rbx
	mov	rbp, rbp
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fd_reopen
	test	eax, eax
	mov	rbp, rbp
	jns	.label_175
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	cmp	ebp, 4
	mov	rbp, rbp
	je	.label_179
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	nl_error
.label_160:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [word ptr [rip + input_file]],  rax
	mov	rsp, rsp
	mov	esi,  dword ptr [dword ptr [rip + input_flags]]
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	set_fd_flags
.label_175:
	lea	rsi, [rsi]
	xor	r12d, r12d
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	call	lseek
	test	rax, rax
	setns	byte ptr [byte ptr [rip + input_seekable]]
	nop	
	cmovs	rax, r12
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	call	__errno_location
	mov	rbp, rbp
	mov	r14, rax
	mov	eax, dword ptr [r14]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  eax
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + output_file]]
	nop	
	test	r15, r15
	mov	rsp, rsp
	je	.label_248
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, eax
	lea	rdi, [rdi]
	shr	ecx, 6
	mov	rbp, rbp
	mov	edx, ecx
	not	edx
	and	edx, 0x40
	lea	rdi, [rdi]
	and	ecx, 0x80
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + seek_records]]
	cmp	rsi, 0
	sete	bl
	nop	
	movzx	ebp, bl
	shl	ebp, 9
	lea	rdi, [rdi]
	test	ah, 2
	cmovne	ebp, r12d
	lea	rsi, [rsi]
	or	ecx,  dword ptr [dword ptr [rip + output_flags]]
	or	ebp, edx
	or	ebp, ecx
	cmp	rsi, 0
	mov	rsp, rsp
	je	.label_258
	mov	ebx, ebp
	mov	rsp, rsp
	or	ebx, 2
	nop	word ptr [rax + rax]
.label_40:
	call	process_signals
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	mov	ecx, 0x1b6
	mov	rsi, r15
	mov	edx, ebx
	call	fd_reopen
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jns	.label_36
	nop	
	cmp	dword ptr [r14], 4
	je	.label_40
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + output_file]]
.label_258:
	mov	rsp, rsp
	or	ebp, 1
	nop	word ptr cs:[rax + rax]
.label_62:
	lea	rdi, [rdi]
	call	process_signals
	mov	edi, 1
	lea	rsi, [rsi]
	mov	ecx, 0x1b6
	nop	
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	call	fd_reopen
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jns	.label_36
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	rbp, rbp
	cmp	ebx, 4
	je	.label_62
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
.label_149:
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	nl_error
.label_36:
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_83
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [rip + label_65]],  2
	jne	.label_83
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rbp, rbp
	xor	edx, edx
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	div	rbx
	cmp	rax, rcx
	nop	
	jb	.label_90
	imul	rbx, rcx
	add	rbx,  qword ptr [word ptr [rip + seek_bytes]]
	nop	dword ptr [rax]
.label_112:
	call	process_signals
	nop	
	mov	edi, 1
	nop	
	mov	rsi, rbx
	mov	rsp, rsp
	call	ftruncate
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jns	.label_109
	mov	ebp, dword ptr [r14]
	lea	rdi, [rdi]
	cmp	ebp, 4
	lea	rdi, [rdi]
	je	.label_112
	jmp	.label_115
.label_248:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [word ptr [rip + output_file]],  rax
	nop	
	mov	esi,  dword ptr [dword ptr [rip + output_flags]]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rdx, rax
	call	set_fd_flags
	mov	rbp, rbp
	jmp	.label_83
.label_109:
	mov	rbp, rbp
	je	.label_83
	mov	ebp, dword ptr [r14]
.label_115:
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	mov	esi, 1
	nop	
	call	__fxstat
	test	eax, eax
	mov	rbp, rbp
	jne	.label_134
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x58]
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	je	.label_42
	mov	rsp, rsp
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_42
.label_83:
	nop	
	call	gethrxtime
	mov	qword ptr [word ptr [rip + start_time]],  rax
	mov	rbp, rbp
	add	rax, 0x3b9aca00
	mov	qword ptr [word ptr [rip + next_time]],  rax
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + skip_records]]
	nop	
	mov	rbp,  qword ptr [word ptr [rip + skip_bytes]]
	mov	rsp, rsp
	mov	rax, rbp
	lea	rdi, [rdi]
	or	rax, rbx
	je	.label_141
	mov	r12,  qword ptr [word ptr [rip + input_offset]]
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	r8d, OFFSET FLAT:skip_bytes
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r15
	call	skip
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_239
	imul	r15, rbx
	add	r12, rbp
	lea	rdi, [rdi]
	add	r12, r15
	mov	rsp, rsp
	cmp	r12,  qword ptr [word ptr [rip + input_offset]]
	je	.label_141
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + input_offset_overflow]]
	lea	rdi, [rdi]
	test	al, al
	jne	.label_141
.label_239:
	nop	
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	mov	rbp, rbp
	je	.label_141
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	nop	
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	nl_error
.label_141:
	mov	rdx,  qword ptr [word ptr [rip + seek_records]]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + seek_bytes]]
	mov	rcx, rax
	or	rcx, rdx
	lea	rsi, [rsi]
	je	.label_195
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	r8, [rsp + 0x40]
	nop	
	mov	edi, 1
	call	skip
	nop	
	mov	r13, rax
	mov	r12, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rax, r12
	mov	rbp, rbp
	or	rax, r13
	je	.label_195
	mov	rsp, rsp
	test	r13, r13
	setne	bl
	mov	r15,  qword ptr [word ptr [rip + obuf]]
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rsp, rsp
	cmove	rbp, r12
	xor	esi, esi
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	memset
	mov	rdi, r15
	mov	rbp, rbp
	jmp	.label_254
	nop	dword ptr [rax + rax]
.label_23:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	test	r13, r13
	nop	
	setne	bl
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rdi, [rdi]
	cmove	rbp, r12
.label_254:
	mov	rsi, rbp
	mov	rbp, rbp
	call	iwrite
	mov	rsp, rsp
	cmp	rax, rbp
	nop	
	jne	.label_264
	lea	rdi, [rdi]
	test	bl, 1
	nop	
	je	.label_265
	dec	r13
	lea	rdi, [rdi]
	jmp	.label_11
	nop	dword ptr [rax + rax]
.label_265:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], 0
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	r13d, r13d
.label_11:
	mov	rax, r13
	mov	rbp, rbp
	or	rax, r12
	mov	rsp, rsp
	jne	.label_23
.label_195:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	lea	rdi, [rdi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	je	.label_91
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + ibuf]],  0
	jne	.label_37
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + page_size]]
	lea	rsi, [rsi]
	lea	rdi, [rbx + rbp*2 + 3]
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_51
	mov	rsp, rsp
	lea	rcx, [rax + rbp + 1]
	xor	edx, edx
	nop	
	mov	rax, rcx
	div	rbp
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + ibuf]],  rcx
.label_37:
	call	alloc_obuf
	nop	
	mov	dword ptr [rsp + 0x38], 0
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_64
.label_93:
	nop	
	mov	rdi, r13
	mov	rsi, r12
	call	copy_with_block
	lea	rsi, [rsi]
	mov	r15, rbx
	nop	dword ptr [rax + rax]
.label_64:
	cmp	dword ptr [dword ptr [rip + status_level]],  4
	mov	rsp, rsp
	jne	.label_73
	call	gethrxtime
	cmp	qword ptr [word ptr [rip + next_time]],  rax
	jg	.label_73
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	print_xfer_stats
	lea	rsi, [rsi]
	add	qword ptr [word ptr [rip + next_time]],  0x3b9aca00
.label_73:
	mov	rbp,  qword ptr [word ptr [rip + r_full]]
	lea	rsi, [rsi]
	add	rbp,  qword ptr [word ptr [rip + r_partial]]
	mov	r13,  qword ptr [word ptr [rip + max_records]]
	mov	rbx,  qword ptr [word ptr [rip + max_bytes]]
	cmp	rbx, 1
	lea	rdi, [rdi]
	mov	rax, r13
	sbb	rax, -1
	cmp	rbp, rax
	jae	.label_86
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	nop	
	mov	ecx, eax
	and	ecx, 0x500
	mov	r12,  qword ptr [word ptr [rip + ibuf]]
	cmp	ecx, 0x500
	lea	rdi, [rdi]
	jne	.label_99
	test	al, 0x18
	setne	al
	shl	al, 5
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rsp, rsp
	movzx	esi, al
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	memset
.label_99:
	cmp	rbp, r13
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	jae	.label_118
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, r12
	jmp	.label_123
	nop	dword ptr [rax]
.label_118:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsi, r12
	mov	rdx, rbx
.label_123:
	mov	rbp, rbp
	call	rax
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	jg	.label_28
	je	.label_234
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	ah, 1
	lea	rdi, [rdi]
	je	.label_191
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	lea	rsi, [rsi]
	je	.label_257
.label_191:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	lea	rdi, [rdi]
	mov	edi, 4
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
.label_257:
	mov	ebp, 1
	test	ah, 1
	nop	
	je	.label_153
	mov	rsp, rsp
	call	print_stats
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rbx, rcx
	sub	rbx, r15
	lea	rsi, [rsi]
	mov	r8b,  byte ptr [byte ptr [rip + i_nocache_eof]]
	mov	rax,  qword ptr [word ptr [rip + cache_round.i_pending]]
	jne	.label_157
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rdi, rax
	jmp	.label_182
	nop	word ptr cs:[rax + rax]
.label_157:
	add	rax, rbx
	mov	rdi, rax
	mov	rsp, rsp
	and	eax, 0x1ffff
	mov	qword ptr [word ptr [rip + cache_round.i_pending]],  rax
	lea	rsi, [rsi]
	sub	rdi, rax
	mov	dl, 1
	lea	rsi, [rsi]
	jbe	.label_21
.label_182:
	mov	rbp, rbp
	test	r8b, r8b
	mov	rsp, rsp
	jne	.label_181
	nop	
	mov	rsi, rdi
	nop	
	or	rsi, rbx
	mov	rbp, rbp
	je	.label_21
.label_181:
	lea	rdi, [rdi]
	cmp	rcx, r15
	mov	esi, 0
	lea	rdi, [rdi]
	cmove	rax, rsi
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	nop	
	je	.label_188
	nop	
	mov	rsi,  qword ptr [word ptr [rip + input_offset]]
	test	rsi, rsi
	mov	rsp, rsp
	js	.label_21
	test	r8b, r8b
	sete	r8b
	cmp	rcx, r15
	lea	rdi, [rdi]
	setne	cl
	xor	dl, 1
	or	dl, cl
	mov	rsp, rsp
	or	dl, r8b
	lea	rdi, [rdi]
	mov	ebp, 0
	nop	
	cmovne	rbp, rdi
	cmove	rax, rdi
	lea	rsi, [rsi]
	sub	rsi, rbp
	sub	rsi, rax
	nop	
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_151
	xor	edx, edx
	mov	rax, rsi
	mov	rbp, rbp
	div	qword ptr [word ptr [rip + page_size]]
	sub	rsi, rdx
.label_151:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, 4
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	posix_fadvise
	jmp	.label_21
.label_188:
	mov	dword ptr [r14], 0x1d
	nop	
.label_21:
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	je	.label_101
	nop	
	mov	rax,  qword ptr [word ptr [rip + input_offset]]
	add	rax, rbx
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	jae	.label_142
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
	mov	cl, 1
	jmp	.label_252
	nop	
.label_101:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + input_seek_errno]]
	cmp	eax, 0x1d
	lea	rsi, [rsi]
	je	.label_105
	mov	dword ptr [r14], eax
	jmp	.label_17
	nop	dword ptr [rax]
.label_142:
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rip + input_offset_overflow]]
.label_252:
	mov	rsp, rsp
	shr	rax, 0x3f
	or	al, cl
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  al
	mov	rsp, rsp
	je	.label_262
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.119
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	jmp	.label_82
	nop	word ptr cs:[rax + rax]
.label_262:
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 1
	call	lseek
	test	rax, rax
	js	.label_17
	mov	rbp,  qword ptr [word ptr [rip + input_offset]]
	sub	rbp, rax
	je	.label_105
	js	.label_186
	cmp	rbp, rbx
	lea	rdi, [rdi]
	jbe	.label_75
.label_186:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_75
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.120
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	nl_error
.label_75:
	mov	rdi,  qword ptr [word ptr [rip + input_file]]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	skip_via_lseek
	lea	rdi, [rdi]
	test	rax, rax
	jns	.label_105
	lea	rsi, [rsi]
	cmp	dword ptr [r14], 0
	jne	.label_17
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.121
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	nl_error
	nop	word ptr [rax + rax]
.label_17:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [r14]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
.label_82:
	lea	rdi, [rdi]
	call	nl_error
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + input_seekable]],  0
	nop	
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  0x1d
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x38], 1
.label_105:
	lea	rsi, [rsi]
	test	r15, r15
	nop	
	jne	.label_64
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, 0x400
	and	eax, ecx
	mov	ebx, 0
	je	.label_64
	jmp	.label_76
.label_28:
	mov	rax,  qword ptr [word ptr [rip + input_offset]]
	add	rax, rbx
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	jae	.label_131
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
.label_131:
	movzx	ecx,  byte ptr [byte ptr [rip + i_nocache]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_76
	lea	rsi, [rsi]
	mov	sil,  byte ptr [byte ptr [rip + i_nocache_eof]]
	mov	rcx,  qword ptr [word ptr [rip + cache_round.i_pending]]
	nop	
	add	rcx, rbx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	and	edx, 0x1ffff
	mov	qword ptr [word ptr [rip + cache_round.i_pending]],  rdx
	lea	rdi, [rdi]
	mov	rbp, rcx
	lea	rsi, [rsi]
	sub	rbp, rdx
	lea	rsi, [rsi]
	jbe	.label_76
	lea	rdi, [rdi]
	test	sil, sil
	mov	rsp, rsp
	jne	.label_143
	mov	rsi, rbp
	nop	
	or	rsi, rbx
	je	.label_76
.label_143:
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	je	.label_125
	test	rax, rax
	js	.label_76
	lea	rsi, [rsi]
	sub	rax, rbp
	lea	rsi, [rsi]
	mov	rsi, rdx
	neg	rsi
	lea	rsi, [rsi]
	test	rbx, rbx
	cmove	rsi, rbx
	lea	rsi, [rsi]
	add	rsi, rax
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jne	.label_140
	xor	edx, edx
	mov	rax, rsi
	div	qword ptr [word ptr [rip + page_size]]
	nop	
	sub	rsi, rdx
.label_140:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	ecx, 4
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	posix_fadvise
	jmp	.label_76
.label_125:
	mov	dword ptr [r14], 0x1d
.label_76:
	mov	r12,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, rbx
	jbe	.label_59
	inc	qword ptr [word ptr [rip + r_partial]]
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	lea	rdi, [rdi]
	test	ah, 4
	mov	rbp, rbp
	jne	.label_78
	mov	r12, rbx
	jmp	.label_108
.label_59:
	lea	rdi, [rdi]
	inc	qword ptr [word ptr [rip + r_full]]
	mov	r12, rbx
	mov	rbp, rbp
	xor	ebx, ebx
	jmp	.label_108
.label_78:
	test	ah, 1
	lea	rdi, [rdi]
	jne	.label_108
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	nop	
	add	rdi, rbx
	lea	rdi, [rdi]
	test	al, 0x18
	setne	al
	shl	al, 5
	movzx	esi, al
	lea	rdi, [rdi]
	call	memset
.label_108:
	mov	r13,  qword ptr [word ptr [rip + ibuf]]
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	cmp	r13, rdi
	lea	rsi, [rsi]
	je	.label_197
	nop	
	test	r12, r12
	mov	rsp, rsp
	je	.label_146
	mov	al,  byte ptr [byte ptr [rip + translation_needed]]
	nop	
	xor	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_146
	lea	r8, [r12 - 1]
	lea	rsi, [rsi]
	test	r12b, 3
	mov	rax, r13
	mov	rbp, rbp
	mov	rcx, r12
	nop	
	je	.label_241
	mov	rbp, rbp
	mov	esi, r12d
	lea	rdi, [rdi]
	and	esi, 3
	neg	rsi
	lea	rdi, [rdi]
	mov	rax, r13
	mov	rcx, r12
	nop	
.label_249:
	movzx	ebp, byte ptr [rax]
	mov	dl,  byte ptr [byte ptr [rbp + trans_table]]
	nop	
	mov	byte ptr [rax], dl
	dec	rcx
	inc	rax
	inc	rsi
	mov	rsp, rsp
	jne	.label_249
.label_241:
	nop	
	cmp	r8, 3
	jb	.label_146
	nop	word ptr cs:[rax + rax]
.label_43:
	nop	
	movzx	edx, byte ptr [rax]
	nop	
	mov	dl,  byte ptr [byte ptr [rdx + trans_table]]
	lea	rdi, [rdi]
	mov	byte ptr [rax], dl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + 1]
	mov	dl,  byte ptr [byte ptr [rdx + trans_table]]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 1], dl
	mov	rsp, rsp
	movzx	edx, byte ptr [rax + 2]
	mov	rbp, rbp
	mov	dl,  byte ptr [byte ptr [rdx + trans_table]]
	mov	byte ptr [rax + 2], dl
	movzx	edx, byte ptr [rax + 3]
	mov	dl,  byte ptr [byte ptr [rdx + trans_table]]
	mov	byte ptr [rax + 3], dl
	add	rax, 4
	lea	rdi, [rdi]
	add	rcx, -4
	jne	.label_43
.label_146:
	mov	rsp, rsp
	mov	esi,  dword ptr [dword ptr [rip + conversions_mask]]
	test	sil, sil
	jns	.label_20
	movzx	ecx,  byte ptr [byte ptr [rip + char_is_saved]]
	and	ecx, 1
	mov	rbp, rbp
	cmp	ecx, 1
	jne	.label_27
	mov	cl,  byte ptr [byte ptr [rip + saved_char]]
	mov	byte ptr [r13 - 1], cl
	nop	
	dec	r13
	lea	rsi, [rsi]
	inc	r12
	mov	byte ptr [byte ptr [rip + char_is_saved]],  0
.label_27:
	mov	rsp, rsp
	test	r12b, 1
	je	.label_147
	mov	cl, byte ptr [r13 + r12 - 1]
	lea	rdi, [rdi]
	dec	r12
	mov	byte ptr [byte ptr [rip + saved_char]],  cl
	mov	byte ptr [byte ptr [rip + char_is_saved]],  1
.label_147:
	lea	rdi, [rdi]
	mov	rcx, r12
	lea	rsi, [rsi]
	shr	rcx, 1
	lea	rsi, [rsi]
	je	.label_72
	nop	
	lea	rdx, [r13 + r12]
	lea	rsi, [rsi]
	mov	rbp, r12
	shr	rbp, 1
	lea	rsi, [rsi]
	lea	r8, [rbp - 1]
	lea	rdi, [rdi]
	test	bpl, 7
	nop	
	je	.label_38
	and	ebp, 7
	neg	rbp
	nop	dword ptr [rax + rax]
.label_69:
	mov	al, byte ptr [rdx - 2]
	mov	byte ptr [rdx], al
	lea	rdx, [rdx - 2]
	mov	rbp, rbp
	dec	rcx
	inc	rbp
	mov	rsp, rsp
	jne	.label_69
.label_38:
	cmp	r8, 7
	jb	.label_72
	nop	dword ptr [rax]
.label_117:
	mov	rsp, rsp
	mov	al, byte ptr [rdx - 2]
	mov	rbp, rbp
	mov	byte ptr [rdx], al
	mov	al, byte ptr [rdx - 4]
	mov	byte ptr [rdx - 2], al
	mov	al, byte ptr [rdx - 6]
	mov	byte ptr [rdx - 4], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx - 8]
	mov	rsp, rsp
	mov	byte ptr [rdx - 6], al
	mov	al, byte ptr [rdx - 0xa]
	mov	byte ptr [rdx - 8], al
	mov	al, byte ptr [rdx - 0xc]
	lea	rsi, [rsi]
	mov	byte ptr [rdx - 0xa], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx - 0xe]
	lea	rsi, [rsi]
	mov	byte ptr [rdx - 0xc], al
	mov	rbp, rbp
	mov	al, byte ptr [rdx - 0x10]
	mov	byte ptr [rdx - 0xe], al
	lea	rsi, [rsi]
	lea	rdx, [rdx - 0x10]
	add	rcx, -8
	jne	.label_117
.label_72:
	mov	rsp, rsp
	inc	r13
.label_20:
	test	sil, 8
	jne	.label_93
	mov	rsp, rsp
	test	sil, 0x10
	jne	.label_97
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rbx
	lea	rdi, [rdi]
	mov	r15, r14
	jmp	.label_261
	nop	word ptr cs:[rax + rax]
.label_55:
	mov	rbp, rbp
	mov	r15, r14
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	r12, rax
.label_261:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	nop	
	mov	r14,  qword ptr [word ptr [rip + oc]]
	mov	rbp, rbx
	lea	rdi, [rdi]
	sub	rbp, r14
	lea	rsi, [rsi]
	cmp	r12, rbp
	cmovb	rbp, r12
	lea	rdi, [rdi]
	add	rdi, r14
	nop	
	mov	rsi, r13
	mov	rdx, rbp
	nop	
	call	memcpy
	nop	
	add	r14, rbp
	mov	qword ptr [word ptr [rip + oc]],  r14
	lea	rdi, [rdi]
	cmp	r14, rbx
	jb	.label_121
	nop	
	call	write_output
.label_121:
	mov	rsp, rsp
	mov	rax, r12
	sub	rax, rbp
	add	r13, rbp
	nop	
	cmp	r12, rbp
	lea	rsi, [rsi]
	mov	r14, r15
	lea	rsi, [rsi]
	jne	.label_55
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_64
.label_197:
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	call	iwrite
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	lea	rdi, [rdi]
	cmp	rax, r12
	jne	.label_30
	mov	rbp, rbp
	cmp	r12,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rbp, rbp
	jne	.label_110
	inc	qword ptr [word ptr [rip + w_full]]
	lea	rdi, [rdi]
	mov	r15, rbx
	jmp	.label_64
.label_110:
	inc	qword ptr [word ptr [rip + w_partial]]
	mov	rbp, rbp
	mov	r15, rbx
	lea	rdi, [rdi]
	jmp	.label_64
.label_97:
	mov	rdi, r13
	mov	rsi, r12
	nop	
	call	copy_with_unblock
	lea	rdi, [rdi]
	mov	r15, rbx
	lea	rdi, [rdi]
	jmp	.label_64
.label_234:
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	or	byte ptr [byte ptr [rip + i_nocache_eof]],  al
	movzx	eax,  byte ptr [byte ptr [rip + o_nocache]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	jne	.label_156
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [rip + label_65]],  2
	sete	al
	jmp	.label_163
.label_156:
	xor	eax, eax
.label_163:
	or	byte ptr [byte ptr [rip + o_nocache_eof]],  al
.label_86:
	nop	
	mov	ebp, dword ptr [rsp + 0x38]
.label_153:
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + char_is_saved]]
	mov	rsp, rsp
	and	eax, 1
	nop	
	cmp	eax, 1
	nop	
	jne	.label_167
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 8
	mov	rbp, rbp
	jne	.label_177
	test	al, 0x10
	mov	rbp, rbp
	jne	.label_180
	mov	al,  byte ptr [byte ptr [rip + saved_char]]
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_167
	call	write_output
	jmp	.label_167
.label_177:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:saved_char
	mov	esi, 1
	call	copy_with_block
	lea	rdi, [rdi]
	jmp	.label_167
.label_180:
	mov	edi, OFFSET FLAT:saved_char
	mov	esi, 1
	call	copy_with_unblock
.label_167:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + col]]
	mov	rbp, rbp
	test	al, 8
	je	.label_231
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_231
	mov	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	mov	rsp, rsp
	cmp	rbx, rax
	jae	.label_231
	nop	
.label_238:
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
	and	cl, 1
	mov	cl, 0x40
	jne	.label_60
	nop	
	mov	cl, 0x20
.label_60:
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rsi]
	lea	rsi, [rdx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	rbp, rbp
	mov	byte ptr [rdi + rdx], cl
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rsp, rsp
	jb	.label_85
	mov	rbp, rbp
	call	write_output
	mov	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
.label_85:
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, rax
	lea	rdi, [rdi]
	jb	.label_238
	mov	rbx,  qword ptr [word ptr [rip + col]]
.label_231:
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_198
	test	byte ptr [byte ptr [rip + conversions_mask]],  0x10
	je	.label_198
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	al, 0x25
	lea	rdi, [rdi]
	jne	.label_263
	mov	al, 0xa
.label_263:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	mov	rbp, rbp
	lea	rsi, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
	lea	rdi, [rdi]
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	nop	
	jb	.label_12
	call	write_output
.label_198:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + oc]]
.label_12:
	test	rsi, rsi
	je	.label_119
	nop	
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	lea	rsi, [rsi]
	call	iwrite
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	test	rax, rax
	je	.label_58
	inc	qword ptr [word ptr [rip + w_partial]]
.label_58:
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [rip + oc]]
	jne	.label_30
.label_119:
	movzx	eax,  byte ptr [byte ptr [rip + final_op_was_seek]]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_48
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	mov	esi, 1
	call	__fxstat
	test	eax, eax
	je	.label_61
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.36
	mov	rsp, rsp
	jmp	.label_68
.label_30:
	nop	
	mov	ebx, dword ptr [r14]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	mov	rsp, rsp
	jmp	.label_68
.label_61:
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	jne	.label_48
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	test	r15, r15
	js	.label_48
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x70], r15
	mov	rbp, rbp
	jge	.label_48
.label_94:
	call	process_signals
	mov	rbp, rbp
	mov	edi, 1
	mov	rsi, r15
	lea	rdi, [rdi]
	call	ftruncate
	test	eax, eax
	jns	.label_236
	mov	ebx, dword ptr [r14]
	nop	
	cmp	ebx, 4
	lea	rdi, [rdi]
	je	.label_94
	lea	rdi, [rdi]
	jmp	.label_98
.label_236:
	je	.label_48
	lea	rsi, [rsi]
	mov	ebx, dword ptr [r14]
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	r12, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	nop	
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r12
	mov	rsp, rsp
	mov	rcx, r15
	mov	r8, rbp
	lea	rsi, [rsi]
	call	nl_error
	jmp	.label_122
.label_48:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	nop	
	test	ah, 0x40
	je	.label_124
	mov	rbp, rbp
	mov	edi, 1
	call	fdatasync
	test	eax, eax
	je	.label_129
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	rsp, rsp
	cmp	ebx, 0x16
	je	.label_63
	cmp	ebx, 0x26
	lea	rsi, [rsi]
	je	.label_63
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	call	nl_error
	mov	ebp, 1
.label_63:
	mov	rsp, rsp
	mov	eax, 0x8000
	or	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + conversions_mask]],  eax
	lea	rdi, [rdi]
	jmp	.label_124
.label_129:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
.label_124:
	test	ax, ax
	jns	.label_91
	nop	word ptr cs:[rax + rax]
.label_159:
	mov	rsp, rsp
	mov	edi, 1
	call	fsync
	test	eax, eax
	mov	rsp, rsp
	je	.label_91
	mov	ebx, dword ptr [r14]
	cmp	ebx, 4
	mov	rsp, rsp
	je	.label_159
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.112
.label_68:
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	nop	
	call	nl_error
.label_122:
	mov	ebp, 1
.label_91:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	mov	cl,  byte ptr [byte ptr [rip + i_nocache]]
	lea	rdi, [rdi]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	lea	rdi, [rdi]
	je	.label_184
	mov	al,  byte ptr [byte ptr [rip + i_nocache_eof]]
	test	al, al
	jne	.label_190
	xor	cl, 1
	lea	rsi, [rsi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_192
.label_190:
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + cache_round.i_pending]]
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_266
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_192
.label_266:
	nop	
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	mov	rbp, rbp
	je	.label_233
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + input_offset]]
	mov	rsp, rsp
	test	rsi, rsi
	js	.label_192
	lea	rdi, [rdi]
	test	rbx, rbx
	sete	cl
	test	al, al
	nop	
	sete	al
	nop	
	mov	rdx, rbx
	neg	rdx
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	or	al, cl
	lea	rdi, [rdi]
	cmove	rbx, rdi
	cmovne	rdx, rdi
	sub	rsi, rbx
	add	rsi, rdx
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_240
	xor	edx, edx
	mov	rax, rsi
	lea	rsi, [rsi]
	div	qword ptr [word ptr [rip + page_size]]
	mov	rbp, rbp
	sub	rsi, rdx
.label_240:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, 4
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	posix_fadvise
	jmp	.label_192
.label_184:
	nop	
	test	cl, 1
	mov	rbp, rbp
	je	.label_56
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + i_nocache_eof]]
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + cache_round.i_pending]]
	test	al, al
	nop	
	jne	.label_260
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_56
.label_260:
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	mov	rsp, rsp
	je	.label_25
	mov	rsi,  qword ptr [word ptr [rip + input_offset]]
	test	rsi, rsi
	js	.label_18
	test	al, al
	nop	
	sete	al
	test	rbx, rbx
	sete	cl
	lea	rsi, [rsi]
	mov	rdx, rbx
	nop	
	neg	rdx
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	or	cl, al
	lea	rdi, [rdi]
	cmove	rbx, rdi
	mov	rbp, rbp
	cmovne	rdx, rdi
	lea	rdi, [rdi]
	sub	rsi, rbx
	mov	rsp, rsp
	add	rsi, rdx
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_24
	xor	edx, edx
	mov	rax, rsi
	mov	rbp, rbp
	div	qword ptr [word ptr [rip + page_size]]
	sub	rsi, rdx
.label_24:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	ecx, 4
	mov	rdx, rbx
	call	posix_fadvise
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_56
	mov	rbp, rbp
	jmp	.label_18
.label_233:
	mov	dword ptr [r14], 0x1d
.label_192:
	mov	rsp, rsp
	mov	bl,  byte ptr [byte ptr [rip + o_nocache_eof]]
	test	bl, bl
	mov	rbp, rbp
	jne	.label_166
	mov	al,  byte ptr [byte ptr [rip + o_nocache]]
	xor	al, 1
	test	al, 1
	jne	.label_26
.label_166:
	mov	r14,  qword ptr [word ptr [rip + cache_round.o_pending]]
	lea	rsi, [rsi]
	test	bl, bl
	jne	.label_71
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	je	.label_26
.label_71:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + invalidate_cache.output_offset]]
	cmp	rsi, -1
	mov	rsp, rsp
	je	.label_26
	test	rsi, rsi
	lea	rsi, [rsi]
	jns	.label_81
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, 1
	call	lseek
	mov	rsi, rax
	mov	qword ptr [word ptr [rip + invalidate_cache.output_offset]],  rsi
	test	rsi, rsi
	mov	rbp, rbp
	js	.label_26
.label_81:
	mov	rbp, rbp
	test	r14, r14
	sete	al
	lea	rdi, [rdi]
	test	bl, bl
	sete	cl
	mov	rdx, r14
	neg	rdx
	xor	edi, edi
	or	cl, al
	cmove	r14, rdi
	cmovne	rdx, rdi
	sub	rsi, r14
	add	rsi, rdx
	test	r14, r14
	jne	.label_92
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, rsi
	mov	rbp, rbp
	div	qword ptr [word ptr [rip + page_size]]
	sub	rsi, rdx
.label_92:
	mov	edi, 1
	mov	ecx, 4
	lea	rdi, [rdi]
	mov	rdx, r14
	call	posix_fadvise
	jmp	.label_26
.label_25:
	mov	dword ptr [r14], 0x1d
.label_18:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebp, 1
.label_56:
	movzx	eax,  byte ptr [byte ptr [rip + o_nocache]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_26
	mov	bl,  byte ptr [byte ptr [rip + o_nocache_eof]]
	mov	rbp, rbp
	mov	r15,  qword ptr [word ptr [rip + cache_round.o_pending]]
	nop	
	test	bl, bl
	lea	rdi, [rdi]
	jne	.label_138
	lea	rsi, [rsi]
	test	r15, r15
	nop	
	je	.label_26
.label_138:
	mov	rsi,  qword ptr [word ptr [rip + invalidate_cache.output_offset]]
	cmp	rsi, -1
	je	.label_144
	nop	
	test	rsi, rsi
	nop	
	jns	.label_150
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, 1
	mov	rbp, rbp
	call	lseek
	mov	rbp, rbp
	mov	rsi, rax
	mov	qword ptr [word ptr [rip + invalidate_cache.output_offset]],  rsi
	test	rsi, rsi
	nop	
	js	.label_144
.label_150:
	nop	
	test	bl, bl
	sete	al
	test	r15, r15
	sete	cl
	mov	rsp, rsp
	mov	rdx, r15
	neg	rdx
	xor	edi, edi
	or	cl, al
	nop	
	cmove	r15, rdi
	cmovne	rdx, rdi
	lea	rsi, [rsi]
	sub	rsi, r15
	lea	rdi, [rdi]
	add	rsi, rdx
	nop	
	test	r15, r15
	jne	.label_165
	xor	edx, edx
	mov	rax, rsi
	lea	rdi, [rdi]
	div	qword ptr [word ptr [rip + page_size]]
	sub	rsi, rdx
.label_165:
	mov	edi, 1
	mov	ecx, 4
	mov	rdx, r15
	mov	rsp, rsp
	call	posix_fadvise
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_26
.label_144:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebp, 1
.label_26:
	lea	rdi, [rdi]
	call	cleanup
	call	print_stats
	lea	rsi, [rsi]
	call	process_signals
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 0x2e8
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_19:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	nl_error
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_264:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	call	nl_error
	call	quit
.label_194:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	nop	
	jmp	.label_96
.label_31:
	mov	dword ptr [rsp + 0x40], 4
	xor	r15d, r15d
	nop	
	jmp	.label_10
.label_35:
	mov	dword ptr [rsp + 0x40], 1
	mov	r15d, 0x4b
	jmp	.label_10
.label_39:
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	rsp, rsp
	mov	r15d, 0x4b
	cmovne	r15d, ecx
.label_10:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.75
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	nop	
	call	quote
	mov	rbx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, r15d
	nop	
	mov	rcx, rbp
	mov	r8, rbx
	lea	rdi, [rdi]
	call	nl_error
.label_251:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	mov	edi, OFFSET FLAT:.str.76
	lea	rdi, [rdi]
	jmp	.label_57
.label_100:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.62
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.77
	jmp	.label_57
.label_102:
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	nop	
	mov	ecx, OFFSET FLAT:.str.78
	mov	edi, OFFSET FLAT:.str.79
	test	al, 4
	mov	rbp, rbp
	cmovne	rdi, rcx
.label_57:
	call	quote
	nop	
	mov	rbp, rax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	r8, rbp
	call	nl_error
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_162:
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.80
	mov	rbp, rbp
	jmp	.label_96
.label_183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	jmp	.label_96
.label_185:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	rbp, rbp
	jmp	.label_96
.label_189:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
.label_96:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	nl_error
.label_51:
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.117
	nop	
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x40]
	mov	edx, 0x1f1
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	r8d, 1
	nop	
	call	human_readable
	mov	rbp, rax
	nop	
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rcx, rbx
	nop	
	mov	r8, rbp
	mov	rsp, rsp
	call	nl_error
.label_90:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	mov	rbp, rbp
	mov	edi, 1
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r8, rbx
	call	nl_error
.label_134:
	mov	rsp, rsp
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	jmp	.label_149
.label_42:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	nop	
	call	quotearg_style
	mov	r8, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebp
	mov	rdx, r14
	mov	rcx, rbx
	lea	rsi, [rsi]
	call	nl_error
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ea0

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	mov	rbp, rbp
	push	rax
	mov	al,  byte ptr [byte ptr [rip + close_stdout_required]]
	and	al, 1
	je	.label_267
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	nop	
	call	close_stream
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_268
	lea	rsi, [rsi]
	pop	rax
	ret	
.label_267:
	lea	rdi, [rdi]
	pop	rax
	jmp	close_stdout
.label_268:
	mov	edi, 1
	mov	rbp, rbp
	call	_exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ee0

	.globl set_fd_flags
	.type set_fd_flags, @function
set_fd_flags:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x90
	mov	rbp, rbp
	mov	r14, rdx
	mov	rbp, rbp
	mov	ebp, esi
	mov	rsp, rsp
	mov	r15d, edi
	lea	rsi, [rsi]
	and	ebp, 0xfffdfeff
	mov	rsp, rsp
	je	.label_269
	nop	
	mov	esi, 3
	mov	rsp, rsp
	xor	eax, eax
	mov	edi, r15d
	lea	rsi, [rsi]
	call	rpl_fcntl
	mov	rsp, rsp
	mov	ebx, eax
	lea	rdi, [rdi]
	test	ebx, ebx
	js	.label_270
	nop	
	or	ebp, ebx
	mov	rsp, rsp
	cmp	ebx, ebp
	je	.label_269
	mov	r12b, 1
	mov	rbp, rbp
	test	ebp, 0x10000
	je	.label_271
	mov	rbp, rbp
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, r15d
	mov	rbp, rbp
	call	__fxstat
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_274
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	r12b, 1
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_275
	call	__errno_location
	mov	dword ptr [rax], 0x14
.label_274:
	mov	rsp, rsp
	xor	r12d, r12d
.label_275:
	and	ebp, 0xfffeffff
.label_271:
	mov	rsp, rsp
	cmp	ebx, ebp
	nop	
	je	.label_273
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_273
	xor	ebx, ebx
	mov	esi, 4
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	edx, ebp
	mov	rbp, rbp
	call	rpl_fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	mov	rbp, rbp
	je	.label_272
	mov	bl, r12b
.label_272:
	mov	rsp, rsp
	mov	r12b, bl
.label_273:
	test	r12b, 1
	je	.label_270
.label_269:
	mov	rbp, rbp
	add	rsp, 0x90
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_270:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	nl_error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405060

	.globl nl_error
	.type nl_error, @function
nl_error:
	push	rbp
	mov	rbp, rbp
	push	r14
	nop	
	push	rbx
	sub	rsp, 0xd0
	mov	r14, rdx
	nop	
	mov	ebp, esi
	mov	ebx, edi
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_276
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_276:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r8
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rcx
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_277
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_278
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0xa
.label_279:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_277:
	nop	
	lea	rax, [rsp]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0xb0]
	mov	edi, ebx
	mov	esi, ebp
	mov	rdx, r14
	lea	rsi, [rsi]
	call	verror
	lea	rsi, [rsi]
	add	rsp, 0xd0
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
.label_278:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_279
	nop	
	.section	.text
	.align	16
	#Procedure 0x405190

	.globl invalidate_cache
	.type invalidate_cache, @function
invalidate_cache:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14d, edi
	nop	
	test	r14d, r14d
	mov	eax, OFFSET FLAT:i_nocache_eof
	mov	ecx, OFFSET FLAT:o_nocache_eof
	cmove	rcx, rax
	nop	
	mov	r15b, byte ptr [rcx]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:cache_round.i_pending
	mov	eax, OFFSET FLAT:cache_round.o_pending
	mov	rbp, rbp
	cmove	rax, rcx
	mov	rbp, qword ptr [rax]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_287
	add	rbp, rbx
	nop	
	mov	r12, rbp
	and	ebp, 0x1ffff
	mov	qword ptr [rax], rbp
	sub	r12, rbp
	lea	rsi, [rsi]
	mov	r13b, 1
	lea	rdi, [rdi]
	mov	al, 1
	jbe	.label_285
	jmp	.label_280
.label_287:
	lea	rdi, [rdi]
	test	rbp, rbp
	setne	r13b
	mov	rsp, rsp
	mov	r12, rbp
.label_280:
	test	r15b, r15b
	jne	.label_284
	mov	rax, r12
	or	rax, rbx
	mov	rbp, rbp
	mov	al, 1
	je	.label_285
.label_284:
	test	rbx, rbx
	cmove	rbp, rbx
	nop	
	test	r14d, r14d
	je	.label_289
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + invalidate_cache.output_offset]]
	cmp	rsi, -1
	je	.label_291
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	rbp, rbp
	js	.label_281
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_283
	lea	rax, [rbp + r12]
	mov	rbp, rbp
	add	rsi, rax
	nop	
	jmp	.label_286
.label_289:
	nop	
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	je	.label_288
	mov	rsi,  qword ptr [word ptr [rip + input_offset]]
	jmp	.label_282
.label_291:
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_285
.label_281:
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	edi, r14d
	mov	rsp, rsp
	call	lseek
	mov	rsp, rsp
	mov	rsi, rax
.label_286:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + invalidate_cache.output_offset]],  rsi
.label_282:
	nop	
	test	rsi, rsi
	js	.label_290
.label_283:
	lea	rdi, [rdi]
	test	r15b, r15b
	sete	al
	lea	rdi, [rdi]
	test	rbx, rbx
	nop	
	setne	cl
	xor	r13b, 1
	nop	
	or	r13b, cl
	mov	rbp, rbp
	xor	ebx, ebx
	nop	
	or	r13b, al
	cmovne	rbx, r12
	cmove	rbp, r12
	sub	rsi, rbx
	sub	rsi, rbp
	test	rbx, rbx
	jne	.label_292
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, rsi
	div	qword ptr [word ptr [rip + page_size]]
	sub	rsi, rdx
.label_292:
	mov	ecx, 4
	mov	edi, r14d
	mov	rdx, rbx
	mov	rsp, rsp
	call	posix_fadvise
	lea	rsi, [rsi]
	cmp	eax, -1
	mov	rbp, rbp
	setne	al
	jmp	.label_285
.label_290:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_285
.label_288:
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x1d
	xor	eax, eax
.label_285:
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405360

	.globl siginfo_handler
	.type siginfo_handler, @function
siginfo_handler:
	inc	dword ptr [dword ptr [rip + info_signal_count]]
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405370

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	mov	dword ptr [dword ptr [rip + interrupt_signal]],  edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405380

	.globl parse_symbols
	.type parse_symbols, @function
parse_symbols:
	mov	rbp, rbp
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rcx
	mov	rsp, rsp
	mov	r15, rsi
	mov	rbx, rdi
	test	dl, dl
	je	.label_293
	nop	dword ptr [rax + rax]
.label_295:
	mov	esi, 0x2c
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	strchr
	mov	r12, rax
	mov	rbp, rbp
	mov	rax, r15
	nop	dword ptr [rax]
.label_307:
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_305:
	mov	dl, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	test	dl, dl
	je	.label_302
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbx + rcx]
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	esi, edx
	je	.label_305
	lea	rsi, [rsi]
	jmp	.label_294
	nop	dword ptr [rax]
.label_302:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbx + rcx]
	cmp	ecx, 0x2c
	je	.label_299
	lea	rsi, [rsi]
	test	cl, cl
	lea	rdi, [rdi]
	jne	.label_294
.label_299:
	mov	ebp, dword ptr [rax + 0xc]
	nop	
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_303
.label_294:
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	lea	rax, [rax + 0x10]
	lea	rsi, [rsi]
	jne	.label_307
	nop	
	jmp	.label_301
	nop	word ptr cs:[rax + rax]
.label_303:
	lea	rdi, [rdi]
	test	r12, r12
	mov	rsp, rsp
	lea	rbx, [r12 + 1]
	jne	.label_295
	mov	rsp, rsp
	jmp	.label_310
.label_293:
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_298:
	lea	rdi, [rdi]
	mov	esi, 0x2c
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	call	strchr
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rax, r15
	nop	
.label_308:
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_309:
	mov	dl, byte ptr [rax + rcx]
	nop	
	test	dl, dl
	nop	
	je	.label_306
	mov	rbp, rbp
	movzx	esi, byte ptr [rbx + rcx]
	mov	rbp, rbp
	movzx	edx, dl
	inc	rcx
	cmp	esi, edx
	je	.label_309
	nop	
	jmp	.label_297
.label_306:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbx + rcx]
	mov	rbp, rbp
	cmp	ecx, 0x2c
	lea	rdi, [rdi]
	je	.label_296
	test	cl, cl
	nop	
	jne	.label_297
.label_296:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_304
.label_297:
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	lea	rax, [rax + 0x10]
	mov	rsp, rsp
	jne	.label_308
	nop	
	jmp	.label_301
	nop	word ptr [rax + rax]
.label_304:
	mov	rbp, rbp
	or	ebp, ecx
	lea	rsi, [rsi]
	test	r12, r12
	lea	rbx, [r12 + 1]
	lea	rsi, [rsi]
	jne	.label_298
.label_310:
	lea	rdi, [rdi]
	mov	eax, ebp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_301:
	mov	rbp, rbp
	test	r12, r12
	nop	
	jne	.label_311
	mov	rsp, rsp
	mov	rdi, rbx
	call	strlen
	mov	r12, rax
	jmp	.label_300
.label_311:
	sub	r12, rbx
.label_300:
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 8
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	mov	rcx, r12
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	rcx, rbp
	mov	rsp, rsp
	mov	r8, rbx
	call	nl_error
	mov	rbp, rbp
	mov	edi, 1
	call	usage
	nop	
	.section	.text
	.align	16
	#Procedure 0x4055b0

	.globl parse_integer
	.type parse_integer, @function
parse_integer:
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	nop	
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rsp + 0x10]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str.85
	nop	
	call	xstrtoumax
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_317
	test	eax, eax
	nop	
	jne	.label_312
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_313
.label_317:
	mov	rdi, qword ptr [rsp + 8]
	movzx	ecx, byte ptr [rdi]
	cmp	ecx, 0x78
	lea	rsi, [rsi]
	jne	.label_312
	lea	rdi, [rdi]
	inc	rdi
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rbp, rbp
	call	parse_integer
	mov	r14, rax
	lea	rsi, [rsi]
	test	r14, r14
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x10]
	je	.label_318
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	imul	rax, r14
	xor	edx, edx
	div	r14
	cmp	rax, rcx
	mov	rbp, rbp
	jne	.label_315
.label_318:
	lea	rsi, [rsi]
	test	rcx, rcx
	jne	.label_314
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 2
	nop	
	mov	rdi, rbx
	call	strncmp
	xor	ecx, ecx
	test	eax, eax
	jne	.label_314
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.87
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.86
	call	quote_n
	mov	r12, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.88
	nop	
	call	quote_n
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r15
	mov	rsp, rsp
	mov	rcx, r12
	mov	r8, rbx
	call	nl_error
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x10]
.label_314:
	imul	rcx, r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rcx
	jmp	.label_313
.label_312:
	mov	dword ptr [r15], eax
.label_316:
	nop	
	xor	ecx, ecx
.label_313:
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
.label_315:
	mov	dword ptr [r15], 1
	jmp	.label_316
	.section	.text
	.align	16
	#Procedure 0x405730

	.globl iread_fullblock
	.type iread_fullblock, @function
iread_fullblock:
	nop
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbx, rdx
	nop	
	mov	r14, rsi
	mov	r15d, edi
	xor	ebp, ebp
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_319
	nop	word ptr cs:[rax + rax]
.label_322:
	lea	rsi, [rsi]
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rdx, rbx
	call	iread
	test	rax, rax
	js	.label_320
	je	.label_321
	add	rbp, rax
	add	r14, rax
	sub	rbx, rax
	mov	rax, rbp
	jne	.label_322
	jmp	.label_320
.label_319:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_320
.label_321:
	mov	rsp, rsp
	mov	rax, rbp
.label_320:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4057b0

	.globl iread
	.type iread, @function
iread:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r15, rsi
	mov	ebp, edi
	nop	word ptr cs:[rax + rax]
.label_327:
	call	process_signals
	nop	
	mov	edi, ebp
	mov	rsp, rsp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r14
	call	read
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	cmp	rbx, -1
	mov	rsp, rsp
	je	.label_328
	test	rbx, rbx
	lea	rdi, [rdi]
	jns	.label_333
	mov	rbp, rbp
	call	__errno_location
	jmp	.label_325
	nop	dword ptr [rax + rax]
.label_328:
	call	__errno_location
	nop	
	mov	rcx,  qword ptr [word ptr [rip + iread.prev_nread]]
	nop	
	mov	rbx, -1
	cmp	rcx, r14
	jae	.label_325
	cmp	dword ptr [rax], 0x16
	jne	.label_325
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_325
	test	byte ptr [byte ptr [rip + label_331]],  0x40
	jne	.label_332
	nop	word ptr cs:[rax + rax]
.label_325:
	nop	
	cmp	dword ptr [rax], 4
	mov	rax, rbx
	lea	rsi, [rsi]
	je	.label_327
	jmp	.label_323
.label_333:
	lea	rdi, [rdi]
	jle	.label_326
	cmp	rbx, r14
	jae	.label_326
	mov	rsp, rsp
	call	process_signals
	jmp	.label_330
.label_326:
	lea	rdi, [rdi]
	xor	eax, eax
	test	rbx, rbx
	jle	.label_323
.label_330:
	mov	rbp,  qword ptr [word ptr [rip + iread.prev_nread]]
	mov	rbp, rbp
	cmp	rbp, r14
	mov	rbp, rbp
	jae	.label_324
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + warn_partial_read]]
	mov	rbp, rbp
	test	al, al
	je	.label_324
	lea	rdi, [rdi]
	test	rbp, rbp
	jle	.label_324
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_329
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.89
	mov	edx, OFFSET FLAT:.str.90
	mov	r8d, 5
	mov	rcx, rbp
	call	dcngettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, rbp
	nop	
	call	nl_error
.label_329:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  0
.label_324:
	mov	rax, rbx
	jmp	.label_323
.label_332:
	mov	dword ptr [rax], 0
	nop	
	xor	eax, eax
.label_323:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + iread.prev_nread]],  rax
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405930

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	nop	
	push	rbx
	sub	rsp, 0x88
	lea	rbx, [rsp + 8]
	jmp	.label_335
	nop	word ptr cs:[rax + rax]
.label_338:
	call	cleanup
	call	print_stats
	lea	rsi, [rsi]
	mov	edi, ebp
	nop	
	call	raise
.label_335:
	cmp	dword ptr [dword ptr [rip + interrupt_signal]],  0
	jne	.label_334
	cmp	dword ptr [dword ptr [rip + info_signal_count]],  0
	mov	rsp, rsp
	je	.label_337
.label_334:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, rbx
	call	sigprocmask
	mov	ebp,  dword ptr [dword ptr [rip + interrupt_signal]]
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + info_signal_count]]
	test	eax, eax
	mov	rbp, rbp
	je	.label_336
	nop	
	dec	eax
	mov	dword ptr [dword ptr [rip + info_signal_count]],  eax
.label_336:
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rbx
	call	sigprocmask
	lea	rdi, [rdi]
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_338
	lea	rsi, [rsi]
	call	print_stats
	jmp	.label_335
.label_337:
	lea	rsi, [rsi]
	add	rsp, 0x88
	pop	rbx
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059f0

	.globl cleanup
	.type cleanup, @function
cleanup:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	call	close
	test	eax, eax
	js	.label_339
	mov	edi, 1
	call	close
	test	eax, eax
	mov	rbp, rbp
	js	.label_340
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_339:
	nop	
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.91
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	rbp, rbp
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	nl_error
.label_340:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	
	.section	.text
	.align	16
	#Procedure 0x405ad0

	.globl print_stats
	.type print_stats, @function
print_stats:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_344
	push	rbx
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_341
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_343
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0xa
.label_345:
	nop	
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_341:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + r_full]]
	mov	r8,  qword ptr [word ptr [rip + r_partial]]
	mov	r9,  qword ptr [word ptr [rip + w_full]]
	mov	rax,  qword ptr [word ptr [rip + w_partial]]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rbp, rbp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + r_truncate]]
	test	rcx, rcx
	je	.label_346
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	mov	edx, OFFSET FLAT:.str.95
	mov	rbp, rbp
	mov	r8d, 5
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + r_truncate]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rbp, rbp
	call	__fprintf_chk
.label_346:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + status_level]],  2
	lea	rsp, [rsp + 0x10]
	lea	rsi, [rsi]
	pop	rbx
	jne	.label_342
.label_344:
	ret	
.label_342:
	xor	edi, edi
	jmp	print_xfer_stats
.label_343:
	mov	rsp, rsp
	mov	esi, 0xa
	call	__overflow
	nop	
	jmp	.label_345
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c00

	.globl print_xfer_stats
	.type print_xfer_stats, @function
print_xfer_stats:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x7f8
	mov	r15, rdi
	lea	rsi, [rsi]
	test	r15, r15
	mov	rbx, r15
	jne	.label_347
	nop	
	call	gethrxtime
	mov	rbx, rax
.label_347:
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x30]
	mov	rsp, rsp
	mov	edx, 0x1d1
	nop	
	mov	ecx, 1
	mov	rsp, rsp
	mov	r8d, 1
	lea	rdi, [rdi]
	call	human_readable
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsp + 0x2be]
	nop	
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rsi, [rsi]
	lea	r13, [rsp + 0x54c]
	sub	rbx,  qword ptr [word ptr [rip + start_time]]
	nop	
	jle	.label_352
	movq	xmm0, rbx
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	lea	rsi, [rsi]
	divsd	xmm1,  qword ptr [word ptr [rip + label_358]]
	lea	rsi, [rsi]
	movapd	xmmword ptr [rsp + 0x7e0], xmm1
	nop	
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsi]
	mov	edx, 0x1d1
	nop	
	mov	ecx, 0x3b9aca00
	mov	rsi, r13
	mov	r8, rbx
	call	human_readable
	mov	r13, rax
	mov	rdi, r13
	mov	rbp, rbp
	call	strlen
	mov	byte ptr [r13 + rax + 2], 0
	lea	rdi, [rdi]
	mov	word ptr [r13 + rax], 0x732f
	jmp	.label_351
.label_352:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.97
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	esi, 0x28e
	mov	edx, 1
	lea	rdi, [rdi]
	mov	ecx, 0x28e
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.96
	xor	eax, eax
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	r9, rbp
	call	__snprintf_chk
	mov	rbp, rbp
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x7e0], xmm0
.label_351:
	mov	rbp, rbp
	test	r15, r15
	je	.label_350
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_361
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xd
.label_350:
	mov	rbp, rbp
	test	r15, r15
	mov	eax, OFFSET FLAT:.str.98
	nop	
	mov	r8d, OFFSET FLAT:.str.99
	nop	
	cmovne	r8, rax
	lea	rbp, [rsp + 0x10]
	mov	esi, 0x18
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x18
	mov	al, 1
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	movaps	xmm0, xmmword ptr [rsp + 0x7e0]
	call	__snprintf_chk
	nop	
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	movzx	eax, byte ptr [rax + r14 - 2]
	cmp	eax, 0x20
	jne	.label_360
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.100
	mov	edx, OFFSET FLAT:.str.101
	mov	r8d, 5
	call	dcngettext
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	lea	r8, [rsp + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r9, r13
	jmp	.label_359
.label_360:
	mov	rdi, r12
	call	strlen
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	movzx	eax, byte ptr [rax + r12 - 2]
	nop	
	xor	edi, edi
	cmp	eax, 0x20
	jne	.label_355
	mov	esi, OFFSET FLAT:.str.102
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	mov	rsp, rsp
	lea	r9, [rsp + 0x10]
	nop	
	mov	esi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	r8, r14
	lea	rsi, [rsi]
	jmp	.label_359
.label_355:
	mov	esi, OFFSET FLAT:.str.103
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r13
	mov	rsp, rsp
	mov	qword ptr [rsp], rbp
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r8, r14
	lea	rdi, [rdi]
	mov	r9, r12
.label_359:
	nop	
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	ebx, eax
	mov	rsp, rsp
	test	r15, r15
	je	.label_348
	mov	rsp, rsp
	test	ebx, ebx
	mov	rsp, rsp
	js	.label_353
	mov	ecx,  dword ptr [dword ptr [rip + progress_len]]
	sub	ecx, ebx
	jle	.label_353
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.104
	mov	r8d, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	call	__fprintf_chk
.label_353:
	mov	dword ptr [dword ptr [rip + progress_len]],  ebx
	mov	rsp, rsp
	jmp	.label_349
.label_348:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_354
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0xa
.label_349:
	nop	
	add	rsp, 0x7f8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_361:
	mov	esi, 0xd
	call	__overflow
	jmp	.label_350
.label_354:
	lea	rdi, [rdi]
	mov	esi, 0xa
	call	__overflow
	jmp	.label_349
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fc0

	.globl skip
	.type skip, @function
skip:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x2b8
	mov	rbx, r8
	mov	rbp, rbp
	mov	r12, rcx
	lea	rdi, [rdi]
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	r14d, edi
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbx]
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x2a8], rax
	mov	dword ptr [rax], 0
	xor	ecx, ecx
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	r12
	cmp	rax, r13
	jb	.label_362
	mov	rbp, rbp
	mov	rax, r12
	imul	rax, r13
	mov	rsp, rsp
	add	r15, rax
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rdx, r15
	call	skip_via_lseek
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_380
	lea	rsi, [rsi]
	test	r14d, r14d
	jne	.label_364
	lea	rdx, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	call	__fxstat
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_365
	mov	eax, 0x2000
	or	eax, dword ptr [rsp + 0x28]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_368
	mov	rsi, qword ptr [rsp + 0x40]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + input_offset]]
	lea	rdx, [rcx + r15]
	xor	eax, eax
	mov	rsp, rsp
	cmp	rsi, rdx
	mov	rbp, rbp
	jae	.label_370
	mov	rbp, rbp
	sub	r15, rsi
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r15
	div	r12
	sub	rsi, rcx
	mov	r15, rsi
	mov	rbp, rbp
	jmp	.label_370
.label_380:
	mov	rax, qword ptr [rsp + 0x2a8]
	mov	ecx, dword ptr [rax]
.label_362:
	mov	qword ptr [rsp + 8], rcx
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, 2
	mov	rsp, rsp
	mov	rdi, rbp
	mov	esi, r14d
	lea	rsi, [rsi]
	call	skip_via_lseek
	mov	rbp, rbp
	test	rax, rax
	jns	.label_369
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2b0], rbp
	test	r14d, r14d
	je	.label_371
	call	alloc_obuf
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + obuf]]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_367:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	lea	rsi, [rsi]
	test	r13, r13
	mov	rdx, r12
	jne	.label_378
	mov	rdx, qword ptr [rbx]
.label_378:
	mov	edi, r14d
	mov	rsi, rbp
	call	rax
	test	rax, rax
	mov	rbp, rbp
	js	.label_373
	lea	rsi, [rsi]
	je	.label_385
	nop	
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_364
	dec	r13
	mov	rbp, rbp
	jne	.label_367
	nop	
	cmp	qword ptr [rbx], 0
	mov	r13d, 0
	jne	.label_367
	jmp	.label_363
.label_371:
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + ibuf]]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_372
	mov	rbp,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + page_size]]
	lea	rsi, [rsi]
	lea	rdi, [rbp + r15*2 + 3]
	call	malloc
	test	rax, rax
	je	.label_382
	lea	rdi, [rdi]
	lea	rbp, [rax + r15 + 1]
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbp
	lea	rsi, [rsi]
	div	r15
	sub	rbp, rdx
	mov	qword ptr [word ptr [rip + ibuf]],  rbp
.label_372:
	mov	rbp, rbp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_374:
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	lea	rdi, [rdi]
	test	r13, r13
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rbp, rbp
	jne	.label_366
	nop	
	mov	rdx, qword ptr [rbx]
.label_366:
	xor	edi, edi
	nop	
	mov	rsi, rbp
	call	rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	js	.label_373
	nop	
	je	.label_384
	add	rax,  qword ptr [word ptr [rip + input_offset]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	mov	rsp, rsp
	jae	.label_377
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
.label_377:
	test	r13, r13
	je	.label_364
	dec	r13
	lea	rsi, [rsi]
	jne	.label_374
	cmp	qword ptr [rbx], 0
	lea	rdi, [rdi]
	mov	r13d, 0
	lea	rdi, [rdi]
	jne	.label_374
	jmp	.label_363
.label_364:
	lea	rdi, [rdi]
	mov	qword ptr [rbx], 0
	lea	rsi, [rsi]
	xor	r15d, r15d
	jmp	.label_363
.label_385:
	mov	r15, r13
	jmp	.label_363
.label_384:
	mov	r15, r13
	jmp	.label_363
.label_368:
	mov	rcx,  qword ptr [word ptr [rip + input_offset]]
	mov	rbp, rbp
	xor	eax, eax
.label_370:
	mov	rbp, rbp
	add	rcx, r15
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + input_offset]],  rcx
	lea	rsi, [rsi]
	jae	.label_376
	nop	
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
.label_376:
	mov	r15, rax
.label_363:
	nop	
	mov	rax, r15
	add	rsp, 0x2b8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_373:
	test	r14d, r14d
	nop	
	jne	.label_383
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x2a8]
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x2b0]
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	rsp, rsp
	call	nl_error
	test	byte ptr [byte ptr [rip + label_65]],  1
	je	.label_379
	mov	rsp, rsp
	call	print_stats
	mov	rbp, rbp
	call	quit
.label_383:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.114
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rsp + 0x2b0]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, rbx
	call	nl_error
.label_379:
	call	quit
.label_369:
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	test	eax, eax
	mov	ebx, 0x4b
	mov	rbp, rbp
	cmovne	ebx, eax
	xor	edi, edi
	nop	
	test	r14d, r14d
	lea	rsi, [rsi]
	jne	.label_375
	mov	esi, OFFSET FLAT:.str.113
	jmp	.label_381
.label_375:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.114
.label_381:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	nop	
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	nop	
	call	nl_error
	mov	rsp, rsp
	call	quit
.label_365:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x2a8]
	nop	
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi, rbp
	mov	rbp, rax
	nop	
	mov	edi, 4
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	nl_error
.label_382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.117
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x10]
	mov	rbp, rbp
	mov	edx, 0x1f1
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	rbx, rax
	nop	
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, rbp
	nop	
	mov	r8, rbx
	call	nl_error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4064f0

	.globl iwrite
	.type iwrite, @function
iwrite:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	nop	
	test	ah, 0x40
	nop	
	je	.label_392
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + output_blocksize]],  r12
	mov	rbp, rbp
	jbe	.label_392
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 3
	xor	eax, eax
	mov	rbp, rbp
	call	rpl_fcntl
	mov	ecx, eax
	nop	
	and	ecx, 0xffffbfff
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 4
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	je	.label_399
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	mov	rbp, rbp
	je	.label_399
	nop	
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.116
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	nop	
	xor	edi, edi
	nop	
	mov	esi, 3
	nop	
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	nl_error
.label_399:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + o_nocache_eof]],  1
	mov	rsi,  qword ptr [word ptr [rip + invalidate_cache.output_offset]]
	cmp	rsi, -1
	lea	rdi, [rdi]
	je	.label_391
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + cache_round.o_pending]]
	mov	rsp, rsp
	test	rsi, rsi
	jns	.label_400
	mov	edi, 1
	xor	esi, esi
	mov	edx, 1
	call	lseek
	nop	
	mov	rsi, rax
	mov	qword ptr [word ptr [rip + invalidate_cache.output_offset]],  rsi
	test	rsi, rsi
	js	.label_391
.label_400:
	sub	rsi, rbx
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rsi
	nop	
	div	qword ptr [word ptr [rip + page_size]]
	sub	rsi, rdx
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	xor	edx, edx
	mov	ecx, 4
	mov	rsp, rsp
	call	posix_fadvise
.label_391:
	or	byte ptr [byte ptr [rip + label_65]],  0x80
.label_392:
	nop	
	lea	rbp, [r12 - 1]
	xor	eax, eax
.label_398:
	mov	rbp, rbp
	mov	r15, rax
	cmp	r15, r12
	mov	rbp, rbp
	jae	.label_397
	nop	
	lea	r13, [r14 + r15]
	mov	rbx, r12
	sub	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_396:
	call	process_signals
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  0
	mov	rbp, rbp
	test	byte ptr [byte ptr [rip + label_389]],  1
	je	.label_390
	test	r12, r12
	mov	rax, rbp
	mov	rsi, r14
	je	.label_393
	nop	word ptr [rax + rax]
.label_395:
	mov	rdx, rax
	cmp	byte ptr [rsi], 0
	lea	rsi, [rsi]
	jne	.label_390
	test	rdx, rdx
	je	.label_393
	lea	rdi, [rdi]
	inc	rsi
	lea	rax, [rdx - 1]
	nop	
	test	dl, 0xf
	nop	
	jne	.label_395
	mov	rdi, r14
	call	memcmp
	test	eax, eax
	nop	
	jne	.label_390
	nop	
.label_393:
	mov	edi, 1
	mov	edx, 1
	mov	rsi, r12
	mov	rsp, rsp
	call	lseek
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_386
	test	r12, r12
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  1
	mov	rax, r12
	nop	
	jne	.label_387
	jmp	.label_390
.label_386:
	and	byte ptr [byte ptr [rip + label_389]],  0xfe
	nop	word ptr cs:[rax + rax]
.label_390:
	mov	edi, 1
	mov	rsp, rsp
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	write
.label_387:
	test	rax, rax
	mov	rbp, rbp
	jns	.label_394
	call	__errno_location
	cmp	dword ptr [rax], 4
	lea	rsi, [rsi]
	je	.label_396
	jmp	.label_397
	nop	word ptr cs:[rax + rax]
.label_394:
	lea	rsi, [rsi]
	test	rax, rax
	lea	rax, [rax + r15]
	nop	
	jne	.label_398
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x1c
.label_397:
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_388
	test	byte ptr [byte ptr [rip + o_nocache]],  1
	lea	rsi, [rsi]
	je	.label_388
	nop	
	mov	edi, 1
	mov	rsi, r15
	mov	rsp, rsp
	call	invalidate_cache
.label_388:
	mov	rax, r15
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067e0

	.globl quit
	.type quit, @function
quit:
	mov	rbp, rbp
	push	rax
	call	cleanup
	lea	rdi, [rdi]
	call	print_stats
	mov	rsp, rsp
	call	process_signals
	nop	
	mov	edi, 1
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406810

	.globl alloc_obuf
	.type alloc_obuf, @function
alloc_obuf:
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x290
	cmp	qword ptr [word ptr [rip + obuf]],  0
	jne	.label_403
	mov	rbp, rbp
	test	byte ptr [byte ptr [rip + label_65]],  8
	jne	.label_405
	nop	
	mov	rcx,  qword ptr [word ptr [rip + ibuf]]
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_404
	mov	r15,  qword ptr [word ptr [rip + input_blocksize]]
	nop	
	mov	rbx,  qword ptr [word ptr [rip + page_size]]
	lea	rdi, [r15 + rbx*2 + 3]
	call	malloc
	nop	
	test	rax, rax
	je	.label_401
	lea	rcx, [rax + rbx + 1]
	xor	edx, edx
	mov	rax, rcx
	div	rbx
	nop	
	sub	rcx, rdx
	mov	qword ptr [word ptr [rip + ibuf]],  rcx
	jmp	.label_404
.label_405:
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rbx,  qword ptr [word ptr [rip + page_size]]
	nop	
	lea	rdi, [r15 + rbx - 1]
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	je	.label_402
	nop	
	lea	rcx, [rax + rbx - 1]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rdi, [rdi]
	div	rbx
	sub	rcx, rdx
.label_404:
	mov	qword ptr [word ptr [rip + obuf]],  rcx
.label_403:
	lea	rsi, [rsi]
	add	rsp, 0x290
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.118
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rdi, [rdi]
	jmp	.label_406
.label_401:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.117
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + input_blocksize]]
.label_406:
	nop	
	lea	rsi, [rsp]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	rbp, rbp
	mov	r8, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r14
	mov	rcx, r15
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406970

	.globl copy_with_block
	.type copy_with_block, @function
copy_with_block:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	je	.label_411
	nop	
	mov	rbp,  qword ptr [word ptr [rip + col]]
	lea	rsi, [rsi]
	mov	r15d, 0x25
	nop	dword ptr [rax]
.label_410:
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	and	al, 1
	mov	edx, 0xa
	cmovne	edx, r15d
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	je	.label_407
	lea	rsi, [rsi]
	cmp	rbp, rax
	lea	rdi, [rdi]
	jne	.label_414
	mov	rbp, rbp
	inc	qword ptr [word ptr [rip + r_truncate]]
	jmp	.label_408
	nop	word ptr cs:[rax + rax]
.label_412:
	inc	rbp
.label_407:
	nop	
	cmp	rbp, rax
	mov	ecx, 0
	nop	
	jae	.label_409
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
	and	cl, 1
	mov	cl, 0x40
	nop	
	jne	.label_413
	mov	cl, 0x20
.label_413:
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rdx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdi + rdx], cl
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_412
	call	write_output
	mov	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	nop	
	jmp	.label_412
	nop	word ptr [rax + rax]
.label_414:
	jae	.label_408
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rax + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rax], cl
	lea	rsi, [rsi]
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rdi, [rdi]
	jb	.label_408
	call	write_output
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + col]]
	nop	
.label_408:
	lea	rdi, [rdi]
	inc	rbp
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_409:
	mov	qword ptr [word ptr [rip + col]],  rcx
	inc	rbx
	dec	r14
	lea	rsi, [rsi]
	mov	rbp, rcx
	mov	rbp, rbp
	jne	.label_410
.label_411:
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ae0

	.globl copy_with_unblock
	.type copy_with_unblock, @function
copy_with_unblock:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	mov	r15, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	test	r15, r15
	mov	rsp, rsp
	je	.label_420
	mov	ebp, 0x40
	nop	
.label_417:
	mov	rsp, rsp
	mov	r12b, byte ptr [r14 + rbx]
	mov	rax,  qword ptr [word ptr [rip + col]]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [word ptr [rip + col]],  rcx
	cmp	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	jae	.label_416
	movsx	eax, r12b
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
	nop	
	and	cl, 1
	mov	rbp, rbp
	mov	edx, 0x20
	cmovne	edx, ebp
	cmp	eax, edx
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
	jne	.label_425
	lea	rsi, [rsi]
	inc	rax
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  rax
	mov	rsp, rsp
	jmp	.label_419
	nop	dword ptr [rax]
.label_416:
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  0
	mov	qword ptr [word ptr [rip + col]],  0
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	and	al, 1
	nop	
	mov	al, 0x25
	jne	.label_415
	mov	al, 0xa
.label_415:
	mov	rbp, rbp
	dec	rbx
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	nop	
	lea	rdx, [rcx + 1]
	nop	
	mov	qword ptr [word ptr [rip + oc]],  rdx
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	rbp, rbp
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rbp, rbp
	jae	.label_422
	mov	rsp, rsp
	jmp	.label_419
	nop	word ptr [rax + rax]
.label_425:
	mov	rbp, rbp
	test	rax, rax
	jne	.label_423
	mov	rsp, rsp
	jmp	.label_426
	nop	dword ptr [rax]
.label_421:
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
.label_423:
	lea	rsi, [rsi]
	test	cl, 1
	mov	cl, 0x40
	lea	rdi, [rdi]
	jne	.label_424
	mov	cl, 0x20
.label_424:
	mov	rdx,  qword ptr [word ptr [rip + oc]]
	nop	
	lea	rsi, [rdx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdi + rdx], cl
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_418
	call	write_output
	mov	rax,  qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
.label_418:
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  rax
	jne	.label_421
.label_426:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + oc]]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + oc]],  rcx
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rax], r12b
	cmp	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rdi, [rdi]
	jb	.label_419
.label_422:
	call	write_output
.label_419:
	inc	rbx
	cmp	rbx, r15
	jb	.label_417
.label_420:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406cb0

	.globl write_output
	.type write_output, @function
write_output:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	call	iwrite
	lea	rsi, [rsi]
	mov	rbx, rax
	add	qword ptr [word ptr [rip + w_bytes]],  rbx
	cmp	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	jne	.label_427
	inc	qword ptr [word ptr [rip + w_full]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + oc]],  0
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	nop	
	ret	
.label_427:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rbp, rbp
	mov	edi, 4
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, r14d
	nop	
	mov	rdx, rbp
	mov	rsp, rsp
	call	nl_error
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_428
	inc	qword ptr [word ptr [rip + w_partial]]
.label_428:
	call	quit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d80

	.globl skip_via_lseek
	.type skip_via_lseek, @function
skip_via_lseek:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x60
	mov	r15d, ecx
	mov	r12, rdx
	mov	rsp, rsp
	mov	ebp, esi
	nop	
	mov	r14, rdi
	nop	
	lea	rdx, [rsp + 0x30]
	mov	esi, 0x80306d02
	xor	eax, eax
	mov	edi, ebp
	call	ioctl
	lea	rdi, [rdi]
	mov	ebx, eax
	mov	rsp, rsp
	mov	edi, ebp
	mov	rsi, r12
	nop	
	mov	edx, r15d
	call	lseek
	mov	r15, rax
	mov	rsp, rsp
	test	ebx, ebx
	jne	.label_429
	test	r15, r15
	js	.label_429
	lea	rdx, [rsp]
	mov	esi, 0x80306d02
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	mov	rsp, rsp
	call	ioctl
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_429
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jne	.label_429
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	cmp	eax, ecx
	jne	.label_429
	shr	rcx, 0x20
	shr	rax, 0x20
	mov	rsp, rsp
	cmp	eax, ecx
	jne	.label_429
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_430
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.115
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp]
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, r14
	mov	rbp, rbp
	call	nl_error
.label_430:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	r15, -1
.label_429:
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ec0

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_431
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_432
	test	cl, cl
	mov	rsp, rsp
	jne	.label_432
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_432
.label_431:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_432
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_432:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f50
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406f60
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f70

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_434
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_433
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_433
.label_434:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_436
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_433:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_435
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_436:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_435:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407070

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	nop	
	xor	eax, eax
	nop	
	mov	rdi, rsi
	nop	
	mov	esi, edx
	nop	
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_437
	test	ebx, ebx
	nop	
	js	.label_437
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	nop	
	mov	r14d, eax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_438
.label_437:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_438:
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070f0

	.globl gethrxtime
	.type gethrxtime, @function
gethrxtime:
	mov	rbp, rbp
	sub	rsp, 0x18
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	mov	edi, 1
	call	clock_gettime
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_439
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	gettime
.label_439:
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	mov	rsp, rsp
	sar	rdx, 0x1a
	nop	
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	add	rdx, qword ptr [rsp + 8]
	mov	rsp, rsp
	sub	rcx, rax
	imul	rax, rdx, 0x3b9aca00
	add	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x18
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407180

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	16
	#Procedure 0x407190
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	sub	rsp, 0x18
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4071c0

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x148
	mov	r12, r8
	mov	rbp, rbp
	mov	r13, rcx
	mov	r14d, edx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], r15
	mov	qword ptr [rsp + 0x120], rdi
	mov	eax, r14d
	and	eax, 3
	mov	dword ptr [rsp + 0x84], eax
	mov	eax, r14d
	and	eax, 0x20
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xf4], eax
	mov	eax, 0x400
	lea	rsi, [rsi]
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0xdc], ecx
	lea	rdi, [rdi]
	call	localeconv
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	mov	rbp, rbp
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0xb8], rcx
	mov	eax, OFFSET FLAT:.str_3
	cmovb	rax, rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x130], rax
	mov	rsp, rsp
	mov	rbp, qword ptr [rbx + 8]
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf8], rax
	mov	rdi, rbp
	call	strlen
	lea	rdi, [rdi]
	mov	rsi, r12
	nop	
	cmp	rax, 0x11
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str_0
	cmovb	rax, rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	nop	
	lea	rbx, [r15 + 0x287]
	mov	rbp, rbp
	cmp	rsi, r13
	lea	rdi, [rdi]
	jbe	.label_481
	nop	
	test	r13, r13
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rsp, rsp
	je	.label_445
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	rbp, rbp
	div	r13
	mov	rsp, rsp
	test	rdx, rdx
	jne	.label_445
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rsi
	div	r13
	mov	rbp, rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, rdi
	lea	rsi, [rsi]
	div	rsi
	mov	r15, rax
	nop	
	add	rdx, rdx
	nop	
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	add	rdx, rdx
	mov	rsp, rsp
	setne	al
	cmp	rsi, rdx
	sbb	edi, edi
	and	edi, 1
	nop	
	or	edi, 2
	cmp	rdx, rsi
	mov	rsi, rbp
	nop	
	movzx	ebp, al
	cmovae	ebp, edi
	jmp	.label_492
.label_481:
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r13
	div	rsi
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rbp, rbp
	jne	.label_445
	mov	rsp, rsp
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r13
	div	rsi
	mov	rcx, rax
	mov	rsp, rsp
	mov	r15, rcx
	lea	rsi, [rsi]
	imul	r15, rdi
	xor	edx, edx
	mov	rax, r15
	div	rcx
	mov	rsp, rsp
	cmp	rax, rdi
	lea	rdi, [rdi]
	mov	ecx, 0
	jne	.label_445
.label_492:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x110], rbx
	mov	rbp, rbp
	mov	r14d, r8d
	nop	
	and	r14d, 0x10
	mov	r13d, 0xffffffff
	nop	
	je	.label_485
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0xdc]
	nop	
	mov	edi, ebx
	xor	r13d, r13d
	mov	rbp, rbp
	cmp	rdi, r15
	mov	rbp, rbp
	jbe	.label_489
	nop	
	mov	r12, qword ptr [rsp + 0x110]
	jmp	.label_467
.label_445:
	mov	qword ptr [rsp + 0xe8], rsi
	mov	rbp, rbp
	test	rsi, rsi
	setns	al
	lea	rsi, [rsi]
	movzx	eax, al
	fild	qword ptr [rsp + 0xe8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_443]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rdi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_443]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r13
	lea	rsi, [rsi]
	test	r13, r13
	setns	al
	nop	
	movzx	eax, al
	fild	qword ptr [rsp + 0x78]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_443]]
	fdivrp	st(2)
	mov	rsp, rsp
	fmulp	st(1)
	nop	
	test	r8b, 0x10
	lea	rsi, [rsi]
	jne	.label_444
	nop	
	mov	ecx, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	cmp	ecx, 1
	lea	rsi, [rsi]
	je	.label_479
	mov	rsp, rsp
	fld	xword ptr [word ptr [rip + label_441]]
	fucomip	st(1)
	mov	r15, qword ptr [rsp + 0x68]
	jbe	.label_484
	mov	qword ptr [rsp + 0x140], rsi
	nop	
	mov	dword ptr [rsp + 0x120], r8d
	fld	dword ptr [dword ptr [rip + label_449]]
	fld	st(1)
	mov	rsp, rsp
	fsub	st(1)
	mov	rsp, rsp
	fnstcw	word ptr [rsp + 0x82]
	lea	rdi, [rdi]
	mov	ax, word ptr [rsp + 0x82]
	lea	rdi, [rdi]
	mov	word ptr [rsp + 0x82], 0xc7f
	mov	rsp, rsp
	fldcw	word ptr [rsp + 0x82]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x82], ax
	lea	rdi, [rdi]
	fistp	qword ptr [rsp + 0x60]
	fldcw	word ptr [rsp + 0x82]
	mov	rbp, rbp
	fnstcw	word ptr [rsp + 0x10e]
	nop	
	mov	ax, word ptr [rsp + 0x10e]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x10e], 0xc7f
	fldcw	word ptr [rsp + 0x10e]
	lea	rsi, [rsi]
	mov	word ptr [rsp + 0x10e], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0x18]
	nop	
	fldcw	word ptr [rsp + 0x10e]
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rax, qword ptr [rsp + 0x60]
	fxch	st(1)
	nop	
	fucomi	st(1)
	nop	
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	test	ecx, ecx
	nop	
	sete	cl
	mov	qword ptr [rsp + 0x100], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	lea	rdi, [rdi]
	fild	qword ptr [rsp + 0x100]
	mov	rsp, rsp
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_443]]
	lea	rdi, [rdi]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	nop	
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	mov	rbp, rbp
	and	bl, cl
	movzx	ecx, bl
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	add	rcx, rax
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rsp, rsp
	setns	al
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rsp, rsp
	fild	qword ptr [rsp + 0xe0]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_443]]
	jmp	.label_471
.label_444:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x140], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0xdc]
	nop	
	mov	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	lea	rdi, [rdi]
	fld1	
	nop	
	xor	r13d, r13d
	lea	rsi, [rsi]
	fild	qword ptr [rsp + 0x90]
	fldz	
	nop	word ptr cs:[rax + rax]
.label_468:
	fstp	st(0)
	mov	rsp, rsp
	fmul	st(1), st(0)
	inc	r13d
	fld	st(0)
	mov	rsp, rsp
	fmul	st(2)
	cmp	r13d, 7
	lea	rsi, [rsi]
	jg	.label_462
	lea	rdi, [rdi]
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	nop	
	fldz	
	mov	rbp, rbp
	jae	.label_468
.label_462:
	fstp	st(1)
	fstp	st(0)
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x120], r8d
	lea	rdi, [rdi]
	fdivp	st(1)
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rsp + 0x84]
	mov	rsp, rsp
	cmp	r14d, 1
	mov	rbp, rbp
	fld	st(0)
	mov	r15, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0xf4]
	je	.label_472
	fstp	st(0)
	lea	rdi, [rdi]
	fld	xword ptr [word ptr [rip + label_441]]
	mov	rbp, rbp
	fucomip	st(1)
	fld	st(0)
	jbe	.label_472
	nop	
	fstp	st(0)
	fld	dword ptr [dword ptr [rip + label_449]]
	mov	rbp, rbp
	fld	st(1)
	mov	rsp, rsp
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x12e]
	mov	rsp, rsp
	mov	ax, word ptr [rsp + 0x12e]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x12e], 0xc7f
	fldcw	word ptr [rsp + 0x12e]
	mov	word ptr [rsp + 0x12e], ax
	fistp	qword ptr [rsp + 0xc0]
	fldcw	word ptr [rsp + 0x12e]
	fnstcw	word ptr [rsp + 0x56]
	lea	rsi, [rsi]
	mov	ax, word ptr [rsp + 0x56]
	lea	rsi, [rsi]
	mov	word ptr [rsp + 0x56], 0xc7f
	fldcw	word ptr [rsp + 0x56]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x56], ax
	lea	rsi, [rsi]
	fld	st(1)
	fistp	qword ptr [rsp + 0x98]
	fldcw	word ptr [rsp + 0x56]
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, qword ptr [rsp + 0xc0]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0x98]
	test	r14d, r14d
	lea	rsi, [rsi]
	sete	cl
	mov	qword ptr [rsp + 0xd0], rax
	nop	
	test	rax, rax
	setns	dl
	nop	
	movzx	edx, dl
	fild	qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_443]]
	fucomip	st(1)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	mov	rbp, rbp
	movzx	ecx, bl
	mov	rbp, rbp
	mov	rbx, rsi
	add	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x58]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_443]]
.label_472:
	fxch	st(1)
	fstp	xword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.3_0
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	__sprintf_chk
	mov	rdi, r15
	mov	rbp, rbp
	call	strlen
	mov	ecx, ebp
	shr	ecx, 5
	mov	rbp, rbp
	xor	ecx, 1
	or	rcx, 2
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	add	rcx, rdx
	cmp	rcx, rax
	mov	rsp, rsp
	jb	.label_447
	inc	rdx
	mov	ecx, dword ptr [rsp + 0x120]
	test	cl, 8
	jne	.label_460
	nop	
	mov	r14, rdx
	nop	
	jmp	.label_478
.label_485:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x110]
	jmp	.label_467
.label_479:
	mov	qword ptr [rsp + 0x140], rsi
	mov	dword ptr [rsp + 0x120], r8d
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	jmp	.label_471
.label_484:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x140], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x120], r8d
.label_471:
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	esi, 1
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.2_0
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	nop	
	mov	r13d, 0xffffffff
	jmp	.label_478
.label_460:
	movzx	ecx, byte ptr [rax + r15 - 1]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_487
.label_447:
	fld	xword ptr [rsp + 0x110]
	fmul	dword ptr [dword ptr [rip + label_463]]
	nop	
	cmp	r14d, 1
	lea	rsi, [rsi]
	je	.label_442
	nop	
	fld	xword ptr [word ptr [rip + label_441]]
	fucomip	st(1)
	mov	rbp, rbp
	jbe	.label_442
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_449]]
	mov	rsp, rsp
	fld	st(1)
	fsub	st(1)
	lea	rdi, [rdi]
	fnstcw	word ptr [rsp + 0xa6]
	mov	ax, word ptr [rsp + 0xa6]
	nop	
	mov	word ptr [rsp + 0xa6], 0xc7f
	fldcw	word ptr [rsp + 0xa6]
	mov	word ptr [rsp + 0xa6], ax
	lea	rdi, [rdi]
	fistp	qword ptr [rsp + 0x10]
	mov	rsp, rsp
	fldcw	word ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	fnstcw	word ptr [rsp + 0x13e]
	mov	rsp, rsp
	mov	ax, word ptr [rsp + 0x13e]
	mov	word ptr [rsp + 0x13e], 0xc7f
	nop	
	fldcw	word ptr [rsp + 0x13e]
	mov	word ptr [rsp + 0x13e], ax
	fld	st(1)
	nop	
	fistp	qword ptr [rsp + 0x88]
	mov	rbp, rbp
	fldcw	word ptr [rsp + 0x13e]
	nop	
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	fxch	st(1)
	mov	rbp, rbp
	fucomi	st(1)
	lea	rdi, [rdi]
	fstp	st(1)
	lea	rdi, [rdi]
	cmovb	rax, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	test	r14d, r14d
	sete	cl
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	test	rax, rax
	setns	dl
	lea	rsi, [rsi]
	movzx	edx, dl
	fild	qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_443]]
	fucomip	st(1)
	nop	
	fstp	st(0)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	lea	rdi, [rdi]
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0xb0], rcx
	mov	rbp, rbp
	setns	al
	mov	rbp, rbp
	movzx	eax, al
	fild	qword ptr [rsp + 0xb0]
	nop	
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_443]]
.label_442:
	fdiv	dword ptr [dword ptr [rip + label_463]]
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	rbp, rbp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.2_0
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	jmp	.label_478
.label_489:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x140], rsi
	nop	word ptr cs:[rax + rax]
.label_446:
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	mov	rax, r15
	nop	
	div	rdi
	nop	
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	rbp, rbp
	mov	esi, ebp
	nop	
	sar	esi, 1
	xor	edx, edx
	lea	rsi, [rsi]
	mov	r15, rax
	mov	eax, ecx
	div	ebx
	nop	
	lea	edx, [rsi + rdx*2]
	cmp	edx, ebx
	mov	rbp, rbp
	mov	ecx, eax
	jae	.label_482
	add	edx, ebp
	lea	rsi, [rsi]
	setne	al
	movzx	ebp, al
	nop	
	jmp	.label_459
	nop	word ptr cs:[rax + rax]
.label_482:
	add	edx, ebp
	cmp	ebx, edx
	lea	rsi, [rsi]
	sbb	ebp, ebp
	and	ebp, 1
	nop	
	or	ebp, 2
.label_459:
	nop	
	inc	r13d
	cmp	r13d, 7
	mov	rsp, rsp
	jg	.label_440
	lea	rdi, [rdi]
	cmp	rdi, r15
	lea	rsi, [rsi]
	jbe	.label_446
.label_440:
	cmp	r15, 9
	ja	.label_450
	mov	eax, dword ptr [rsp + 0x84]
	cmp	eax, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	jne	.label_452
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	nop	
	cmp	eax, 2
	lea	rsi, [rsi]
	ja	.label_457
	mov	rsp, rsp
	jmp	.label_464
.label_487:
	mov	r14, rdx
.label_478:
	mov	qword ptr [rsp + 0x68], r15
	mov	rbp, rbx
	mov	rsp, rsp
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	memmove
	mov	r12, rbx
	sub	r12, r14
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rsp + 0x120]
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xf4]
	mov	rbp, rbp
	jmp	.label_473
.label_450:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	jmp	.label_480
.label_452:
	nop	
	test	eax, eax
	jne	.label_464
	mov	rsp, rsp
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_464
.label_457:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_464
	inc	r15
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	cmp	r15, 9
	mov	rbp, rbp
	mov	ebp, 0
	ja	.label_486
.label_464:
	nop	
	test	r8b, 8
	lea	rdi, [rdi]
	je	.label_488
	test	ecx, ecx
	jne	.label_488
	mov	r12, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	jmp	.label_470
.label_488:
	lea	rdi, [rdi]
	add	ecx, 0x30
	nop	
	lea	r12, [rdx + 0x286]
	mov	byte ptr [rdx + 0x286], cl
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	sub	r12, rdx
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	mov	rsi, qword ptr [rsp + 0x130]
	mov	ebx, r8d
	call	memcpy
	mov	rsp, rsp
	mov	r8d, ebx
	xor	ebp, ebp
.label_470:
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_480:
	mov	rsi, qword ptr [rsp + 0x140]
.label_467:
	mov	eax, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_461
	cmp	eax, 1
	jne	.label_451
	lea	rsi, [rsi]
	movsxd	rax, ebp
	nop	
	mov	edx, r15d
	and	edx, 1
	add	rdx, rax
	nop	
	setne	al
	movzx	eax, al
	nop	
	add	eax, ecx
	nop	
	cmp	eax, 5
	jle	.label_451
	lea	rsi, [rsi]
	jmp	.label_454
.label_461:
	add	ecx, ebp
	nop	
	jle	.label_451
.label_454:
	inc	r15
	mov	eax, dword ptr [rsp + 0xdc]
	cmp	r13d, 7
	nop	
	jg	.label_451
	test	r14d, r14d
	lea	rsi, [rsi]
	je	.label_451
	cmp	r15, rax
	jne	.label_451
	mov	qword ptr [rsp + 0x140], rsi
	inc	r13d
	mov	r15d, 1
	mov	rbp, rbp
	test	r8b, 8
	jne	.label_483
	mov	byte ptr [r12 - 1], 0x30
	dec	r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	sub	r12, rdx
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x130]
	mov	ebx, r8d
	lea	rsi, [rsi]
	call	memcpy
	mov	r8d, ebx
	mov	r15d, 1
	jmp	.label_483
.label_451:
	mov	qword ptr [rsp + 0x140], rsi
.label_483:
	mov	rbx, qword ptr [rsp + 0x110]
	nop	
	mov	edi, dword ptr [rsp + 0xf4]
	lea	rdi, [rdi]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, rbp
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_456:
	lea	rdi, [rdi]
	mov	rax, r15
	lea	rdi, [rdi]
	mul	rcx
	mov	eax, edx
	mov	rbp, rbp
	shr	eax, 2
	lea	rsi, [rsi]
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	lea	rsi, [rsi]
	mov	esi, r15d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	lea	rsi, [rsi]
	dec	rbp
	mov	rsp, rsp
	shr	rdx, 3
	cmp	r15, 9
	mov	r15, rdx
	ja	.label_456
.label_473:
	nop	
	test	r8b, 4
	jne	.label_475
	mov	rsp, rsp
	mov	r12, rbp
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	jmp	.label_476
.label_475:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x84], r13d
	mov	dword ptr [rsp + 0x120], r8d
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x110], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xf4], edi
	mov	rbp, rbp
	mov	rbx, r12
	mov	rsp, rsp
	sub	rbx, rbp
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x70]
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x20]
	mov	rsi, rbp
	nop	
	mov	rdx, rbx
	call	memcpy
	lea	rdi, [rdi]
	mov	r15, r14
	mov	rbp, rbp
	neg	r15
	mov	rsp, rsp
	mov	rbp, -1
	mov	r13, qword ptr [rsp + 0xf8]
	mov	rsp, rsp
	jmp	.label_490
	nop	dword ptr [rax]
.label_465:
	add	r12, r15
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	rdx, r14
	nop	
	call	memcpy
.label_490:
	movzx	eax, byte ptr [r13]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_455
	nop	
	cmp	eax, 0x7f
	cmovae	rax, rbx
	mov	rbp, rbp
	inc	r13
	lea	rsi, [rsi]
	mov	rbp, rax
.label_455:
	cmp	rbx, rbp
	cmovb	rbp, rbx
	mov	rsp, rsp
	sub	r12, rbp
	mov	rax, rbx
	mov	rbp, rbp
	sub	rax, rbp
	lea	rsi, [rsi]
	lea	rsi, [rsp + rax + 0x20]
	mov	rdi, r12
	mov	rdx, rbp
	call	memcpy
	nop	
	sub	rbx, rbp
	jne	.label_465
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xf4]
	mov	rbx, qword ptr [rsp + 0x110]
	mov	r8d, dword ptr [rsp + 0x120]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 0x84]
.label_476:
	nop	
	test	r8b, r8b
	mov	rbp, rbp
	jns	.label_469
	test	r13d, r13d
	lea	rdi, [rdi]
	jns	.label_453
	xor	r13d, r13d
	cmp	rsi, 2
	jb	.label_453
	mov	eax, dword ptr [rsp + 0xdc]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, 1
	nop	
.label_491:
	mov	r13d, 8
	cmp	ecx, 7
	je	.label_453
	mov	rbp, rbp
	inc	ecx
	nop	
	imul	rdx, rax
	cmp	rdx, rsi
	mov	r13d, ecx
	jb	.label_491
.label_453:
	nop	
	mov	eax, r8d
	and	eax, 0x100
	mov	rbp, rbp
	test	r8b, 0x40
	lea	rsi, [rsi]
	je	.label_448
	mov	rbp, rbp
	mov	ecx, r13d
	mov	rbp, rbp
	or	ecx, eax
	mov	rsp, rsp
	je	.label_448
	mov	rbx, qword ptr [rsp + 0x68]
	mov	byte ptr [rbx + 0x287], 0x20
	mov	rsp, rsp
	add	rbx, 0x288
.label_448:
	lea	rsi, [rsi]
	test	r13d, r13d
	je	.label_458
	test	edi, edi
	lea	rdi, [rdi]
	jne	.label_477
	mov	cl, 0x6b
	cmp	r13d, 1
	je	.label_466
.label_477:
	lea	rsi, [rsi]
	movsxd	rcx, r13d
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_466:
	nop	
	mov	byte ptr [rbx], cl
	lea	rdi, [rdi]
	inc	rbx
.label_458:
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_469
	mov	rsp, rsp
	test	edi, edi
	je	.label_474
	test	r13d, r13d
	lea	rsi, [rsi]
	je	.label_474
	mov	byte ptr [rbx], 0x69
	inc	rbx
.label_474:
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 0x42
	mov	rsp, rsp
	inc	rbx
.label_469:
	mov	byte ptr [rbx], 0
	mov	rax, r12
	mov	rsp, rsp
	add	rsp, 0x148
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_486:
	xor	ebp, ebp
	mov	r12, qword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	mov	r15d, 0xa
	jmp	.label_480
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407fd0
	.globl human_options
	.type human_options, @function
human_options:

	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rbp
	mov	r14, rsi
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_497
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.4_0
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	test	rdi, rdi
	jne	.label_497
	mov	edi, OFFSET FLAT:.str.5_0
	call	getenv
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_498
.label_497:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmp	eax, 0x27
	sete	al
	cmovne	rbx, rdi
	mov	rbp, rbp
	movzx	ebp, al
	shl	ebp, 2
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:block_size_args
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	nop	
	js	.label_500
	cdqe	
	lea	rsi, [rsi]
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	lea	rdi, [rdi]
	mov	qword ptr [r15], 1
.label_496:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_494
.label_500:
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	rsp, rsp
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.6_0
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rcx, r15
	lea	rsi, [rsi]
	call	xstrtoumax
	test	eax, eax
	mov	rbp, rbp
	je	.label_502
	lea	rsi, [rsi]
	mov	dword ptr [r14], 0
.label_494:
	cmp	qword ptr [r15], 0
	mov	rsp, rsp
	jne	.label_493
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.9_0
	lea	rdi, [rdi]
	call	getenv
	test	rax, rax
	mov	eax, 0x200
	nop	
	mov	ecx, 0x400
	mov	rbp, rbp
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	mov	eax, 4
.label_493:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_502:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx]
	lea	rsi, [rsi]
	add	al, 0xd0
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	jb	.label_496
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_499:
	mov	rbp, rbp
	cmp	rax, rbx
	je	.label_501
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbx + 1]
	nop	
	inc	rbx
	add	cl, 0xd0
	movzx	ecx, cl
	nop	
	cmp	ecx, 0xa
	nop	
	jae	.label_499
	jmp	.label_496
.label_498:
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	lea	rsi, [rsi]
	mov	eax, 0x200
	mov	ecx, 0x400
	lea	rsi, [rsi]
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	lea	rsi, [rsi]
	xor	ebp, ebp
	jmp	.label_496
.label_501:
	mov	ecx, ebp
	mov	rbp, rbp
	or	ecx, 0x80
	or	ebp, 0x180
	mov	rbp, rbp
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x42
	cmove	ecx, ebp
	lea	rsi, [rsi]
	jne	.label_495
	nop	
	movzx	eax, byte ptr [rax - 2]
	lea	rdi, [rdi]
	cmp	eax, 0x69
	mov	rsp, rsp
	jne	.label_496
.label_495:
	lea	rsi, [rsi]
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_496
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081d0
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	lea	rdi, [rdi]
	test	al, al
	je	.label_503
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_503:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_505
	mov	edi, 2
	mov	edx, OFFSET FLAT:.str_4
	nop	
	mov	ecx, OFFSET FLAT:long_options
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rbp, rbp
	call	getopt_long
	mov	rsp, rsp
	cmp	eax, 0x68
	je	.label_504
	mov	rbp, rbp
	cmp	eax, 0x76
	mov	rbp, rbp
	jne	.label_505
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0x100]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, r12
	nop	
	mov	rdx, r15
	mov	rsp, rsp
	mov	rcx, r14
	nop	
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_504:
	xor	edi, edi
	call	rbx
.label_505:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408310

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xc8
	lea	rsi, [rsi]
	mov	r14, r8
	nop	
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	rbp, rbp
	test	al, al
	je	.label_507
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_507:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_0
	mov	edx, OFFSET FLAT:.str_4
	test	r9b, r9b
	cmovne	rdx, rax
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_510
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	cmp	eax, 0x68
	je	.label_506
	mov	rsp, rsp
	cmp	eax, 0x76
	nop	
	je	.label_508
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rdi, [rdi]
	jmp	.label_509
.label_506:
	lea	rdi, [rdi]
	xor	edi, edi
.label_509:
	call	rcx
.label_510:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xc8
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_508:
	lea	rdi, [rdi]
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xf8]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	lea	r8, [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	mov	rbp, rbp
	call	version_etc_va
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408460

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_511
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_513
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_513
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_512
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_512:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_513:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_511:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408550
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085a0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085c0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085e0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408650
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408670
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_514
	test	rdx, rdx
	nop	
	je	.label_514
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_514:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4086b0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408760

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_642:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_539
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_522]]
.label_887:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_888:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_576
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_576
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_601:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_592
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_592:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_601
.label_576:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_532
.label_880:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_532
.label_883:
	lea	rsi, [rsi]
	mov	al, 1
.label_881:
	lea	rsi, [rsi]
	mov	dl, 1
.label_884:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_626
	mov	rbp, rbp
	mov	cl, al
.label_626:
	mov	al, cl
.label_882:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_631
	test	rbp, rbp
	je	.label_635
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_636
.label_631:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_636
.label_885:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_515
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_520
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_524
.label_886:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_532
.label_635:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_636:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_532
.label_515:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_524
.label_520:
	nop	
	mov	r14d, 1
.label_524:
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_532:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_577
	nop	dword ptr [rax]
.label_571:
	mov	rsp, rsp
	inc	r15
.label_577:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_617
	cmp	r15, r10
	jne	.label_621
	jmp	.label_639
	nop	dword ptr [rax]
.label_617:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_624
.label_621:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_564
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_632
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_632
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_632:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_535
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_538
	nop	dword ptr [rax]
.label_564:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_538
	nop	word ptr cs:[rax + rax]
.label_535:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_575
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_538
	jmp	.label_528
.label_575:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_538:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_607
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_609]]
.label_921:
	test	r15, r15
	jne	.label_558
	jmp	.label_614
.label_925:
	xor	eax, eax
	cmp	r10, -1
	je	.label_616
	test	r15, r15
	jne	.label_618
	nop	
	cmp	r10, 1
	je	.label_614
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_566
.label_914:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_622
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_528
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_629
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_629
	cmp	r14, rbp
	jae	.label_634
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_634:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_537
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_537:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_519
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_519:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_629:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_533
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_533:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_540
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_547
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_551
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_557
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_557:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_567
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_567:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_566
.label_915:
	mov	bl, 0x62
	nop	
	jmp	.label_586
.label_916:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_578
.label_917:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_586
.label_918:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_586
.label_919:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_578
.label_922:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_591
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_597
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_602
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_602:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_615
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_615:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_627
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_627:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_591:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_566
.label_923:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_630
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_558
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_558
	nop	
	jmp	.label_641
.label_924:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_643
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_517
	jmp	.label_521
.label_607:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_561
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_543
.label_616:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_555
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_555
.label_614:
	mov	dl, 1
.label_920:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_560
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_566
.label_622:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_571
	jmp	.label_558
.label_643:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_578
.label_517:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_580
.label_578:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_585
.label_586:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_566
	jmp	.label_590
.label_561:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_595
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_595:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_608
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_599:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_623
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_588
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_594
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_620
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_536:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_526
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_534
.label_526:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_536
.label_620:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_542
	mov	rbp, rbp
	xor	r13d, r13d
.label_542:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_599
	jmp	.label_531
	nop	
.label_608:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_583
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_588
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_623
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_598
	xor	r13d, r13d
.label_598:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_608
	lea	rsi, [rsi]
	jmp	.label_531
.label_555:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_566
.label_630:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_558
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_558
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_558
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_625
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_628
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_546
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_640
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_640:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_516
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_516:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_605
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_605:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_518
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_518:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_566
.label_558:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_566:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_553
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_556
	nop	
	jmp	.label_559
	nop	dword ptr [rax + rax]
.label_553:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_559
.label_556:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_568
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_579
	nop	word ptr cs:[rax + rax]
.label_559:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_579:
	mov	bl, r12b
	je	.label_580
	jmp	.label_590
.label_568:
	mov	bl, r12b
.label_590:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_528
	cmp	r9d, 2
	jne	.label_563
	mov	al, dil
	and	al, 1
	jne	.label_563
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_600
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_600:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_606
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_606:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_610
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_610:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_563:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_613
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_613:
	mov	rbp, rbp
	inc	r14
	jmp	.label_593
.label_618:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_566
.label_540:
	xor	r13d, r13d
	jmp	.label_566
.label_547:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_566
.label_551:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_566
.label_588:
	xor	r13d, r13d
.label_583:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_531
.label_623:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_637
	lea	rax, [r11 + r15]
.label_525:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_549
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_525
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_531
.label_637:
	xor	r13d, r13d
	jmp	.label_531
.label_549:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_531
.label_594:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_531:
	mov	rbp, rbp
	mov	rbx, r10
.label_543:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_544
	test	cl, cl
	je	.label_544
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_566
.label_544:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_570
	nop	dword ptr [rax]
.label_562:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_570:
	mov	rsp, rsp
	test	cl, cl
	je	.label_581
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_584
	cmp	r14, rbp
	jae	.label_589
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_589:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_584:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_596
	nop	dword ptr [rax + rax]
.label_581:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_603
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_550
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_550
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_611
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_611:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_573
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_573:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_619
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_619:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_550:
	cmp	r14, rbp
	jae	.label_530
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_530:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_569
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_569:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_554
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_554:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_596:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_580
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_529
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_529
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_572
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_572:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_565
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_565:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_529:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_562
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_562
	nop	word ptr cs:[rax + rax]
.label_580:
	test	dil, 1
	je	.label_574
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_574
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_582
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_582:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_638
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_638:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_574:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_593:
	cmp	r14, rbp
	jae	.label_548
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_548:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_571
.label_625:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_566
.label_628:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_566
	nop	word ptr [rax + rax]
.label_639:
	nop	
	mov	rcx, r15
.label_624:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_612
	mov	rsp, rsp
	or	al, dl
	je	.label_604
.label_612:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_587
	mov	rsp, rsp
	or	al, dl
	jne	.label_587
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_633
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_587
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_642
.label_587:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_523
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_523
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_523
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_545:
	cmp	r14, rbp
	jae	.label_541
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_541:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_545
.label_523:
	cmp	r14, rbp
	jae	.label_552
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_552
.label_560:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_528
.label_534:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_528
.label_603:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_528
.label_604:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_528
.label_585:
	nop	
	mov	r9d, 2
.label_528:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_527:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_552:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_633:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_527
.label_597:
	mov	r9d, 2
	jmp	.label_528
.label_521:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_528
.label_641:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_528
.label_546:
	mov	r9d, 5
	nop	
	jmp	.label_528
.label_539:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c00
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d40
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_644
	mov	qword ptr [rax], rbx
.label_644:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409e90
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_645
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_649:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_649
.label_645:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_648
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_646]], OFFSET FLAT:slot0
.label_648:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_647
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_647:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f50
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x409f60

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_653
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_655
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_652
.label_655:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_656
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_651
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_651:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_652:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_650
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_654
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_654:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_650:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_653:
	lea	rdi, [rdi]
	call	abort
.label_656:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a1d0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a1e0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a210
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a240

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_657
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_657:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a2d0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_658
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_658:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a370

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_659
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_659:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a400
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_660
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_660:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a470
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_661]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_662]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_663]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a510
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_661]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_662]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_663]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_661]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_662]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_663]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a620
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_661]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_662]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_663]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a690

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_664
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_664:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a770
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_661]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_662]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_663]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_665
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_665
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_665:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a800
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_661]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_662]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_663]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_666
	test	rdx, rdx
	je	.label_666
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_666:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a890
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_661]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_662]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_663]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_667
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_667
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_667:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a930
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_661]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_662]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_663]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_668
	test	rsi, rsi
	je	.label_668
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_668:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a9d0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a9e0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40aa00

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa20

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa50

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_671
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_669
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_670
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_670
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_670
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_670
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_670
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_670
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_671
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_671
.label_669:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_670
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_670
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_670
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_670
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_670
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_670
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_672
.label_670:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_671:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_672:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_671
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_671
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40abc0

	.globl verror
	.type verror, @function
verror:
	mov	rbp, rbp
	push	rbp
	push	r14
	push	rbx
	mov	rsp, rsp
	mov	r14d, esi
	mov	rbp, rbp
	mov	ebp, edi
	mov	rdi, rdx
	mov	rsi, rcx
	mov	rbp, rbp
	call	xvasprintf
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_673
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	nop	
	mov	edi, ebp
	mov	esi, r14d
	mov	rcx, rbx
	call	error
	mov	rdi, rbx
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	free
.label_673:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac60
	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	nop	
	mov	r15d, ecx
	mov	rsp, rsp
	mov	rbp, rdx
	mov	r14d, esi
	mov	r12d, edi
	mov	rdi, r8
	mov	rsi, r9
	call	xvasprintf
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_675
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_674
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	esi, r14d
	mov	rdx, rbp
	mov	rsp, rsp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_676
.label_674:
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, r12d
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	error
.label_676:
	mov	rdi, rbx
	nop	
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	free
.label_675:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ad40

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_677
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_6
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_680
.label_677:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_680:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_679
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_682]]
.label_869:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_679:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_685
.label_870:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_871:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_872:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_686
.label_873:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_684
.label_874:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_683
.label_875:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_683:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_684:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_686:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_681
.label_877:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_685:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_678
.label_876:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_678:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_681:
	mov	rbp, rbp
	call	__fprintf_chk
.label_868:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b130
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_687:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_687
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b160

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_691:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_688
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_689
	nop	word ptr cs:[rax + rax]
.label_688:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_689:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_690
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_691
.label_690:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b1f0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_692
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_692:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_694:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_693
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_695
	nop	dword ptr [rax + rax]
.label_693:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_695:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_696
	inc	r9
	cmp	r9, 0xa
	jb	.label_694
.label_696:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b330
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b3c0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_697
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_698
	test	rax, rax
	je	.label_697
.label_698:
	nop	
	pop	rbx
	ret	
.label_697:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b410

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_699
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_700
.label_699:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_700:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b440
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_702
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_701
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_701
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_701:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_703
	test	rax, rax
	je	.label_702
.label_703:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_702:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b4c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_704
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_704
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_704:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_705
	test	rax, rax
	nop	
	je	.label_706
.label_705:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_706:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b510
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_711
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_707
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_713
.label_711:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_710
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_710:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_712
.label_713:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_709
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_709
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_709:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_708
	test	rax, rax
	mov	rbp, rbp
	je	.label_707
.label_708:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_707:
	call	xalloc_die
.label_712:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b5f0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_715
	test	rax, rax
	mov	rbp, rbp
	je	.label_714
.label_715:
	pop	rbx
	ret	
.label_714:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40b610
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_719
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_720
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_718
	call	free
	xor	eax, eax
	jmp	.label_716
.label_719:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_717
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_718:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_716
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_717
.label_716:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_717:
	mov	rbp, rbp
	call	xalloc_die
.label_720:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b6a0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_721
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_722
.label_721:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_722:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b700
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_723
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_723
	pop	rcx
	ret	
.label_723:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b730

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_725
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_724
.label_725:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_724:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b790
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_726
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_727
.label_726:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_727:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b7f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b840

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_746
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_747:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_747
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsp + 8]
	cmovne	rsi, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r13d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_735
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	edx, r12d
	call	__strtoul_internal
	nop	
	mov	rcx, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx]
	nop	
	cmp	r12, rbx
	nop	
	je	.label_754
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_730
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_735
	mov	dword ptr [rsp + 4], 1
.label_730:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_742
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_735
.label_754:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_735
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_735
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	mov	rsp, rsp
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_735
.label_742:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_733
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_740
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_732
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_732
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	test	rax, rax
	mov	rsp, rsp
	je	.label_732
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_739
	cmp	eax, 0x44
	nop	
	je	.label_739
	cmp	eax, 0x69
	jne	.label_732
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_748
	lea	rdi, [rdi]
	mov	ecx, 1
.label_748:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_732
.label_733:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_753
.label_739:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_732:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_731
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_736
	jmp	qword ptr [word ptr [+ (rax * 8) + label_741]]
.label_838:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_743
.label_731:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_745
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_749
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_751]]
.label_890:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_743:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_729
.label_736:
	cmp	r13d, 0x54
	nop	
	je	.label_737
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_740
	nop	
	mov	rdi, -1
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	lea	rsi, [rsi]
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	r14b, r14b
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbp, rsi
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	lea	rsi, [rsi]
	and	dl, 1
	lea	rdi, [rdi]
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_750
.label_745:
	cmp	r13d, 0x74
	je	.label_737
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_740
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	rdx, -1
	nop	
	cmovns	rdx, rax
	lea	rdi, [rdi]
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_729
.label_840:
	nop	
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	lea	rdi, [rdi]
	imul	rsi, rbp
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_738
.label_841:
	mov	rdi, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	nop	
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	nop	
	jmp	.label_752
.label_842:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	nop	
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbx
	nop	
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_734
.label_737:
	mov	rsp, rsp
	mov	r9, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rbx, r9
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	bl, bl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_728
.label_749:
	cmp	r13d, 0x5a
	jne	.label_740
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rbx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	nop	
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	mov	rbp, rbp
	imul	rsi, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	lea	rsi, [rsi]
	or	dl, bl
.label_750:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_752
.label_740:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_735
.label_839:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	mov	rsp, rsp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r9b, r9b
	nop	
	mov	rbx, rbp
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	bpl, bpl
	lea	rsi, [rsi]
	imul	rsi, rbx
	cmp	rax, rbx
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	nop	
	jmp	.label_734
.label_843:
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rdi, [rdi]
	or	dl, r9b
.label_728:
	or	dl, r10b
.label_738:
	lea	rsi, [rsi]
	or	dl, bl
.label_734:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_752:
	mov	rsp, rsp
	mov	rbp, rsi
.label_729:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_744
	or	eax, 2
.label_744:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_753:
	mov	qword ptr [rax], rbp
.label_735:
	nop	
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_746:
	mov	edi, OFFSET FLAT:.str_7
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c100

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rsi
	mov	rbp, rbp
	mov	rax, rdi
	xor	ebp, ebp
	jmp	.label_755
	nop	word ptr cs:[rax + rax]
.label_756:
	lea	rdi, [rdi]
	inc	rbp
.label_755:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rbp*2]
	cmp	ecx, 0x25
	jne	.label_768
	movzx	ecx, byte ptr [rax + rbp*2 + 1]
	nop	
	cmp	ecx, 0x73
	je	.label_756
	jmp	.label_760
.label_768:
	mov	rbp, rbp
	test	cl, cl
	lea	rdi, [rdi]
	jne	.label_760
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_764
	mov	r14d, dword ptr [rsp]
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12, rbp
	nop	dword ptr [rax]
.label_759:
	mov	rsp, rsp
	cmp	r14d, 0x28
	lea	rsi, [rsi]
	ja	.label_761
	movsxd	rax, r14d
	add	rax, qword ptr [rsp + 0x10]
	add	r14d, 8
	mov	dword ptr [rsp], r14d
	jmp	.label_763
	nop	
.label_761:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
.label_763:
	mov	rdi, qword ptr [rax]
	call	strlen
	add	rax, rbx
	lea	rdi, [rdi]
	cmp	rax, rbx
	mov	rbx, -1
	cmovae	rbx, rax
	lea	rdi, [rdi]
	dec	r12
	mov	rbp, rbp
	jne	.label_759
	lea	rdi, [rdi]
	test	rbx, -0x80000000
	je	.label_765
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x4b
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	jmp	.label_757
.label_760:
	lea	rdi, [rsp + 0x20]
	mov	esi, 1
	mov	rdx, rax
	mov	rcx, r15
	call	__vasprintf_chk
	test	eax, eax
	js	.label_766
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_757
.label_766:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0xc
	jne	.label_757
	lea	rdi, [rdi]
	call	xalloc_die
.label_764:
	nop	
	mov	edi, 1
	nop	
	call	xmalloc
	mov	rsp, rsp
	mov	r14, rax
	nop	
	mov	rbx, r14
	mov	rbp, rbp
	mov	byte ptr [rbx], 0
	jmp	.label_757
.label_765:
	lea	rsi, [rsi]
	inc	rax
	mov	rdi, rax
	call	xmalloc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_758:
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [r15]
	lea	rsi, [rsi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_762
	nop	
	mov	rax, rcx
	add	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r15], ecx
	jmp	.label_767
	nop	word ptr cs:[rax + rax]
.label_762:
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [r15 + 8], rcx
.label_767:
	mov	r12, qword ptr [rax]
	mov	rdi, r12
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	r13, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r13
	mov	rbp, rbp
	call	memcpy
	add	rbx, r13
	mov	rsp, rsp
	dec	rbp
	nop	
	jne	.label_758
	mov	byte ptr [rbx], 0
.label_757:
	mov	rax, r14
	add	rsp, 0x28
	nop	
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c340

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_769
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_770
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_770
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_769:
	mov	ecx, 1
.label_770:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c3b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_771
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_772
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_771
.label_772:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_771
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_773
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_773:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_771:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40c460

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	ebx, edi
	test	al, al
	je	.label_792
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_792:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_784
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_778
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_775
	mov	rsp, rsp
	test	esi, esi
	jne	.label_784
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_785
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_791
.label_784:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_779
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_775
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_786
.label_778:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_782
.label_775:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_783
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_787
.label_783:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_787:
	mov	edx, dword ptr [rax]
.label_780:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_782:
	mov	ebp, eax
.label_776:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_786:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_779
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_781
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_790
.label_779:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_789
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_793
.label_785:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_791:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_780
.label_781:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_790:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_777
	mov	esi, 0x406
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	jns	.label_774
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_774
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rdi, [rdi]
	call	fcntl
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_776
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_794
.label_774:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_776
.label_789:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_793:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_782
.label_777:
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	mov	ebp, eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_794:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_776
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_776
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_788
	or	ecx, 1
	mov	esi, 2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_776
.label_788:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	jmp	.label_776
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c830

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_795
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_795
	test	byte ptr [rbx + 1], 1
	je	.label_795
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_795:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c870

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_796
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_796
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_797
.label_796:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_797:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_798
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_798:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c920

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_799
	nop	
	cmp	r15, -2
	jb	.label_799
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_799
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_799:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c9b0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x40c9c0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_807
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_803
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_808:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_804
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, r12
	lea	rsi, [rsi]
	je	.label_801
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_806
	mov	rdi, rax
	mov	rsp, rsp
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	mov	rbp, rbp
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_804
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_804
.label_806:
	mov	qword ptr [rsp + 0x18], rbx
	nop	dword ptr [rax + rax]
.label_804:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	lea	rsi, [rsi]
	add	r14, r13
	test	rbp, rbp
	jne	.label_808
	nop	
	jmp	.label_800
.label_807:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], -1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	jmp	.label_800
.label_803:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_805:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_802
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	nop	
	cmp	rax, r12
	je	.label_801
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	je	.label_802
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_802:
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	nop	
	jne	.label_805
.label_800:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 0x18]
.label_801:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cbc0
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_809
	mov	esi, OFFSET FLAT:.str.1_6
	nop	
	jmp	.label_810
.label_809:
	nop	
	mov	esi, OFFSET FLAT:.str_8
.label_810:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cc60

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_813
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_815:
	test	r15, r15
	mov	rbp, rbp
	je	.label_814
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_812
.label_814:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_2
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_811
	nop	dword ptr [rax]
.label_812:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_2
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_811:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_815
.label_813:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_816
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_816:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cde0
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_818
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_819
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	jmp	.label_817
.label_819:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_8
.label_817:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_818:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf00
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_820
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_821:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_820
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_821
.label_820:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_823
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_822
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_824
.label_822:
	nop	
	mov	esi, OFFSET FLAT:.str.1_7
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_823
.label_824:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_823:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cfe0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_825
	nop	
	mov	rax, rcx
.label_825:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x40d020

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]