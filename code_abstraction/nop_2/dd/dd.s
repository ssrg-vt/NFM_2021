	.section	.text
	.align	16
	#Procedure 0x401cf0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.22
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.25
	mov	ecx, OFFSET FLAT:.str.54
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402100

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, rsi
	mov	r14d, edi
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	mov	rbp, rax
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	test	rbp, rbp
	jne	.label_75
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	call	sigaddset
.label_75:
	lea	rdx, [rsp + 0x50]
	mov	edi, 2
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x50], 1
	je	.label_84
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
.label_84:
	movups	xmm0,  xmmword ptr [word ptr [rip + label_86]]
	movups	xmmword ptr [rsp + 0xc8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_87]]
	movups	xmmword ptr [rsp + 0xb8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_88]]
	movups	xmmword ptr [rsp + 0xa8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_89]]
	movups	xmmword ptr [rsp + 0x98], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_90]]
	movups	xmmword ptr [rsp + 0x88], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_91]]
	movups	xmmword ptr [rsp + 0x78], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_92]]
	movups	xmmword ptr [rsp + 0x68], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	movups	xmmword ptr [rsp + 0x58], xmm0
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	call	sigismember
	test	eax, eax
	je	.label_118
	mov	qword ptr [word ptr [rsp + 80]], OFFSET FLAT:siginfo_handler
	mov	dword ptr [rsp + 0xd8], 0
	lea	rsi, [rsp + 0x50]
	mov	edi, 0xa
	xor	edx, edx
	call	sigaction
.label_118:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	test	eax, eax
	je	.label_124
	mov	qword ptr [word ptr [rsp + 80]], OFFSET FLAT:interrupt_handler
	mov	dword ptr [rsp + 0xd8], 0xc0000000
	lea	rsi, [rsp + 0x50]
	mov	edi, 2
	xor	edx, edx
	call	sigaction
.label_124:
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.27
	mov	esi, OFFSET FLAT:.str.28
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.27
	call	textdomain
	mov	edi, OFFSET FLAT:maybe_close_stdout
	call	atexit
	call	getpagesize
	cdqe	
	mov	qword ptr [word ptr [rip + page_size]],  rax
	mov	r8,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x20], 0
	mov	qword ptr [word ptr [rsp + 24]], OFFSET FLAT:.str.31
	mov	qword ptr [word ptr [rsp + 16]], OFFSET FLAT:.str.30
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.29
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:usage
	xor	r13d, r13d
	mov	edx, OFFSET FLAT:.str.25
	mov	ecx, OFFSET FLAT:.str.27
	mov	r9d, 1
	xor	eax, eax
	mov	edi, r14d
	mov	rsi, r12
	call	parse_gnu_standard_options_only
	mov	byte ptr [byte ptr [rip + close_stdout_required]],  1
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_160]]
	movaps	xmmword ptr [word ptr [rip + trans_table]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_161]]
	movaps	xmmword ptr [word ptr [rip + label_162]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_163]]
	movaps	xmmword ptr [word ptr [rip + label_164]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_165]]
	movaps	xmmword ptr [word ptr [rip + label_166]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_167]]
	movaps	xmmword ptr [word ptr [rip + label_168]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_169]]
	movaps	xmmword ptr [word ptr [rip + label_170]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_171]]
	movaps	xmmword ptr [word ptr [rip + label_172]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_173]]
	movaps	xmmword ptr [word ptr [rip + label_174]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_175]]
	movaps	xmmword ptr [word ptr [rip + label_176]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_177]]
	movaps	xmmword ptr [word ptr [rip + label_178]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_179]]
	movaps	xmmword ptr [word ptr [rip + label_180]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_181]]
	movaps	xmmword ptr [word ptr [rip + label_182]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_183]]
	movaps	xmmword ptr [word ptr [rip + label_184]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_185]]
	movaps	xmmword ptr [word ptr [rip + label_186]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_187]]
	movaps	xmmword ptr [word ptr [rip + label_188]],  xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_189]]
	movaps	xmmword ptr [word ptr [rip + label_190]],  xmm0
	movsxd	r15,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, -1
	cmp	r15d, r14d
	mov	r8d, 0
	jge	.label_191
	movsxd	r13, r14d
	mov	qword ptr [rsp + 0x48], -1
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	nop	word ptr cs:[rax + rax]
.label_63:
	mov	rbp, qword ptr [r12 + r15*8]
	mov	esi, 0x3d
	mov	rdi, rbp
	call	strchr
	mov	r14, rax
	test	r14, r14
	je	.label_20
	inc	r14
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_29:
	mov	al,  byte ptr [byte ptr [rcx + .str.57]]
	test	al, al
	je	.label_26
	movzx	edx, byte ptr [rbp + rcx]
	movzx	eax, al
	inc	rcx
	cmp	edx, eax
	mov	eax, 0
	je	.label_29
	jmp	.label_35
.label_26:
	movzx	eax, byte ptr [rbp + rcx]
	cmp	eax, 0x3d
	je	.label_36
	test	al, al
	mov	eax, 0
	jne	.label_35
.label_36:
	mov	qword ptr [word ptr [rip + input_file]],  r14
	jmp	.label_52
	nop	
.label_35:
	mov	cl,  byte ptr [byte ptr [rax + .str.58]]
	test	cl, cl
	je	.label_44
	movzx	edx, byte ptr [rbp + rax]
	movzx	ecx, cl
	inc	rax
	cmp	edx, ecx
	mov	ecx, 0
	je	.label_35
	jmp	.label_47
.label_44:
	movzx	eax, byte ptr [rbp + rax]
	cmp	eax, 0x3d
	je	.label_48
	test	al, al
	mov	ecx, 0
	jne	.label_47
.label_48:
	mov	qword ptr [word ptr [rip + output_file]],  r14
	jmp	.label_52
	nop	
.label_47:
	mov	al,  byte ptr [byte ptr [rcx + .str.59]]
	test	al, al
	je	.label_45
	movzx	edx, byte ptr [rbp + rcx]
	movzx	eax, al
	inc	rcx
	cmp	edx, eax
	mov	eax, 0
	je	.label_47
	jmp	.label_17
.label_45:
	movzx	eax, byte ptr [rbp + rcx]
	cmp	eax, 0x3d
	je	.label_60
	test	al, al
	mov	eax, 0
	jne	.label_17
.label_60:
	mov	esi, OFFSET FLAT:conversions
	xor	edx, edx
	mov	ecx, OFFSET FLAT:.str.60
	mov	rdi, r14
	call	parse_symbols
	or	dword ptr [dword ptr [rip + conversions_mask]],  eax
	jmp	.label_52
	nop	word ptr cs:[rax + rax]
.label_17:
	mov	cl,  byte ptr [byte ptr [rax + .str.61]]
	test	cl, cl
	je	.label_69
	movzx	edx, byte ptr [rbp + rax]
	movzx	ecx, cl
	inc	rax
	cmp	edx, ecx
	mov	ecx, 0
	je	.label_17
	jmp	.label_79
.label_69:
	movzx	eax, byte ptr [rbp + rax]
	cmp	eax, 0x3d
	je	.label_219
	test	al, al
	mov	ecx, 0
	jne	.label_79
.label_219:
	mov	esi, OFFSET FLAT:flags
	xor	edx, edx
	mov	ecx, OFFSET FLAT:.str.62
	mov	rdi, r14
	call	parse_symbols
	or	dword ptr [dword ptr [rip + input_flags]],  eax
	jmp	.label_52
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	al,  byte ptr [byte ptr [rcx + .str.63]]
	test	al, al
	je	.label_127
	movzx	edx, byte ptr [rbp + rcx]
	movzx	eax, al
	inc	rcx
	cmp	edx, eax
	mov	eax, 0
	je	.label_79
	jmp	.label_102
.label_127:
	movzx	eax, byte ptr [rbp + rcx]
	cmp	eax, 0x3d
	je	.label_103
	test	al, al
	mov	eax, 0
	jne	.label_102
.label_103:
	mov	esi, OFFSET FLAT:flags
	xor	edx, edx
	mov	ecx, OFFSET FLAT:.str.64
	mov	rdi, r14
	call	parse_symbols
	or	dword ptr [dword ptr [rip + output_flags]],  eax
	jmp	.label_52
	nop	word ptr cs:[rax + rax]
.label_102:
	mov	cl,  byte ptr [byte ptr [rax + .str.65]]
	test	cl, cl
	je	.label_116
	movzx	edx, byte ptr [rbp + rax]
	movzx	ecx, cl
	inc	rax
	cmp	edx, ecx
	je	.label_102
	jmp	.label_122
.label_116:
	movzx	eax, byte ptr [rbp + rax]
	cmp	eax, 0x3d
	je	.label_239
	test	al, al
	jne	.label_122
.label_239:
	mov	esi, OFFSET FLAT:statuses
	mov	edx, 1
	mov	ecx, OFFSET FLAT:.str.66
	mov	rdi, r14
	call	parse_symbols
	mov	dword ptr [dword ptr [rip + status_level]],  eax
	jmp	.label_52
.label_122:
	mov	dword ptr [rsp + 0x50], 0
	mov	rdi, r14
	lea	rsi, [rsp + 0x50]
	call	parse_integer
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_233:
	mov	cl,  byte ptr [byte ptr [rdx + .str.67]]
	test	cl, cl
	je	.label_117
	movzx	esi, byte ptr [rbp + rdx]
	movzx	ecx, cl
	inc	rdx
	cmp	esi, ecx
	mov	ecx, 0
	je	.label_233
	jmp	.label_138
.label_117:
	movzx	ecx, byte ptr [rbp + rdx]
	cmp	ecx, 0x3d
	je	.label_139
	test	cl, cl
	mov	ecx, 0
	jne	.label_138
.label_139:
	mov	rdx,  qword ptr [word ptr [rip + page_size]]
	add	rdx, rdx
	mov	rcx, -4
	sub	rcx, rdx
	movabs	rdx, 0x7fffffffffffffff
	cmp	rcx, rdx
	cmovae	rcx, rdx
	mov	qword ptr [word ptr [rip + input_blocksize]],  rax
	mov	edx, 1
	jmp	.label_18
	nop	dword ptr [rax]
.label_138:
	mov	dl,  byte ptr [byte ptr [rcx + .str.68]]
	test	dl, dl
	je	.label_153
	movzx	esi, byte ptr [rbp + rcx]
	movzx	edx, dl
	inc	rcx
	cmp	esi, edx
	mov	edx, 0
	je	.label_138
	jmp	.label_96
.label_153:
	movzx	ecx, byte ptr [rbp + rcx]
	cmp	ecx, 0x3d
	je	.label_217
	test	cl, cl
	mov	edx, 0
	jne	.label_96
.label_217:
	mov	rcx,  qword ptr [word ptr [rip + page_size]]
	neg	rcx
	movabs	rdx, 0x7fffffffffffffff
	cmp	rcx, rdx
	cmovae	rcx, rdx
	mov	qword ptr [word ptr [rip + output_blocksize]],  rax
	mov	edx, 1
	jmp	.label_18
	nop	
.label_96:
	mov	cl,  byte ptr [byte ptr [rdx + .str.69]]
	test	cl, cl
	je	.label_203
	movzx	esi, byte ptr [rbp + rdx]
	movzx	ecx, cl
	inc	rdx
	cmp	esi, ecx
	mov	ecx, 0
	je	.label_96
	jmp	.label_208
.label_203:
	movzx	ecx, byte ptr [rbp + rdx]
	cmp	ecx, 0x3d
	je	.label_209
	test	cl, cl
	mov	ecx, 0
	jne	.label_208
.label_209:
	mov	rdx,  qword ptr [word ptr [rip + page_size]]
	add	rdx, rdx
	mov	rcx, -4
	sub	rcx, rdx
	movabs	rdx, 0x7fffffffffffffff
	cmp	rcx, rdx
	cmovae	rcx, rdx
	mov	rbx, rax
	mov	edx, 1
	jmp	.label_18
	nop	word ptr cs:[rax + rax]
.label_208:
	mov	dl,  byte ptr [byte ptr [rcx + .str.70]]
	test	dl, dl
	je	.label_225
	movzx	esi, byte ptr [rbp + rcx]
	movzx	edx, dl
	inc	rcx
	cmp	esi, edx
	mov	edx, 0
	je	.label_208
	jmp	.label_230
.label_225:
	movzx	ecx, byte ptr [rbp + rcx]
	cmp	ecx, 0x3d
	je	.label_231
	test	cl, cl
	mov	edx, 0
	jne	.label_230
.label_231:
	mov	qword ptr [word ptr [rip + conversion_blocksize]],  rax
	mov	rcx, -1
	mov	edx, 1
	jmp	.label_18
	nop	dword ptr [rax + rax]
.label_230:
	mov	cl,  byte ptr [byte ptr [rdx + .str.71]]
	test	cl, cl
	je	.label_210
	movzx	esi, byte ptr [rbp + rdx]
	movzx	ecx, cl
	inc	rdx
	cmp	esi, ecx
	mov	esi, 0
	je	.label_230
	jmp	.label_25
.label_210:
	mov	dl, byte ptr [rbp + rdx]
	mov	rcx, -1
	test	dl, dl
	je	.label_10
	movzx	edx, dl
	cmp	edx, 0x3d
	mov	esi, 0
	jne	.label_25
.label_10:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x40], rdx
	xor	edx, edx
	jmp	.label_18
	nop	dword ptr [rax + rax]
.label_25:
	mov	cl,  byte ptr [byte ptr [rsi + .str.72]]
	test	cl, cl
	je	.label_24
	movzx	edx, byte ptr [rbp + rsi]
	movzx	ecx, cl
	inc	rsi
	cmp	edx, ecx
	mov	edx, 0
	je	.label_25
	jmp	.label_30
.label_24:
	mov	dl, byte ptr [rbp + rsi]
	mov	rcx, -1
	test	dl, dl
	je	.label_147
	movzx	edx, dl
	cmp	edx, 0x3d
	mov	edx, 0
	jne	.label_30
.label_147:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	xor	edx, edx
	jmp	.label_18
	nop	dword ptr [rax + rax]
.label_30:
	mov	cl,  byte ptr [byte ptr [rdx + .str.73]]
	test	cl, cl
	je	.label_240
	movzx	esi, byte ptr [rbp + rdx]
	movzx	ecx, cl
	inc	rdx
	cmp	esi, ecx
	je	.label_30
	jmp	.label_20
