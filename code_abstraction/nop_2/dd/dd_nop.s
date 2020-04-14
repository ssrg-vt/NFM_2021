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
	sub	rsp, 0xe8
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
	jne	.label_177
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	lea	rdi, [rdi]
	call	sigaddset
.label_177:
	lea	rdx, [rsp + 0x48]
	mov	edi, 2
	nop	
	xor	esi, esi
	mov	rbp, rbp
	call	sigaction
	nop	
	cmp	qword ptr [rsp + 0x48], 1
	je	.label_186
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:caught_signals
	mov	rsp, rsp
	mov	esi, 2
	call	sigaddset
.label_186:
	movups	xmm0,  xmmword ptr [word ptr [rip + label_190]]
	movups	xmmword ptr [rsp + 0xc0], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_191]]
	movups	xmmword ptr [rsp + 0xb0], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_192]]
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0xa0], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_193]]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x90], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_194]]
	movups	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_195]]
	movups	xmmword ptr [rsp + 0x70], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_196]]
	nop	
	movups	xmmword ptr [rsp + 0x60], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x50], xmm0
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 0xa
	call	sigismember
	mov	rbp, rbp
	test	eax, eax
	je	.label_216
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rsp + 72]], OFFSET FLAT:siginfo_handler
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xd0], 0
	lea	rsi, [rsp + 0x48]
	lea	rdi, [rdi]
	mov	edi, 0xa
	mov	rsp, rsp
	xor	edx, edx
	call	sigaction
.label_216:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	mov	rbp, rbp
	mov	esi, 2
	call	sigismember
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_228
	mov	qword ptr [word ptr [rsp + 72]], OFFSET FLAT:interrupt_handler
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xd0], 0xc0000000
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x48]
	mov	edi, 2
	nop	
	xor	edx, edx
	call	sigaction
.label_228:
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
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_87]]
	movaps	xmmword ptr [word ptr [rip + trans_table]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_88]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [word ptr [rip + label_89]],  xmm0
	lea	rdi, [rdi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_90]]
	movaps	xmmword ptr [word ptr [rip + label_91]],  xmm0
	lea	rdi, [rdi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_92]]
	nop	
	movaps	xmmword ptr [word ptr [rip + label_93]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_94]]
	mov	rbp, rbp
	movaps	xmmword ptr [word ptr [rip + label_95]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_96]]
	mov	rbp, rbp
	movaps	xmmword ptr [word ptr [rip + label_97]],  xmm0
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_98]]
	movaps	xmmword ptr [word ptr [rip + label_99]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_100]]
	mov	rsp, rsp
	movaps	xmmword ptr [word ptr [rip + label_101]],  xmm0
	mov	rsp, rsp
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_102]]
	movaps	xmmword ptr [word ptr [rip + label_103]],  xmm0
	nop	
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_104]]
	nop	
	movaps	xmmword ptr [word ptr [rip + label_105]],  xmm0
	mov	rsp, rsp
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_106]]
	mov	rbp, rbp
	movaps	xmmword ptr [word ptr [rip + label_107]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_108]]
	movaps	xmmword ptr [word ptr [rip + label_109]],  xmm0
	mov	rsp, rsp
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_110]]
	movaps	xmmword ptr [word ptr [rip + label_111]],  xmm0
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_112]]
	mov	rsp, rsp
	movaps	xmmword ptr [word ptr [rip + label_113]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_114]]
	mov	rbp, rbp
	movaps	xmmword ptr [word ptr [rip + label_115]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_116]]
	movaps	xmmword ptr [word ptr [rip + label_117]],  xmm0
	lea	rsi, [rsi]
	movsxd	r15,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	rbp, -1
	mov	rsp, rsp
	cmp	r15d, r14d
	mov	r8d, 0
	mov	rbp, rbp
	jge	.label_118
	movsxd	r13, r14d
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], -1
	xor	ebx, ebx
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
.label_188:
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
	je	.label_11
	lea	rdi, [rdi]
	inc	r14
	mov	rsp, rsp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_168:
	mov	al,  byte ptr [byte ptr [rcx + .str.57]]
	test	al, al
	mov	rsp, rsp
	je	.label_231
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbp + rcx]
	movzx	eax, al
	inc	rcx
	cmp	edx, eax
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	je	.label_168
	jmp	.label_173
	nop	dword ptr [rax]
.label_231:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + rcx]
	cmp	eax, 0x3d
	mov	rbp, rbp
	je	.label_175
	test	al, al
	mov	eax, 0
	jne	.label_173
.label_175:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + input_file]],  r14
	lea	rsi, [rsi]
	jmp	.label_26
	nop	dword ptr [rax + rax]
.label_173:
	mov	cl,  byte ptr [byte ptr [rax + .str.58]]
	test	cl, cl
	je	.label_183
	movzx	edx, byte ptr [rbp + rax]
	movzx	ecx, cl
	inc	rax
	cmp	edx, ecx
	lea	rdi, [rdi]
	mov	ecx, 0
	mov	rsp, rsp
	je	.label_173
	mov	rbp, rbp
	jmp	.label_59
	nop	dword ptr [rax]
.label_183:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + rax]
	mov	rsp, rsp
	cmp	eax, 0x3d
	je	.label_43
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	mov	ecx, 0
	mov	rbp, rbp
	jne	.label_59
.label_43:
	nop	
	mov	qword ptr [word ptr [rip + output_file]],  r14
	nop	
	jmp	.label_26
.label_59:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rcx + .str.59]]
	test	al, al
	je	.label_204
	movzx	edx, byte ptr [rbp + rcx]
	movzx	eax, al
	inc	rcx
	cmp	edx, eax
	nop	
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_59
	mov	rsp, rsp
	jmp	.label_58
	nop	word ptr [rax + rax]
.label_204:
	movzx	eax, byte ptr [rbp + rcx]
	nop	
	cmp	eax, 0x3d
	je	.label_210
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	mov	eax, 0
	mov	rsp, rsp
	jne	.label_58
.label_210:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:conversions
	xor	edx, edx
	mov	ecx, OFFSET FLAT:.str.60
	mov	rdi, r14
	call	parse_symbols
	lea	rdi, [rdi]
	or	dword ptr [dword ptr [rip + conversions_mask]],  eax
	nop	
	jmp	.label_26
	nop	word ptr cs:[rax + rax]
.label_58:
	mov	cl,  byte ptr [byte ptr [rax + .str.61]]
	test	cl, cl
	je	.label_222
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbp + rax]
	movzx	ecx, cl
	lea	rdi, [rdi]
	inc	rax
	cmp	edx, ecx
	mov	ecx, 0
	je	.label_58
	jmp	.label_124
.label_222:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + rax]
	mov	rbp, rbp
	cmp	eax, 0x3d
	mov	rbp, rbp
	je	.label_226
	mov	rbp, rbp
	test	al, al
	mov	ecx, 0
	jne	.label_124
.label_226:
	mov	esi, OFFSET FLAT:flags
	lea	rsi, [rsi]
	xor	edx, edx
	mov	ecx, OFFSET FLAT:.str.62
	mov	rdi, r14
	mov	rbp, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + input_flags]],  eax
	nop	
	jmp	.label_26
	nop	dword ptr [rax + rax]
.label_124:
	mov	al,  byte ptr [byte ptr [rcx + .str.63]]
	nop	
	test	al, al
	je	.label_238
	movzx	edx, byte ptr [rbp + rcx]
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	inc	rcx
	mov	rbp, rbp
	cmp	edx, eax
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_124
	jmp	.label_15
.label_238:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + rcx]
	cmp	eax, 0x3d
	je	.label_17
	test	al, al
	mov	eax, 0
	mov	rsp, rsp
	jne	.label_15
.label_17:
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
	jmp	.label_26
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	cl,  byte ptr [byte ptr [rax + .str.65]]
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_32
	movzx	edx, byte ptr [rbp + rax]
	movzx	ecx, cl
	inc	rax
	mov	rsp, rsp
	cmp	edx, ecx
	je	.label_15
	lea	rsi, [rsi]
	jmp	.label_42
.label_32:
	nop	
	movzx	eax, byte ptr [rbp + rax]
	mov	rbp, rbp
	cmp	eax, 0x3d
	mov	rsp, rsp
	je	.label_45
	nop	
	test	al, al
	mov	rbp, rbp
	jne	.label_42
.label_45:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:statuses
	mov	edx, 1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.66
	mov	rdi, r14
	lea	rsi, [rsi]
	call	parse_symbols
	mov	dword ptr [dword ptr [rip + status_level]],  eax
	jmp	.label_26
.label_42:
	mov	dword ptr [rsp + 0x48], 0
	mov	rdi, r14
	lea	rsi, [rsp + 0x48]
	mov	rsp, rsp
	call	parse_integer
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_67:
	mov	cl,  byte ptr [byte ptr [rdx + .str.67]]
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_62
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
	je	.label_67
	mov	rsp, rsp
	jmp	.label_78
.label_62:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp + rdx]
	cmp	ecx, 0x3d
	mov	rsp, rsp
	je	.label_80
	test	cl, cl
	mov	ecx, 0
	jne	.label_78
.label_80:
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
	jmp	.label_20
	nop	dword ptr [rax + rax]
.label_78:
	mov	dl,  byte ptr [byte ptr [rcx + .str.68]]
	mov	rbp, rbp
	test	dl, dl
	je	.label_131
	movzx	esi, byte ptr [rbp + rcx]
	lea	rsi, [rsi]
	movzx	edx, dl
	inc	rcx
	nop	
	cmp	esi, edx
	lea	rdi, [rdi]
	mov	edx, 0
	mov	rsp, rsp
	je	.label_78
	nop	
	jmp	.label_142
.label_131:
	movzx	ecx, byte ptr [rbp + rcx]
	cmp	ecx, 0x3d
	je	.label_144
	test	cl, cl
	mov	edx, 0
	jne	.label_142
.label_144:
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
	jmp	.label_20
	nop	dword ptr [rax]
.label_142:
	mov	cl,  byte ptr [byte ptr [rdx + .str.69]]
	mov	rsp, rsp
	test	cl, cl
	je	.label_160
	movzx	esi, byte ptr [rbp + rdx]
	movzx	ecx, cl
	lea	rsi, [rsi]
	inc	rdx
	cmp	esi, ecx
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_142
	mov	rsp, rsp
	jmp	.label_166
.label_160:
	movzx	ecx, byte ptr [rbp + rdx]
	cmp	ecx, 0x3d
	lea	rdi, [rdi]
	je	.label_167
	test	cl, cl
	mov	ecx, 0
	mov	rbp, rbp
	jne	.label_166
.label_167:
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
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
.label_166:
	mov	dl,  byte ptr [byte ptr [rcx + .str.70]]
	test	dl, dl
	nop	
	je	.label_187
	movzx	esi, byte ptr [rbp + rcx]
	movzx	edx, dl
	inc	rcx
	mov	rsp, rsp
	cmp	esi, edx
	lea	rdi, [rdi]
	mov	edx, 0
	je	.label_166
	lea	rsi, [rsi]
	jmp	.label_75
.label_187:
	movzx	ecx, byte ptr [rbp + rcx]
	cmp	ecx, 0x3d
	mov	rbp, rbp
	je	.label_200
	nop	
	test	cl, cl
	mov	edx, 0
	mov	rbp, rbp
	jne	.label_75
.label_200:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + conversion_blocksize]],  rax
	lea	rsi, [rsi]
	mov	rcx, -1
	mov	rsp, rsp
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_20
	nop	dword ptr [rax + rax]
.label_75:
	mov	cl,  byte ptr [byte ptr [rdx + .str.71]]
	mov	rbp, rbp
	test	cl, cl
	je	.label_207
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rbp + rdx]
	mov	rbp, rbp
	movzx	ecx, cl
	inc	rdx
	cmp	esi, ecx
	nop	
	mov	esi, 0
	lea	rdi, [rdi]
	je	.label_75
	jmp	.label_211
.label_207:
	mov	rsp, rsp
	mov	dl, byte ptr [rbp + rdx]
	nop	
	mov	rcx, -1
	test	dl, dl
	lea	rdi, [rdi]
	je	.label_212
	mov	rsp, rsp
	movzx	edx, dl
	cmp	edx, 0x3d
	lea	rsi, [rsi]
	mov	esi, 0
	nop	
	jne	.label_211
.label_212:
	mov	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rdx
	xor	edx, edx
	jmp	.label_20
	nop	dword ptr [rax]
.label_211:
	mov	cl,  byte ptr [byte ptr [rsi + .str.72]]
	test	cl, cl
	je	.label_223
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp + rsi]
	movzx	ecx, cl
	inc	rsi
	lea	rsi, [rsi]
	cmp	edx, ecx
	nop	
	mov	edx, 0
	nop	
	je	.label_211
	jmp	.label_229
.label_223:
	mov	dl, byte ptr [rbp + rsi]
	mov	rcx, -1
	test	dl, dl
	je	.label_230
	lea	rdi, [rdi]
	movzx	edx, dl
	lea	rdi, [rdi]
	cmp	edx, 0x3d
	mov	edx, 0
	jne	.label_229
