	.section	.text
	.align	32
	#Procedure 0x401a60

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_31
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_33
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_13
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_31:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d60

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1a8
	mov	r15, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_89
	call	setlocale
	mov	edi, OFFSET FLAT:label_121
	mov	esi, OFFSET FLAT:label_122
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_121
	call	textdomain
	mov	dword ptr [rip + exit_failure],  0x7d
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edi, 0x104
	call	xmalloc
	mov	qword ptr [rip + signals],  rax
	xor	esi, esi
	mov	edx, 0x104
	mov	rdi, rax
	call	memset
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	jmp	.label_145
	nop	dword ptr [rax + rax]
.label_166:
	mov	al, byte ptr [rsp + 0xe]
.label_145:
	mov	r13d, eax
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	r12, qword ptr [rsp + 0x10]
	mov	edi, r12d
	mov	rsi, r15
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 8
	jle	.label_156
	mov	byte ptr [rsp + 0xe], r13b
	lea	ecx, [rbx - 0x20]
	cmp	ecx, 0x63
	ja	.label_160
	mov	al, 1
	jmp	qword ptr [(rcx * 8) + label_163]
.label_620:
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_166
.label_621:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_166
.label_625:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, 1
	call	parse_signal_action_params
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	call	parse_block_signal_params
	jmp	.label_166
.label_627:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, 1
	call	parse_block_signal_params
	jmp	.label_166
.label_622:
	mov	rbp, qword ptr [rip + optarg]
	call	__ctype_b_loc
	mov	rcx, rax
	mov	rax, qword ptr [rcx]
	dec	rbp
	nop	word ptr [rax + rax]
.label_230:
	movsx	r13, byte ptr [rbp + 1]
	inc	rbp
	movzx	ebx, word ptr [rax + r13*2]
	test	bh, 0x20
	jne	.label_230
	test	r13b, r13b
	mov	al, byte ptr [rsp + 0xe]
	je	.label_145
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x20], r15
	test	rbp, rbp
	je	.label_182
	mov	eax, dword ptr [rip + optind]
	mov	dword ptr [rsp + 0x1c], eax
	mov	rdi, rbp
	call	strlen
	inc	rax
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	r14d, 1
	mov	qword ptr [rsp + 0x50], rbp
	xor	r12d, r12d
	xor	edi, edi
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x28]
	jmp	.label_127
	nop	dword ptr [rax]
.label_42:
	movzx	eax, r15b
	inc	rbp
	mov	rcx, qword ptr [r8]
	mov	bx, word ptr [rcx + r13*2]
.label_127:
	mov	edx, r14d
	and	ebx, 0xe000
	shr	ebx, 0xd
	mov	ecx, edi
	or	cl, r12b
	and	cl, 1
	sete	r15b
	and	r15b, bl
	cmovne	eax, esi
	mov	r14d, eax
	add	r14d, edx
	movsx	eax, r13b
	cmp	eax, 0x26
	jg	.label_196
	cmp	eax, 0x22
	je	.label_231
	cmp	eax, 0x24
	jne	.label_204
	test	r12b, 1
	jne	.label_204
	mov	ebx, edi
	mov	rdi, rbp
	call	extract_varname
	test	rax, rax
	je	.label_211
	mov	rdi, rax
	call	getenv
	test	rax, rax
	je	.label_219
	mov	rdi, rax
	call	strlen
	add	qword ptr [rsp + 0x38], rax
.label_219:
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x28]
	mov	edi, ebx
	jmp	.label_204
	nop	dword ptr [rax]
.label_196:
	cmp	eax, 0x5c
	je	.label_224
	cmp	eax, 0x27
	jne	.label_204
	and	r12b, dil
	test	r12b, 1
	jne	.label_225
	xor	cl, 1
	mov	r12b, cl
	jmp	.label_204
.label_231:
	and	dil, r12b
	test	dil, 1
	jne	.label_228
	xor	cl, 1
	mov	dil, cl
	jmp	.label_204
.label_224:
	movsx	ebx, byte ptr [rbp + 1]
	test	dil, 1
	je	.label_191
	cmp	bl, 0x63
	je	.label_236
.label_191:
	movzx	eax, bl
	cmp	al, 0x76
	ja	.label_210
	jmp	qword ptr [(rax * 8) + label_208]