.label_240:
	mov	dl, byte ptr [rbp + rdx]
	mov	rcx, -1
	test	dl, dl
	je	.label_232
	movzx	edx, dl
	cmp	edx, 0x3d
	mov	qword ptr [rsp + 0x48], rax
	mov	edx, 0
	je	.label_18
	jmp	.label_20
.label_232:
	mov	qword ptr [rsp + 0x48], rax
	xor	edx, edx
.label_18:
	cmp	rax, rdx
	jb	.label_57
	cmp	rcx, rax
	jb	.label_58
	mov	eax, dword ptr [rsp + 0x50]
	test	eax, eax
	jne	.label_59
	nop	dword ptr [rax]
.label_52:
	inc	r15
	cmp	r15, r13
	jl	.label_63
	test	rbx, rbx
	je	.label_64
	mov	qword ptr [word ptr [rip + output_blocksize]],  rbx
	mov	qword ptr [word ptr [rip + input_blocksize]],  rbx
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x40]
	mov	r8, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x48]
	jmp	.label_65
.label_64:
	mov	r13, qword ptr [rsp + 0x40]
	mov	r8, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x48]
.label_191:
	or	byte ptr [byte ptr [rip + label_73]],  8
	mov	rdi,  qword ptr [word ptr [rip + input_blocksize]]
	test	rdi, rdi
	jne	.label_74
	mov	qword ptr [word ptr [rip + input_blocksize]],  0x200
	mov	edi, 0x200
.label_74:
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	test	rbx, rbx
	jne	.label_65
	mov	qword ptr [word ptr [rip + output_blocksize]],  0x200
	mov	ebx, 0x200
.label_65:
	cmp	qword ptr [word ptr [rip + conversion_blocksize]],  0
	jne	.label_93
	and	byte ptr [byte ptr [rip + conversions_mask]],  0xe7
.label_93:
	mov	esi,  dword ptr [dword ptr [rip + input_flags]]
	test	esi, 0x101000
	je	.label_98
	or	esi, 0x101000
	mov	dword ptr [dword ptr [rip + input_flags]],  esi
.label_98:
	mov	ecx,  dword ptr [dword ptr [rip + output_flags]]
	test	cl, 1
	jne	.label_101
	test	sil, 0x10
	jne	.label_104
	test	cl, 0xc
	jne	.label_106
	test	r13, r13
	je	.label_108
	mov	eax, esi
	and	eax, 8
	je	.label_108
	xor	edx, edx
	mov	rax, r13
	div	rdi
	mov	qword ptr [word ptr [rip + skip_records]],  rax
	mov	qword ptr [word ptr [rip + skip_bytes]],  rdx
	jmp	.label_110
.label_108:
	test	r13, r13
	je	.label_110
	mov	qword ptr [word ptr [rip + skip_records]],  r13
.label_110:
	cmp	rbp, -1
	je	.label_120
	mov	eax, esi
	and	eax, 4
	je	.label_120
	xor	edx, edx
	mov	rax, rbp
	div	rdi
	mov	qword ptr [word ptr [rip + max_records]],  rax
	mov	qword ptr [word ptr [rip + max_bytes]],  rdx
	jmp	.label_123
.label_120:
	cmp	rbp, -1
	je	.label_123
	mov	qword ptr [word ptr [rip + max_records]],  rbp
.label_123:
	test	r8, r8
	je	.label_55
	mov	eax, ecx
	and	eax, 0x10
	je	.label_55
	xor	edx, edx
	mov	rax, r8
	div	rbx
	mov	qword ptr [word ptr [rip + seek_records]],  rax
	mov	qword ptr [word ptr [rip + seek_bytes]],  rdx
	jmp	.label_66
.label_55:
	test	r8, r8
	je	.label_66
	mov	qword ptr [word ptr [rip + seek_records]],  r8
.label_66:
	mov	ebx,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	edi, ebx
	and	edi, 0x800
	mov	edx, esi
	and	edx, 1
	xor	eax, eax
	or	edi, edx
	jne	.label_132
	mov	al, 1
	cmp	qword ptr [word ptr [rip + skip_records]],  0
	jne	.label_135
	mov	rdx,  qword ptr [word ptr [rip + max_records]]
	inc	rdx
	cmp	rdx, 1
	ja	.label_135
	mov	eax, ecx
	or	eax, esi
	and	eax, 0x4000
	shr	eax, 0xe
.label_135:
	xor	edx, edx
.label_132:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  al
	test	edx, edx
	mov	eax, OFFSET FLAT:iread_fullblock
	mov	edx, OFFSET FLAT:iread
	cmovne	rdx, rax
	mov	qword ptr [word ptr [rip + iread_fnc]],  rdx
	mov	r14d, esi
	and	r14d, 0xfffffffe
	mov	dword ptr [dword ptr [rip + input_flags]],  r14d
	lea	eax, [rbx + 7]
	and	eax, ebx
	test	al, 7
	jne	.label_144
	mov	eax, ebx
	and	eax, 0x18
	lea	edx, [rax + 0x1f]
	test	edx, eax
	jne	.label_155
	mov	eax, ebx
	and	eax, 0x60
	lea	edx, [rax + 0x7f]
	test	edx, eax
	jne	.label_158
	mov	eax, ebx
	and	eax, 0x3000
	lea	edx, [rax + 0x3fff]
	test	edx, eax
	jne	.label_193
	mov	eax, esi
	and	eax, 0x4002
	lea	edx, [rax + 0x7fff]
	test	edx, eax
	jne	.label_141
	mov	eax, ecx
	and	eax, 0x4002
	lea	edx, [rax + 0x7fff]
	test	edx, eax
	jne	.label_141
	test	sil, 2
	je	.label_199
	mov	byte ptr [byte ptr [rip + i_nocache]],  1
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + i_nocache_eof]]
	and	esi, 0xfffffffc
	mov	dword ptr [dword ptr [rip + input_flags]],  esi
	mov	r14d, esi
.label_199:
	test	cl, 2
	je	.label_212
	mov	byte ptr [byte ptr [rip + o_nocache]],  1
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + o_nocache_eof]]
	and	ecx, 0xfffffffd
	mov	dword ptr [dword ptr [rip + output_flags]],  ecx
.label_212:
	test	bl, 1
	je	.label_220
	mov	rax, -0x100
	nop	
.label_85:
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	mov	cl,  byte ptr [byte ptr [rcx + ebcdic_to_ascii]]
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_37]]
	mov	cl,  byte ptr [byte ptr [rcx + ebcdic_to_ascii]]
	mov	byte ptr [byte ptr [rax + label_37]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_38]]
	mov	cl,  byte ptr [byte ptr [rcx + ebcdic_to_ascii]]
	mov	byte ptr [byte ptr [rax + label_38]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_39]]
	mov	cl,  byte ptr [byte ptr [rcx + ebcdic_to_ascii]]
	mov	byte ptr [byte ptr [rax + label_39]],  cl
	add	rax, 4
	jne	.label_85
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
.label_220:
	test	bl, 0x40
	jne	.label_216
	test	bl, 0x20
	je	.label_227
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rcx, -0x100
	nop	word ptr cs:[rax + rax]
.label_40:
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	movzx	edx,  byte ptr [byte ptr [rcx + label_37]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + label_37]],  dl
	movzx	edx,  byte ptr [byte ptr [rcx + label_38]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + label_38]],  dl
	movzx	edx,  byte ptr [byte ptr [rcx + label_39]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + label_39]],  dl
	add	rcx, 4
	jne	.label_40
	jmp	.label_33
.label_216:
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rcx, -0x100
	nop	word ptr [rax + rax]
.label_41:
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	movzx	edx,  byte ptr [byte ptr [rcx + label_37]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + label_37]],  dl
	movzx	edx,  byte ptr [byte ptr [rcx + label_38]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + label_38]],  dl
	movzx	edx,  byte ptr [byte ptr [rcx + label_39]]
	mov	dl, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + label_39]],  dl
	add	rcx, 4
	jne	.label_41
.label_33:
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
.label_227:
	test	bl, 2
	jne	.label_54
	test	bl, 4
	je	.label_56
	mov	rax, -0x100
	nop	word ptr cs:[rax + rax]
.label_81:
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ibm]]
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_37]]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ibm]]
	mov	byte ptr [byte ptr [rax + label_37]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_38]]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ibm]]
	mov	byte ptr [byte ptr [rax + label_38]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_39]]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ibm]]
	mov	byte ptr [byte ptr [rax + label_39]],  cl
	add	rax, 4
	jne	.label_81
	jmp	.label_77
.label_54:
	mov	rax, -0x100
	nop	dword ptr [rax + rax]
.label_80:
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ebcdic]]
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_37]]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ebcdic]]
	mov	byte ptr [byte ptr [rax + label_37]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_38]]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ebcdic]]
	mov	byte ptr [byte ptr [rax + label_38]],  cl
	movzx	ecx,  byte ptr [byte ptr [rax + label_39]]
	mov	cl,  byte ptr [byte ptr [rcx + ascii_to_ebcdic]]
	mov	byte ptr [byte ptr [rax + label_39]],  cl
	add	rax, 4
	jne	.label_80
.label_77:
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
	mov	byte ptr [byte ptr [rip + newline_character]],  1
	mov	byte ptr [byte ptr [rip + space_character]],  1
.label_56:
	mov	rbx,  qword ptr [word ptr [rip + input_file]]
	test	rbx, rbx
	je	.label_119
	nop	word ptr cs:[rax + rax]
.label_114:
	call	process_signals
	xor	edi, edi
	xor	ecx, ecx
	mov	rsi, rbx
	mov	edx, r14d
	call	fd_reopen
	test	eax, eax
	jns	.label_112
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 4
	je	.label_114
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
.label_119:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [word ptr [rip + input_file]],  rax
	mov	esi,  dword ptr [dword ptr [rip + input_flags]]
	xor	edi, edi
	mov	rdx, rax
	call	set_fd_flags
.label_112:
	xor	r12d, r12d
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	test	rax, rax
	setns	byte ptr [byte ptr [rip + input_seekable]]
	cmovs	rax, r12
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  eax
	mov	r15,  qword ptr [word ptr [rip + output_file]]
	test	r15, r15
	je	.label_145
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, eax
	shr	ecx, 6
	mov	edx, ecx
	not	edx
	and	edx, 0x40
	and	ecx, 0x80
	mov	rsi,  qword ptr [word ptr [rip + seek_records]]
	cmp	rsi, 0
	sete	bl
	movzx	ebp, bl
	shl	ebp, 9
	test	ah, 2
	cmovne	ebp, r12d
	or	ecx,  dword ptr [dword ptr [rip + output_flags]]
	or	ebp, edx
	or	ebp, ecx
	cmp	rsi, 0
	je	.label_143
	mov	ebx, ebp
	or	ebx, 2
	nop	word ptr cs:[rax + rax]
.label_121:
	call	process_signals
	mov	edi, 1
	mov	ecx, 0x1b6
	mov	rsi, r15
	mov	edx, ebx
	call	fd_reopen
	test	eax, eax
	jns	.label_197
	cmp	dword ptr [r14], 4
	je	.label_121
	mov	r15,  qword ptr [word ptr [rip + output_file]]
.label_143:
	or	ebp, 1
	nop	dword ptr [rax]
.label_205:
	call	process_signals
	mov	edi, 1
	mov	ecx, 0x1b6
	mov	rsi, r15
	mov	edx, ebp
	call	fd_reopen
	test	eax, eax
	jns	.label_197
	mov	ebx, dword ptr [r14]
	cmp	ebx, 4
	je	.label_205
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
.label_140:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
.label_197:
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	test	rcx, rcx
	je	.label_13
	test	byte ptr [byte ptr [rip + label_73]],  2
	jne	.label_13
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	xor	edx, edx
	movabs	rax, 0x7fffffffffffffff
	div	rbx
	cmp	rax, rcx
	jb	.label_223
	imul	rbx, rcx
	add	rbx,  qword ptr [word ptr [rip + seek_bytes]]
	nop	word ptr cs:[rax + rax]
.label_200:
	call	process_signals
	mov	edi, 1
	mov	rsi, rbx
	call	ftruncate
	test	eax, eax
	jns	.label_236
	mov	ebp, dword ptr [r14]
	cmp	ebp, 4
	je	.label_200
	jmp	.label_238
.label_145:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [word ptr [rip + output_file]],  rax
	mov	esi,  dword ptr [dword ptr [rip + output_flags]]
	mov	edi, 1
	mov	rdx, rax
	call	set_fd_flags
	jmp	.label_13
.label_236:
	je	.label_13
	mov	ebp, dword ptr [r14]
.label_238:
	lea	rdx, [rsp + 0x50]
	mov	edi, 1
	mov	esi, 1
	call	__fxstat
	test	eax, eax
	jne	.label_21
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x8000
	je	.label_23
	cmp	eax, 0x4000
	je	.label_23
.label_13:
	call	gethrxtime
	mov	qword ptr [word ptr [rip + start_time]],  rax
	add	rax, 0x3b9aca00
	mov	qword ptr [word ptr [rip + next_time]],  rax
	mov	rbx,  qword ptr [word ptr [rip + skip_records]]
	mov	rbp,  qword ptr [word ptr [rip + skip_bytes]]
	mov	rax, rbp
	or	rax, rbx
	je	.label_32
	mov	r12,  qword ptr [word ptr [rip + input_offset]]
	mov	r15,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	r8d, OFFSET FLAT:skip_bytes
	mov	rdx, rbx
	mov	rcx, r15
	call	skip
	test	rax, rax
	jne	.label_50
	imul	r15, rbx
	add	r12, rbp
	add	r12, r15
	cmp	r12,  qword ptr [word ptr [rip + input_offset]]
	je	.label_32
	mov	al,  byte ptr [byte ptr [rip + input_offset_overflow]]
	test	al, al
	jne	.label_32