.label_230:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x40], rdx
	xor	edx, edx
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
.label_229:
	nop	
	mov	cl,  byte ptr [byte ptr [rdx + .str.73]]
	mov	rsp, rsp
	test	cl, cl
	nop	
	je	.label_137
	movzx	esi, byte ptr [rbp + rdx]
	movzx	ecx, cl
	inc	rdx
	mov	rsp, rsp
	cmp	esi, ecx
	lea	rsi, [rsi]
	je	.label_229
	mov	rbp, rbp
	jmp	.label_11
.label_137:
	mov	dl, byte ptr [rbp + rdx]
	nop	
	mov	rcx, -1
	test	dl, dl
	nop	
	je	.label_16
	movzx	edx, dl
	lea	rdi, [rdi]
	cmp	edx, 0x3d
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	mov	edx, 0
	je	.label_20
	jmp	.label_11
.label_16:
	mov	qword ptr [rsp + 0x30], rax
	xor	edx, edx
.label_20:
	cmp	rax, rdx
	mov	rbp, rbp
	jb	.label_25
	cmp	rcx, rax
	mov	rsp, rsp
	jb	.label_28
	mov	eax, dword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_31
	nop	dword ptr [rax + rax]
.label_26:
	inc	r15
	cmp	r15, r13
	jl	.label_188
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_41
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + output_blocksize]],  rbx
	mov	qword ptr [word ptr [rip + input_blocksize]],  rbx
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x40]
	nop	
	mov	rbp, qword ptr [rsp + 0x30]
	jmp	.label_46
.label_41:
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x38]
	nop	
	mov	r8, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rsp + 0x30]
.label_118:
	nop	
	or	byte ptr [byte ptr [rip + label_52]],  8
	nop	
	mov	rdi,  qword ptr [word ptr [rip + input_blocksize]]
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_53
	mov	qword ptr [word ptr [rip + input_blocksize]],  0x200
	mov	edi, 0x200
.label_53:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	test	rbx, rbx
	jne	.label_46
	mov	qword ptr [word ptr [rip + output_blocksize]],  0x200
	mov	ebx, 0x200
.label_46:
	cmp	qword ptr [word ptr [rip + conversion_blocksize]],  0
	lea	rdi, [rdi]
	jne	.label_74
	mov	rsp, rsp
	and	byte ptr [byte ptr [rip + conversions_mask]],  0xe7
.label_74:
	mov	esi,  dword ptr [dword ptr [rip + input_flags]]
	test	esi, 0x101000
	mov	rsp, rsp
	je	.label_198
	or	esi, 0x101000
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + input_flags]],  esi
.label_198:
	mov	ecx,  dword ptr [dword ptr [rip + output_flags]]
	nop	
	test	cl, 1
	jne	.label_84
	test	sil, 0x10
	mov	rsp, rsp
	jne	.label_61
	nop	
	test	cl, 0xc
	mov	rsp, rsp
	jne	.label_120
	mov	rsp, rsp
	test	r13, r13
	je	.label_44
	nop	
	mov	eax, esi
	mov	rbp, rbp
	and	eax, 8
	lea	rsi, [rsi]
	je	.label_44
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r13
	div	rdi
	mov	qword ptr [word ptr [rip + skip_records]],  rax
	mov	qword ptr [word ptr [rip + skip_bytes]],  rdx
	jmp	.label_73
.label_44:
	test	r13, r13
	mov	rbp, rbp
	je	.label_73
	mov	qword ptr [word ptr [rip + skip_records]],  r13
.label_73:
	cmp	rbp, -1
	mov	rsp, rsp
	je	.label_139
	nop	
	mov	eax, esi
	and	eax, 4
	je	.label_139
	nop	
	xor	edx, edx
	mov	rax, rbp
	lea	rdi, [rdi]
	div	rdi
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + max_records]],  rax
	mov	qword ptr [word ptr [rip + max_bytes]],  rdx
	jmp	.label_143
.label_139:
	cmp	rbp, -1
	nop	
	je	.label_143
	mov	qword ptr [word ptr [rip + max_records]],  rbp
.label_143:
	mov	rsp, rsp
	test	r8, r8
	je	.label_151
	nop	
	mov	eax, ecx
	lea	rsi, [rsi]
	and	eax, 0x10
	je	.label_151
	xor	edx, edx
	mov	rax, r8
	nop	
	div	rbx
	mov	qword ptr [word ptr [rip + seek_records]],  rax
	mov	qword ptr [word ptr [rip + seek_bytes]],  rdx
	jmp	.label_155
.label_151:
	lea	rdi, [rdi]
	test	r8, r8
	mov	rsp, rsp
	je	.label_155
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + seek_records]],  r8
.label_155:
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
	jne	.label_164
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + skip_records]],  0
	mov	rsp, rsp
	jne	.label_65
	mov	rdx,  qword ptr [word ptr [rip + max_records]]
	inc	rdx
	mov	rbp, rbp
	cmp	rdx, 1
	lea	rsi, [rsi]
	ja	.label_65
	nop	
	mov	eax, ecx
	or	eax, esi
	lea	rsi, [rsi]
	and	eax, 0x4000
	mov	rbp, rbp
	shr	eax, 0xe
.label_65:
	xor	edx, edx
.label_164:
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
	jne	.label_181
	mov	eax, ebx
	and	eax, 0x18
	lea	edx, [rax + 0x1f]
	test	edx, eax
	nop	
	jne	.label_202
	mov	eax, ebx
	nop	
	and	eax, 0x60
	nop	
	lea	edx, [rax + 0x7f]
	lea	rsi, [rsi]
	test	edx, eax
	jne	.label_203
	mov	eax, ebx
	and	eax, 0x3000
	lea	edx, [rax + 0x3fff]
	test	edx, eax
	lea	rsi, [rsi]
	jne	.label_153
	mov	rbp, rbp
	mov	eax, esi
	and	eax, 0x4002
	lea	edx, [rax + 0x7fff]
	nop	
	test	edx, eax
	mov	rbp, rbp
	jne	.label_208
	mov	rbp, rbp
	mov	eax, ecx
	and	eax, 0x4002
	lea	edx, [rax + 0x7fff]
	nop	
	test	edx, eax
	lea	rdi, [rdi]
	jne	.label_208
	test	sil, 2
	lea	rdi, [rdi]
	je	.label_214
	mov	byte ptr [byte ptr [rip + i_nocache]],  1
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + i_nocache_eof]]
	lea	rsi, [rsi]
	and	esi, 0xfffffffc
	mov	dword ptr [dword ptr [rip + input_flags]],  esi
	mov	rbp, rbp
	mov	r14d, esi
.label_214:
	nop	
	test	cl, 2
	je	.label_224
	mov	byte ptr [byte ptr [rip + o_nocache]],  1
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + o_nocache_eof]]
	and	ecx, 0xfffffffd
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + output_flags]],  ecx
.label_224:
	test	bl, 1
	je	.label_169
	mov	rax, -0x100
	nop	word ptr cs:[rax + rax]
.label_236:
	mov	rbp, rbp
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rcx + ebcdic_to_ascii]]
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_35]]
	mov	cl,  byte ptr [byte ptr [rcx + ebcdic_to_ascii]]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rax + label_35]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_36]]
	mov	cl,  byte ptr [byte ptr [rcx + ebcdic_to_ascii]]
	mov	byte ptr [byte ptr [rax + label_36]],  cl
	mov	rsp, rsp
	movzx	ecx,  byte ptr [byte ptr [rax + label_37]]
	mov	cl,  byte ptr [byte ptr [rcx + ebcdic_to_ascii]]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rax + label_37]],  cl
	add	rax, 4
	jne	.label_236
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
.label_169:
	test	bl, 0x40
	mov	rsp, rsp
	jne	.label_23
	lea	rsi, [rsi]
	test	bl, 0x20
	je	.label_27
	lea	rsi, [rsi]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, -0x100
	nop	word ptr cs:[rax + rax]
.label_38:
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	mov	rsp, rsp
	mov	dl, byte ptr [rax + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	lea	rdi, [rdi]
	movzx	edx,  byte ptr [byte ptr [rcx + label_35]]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + label_35]],  dl
	movzx	edx,  byte ptr [byte ptr [rcx + label_36]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rcx + label_36]],  dl
	lea	rsi, [rsi]
	movzx	edx,  byte ptr [byte ptr [rcx + label_37]]
	mov	dl, byte ptr [rax + rdx*4]
	nop	
	mov	byte ptr [byte ptr [rcx + label_37]],  dl
	add	rcx, 4
	jne	.label_38
	lea	rdi, [rdi]
	jmp	.label_55
.label_23:
	call	__ctype_toupper_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, -0x100
	nop	word ptr cs:[rax + rax]
.label_135:
	lea	rdi, [rdi]
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	lea	rsi, [rsi]
	movzx	edx,  byte ptr [byte ptr [rcx + label_35]]
	mov	dl, byte ptr [rax + rdx*4]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rcx + label_35]],  dl
	mov	rsp, rsp
	movzx	edx,  byte ptr [byte ptr [rcx + label_36]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rcx + label_36]],  dl
	mov	rbp, rbp
	movzx	edx,  byte ptr [byte ptr [rcx + label_37]]
	mov	dl, byte ptr [rax + rdx*4]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rcx + label_37]],  dl
	mov	rbp, rbp
	add	rcx, 4
	lea	rdi, [rdi]
	jne	.label_135
.label_55:
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
.label_27:
	mov	rbp, rbp
	test	bl, 2
	jne	.label_119
	mov	rsp, rsp
	test	bl, 4
	mov	rbp, rbp
	je	.label_122
	lea	rsi, [rsi]
	mov	rax, -0x100
.label_69:
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ibm]]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_35]]
	mov	rbp, rbp
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ibm]]
	mov	byte ptr [byte ptr [rax + label_35]],  cl
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rax + label_36]]
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ibm]]
	mov	byte ptr [byte ptr [rax + label_36]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_37]]
	nop	
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ibm]]
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rax + label_37]],  cl
	lea	rsi, [rsi]
	add	rax, 4
	lea	rsi, [rsi]
	jne	.label_69
	jmp	.label_150
.label_119:
	lea	rsi, [rsi]
	mov	rax, -0x100
	nop	word ptr [rax + rax]
.label_156:
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ebcdic]]
	nop	
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rax + label_35]]
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ebcdic]]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rax + label_35]],  cl
	nop	
	movzx	ecx,  byte ptr [byte ptr [rax + label_36]]
	nop	
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ebcdic]]
	mov	byte ptr [byte ptr [rax + label_36]],  cl
	nop	
	movzx	ecx,  byte ptr [byte ptr [rax + label_37]]
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ebcdic]]
	mov	byte ptr [byte ptr [rax + label_37]],  cl
	lea	rsi, [rsi]
	add	rax, 4
	mov	rsp, rsp
	jne	.label_156
.label_150:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
	mov	byte ptr [byte ptr [rip + newline_character]],  1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + space_character]],  1
.label_122:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + input_file]]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_179
	nop	dword ptr [rax]
.label_201:
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
	jns	.label_197
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	cmp	ebp, 4
	mov	rbp, rbp
	je	.label_201
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
.label_179:
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
.label_197:
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
	je	.label_227
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
	je	.label_233
	mov	ebx, ebp
	mov	rsp, rsp
	or	ebx, 2
	nop	word ptr [rax + rax]
.label_162:
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
	jns	.label_30
	nop	
	cmp	dword ptr [r14], 4
	je	.label_162
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + output_file]]
.label_233:
	mov	rsp, rsp
	or	ebp, 1
	nop	word ptr cs:[rax + rax]
.label_49:
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
	jns	.label_30
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	rbp, rbp
	cmp	ebx, 4
	je	.label_49
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
.label_180:
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
.label_30:
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_72
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [rip + label_52]],  2
	jne	.label_72
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rbp, rbp
	xor	edx, edx
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	div	rbx
	cmp	rax, rcx
	nop	
	jb	.label_205
	imul	rbx, rcx
	add	rbx,  qword ptr [word ptr [rip + seek_bytes]]
	nop	dword ptr [rax]
.label_128:
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
	jns	.label_136
	mov	ebp, dword ptr [r14]
	lea	rdi, [rdi]
	cmp	ebp, 4
	lea	rdi, [rdi]
	je	.label_128
	jmp	.label_130
.label_227:
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
	jmp	.label_72
.label_136:
	mov	rbp, rbp
	je	.label_72
	mov	ebp, dword ptr [r14]
.label_130:
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x48]
	mov	edi, 1
	mov	esi, 1
	nop	
	call	__fxstat
	test	eax, eax
	mov	rbp, rbp
	jne	.label_152
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x60]
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	je	.label_33
	mov	rsp, rsp
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_33
.label_72:
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
	je	.label_163
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
	jne	.label_219
	imul	r15, rbx
	add	r12, rbp
	lea	rdi, [rdi]
	add	r12, r15
	mov	rsp, rsp
	cmp	r12,  qword ptr [word ptr [rip + input_offset]]
	je	.label_163
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + input_offset_overflow]]
	lea	rdi, [rdi]
	test	al, al
	jne	.label_163