.label_679:
	inc	rbp
	xor	eax, eax
	cmp	bl, 0x5f
	sete	al
	add	r14d, eax
	nop	word ptr [rax + rax]
.label_204:
	movsx	r13, byte ptr [rbp + 1]
	test	r13, r13
	jne	.label_42
	or	r12b, dil
	test	r12b, 1
	jne	.label_49
	mov	rdi, qword ptr [rsp + 0x38]
	add	rdi, 7
	call	xmalloc
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	lea	eax, [rax + 2]
	sub	eax, dword ptr [rsp + 0x1c]
	add	eax, r14d
	movsxd	rdi, eax
	shl	rdi, 3
	call	xmalloc
	mov	rdi, rbx
	mov	word ptr [rdi + 4], 0x59
	mov	dword ptr [rdi], 0x4d4d5544
	lea	r14, [rax + 8]
	mov	qword ptr [rax], rdi
	add	rdi, 6
	mov	r15, qword ptr [rsp + 0x50]
	mov	bl, byte ptr [r15]
	test	bl, bl
	je	.label_59
	mov	bpl, 1
	xor	r10d, r10d
	xor	r11d, r11d
	mov	r8, r14
.label_147:
	mov	r9d, r11d
	and	r9b, 1
.label_139:
	mov	r13d, r10d
	or	r13b, r11b
	and	r13b, 1
	mov	r12d, r10d
	and	r12b, 1
	jmp	.label_65
.label_682:
	mov	bl, 0xd
	jmp	.label_41
.label_683:
	mov	bl, 9
	jmp	.label_41
.label_684:
	mov	bl, 0xb
	jmp	.label_41
.label_40:
	dec	r15
	jmp	.label_41
	nop	word ptr cs:[rax + rax]
.label_65:
	test	r9b, r9b
	jne	.label_79
	test	r12b, r12b
	jne	.label_81
	test	r13b, r13b
	jne	.label_83
	mov	rcx, r15
	nop	
.label_164:
	movsx	esi, bl
	lea	edx, [rsi - 9]
	cmp	edx, 0x1e
	ja	.label_88
	mov	r15, rcx
	jmp	qword ptr [(rdx * 8) + label_91]
	nop	word ptr cs:[rax + rax]
.label_100:
	movzx	ebx, byte ptr [rcx + 1]
	inc	rcx
.label_662:
	movsx	edx, bl
	cmp	edx, 0x20
	je	.label_100
	cmp	edx, 9
	je	.label_100
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_88:
	cmp	esi, 0x5c
	jne	.label_104
	lea	r15, [rcx + 1]
	mov	bl, byte ptr [rcx + 1]
	mov	edx, ebx
	add	dl, 0xde
	movzx	edx, dl
	cmp	dl, 0x41
	ja	.label_108
	jmp	qword ptr [(rdx * 8) + label_115]
	.section	.text
	.align	32
	#Procedure 0x403230

	.globl parse_signal_action_params
	.type parse_signal_action_params, @function
parse_signal_action_params:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	ebp, esi
	test	rdi, rdi
	je	.label_248
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_106
	mov	rdi, r14
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	je	.label_243
	xor	eax, eax
	test	bpl, bpl
	sete	al
	lea	ebp, [rax + rax + 1]
	lea	r15, [rsp]
	nop	
.label_245:
	mov	rdi, rbx
	mov	rsi, r15
	call	operand2sig
	test	eax, eax
	je	.label_249
	jle	.label_251
	cdqe	
	mov	rcx, qword ptr [rip + signals]
	mov	dword ptr [rcx + rax*4], ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	call	strtok
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_245
.label_243:
	mov	rdi, r14
	call	free
	jmp	.label_247
.label_248:
	xor	eax, eax
	test	bpl, bpl
	sete	al
	lea	r14d, [rax + rax + 2]
	mov	ebx, 1
	lea	rbp, [rsp]
	nop	word ptr cs:[rax + rax]
.label_246:
	mov	edi, ebx
	mov	rsi, rbp
	call	sig2str
	test	eax, eax
	jne	.label_244
	mov	rax, qword ptr [rip + signals]
	mov	dword ptr [rax + rbx*4], r14d