.label_50:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_32
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	nl_error
.label_32:
	mov	rdx,  qword ptr [word ptr [rip + seek_records]]
	mov	rax,  qword ptr [word ptr [rip + seek_bytes]]
	mov	rcx, rax
	or	rcx, rdx
	je	.label_67
	mov	qword ptr [rsp + 0x50], rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	r8, [rsp + 0x50]
	mov	edi, 1
	call	skip
	mov	r13, rax
	mov	r12, qword ptr [rsp + 0x50]
	mov	rax, r12
	or	rax, r13
	je	.label_67
	test	r13, r13
	setne	bl
	mov	r15,  qword ptr [word ptr [rip + obuf]]
	mov	rbp,  qword ptr [word ptr [rip + output_blocksize]]
	cmove	rbp, r12
	xor	esi, esi
	mov	rdi, r15
	mov	rdx, rbp
	call	memset
	mov	rdi, r15
	jmp	.label_97
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	test	r13, r13
	setne	bl
	mov	rbp,  qword ptr [word ptr [rip + output_blocksize]]
	cmove	rbp, r12
.label_97:
	mov	rsi, rbp
	call	iwrite
	cmp	rax, rbp
	jne	.label_105
	test	bl, 1
	je	.label_107
	dec	r13
	jmp	.label_113
	nop	word ptr cs:[rax + rax]
.label_107:
	mov	qword ptr [rsp + 0x50], 0
	xor	r12d, r12d
	xor	r13d, r13d
.label_113:
	mov	rax, r13
	or	rax, r12
	jne	.label_115
.label_67:
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	xor	ebp, ebp
	or	rax,  qword ptr [word ptr [rip + max_records]]
	je	.label_12
	call	alloc_ibuf
	call	alloc_obuf
	mov	dword ptr [rsp + 0x48], 0
	xor	r15d, r15d
	jmp	.label_27
.label_204:
	mov	rdi, r13
	mov	rsi, r9
	call	copy_with_block
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_27:
	cmp	dword ptr [dword ptr [rip + status_level]],  4
	jne	.label_126
	call	gethrxtime
	cmp	qword ptr [word ptr [rip + next_time]],  rax
	jg	.label_126
	mov	rdi, rax
	call	print_xfer_stats
	add	qword ptr [word ptr [rip + next_time]],  0x3b9aca00
.label_126:
	mov	rbp,  qword ptr [word ptr [rip + r_full]]
	add	rbp,  qword ptr [word ptr [rip + r_partial]]
	mov	r13,  qword ptr [word ptr [rip + max_records]]
	mov	rbx,  qword ptr [word ptr [rip + max_bytes]]
	cmp	rbx, 1
	mov	rax, r13
	sbb	rax, -1
	cmp	rbp, rax
	jae	.label_133
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, eax
	and	ecx, 0x500
	mov	r12,  qword ptr [word ptr [rip + ibuf]]
	cmp	ecx, 0x500
	jne	.label_142
	test	al, 0x18
	setne	al
	shl	al, 5
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	movzx	esi, al
	mov	rdi, r12
	call	memset
.label_142:
	cmp	rbp, r13
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	jae	.label_154
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	xor	edi, edi
	mov	rsi, r12
	jmp	.label_156
	nop	dword ptr [rax + rax]
.label_154:
	xor	edi, edi
	mov	rsi, r12
	mov	rdx, rbx
.label_156:
	call	rax
	mov	r12, rax
	test	r12, r12
	jg	.label_192
	je	.label_195
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	ah, 1
	je	.label_198
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_201
.label_198:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
.label_201:
	mov	ebp, 1
	test	ah, 1
	je	.label_211
	call	print_stats
	mov	rbx,  qword ptr [word ptr [rip + input_blocksize]]
	sub	rbx, r15
	xor	edi, edi
	mov	rsi, rbx
	call	invalidate_cache
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	je	.label_215
	mov	rax,  qword ptr [word ptr [rip + input_offset]]
	add	rax, rbx
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	jae	.label_218
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
	mov	cl, 1
	jmp	.label_226
	nop	dword ptr [rax]
.label_215:
	mov	eax,  dword ptr [dword ptr [rip + input_seek_errno]]
	cmp	eax, 0x1d
	je	.label_22
	mov	dword ptr [r14], eax
	jmp	.label_19
	nop	word ptr [rax + rax]
.label_218:
	mov	cl,  byte ptr [byte ptr [rip + input_offset_overflow]]
.label_226:
	shr	rax, 0x3f
	or	al, cl
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  al
	je	.label_146
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.119
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_241
	nop	word ptr [rax + rax]
.label_146:
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	test	rax, rax
	js	.label_19
	mov	rbp,  qword ptr [word ptr [rip + input_offset]]
	sub	rbp, rax
	je	.label_22
	js	.label_15
	cmp	rbp, rbx
	jbe	.label_49
.label_15:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_49
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.120
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_49:
	mov	rdi,  qword ptr [word ptr [rip + input_file]]
	xor	esi, esi
	mov	ecx, 1
	mov	rdx, rbp
	call	skip_via_lseek
	test	rax, rax
	jns	.label_22
	cmp	dword ptr [r14], 0
	jne	.label_19
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.121
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_19:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_241:
	call	nl_error
	mov	byte ptr [byte ptr [rip + input_seekable]],  0
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  0x1d
	mov	dword ptr [rsp + 0x48], 1
.label_22:
	test	r15, r15
	jne	.label_27
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, 0x400
	and	eax, ecx
	mov	r12d, 0
	je	.label_27
	jmp	.label_70