.label_219:
	nop	
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	mov	rbp, rbp
	je	.label_163
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
.label_163:
	mov	rdx,  qword ptr [word ptr [rip + seek_records]]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + seek_bytes]]
	mov	rcx, rax
	or	rcx, rdx
	lea	rsi, [rsi]
	je	.label_209
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	r8, [rsp + 0x48]
	nop	
	mov	edi, 1
	call	skip
	nop	
	mov	r13, rax
	mov	r12, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rax, r12
	mov	rbp, rbp
	or	rax, r13
	je	.label_209
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
	jmp	.label_232
	nop	dword ptr [rax + rax]
.label_21:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	test	r13, r13
	nop	
	setne	bl
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rdi, [rdi]
	cmove	rbp, r12
.label_232:
	mov	rsi, rbp
	mov	rbp, rbp
	call	iwrite
	mov	rsp, rsp
	cmp	rax, rbp
	nop	
	jne	.label_239
	lea	rdi, [rdi]
	test	bl, 1
	nop	
	je	.label_241
	dec	r13
	lea	rdi, [rdi]
	jmp	.label_10
	nop	dword ptr [rax + rax]
.label_241:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], 0
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	r13d, r13d
.label_10:
	mov	rax, r13
	mov	rbp, rbp
	or	rax, r12
	mov	rsp, rsp
	jne	.label_21
.label_209:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	lea	rdi, [rdi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	je	.label_22
	mov	rbp, rbp
	call	alloc_ibuf
	call	alloc_obuf
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	mov	rsp, rsp
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_29
.label_126:
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r9
	lea	rsi, [rsi]
	call	copy_with_block
	mov	rsp, rsp
	mov	r15, r12
	nop	dword ptr [rax]
.label_29:
	cmp	dword ptr [dword ptr [rip + status_level]],  4
	nop	
	jne	.label_48
	call	gethrxtime
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + next_time]],  rax
	mov	rbp, rbp
	jg	.label_48
	mov	rdi, rax
	nop	
	call	print_xfer_stats
	mov	rbp, rbp
	add	qword ptr [word ptr [rip + next_time]],  0x3b9aca00
.label_48:
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + r_full]]
	nop	
	add	rbp,  qword ptr [word ptr [rip + r_partial]]
	mov	r13,  qword ptr [word ptr [rip + max_records]]
	mov	rbx,  qword ptr [word ptr [rip + max_bytes]]
	lea	rsi, [rsi]
	cmp	rbx, 1
	mov	rax, r13
	mov	rsp, rsp
	sbb	rax, -1
	cmp	rbp, rax
	jae	.label_54
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 0x500
	lea	rsi, [rsi]
	mov	r12,  qword ptr [word ptr [rip + ibuf]]
	cmp	ecx, 0x500
	lea	rsi, [rsi]
	jne	.label_68
	test	al, 0x18
	setne	al
	shl	al, 5
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	movzx	esi, al
	mov	rdi, r12
	call	memset
.label_68:
	mov	rsp, rsp
	cmp	rbp, r13
	nop	
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	jae	.label_85
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, r12
	jmp	.label_86
	nop	word ptr cs:[rax + rax]
.label_85:
	xor	edi, edi
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbx
.label_86:
	mov	rsp, rsp
	call	rax
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	jg	.label_127
	mov	rbp, rbp
	je	.label_132
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	rsp, rsp
	test	ah, 1
	mov	rsp, rsp
	je	.label_134
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_140
.label_134:
	mov	rbp, rbp
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
.label_140:
	lea	rsi, [rsi]
	mov	ebp, 1
	mov	rbp, rbp
	test	ah, 1
	lea	rdi, [rdi]
	je	.label_159
	call	print_stats
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + input_blocksize]]
	sub	rbx, r15
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	rsi, rbx
	call	invalidate_cache
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	je	.label_141
	mov	rax,  qword ptr [word ptr [rip + input_offset]]
	mov	rbp, rbp
	add	rax, rbx
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	jae	.label_171
	nop	
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
	mov	rsp, rsp
	mov	cl, 1
	lea	rsi, [rsi]
	jmp	.label_189
	nop	word ptr cs:[rax + rax]
.label_141:
	mov	eax,  dword ptr [dword ptr [rip + input_seek_errno]]
	cmp	eax, 0x1d
	lea	rsi, [rsi]
	je	.label_178
	mov	dword ptr [r14], eax
	jmp	.label_184
	nop	word ptr [rax + rax]
.label_171:
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [rip + input_offset_overflow]]
.label_189:
	lea	rdi, [rdi]
	shr	rax, 0x3f
	lea	rsi, [rsi]
	or	al, cl
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  al
	je	.label_240
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.119
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	rbp, rbp
	mov	edi, 4
	mov	rsp, rsp
	call	quotearg_style
	nop	
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbx
	lea	rdi, [rdi]
	jmp	.label_138
	nop	dword ptr [rax]
.label_240:
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	esi, esi
	nop	
	mov	edx, 1
	call	lseek
	mov	rsp, rsp
	test	rax, rax
	js	.label_184
	mov	rbp,  qword ptr [word ptr [rip + input_offset]]
	sub	rbp, rax
	lea	rdi, [rdi]
	je	.label_178
	js	.label_225
	cmp	rbp, rbx
	mov	rsp, rsp
	jbe	.label_213
.label_225:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	nop	
	je	.label_213
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.120
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_213:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + input_file]]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rdx, rbp
	call	skip_via_lseek
	lea	rdi, [rdi]
	test	rax, rax
	jns	.label_178
	nop	
	cmp	dword ptr [r14], 0
	jne	.label_184
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.121
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
	nop	
.label_184:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	nop	
	mov	rdx, rbp
.label_138:
	call	nl_error
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + input_seekable]],  0
	nop	
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  0x1d
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], 1
.label_178:
	test	r15, r15
	lea	rdi, [rdi]
	jne	.label_29
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, 0x400
	and	eax, ecx
	mov	r12d, 0
	je	.label_29
	jmp	.label_39
.label_127:
	mov	rax,  qword ptr [word ptr [rip + input_offset]]
	add	rax, r12
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	lea	rdi, [rdi]
	jae	.label_40
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
.label_40:
	movzx	eax,  byte ptr [byte ptr [rip + i_nocache]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_39
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, r12
	call	invalidate_cache
.label_39:
	lea	rsi, [rsi]
	mov	r9,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rsi, [rsi]
	mov	rdx, r9
	lea	rsi, [rsi]
	sub	rdx, r12
	mov	rbp, rbp
	jbe	.label_50
	inc	qword ptr [word ptr [rip + r_partial]]
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	ah, 4
	lea	rdi, [rdi]
	jne	.label_64
	lea	rdi, [rdi]
	mov	r9, r12
	lea	rdi, [rdi]
	jmp	.label_66
.label_50:
	inc	qword ptr [word ptr [rip + r_full]]
	lea	rsi, [rsi]
	mov	r9, r12
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_66
.label_64:
	test	ah, 1
	mov	rbp, rbp
	jne	.label_66
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	add	rdi, r12
	test	al, 0x18
	setne	al
	lea	rdi, [rdi]
	shl	al, 5
	lea	rsi, [rsi]
	movzx	esi, al
	mov	rbx, r9
	lea	rsi, [rsi]
	call	memset
	lea	rsi, [rsi]
	mov	r9, rbx
.label_66:
	mov	r13,  qword ptr [word ptr [rip + ibuf]]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	lea	rsi, [rsi]
	cmp	r13, rdi
	mov	rsp, rsp
	je	.label_215
	test	r9, r9
	nop	
	je	.label_24
	mov	al,  byte ptr [byte ptr [rip + translation_needed]]
	mov	rsp, rsp
	xor	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_24
	mov	rbp, rbp
	lea	rdx, [r9 - 1]
	test	r9b, 3
	lea	rdi, [rdi]
	mov	rax, r13
	lea	rdi, [rdi]
	mov	rcx, r9
	lea	rsi, [rsi]
	je	.label_129
	nop	
	mov	ebp, r9d
	mov	rbp, rbp
	and	ebp, 3
	lea	rsi, [rsi]
	neg	rbp
	nop	
	mov	rax, r13
	lea	rdi, [rdi]
	mov	rcx, r9
	nop	dword ptr [rax + rax]
.label_145:
	movzx	ebx, byte ptr [rax]
	mov	bl,  byte ptr [byte ptr [rbx + trans_table]]
	mov	byte ptr [rax], bl
	dec	rcx
	inc	rax
	inc	rbp
	jne	.label_145
.label_129:
	lea	rsi, [rsi]
	cmp	rdx, 3
	jb	.label_24
	nop	
.label_148:
	mov	rsp, rsp
	movzx	edx, byte ptr [rax]
	mov	dl,  byte ptr [byte ptr [rdx + trans_table]]
	mov	byte ptr [rax], dl
	movzx	edx, byte ptr [rax + 1]
	mov	dl,  byte ptr [byte ptr [rdx + trans_table]]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 1], dl
	movzx	edx, byte ptr [rax + 2]
	nop	
	mov	dl,  byte ptr [byte ptr [rdx + trans_table]]
	mov	rbp, rbp
	mov	byte ptr [rax + 2], dl
	nop	
	movzx	edx, byte ptr [rax + 3]
	mov	dl,  byte ptr [byte ptr [rdx + trans_table]]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 3], dl
	lea	rsi, [rsi]
	add	rax, 4
	lea	rsi, [rsi]
	add	rcx, -4
	lea	rdi, [rdi]
	jne	.label_148
.label_24:
	mov	rsp, rsp
	mov	ebp,  dword ptr [dword ptr [rip + conversions_mask]]
	test	bpl, bpl
	nop	
	jns	.label_165
	movzx	ecx,  byte ptr [byte ptr [rip + char_is_saved]]
	mov	rbp, rbp
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_170
	mov	cl,  byte ptr [byte ptr [rip + saved_char]]
	lea	rsi, [rsi]
	mov	byte ptr [r13 - 1], cl
	lea	rsi, [rsi]
	dec	r13
	inc	r9
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + char_is_saved]],  0
.label_170:
	test	r9b, 1
	lea	rsi, [rsi]
	je	.label_14
	lea	rsi, [rsi]
	mov	cl, byte ptr [r13 + r9 - 1]
	dec	r9
	mov	byte ptr [byte ptr [rip + saved_char]],  cl
	mov	byte ptr [byte ptr [rip + char_is_saved]],  1
.label_14:
	mov	rcx, r9
	nop	
	shr	rcx, 1
	lea	rsi, [rsi]
	je	.label_185
	nop	
	lea	rdx, [r13 + r9]
	mov	rbx, r9
	lea	rdi, [rdi]
	shr	rbx, 1
	lea	r8, [rbx - 1]
	test	bl, 7
	je	.label_146
	and	ebx, 7
	lea	rsi, [rsi]
	neg	rbx
	nop	word ptr [rax + rax]
.label_174:
	mov	al, byte ptr [rdx - 2]
	mov	byte ptr [rdx], al
	mov	rbp, rbp
	lea	rdx, [rdx - 2]
	lea	rdi, [rdi]
	dec	rcx
	mov	rbp, rbp
	inc	rbx
	jne	.label_174
.label_146:
	cmp	r8, 7
	lea	rdi, [rdi]
	jb	.label_185
	nop	word ptr cs:[rax + rax]
.label_206:
	mov	al, byte ptr [rdx - 2]
	mov	rbp, rbp
	mov	byte ptr [rdx], al
	mov	al, byte ptr [rdx - 4]
	mov	byte ptr [rdx - 2], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx - 6]
	mov	byte ptr [rdx - 4], al
	nop	
	mov	al, byte ptr [rdx - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx - 6], al
	mov	al, byte ptr [rdx - 0xa]
	mov	byte ptr [rdx - 8], al
	mov	al, byte ptr [rdx - 0xc]
	lea	rdi, [rdi]
	mov	byte ptr [rdx - 0xa], al
	mov	al, byte ptr [rdx - 0xe]
	mov	byte ptr [rdx - 0xc], al
	mov	al, byte ptr [rdx - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rdx - 0xe], al
	nop	
	lea	rdx, [rdx - 0x10]
	mov	rsp, rsp
	add	rcx, -8
	jne	.label_206
.label_185:
	nop	
	inc	r13
.label_165:
	lea	rdi, [rdi]
	test	bpl, 8
	lea	rdi, [rdi]
	jne	.label_126
	test	bpl, 0x10
	lea	rsi, [rsi]
	jne	.label_125
	mov	qword ptr [rsp + 0x38], r12
	mov	rbp, rbp
	mov	r15, r14
	nop	
	jmp	.label_221
	nop	dword ptr [rax]
.label_82:
	mov	rbp, rbp
	mov	r15, r14
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	r9, rax
.label_221:
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + output_blocksize]]
	mov	r14,  qword ptr [word ptr [rip + oc]]
	mov	rbx, rbp
	sub	rbx, r14
	nop	
	cmp	r9, rbx
	cmovb	rbx, r9
	mov	r12, r9
	add	rdi, r14
	mov	rsp, rsp
	mov	rsi, r13
	nop	
	mov	rdx, rbx
	call	memcpy
	nop	
	add	r14, rbx
	nop	
	mov	qword ptr [word ptr [rip + oc]],  r14
	lea	rdi, [rdi]
	cmp	r14, rbp
	lea	rsi, [rsi]
	jb	.label_234
	call	write_output