.label_244:
	inc	rbx
	cmp	rbx, 0x41
	jne	.label_246
.label_247:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_249:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_251:
	mov	edi, dword ptr [rip + exit_failure]
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403340

	.globl parse_block_signal_params
	.type parse_block_signal_params, @function
parse_block_signal_params:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_252
	mov	al, byte ptr [rip + sig_mask_changed]
	test	al, al
	jne	.label_256
	mov	edi, OFFSET FLAT:block_signals
	call	sigemptyset
	mov	edi, OFFSET FLAT:unblock_signals
	call	sigemptyset
.label_256:
	mov	byte ptr [rip + sig_mask_changed],  1
	mov	rdi, rbx
	call	xstrdup
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_106
	mov	rdi, r14
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	je	.label_254
	mov	r12d, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	r13d, OFFSET FLAT:unblock_signals
	cmovne	r13, r12
	cmovne	r12, rax
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_258:
	mov	rdi, rbp
	mov	rsi, r15
	call	operand2sig
	mov	ebx, eax
	test	ebx, ebx
	je	.label_255
	jle	.label_257
	mov	rdi, r13
	mov	esi, ebx
	call	sigaddset
	mov	rdi, r12
	mov	esi, ebx
	call	sigdelset
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	call	strtok
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_258
.label_254:
	mov	rdi, r14
	call	free
	jmp	.label_253
.label_252:
	mov	ebx, OFFSET FLAT:block_signals
	mov	eax, OFFSET FLAT:unblock_signals
	test	r15b, r15b
	mov	edi, OFFSET FLAT:unblock_signals
	cmovne	rdi, rbx
	cmovne	rbx, rax
	call	sigfillset
	mov	rdi, rbx
	call	sigemptyset
	mov	byte ptr [rip + sig_mask_changed],  1
.label_253:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_255:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
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
	call	error
.label_257:
	mov	edi, dword ptr [rip + exit_failure]
	call	usage
	nop	
	.section	.text
	.align	32
	#Procedure 0x403490

	.globl extract_varname
	.type extract_varname, @function
extract_varname:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	test	rdi, rdi
	je	.label_261
	cmp	byte ptr [rdi], 0x24
	jne	.label_261
	xor	r12d, r12d
	cmp	byte ptr [rdi + 1], 0x7b
	jne	.label_265
	movsx	eax, byte ptr [rdi + 2]
	mov	ecx, eax
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_267
	movabs	rdx, 0x3ffffff03ffffff
	shr	rdx, cl
	and	edx, 1
	xor	r12d, r12d
	cmp	al, 0x5f
	je	.label_259
	test	rdx, rdx
	je	.label_265
	jmp	.label_259
.label_267:
	xor	r12d, r12d
	cmp	al, 0x5f
	jne	.label_265
.label_259:
	lea	r14, [rdi + 2]
	lea	rsi, [rdi + 3]
	xor	r12d, r12d
	movabs	rax, 0x3ffffff03ffffff
	jmp	.label_266
	nop	dword ptr [rax]
.label_260:
	inc	rsi
.label_266:
	movzx	ecx, byte ptr [rsi]
	movsx	edx, cl
	lea	ebx, [rdx - 0x41]
	cmp	ebx, 0x39
	ja	.label_264
	bt	rax, rbx
	jb	.label_260
.label_264:
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_260
	cmp	cl, 0x5f
	je	.label_260
	cmp	cl, 0x7d
	jne	.label_265
	sub	rsi, rdi
	lea	r15, [rsi - 2]
	cmp	r15, qword ptr [rip + vnlen]
	jb	.label_268
	dec	rsi
	mov	qword ptr [rip + vnlen],  rsi
	mov	rdi, qword ptr [rip + varname]
	call	xrealloc
	mov	qword ptr [rip + varname],  rax
.label_268:
	mov	r12, qword ptr [rip + varname]
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_265:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_261:
	mov	edi, OFFSET FLAT:label_262
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 0xdd
	mov	ecx, OFFSET FLAT:label_263
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035b0

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r15, rdi
	movsx	eax, byte ptr [r15]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_278
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	cmp	rcx, r15
	je	.label_269
	cmp	byte ptr [rcx], 0
	jne	.label_269
	cmp	dword ptr [rbx], 0
	jne	.label_269
	cmp	eax, -1
	je	.label_269
	movsxd	rcx, eax
	cmp	rcx, rax
	jne	.label_269
	cmp	eax, 0xfe
	mov	ecx, 0xff
	mov	edi, 0x7f
	cmovg	edi, ecx
	and	edi, eax