.label_192:
	mov	rax,  qword ptr [word ptr [rip + input_offset]]
	add	rax, r12
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	jae	.label_72
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
.label_72:
	movzx	eax,  byte ptr [byte ptr [rip + i_nocache]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_70
	xor	edi, edi
	mov	rsi, r12
	call	invalidate_cache
.label_70:
	mov	r9,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rdx, r9
	sub	rdx, r12
	jbe	.label_235
	inc	qword ptr [word ptr [rip + r_partial]]
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	ah, 4
	jne	.label_43
	mov	r9, r12
	jmp	.label_46
.label_235:
	inc	qword ptr [word ptr [rip + r_full]]
	mov	r9, r12
	xor	r12d, r12d
	jmp	.label_46
.label_43:
	test	ah, 1
	jne	.label_46
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	add	rdi, r12
	test	al, 0x18
	setne	al
	shl	al, 5
	movzx	esi, al
	mov	rbx, r9
	call	memset
	mov	r9, rbx
.label_46:
	mov	r13,  qword ptr [word ptr [rip + ibuf]]
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	cmp	r13, rdi
	je	.label_128
	test	r9, r9
	je	.label_111
	mov	al,  byte ptr [byte ptr [rip + translation_needed]]
	xor	al, 1
	test	al, 1
	jne	.label_111
	lea	rdx, [r9 - 1]
	test	r9b, 3
	mov	rax, r13
	mov	rcx, r9
	je	.label_137
	mov	ebp, r9d
	and	ebp, 3
	neg	rbp
	mov	rax, r13
	mov	rcx, r9
.label_11:
	movzx	ebx, byte ptr [rax]
	mov	bl,  byte ptr [byte ptr [rbx + trans_table]]
	mov	byte ptr [rax], bl
	dec	rcx
	inc	rax
	inc	rbp
	jne	.label_11
.label_137:
	cmp	rdx, 3
	jb	.label_111
	nop	dword ptr [rax]
.label_94:
	movzx	edx, byte ptr [rax]
	mov	dl,  byte ptr [byte ptr [rdx + trans_table]]
	mov	byte ptr [rax], dl
	movzx	edx, byte ptr [rax + 1]
	mov	dl,  byte ptr [byte ptr [rdx + trans_table]]
	mov	byte ptr [rax + 1], dl
	movzx	edx, byte ptr [rax + 2]
	mov	dl,  byte ptr [byte ptr [rdx + trans_table]]
	mov	byte ptr [rax + 2], dl
	movzx	edx, byte ptr [rax + 3]
	mov	dl,  byte ptr [byte ptr [rdx + trans_table]]
	mov	byte ptr [rax + 3], dl
	add	rax, 4
	add	rcx, -4
	jne	.label_94
.label_111:
	mov	ebp,  dword ptr [dword ptr [rip + conversions_mask]]
	test	bpl, bpl
	jns	.label_134
	movzx	ecx,  byte ptr [byte ptr [rip + char_is_saved]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_136
	mov	cl,  byte ptr [byte ptr [rip + saved_char]]
	mov	byte ptr [r13 - 1], cl
	dec	r13
	inc	r9
	mov	byte ptr [byte ptr [rip + char_is_saved]],  0
.label_136:
	test	r9b, 1
	je	.label_152
	mov	cl, byte ptr [r13 + r9 - 1]
	dec	r9
	mov	byte ptr [byte ptr [rip + saved_char]],  cl
	mov	byte ptr [byte ptr [rip + char_is_saved]],  1
.label_152:
	mov	rcx, r9
	shr	rcx, 1
	je	.label_149
	lea	rdx, [r13 + r9]
	mov	rbx, r9
	shr	rbx, 1
	lea	r8, [rbx - 1]
	test	bl, 7
	je	.label_151
	and	ebx, 7
	neg	rbx
	nop	
.label_61:
	mov	al, byte ptr [rdx - 2]
	mov	byte ptr [rdx], al
	lea	rdx, [rdx - 2]
	dec	rcx
	inc	rbx
	jne	.label_61
.label_151:
	cmp	r8, 7
	jb	.label_149
	nop	word ptr [rax + rax]
.label_194:
	mov	al, byte ptr [rdx - 2]
	mov	byte ptr [rdx], al
	mov	al, byte ptr [rdx - 4]
	mov	byte ptr [rdx - 2], al
	mov	al, byte ptr [rdx - 6]
	mov	byte ptr [rdx - 4], al
	mov	al, byte ptr [rdx - 8]
	mov	byte ptr [rdx - 6], al
	mov	al, byte ptr [rdx - 0xa]
	mov	byte ptr [rdx - 8], al
	mov	al, byte ptr [rdx - 0xc]
	mov	byte ptr [rdx - 0xa], al
	mov	al, byte ptr [rdx - 0xe]
	mov	byte ptr [rdx - 0xc], al
	mov	al, byte ptr [rdx - 0x10]
	mov	byte ptr [rdx - 0xe], al
	lea	rdx, [rdx - 0x10]
	add	rcx, -8
	jne	.label_194
.label_149:
	inc	r13
.label_134:
	test	bpl, 8
	jne	.label_204
	test	bpl, 0x10
	jne	.label_207
	mov	qword ptr [rsp + 0x40], r12
	mov	r15, r14
	jmp	.label_125
	nop	word ptr [rax + rax]
.label_228:
	mov	r15, r14
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	r9, rax
.label_125:
	mov	rbp,  qword ptr [word ptr [rip + output_blocksize]]
	mov	r14,  qword ptr [word ptr [rip + oc]]
	mov	rbx, rbp
	sub	rbx, r14
	cmp	r9, rbx
	cmovb	rbx, r9
	mov	r12, r9
	add	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	add	r14, rbx
	mov	qword ptr [word ptr [rip + oc]],  r14
	cmp	r14, rbp
	jb	.label_222
	call	write_output
.label_222:
	mov	rax, r12
	sub	rax, rbx
	add	r13, rbx
	cmp	r12, rbx
	mov	r14, r15
	jne	.label_228
	mov	r15, qword ptr [rsp + 0x40]
	jmp	.label_27
.label_128:
	mov	rdi, r13
	mov	rsi, r9
	mov	rbx, r9
	call	iwrite
	mov	rcx, rbx
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	cmp	rax, rcx
	jne	.label_109
	cmp	rcx,  qword ptr [word ptr [rip + input_blocksize]]
	jne	.label_202
	inc	qword ptr [word ptr [rip + w_full]]
	mov	r15, r12
	jmp	.label_27
.label_202:
	inc	qword ptr [word ptr [rip + w_partial]]
	mov	r15, r12
	jmp	.label_27
.label_207:
	mov	rdi, r13
	mov	rsi, r9
	call	copy_with_unblock
	mov	r15, r12
	jmp	.label_27
.label_195:
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	and	al, 1
	or	byte ptr [byte ptr [rip + i_nocache_eof]],  al
	movzx	eax,  byte ptr [byte ptr [rip + o_nocache]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_14
	test	byte ptr [byte ptr [rip + label_73]],  2
	sete	al
	jmp	.label_213
.label_14:
	xor	eax, eax
.label_213:
	or	byte ptr [byte ptr [rip + o_nocache_eof]],  al
.label_133:
	mov	ebp, dword ptr [rsp + 0x48]
.label_211:
	movzx	eax,  byte ptr [byte ptr [rip + char_is_saved]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_28
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 8
	jne	.label_34
	test	al, 0x10
	jne	.label_71
	mov	al,  byte ptr [byte ptr [rip + saved_char]]
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_28
	call	write_output
	jmp	.label_28
.label_34:
	mov	edi, OFFSET FLAT:saved_char
	mov	esi, 1
	call	copy_with_block
	jmp	.label_28
.label_71:
	mov	edi, OFFSET FLAT:saved_char
	mov	esi, 1
	call	copy_with_unblock
.label_28:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	rbx,  qword ptr [word ptr [rip + col]]
	test	al, 8
	je	.label_53
	test	rbx, rbx
	je	.label_53
	mov	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	cmp	rbx, rax
	jae	.label_53
	nop	dword ptr [rax]
.label_224:
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
	and	cl, 1
	mov	cl, 0x40
	jne	.label_31
	mov	cl, 0x20
.label_31:
	mov	rdx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rdx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdi + rdx], cl
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_62
	call	write_output
	mov	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
.label_62:
	inc	rbx
	cmp	rbx, rax
	jb	.label_224
	mov	rbx,  qword ptr [word ptr [rip + col]]
.label_53:
	test	rbx, rbx
	je	.label_76
	test	byte ptr [byte ptr [rip + conversions_mask]],  0x10
	je	.label_76
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	and	al, 1
	mov	al, 0x25
	jne	.label_78
	mov	al, 0xa
.label_78:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rcx], al
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_83
	call	write_output
.label_76:
	mov	rsi,  qword ptr [word ptr [rip + oc]]
.label_83:
	test	rsi, rsi
	je	.label_95
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	call	iwrite
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	test	rax, rax
	je	.label_99
	inc	qword ptr [word ptr [rip + w_partial]]
.label_99:
	cmp	rax,  qword ptr [word ptr [rip + oc]]
	jne	.label_109
.label_95:
	movzx	eax,  byte ptr [byte ptr [rip + final_op_was_seek]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_82
	lea	rdx, [rsp + 0x50]
	mov	edi, 1
	mov	esi, 1
	call	__fxstat
	test	eax, eax
	je	.label_159
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	jmp	.label_51
.label_109:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	jmp	.label_51
.label_159:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x68]
	cmp	eax, 0x8000
	jne	.label_82
	mov	edi, 1
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	r15, rax
	test	r15, r15
	js	.label_82
	cmp	qword ptr [rsp + 0x80], r15
	jge	.label_82
	nop	dword ptr [rax]
.label_130:
	call	process_signals
	mov	edi, 1
	mov	rsi, r15
	call	ftruncate
	test	eax, eax
	jns	.label_129
	mov	ebx, dword ptr [r14]
	cmp	ebx, 4
	je	.label_130
	jmp	.label_131
.label_129:
	je	.label_82
	mov	ebx, dword ptr [r14]
.label_131:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbp
	call	nl_error
	jmp	.label_157
.label_82:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	ah, 0x40
	je	.label_196
	mov	edi, 1
	call	fdatasync
	test	eax, eax
	je	.label_148
	mov	ebx, dword ptr [r14]
	cmp	ebx, 0x16
	je	.label_150
	cmp	ebx, 0x26
	je	.label_150
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebp, 1
.label_150:
	mov	eax, 0x8000
	or	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	dword ptr [dword ptr [rip + conversions_mask]],  eax
	jmp	.label_196
.label_148:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
.label_196:
	test	ax, ax
	jns	.label_12
	nop	word ptr cs:[rax + rax]
.label_206:
	mov	edi, 1
	call	fsync
	test	eax, eax
	je	.label_12
	mov	ebx, dword ptr [r14]
	cmp	ebx, 4
	je	.label_206
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
.label_51:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
.label_157:
	mov	ebp, 1
.label_12:
	mov	rcx,  qword ptr [word ptr [rip + max_bytes]]
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	or	rcx,  qword ptr [word ptr [rip + max_records]]
	je	.label_214
	cmp	byte ptr [byte ptr [rip + i_nocache_eof]],  0
	jne	.label_221
	xor	al, 1
	test	al, 1
	jne	.label_237
.label_221:
	xor	edi, edi
	xor	esi, esi
	call	invalidate_cache
.label_237:
	cmp	byte ptr [byte ptr [rip + o_nocache_eof]],  0
	jne	.label_229
	mov	al,  byte ptr [byte ptr [rip + o_nocache]]
	xor	al, 1
	test	al, 1
	jne	.label_16
.label_229:
	mov	edi, 1
	xor	esi, esi
	call	invalidate_cache
	jmp	.label_16
.label_214:
	test	al, 1
	je	.label_234
	xor	edi, edi
	xor	esi, esi
	call	invalidate_cache
	test	al, al
	jne	.label_234
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebp, 1
.label_234:
	movzx	eax,  byte ptr [byte ptr [rip + o_nocache]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_16
	mov	edi, 1
	xor	esi, esi
	call	invalidate_cache
	test	al, al
	jne	.label_16
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebp, 1
.label_16:
	call	cleanup
	call	print_stats
	call	process_signals
	mov	eax, ebp
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	nl_error
	mov	edi, 1
	call	usage
.label_105:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	call	quit
.label_141:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	jmp	.label_42
.label_57:
	mov	dword ptr [rsp + 0x50], 4
	xor	r15d, r15d
	jmp	.label_68
.label_58:
	mov	dword ptr [rsp + 0x50], 1
	mov	r15d, 0x4b
	jmp	.label_68
.label_59:
	xor	ecx, ecx
	cmp	eax, 1
	mov	r15d, 0x4b
	cmovne	r15d, ecx
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rbx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, r15d
	mov	rcx, rbp
	mov	r8, rbx
	call	nl_error
.label_101:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.76
	jmp	.label_100
.label_104:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.77
	jmp	.label_100
.label_106:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	mov	ecx, OFFSET FLAT:.str.78
	mov	edi, OFFSET FLAT:.str.79
	test	al, 4
	cmovne	rdi, rcx
.label_100:
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	nl_error
	mov	edi, 1
	call	usage
.label_144:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	jmp	.label_42
.label_155:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	jmp	.label_42
.label_158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	jmp	.label_42
.label_193:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
.label_42:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_223:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	r8, rbx
	call	nl_error
.label_21:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	jmp	.label_140
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	r8, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	mov	rcx, rbx
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	push	rax
	mov	al,  byte ptr [byte ptr [rip + close_stdout_required]]
	and	al, 1
	je	.label_242
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_243
	pop	rax
	ret	
.label_242:
	pop	rax
	jmp	close_stdout
.label_243:
	mov	edi, 1
	call	_exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f00

	.globl set_fd_flags
	.type set_fd_flags, @function
set_fd_flags:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x90
	mov	r14, rdx
	mov	ebp, esi
	mov	r15d, edi
	and	ebp, 0xfffdfeff
	je	.label_244
	mov	esi, 3
	xor	eax, eax
	mov	edi, r15d
	call	rpl_fcntl
	mov	ebx, eax
	test	ebx, ebx
	js	.label_250
	or	ebp, ebx
	cmp	ebx, ebp
	je	.label_244
	mov	r12b, 1
	test	ebp, 0x10000
	je	.label_245
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, r15d
	call	__fxstat
	test	eax, eax
	jne	.label_247
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	mov	r12b, 1
	cmp	eax, 0x4000
	je	.label_248
	call	__errno_location
	mov	dword ptr [rax], 0x14
.label_247:
	xor	r12d, r12d
.label_248:
	and	ebp, 0xfffeffff
.label_245:
	cmp	ebx, ebp
	je	.label_246
	test	r12b, r12b
	je	.label_246
	xor	ebx, ebx
	mov	esi, 4
	xor	eax, eax
	mov	edi, r15d
	mov	edx, ebp
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_249
	mov	bl, r12b
.label_249:
	mov	r12b, bl
.label_246:
	test	r12b, 1
	je	.label_250
.label_244:
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_250:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404010

	.globl nl_error
	.type nl_error, @function
nl_error:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	r14, rdx
	mov	ebp, esi
	mov	ebx, edi
	test	al, al
	je	.label_251
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_251:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_252
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_254
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_253:
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_252:
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	lea	rcx, [rsp + 0xb0]
	mov	edi, ebx
	mov	esi, ebp
	mov	rdx, r14
	call	verror
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_254:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_253
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404100

	.globl invalidate_cache
	.type invalidate_cache, @function
invalidate_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14d, edi
	test	r14d, r14d
	mov	eax, OFFSET FLAT:i_nocache_eof
	mov	ecx, OFFSET FLAT:o_nocache_eof
	cmove	rcx, rax
	mov	r15b, byte ptr [rcx]
	mov	ecx, OFFSET FLAT:cache_round.i_pending
	mov	eax, OFFSET FLAT:cache_round.o_pending
	cmove	rax, rcx
	mov	rbp, qword ptr [rax]
	test	rbx, rbx
	je	.label_255
	add	rbp, rbx
	mov	r12, rbp
	and	ebp, 0x1ffff
	mov	qword ptr [rax], rbp
	sub	r12, rbp
	mov	r13b, 1
	mov	al, 1
	jbe	.label_265
	jmp	.label_259
.label_255:
	test	rbp, rbp
	setne	r13b
	mov	r12, rbp
.label_259:
	test	r15b, r15b
	jne	.label_264
	mov	rax, r12
	or	rax, rbx
	mov	al, 1
	je	.label_265
.label_264:
	test	rbx, rbx
	cmove	rbp, rbx
	test	r14d, r14d
	je	.label_267
	mov	rsi,  qword ptr [word ptr [rip + invalidate_cache.output_offset]]
	cmp	rsi, -1
	je	.label_256
	test	rsi, rsi
	js	.label_257
	test	rbx, rbx
	je	.label_258
	lea	rax, [rbp + r12]
	add	rsi, rax
	jmp	.label_262
.label_267:
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	je	.label_260
	mov	rsi,  qword ptr [word ptr [rip + input_offset]]
	jmp	.label_266
.label_256:
	xor	eax, eax
	jmp	.label_265
.label_257:
	xor	esi, esi
	mov	edx, 1
	mov	edi, r14d
	call	lseek
	mov	rsi, rax
.label_262:
	mov	qword ptr [word ptr [rip + invalidate_cache.output_offset]],  rsi
.label_266:
	test	rsi, rsi
	js	.label_261
.label_258:
	test	r15b, r15b
	sete	al
	test	rbx, rbx
	setne	cl
	xor	r13b, 1
	or	r13b, cl
	xor	ebx, ebx
	or	r13b, al
	cmovne	rbx, r12
	cmove	rbp, r12
	sub	rsi, rbx
	sub	rsi, rbp
	test	rbx, rbx
	jne	.label_263
	xor	edx, edx
	mov	rax, rsi
	div	qword ptr [word ptr [rip + page_size]]
	sub	rsi, rdx
.label_263:
	mov	ecx, 4
	mov	edi, r14d
	mov	rdx, rbx
	call	posix_fadvise
	cmp	eax, -1
	setne	al
	jmp	.label_265
.label_261:
	xor	eax, eax
	jmp	.label_265
.label_260:
	call	__errno_location
	mov	dword ptr [rax], 0x1d
	xor	eax, eax
.label_265:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404260

	.globl siginfo_handler
	.type siginfo_handler, @function
siginfo_handler:
	inc	dword ptr [dword ptr [rip + info_signal_count]]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	mov	dword ptr [dword ptr [rip + interrupt_signal]],  edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404280

	.globl parse_symbols
	.type parse_symbols, @function
parse_symbols:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rcx
	mov	r12d, edx
	mov	r13, rsi
	mov	rbx, rdi
	xor	r14d, r14d
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_273:
	mov	esi, 0x2c
	mov	rdi, rbx
	call	strchr
	mov	r15, rax
	mov	rax, r13
	nop	word ptr cs:[rax + rax]
.label_268:
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_271:
	mov	dl, byte ptr [rax + rcx]
	test	dl, dl
	je	.label_270
	movzx	esi, byte ptr [rbx + rcx]
	movzx	edx, dl
	inc	rcx
	cmp	esi, edx
	je	.label_271
	jmp	.label_274
	nop	word ptr [rax + rax]
.label_270:
	movzx	ecx, byte ptr [rbx + rcx]
	cmp	ecx, 0x2c
	je	.label_275
	test	cl, cl
	jne	.label_274
.label_275:
	mov	ecx, dword ptr [rax + 0xc]
	test	ecx, ecx
	jne	.label_277
.label_274:
	cmp	byte ptr [rax], 0
	lea	rax, [rax + 0x10]
	jne	.label_268
	jmp	.label_269
	nop	
.label_277:
	test	r12b, r12b
	cmovne	ebp, r14d
	or	ebp, ecx
	test	r15, r15
	lea	rbx, [r15 + 1]
	jne	.label_273
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_269:
	test	r15, r15
	jne	.label_276
	mov	rdi, rbx
	call	strlen
	mov	r15, rax
	jmp	.label_272
.label_276:
	sub	r15, rbx
.label_272:
	xor	edi, edi
	mov	edx, 5
	mov	rsi, qword ptr [rsp]
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, r15
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	rcx, rbp
	mov	r8, rbx
	call	nl_error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043a0

	.globl parse_integer
	.type parse_integer, @function
parse_integer:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 8]
	lea	rcx, [rsp + 0x10]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str.85
	call	xstrtoumax
	cmp	eax, 2
	je	.label_282
	test	eax, eax
	jne	.label_279
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_283
.label_282:
	mov	rdi, qword ptr [rsp + 8]
	movzx	ecx, byte ptr [rdi]
	cmp	ecx, 0x78
	jne	.label_279
	inc	rdi
	mov	rsi, r15
	call	parse_integer
	mov	r14, rax
	test	r14, r14
	mov	rcx, qword ptr [rsp + 0x10]
	je	.label_284
	mov	rax, rcx
	imul	rax, r14
	xor	edx, edx
	div	r14
	cmp	rax, rcx
	jne	.label_280
.label_284:
	test	rcx, rcx
	jne	.label_278
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 2
	mov	rdi, rbx
	call	strncmp
	xor	ecx, ecx
	test	eax, eax
	jne	.label_278
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	call	quote_n
	mov	r12, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.88
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	nl_error
	mov	rcx, qword ptr [rsp + 0x10]
.label_278:
	imul	rcx, r14
	mov	qword ptr [rsp + 0x10], rcx
	jmp	.label_283
.label_279:
	mov	dword ptr [r15], eax
.label_281:
	xor	ecx, ecx
.label_283:
	mov	rax, rcx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_280:
	mov	dword ptr [r15], 1
	jmp	.label_281
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0

	.globl iread_fullblock
	.type iread_fullblock, @function
iread_fullblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_285
	nop	word ptr [rax + rax]
.label_288:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	iread
	test	rax, rax
	js	.label_287
	je	.label_286
	add	rbp, rax
	add	r14, rax
	sub	rbx, rax
	mov	rax, rbp
	jne	.label_288
	jmp	.label_287
.label_285:
	xor	eax, eax
	jmp	.label_287
.label_286:
	mov	rax, rbp
.label_287:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404520

	.globl iread
	.type iread, @function
iread:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	nop	
.label_296:
	call	process_signals
	mov	edi, ebp
	mov	rsi, r15
	mov	rdx, r14
	call	read
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_289
	test	rbx, rbx
	jns	.label_293
	call	__errno_location
	jmp	.label_298
	nop	word ptr [rax + rax]
.label_289:
	call	__errno_location
	mov	rcx,  qword ptr [word ptr [rip + iread.prev_nread]]
	mov	rbx, -1
	cmp	rcx, r14
	jae	.label_298
	cmp	dword ptr [rax], 0x16
	jne	.label_298
	test	rcx, rcx
	jle	.label_298
	test	byte ptr [byte ptr [rip + label_294]],  0x40
	jne	.label_295
	nop	
.label_298:
	cmp	dword ptr [rax], 4
	mov	rax, rbx
	je	.label_296
	jmp	.label_291
.label_293:
	jle	.label_297
	cmp	rbx, r14
	jae	.label_297
	call	process_signals
	jmp	.label_299
.label_297:
	xor	eax, eax
	test	rbx, rbx
	jle	.label_291
.label_299:
	mov	rbp,  qword ptr [word ptr [rip + iread.prev_nread]]
	cmp	rbp, r14
	jae	.label_290
	mov	al,  byte ptr [byte ptr [rip + warn_partial_read]]
	test	al, al
	je	.label_290
	test	rbp, rbp
	jle	.label_290
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_292
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.89
	mov	edx, OFFSET FLAT:.str.90
	mov	r8d, 5
	mov	rcx, rbp
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	nl_error
.label_292:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  0
.label_290:
	mov	rax, rbx
	jmp	.label_291
.label_295:
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_291:
	mov	qword ptr [word ptr [rip + iread.prev_nread]],  rax
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404630

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	push	rbx
	sub	rsp, 0x88
	lea	rbx, [rsp + 8]
	jmp	.label_300
.label_303:
	call	cleanup
	call	print_stats
	mov	edi, ebp
	call	raise
.label_300:
	cmp	dword ptr [dword ptr [rip + interrupt_signal]],  0
	jne	.label_301
	cmp	dword ptr [dword ptr [rip + info_signal_count]],  0
	je	.label_304
.label_301:
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, rbx
	call	sigprocmask
	mov	ebp,  dword ptr [dword ptr [rip + interrupt_signal]]
	mov	eax,  dword ptr [dword ptr [rip + info_signal_count]]
	test	eax, eax
	je	.label_302
	dec	eax
	mov	dword ptr [dword ptr [rip + info_signal_count]],  eax
.label_302:
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rbx
	call	sigprocmask
	test	ebp, ebp
	jne	.label_303
	call	print_stats
	jmp	.label_300
.label_304:
	add	rsp, 0x88
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4046b0

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	push	rbx
	push	rax
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_306
	mov	edi, 1
	call	close
	test	eax, eax
	js	.label_305
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_306:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.91
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
.label_305:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404760

	.globl print_stats
	.type print_stats, @function
print_stats:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_307
	push	rbx
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_311
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_309
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_310:
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_311:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + r_full]]
	mov	r8,  qword ptr [word ptr [rip + r_partial]]
	mov	r9,  qword ptr [word ptr [rip + w_full]]
	mov	rax,  qword ptr [word ptr [rip + w_partial]]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rcx,  qword ptr [word ptr [rip + r_truncate]]
	test	rcx, rcx
	je	.label_312
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	mov	edx, OFFSET FLAT:.str.95
	mov	r8d, 5
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + r_truncate]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_312:
	cmp	dword ptr [dword ptr [rip + status_level]],  2
	lea	rsp, [rsp + 0x10]
	pop	rbx
	jne	.label_308