.label_234:
	lea	rsi, [rsi]
	mov	rax, r12
	mov	rsp, rsp
	sub	rax, rbx
	mov	rbp, rbp
	add	r13, rbx
	cmp	r12, rbx
	mov	r14, r15
	jne	.label_82
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_29
.label_215:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, r9
	mov	rsp, rsp
	mov	rbx, r9
	call	iwrite
	mov	rcx, rbx
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	cmp	rax, rcx
	mov	rbp, rbp
	jne	.label_19
	cmp	rcx,  qword ptr [word ptr [rip + input_blocksize]]
	jne	.label_81
	inc	qword ptr [word ptr [rip + w_full]]
	nop	
	mov	r15, r12
	lea	rsi, [rsi]
	jmp	.label_29
.label_81:
	inc	qword ptr [word ptr [rip + w_partial]]
	mov	rsp, rsp
	mov	r15, r12
	jmp	.label_29
.label_125:
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r9
	call	copy_with_unblock
	mov	r15, r12
	lea	rdi, [rdi]
	jmp	.label_29
.label_132:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	or	byte ptr [byte ptr [rip + i_nocache_eof]],  al
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + o_nocache]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_18
	nop	
	test	byte ptr [byte ptr [rip + label_52]],  2
	sete	al
	jmp	.label_237
.label_18:
	xor	eax, eax
.label_237:
	or	byte ptr [byte ptr [rip + o_nocache_eof]],  al
.label_54:
	mov	ebp, dword ptr [rsp + 0x30]
.label_159:
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + char_is_saved]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_51
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	rsp, rsp
	test	al, 8
	mov	rbp, rbp
	jne	.label_57
	test	al, 0x10
	jne	.label_60
	mov	al,  byte ptr [byte ptr [rip + saved_char]]
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rsi]
	lea	rdx, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rsi, [rsi]
	jb	.label_51
	lea	rdi, [rdi]
	call	write_output
	lea	rsi, [rsi]
	jmp	.label_51
.label_57:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:saved_char
	mov	esi, 1
	lea	rsi, [rsi]
	call	copy_with_block
	jmp	.label_51
.label_60:
	mov	edi, OFFSET FLAT:saved_char
	mov	rsp, rsp
	mov	esi, 1
	call	copy_with_unblock
.label_51:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + col]]
	test	al, 8
	mov	rsp, rsp
	je	.label_123
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_123
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	cmp	rbx, rax
	jae	.label_123
	nop	
.label_56:
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
	nop	
	and	cl, 1
	mov	cl, 0x40
	lea	rdi, [rdi]
	jne	.label_220
	lea	rsi, [rsi]
	mov	cl, 0x20
.label_220:
	mov	rdx,  qword ptr [word ptr [rip + oc]]
	lea	rdi, [rdi]
	lea	rsi, [rdx + 1]
	nop	
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	nop	
	mov	byte ptr [rdi + rdx], cl
	nop	
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_133
	lea	rdi, [rdi]
	call	write_output
	mov	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
.label_133:
	nop	
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, rax
	jb	.label_56
	mov	rbx,  qword ptr [word ptr [rip + col]]
.label_123:
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_149
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [rip + conversions_mask]],  0x10
	je	.label_149
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	al, 0x25
	mov	rbp, rbp
	jne	.label_154
	mov	al, 0xa
.label_154:
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rcx], al
	lea	rdi, [rdi]
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_161
	call	write_output
.label_149:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + oc]]
.label_161:
	lea	rdi, [rdi]
	test	rsi, rsi
	je	.label_172
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	nop	
	call	iwrite
	lea	rdi, [rdi]
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_176
	mov	rbp, rbp
	inc	qword ptr [word ptr [rip + w_partial]]
.label_176:
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [rip + oc]]
	jne	.label_19
.label_172:
	movzx	eax,  byte ptr [byte ptr [rip + final_op_was_seek]]
	mov	rsp, rsp
	and	eax, 1
	nop	
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_182
	lea	rdx, [rsp + 0x48]
	mov	edi, 1
	mov	esi, 1
	call	__fxstat
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_34
	mov	rsp, rsp
	mov	ebx, dword ptr [r14]
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.36
	jmp	.label_158
.label_19:
	mov	ebx, dword ptr [r14]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	mov	rbp, rbp
	jmp	.label_158
.label_34:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x60]
	mov	rsp, rsp
	cmp	eax, 0x8000
	jne	.label_182
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	r15, rax
	test	r15, r15
	lea	rsi, [rsi]
	js	.label_182
	cmp	qword ptr [rsp + 0x78], r15
	jge	.label_182
	nop	word ptr cs:[rax + rax]
.label_218:
	lea	rdi, [rdi]
	call	process_signals
	mov	edi, 1
	mov	rsi, r15
	call	ftruncate
	test	eax, eax
	mov	rsp, rsp
	jns	.label_63
	mov	rbp, rbp
	mov	ebx, dword ptr [r14]
	cmp	ebx, 4
	je	.label_218
	lea	rsi, [rsi]
	jmp	.label_77
.label_63:
	je	.label_182
	mov	rsp, rsp
	mov	ebx, dword ptr [r14]
.label_77:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rsp, rsp
	mov	edi, 4
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, r12
	mov	rbp, rbp
	mov	rcx, r15
	mov	r8, rbp
	mov	rbp, rbp
	call	nl_error
	jmp	.label_235
.label_182:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	ah, 0x40
	je	.label_157
	lea	rdi, [rdi]
	mov	edi, 1
	call	fdatasync
	test	eax, eax
	mov	rsp, rsp
	je	.label_199
	mov	rsp, rsp
	mov	ebx, dword ptr [r14]
	mov	rbp, rbp
	cmp	ebx, 0x16
	lea	rdi, [rdi]
	je	.label_12
	cmp	ebx, 0x26
	je	.label_12
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebp, 1
.label_12:
	mov	eax, 0x8000
	mov	rbp, rbp
	or	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	dword ptr [dword ptr [rip + conversions_mask]],  eax
	jmp	.label_157
.label_199:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
.label_157:
	test	ax, ax
	lea	rdi, [rdi]
	jns	.label_22
	nop	word ptr [rax + rax]
.label_217:
	mov	edi, 1
	call	fsync
	test	eax, eax
	je	.label_22
	mov	ebx, dword ptr [r14]
	cmp	ebx, 4
	je	.label_217
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.112
.label_158:
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rsp, rsp
	mov	edi, 4
	call	quotearg_style
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	nl_error
.label_235:
	mov	ebp, 1
.label_22:
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + max_bytes]]
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	or	rcx,  qword ptr [word ptr [rip + max_records]]
	mov	rbp, rbp
	je	.label_70
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rip + i_nocache_eof]],  0
	jne	.label_71
	mov	rbp, rbp
	xor	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_76
.label_71:
	xor	edi, edi
	xor	esi, esi
	call	invalidate_cache
.label_76:
	nop	
	cmp	byte ptr [byte ptr [rip + o_nocache_eof]],  0
	lea	rdi, [rdi]
	jne	.label_79
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + o_nocache]]
	xor	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_83
.label_79:
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	call	invalidate_cache
	jmp	.label_83
.label_70:
	test	al, 1
	je	.label_121
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	call	invalidate_cache
	test	al, al
	jne	.label_121
	mov	ebx, dword ptr [r14]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	nop	
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	lea	rsi, [rsi]
	mov	ebp, 1
.label_121:
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + o_nocache]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_83
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	call	invalidate_cache
	mov	rbp, rbp
	test	al, al
	jne	.label_83
	mov	ebx, dword ptr [r14]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.38
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	rsp, rsp
	mov	ebp, 1
.label_83:
	call	cleanup
	call	print_stats
	mov	rsp, rsp
	call	process_signals
	mov	eax, ebp
	lea	rdi, [rdi]
	add	rsp, 0xe8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_11:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	quote
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	nl_error
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_239:
	mov	rsp, rsp
	mov	ebx, dword ptr [r14]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.107
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rbp, rbp
	mov	edi, 4
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	nop	
	call	nl_error
	nop	
	call	quit
.label_208:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.84
	mov	rbp, rbp
	jmp	.label_47
.label_25:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x48], 4
	xor	r15d, r15d
	jmp	.label_147
.label_28:
	mov	dword ptr [rsp + 0x48], 1
	mov	rsp, rsp
	mov	r15d, 0x4b
	jmp	.label_147
.label_31:
	xor	ecx, ecx
	cmp	eax, 1
	lea	rsi, [rsi]
	mov	r15d, 0x4b
	mov	rbp, rbp
	cmovne	r15d, ecx
.label_147:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.75
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	quote
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.1_0
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r15d
	mov	rsp, rsp
	mov	rcx, rbp
	mov	r8, rbx
	mov	rsp, rsp
	call	nl_error
.label_84:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.76
	jmp	.label_13
.label_61:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.62
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.77
	lea	rdi, [rdi]
	jmp	.label_13
.label_120:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.64
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	mov	ecx, OFFSET FLAT:.str.78
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.79
	mov	rbp, rbp
	test	al, 4
	cmovne	rdi, rcx
.label_13:
	call	quote
	lea	rdi, [rdi]
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, rbx
	mov	rbp, rbp
	mov	r8, rbp
	call	nl_error
	mov	edi, 1
	call	usage
.label_181:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	lea	rsi, [rsi]
	jmp	.label_47
.label_202:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.81
	mov	rbp, rbp
	jmp	.label_47
.label_203:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	rsp, rsp
	jmp	.label_47
.label_153:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.83
.label_47:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, rbp
	call	nl_error
.label_205:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	r8, rbx
	call	nl_error
.label_152:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	lea	rsi, [rsi]
	jmp	.label_180
.label_33:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	r8, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rsi, [rsi]
	call	nl_error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404980

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	mov	rbp, rbp
	push	rax
	mov	al,  byte ptr [byte ptr [rip + close_stdout_required]]
	and	al, 1
	je	.label_242
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	nop	
	call	close_stream
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_243
	lea	rsi, [rsi]
	pop	rax
	ret	
.label_242:
	lea	rdi, [rdi]
	pop	rax
	jmp	close_stdout
.label_243:
	mov	edi, 1
	mov	rbp, rbp
	call	_exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4049c0

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
	je	.label_244
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
	js	.label_246
	nop	
	or	ebp, ebx
	mov	rsp, rsp
	cmp	ebx, ebp
	je	.label_244
	mov	r12b, 1
	mov	rbp, rbp
	test	ebp, 0x10000
	je	.label_250
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
	jne	.label_248
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	r12b, 1
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_249
	call	__errno_location
	mov	dword ptr [rax], 0x14
.label_248:
	mov	rsp, rsp
	xor	r12d, r12d
.label_249:
	and	ebp, 0xfffeffff
.label_250:
	mov	rsp, rsp
	cmp	ebx, ebp
	nop	
	je	.label_245
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_245
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
	je	.label_247
	mov	bl, r12b
.label_247:
	mov	rsp, rsp
	mov	r12b, bl
.label_245:
	test	r12b, 1
	je	.label_246
.label_244:
	mov	rbp, rbp
	add	rsp, 0x90
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_246:
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
	#Procedure 0x404b40

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
	je	.label_251
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
.label_251:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r9
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r8
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rcx
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_252
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_253
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0xa
.label_254:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_252:
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
.label_253:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_254
	nop	
	.section	.text
	.align	16
	#Procedure 0x404c70

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
	je	.label_261
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
	jbe	.label_255
	jmp	.label_260
.label_261:
	lea	rdi, [rdi]
	test	rbp, rbp
	setne	r13b
	mov	rsp, rsp
	mov	r12, rbp
.label_260:
	test	r15b, r15b
	jne	.label_265
	mov	rax, r12
	or	rax, rbx
	mov	rbp, rbp
	mov	al, 1
	je	.label_255
.label_265:
	test	rbx, rbx
	cmove	rbp, rbx
	nop	
	test	r14d, r14d
	je	.label_257
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + invalidate_cache.output_offset]]
	cmp	rsi, -1
	je	.label_267
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	rbp, rbp
	js	.label_262
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_264
	lea	rax, [rbp + r12]
	mov	rbp, rbp
	add	rsi, rax
	nop	
	jmp	.label_266
.label_257:
	nop	
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	je	.label_256
	mov	rsi,  qword ptr [word ptr [rip + input_offset]]
	jmp	.label_263
.label_267:
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_255
.label_262:
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
.label_266:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + invalidate_cache.output_offset]],  rsi
.label_263:
	nop	
	test	rsi, rsi
	js	.label_258
.label_264:
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
	jne	.label_259
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, rsi
	div	qword ptr [word ptr [rip + page_size]]
	sub	rsi, rdx