.label_269:
	mov	dword ptr [rsp + 4], edi
	jmp	.label_277
.label_278:
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
	mov	bpl, byte ptr [r12]
	test	bpl, bpl
	je	.label_280
	lea	rbx, [r12 + 1]
	nop	word ptr [rax + rax]
.label_275:
	movsx	esi, bpl
	mov	edi, OFFSET FLAT:label_273
	mov	edx, 0x1b
	call	memchr
	test	rax, rax
	je	.label_276
	add	bpl, 0xe0
	mov	byte ptr [rbx - 1], bpl
.label_276:
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	test	bpl, bpl
	jne	.label_275
.label_280:
	lea	rsi, [rsp + 4]
	mov	rdi, r12
	call	str2sig
	test	eax, eax
	je	.label_270
	cmp	byte ptr [r12], 0x53
	jne	.label_272
	cmp	byte ptr [r12 + 1], 0x49
	jne	.label_272
	cmp	byte ptr [r12 + 2], 0x47
	jne	.label_272
	mov	rdi, r12
	add	rdi, 3
	lea	rsi, [rsp + 4]
	call	str2sig
	test	eax, eax
	je	.label_270
.label_272:
	mov	dword ptr [rsp + 4], 0xffffffff
.label_270:
	mov	rdi, r12
	call	free
	mov	edi, dword ptr [rsp + 4]
.label_277:
	test	edi, edi
	js	.label_271
	mov	rsi, r14
	call	sig2str
	test	eax, eax
	je	.label_274
.label_271:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	eax, 0xffffffff
	jmp	.label_279
.label_274:
	mov	eax, dword ptr [rsp + 4]
.label_279:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403730
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403740
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403750

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_286
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_283
	cmp	dword ptr [rbp], 0x20
	jne	.label_283
.label_286:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_282
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_283:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_281
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_238
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_282:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_281:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_285
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403810

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_290
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_292
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_287
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_292
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_288
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_288:
	mov	rbx, r14
.label_292:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_290:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_291
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038c0
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
	.align	32
	#Procedure 0x403900
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
	.align	32
	#Procedure 0x403910
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
	.align	32
	#Procedure 0x403920
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
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
	.align	32
	#Procedure 0x403960
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
	.align	32
	#Procedure 0x403980
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_293
	test	rdx, rdx
	je	.label_293
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_293:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039b0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
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
	.align	32
	#Procedure 0x403a30

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_328
	nop	
.label_366:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_363
	or	al, dl
	jne	.label_363
	test	dil, 1
	jne	.label_365
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_363
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_328
	jmp	.label_363
.label_611:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_372
	test	rbp, rbp
	je	.label_376
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_376:
	mov	r14d, 1
	jmp	.label_378
.label_612:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_380
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_323
.label_372:
	xor	r14d, r14d
.label_378:
	mov	eax, OFFSET FLAT:label_380
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_383
	nop	
.label_328:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_398
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_405]
.label_613:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_411
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_352
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_614:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_298
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_298
	xor	r14d, r14d
	nop	
.label_409:
	cmp	r14, rbp
	jae	.label_309
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_309:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_409
.label_298:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_323
.label_606:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_323
.label_609:
	mov	al, 1
.label_607:
	mov	r12b, 1
.label_610:
	test	r12b, 1
	mov	cl, 1
	je	.label_337
	mov	ecx, eax
.label_337:
	mov	al, cl
.label_608:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_339
	test	rbp, rbp
	je	.label_347
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_347:
	mov	r14d, 1
	jmp	.label_341
.label_339:
	xor	r14d, r14d
.label_341:
	mov	ecx, OFFSET FLAT:label_352
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_383:
	mov	sil, r12b
.label_323:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_356
	nop	word ptr cs:[rax + rax]
.label_400:
	inc	r12