.label_307:
	ret	
.label_308:
	xor	edi, edi
	jmp	print_xfer_stats
.label_309:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_310
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404860

	.globl print_xfer_stats
	.type print_xfer_stats, @function
print_xfer_stats:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x7f8
	mov	r15, rdi
	test	r15, r15
	mov	rbx, r15
	jne	.label_324
	call	gethrxtime
	mov	rbx, rax
.label_324:
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsp + 0x40]
	mov	edx, 0x1d1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsp + 0x2ce]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	r12, rax
	lea	r13, [rsp + 0x55c]
	sub	rbx,  qword ptr [word ptr [rip + start_time]]
	jle	.label_316
	movq	xmm0, rbx
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_317]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_318]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm1,  qword ptr [word ptr [rip + label_319]]
	movapd	xmmword ptr [rsp + 0x10], xmm1
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	mov	edx, 0x1d1
	mov	ecx, 0x3b9aca00
	mov	rsi, r13
	mov	r8, rbx
	call	human_readable
	mov	r13, rax
	mov	rdi, r13
	call	strlen
	mov	byte ptr [r13 + rax + 2], 0
	mov	word ptr [r13 + rax], 0x732f
	jmp	.label_315
.label_316:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.97
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	esi, 0x28e
	mov	edx, 1
	mov	ecx, 0x28e
	mov	r8d, OFFSET FLAT:.str.96
	xor	eax, eax
	mov	rdi, r13
	mov	r9, rbp
	call	__snprintf_chk
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x10], xmm0
.label_315:
	test	r15, r15
	je	.label_320
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_314
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xd
.label_320:
	test	r15, r15
	mov	eax, OFFSET FLAT:.str.98
	mov	r8d, OFFSET FLAT:.str.99
	cmovne	r8, rax
	lea	rbp, [rsp + 0x20]
	mov	esi, 0x18
	mov	edx, 1
	mov	ecx, 0x18
	mov	al, 1
	mov	rdi, rbp
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	call	__snprintf_chk
	mov	rdi, r14
	call	strlen
	movzx	eax, byte ptr [rax + r14 - 2]
	cmp	eax, 0x20
	jne	.label_323
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
	mov	edx, OFFSET FLAT:.str.101
	mov	r8d, 5
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	lea	r8, [rsp + 0x20]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r9, r13
	jmp	.label_321
.label_323:
	mov	rdi, r12
	call	strlen
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	movzx	eax, byte ptr [rax + r12 - 2]
	xor	edi, edi
	cmp	eax, 0x20
	jne	.label_327
	mov	esi, OFFSET FLAT:.str.102
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	mov	qword ptr [rsp], r13
	lea	r9, [rsp + 0x20]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r14
	jmp	.label_321
.label_327:
	mov	esi, OFFSET FLAT:.str.103
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp], rbp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r14
	mov	r9, r12
.label_321:
	call	__fprintf_chk
	mov	ebx, eax
	test	r15, r15
	je	.label_326
	test	ebx, ebx
	js	.label_313
	mov	ecx,  dword ptr [dword ptr [rip + progress_len]]
	sub	ecx, ebx
	jle	.label_313
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.104
	mov	r8d, OFFSET FLAT:.str_0
	xor	eax, eax
	call	__fprintf_chk
.label_313:
	mov	dword ptr [dword ptr [rip + progress_len]],  ebx
	jmp	.label_322
.label_326:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_325
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_322:
	add	rsp, 0x7f8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_314:
	mov	esi, 0xd
	call	__overflow
	jmp	.label_320
.label_325:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_322
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b40

	.globl skip
	.type skip, @function
skip:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	ebp, edi
	mov	r15, qword ptr [r14]
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rax], 0
	xor	ecx, ecx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r12
	cmp	rax, r13
	jb	.label_343
	mov	rax, r12
	imul	rax, r13
	add	r15, rax
	mov	ecx, 1
	mov	rdi, rbx
	mov	esi, ebp
	mov	rdx, r15
	call	skip_via_lseek
	test	rax, rax
	js	.label_334
	test	ebp, ebp
	jne	.label_335
	lea	rdx, [rsp + 0x18]
	mov	edi, 1
	xor	esi, esi
	call	__fxstat
	test	eax, eax
	jne	.label_340
	mov	eax, 0x2000
	or	eax, dword ptr [rsp + 0x30]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_342
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rcx,  qword ptr [word ptr [rip + input_offset]]
	lea	rdx, [rcx + r15]
	xor	eax, eax
	cmp	rsi, rdx
	jae	.label_346
	sub	r15, rsi
	xor	edx, edx
	mov	rax, r15
	div	r12
	sub	rsi, rcx
	mov	rdx, rsi
	jmp	.label_329
.label_334:
	mov	rax, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rax]
.label_343:
	mov	qword ptr [rsp], rcx
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, rbx
	mov	esi, ebp
	call	skip_via_lseek
	test	rax, rax
	jns	.label_336
	test	ebp, ebp
	je	.label_339
	mov	qword ptr [rsp + 8], rbx
	call	alloc_obuf
	mov	eax, OFFSET FLAT:obuf
	jmp	.label_341
.label_339:
	mov	qword ptr [rsp + 8], rbx
	call	alloc_ibuf
	mov	eax, OFFSET FLAT:ibuf
.label_341:
	mov	rbx, qword ptr [rax]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_337:
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	test	r13, r13
	mov	rdx, r12
	jne	.label_345
	mov	rdx, qword ptr [r14]
.label_345:
	mov	edi, ebp
	mov	rsi, rbx
	call	rax
	test	rax, rax
	js	.label_328
	je	.label_344
	test	ebp, ebp
	jne	.label_330
	add	rax,  qword ptr [word ptr [rip + input_offset]]
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	jae	.label_330
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
	nop	
.label_330:
	test	r13, r13
	je	.label_335
	dec	r13
	jne	.label_337
	cmp	qword ptr [r14], 0
	mov	r13d, 0
	jne	.label_337
	jmp	.label_333
.label_335:
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_333
.label_344:
	mov	r15, r13
	jmp	.label_333
.label_342:
	mov	rdx, r15
	mov	rcx,  qword ptr [word ptr [rip + input_offset]]
	xor	eax, eax
	jmp	.label_329
.label_346:
	mov	rdx, r15
.label_329:
	mov	r15, rax
	add	rcx, rdx
	mov	qword ptr [word ptr [rip + input_offset]],  rcx
	jae	.label_333
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
.label_333:
	mov	rax, r15
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_328:
	test	ebp, ebp
	jne	.label_331
	mov	rax, qword ptr [rsp + 0x10]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	test	byte ptr [byte ptr [rip + label_73]],  1
	je	.label_347
	call	print_stats
	call	quit
.label_331:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsi, qword ptr [rsp]
	mov	rdx, rbx
	call	nl_error
.label_347:
	call	quit
.label_336:
	mov	r14, rbx
	mov	rax, qword ptr [rsp]
	test	eax, eax
	mov	ebx, 0x4b
	cmovne	ebx, eax
	xor	edi, edi
	test	ebp, ebp
	jne	.label_332
	mov	esi, OFFSET FLAT:.str.113
	jmp	.label_338
.label_332:
	mov	esi, OFFSET FLAT:.str.114
.label_338:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	call	quit
.label_340:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	nl_error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e40

	.globl iwrite
	.type iwrite, @function
iwrite:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	test	ah, 0x40
	je	.label_348
	cmp	qword ptr [word ptr [rip + output_blocksize]],  r12
	jbe	.label_348
	mov	edi, 1
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	and	ecx, 0xffffbfff
	mov	edi, 1
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	je	.label_358
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_358
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.116
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
.label_358:
	mov	byte ptr [byte ptr [rip + o_nocache_eof]],  1
	mov	edi, 1
	xor	esi, esi
	call	invalidate_cache
	or	byte ptr [byte ptr [rip + label_73]],  0x80
.label_348:
	lea	rbp, [r12 - 1]
	xor	eax, eax
.label_355:
	mov	r15, rax
	cmp	r15, r12
	jae	.label_350
	lea	r13, [r14 + r15]
	mov	rbx, r12
	sub	rbx, r15
	nop	dword ptr [rax]
.label_360:
	call	process_signals
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  0
	test	byte ptr [byte ptr [rip + label_357]],  1
	je	.label_356
	test	r12, r12
	mov	rax, rbp
	mov	rsi, r14
	je	.label_352
.label_353:
	mov	rdx, rax
	cmp	byte ptr [rsi], 0
	jne	.label_356
	test	rdx, rdx
	je	.label_352
	inc	rsi
	lea	rax, [rdx - 1]
	test	dl, 0xf
	jne	.label_353
	mov	rdi, r14
	call	memcmp
	test	eax, eax
	jne	.label_356
	nop	word ptr cs:[rax + rax]
.label_352:
	mov	edi, 1
	mov	edx, 1
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_349
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  1
	test	r12, r12
	mov	rax, r12
	jne	.label_351
	jmp	.label_356
.label_349:
	and	byte ptr [byte ptr [rip + label_357]],  0xfe
	nop	
.label_356:
	mov	edi, 1
	mov	rsi, r13
	mov	rdx, rbx
	call	write
.label_351:
	test	rax, rax
	jns	.label_359
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_360
	jmp	.label_350
	nop	word ptr cs:[rax + rax]
.label_359:
	test	rax, rax
	lea	rax, [rax + r15]
	jne	.label_355
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_350:
	test	r15, r15
	je	.label_354
	test	byte ptr [byte ptr [rip + o_nocache]],  1
	je	.label_354
	mov	edi, 1
	mov	rsi, r15
	call	invalidate_cache
.label_354:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405020

	.globl quit
	.type quit, @function
quit:
	push	rax
	call	cleanup
	call	print_stats
	call	process_signals
	mov	edi, 1
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405040

	.globl alloc_ibuf
	.type alloc_ibuf, @function
alloc_ibuf:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x290
	cmp	qword ptr [word ptr [rip + ibuf]],  0
	jne	.label_361
	mov	r15,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rbx,  qword ptr [word ptr [rip + page_size]]
	lea	rdi, [r15 + rbx*2 + 3]
	call	malloc
	test	rax, rax
	je	.label_362
	lea	rcx, [rax + rbx + 1]
	xor	edx, edx
	mov	rax, rcx
	div	rbx
	sub	rcx, rdx
	mov	qword ptr [word ptr [rip + ibuf]],  rcx
.label_361:
	add	rsp, 0x290
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.117
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rsi, [rsp]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	r8, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050f0

	.globl alloc_obuf
	.type alloc_obuf, @function
alloc_obuf:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x290
	cmp	qword ptr [word ptr [rip + obuf]],  0
	jne	.label_363
	test	byte ptr [byte ptr [rip + label_73]],  8
	jne	.label_364
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [rip + ibuf]]
	mov	qword ptr [word ptr [rip + obuf]],  rax
	jmp	.label_363
.label_364:
	mov	r15,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rbx,  qword ptr [word ptr [rip + page_size]]
	lea	rdi, [r15 + rbx - 1]
	call	malloc
	test	rax, rax
	je	.label_365
	lea	rcx, [rax + rbx - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rbx
	sub	rcx, rdx
	mov	qword ptr [word ptr [rip + obuf]],  rcx
.label_363:
	add	rsp, 0x290
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_365:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.118
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rsi, [rsp]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	r8, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	call	nl_error
	.section	.text
	.align	16
	#Procedure 0x4051b0

	.globl copy_with_block
	.type copy_with_block, @function
copy_with_block:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	test	r14, r14
	je	.label_369
	mov	rbp,  qword ptr [word ptr [rip + col]]
	mov	r15d, 0x25
	nop	word ptr cs:[rax + rax]
.label_371:
	movsx	ecx, byte ptr [rbx]
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	and	al, 1
	mov	edx, 0xa
	cmovne	edx, r15d
	mov	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	cmp	ecx, edx
	je	.label_366
	cmp	rbp, rax
	jne	.label_373
	inc	qword ptr [word ptr [rip + r_truncate]]
	jmp	.label_368
.label_372:
	inc	rbp
.label_366:
	cmp	rbp, rax
	mov	ecx, 0
	jae	.label_370
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
	and	cl, 1
	mov	cl, 0x40
	jne	.label_367
	mov	cl, 0x20
.label_367:
	mov	rdx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rdx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdi + rdx], cl
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_372
	call	write_output
	mov	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	jmp	.label_372
	nop	word ptr cs:[rax + rax]