.label_259:
	mov	ecx, 4
	mov	edi, r14d
	mov	rdx, rbx
	mov	rsp, rsp
	call	posix_fadvise
	lea	rsi, [rsi]
	cmp	eax, -1
	mov	rbp, rbp
	setne	al
	jmp	.label_255
.label_258:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_255
.label_256:
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x1d
	xor	eax, eax
.label_255:
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
	#Procedure 0x404e40

	.globl siginfo_handler
	.type siginfo_handler, @function
siginfo_handler:
	inc	dword ptr [dword ptr [rip + info_signal_count]]
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e50

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	mov	dword ptr [dword ptr [rip + interrupt_signal]],  edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e60

	.globl parse_symbols
	.type parse_symbols, @function
parse_symbols:
	mov	rbp, rbp
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	qword ptr [rsp], rcx
	mov	r12d, edx
	mov	r13, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	xor	r14d, r14d
	xor	ebp, ebp
	nop	
.label_274:
	mov	esi, 0x2c
	mov	rbp, rbp
	mov	rdi, rbx
	call	strchr
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rax, r13
	nop	dword ptr [rax]
.label_271:
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_272:
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_268
	mov	rbp, rbp
	movzx	esi, byte ptr [rbx + rcx]
	movzx	edx, dl
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	esi, edx
	je	.label_272
	jmp	.label_276
	nop	dword ptr [rax]
.label_268:
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx + rcx]
	lea	rdi, [rdi]
	cmp	ecx, 0x2c
	je	.label_273
	nop	
	test	cl, cl
	mov	rbp, rbp
	jne	.label_276
.label_273:
	mov	ecx, dword ptr [rax + 0xc]
	mov	rsp, rsp
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_270
.label_276:
	nop	
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	lea	rax, [rax + 0x10]
	mov	rsp, rsp
	jne	.label_271
	jmp	.label_275
	nop	word ptr cs:[rax + rax]
.label_270:
	mov	rsp, rsp
	test	r12b, r12b
	lea	rdi, [rdi]
	cmovne	ebp, r14d
	lea	rdi, [rdi]
	or	ebp, ecx
	mov	rbp, rbp
	test	r15, r15
	mov	rsp, rsp
	lea	rbx, [r15 + 1]
	lea	rdi, [rdi]
	jne	.label_274
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_275:
	test	r15, r15
	nop	
	jne	.label_277
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	lea	rdi, [rdi]
	mov	r15, rax
	jmp	.label_269
.label_277:
	nop	
	sub	r15, rbx
.label_269:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	edx, 5
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp]
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r15
	call	quotearg_n_style_mem
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, rbp
	mov	r8, rbx
	call	nl_error
	mov	rbp, rbp
	mov	edi, 1
	nop	
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405000

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
	je	.label_279
	test	eax, eax
	nop	
	jne	.label_278
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_283
.label_279:
	mov	rdi, qword ptr [rsp + 8]
	movzx	ecx, byte ptr [rdi]
	cmp	ecx, 0x78
	lea	rsi, [rsi]
	jne	.label_278
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
	je	.label_280
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	imul	rax, r14
	xor	edx, edx
	div	r14
	cmp	rax, rcx
	mov	rbp, rbp
	jne	.label_284
.label_280:
	lea	rsi, [rsi]
	test	rcx, rcx
	jne	.label_281
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 2
	nop	
	mov	rdi, rbx
	call	strncmp
	xor	ecx, ecx
	test	eax, eax
	jne	.label_281
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
.label_281:
	imul	rcx, r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rcx
	jmp	.label_283
.label_278:
	mov	dword ptr [r15], eax
.label_282:
	nop	
	xor	ecx, ecx
.label_283:
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
.label_284:
	mov	dword ptr [r15], 1
	jmp	.label_282
	.section	.text
	.align	16
	#Procedure 0x405180

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
	je	.label_285
	nop	word ptr cs:[rax + rax]
.label_288:
	lea	rsi, [rsi]
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rdx, rbx
	call	iread
	test	rax, rax
	js	.label_286
	je	.label_287
	add	rbp, rax
	add	r14, rax
	sub	rbx, rax
	mov	rax, rbp
	jne	.label_288
	jmp	.label_286
.label_285:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_286
.label_287:
	mov	rsp, rsp
	mov	rax, rbp
.label_286:
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
	#Procedure 0x405200

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
.label_296:
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
	je	.label_298
	test	rbx, rbx
	lea	rdi, [rdi]
	jns	.label_292
	mov	rbp, rbp
	call	__errno_location
	jmp	.label_295
	nop	dword ptr [rax + rax]
.label_298:
	call	__errno_location
	nop	
	mov	rcx,  qword ptr [word ptr [rip + iread.prev_nread]]
	nop	
	mov	rbx, -1
	cmp	rcx, r14
	jae	.label_295
	cmp	dword ptr [rax], 0x16
	jne	.label_295
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_295
	test	byte ptr [byte ptr [rip + label_290]],  0x40
	jne	.label_291
	nop	word ptr cs:[rax + rax]
.label_295:
	nop	
	cmp	dword ptr [rax], 4
	mov	rax, rbx
	lea	rsi, [rsi]
	je	.label_296
	jmp	.label_294
.label_292:
	lea	rdi, [rdi]
	jle	.label_297
	cmp	rbx, r14
	jae	.label_297
	mov	rsp, rsp
	call	process_signals
	jmp	.label_289
.label_297:
	lea	rdi, [rdi]
	xor	eax, eax
	test	rbx, rbx
	jle	.label_294
.label_289:
	mov	rbp,  qword ptr [word ptr [rip + iread.prev_nread]]
	mov	rbp, rbp
	cmp	rbp, r14
	mov	rbp, rbp
	jae	.label_293
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + warn_partial_read]]
	mov	rbp, rbp
	test	al, al
	je	.label_293
	lea	rdi, [rdi]
	test	rbp, rbp
	jle	.label_293
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_299
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
.label_299:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  0
.label_293:
	mov	rax, rbx
	jmp	.label_294
.label_291:
	mov	dword ptr [rax], 0
	nop	
	xor	eax, eax
.label_294:
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
	#Procedure 0x405380

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	nop	
	push	rbx
	sub	rsp, 0x88
	lea	rbx, [rsp + 8]
	jmp	.label_300
	nop	word ptr cs:[rax + rax]
.label_304:
	call	cleanup
	call	print_stats
	lea	rsi, [rsi]
	mov	edi, ebp
	nop	
	call	raise
.label_300:
	cmp	dword ptr [dword ptr [rip + interrupt_signal]],  0
	jne	.label_302
	cmp	dword ptr [dword ptr [rip + info_signal_count]],  0
	mov	rsp, rsp
	je	.label_301
.label_302:
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
	je	.label_303
	nop	
	dec	eax
	mov	dword ptr [dword ptr [rip + info_signal_count]],  eax
.label_303:
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rbx
	call	sigprocmask
	lea	rdi, [rdi]
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_304
	lea	rsi, [rsi]
	call	print_stats
	jmp	.label_300
.label_301:
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
	#Procedure 0x405440

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
	js	.label_306
	mov	edi, 1
	call	close
	test	eax, eax
	mov	rbp, rbp
	js	.label_305
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_306:
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
.label_305:
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
	#Procedure 0x405520

	.globl print_stats
	.type print_stats, @function
print_stats:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_307
	push	rbx
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_310
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_312
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0xa
.label_308:
	nop	
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_310:
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
	je	.label_309
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
.label_309:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + status_level]],  2
	lea	rsp, [rsp + 0x10]
	lea	rsi, [rsi]
	pop	rbx
	jne	.label_311
.label_307:
	ret	
.label_311:
	xor	edi, edi
	jmp	print_xfer_stats
.label_312:
	mov	rsp, rsp
	mov	esi, 0xa
	call	__overflow
	nop	
	jmp	.label_308
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405650

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
	jne	.label_317
	nop	
	call	gethrxtime
	mov	rbx, rax
.label_317:
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
	jle	.label_322
	movq	xmm0, rbx
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_318]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_319]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	lea	rsi, [rsi]
	divsd	xmm1,  qword ptr [word ptr [rip + label_320]]
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
	jmp	.label_321
.label_322:
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
.label_321:
	mov	rbp, rbp
	test	r15, r15
	je	.label_314
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_316
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xd
.label_314:
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
	jne	.label_326
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
	jmp	.label_313
.label_326:
	mov	rdi, r12
	call	strlen
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	movzx	eax, byte ptr [rax + r12 - 2]
	nop	
	xor	edi, edi
	cmp	eax, 0x20
	jne	.label_325
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
	jmp	.label_313
.label_325:
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
.label_313:
	nop	
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	ebx, eax
	mov	rsp, rsp
	test	r15, r15
	je	.label_327
	mov	rsp, rsp
	test	ebx, ebx
	mov	rsp, rsp
	js	.label_324
	mov	ecx,  dword ptr [dword ptr [rip + progress_len]]
	sub	ecx, ebx
	jle	.label_324
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
.label_324:
	mov	dword ptr [dword ptr [rip + progress_len]],  ebx
	mov	rsp, rsp
	jmp	.label_315
.label_327:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_323
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0xa
.label_315:
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
.label_316:
	mov	esi, 0xd
	call	__overflow
	jmp	.label_314
.label_323:
	lea	rdi, [rdi]
	mov	esi, 0xa
	call	__overflow
	jmp	.label_315
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a10

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
	sub	rsp, 0xa8
	mov	r14, r8
	mov	rbp, rbp
	mov	r12, rcx
	lea	rdi, [rdi]
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	ebp, edi
	lea	rsi, [rsi]
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x90], rax
	mov	dword ptr [rax], 0
	xor	ecx, ecx
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	r12
	cmp	rax, r13
	jb	.label_339
	mov	rbp, rbp
	mov	rax, r12
	imul	rax, r13
	mov	rsp, rsp
	add	r15, rax
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsp, rsp
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rdx, r15
	call	skip_via_lseek
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_335
	lea	rsi, [rsi]
	test	ebp, ebp
	jne	.label_336
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	call	__fxstat
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_340
	mov	eax, 0x2000
	or	eax, dword ptr [rsp + 0x18]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_338
	mov	rsi, qword ptr [rsp + 0x30]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + input_offset]]
	lea	rdx, [rcx + r15]
	xor	eax, eax
	mov	rsp, rsp
	cmp	rsi, rdx
	mov	rbp, rbp
	jae	.label_346
	mov	rbp, rbp
	sub	r15, rsi
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r15
	div	r12
	sub	rsi, rcx
	mov	rdx, rsi
	mov	rbp, rbp
	jmp	.label_331
.label_335:
	mov	rax, qword ptr [rsp + 0x90]
	mov	ecx, dword ptr [rax]
.label_339:
	mov	qword ptr [rsp + 0xa0], rcx
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, 2
	mov	rsp, rsp
	mov	rdi, rbx
	mov	esi, ebp
	lea	rsi, [rsi]
	call	skip_via_lseek
	mov	rbp, rbp
	test	rax, rax
	jns	.label_343
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_344
	mov	qword ptr [rsp + 0x98], rbx
	call	alloc_obuf
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:obuf
	jmp	.label_329
.label_344:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rbx
	lea	rsi, [rsi]
	call	alloc_ibuf
	mov	eax, OFFSET FLAT:ibuf
.label_329:
	mov	rbx, qword ptr [rax]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_330:
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	test	r13, r13
	mov	rdx, r12
	jne	.label_333
	mov	rbp, rbp
	mov	rdx, qword ptr [r14]
.label_333:
	lea	rsi, [rsi]
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	rax
	test	rax, rax
	mov	rbp, rbp
	js	.label_345
	nop	
	je	.label_341
	test	ebp, ebp
	jne	.label_342
	add	rax,  qword ptr [word ptr [rip + input_offset]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	mov	rbp, rbp
	jae	.label_342
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
	nop	word ptr cs:[rax + rax]
.label_342:
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_336
	lea	rsi, [rsi]
	dec	r13
	jne	.label_330
	cmp	qword ptr [r14], 0
	mov	r13d, 0
	lea	rdi, [rdi]
	jne	.label_330
	mov	rsp, rsp
	jmp	.label_337
.label_336:
	nop	
	mov	qword ptr [r14], 0
	lea	rsi, [rsi]
	xor	r15d, r15d
	jmp	.label_337
.label_341:
	mov	r15, r13
	mov	rbp, rbp
	jmp	.label_337
.label_338:
	mov	rdx, r15
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + input_offset]]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_331
.label_346:
	nop	
	mov	rdx, r15
.label_331:
	mov	r15, rax
	nop	
	add	rcx, rdx
	mov	qword ptr [word ptr [rip + input_offset]],  rcx
	mov	rsp, rsp
	jae	.label_337
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
.label_337:
	nop	
	mov	rax, r15
	add	rsp, 0xa8
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_345:
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_334
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x98]
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	nop	
	mov	rdx, rbp
	call	nl_error
	nop	
	test	byte ptr [byte ptr [rip + label_52]],  1
	je	.label_328
	call	print_stats
	call	quit
.label_334:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.114
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdx, rbx
	mov	rsp, rsp
	call	nl_error
.label_328:
	mov	rbp, rbp
	call	quit