.label_356:
	cmp	r11, -1
	je	.label_387
	cmp	r12, r11
	jne	.label_389
	jmp	.label_390
	nop	word ptr cs:[rax + rax]
.label_387:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_404
.label_389:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_399
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_306
	cmp	r11, -1
	jne	.label_306
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_306:
	cmp	rbx, r11
	jbe	.label_416
.label_399:
	xor	esi, esi
.label_316:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_418
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_295]
.label_701:
	test	r12, r12
	jne	.label_299
	jmp	.label_300
	nop	word ptr cs:[rax + rax]
.label_416:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_313
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_316
	jmp	.label_334
.label_313:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_316
.label_705:
	xor	eax, eax
	cmp	r11, -1
	je	.label_311
	test	r12, r12
	jne	.label_335
	cmp	r11, 1
	je	.label_300
	xor	r13d, r13d
	jmp	.label_294
.label_694:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_342
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_334
	cmp	r8d, 2
	jne	.label_349
	mov	eax, r9d
	and	al, 1
	jne	.label_349
	cmp	r14, rbp
	jae	.label_353
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_353:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_354
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_354:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_359
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_359:
	add	r14, 3
	mov	r9b, 1
.label_349:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_364
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_364:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_348
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_348
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_348
	cmp	r14, rbp
	jae	.label_386
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_386:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_310
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_310:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_294
.label_695:
	mov	bl, 0x62
	jmp	.label_388
.label_696:
	mov	cl, 0x74
	jmp	.label_381
.label_697:
	mov	bl, 0x76
	jmp	.label_388
.label_698:
	mov	bl, 0x66
	jmp	.label_388
.label_699:
	mov	cl, 0x72
	jmp	.label_381
.label_702:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_396
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_322
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_406
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_406:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_419
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_419:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_297
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_297:
	add	r14, 3
	xor	r9d, r9d
.label_396:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_294
.label_703:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_304
	cmp	r8d, 2
	jne	.label_299
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_299
	jmp	.label_322
.label_704:
	cmp	r8d, 2
	jne	.label_318
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_322
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_325
.label_418:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_327
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_338
.label_311:
	test	r12, r12
	jne	.label_350
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_350
.label_300:
	mov	dl, 1
.label_700:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_322
	xor	eax, eax
	mov	r13b, dl
.label_294:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_357
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_360
	jmp	.label_361
	nop	word ptr cs:[rax + rax]
.label_357:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_361
.label_360:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_331
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_369
	nop	dword ptr [rax]
.label_361:
	test	sil, sil
.label_369:
	mov	ebx, r15d
	je	.label_302
	jmp	.label_374
.label_331:
	mov	ebx, r15d
	jmp	.label_374
.label_342:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_400
	xor	r15d, r15d
	jmp	.label_299
.label_318:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_381
	xor	eax, eax
	mov	r15b, 0x5c
.label_325:
	xor	r13d, r13d
	jmp	.label_302
.label_381:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_322
.label_388:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_294
	nop	
.label_374:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_334
	cmp	r8d, 2
	jne	.label_397
	mov	eax, r9d
	and	al, 1
	jne	.label_397
	cmp	r14, rbp
	jae	.label_402
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_402:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_379
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_379:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_410
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_410:
	add	r14, 3
	mov	r9b, 1
.label_397:
	cmp	r14, rbp
	jae	.label_417
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_417:
	inc	r14
	jmp	.label_305
.label_327:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_296
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_296:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_358
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_368:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_319
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_332
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_301
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_345
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_321:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_320
	bt	rsi, rdx
	jb	.label_322
.label_320:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_321
.label_345:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_362
	xor	r13d, r13d
.label_362:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_368
	jmp	.label_370
.label_348:
	xor	r13d, r13d
	jmp	.label_294
.label_350:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_294
.label_304:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_299
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_299
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_299
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_385
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_371
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_393
	cmp	r14, rbp
	jae	.label_394
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_394:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_401
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_401:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_351
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_351:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_391
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_391:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_371:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_294
.label_299:
	xor	eax, eax
.label_335:
	xor	r13d, r13d
	jmp	.label_294
.label_358:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_330:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_314
	cmp	rbp, -1
	je	.label_317
	cmp	rbp, -2
	je	.label_319
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_324
	xor	r13d, r13d