.label_373:
	jae	.label_368
	mov	rax,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rax + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rax], cl
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_368
	call	write_output
	mov	rbp,  qword ptr [word ptr [rip + col]]
	nop	word ptr cs:[rax + rax]
.label_368:
	inc	rbp
	mov	rcx, rbp
.label_370:
	mov	qword ptr [word ptr [rip + col]],  rcx
	inc	rbx
	dec	r14
	mov	rbp, rcx
	jne	.label_371
.label_369:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0

	.globl copy_with_unblock
	.type copy_with_unblock, @function
copy_with_unblock:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	xor	ebx, ebx
	test	r15, r15
	je	.label_381
	mov	ebp, 0x40
	nop	
.label_385:
	mov	r12b, byte ptr [r14 + rbx]
	mov	rax,  qword ptr [word ptr [rip + col]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + col]],  rcx
	cmp	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	jae	.label_379
	movsx	eax, r12b
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
	and	cl, 1
	mov	edx, 0x20
	cmovne	edx, ebp
	cmp	eax, edx
	mov	rax,  qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
	jne	.label_380
	inc	rax
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  rax
	jmp	.label_375
	nop	
.label_379:
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  0
	mov	qword ptr [word ptr [rip + col]],  0
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	and	al, 1
	mov	al, 0x25
	jne	.label_378
	mov	al, 0xa
.label_378:
	dec	rbx
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jae	.label_383
	jmp	.label_375
	nop	word ptr cs:[rax + rax]
.label_380:
	test	rax, rax
	jne	.label_382
	jmp	.label_384
	nop	word ptr [rax + rax]
.label_374:
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
.label_382:
	test	cl, 1
	mov	cl, 0x40
	jne	.label_376
	mov	cl, 0x20
.label_376:
	mov	rdx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rdx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdi + rdx], cl
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_377
	call	write_output
	mov	rax,  qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
.label_377:
	dec	rax
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  rax
	jne	.label_374
.label_384:
	mov	rax,  qword ptr [word ptr [rip + oc]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + oc]],  rcx
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rax], r12b
	cmp	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_375
.label_383:
	call	write_output
.label_375:
	inc	rbx
	cmp	rbx, r15
	jb	.label_385
.label_381:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405450

	.globl write_output
	.type write_output, @function
write_output:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	call	iwrite
	mov	rbx, rax
	add	qword ptr [word ptr [rip + w_bytes]],  rbx
	cmp	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	jne	.label_386
	inc	qword ptr [word ptr [rip + w_full]]
	mov	qword ptr [word ptr [rip + oc]],  0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_386:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	nl_error
	test	rbx, rbx
	je	.label_387
	inc	qword ptr [word ptr [rip + w_partial]]
.label_387:
	call	quit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054f0

	.globl skip_via_lseek
	.type skip_via_lseek, @function
skip_via_lseek:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x60
	mov	r15d, ecx
	mov	r12, rdx
	mov	ebp, esi
	mov	r14, rdi
	lea	rdx, [rsp + 0x30]
	mov	esi, 0x80306d02
	xor	eax, eax
	mov	edi, ebp
	call	ioctl
	mov	ebx, eax
	mov	edi, ebp
	mov	rsi, r12
	mov	edx, r15d
	call	lseek
	mov	r15, rax
	test	ebx, ebx
	jne	.label_388
	test	r15, r15
	js	.label_388
	lea	rdx, [rsp]
	mov	esi, 0x80306d02
	xor	eax, eax
	mov	edi, ebp
	call	ioctl
	test	eax, eax
	jne	.label_388
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_388
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	eax, ecx
	jne	.label_388
	shr	rcx, 0x20
	shr	rax, 0x20
	cmp	eax, ecx
	jne	.label_388
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_389
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.115
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8, qword ptr [rsp]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	nl_error
.label_389:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	r15, -1
.label_388:
	mov	rax, r15
	add	rsp, 0x60
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055d0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_391
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_390
	test	cl, cl
	jne	.label_390
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_390
.label_391:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_390
	call	__errno_location
	mov	dword ptr [rax], 0
.label_390:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405630
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405640
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405650

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_395
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_394
	cmp	dword ptr [rbp], 0x20
	jne	.label_394
.label_395:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_393
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_394:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_392
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_393:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_392:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405710

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_397
	test	ebx, ebx
	js	.label_397
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_396
.label_397:
	mov	eax, ebx
.label_396:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405770

	.globl gethrxtime
	.type gethrxtime, @function
gethrxtime:
	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	mov	edi, 1
	call	clock_gettime
	test	eax, eax
	je	.label_398
	lea	rdi, [rsp + 8]
	call	gettime
.label_398:
	mov	rcx, qword ptr [rsp + 0x10]
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	add	rdx, qword ptr [rsp + 8]
	sub	rcx, rax
	imul	rax, rdx, 0x3b9aca00
	add	rax, rcx
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4057e0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4057f0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405810

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r12, r8
	mov	r13, rcx
	mov	r14d, edx
	mov	r15, rsi
	mov	qword ptr [rsp + 0x58], r15
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r14d
	and	eax, 3
	mov	dword ptr [rsp + 0x44], eax
	mov	eax, r14d
	and	eax, 0x20
	mov	dword ptr [rsp + 0x64], eax
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x40], ecx
	call	localeconv
	mov	rbx, rax
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, OFFSET FLAT:.str_3
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, rbp
	call	strlen
	mov	rsi, r12
	cmp	rax, 0x11
	mov	eax, OFFSET FLAT:.str_0
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x68], rax
	lea	rbx, [r15 + 0x287]
	cmp	rsi, r13
	jbe	.label_443
	test	r13, r13
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_420
	xor	edx, edx
	mov	rax, rsi
	div	r13
	test	rdx, rdx
	jne	.label_420
	xor	edx, edx
	mov	rax, rsi
	div	r13
	mov	rbp, rsi
	mov	rsi, rax
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	r15, rax
	add	rdx, rdx
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	add	rdx, rdx
	setne	al
	cmp	rsi, rdx
	sbb	edi, edi
	and	edi, 1
	or	edi, 2
	cmp	rdx, rsi
	mov	rsi, rbp
	movzx	ebp, al
	cmovae	ebp, edi
	jmp	.label_434
.label_443:
	xor	edx, edx
	mov	rax, r13
	div	rsi
	test	rdx, rdx
	mov	r8d, r14d
	mov	rdi, qword ptr [rsp + 0x50]
	jne	.label_420
	xor	ebp, ebp
	xor	edx, edx
	mov	rax, r13
	div	rsi
	mov	rcx, rax
	mov	r15, rcx
	imul	r15, rdi
	xor	edx, edx
	mov	rax, r15
	div	rcx
	cmp	rax, rdi
	mov	ecx, 0
	jne	.label_420
.label_434:
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14d, r8d
	and	r14d, 0x10
	mov	r13d, 0xffffffff
	je	.label_429
	mov	ebx, dword ptr [rsp + 0x40]
	mov	edi, ebx
	xor	r13d, r13d
	cmp	rdi, r15
	jbe	.label_435
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_437
.label_420:
	mov	qword ptr [rsp + 0xe8], rsi
	test	rsi, rsi
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xe8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_405]]
	mov	qword ptr [rsp + 0xf0], rdi
	test	rdi, rdi
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xf0]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_405]]
	mov	qword ptr [rsp + 0xf8], r13
	test	r13, r13
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xf8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_405]]
	fdivrp	st(2)
	fmulp	st(1)
	test	r8b, 0x10
	jne	.label_442
	mov	ecx, dword ptr [rsp + 0x44]
	cmp	ecx, 1
	je	.label_407
	fld	xword ptr [word ptr [rip + label_399]]
	fucomip	st(1)
	mov	r15, qword ptr [rsp + 0x58]
	jbe	.label_410
	mov	qword ptr [rsp + 0x48], rsi
	mov	dword ptr [rsp + 0x50], r8d
	fld	dword ptr [dword ptr [rip + label_404]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x7e]
	mov	ax, word ptr [rsp + 0x7e]
	mov	word ptr [rsp + 0x7e], 0xc7f
	fldcw	word ptr [rsp + 0x7e]
	mov	word ptr [rsp + 0x7e], ax
	fistp	qword ptr [rsp + 0x88]
	fldcw	word ptr [rsp + 0x7e]
	fnstcw	word ptr [rsp + 0x7c]
	mov	ax, word ptr [rsp + 0x7c]
	mov	word ptr [rsp + 0x7c], 0xc7f
	fldcw	word ptr [rsp + 0x7c]
	mov	word ptr [rsp + 0x7c], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0x80]
	fldcw	word ptr [rsp + 0x7c]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0x88]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0x80]
	test	ecx, ecx
	sete	cl
	mov	qword ptr [rsp + 0x90], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_405]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0x98], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x98]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_405]]
	jmp	.label_406
.label_442:
	mov	qword ptr [rsp + 0x48], rsi
	mov	eax, dword ptr [rsp + 0x40]
	mov	eax, eax
	mov	qword ptr [rsp + 0xe0], rax
	fld1	
	xor	r13d, r13d
	fild	qword ptr [rsp + 0xe0]
	fldz	
	nop	dword ptr [rax + rax]
.label_423:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	r13d
	fld	st(0)
	fmul	st(2)
	cmp	r13d, 7
	jg	.label_418
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_423
.label_418:
	fstp	st(1)
	fstp	st(0)
	mov	dword ptr [rsp + 0x50], r8d
	fdivp	st(1)
	mov	r14d, dword ptr [rsp + 0x44]
	cmp	r14d, 1
	fld	st(0)
	mov	r15, qword ptr [rsp + 0x58]
	mov	ebp, dword ptr [rsp + 0x64]
	je	.label_400
	fstp	st(0)
	fld	xword ptr [word ptr [rip + label_399]]
	fucomip	st(1)
	fld	st(0)
	jbe	.label_400
	fstp	st(0)
	fld	dword ptr [dword ptr [rip + label_404]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x7a]
	mov	ax, word ptr [rsp + 0x7a]
	mov	word ptr [rsp + 0x7a], 0xc7f
	fldcw	word ptr [rsp + 0x7a]
	mov	word ptr [rsp + 0x7a], ax
	fistp	qword ptr [rsp + 0xc8]
	fldcw	word ptr [rsp + 0x7a]
	fnstcw	word ptr [rsp + 0x78]
	mov	ax, word ptr [rsp + 0x78]
	mov	word ptr [rsp + 0x78], 0xc7f
	fldcw	word ptr [rsp + 0x78]
	mov	word ptr [rsp + 0x78], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0xc0]
	fldcw	word ptr [rsp + 0x78]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0xc8]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0xc0]
	test	r14d, r14d
	sete	cl
	mov	qword ptr [rsp + 0xd0], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0xd0]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_405]]
	fucomip	st(1)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0xd8], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xd8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_405]]
.label_400:
	fxch	st(1)
	fstp	xword ptr [rsp + 0x30]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ecx, ebp
	shr	ecx, 5
	xor	ecx, 1
	or	rcx, 2
	mov	rdx, qword ptr [rsp + 0x20]
	add	rcx, rdx
	cmp	rcx, rax
	jb	.label_433
	inc	rdx
	mov	ecx, dword ptr [rsp + 0x50]
	test	cl, 8
	jne	.label_440
	mov	r14, rdx
	jmp	.label_421
.label_429:
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_437
.label_407:
	mov	qword ptr [rsp + 0x48], rsi
	mov	dword ptr [rsp + 0x50], r8d
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_406
.label_410:
	mov	qword ptr [rsp + 0x48], rsi
	mov	dword ptr [rsp + 0x50], r8d
.label_406:
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_0
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	r13d, 0xffffffff
	jmp	.label_421
.label_440:
	movzx	ecx, byte ptr [rax + r15 - 1]
	cmp	ecx, 0x30
	jne	.label_401
.label_433:
	fld	xword ptr [rsp + 0x30]
	fmul	dword ptr [dword ptr [rip + label_402]]
	cmp	r14d, 1
	je	.label_409
	fld	xword ptr [word ptr [rip + label_399]]
	fucomip	st(1)
	jbe	.label_409
	fld	dword ptr [dword ptr [rip + label_404]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp + 0x76]
	mov	ax, word ptr [rsp + 0x76]
	mov	word ptr [rsp + 0x76], 0xc7f
	fldcw	word ptr [rsp + 0x76]
	mov	word ptr [rsp + 0x76], ax
	fistp	qword ptr [rsp + 0xa8]
	fldcw	word ptr [rsp + 0x76]
	fnstcw	word ptr [rsp + 0x74]
	mov	ax, word ptr [rsp + 0x74]
	mov	word ptr [rsp + 0x74], 0xc7f
	fldcw	word ptr [rsp + 0x74]
	mov	word ptr [rsp + 0x74], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0xa0]
	fldcw	word ptr [rsp + 0x74]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp + 0xa8]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp + 0xa0]
	test	r14d, r14d
	sete	cl
	mov	qword ptr [rsp + 0xb0], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0xb0]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_405]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	mov	rsi, rbx
	setne	bl
	or	bl, dl
	and	bl, cl
	movzx	ecx, bl
	mov	rbx, rsi
	add	rcx, rax
	mov	qword ptr [rsp + 0xb8], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0xb8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_405]]
.label_409:
	fdiv	dword ptr [dword ptr [rip + label_402]]
	fstp	xword ptr [rsp]
	xor	r14d, r14d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_0
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	jmp	.label_421
.label_435:
	mov	qword ptr [rsp + 0x48], rsi
	nop	dword ptr [rax + rax]