.label_343:
	mov	r14, rbx
	nop	
	mov	rax, qword ptr [rsp + 0xa0]
	test	eax, eax
	lea	rdi, [rdi]
	mov	ebx, 0x4b
	cmovne	ebx, eax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	test	ebp, ebp
	jne	.label_347
	mov	esi, OFFSET FLAT:.str.113
	mov	rsp, rsp
	jmp	.label_332
.label_347:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.114
.label_332:
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	call	quit
.label_340:
	mov	rax, qword ptr [rsp + 0x90]
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rax
	nop	
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e50

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
	je	.label_348
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + output_blocksize]],  r12
	mov	rbp, rbp
	jbe	.label_348
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
	je	.label_354
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	mov	rbp, rbp
	je	.label_354
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
.label_354:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + o_nocache_eof]],  1
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	call	invalidate_cache
	lea	rdi, [rdi]
	or	byte ptr [byte ptr [rip + label_52]],  0x80
.label_348:
	mov	rsp, rsp
	lea	rbp, [r12 - 1]
	xor	eax, eax
.label_359:
	mov	r15, rax
	cmp	r15, r12
	jae	.label_355
	lea	r13, [r14 + r15]
	nop	
	mov	rbx, r12
	sub	rbx, r15
	nop	
.label_353:
	call	process_signals
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  0
	test	byte ptr [byte ptr [rip + label_351]],  1
	je	.label_352
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	mov	rax, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	je	.label_356
	nop	dword ptr [rax + rax]
.label_350:
	mov	rbp, rbp
	mov	rdx, rax
	cmp	byte ptr [rsi], 0
	mov	rsp, rsp
	jne	.label_352
	test	rdx, rdx
	nop	
	je	.label_356
	inc	rsi
	mov	rbp, rbp
	lea	rax, [rdx - 1]
	test	dl, 0xf
	mov	rbp, rbp
	jne	.label_350
	nop	
	mov	rdi, r14
	call	memcmp
	test	eax, eax
	jne	.label_352
	nop	word ptr cs:[rax + rax]
.label_356:
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, 1
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_357
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  1
	test	r12, r12
	mov	rax, r12
	lea	rsi, [rsi]
	jne	.label_360
	jmp	.label_352
.label_357:
	and	byte ptr [byte ptr [rip + label_351]],  0xfe
	nop	word ptr cs:[rax + rax]
.label_352:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsi, r13
	nop	
	mov	rdx, rbx
	nop	
	call	write
.label_360:
	test	rax, rax
	jns	.label_358
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 4
	je	.label_353
	jmp	.label_355
	nop	dword ptr [rax + rax]
.label_358:
	test	rax, rax
	mov	rsp, rsp
	lea	rax, [rax + r15]
	jne	.label_359
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_355:
	test	r15, r15
	je	.label_349
	nop	
	test	byte ptr [byte ptr [rip + o_nocache]],  1
	je	.label_349
	mov	edi, 1
	mov	rsi, r15
	mov	rsp, rsp
	call	invalidate_cache
.label_349:
	lea	rsi, [rsi]
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060c0

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
	#Procedure 0x4060f0

	.globl alloc_ibuf
	.type alloc_ibuf, @function
alloc_ibuf:
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x290
	cmp	qword ptr [word ptr [rip + ibuf]],  0
	mov	rbp, rbp
	jne	.label_361
	mov	r15,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rbx,  qword ptr [word ptr [rip + page_size]]
	mov	rbp, rbp
	lea	rdi, [r15 + rbx*2 + 3]
	lea	rsi, [rsi]
	call	malloc
	test	rax, rax
	je	.label_362
	lea	rdi, [rdi]
	lea	rcx, [rax + rbx + 1]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	div	rbx
	mov	rsp, rsp
	sub	rcx, rdx
	mov	qword ptr [word ptr [rip + ibuf]],  rcx
.label_361:
	add	rsp, 0x290
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	r15
	nop	
	ret	
.label_362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.117
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r14, rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rsi, [rsp]
	mov	rsp, rsp
	mov	edx, 0x1f1
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	lea	rsi, [rsi]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	rcx, r15
	call	nl_error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4061d0

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
	jne	.label_363
	mov	rbp, rbp
	test	byte ptr [byte ptr [rip + label_52]],  8
	jne	.label_365
	nop	
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [rip + ibuf]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + obuf]],  rax
	jmp	.label_363
.label_365:
	nop	
	mov	r15,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rbx,  qword ptr [word ptr [rip + page_size]]
	lea	rdi, [r15 + rbx - 1]
	nop	
	call	malloc
	test	rax, rax
	je	.label_364
	lea	rcx, [rax + rbx - 1]
	xor	edx, edx
	mov	rax, rcx
	nop	
	div	rbx
	sub	rcx, rdx
	mov	qword ptr [word ptr [rip + obuf]],  rcx
.label_363:
	lea	rsi, [rsi]
	add	rsp, 0x290
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
.label_364:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.118
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	mov	edx, 0x1f1
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	r8d, 1
	lea	rsi, [rsi]
	call	human_readable
	mov	r8, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	call	nl_error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062c0

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
	je	.label_366
	nop	
	mov	rbp,  qword ptr [word ptr [rip + col]]
	lea	rsi, [rsi]
	mov	r15d, 0x25
	nop	dword ptr [rax]
.label_373:
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
	je	.label_367
	lea	rsi, [rsi]
	cmp	rbp, rax
	lea	rdi, [rdi]
	jne	.label_370
	mov	rbp, rbp
	inc	qword ptr [word ptr [rip + r_truncate]]
	jmp	.label_371
	nop	word ptr cs:[rax + rax]
.label_369:
	inc	rbp
.label_367:
	nop	
	cmp	rbp, rax
	mov	ecx, 0
	nop	
	jae	.label_372
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
	and	cl, 1
	mov	cl, 0x40
	nop	
	jne	.label_368
	mov	cl, 0x20
.label_368:
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rdx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdi + rdx], cl
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_369
	call	write_output
	mov	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	nop	
	jmp	.label_369
	nop	word ptr [rax + rax]
.label_370:
	jae	.label_371
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rax + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rax], cl
	lea	rsi, [rsi]
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rdi, [rdi]
	jb	.label_371
	call	write_output
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + col]]
	nop	
.label_371:
	lea	rdi, [rdi]
	inc	rbp
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_372:
	mov	qword ptr [word ptr [rip + col]],  rcx
	inc	rbx
	dec	r14
	lea	rsi, [rsi]
	mov	rbp, rcx
	mov	rbp, rbp
	jne	.label_373
.label_366:
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
	#Procedure 0x406430

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
	je	.label_384
	mov	ebp, 0x40
	nop	
.label_382:
	mov	rsp, rsp
	mov	r12b, byte ptr [r14 + rbx]
	mov	rax,  qword ptr [word ptr [rip + col]]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [word ptr [rip + col]],  rcx
	cmp	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	jae	.label_380
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
	jne	.label_376
	lea	rsi, [rsi]
	inc	rax
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  rax
	mov	rsp, rsp
	jmp	.label_379
	nop	dword ptr [rax]
.label_380:
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  0
	mov	qword ptr [word ptr [rip + col]],  0
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	and	al, 1
	nop	
	mov	al, 0x25
	jne	.label_381
	mov	al, 0xa
.label_381:
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
	jae	.label_385
	mov	rsp, rsp
	jmp	.label_379
	nop	word ptr [rax + rax]
.label_376:
	mov	rbp, rbp
	test	rax, rax
	jne	.label_374
	mov	rsp, rsp
	jmp	.label_377
	nop	dword ptr [rax]
.label_375:
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
.label_374:
	lea	rsi, [rsi]
	test	cl, 1
	mov	cl, 0x40
	lea	rdi, [rdi]
	jne	.label_378
	mov	cl, 0x20
.label_378:
	mov	rdx,  qword ptr [word ptr [rip + oc]]
	nop	
	lea	rsi, [rdx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdi + rdx], cl
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_383
	call	write_output
	mov	rax,  qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
.label_383:
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  rax
	jne	.label_375
.label_377:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + oc]]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + oc]],  rcx
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rax], r12b
	cmp	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rdi, [rdi]
	jb	.label_379
.label_385:
	call	write_output
.label_379:
	inc	rbx
	cmp	rbx, r15
	jb	.label_382
.label_384:
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
	#Procedure 0x406600

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
	jne	.label_386
	inc	qword ptr [word ptr [rip + w_full]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + oc]],  0
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	nop	
	ret	
.label_386:
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
	je	.label_387
	inc	qword ptr [word ptr [rip + w_partial]]
.label_387:
	call	quit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066d0

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
	jne	.label_388
	test	r15, r15
	js	.label_388
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
	jne	.label_388
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jne	.label_388
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	cmp	eax, ecx
	jne	.label_388
	shr	rcx, 0x20
	shr	rax, 0x20
	mov	rsp, rsp
	cmp	eax, ecx
	jne	.label_388
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_389
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
.label_389:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	r15, -1
.label_388:
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
	#Procedure 0x406810

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
	jne	.label_390
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_391
	test	cl, cl
	mov	rsp, rsp
	jne	.label_391
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_391
.label_390:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_391
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_391:
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
	#Procedure 0x4068a0
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
	#Procedure 0x4068b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068c0

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
	je	.label_395
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_392
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_392
.label_395:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_394
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_392:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_393
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
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
.label_394:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_393:
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
	#Procedure 0x4069c0

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
	je	.label_396
	test	ebx, ebx
	nop	
	js	.label_396
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
	jmp	.label_397
.label_396:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_397:
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
	#Procedure 0x406a40

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
	je	.label_398
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	gettime
.label_398:
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
	#Procedure 0x406ad0

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
	#Procedure 0x406ae0
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
	#Procedure 0x406b10

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
	jbe	.label_425
	nop	
	test	r13, r13
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rsp, rsp
	je	.label_408
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	rbp, rbp
	div	r13
	mov	rsp, rsp
	test	rdx, rdx
	jne	.label_408
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
	jmp	.label_448
.label_425:
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
	jne	.label_408
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
	jne	.label_408
.label_448:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x110], rbx
	mov	rbp, rbp
	mov	r14d, r8d
	nop	
	and	r14d, 0x10
	mov	r13d, 0xffffffff
	nop	
	je	.label_402
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0xdc]
	nop	
	mov	edi, ebx
	xor	r13d, r13d
	mov	rbp, rbp
	cmp	rdi, r15
	mov	rbp, rbp
	jbe	.label_411
	nop	
	mov	r12, qword ptr [rsp + 0x110]
	jmp	.label_418
.label_408:
	mov	qword ptr [rsp + 0xe8], rsi
	mov	rbp, rbp
	test	rsi, rsi
	setns	al
	lea	rsi, [rsi]
	movzx	eax, al
	fild	qword ptr [rsp + 0xe8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_404]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rdi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_404]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r13
	lea	rsi, [rsi]
	test	r13, r13
	setns	al
	nop	
	movzx	eax, al
	fild	qword ptr [rsp + 0x78]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_404]]
	fdivrp	st(2)
	mov	rsp, rsp
	fmulp	st(1)
	nop	
	test	r8b, 0x10
	lea	rsi, [rsi]
	jne	.label_422
	nop	
	mov	ecx, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	cmp	ecx, 1
	lea	rsi, [rsi]
	je	.label_416
	mov	rsp, rsp
	fld	xword ptr [word ptr [rip + label_421]]
	fucomip	st(1)
	mov	r15, qword ptr [rsp + 0x68]
	jbe	.label_451
	mov	qword ptr [rsp + 0x140], rsi
	nop	
	mov	dword ptr [rsp + 0x120], r8d
	fld	dword ptr [dword ptr [rip + label_403]]
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
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_404]]
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
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_404]]
	jmp	.label_405
.label_422:
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
.label_441:
	fstp	st(0)
	mov	rsp, rsp
	fmul	st(1), st(0)
	inc	r13d
	fld	st(0)
	mov	rsp, rsp
	fmul	st(2)
	cmp	r13d, 7
	lea	rsi, [rsi]
	jg	.label_438
	lea	rdi, [rdi]
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	nop	
	fldz	
	mov	rbp, rbp
	jae	.label_441
.label_438:
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
	je	.label_443
	fstp	st(0)
	lea	rdi, [rdi]
	fld	xword ptr [word ptr [rip + label_421]]
	mov	rbp, rbp
	fucomip	st(1)
	fld	st(0)
	jbe	.label_443
	nop	
	fstp	st(0)
	fld	dword ptr [dword ptr [rip + label_403]]
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
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_404]]
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
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_404]]
.label_443:
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
	jb	.label_424
	inc	rdx
	mov	ecx, dword ptr [rsp + 0x120]
	test	cl, 8
	jne	.label_436
	nop	
	mov	r14, rdx
	nop	
	jmp	.label_407
.label_402:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x110]
	jmp	.label_418
.label_416:
	mov	qword ptr [rsp + 0x140], rsi
	mov	dword ptr [rsp + 0x120], r8d
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	jmp	.label_405
.label_451:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x140], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x120], r8d
.label_405:
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
	jmp	.label_407