.label_324:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_330
	jmp	.label_370
.label_319:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_343
	lea	rax, [r10 + r12]
.label_375:
	cmp	byte ptr [rax + rsi], 0
	je	.label_343
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_375
.label_343:
	mov	qword ptr [rsp + 0x40], rsi
.label_332:
	xor	r13d, r13d
	jmp	.label_301
.label_317:
	xor	r13d, r13d
.label_314:
	mov	r10, qword ptr [rsp + 0x28]
.label_301:
	mov	r12, qword ptr [rsp + 0x40]
.label_370:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_338:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_326
	test	al, al
	je	.label_326
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_294
.label_326:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_367
	nop	word ptr [rax + rax]
.label_336:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_367:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_373
	test	sil, 1
	je	.label_382
	cmp	r14, rbp
	jae	.label_377
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_377:
	inc	r14
	xor	esi, esi
	jmp	.label_382
	nop	word ptr cs:[rax + rax]
.label_373:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_334
	cmp	r8d, 2
	jne	.label_329
	mov	eax, r9d
	and	al, 1
	jne	.label_329
	cmp	r14, rbp
	jae	.label_392
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_392:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_395
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_395:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_408
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_408:
	add	r14, 3
	mov	r9b, 1
.label_329:
	cmp	r14, rbp
	jae	.label_407
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_407:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_413
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_413:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_420
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_420:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_382:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_302
	test	r9b, 1
	je	.label_307
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_384
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_312
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_312:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_303
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_303:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_307
	nop	word ptr cs:[rax + rax]
.label_384:
	mov	rbx, rcx
.label_307:
	cmp	r14, rbp
	jae	.label_336
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_336
	nop	
.label_302:
	test	r9b, 1
	je	.label_340
	and	al, 1
	jne	.label_340
	cmp	r14, rbp
	jae	.label_346
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_346:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_344
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_344:
	add	r14, 2
	xor	r9d, r9d
.label_340:
	mov	ebx, r15d
.label_305:
	cmp	r14, rbp
	jae	.label_355
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_355:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_400
.label_385:
	xor	r13d, r13d
	jmp	.label_294
	nop	word ptr cs:[rax + rax]
.label_390:
	mov	rcx, r12
.label_404:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_366
	or	al, dl
	jne	.label_366
	mov	r11, rcx
	jmp	.label_334
.label_322:
	mov	eax, 2
.label_315:
	mov	qword ptr [rsp + 0x38], rax
.label_334:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_414:
	mov	r14, rax
.label_308:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_363:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_403
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_333
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_333
	inc	rdx
	nop	dword ptr [rax + rax]
.label_415:
	cmp	r14, rbp
	jae	.label_412
	mov	byte ptr [rcx + r14], al
.label_412:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_415
	jmp	.label_333
.label_365:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_414
.label_403:
	mov	rcx, qword ptr [rsp + 0x10]
.label_333:
	cmp	r14, rbp
	jae	.label_308
	mov	byte ptr [rcx + r14], 0
	jmp	.label_308
.label_393:
	mov	eax, 5
	jmp	.label_315
.label_398:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404860
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404930
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_421
	mov	qword ptr [rax], rbx
.label_421:
	mov	rax, r14
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
	.align	32
	#Procedure 0x404a20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_422
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_424:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_424
.label_422:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_425
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_426], OFFSET FLAT:slot0
.label_425:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_423
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_423:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ac0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404ad0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_430
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_433
	cmp	r12d, 0x7fffffff
	je	.label_428
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_431
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_431:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_433:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_429
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_432
.label_429:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_427
	mov	rdi, r14
	call	free
.label_427:
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_432:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_430:
	call	abort