.label_413:
	xor	edx, edx
	mov	rax, r15
	div	rdi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	esi, ebp
	sar	esi, 1
	xor	edx, edx
	mov	r15, rax
	mov	eax, ecx
	div	ebx
	lea	edx, [rsi + rdx*2]
	cmp	edx, ebx
	mov	ecx, eax
	jae	.label_422
	add	edx, ebp
	setne	al
	movzx	ebp, al
	jmp	.label_427
	nop	
.label_422:
	add	edx, ebp
	cmp	ebx, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_427:
	inc	r13d
	cmp	r13d, 7
	jg	.label_432
	cmp	rdi, r15
	jbe	.label_413
.label_432:
	cmp	r15, 9
	ja	.label_436
	mov	eax, dword ptr [rsp + 0x44]
	cmp	eax, 1
	mov	rdx, qword ptr [rsp + 0x58]
	jne	.label_438
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_441
	jmp	.label_444
.label_401:
	mov	r14, rdx
.label_421:
	mov	qword ptr [rsp + 0x58], r15
	mov	rbp, rbx
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	memmove
	mov	r12, rbx
	sub	r12, r14
	mov	r8d, dword ptr [rsp + 0x50]
	mov	edi, dword ptr [rsp + 0x64]
	jmp	.label_447
.label_436:
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_446
.label_438:
	test	eax, eax
	jne	.label_444
	test	ebp, ebp
	je	.label_444
.label_441:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_444
	inc	r15
	xor	ecx, ecx
	cmp	r15, 9
	mov	ebp, 0
	ja	.label_451
.label_444:
	test	r8b, 8
	je	.label_403
	test	ecx, ecx
	jne	.label_403
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_408
.label_403:
	add	ecx, 0x30
	lea	r12, [rdx + 0x286]
	mov	byte ptr [rdx + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x20]
	sub	r12, rdx
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ebx, r8d
	call	memcpy
	mov	r8d, ebx
	xor	ebp, ebp
.label_408:
	xor	ecx, ecx
.label_446:
	mov	rsi, qword ptr [rsp + 0x48]
.label_437:
	mov	eax, dword ptr [rsp + 0x44]
	test	eax, eax
	je	.label_425
	cmp	eax, 1
	jne	.label_424
	movsxd	rax, ebp
	mov	edx, r15d
	and	edx, 1
	add	rdx, rax
	setne	al
	movzx	eax, al
	add	eax, ecx
	cmp	eax, 5
	jle	.label_424
	jmp	.label_430
.label_425:
	add	ecx, ebp
	jle	.label_424
.label_430:
	inc	r15
	mov	eax, dword ptr [rsp + 0x40]
	cmp	r13d, 7
	jg	.label_424
	test	r14d, r14d
	je	.label_424
	cmp	r15, rax
	jne	.label_424
	mov	qword ptr [rsp + 0x48], rsi
	inc	r13d
	mov	r15d, 1
	test	r8b, 8
	jne	.label_445
	mov	byte ptr [r12 - 1], 0x30
	dec	r12
	mov	rdx, qword ptr [rsp + 0x20]
	sub	r12, rdx
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ebx, r8d
	call	memcpy
	mov	r8d, ebx
	mov	r15d, 1
	jmp	.label_445
.label_424:
	mov	qword ptr [rsp + 0x48], rsi
.label_445:
	mov	rbx, qword ptr [rsp + 0x30]
	mov	edi, dword ptr [rsp + 0x64]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_450:
	mov	rax, r15
	mul	rcx
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	esi, r15d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	dec	rbp
	shr	rdx, 3
	cmp	r15, 9
	mov	r15, rdx
	ja	.label_450
.label_447:
	test	r8b, 4
	jne	.label_414
	mov	r12, rbp
	mov	rsi, qword ptr [rsp + 0x48]
	jmp	.label_416
.label_414:
	mov	dword ptr [rsp + 0x44], r13d
	mov	dword ptr [rsp + 0x50], r8d
	mov	qword ptr [rsp + 0x30], rbx
	mov	dword ptr [rsp + 0x64], edi
	mov	rbx, r12
	sub	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x68]
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x100]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	r15, r14
	neg	r15
	mov	rbp, -1
	mov	r13, qword ptr [rsp + 0x28]
	jmp	.label_428
.label_448:
	add	r12, r15
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, r14
	call	memcpy
.label_428:
	movzx	eax, byte ptr [r13]
	test	rax, rax
	je	.label_439
	cmp	eax, 0x7f
	cmovae	rax, rbx
	inc	r13
	mov	rbp, rax
.label_439:
	cmp	rbx, rbp
	cmovb	rbp, rbx
	sub	r12, rbp
	mov	rax, rbx
	sub	rax, rbp
	lea	rsi, [rsp + rax + 0x100]
	mov	rdi, r12
	mov	rdx, rbp
	call	memcpy
	sub	rbx, rbp
	jne	.label_448
	mov	edi, dword ptr [rsp + 0x64]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8d, dword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	r13d, dword ptr [rsp + 0x44]
.label_416:
	test	r8b, r8b
	jns	.label_419
	test	r13d, r13d
	jns	.label_449
	xor	r13d, r13d
	cmp	rsi, 2
	jb	.label_449
	mov	eax, dword ptr [rsp + 0x40]
	xor	ecx, ecx
	mov	edx, 1
	nop	dword ptr [rax]
.label_411:
	mov	r13d, 8
	cmp	ecx, 7
	je	.label_449
	inc	ecx
	imul	rdx, rax
	cmp	rdx, rsi
	mov	r13d, ecx
	jb	.label_411
.label_449:
	mov	eax, r8d
	and	eax, 0x100
	test	r8b, 0x40
	je	.label_417
	mov	ecx, r13d
	or	ecx, eax
	je	.label_417
	mov	rbx, qword ptr [rsp + 0x58]
	mov	byte ptr [rbx + 0x287], 0x20
	add	rbx, 0x288
.label_417:
	test	r13d, r13d
	je	.label_426
	test	edi, edi
	jne	.label_415
	mov	cl, 0x6b
	cmp	r13d, 1
	je	.label_412
.label_415:
	movsxd	rcx, r13d
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_412:
	mov	byte ptr [rbx], cl
	inc	rbx
.label_426:
	test	eax, eax
	je	.label_419
	test	edi, edi
	je	.label_431
	test	r13d, r13d
	je	.label_431
	mov	byte ptr [rbx], 0x69
	inc	rbx
.label_431:
	mov	byte ptr [rbx], 0x42
	inc	rbx
.label_419:
	mov	byte ptr [rbx], 0
	mov	rax, r12
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_451:
	xor	ebp, ebp
	mov	r12, qword ptr [rsp + 0x30]
	mov	r15d, 0xa
	jmp	.label_446
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061c0
	.globl human_options
	.type human_options, @function
human_options:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	test	rdi, rdi
	jne	.label_452
	mov	edi, OFFSET FLAT:.str.4_0
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_452
	mov	edi, OFFSET FLAT:.str.5_0
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_458
.label_452:
	movzx	eax, byte ptr [rdi]
	lea	rbx, [rdi + 1]
	cmp	eax, 0x27
	sete	al
	cmovne	rbx, rdi
	movzx	ebp, al
	shl	ebp, 2
	mov	esi, OFFSET FLAT:block_size_args
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_457
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_453:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_460
.label_457:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.6_0
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_454
	mov	dword ptr [r14], 0
.label_460:
	cmp	qword ptr [r15], 0
	jne	.label_456
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	mov	eax, 0x200
	mov	ecx, 0x400
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	mov	eax, 4
.label_456:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_454:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	movzx	eax, al
	cmp	eax, 0xa
	jb	.label_453
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_461:
	cmp	rax, rbx
	je	.label_459
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	movzx	ecx, cl
	cmp	ecx, 0xa
	jae	.label_461
	jmp	.label_453
.label_458:
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	mov	eax, 0x200
	mov	ecx, 0x400
	cmovne	rcx, rax
	mov	qword ptr [r15], rcx
	xor	ebp, ebp
	jmp	.label_453
.label_459:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x42
	cmove	ecx, ebp
	jne	.label_455
	movzx	eax, byte ptr [rax - 2]
	cmp	eax, 0x69
	jne	.label_453
.label_455:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_453
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406330
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_462
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_462:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_463
	mov	edi, 2
	mov	edx, OFFSET FLAT:.str_4
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_464
	cmp	eax, 0x76
	jne	.label_463
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_464:
	xor	edi, edi
	call	rbx
.label_463:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406430

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xc8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_468
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_468:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:.str_0
	mov	edx, OFFSET FLAT:.str_4
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_466
	mov	rcx, qword ptr [rsp + 0xf0]
	cmp	eax, 0x68
	je	.label_467
	cmp	eax, 0x76
	je	.label_469
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_465
.label_467:
	xor	edi, edi
.label_465:
	call	rcx
.label_466:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_469:
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf8]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406540

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_470
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_471
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_471
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_472
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_472:
	mov	rbx, r14
.label_471:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_470:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065f0
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	cmove	rbx, rax
	mov	esi, 0x38
	mov	rdi, rbx
	call	xmemdup
	mov	dword ptr [r14], ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406630
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406640
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406650
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
	shr	al, 5
	movzx	r8d, al
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	edi, r9d
	shr	edi, cl
	mov	eax, edi
	and	eax, 1
	xor	edi, edx
	and	edi, 1
	shl	edi, cl
	xor	edi, r9d
	mov	dword ptr [rsi + r8*4 + 8], edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406690
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066b0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_473
	test	rdx, rdx
	je	.label_473
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_473:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066e0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
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
	#Procedure 0x406760

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_548:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_481
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_489]]
.label_848:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_849:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_519
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_519
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_536:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_527
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_527:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_536
.label_519:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_474
.label_841:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_474
.label_844:
	mov	al, 1
.label_842:
	mov	r12b, 1
.label_845:
	test	r12b, 1
	mov	cl, 1
	je	.label_560
	mov	cl, al
.label_560:
	mov	al, cl
.label_843:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_564
	test	r10, r10
	je	.label_568
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_569
.label_564:
	xor	ecx, ecx
	jmp	.label_569
.label_846:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_576
	test	r10, r10
	je	.label_584
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_487
.label_847:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_474
.label_568:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_569:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_474
.label_576:
	xor	eax, eax
	jmp	.label_487
.label_584:
	mov	eax, 1
.label_487:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_474:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_516
.label_524:
	inc	rdi
.label_516:
	cmp	rbp, -1
	je	.label_540
	cmp	rdi, rbp
	jne	.label_542
	jmp	.label_543
	nop	word ptr cs:[rax + rax]
.label_540:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_547
.label_542:
	test	r12b, r12b
	je	.label_551
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_553
	cmp	rbp, -1
	jne	.label_553
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_553:
	cmp	rbx, rbp
	jbe	.label_573
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_475
	nop	word ptr [rax + rax]
.label_551:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_475
.label_573:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_598
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_475
	jmp	.label_482
.label_598:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_475:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_502
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_506]]
.label_789:
	test	rdi, rdi
	jne	.label_493
	jmp	.label_513
.label_793:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_514
	test	rdi, rdi
	jne	.label_517
	cmp	rbp, 1
	je	.label_513
	xor	r13d, r13d
	jmp	.label_476
.label_782:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_522
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_482
	cmp	r9d, 2
	jne	.label_528
	mov	al, r14b
	and	al, 1
	jne	.label_531
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_535
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_535:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_484
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_484:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_526
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_526:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_554
.label_783:
	mov	bl, 0x62
	jmp	.label_511
.label_784:
	mov	cl, 0x74
	jmp	.label_550
.label_785:
	mov	bl, 0x76
	jmp	.label_511
.label_786:
	mov	bl, 0x66
	jmp	.label_511
.label_787:
	mov	cl, 0x72
	jmp	.label_550
.label_790:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_566
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_570
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_575
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_575:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_595
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_595:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_565
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_565:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_566:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_476
.label_791:
	cmp	r9d, 5
	je	.label_552
	cmp	r9d, 2
	jne	.label_493
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_493
	jmp	.label_497
.label_792:
	cmp	r9d, 2
	jne	.label_500
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_503
	jmp	.label_507
.label_502:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_508
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_483:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_523
	test	cl, cl
	je	.label_523
	xor	eax, eax
	jmp	.label_476
.label_514:
	test	rdi, rdi
	jne	.label_539
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_539
.label_513:
	mov	dl, 1
.label_788:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_490
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_476
.label_522:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_524
	jmp	.label_493
.label_500:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_550
.label_503:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_478
.label_550:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_555
.label_511:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_476
	jmp	.label_479
.label_508:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_561
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_561:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_512:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_594
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_597
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_477
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_492
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_498:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_495
	bt	rsi, rdx
	jb	.label_496
.label_495:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_498
.label_492:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_509
	xor	r13d, r13d
.label_509:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_512
	jmp	.label_483
.label_539:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_476
.label_552:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_493
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_493
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_493
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_532
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_537
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_480
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_544
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_544:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_549
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_549:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_556
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_556:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_589
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_589:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_476
.label_493:
	xor	eax, eax
	xor	r13d, r13d
.label_476:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_579
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_583
	jmp	.label_586
	nop	word ptr [rax + rax]
.label_579:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_586
.label_583:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_590
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_596
	nop	word ptr cs:[rax + rax]
.label_586:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_596:
	mov	bl, r15b
	je	.label_478
	jmp	.label_479
.label_590:
	mov	bl, r15b
.label_479:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_482
	cmp	r9d, 2
	jne	.label_486
	mov	al, r14b
	and	al, 1
	jne	.label_486
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_563
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_563:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_593
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_593:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_505
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_505:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_486:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_515
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_515:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_578
.label_517:
	xor	r13d, r13d
	jmp	.label_476
.label_523:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_525
	nop	word ptr [rax + rax]
.label_520:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_525:
	test	cl, cl
	je	.label_538
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_485
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_541
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_541:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_485
	nop	word ptr [rax + rax]
.label_538:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_482
	cmp	r9d, 2
	jne	.label_557
	mov	al, r14b
	and	al, 1
	jne	.label_557
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_558
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_558:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_529
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_529:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_574
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_574:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_557:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_588
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_588:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_592
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_592:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_581
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_581:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_485:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_478
	test	r14b, 1
	je	.label_559
	mov	bl, al
	and	bl, 1
	jne	.label_559
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_491
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_491:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_510
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_510:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_559:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_520
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_520
	nop	dword ptr [rax]