.label_436:
	movzx	ecx, byte ptr [rax + r15 - 1]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_409
.label_424:
	fld	xword ptr [rsp + 0x110]
	fmul	dword ptr [dword ptr [rip + label_413]]
	nop	
	cmp	r14d, 1
	lea	rsi, [rsi]
	je	.label_414
	nop	
	fld	xword ptr [word ptr [rip + label_421]]
	fucomip	st(1)
	mov	rbp, rbp
	jbe	.label_414
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_403]]
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
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_404]]
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
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_404]]
.label_414:
	fdiv	dword ptr [dword ptr [rip + label_413]]
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
	jmp	.label_407
.label_411:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x140], rsi
	nop	word ptr cs:[rax + rax]
.label_423:
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
	jae	.label_450
	add	edx, ebp
	lea	rsi, [rsi]
	setne	al
	movzx	ebp, al
	nop	
	jmp	.label_449
	nop	word ptr cs:[rax + rax]
.label_450:
	add	edx, ebp
	cmp	ebx, edx
	lea	rsi, [rsi]
	sbb	ebp, ebp
	and	ebp, 1
	nop	
	or	ebp, 2
.label_449:
	nop	
	inc	r13d
	cmp	r13d, 7
	mov	rsp, rsp
	jg	.label_420
	lea	rdi, [rdi]
	cmp	rdi, r15
	lea	rsi, [rsi]
	jbe	.label_423
.label_420:
	cmp	r15, 9
	ja	.label_429
	mov	eax, dword ptr [rsp + 0x84]
	cmp	eax, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	jne	.label_430
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	nop	
	cmp	eax, 2
	lea	rsi, [rsi]
	ja	.label_434
	mov	rsp, rsp
	jmp	.label_401
.label_409:
	mov	r14, rdx
.label_407:
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
	jmp	.label_444
.label_429:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	jmp	.label_400
.label_430:
	nop	
	test	eax, eax
	jne	.label_401
	mov	rsp, rsp
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_401
.label_434:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_401
	inc	r15
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	cmp	r15, 9
	mov	rbp, rbp
	mov	ebp, 0
	ja	.label_419
.label_401:
	nop	
	test	r8b, 8
	lea	rdi, [rdi]
	je	.label_410
	test	ecx, ecx
	jne	.label_410
	mov	r12, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	jmp	.label_412
.label_410:
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
.label_412:
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_400:
	mov	rsi, qword ptr [rsp + 0x140]
.label_418:
	mov	eax, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_437
	cmp	eax, 1
	jne	.label_440
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
	jle	.label_440
	lea	rsi, [rsi]
	jmp	.label_446
.label_437:
	add	ecx, ebp
	nop	
	jle	.label_440
.label_446:
	inc	r15
	mov	eax, dword ptr [rsp + 0xdc]
	cmp	r13d, 7
	nop	
	jg	.label_440
	test	r14d, r14d
	lea	rsi, [rsi]
	je	.label_440
	cmp	r15, rax
	jne	.label_440
	mov	qword ptr [rsp + 0x140], rsi
	inc	r13d
	mov	r15d, 1
	mov	rbp, rbp
	test	r8b, 8
	jne	.label_417
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
	jmp	.label_417
.label_440:
	mov	qword ptr [rsp + 0x140], rsi
.label_417:
	mov	rbx, qword ptr [rsp + 0x110]
	nop	
	mov	edi, dword ptr [rsp + 0xf4]
	lea	rdi, [rdi]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, rbp
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_433:
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
	ja	.label_433
.label_444:
	nop	
	test	r8b, 4
	jne	.label_445
	mov	rsp, rsp
	mov	r12, rbp
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	jmp	.label_447
.label_445:
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
	jmp	.label_415
	nop	dword ptr [rax]
.label_431:
	add	r12, r15
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	rdx, r14
	nop	
	call	memcpy
.label_415:
	movzx	eax, byte ptr [r13]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_432
	nop	
	cmp	eax, 0x7f
	cmovae	rax, rbx
	mov	rbp, rbp
	inc	r13
	lea	rsi, [rsi]
	mov	rbp, rax
.label_432:
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
	jne	.label_431
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xf4]
	mov	rbx, qword ptr [rsp + 0x110]
	mov	r8d, dword ptr [rsp + 0x120]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 0x84]
.label_447:
	nop	
	test	r8b, r8b
	mov	rbp, rbp
	jns	.label_399
	test	r13d, r13d
	lea	rdi, [rdi]
	jns	.label_406
	xor	r13d, r13d
	cmp	rsi, 2
	jb	.label_406
	mov	eax, dword ptr [rsp + 0xdc]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, 1
	nop	
.label_442:
	mov	r13d, 8
	cmp	ecx, 7
	je	.label_406
	mov	rbp, rbp
	inc	ecx
	nop	
	imul	rdx, rax
	cmp	rdx, rsi
	mov	r13d, ecx
	jb	.label_442
.label_406:
	nop	
	mov	eax, r8d
	and	eax, 0x100
	mov	rbp, rbp
	test	r8b, 0x40
	lea	rsi, [rsi]
	je	.label_427
	mov	rbp, rbp
	mov	ecx, r13d
	mov	rbp, rbp
	or	ecx, eax
	mov	rsp, rsp
	je	.label_427
	mov	rbx, qword ptr [rsp + 0x68]
	mov	byte ptr [rbx + 0x287], 0x20
	mov	rsp, rsp
	add	rbx, 0x288
.label_427:
	lea	rsi, [rsi]
	test	r13d, r13d
	je	.label_435
	test	edi, edi
	lea	rdi, [rdi]
	jne	.label_426
	mov	cl, 0x6b
	cmp	r13d, 1
	je	.label_439
.label_426:
	lea	rsi, [rsi]
	movsxd	rcx, r13d
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_439:
	nop	
	mov	byte ptr [rbx], cl
	lea	rdi, [rdi]
	inc	rbx
.label_435:
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_399
	mov	rsp, rsp
	test	edi, edi
	je	.label_428
	test	r13d, r13d
	lea	rsi, [rsi]
	je	.label_428
	mov	byte ptr [rbx], 0x69
	inc	rbx
.label_428:
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 0x42
	mov	rsp, rsp
	inc	rbx
.label_399:
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
.label_419:
	xor	ebp, ebp
	mov	r12, qword ptr [rsp + 0x110]
	lea	rdi, [rdi]
	mov	r15d, 0xa
	jmp	.label_400
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407920
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
	jne	.label_455
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.4_0
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	test	rdi, rdi
	jne	.label_455
	mov	edi, OFFSET FLAT:.str.5_0
	call	getenv
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_459
.label_455:
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
	js	.label_461
	cdqe	
	lea	rsi, [rsi]
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	lea	rdi, [rdi]
	mov	qword ptr [r15], 1
.label_453:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_457
.label_461:
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
	je	.label_452
	lea	rsi, [rsi]
	mov	dword ptr [r14], 0
.label_457:
	cmp	qword ptr [r15], 0
	mov	rsp, rsp
	jne	.label_456
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
.label_456:
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
.label_452:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx]
	lea	rsi, [rsi]
	add	al, 0xd0
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	jb	.label_453
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_454:
	mov	rbp, rbp
	cmp	rax, rbx
	je	.label_458
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbx + 1]
	nop	
	inc	rbx
	add	cl, 0xd0
	movzx	ecx, cl
	nop	
	cmp	ecx, 0xa
	nop	
	jae	.label_454
	jmp	.label_453
.label_459:
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
	jmp	.label_453
.label_458:
	mov	ecx, ebp
	mov	rbp, rbp
	or	ecx, 0x80
	or	ebp, 0x180
	mov	rbp, rbp
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x42
	cmove	ecx, ebp
	lea	rsi, [rsi]
	jne	.label_460
	nop	
	movzx	eax, byte ptr [rax - 2]
	lea	rdi, [rdi]
	cmp	eax, 0x69
	mov	rsp, rsp
	jne	.label_453
.label_460:
	lea	rsi, [rsi]
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_453
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b20
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
	je	.label_462
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
.label_462:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_464
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
	je	.label_463
	mov	rbp, rbp
	cmp	eax, 0x76
	mov	rbp, rbp
	jne	.label_464
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
.label_463:
	xor	edi, edi
	call	rbx
.label_464:
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
	#Procedure 0x407c60

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
	je	.label_465
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
.label_465:
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
	je	.label_467
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	cmp	eax, 0x68
	je	.label_468
	mov	rsp, rsp
	cmp	eax, 0x76
	nop	
	je	.label_469
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rdi, [rdi]
	jmp	.label_466
.label_468:
	lea	rdi, [rdi]
	xor	edi, edi
.label_466:
	call	rcx
.label_467:
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
.label_469:
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
	#Procedure 0x407db0

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
	je	.label_470
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
	jl	.label_472
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_472
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
	jne	.label_471
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_471:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_472:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_470:
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
	#Procedure 0x407ea0
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
	#Procedure 0x407ef0
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
	#Procedure 0x407f10
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
	#Procedure 0x407f30
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
	#Procedure 0x407fa0
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
	#Procedure 0x407fc0
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
	je	.label_473
	test	rdx, rdx
	nop	
	je	.label_473
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_473:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408000
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
	#Procedure 0x4080b0

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
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_475:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_579
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_586]]
.label_877:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_878:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_485
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_485
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_509:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_502
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_502:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_509
.label_485:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_519
.label_870:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_519
.label_873:
	lea	rsi, [rsi]
	mov	al, 1
.label_871:
	mov	rbp, rbp
	mov	r12b, 1
.label_874:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_542
	lea	rsi, [rsi]
	mov	cl, al
.label_542:
	mov	rsp, rsp
	mov	al, cl
.label_872:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_547
	test	r10, r10
	je	.label_553
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_555
.label_547:
	xor	ecx, ecx
	jmp	.label_555
.label_875:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_566
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_570
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_478
.label_876:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_519
.label_553:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_555:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_519
.label_566:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_478
.label_570:
	lea	rdi, [rdi]
	mov	eax, 1
.label_478:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_519:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_595
	nop	word ptr cs:[rax + rax]
.label_495:
	nop	
	inc	rdi
.label_595:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_543
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_538
	jmp	.label_549
	nop	dword ptr [rax + rax]
.label_543:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_552
.label_538:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_561
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_564
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_564
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_564:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_594
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_474
	nop	dword ptr [rax + rax]
.label_561:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_474
	nop	word ptr cs:[rax + rax]
.label_594:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_505
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_474
	jmp	.label_483
.label_505:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_474:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_528
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_531]]
.label_892:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_508
	mov	rbp, rbp
	jmp	.label_539
.label_896:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_540
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_544
	nop	
	cmp	rbp, 1
	je	.label_539
	xor	r13d, r13d
	jmp	.label_477
.label_885:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_556
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_483
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_567
	mov	al, r14b
	and	al, 1
	jne	.label_569
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_598
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_598:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_583
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_583:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_589
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_589:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_562
.label_886:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_484
.label_887:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_480
.label_888:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_484
.label_889:
	mov	bl, 0x66
	jmp	.label_484
.label_890:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_480
.label_893:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_492
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_494
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_498
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_498:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_529
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_529:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_524
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_524:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_492:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_477
.label_894:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_537
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_508
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_508
	mov	rbp, rbp
	jmp	.label_548
.label_895:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_550
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_557
	lea	rdi, [rdi]
	jmp	.label_563
.label_528:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_501
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_512:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_588
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_588
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_477
.label_540:
	test	rdi, rdi
	jne	.label_482
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_482
.label_539:
	mov	dl, 1
.label_891:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_490
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_477
.label_556:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_495
	jmp	.label_508
.label_550:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_480
.label_557:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_504
.label_480:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_506
.label_484:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_477
	lea	rsi, [rsi]
	jmp	.label_479
.label_501:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_516
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_516:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_493:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_551
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_559
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_568
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_575
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_593:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_587
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_525
.label_587:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_593
.label_575:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_585
	xor	r13d, r13d
.label_585:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_493
	mov	rsp, rsp
	jmp	.label_512
.label_482:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_477
.label_537:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_508
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_508
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_508
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_515
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_518
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_522
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_526
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_526:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_534
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_534:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_517
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_517:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_545
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_545:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_477
.label_508:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_477:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_571
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_577
	lea	rsi, [rsi]
	jmp	.label_580
.label_571:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_580
.label_577:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_584
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_590
	nop	word ptr cs:[rax + rax]
.label_580:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_590:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_504
	mov	rsp, rsp
	jmp	.label_479
.label_584:
	mov	bl, r15b
.label_479:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_483
	nop	
	cmp	r9d, 2
	jne	.label_489
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_489
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_560
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_560:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_499
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_499:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_591
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_591:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_489:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_513
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_513:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_541
.label_544:
	xor	r13d, r13d
	nop	
	jmp	.label_477
.label_588:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_521
	nop	dword ptr [rax + rax]
.label_535:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_521:
	test	cl, cl
	je	.label_530
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_527
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_536
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_536:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_527
	nop	dword ptr [rax]