.label_428:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c90
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0
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
	.align	32
	#Procedure 0x404cc0
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
	.align	32
	#Procedure 0x404ce0
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_434
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_434:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d50
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_435
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_435:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dc0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_436
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_436:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e30
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_437
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_437:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ea0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_438]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_439]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
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
	.align	32
	#Procedure 0x404f10
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_438]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_439]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
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
	.align	32
	#Procedure 0x404f80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_438]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_439]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	32
	#Procedure 0x404fe0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_438]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_439]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	32
	#Procedure 0x405040
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_441
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_441:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050e0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_438]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_439]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_442
	test	rdx, rdx
	je	.label_442
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_442:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405150
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_438]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_439]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_443
	test	rdx, rdx
	je	.label_443
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_443:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051c0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_438]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_439]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_444
	test	rsi, rsi
	je	.label_444
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_444:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405230
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_438]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_439]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_445
	test	rsi, rsi
	je	.label_445
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
.label_445:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052b0
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
	.align	32
	#Procedure 0x4052d0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0

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
	.align	32
	#Procedure 0x405310

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
	jne	.label_450
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_454
	cmp	ecx, 0x55
	jne	.label_446
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_446
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_446
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_446
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_446
	cmp	byte ptr [rax + 5], 0
	jne	.label_446
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_452
	mov	eax, OFFSET FLAT:label_453
	jmp	.label_449
.label_454:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_446
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_446
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_446
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_446
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_446
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_446
	cmp	byte ptr [rax + 7], 0
	je	.label_451
.label_446:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_380
	mov	eax, OFFSET FLAT:label_352
.label_449:
	cmove	rax, rcx
.label_450:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_451:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_447
	mov	eax, OFFSET FLAT:label_448
	jmp	.label_449
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_467
	mov	edx, OFFSET FLAT:label_458
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_464
.label_467:
	mov	edx, OFFSET FLAT:label_465
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
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
	mov	esi, OFFSET FLAT:label_466
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_470
	jmp	qword ptr [(r12 * 8) + label_471]
.label_666:
	add	rsp, 8
	jmp	.label_457
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_457
.label_667:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_456
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_668:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_462
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_669:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_459
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_670:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_473
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_457
.label_671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_457
.label_672:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_455
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_457
.label_673:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_460
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_457
.label_675:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_463
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_457
.label_674:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_468
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_457:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405740
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_474:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_474
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405770

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_485
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_487
.label_485:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_487:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_475
	cmp	r10d, 0x29
	jae	.label_484
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_486
.label_484:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_486:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_475
	cmp	r10d, 0x29
	jae	.label_482
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_483
.label_482:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_483:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_475
	cmp	r10d, 0x29
	jae	.label_480
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_481
.label_480:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_481:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_475
	cmp	r10d, 0x29
	jae	.label_478
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_479
.label_478:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_479:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_475
	cmp	r10d, 0x29
	jae	.label_476
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_477
.label_476:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_477:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_475
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_475
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_475
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_475
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_475:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405960

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_488
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_488:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_489
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_490
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_492
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_33
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_491
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a70
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_493
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_494
	test	rax, rax
	je	.label_493
.label_494:
	pop	rbx
	ret	
.label_493:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ab0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_495
	test	rax, rax
	je	.label_496
.label_495:
	pop	rbx
	ret	
.label_496:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ad0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_497
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_498
	test	rbx, rbx
	jne	.label_498
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_498:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_499
	test	rax, rax
	je	.label_497
.label_499:
	pop	rbx
	ret	
.label_497:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b20

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_500
	test	rbx, rbx
	jne	.label_500
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_500:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_502
	test	rax, rax
	je	.label_501
.label_502:
	pop	rbx
	ret	
.label_501:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405b50
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_506
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_508
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_503
.label_506:
	test	rcx, rcx
	jne	.label_509
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_509:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_504
.label_503:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_505
	test	rbx, rbx
	jne	.label_505
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_505:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_507
	test	rax, rax
	je	.label_508
.label_507:
	pop	rbx
	ret	
.label_508:
	call	xalloc_die
.label_504:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bf0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_510
	test	rax, rax
	je	.label_511
.label_510:
	pop	rbx
	ret	
.label_511:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c10
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_514
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_516
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_513
	call	free
	xor	eax, eax
	jmp	.label_515
.label_514:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_512
	mov	qword ptr [rsi], rbx
.label_513:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_515
	test	rax, rax
	je	.label_512
.label_515:
	pop	rbx
	ret	
.label_512:
	call	xalloc_die
.label_516:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c80
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
	je	.label_518
	test	r14, r14
	je	.label_517
.label_518:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_517:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_519
	call	rpl_calloc
	test	rax, rax
	je	.label_519
	pop	rcx
	ret	