.label_478:
	test	r14b, 1
	je	.label_533
	and	al, 1
	jne	.label_533
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_546
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_546:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_518
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_518:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_533:
	mov	bl, r15b
.label_578:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_582
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_582:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_524
.label_528:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_554
.label_531:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_554:
	cmp	rcx, r10
	jae	.label_567
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_567:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_572
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_580
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_585
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_587
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_587:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_591
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_591:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_476
.label_572:
	xor	r13d, r13d
	jmp	.label_476
.label_580:
	xor	r13d, r13d
	jmp	.label_476
.label_585:
	xor	r13d, r13d
	jmp	.label_476
.label_597:
	xor	r13d, r13d
.label_594:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_483
.label_477:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_494
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_499:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_501
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_499
	xor	r13d, r13d
	jmp	.label_483
.label_494:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_483
.label_501:
	xor	r13d, r13d
	jmp	.label_483
.label_532:
	xor	r13d, r13d
	jmp	.label_476
.label_537:
	xor	r13d, r13d
	jmp	.label_476
	nop	dword ptr [rax]
.label_543:
	mov	r13, rdi
.label_547:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_521
	or	al, dl
	je	.label_534
.label_521:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_530
	or	al, dl
	jne	.label_530
	test	r8b, 1
	jne	.label_545
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_530
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_548
.label_530:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_488
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_488
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_488
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_571:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_562
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_562:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_571
.label_488:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_577
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_577
.label_490:
	mov	r9d, 2
	jmp	.label_482
.label_496:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_482
.label_534:
	mov	rbp, r13
	jmp	.label_482
.label_555:
	mov	r9d, 2
.label_482:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_504:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_577:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_545:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_504
.label_570:
	mov	r9d, 2
	jmp	.label_482
.label_507:
	mov	r9d, 2
	jmp	.label_482
.label_497:
	mov	r9d, 2
	jmp	.label_482
.label_480:
	mov	r9d, 5
	jmp	.label_482
.label_481:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4078f0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
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
	#Procedure 0x4079c0
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_599
	mov	qword ptr [rax], rbx
.label_599:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ac0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_600
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_602:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_602
.label_600:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_603
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_604]], OFFSET FLAT:slot0
.label_603:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_601
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_601:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b60
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x407b70

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_605
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_610
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_606
.label_610:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_609
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_608
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_608:
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_606:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_611
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_607
	mov	rdi, rbx
	call	free
.label_607:
	mov	rdi, r14
	call	xmalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_611:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_605:
	call	abort
.label_609:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d40
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d50
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d70
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d90

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_612
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_612:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x407e00

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_613
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_613:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e70

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_614
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_614:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ee0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
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
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_615:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f50
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_616]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407fc0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_616]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408030

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_616]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408090
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_616]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080f0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_619
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_619:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4081a0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_616]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_620
	test	rdx, rdx
	je	.label_620
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_620:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x408210
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_616]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_621
	test	rdx, rdx
	je	.label_621
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_621:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408280
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_616]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_622
	test	rsi, rsi
	je	.label_622
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_622:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4082f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_616]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_617]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_618]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_623
	test	rsi, rsi
	je	.label_623
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_623:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408360
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408370
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408390

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083b0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4083d0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_626
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_627
	cmp	ecx, 0x55
	jne	.label_624
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_624
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_624
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_624
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_624
	cmp	byte ptr [rax + 5], 0
	jne	.label_624
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_626
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_626
.label_627:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_624
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_624
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_624
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_624
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_624
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_624
	cmp	byte ptr [rax + 7], 0
	je	.label_625
.label_624:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_626:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_625:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_626
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_626
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084c0

	.globl verror
	.type verror, @function
verror:
	mov	r9, rcx
	mov	rax, rdx
	xor	edx, edx
	xor	ecx, ecx
	mov	r8, rax
	jmp	verror_at_line
	nop	
	.section	.text
	.align	16
	#Procedure 0x4084d0

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	rbp, rdx
	mov	r14d, esi
	mov	r12d, edi
	mov	rdi, r8
	mov	rsi, r9
	call	xvasprintf
	mov	rbx, rax
	test	rbx, rbx
	je	.label_630
	test	rbp, rbp
	je	.label_628
	mov	r8d, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rdx, rbp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_629
.label_628:
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rcx, rbx
	call	error
.label_629:
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_630:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408570

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_637
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_636
.label_637:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_636:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_632
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_633]]
.label_855:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_632:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_631
.label_856:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_857:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_858:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_638
.label_859:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_640
.label_860:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_635
.label_861:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_635:
	mov	qword ptr [rsp + 0x10], rdi
.label_640:
	mov	qword ptr [rsp + 8], rsi
.label_638:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_639
.label_863:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_631:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_634
.label_862:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_634:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_639:
	call	__fprintf_chk
.label_854:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408860
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_641:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_641
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408890

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_644:
	cmp	r10d, 0x28
	ja	.label_642
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_643
	nop	word ptr cs:[rax + rax]
.label_642:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_643:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_645
	inc	r9
	cmp	r9, 0xa
	jb	.label_644
.label_645:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4088f0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0x128
	test	al, al
	je	.label_646
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_646:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_650:
	cmp	r8d, 0x28
	ja	.label_647
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_649
	nop	
.label_647:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_649:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_648
	inc	r9
	cmp	r9, 0xa
	jb	.label_650
.label_648:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408a70
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_651
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_652
	test	rax, rax
	je	.label_651
.label_652:
	pop	rbx
	ret	
.label_651:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ab0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_653
	test	rax, rax
	je	.label_654
.label_653:
	pop	rbx
	ret	
.label_654:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ad0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_655
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_656
	test	rbx, rbx
	jne	.label_656
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_656:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_657
	test	rax, rax
	je	.label_655
.label_657:
	pop	rbx
	ret	
.label_655:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b20

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_658
	test	rbx, rbx
	jne	.label_658
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_658:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_660
	test	rax, rax
	je	.label_659
.label_660:
	pop	rbx
	ret	
.label_659:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408b50
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_665
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_666
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_661
.label_665:
	test	rcx, rcx
	jne	.label_667
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_667:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_663
.label_661:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_662
	test	rbx, rbx
	jne	.label_662
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_662:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_664
	test	rax, rax
	je	.label_666
.label_664:
	pop	rbx
	ret	
.label_666:
	call	xalloc_die
.label_663:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bf0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_668
	test	rax, rax
	je	.label_669
.label_668:
	pop	rbx
	ret	
.label_669:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c10
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_672
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_674
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_671
	call	free
	xor	eax, eax
	jmp	.label_673
.label_672:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_670
	mov	qword ptr [rsi], rbx
.label_671:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_673
	test	rax, rax
	je	.label_670
.label_673:
	pop	rbx
	ret	
.label_670:
	call	xalloc_die
.label_674:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c80
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_676
	test	r14, r14
	je	.label_675
.label_676:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_675:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cc0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_677
	call	rpl_calloc
	test	rax, rax
	je	.label_677
	pop	rcx
	ret	
.label_677:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cf0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_678
	test	r15, r15
	je	.label_679
.label_678:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_679:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408d30
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_681
	test	r15, r15
	je	.label_680
.label_681:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_680:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408d80

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408db0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_692
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_682:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_682
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_683
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rbp, rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_698
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_702
	cmp	eax, 0x22
	jne	.label_683
	mov	dword ptr [rsp + 4], 1
.label_702:
	test	r14, r14
	jne	.label_707
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_683
.label_698:
	test	r14, r14
	je	.label_683
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_683
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_683
.label_707:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_695
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_700
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_686
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_686
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_686
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_689
	cmp	eax, 0x44
	je	.label_689
	cmp	eax, 0x69
	jne	.label_686
	movzx	eax, byte ptr [r12 + 2]
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_697
	mov	ecx, 1
.label_697:
	mov	esi, 0x400
	jmp	.label_686
.label_695:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_703
.label_689:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_686:
	cmp	r13d, 0x59
	jg	.label_696
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_708
	jmp	qword ptr [word ptr [+ (rax * 8) + label_684]]
.label_814:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_685
.label_696:
	cmp	r13d, 0x73
	jg	.label_687
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_690
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_693]]
.label_870:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_685:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_701
.label_708:
	cmp	r13d, 0x54
	je	.label_691
	cmp	r13d, 0x59
	jne	.label_700
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_705
.label_687:
	cmp	r13d, 0x74
	je	.label_691
	cmp	r13d, 0x77
	jne	.label_700
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_701
.label_816:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_706
.label_817:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_699
.label_818:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_704
.label_691:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_688
.label_690:
	cmp	r13d, 0x5a
	jne	.label_700
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_705:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_699
.label_700:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_683
.label_815:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_704
.label_819:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_688:
	or	dl, r10b
.label_706:
	or	dl, bl
.label_704:
	and	dl, 1
	movzx	eax, dl
.label_699:
	mov	rbp, rsi
.label_701:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_694
	or	eax, 2
.label_694:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_703:
	mov	qword ptr [rax], rbp
.label_683:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_692:
	mov	edi, OFFSET FLAT:.str_7
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409460

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rsi
	mov	rax, rdi
	xor	ebp, ebp
	jmp	.label_719
	nop	dword ptr [rax + rax]
.label_713:
	inc	rbp
.label_719:
	movzx	ecx, byte ptr [rax + rbp*2]
	cmp	ecx, 0x25
	jne	.label_710
	movzx	ecx, byte ptr [rax + rbp*2 + 1]
	cmp	ecx, 0x73
	je	.label_713
	jmp	.label_711
.label_710:
	test	cl, cl
	jne	.label_711
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	test	rbp, rbp
	je	.label_720
	mov	r14d, dword ptr [rsp + 0x10]
	xor	ebx, ebx
	mov	r12, rbp
	nop	dword ptr [rax + rax]
.label_712:
	cmp	r14d, 0x28
	ja	.label_715
	movsxd	rax, r14d
	add	rax, qword ptr [rsp + 0x20]
	add	r14d, 8
	mov	dword ptr [rsp + 0x10], r14d
	jmp	.label_716
	nop	dword ptr [rax]
.label_715:
	mov	rax, qword ptr [rsp + 0x18]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0x18], rcx
.label_716:
	mov	rdi, qword ptr [rax]
	call	strlen
	add	rax, rbx
	cmp	rax, rbx
	mov	rbx, -1
	cmovae	rbx, rax
	dec	r12
	jne	.label_712
	test	rbx, -0x80000000
	je	.label_717
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	r14d, r14d
	jmp	.label_709
.label_711:
	lea	rdi, [rsp + 8]
	mov	esi, 1
	mov	rdx, rax
	mov	rcx, r15
	call	__vasprintf_chk
	test	eax, eax
	js	.label_714
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_709
.label_714:
	call	__errno_location
	xor	r14d, r14d
	cmp	dword ptr [rax], 0xc
	jne	.label_709
	call	xalloc_die
.label_720:
	mov	edi, 1
	call	xmalloc
	mov	r14, rax
	mov	rbx, r14
	mov	byte ptr [rbx], 0
	jmp	.label_709
.label_717:
	inc	rax
	mov	rdi, rax
	call	xmalloc
	mov	r14, rax
	mov	rbx, r14
	nop	word ptr [rax + rax]
.label_721:
	movsxd	rcx, dword ptr [r15]
	cmp	rcx, 0x28
	ja	.label_718
	mov	rax, rcx
	add	rax, qword ptr [r15 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r15], ecx
	jmp	.label_722
	nop	dword ptr [rax + rax]
.label_718:
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r15 + 8], rcx
.label_722:
	mov	r12, qword ptr [rax]
	mov	rdi, r12
	call	strlen
	mov	r13, rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	add	rbx, r13
	dec	rbp
	jne	.label_721
	mov	byte ptr [rbx], 0
.label_709:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409610

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_723
	test	rsi, rsi
	mov	ecx, 1
	je	.label_724
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_724
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_723:
	mov	ecx, 1
.label_724:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409660

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_725
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_727
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_725
.label_727:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_725
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_726
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_726:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_725:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4096e0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_743
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_743:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_728
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_744
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_738
	test	esi, esi
	jne	.label_728
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_729
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_732
.label_728:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_734
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_738
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_740
.label_744:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_737
.label_738:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_742
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_731
.label_742:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_731:
	mov	edx, dword ptr [rax]
.label_746:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_737:
	mov	ebp, eax
.label_730:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_740:
	cmp	eax, 6
	jne	.label_734
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_735
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_739
.label_734:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_733
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_745
.label_729:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_732:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_746
.label_735:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_739:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_736
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_741
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_741
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_730
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_748
.label_741:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_730
.label_733:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_745:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_737
.label_736:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_748:
	test	al, al
	je	.label_730
	test	ebp, ebp
	js	.label_730
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_747
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_730
.label_747:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_730
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_749
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_749
	test	byte ptr [rbx + 1], 1
	je	.label_749
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_749:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409a00

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_750
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_750
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_751
.label_750:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_751:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_752
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_752:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409a70

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	je	.label_753
	cmp	r15, -2
	jb	.label_753
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_753
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_753:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ad0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ae0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_755
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_754:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_760
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_757
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_758
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_759
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_760
.label_759:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_760
.label_758:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_760:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_754
	jmp	.label_756
.label_755:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_756:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_757:
	mov	rax, rbp
	add	rsp, 0x28
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
	#Procedure 0x409be0
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_761
	mov	esi, OFFSET FLAT:.str.1_6
	jmp	.label_762
.label_761:
	mov	esi, OFFSET FLAT:.str_8
.label_762:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	16
	#Procedure 0x409c50

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_764
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_767:
	test	r15, r15
	je	.label_763
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_766
.label_763:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_768
	nop	word ptr cs:[rax + rax]
.label_766:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_2
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_768:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_767
.label_764:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_765
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_765:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d80
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_770
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_771
	mov	esi, OFFSET FLAT:.str.1_6
	jmp	.label_769
.label_771:
	mov	esi, OFFSET FLAT:.str_8
.label_769:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_770:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409e40
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_772
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_773:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_772
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_773
.label_772:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409eb0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_775
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_776
	cmp	byte ptr [rax + 1], 0
	je	.label_774
.label_776:
	mov	esi, OFFSET FLAT:.str.1_7
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_775
.label_774:
	xor	ebx, ebx
.label_775:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409ef0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	je	.label_777
	mov	rax, rcx
.label_777:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x409f20

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]