.label_530:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_483
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_558
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_558
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_500
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_500:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_573
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_573:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_503
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_503:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_558:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_532
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_532:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_597
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_597:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_488
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_488:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_527:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_504
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_510
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_510
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_514
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_514:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_520
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_520:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_510:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_535
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_535
	nop	word ptr cs:[rax + rax]
.label_504:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_546
	mov	rsp, rsp
	and	al, 1
	jne	.label_546
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_572
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_572:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_487
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_487:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_546:
	mov	rsp, rsp
	mov	bl, r15b
.label_541:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_554
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_554:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_495
.label_567:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_562
.label_569:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_562:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_592
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_592:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_581
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_481
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_582
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_491
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_491:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_496
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_496:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_477
.label_581:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_477
.label_481:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_477
.label_582:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_477
.label_559:
	xor	r13d, r13d
.label_551:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_512
.label_568:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_523
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_476:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_533
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_476
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_512
.label_523:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_512
.label_533:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_512
.label_515:
	xor	r13d, r13d
	jmp	.label_477
.label_518:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_477
.label_549:
	nop	
	mov	r13, rdi
.label_552:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_565
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_576
.label_565:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_578
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_578
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_596
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_578
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_475
.label_578:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_486
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_486
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_486
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_507:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_497
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_497:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_507
.label_486:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_511
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_511
.label_490:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_483
.label_525:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_483
.label_576:
	nop	
	mov	rbp, r13
	jmp	.label_483
.label_506:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_483:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_574:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_511:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
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
.label_596:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_574
.label_494:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_483
.label_563:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_483
.label_548:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_483
.label_522:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_483
.label_579:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409630
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
	#Procedure 0x409770
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
	je	.label_599
	mov	qword ptr [rax], rbx
.label_599:
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
	#Procedure 0x4098c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_600
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_604:
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
	jl	.label_604
.label_600:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_603
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_601]], OFFSET FLAT:slot0
.label_603:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_602
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_602:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409980
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x409990

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
	js	.label_611
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_607
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_609
.label_607:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_606
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
	jne	.label_610
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_610:
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
.label_609:
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
	ja	.label_608
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
	je	.label_605
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_605:
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
.label_608:
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
.label_611:
	lea	rdi, [rdi]
	call	abort
.label_606:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x409c00
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409c10
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
	#Procedure 0x409c40
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
	#Procedure 0x409c70

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
	je	.label_612
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
.label_612:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409d00

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
	je	.label_613
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
.label_613:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409da0

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
	je	.label_614
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
.label_614:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e30
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
	je	.label_615
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
.label_615:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409ea0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_616]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
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
	#Procedure 0x409f40
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_616]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
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
	#Procedure 0x409fe0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_616]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
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
	#Procedure 0x40a050
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_616]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
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
	#Procedure 0x40a0c0

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
	je	.label_619
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
.label_619:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a1a0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_616]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_620
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_620
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
.label_620:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a230
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_616]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_621
	test	rdx, rdx
	je	.label_621
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
.label_621:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2c0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_616]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_622
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_622
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
.label_622:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a360
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_616]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_623
	test	rsi, rsi
	je	.label_623
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
.label_623:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a400
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a410
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
	#Procedure 0x40a430

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
	#Procedure 0x40a450

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
	#Procedure 0x40a480

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
	jne	.label_625
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_627
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_624
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_624
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_624
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_624
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_624
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_624
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_625
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_625
.label_627:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_624
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_624
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_624
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_624
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_624
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_624
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_626
.label_624:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_625:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_626:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_625
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_625
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a5f0

	.globl verror
	.type verror, @function
verror:
	mov	rbp, rbp
	mov	r9, rcx
	mov	rax, rdx
	xor	edx, edx
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r8, rax
	jmp	verror_at_line
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a610

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
	je	.label_629
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_628
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	esi, r14d
	mov	rdx, rbp
	mov	rsp, rsp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_630
.label_628:
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
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
.label_630:
	mov	rdi, rbx
	nop	
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	free
.label_629:
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
	#Procedure 0x40a6f0

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
	je	.label_634
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
	jmp	.label_640
.label_634:
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
.label_640:
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
	ja	.label_637
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_632]]
.label_830:
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
.label_637:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_631
.label_831:
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
.label_832:
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
.label_833:
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
	jmp	.label_638
.label_834:
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
	jmp	.label_635
.label_835:
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
	jmp	.label_633
.label_836:
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
.label_633:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_635:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_638:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_636
.label_838:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_631:
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
	jmp	.label_639
.label_837:
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
.label_639:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_636:
	mov	rbp, rbp
	call	__fprintf_chk
.label_829:
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
	#Procedure 0x40aae0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_641:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_641
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab10

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_645:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_642
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_644
	nop	word ptr cs:[rax + rax]
.label_642:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_644:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_643
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_645
.label_643:
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
	#Procedure 0x40aba0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_646
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
.label_646:
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
.label_648:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_647
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_649
	nop	dword ptr [rax + rax]
.label_647:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_649:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_650
	inc	r9
	cmp	r9, 0xa
	jb	.label_648
.label_650:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ace0
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
	#Procedure 0x40ad70
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
	jb	.label_651
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_652
	test	rax, rax
	je	.label_651
.label_652:
	nop	
	pop	rbx
	ret	
.label_651:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40adc0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_653
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_654
.label_653:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_654:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40adf0
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
	jb	.label_656
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_655
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_655
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_655:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_657
	test	rax, rax
	je	.label_656
.label_657:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_656:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae70

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_658
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_658
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_658:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_659
	test	rax, rax
	nop	
	je	.label_660
.label_659:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_660:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aec0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_661
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_665
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_664
.label_661:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_667
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_667:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_662
.label_664:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_663
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_663
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_663:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_666
	test	rax, rax
	mov	rbp, rbp
	je	.label_665
.label_666:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_665:
	call	xalloc_die
.label_662:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40afa0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_668
	test	rax, rax
	mov	rbp, rbp
	je	.label_669
.label_668:
	pop	rbx
	ret	
.label_669:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40afc0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_670
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_673
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_674
	call	free
	xor	eax, eax
	jmp	.label_671
.label_670:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_672
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_674:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_671
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_672
.label_671:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_672:
	mov	rbp, rbp
	call	xalloc_die
.label_673:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b050
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
	je	.label_675
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_676
.label_675:
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
.label_676:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b0b0
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
	jb	.label_677
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_677
	pop	rcx
	ret	
.label_677:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b0e0

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
	je	.label_679
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_678
.label_679:
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
.label_678:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b140
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
	je	.label_680
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_681
.label_680:
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
.label_681:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b1a0

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
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b1f0

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
	jae	.label_706
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
.label_699:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_699
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
	je	.label_682
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
	je	.label_691
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_703
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_682
	mov	dword ptr [rsp + 4], 1
.label_703:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_701
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_682
.label_691:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_682
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_682
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
	je	.label_682
.label_701:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_694
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
	je	.label_683
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_687
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_687
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
	je	.label_687
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_690
	cmp	eax, 0x44
	nop	
	je	.label_690
	cmp	eax, 0x69
	jne	.label_687
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_707
	lea	rdi, [rdi]
	mov	ecx, 1
.label_707:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_687
.label_694:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_689
.label_690:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_687:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_693
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_696
	jmp	qword ptr [word ptr [+ (rax * 8) + label_700]]
.label_882:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_702
.label_693:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_705
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_708
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_685]]
.label_808:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_702:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_688
.label_696:
	cmp	r13d, 0x54
	nop	
	je	.label_684
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_683
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
	jmp	.label_697
.label_705:
	cmp	r13d, 0x74
	je	.label_684
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_683
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
	jmp	.label_688
.label_809:
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
	jmp	.label_698
.label_810:
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
	jmp	.label_686
.label_811:
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
	jmp	.label_695
.label_684:
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
	jmp	.label_692
.label_708:
	cmp	r13d, 0x5a
	jne	.label_683
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
.label_697:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_686
.label_683:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_682
.label_883:
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
	jmp	.label_695
.label_884:
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
.label_692:
	or	dl, r10b
.label_698:
	lea	rsi, [rsi]
	or	dl, bl
.label_695:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_686:
	mov	rsp, rsp
	mov	rbp, rsi
.label_688:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_704
	or	eax, 2
.label_704:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_689:
	mov	qword ptr [rax], rbp
.label_682:
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
.label_706:
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
	#Procedure 0x40bab0

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
	jmp	.label_721
	nop	word ptr cs:[rax + rax]
.label_719:
	lea	rdi, [rdi]
	inc	rbp
.label_721:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rbp*2]
	cmp	ecx, 0x25
	jne	.label_718
	movzx	ecx, byte ptr [rax + rbp*2 + 1]
	nop	
	cmp	ecx, 0x73
	je	.label_719
	jmp	.label_710
.label_718:
	mov	rbp, rbp
	test	cl, cl
	lea	rdi, [rdi]
	jne	.label_710
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_713
	mov	r14d, dword ptr [rsp]
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12, rbp
	nop	dword ptr [rax]
.label_722:
	mov	rsp, rsp
	cmp	r14d, 0x28
	lea	rsi, [rsi]
	ja	.label_709
	movsxd	rax, r14d
	add	rax, qword ptr [rsp + 0x10]
	add	r14d, 8
	mov	dword ptr [rsp], r14d
	jmp	.label_711
	nop	
.label_709:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
.label_711:
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
	jne	.label_722
	lea	rdi, [rdi]
	test	rbx, -0x80000000
	je	.label_715
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x4b
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	jmp	.label_712
.label_710:
	lea	rdi, [rsp + 0x20]
	mov	esi, 1
	mov	rdx, rax
	mov	rcx, r15
	call	__vasprintf_chk
	test	eax, eax
	js	.label_716
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_712
.label_716:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0xc
	jne	.label_712
	lea	rdi, [rdi]
	call	xalloc_die
.label_713:
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
	jmp	.label_712
.label_715:
	lea	rsi, [rsi]
	inc	rax
	mov	rdi, rax
	call	xmalloc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_720:
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [r15]
	lea	rsi, [rsi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_714
	nop	
	mov	rax, rcx
	add	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r15], ecx
	jmp	.label_717
	nop	word ptr cs:[rax + rax]
.label_714:
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [r15 + 8], rcx
.label_717:
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
	jne	.label_720
	mov	byte ptr [rbx], 0
.label_712:
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
	#Procedure 0x40bcf0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_723
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_724
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
	je	.label_724
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
.label_723:
	mov	ecx, 1
.label_724:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bd60

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
	js	.label_725
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_727
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
	je	.label_725
.label_727:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_725
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_726
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_726:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_725:
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
	#Procedure 0x40be10

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
	je	.label_731
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
.label_731:
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
	ja	.label_744
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_739
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_738
	mov	rsp, rsp
	test	esi, esi
	jne	.label_744
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_737
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_730
.label_744:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_736
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_738
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_740
.label_739:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_735
.label_738:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_742
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_747
.label_742:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_747:
	mov	edx, dword ptr [rax]
.label_743:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_735:
	mov	ebp, eax
.label_732:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_740:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_736
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_741
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_745
.label_736:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_728
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_733
.label_737:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_730:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_743
.label_741:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_745:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_746
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
	jns	.label_734
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_734
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
	js	.label_732
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_729
.label_734:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_732
.label_728:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_733:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_735
.label_746:
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
.label_729:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_732
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_732
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_748
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
	jne	.label_732
.label_748:
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
	jmp	.label_732
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c1e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_749
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_749
	test	byte ptr [rbx + 1], 1
	je	.label_749
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_749:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c220

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
	jne	.label_750
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_750
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_751
.label_750:
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
.label_751:
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
	je	.label_752
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_752:
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
	#Procedure 0x40c2d0

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
	je	.label_753
	nop	
	cmp	r15, -2
	jb	.label_753
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_753
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_753:
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
	#Procedure 0x40c360

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x40c370

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
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_757
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_756:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_754
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_759
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_755
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_758
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_754
.label_758:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_754
.label_755:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_754:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_756
	lea	rsi, [rsi]
	jmp	.label_760
.label_757:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_760:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_759:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c4f0
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
	je	.label_761
	mov	esi, OFFSET FLAT:.str.1_6
	nop	
	jmp	.label_762
.label_761:
	nop	
	mov	esi, OFFSET FLAT:.str_8
.label_762:
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
	#Procedure 0x40c590

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
	je	.label_768
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_764:
	test	r15, r15
	mov	rbp, rbp
	je	.label_763
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_767
.label_763:
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
	jmp	.label_766
	nop	dword ptr [rax]
.label_767:
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
.label_766:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_764
.label_768:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_765
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
.label_765:
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
	#Procedure 0x40c710
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
	jns	.label_771
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_769
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	jmp	.label_770
.label_769:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_8
.label_770:
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
.label_771:
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
	#Procedure 0x40c830
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
	je	.label_772
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_773:
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
	je	.label_772
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_773
.label_772:
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
	#Procedure 0x40c8c0

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
	je	.label_775
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_774
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_776
.label_774:
	nop	
	mov	esi, OFFSET FLAT:.str.1_7
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_775
.label_776:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_775:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c910

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
	je	.label_777
	nop	
	mov	rax, rcx
.label_777:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x40c950

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