.label_519:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0

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
	je	.label_520
	test	r15, r15
	je	.label_521
.label_520:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_521:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405d30

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
	je	.label_523
	test	r15, r15
	je	.label_522
.label_523:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_522:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d80

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_524
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_238
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405db0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_525
	test	rsi, rsi
	mov	ecx, 1
	je	.label_526
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_526
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_525:
	mov	ecx, 1
.label_526:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e00

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
	je	.label_527
	cmp	r15, -2
	jb	.label_527
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_527
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_527:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e60

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r12, rdi
	movsx	eax, byte ptr [r12]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_535
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	cmp	rax, 0x40
	jg	.label_530
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_534
	jmp	.label_530
.label_535:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_537
	nop	word ptr cs:[rax + rax]
.label_538:
	mov	rdi, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_531
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_538
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r15d, eax
	test	ebp, ebp
	jle	.label_536
	mov	esi, OFFSET FLAT:label_539
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	je	.label_528
.label_536:
	test	r15d, r15d
	jle	.label_530
	mov	esi, OFFSET FLAT:label_533
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_530
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	jne	.label_530
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_530
	test	rax, rax
	jg	.label_530
	mov	ecx, r15d
	jmp	.label_532
.label_531:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_534
.label_528:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	test	rax, rax
	js	.label_530
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_530
	sub	r15d, ebp
	movsxd	rcx, r15d
	cmp	rax, rcx
	jle	.label_529
.label_530:
	mov	eax, 0xffffffff
.label_534:
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_529:
	mov	ecx, ebp
.label_532:
	add	rax, rcx
	jmp	.label_534
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fc0

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rsi
	mov	ebp, edi
	mov	ecx, OFFSET FLAT:numname_table
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_542:
	mov	edx, eax
	cmp	dword ptr [rcx], ebp
	je	.label_547
	lea	esi, [rdx + 1]
	cmp	dword ptr [rcx + 0xc], ebp
	je	.label_545
	lea	esi, [rdx + 2]
	cmp	dword ptr [rcx + 0x18], ebp
	je	.label_545
	add	edx, 3
	cmp	dword ptr [rcx + 0x24], ebp
	mov	rsi, rdx
	je	.label_545
	cmp	dword ptr [rcx + 0x30], ebp
	je	.label_540
	add	rax, 5
	add	rcx, 0x3c
	cmp	eax, 0x23
	jb	.label_542
	call	__libc_current_sigrtmin
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	mov	ebx, 0xffffffff
	jg	.label_543
	cmp	eax, ebp
	jl	.label_543
	mov	ecx, eax
	sub	ecx, r14d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_544
	mov	word ptr [r15 + 4], 0x58
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_541
.label_547:
	mov	rsi, rdx
	jmp	.label_545
.label_540:
	add	rax, 4
	mov	rsi, rax
.label_545:
	lea	rax, [rsi + rsi*2]
	lea	rsi, qword ptr [(rax * 4) + label_537]
	mov	rdi, r15
	call	strcpy
	xor	ebx, ebx
.label_543:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_544:
	mov	word ptr [r15 + 4], 0x4e
	mov	dword ptr [r15], 0x494d5452
.label_541:
	xor	ebx, ebx
	sub	ebp, r14d
	je	.label_543
	add	r15, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_546
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_543
	.section	.text
	.align	32
	#Procedure 0x4060c0

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
	jne	.label_549
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_548
	test	cl, cl
	jne	.label_548
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_548
.label_549:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_548
	call	__errno_location
	mov	dword ptr [rax], 0
.label_548:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406120

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_551
	cmp	byte ptr [rax], 0x43
	jne	.label_553
	cmp	byte ptr [rax + 1], 0
	je	.label_550
.label_553:
	mov	esi, OFFSET FLAT:label_552
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_551
.label_550:
	xor	ebx, ebx
.label_551:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406160

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_89
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_554
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406190

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_555
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_557
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_555
.label_557:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_555
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_556
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_556:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_555:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406210

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_558
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_558
	test	byte ptr [rbx + 1], 1
	je	.label_558
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_558:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406250

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
	jne	.label_559
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_559
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_560
.label_559:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_560:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_561
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_561:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x4062c0

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
	nop	word ptr cs:[rax + rax]
