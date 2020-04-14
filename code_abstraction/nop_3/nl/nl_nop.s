	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl usage
	.type usage, @function
usage:
	nop	
	push	rbp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.31
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, 5
	nop	
	xor	esi, esi
	mov	rsp, rsp
	call	setlocale
	mov	rsp, rsp
	test	rax, rax
	je	.label_9
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	nop	
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.45
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.11
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:.str.47
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
.label_8:
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c40

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x48
	mov	r15, rsi
	mov	rbp, rbp
	mov	r12d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	edi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.14
	mov	rsp, rsp
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.13
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	bpl, 1
	movabs	r14, 0x7fffffffffffffff
	mov	eax, OFFSET FLAT:body_fastmap
	lea	rsi, [rsi]
	movq	xmm0, rax
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:footer_fastmap
	movq	xmm0, rax
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:header_fastmap
	lea	rsi, [rsi]
	movq	xmm0, rax
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	jmp	.label_10
.label_19:
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	call	quote
	mov	rcx, rax
	nop	
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
.label_10:
	mov	bl, bpl
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
	mov	edx, OFFSET FLAT:.str.15
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, r12d
	mov	rsp, rsp
	mov	rsi, r15
	lea	rsi, [rsi]
	call	getopt_long
	lea	rsi, [rsi]
	cmp	eax, 0x61
	jle	.label_26
	add	eax, -0x62
	cmp	eax, 0x15
	nop	
	ja	.label_10
	jmp	qword ptr [word ptr [+ (rax * 8) + label_28]]
.label_2483:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x6f
	jg	.label_30
	mov	rsp, rsp
	cmp	ecx, 0x61
	je	.label_34
	cmp	ecx, 0x6e
	lea	rsi, [rsi]
	je	.label_34
	mov	rsp, rsp
	jmp	.label_32
.label_26:
	cmp	eax, -1
	nop	
	je	.label_37
	cmp	eax, 0xffffff7d
	mov	rsp, rsp
	je	.label_38
	cmp	eax, 0xffffff7e
	mov	rbp, rbp
	jne	.label_10
	jmp	.label_41
.label_2484:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + section_del]],  rax
	lea	rdi, [rdi]
	mov	bpl, bl
	mov	rsp, rsp
	jmp	.label_10
.label_2485:
	nop	
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x6f
	mov	rbp, rbp
	jg	.label_46
	cmp	ecx, 0x61
	je	.label_11
	cmp	ecx, 0x6e
	mov	rbp, rbp
	je	.label_11
	mov	rsp, rsp
	jmp	.label_13
.label_2486:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x6f
	lea	rdi, [rdi]
	jg	.label_15
	lea	rdi, [rdi]
	cmp	ecx, 0x61
	je	.label_21
	nop	
	cmp	ecx, 0x6e
	lea	rdi, [rdi]
	je	.label_21
	jmp	.label_24
.label_2487:
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	esi, 1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rsp, rsp
	call	xdectoimax
	mov	qword ptr [word ptr [rip + page_incr]],  rax
	mov	bpl, bl
	jmp	.label_10
.label_2488:
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	mov	rdi, rbp
	nop	
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	r8, rax
	call	xdectoimax
	nop	
	mov	qword ptr [word ptr [rip + blank_join]],  rax
	lea	rsi, [rsi]
	mov	bpl, bl
	jmp	.label_10
.label_2489:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x72
	je	.label_12
	movzx	ecx, cl
	cmp	ecx, 0x6c
	mov	rbp, rbp
	jne	.label_17
	movzx	edx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	cmp	edx, 0x6e
	jne	.label_20
	mov	rsp, rsp
	cmp	byte ptr [rax + 2], 0
	mov	rbp, rbp
	je	.label_42
.label_20:
	lea	rdi, [rdi]
	cmp	ecx, 0x72
	jne	.label_17
.label_12:
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6e
	jne	.label_25
	cmp	byte ptr [rax + 2], 0
	je	.label_27
.label_25:
	nop	
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x7a
	jne	.label_17
	cmp	byte ptr [rax + 2], 0
	lea	rsi, [rsi]
	je	.label_31
.label_17:
	xor	ebp, ebp
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	jmp	.label_19
.label_2490:
	nop	
	mov	byte ptr [byte ptr [rip + reset_numbers]],  1
	mov	bpl, bl
	jmp	.label_10
.label_2491:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	qword ptr [word ptr [rip + separator_str]],  rax
	lea	rdi, [rdi]
	mov	bpl, bl
	jmp	.label_10
.label_2492:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	lea	rsi, [r14 + 1]
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, rax
	call	xdectoimax
	mov	qword ptr [word ptr [rip + starting_line_number]],  rax
	mov	rsp, rsp
	mov	bpl, bl
	lea	rdi, [rdi]
	jmp	.label_10
.label_2493:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str_1
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	r8, rax
	mov	rbp, rbp
	call	xdectoimax
	nop	
	mov	dword ptr [dword ptr [rip + lineno_width]],  eax
	lea	rdi, [rdi]
	mov	bpl, bl
	lea	rdi, [rdi]
	jmp	.label_10
.label_30:
	mov	rsp, rsp
	cmp	ecx, 0x70
	mov	rsp, rsp
	je	.label_29
	cmp	ecx, 0x74
	jne	.label_32
.label_34:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + body_type]],  rax
	mov	bpl, bl
	nop	
	jmp	.label_10
.label_46:
	nop	
	cmp	ecx, 0x70
	je	.label_36
	cmp	ecx, 0x74
	jne	.label_13
.label_11:
	mov	qword ptr [word ptr [rip + footer_type]],  rax
	mov	bpl, bl
	mov	rbp, rbp
	jmp	.label_10
.label_15:
	mov	rbp, rbp
	cmp	ecx, 0x70
	nop	
	je	.label_40
	cmp	ecx, 0x74
	mov	rbp, rbp
	jne	.label_24
.label_21:
	nop	
	mov	qword ptr [word ptr [rip + header_type]],  rax
	mov	bpl, bl
	jmp	.label_10
.label_29:
	nop	
	lea	rbp, [rax + 1]
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	qword ptr [word ptr [rip + body_type]],  rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + body_regex]],  xmm0
	nop	
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	mov	rsp, rsp
	movups	xmmword ptr [word ptr [rip + label_45]],  xmm0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	mov	edx, OFFSET FLAT:body_regex
	jmp	.label_18
.label_32:
	xor	ebp, ebp
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.17_0
	jmp	.label_19
.label_36:
	mov	rsp, rsp
	lea	rbp, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	mov	qword ptr [word ptr [rip + footer_type]],  rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + footer_regex]],  xmm0
	lea	rdi, [rdi]
	movaps	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [word ptr [rip + label_22]],  xmm0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:footer_regex
	mov	rsp, rsp
	jmp	.label_18
.label_13:
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	jmp	.label_19
.label_40:
	mov	rbp, rbp
	lea	rbp, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + optarg]],  rbp
	nop	
	mov	qword ptr [word ptr [rip + header_type]],  rax
	nop	
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + header_regex]],  xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [word ptr [rip + label_39]],  xmm0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	mov	rdi, rbp
	call	strlen
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:header_regex
.label_18:
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, rax
	mov	rbp, rbp
	call	rpl_re_compile_pattern
	mov	rcx, rax
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	mov	bpl, bl
	je	.label_10
	lea	rdi, [rdi]
	jmp	.label_16
.label_24:
	xor	ebp, ebp
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	rsp, rsp
	jmp	.label_19
.label_27:
	mov	qword ptr [word ptr [rip + lineno_format]], OFFSET FLAT:FORMAT_RIGHT_NOLZ
	mov	bpl, bl
	jmp	.label_10
.label_31:
	nop	
	mov	qword ptr [word ptr [rip + lineno_format]], OFFSET FLAT:FORMAT_RIGHT_LZ
	mov	rbp, rbp
	mov	bpl, bl
	jmp	.label_10
.label_42:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + lineno_format]], OFFSET FLAT:FORMAT_LEFT
	lea	rdi, [rdi]
	mov	bpl, bl
	mov	rbp, rbp
	jmp	.label_10
.label_37:
	test	bl, bl
	mov	rbp, rbp
	je	.label_35
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + section_del]]
	call	strlen
	mov	rbp, rax
	mov	rbp, rbp
	lea	rax, [rbp + rbp*2]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + header_del_len]],  rax
	lea	rdi, [rbp + rbp*2 + 1]
	mov	rbp, rbp
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + header_del]],  rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	stpcpy
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	stpcpy
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rdi, rax
	call	stpcpy
	mov	rbp, rbp
	lea	rax, [rbp + rbp]
	mov	qword ptr [word ptr [rip + body_del_len]],  rax
	lea	rdi, [rdi]
	lea	rdi, [rbp + rbp + 1]
	lea	rdi, [rdi]
	call	xmalloc
	mov	qword ptr [word ptr [rip + body_del]],  rax
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	stpcpy
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rdi, rax
	call	stpcpy
	mov	qword ptr [word ptr [rip + footer_del_len]],  rbp
	lea	rdi, [rbp + 1]
	nop	
	call	xmalloc
	nop	
	mov	qword ptr [word ptr [rip + footer_del]],  rax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + section_del]]
	mov	rbp, rbp
	mov	rdi, rax
	call	stpcpy
	nop	
	mov	edi, OFFSET FLAT:line_buf
	call	initbuffer
	mov	rdi,  qword ptr [word ptr [rip + separator_str]]
	call	strlen
	lea	rsi, [rsi]
	mov	r14, rax
	movsxd	rax,  dword ptr [dword ptr [rip + lineno_width]]
	lea	rsi, [rsi]
	lea	rdi, [r14 + rax + 1]
	mov	rbp, rbp
	call	xmalloc
	mov	r13, rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + print_no_line_fmt]],  r13
	movsxd	rbp,  dword ptr [dword ptr [rip + lineno_width]]
	mov	rsp, rsp
	add	rbp, r14
	mov	esi, 0x20
	mov	rdi, r13
	mov	rdx, rbp
	call	memset
	lea	rdi, [rdi]
	mov	byte ptr [r13 + rbp], 0
	mov	rax,  qword ptr [word ptr [rip + starting_line_number]]
	nop	
	mov	qword ptr [word ptr [rip + line_no]],  rax
	mov	rax,  qword ptr [word ptr [rip + body_type]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + current_type]],  rax
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + current_regex]], OFFSET FLAT:body_regex
	nop	
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	cmp	eax, r12d
	jne	.label_44
	mov	edi, OFFSET FLAT:.str.30
	call	nl_file
	mov	rsp, rsp
	mov	bl, al
	jmp	.label_14
.label_44:
	jge	.label_14
	nop	word ptr cs:[rax + rax]
.label_23:
	lea	rsi, [rsi]
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	nl_file
	and	bl, al
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + optind]],  eax
	mov	rsp, rsp
	cmp	eax, r12d
	jl	.label_23
.label_14:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_43
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rbp, rbp
	call	rpl_fclose
	cmp	eax, -1
	mov	rbp, rbp
	je	.label_33
.label_43:
	nop	
	not	bl
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	movzx	eax, bl
	add	rsp, 0x48
	nop	
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_38:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	mov	r9d, OFFSET FLAT:.str.29
	xor	eax, eax
	mov	rsp, rsp
	call	version_etc
	xor	edi, edi
	call	exit
.label_41:
	lea	rdi, [rdi]
	xor	edi, edi
	call	usage
.label_35:
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_16:
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	call	error
.label_33:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.30
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402580

	.globl nl_file
	.type nl_file, @function
nl_file:
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_47
	cmp	byte ptr [r14 + 1], 0
	je	.label_54
.label_47:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.65
	mov	rdi, r14
	call	fopen
	mov	r15, rax
	test	r15, r15
	jne	.label_60
	jmp	.label_65
.label_54:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	lea	rdi, [rdi]
	mov	r15,  qword ptr [word ptr [rip + stdin]]
.label_60:
	nop	
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	rbp, rbp
	jmp	.label_66
	nop	word ptr cs:[rax + rax]
.label_49:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + label_68]]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + label_63]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
.label_66:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:line_buf
	mov	rsi, r15
	call	readlinebuffer
	nop	
	test	rax, rax
	je	.label_72
	mov	rbp,  qword ptr [word ptr [rip + label_63]]
	lea	rbx, [rbp - 1]
	cmp	rbx, 2
	lea	rsi, [rsi]
	jb	.label_64
	mov	r12,  qword ptr [word ptr [rip + label_68]]
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + section_del]]
	lea	rsi, [rsi]
	movzx	eax, word ptr [rax]
	movzx	ecx, word ptr [r12]
	mov	rsp, rsp
	cmp	ecx, eax
	lea	rdi, [rdi]
	jne	.label_64
	cmp	rbx,  qword ptr [word ptr [rip + header_del_len]]
	mov	rsp, rsp
	jne	.label_74
	mov	rsi,  qword ptr [word ptr [rip + header_del]]
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_55
.label_74:
	mov	rbp, rbp
	cmp	rbx,  qword ptr [word ptr [rip + body_del_len]]
	jne	.label_59
	mov	rsi,  qword ptr [word ptr [rip + body_del]]
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcmp
	nop	
	test	eax, eax
	je	.label_67
.label_59:
	lea	rsi, [rsi]
	cmp	rbx,  qword ptr [word ptr [rip + footer_del_len]]
	jne	.label_64
	mov	rsi,  qword ptr [word ptr [rip + footer_del]]
	nop	
	mov	rdi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_56
	nop	dword ptr [rax]
.label_64:
	mov	rax,  qword ptr [word ptr [rip + current_type]]
	movsx	eax, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	eax, 0x6f
	jg	.label_48
	nop	
	cmp	eax, 0x61
	mov	rbp, rbp
	je	.label_52
	cmp	eax, 0x6e
	mov	rbp, rbp
	je	.label_57
	lea	rdi, [rdi]
	jmp	.label_49
	nop	
.label_48:
	cmp	eax, 0x70
	je	.label_61
	nop	
	cmp	eax, 0x74
	lea	rsi, [rsi]
	jne	.label_49
	cmp	rbp, 2
	mov	rbp, rbp
	jb	.label_57
	lea	rdi, [rdi]
	jmp	.label_69
.label_52:
	mov	rax,  qword ptr [word ptr [rip + blank_join]]
	mov	rsp, rsp
	cmp	rax, 2
	jl	.label_69
	cmp	rbp, 1
	ja	.label_71
	mov	rcx,  qword ptr [word ptr [rip + proc_text.blank_lines]]
	inc	rcx
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + proc_text.blank_lines]],  rcx
	cmp	rcx, rax
	mov	rbp, rbp
	jne	.label_57
.label_71:
	mov	rsi,  qword ptr [word ptr [rip + lineno_format]]
	mov	edx,  dword ptr [dword ptr [rip + lineno_width]]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + line_no]]
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [rip + separator_str]]
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	call	__printf_chk
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + page_incr]]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_58
	lea	rsi, [rsi]
	add	qword ptr [word ptr [rip + line_no]],  rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + proc_text.blank_lines]],  0
	lea	rdi, [rdi]
	jmp	.label_49
.label_61:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + current_regex]]
	mov	rsi,  qword ptr [word ptr [rip + label_68]]
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	rpl_re_search
	cmp	rax, -1
	je	.label_57
	cmp	rax, -2
	je	.label_62
.label_69:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + lineno_format]]
	mov	edx,  dword ptr [dword ptr [rip + lineno_width]]
	mov	rcx,  qword ptr [word ptr [rip + line_no]]
	mov	r8,  qword ptr [word ptr [rip + separator_str]]
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + page_incr]]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_58
	nop	
	add	qword ptr [word ptr [rip + line_no]],  rax
	jmp	.label_49
	nop	
.label_57:
	mov	rdi,  qword ptr [word ptr [rip + print_no_line_fmt]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	jmp	.label_49
.label_55:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + header_type]]
	mov	qword ptr [word ptr [rip + current_type]],  rax
	mov	qword ptr [word ptr [rip + current_regex]], OFFSET FLAT:header_regex
	lea	rsi, [rsi]
	jmp	.label_51
.label_67:
	mov	rax,  qword ptr [word ptr [rip + body_type]]
	mov	qword ptr [word ptr [rip + current_type]],  rax
	nop	
	mov	qword ptr [word ptr [rip + current_regex]], OFFSET FLAT:body_regex
	lea	rdi, [rdi]
	jmp	.label_51
.label_56:
	nop	
	mov	rax,  qword ptr [word ptr [rip + footer_type]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + current_type]],  rax
	nop	
	mov	qword ptr [word ptr [rip + current_regex]], OFFSET FLAT:footer_regex
.label_51:
	mov	al,  byte ptr [byte ptr [rip + reset_numbers]]
	and	al, 1
	jne	.label_50
	mov	rax,  qword ptr [word ptr [rip + starting_line_number]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + line_no]],  rax
.label_50:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_70
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	mov	rsp, rsp
	jmp	.label_66
.label_70:
	mov	rbp, rbp
	mov	esi, 0xa
	mov	rbp, rbp
	call	__overflow
	jmp	.label_66
.label_72:
	test	byte ptr [r15], 0x20
	mov	rbp, rbp
	jne	.label_65
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_73
	cmp	byte ptr [r14 + 1], 0
	mov	rsp, rsp
	je	.label_75
.label_73:
	mov	rbp, rbp
	mov	rdi, r15
	call	rpl_fclose
	lea	rsi, [rsi]
	mov	bl, 1
	lea	rdi, [rdi]
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_53
.label_65:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	nop	
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_53:
	mov	al, bl
	pop	rbx
	pop	r12
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_75:
	lea	rsi, [rsi]
	mov	rdi, r15
	call	clearerr_unlocked
	lea	rsi, [rsi]
	mov	bl, 1
	jmp	.label_53
.label_58:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	nop	
	call	error
.label_62:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x402a70
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
	#Procedure 0x402a80
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a90

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
	je	.label_77
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_76
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_76
.label_77:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_79
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_76:
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
	jne	.label_78
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
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
.label_79:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_78:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
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
	#Procedure 0x402b90
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_80
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_80:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rdi], xmm0
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bf0

	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r13, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	xor	eax, eax
	test	byte ptr [r13], 0x10
	jne	.label_82
	mov	rsp, rsp
	mov	r15, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14]
	add	r12, r15
	lea	rdi, [rdi]
	mov	rbx, r15
	nop	word ptr [rax + rax]
.label_85:
	mov	rax, qword ptr [r13 + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r13 + 0x10]
	nop	
	jae	.label_81
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_86:
	mov	rsp, rsp
	cmp	rbx, r12
	jne	.label_84
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	lea	rdi, [rdi]
	call	x2realloc
	mov	r15, rax
	add	rbx, r15
	mov	qword ptr [r14 + 0x10], r15
	lea	rsi, [rsi]
	mov	r12, r15
	add	r12, qword ptr [r14]
.label_84:
	mov	byte ptr [rbx], bpl
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	cmp	ebp, 0xa
	jne	.label_85
	jmp	.label_83
.label_81:
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	__uflow
	mov	ebp, eax
	mov	rbp, rbp
	cmp	ebp, -1
	jne	.label_86
	cmp	rbx, r15
	mov	eax, 0
	lea	rsi, [rsi]
	je	.label_82
	nop	
	test	byte ptr [r13], 0x20
	jne	.label_82
	movzx	eax, byte ptr [rbx - 1]
	lea	rdi, [rdi]
	mov	ebp, 0xa
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_86
.label_83:
	lea	rdi, [rdi]
	sub	rbx, r15
	nop	
	mov	qword ptr [r14 + 8], rbx
	mov	rax, r14
.label_82:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d00
	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:

	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	nop	
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r15, rdi
	nop	
	xor	eax, eax
	nop	
	test	byte ptr [rbp], 0x10
	jne	.label_87
	mov	rsp, rsp
	mov	r12, qword ptr [r15 + 0x10]
	nop	
	mov	r14, qword ptr [r15]
	lea	rsi, [rsi]
	add	r14, r12
	lea	rdi, [rdi]
	movsx	eax, dl
	mov	rbp, rbp
	mov	dword ptr [rsp], eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], edx
	mov	r13, r12
	nop	dword ptr [rax]
.label_92:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	jae	.label_90
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	lea	rsi, [rsi]
	movzx	ebx, byte ptr [rax]
.label_91:
	cmp	r13, r14
	nop	
	jne	.label_89
	mov	rbp, rbp
	mov	r13, qword ptr [r15]
	mov	rdi, r12
	nop	
	mov	rsi, r15
	lea	rsi, [rsi]
	call	x2realloc
	lea	rsi, [rsi]
	mov	r12, rax
	add	r13, r12
	mov	qword ptr [r15 + 0x10], r12
	mov	r14, r12
	add	r14, qword ptr [r15]
.label_89:
	nop	
	mov	byte ptr [r13], bl
	nop	
	inc	r13
	nop	
	cmp	ebx, dword ptr [rsp]
	jne	.label_92
	lea	rdi, [rdi]
	jmp	.label_88
.label_90:
	mov	rbp, rbp
	mov	rdi, rbp
	call	__uflow
	mov	rsp, rsp
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_91
	mov	rsp, rsp
	cmp	r13, r12
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 4]
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_87
	test	byte ptr [rbp], 0x20
	jne	.label_87
	mov	eax, ecx
	nop	
	movzx	eax, al
	movzx	ecx, byte ptr [r13 - 1]
	cmp	ecx, eax
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp]
	lea	rdi, [rdi]
	jne	.label_91
.label_88:
	sub	r13, r12
	mov	qword ptr [r15 + 8], r13
	mov	rax, r15
.label_87:
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e20
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	nop
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e30

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
	je	.label_93
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
	jl	.label_95
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_95
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_94
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_94:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_95:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_93:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
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
	#Procedure 0x402f20
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
	#Procedure 0x402f70
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
	#Procedure 0x402f90
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
	#Procedure 0x402fb0
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
	#Procedure 0x403020
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
	#Procedure 0x403040
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
	je	.label_96
	test	rdx, rdx
	nop	
	je	.label_96
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_96:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403080
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
	#Procedure 0x403130

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
.label_211:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_104
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_110]]
.label_2441:
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
	mov	edi, OFFSET FLAT:.str.12
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
.label_2442:
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
	jne	.label_144
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_144
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_213:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_160
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_160:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_213
.label_144:
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
	jmp	.label_97
.label_2434:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_97
.label_2437:
	lea	rsi, [rsi]
	mov	al, 1
.label_2435:
	lea	rsi, [rsi]
	mov	dl, 1
.label_2438:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_195
	mov	rbp, rbp
	mov	cl, al
.label_195:
	mov	al, cl
.label_2436:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_197
	test	rbp, rbp
	je	.label_203
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_204
.label_197:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_204
.label_2439:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_214
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_219
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_123
.label_2440:
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
	jmp	.label_97
.label_203:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_204:
	mov	ecx, OFFSET FLAT:.str.12
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_97
.label_214:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_123
.label_219:
	nop	
	mov	r14d, 1
.label_123:
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
.label_97:
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
	jmp	.label_146
	nop	dword ptr [rax]
.label_139:
	mov	rsp, rsp
	inc	r15
.label_146:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_126
	cmp	r15, r10
	jne	.label_190
	jmp	.label_157
	nop	dword ptr [rax]
.label_126:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_193
.label_190:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_194
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_200
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_200
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
.label_200:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_101
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_103
	nop	dword ptr [rax]
.label_194:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_101:
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
	jne	.label_143
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
	je	.label_103
	jmp	.label_125
.label_143:
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
.label_103:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_175
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_176]]
.label_2501:
	test	r15, r15
	jne	.label_145
	jmp	.label_182
.label_2505:
	xor	eax, eax
	cmp	r10, -1
	je	.label_184
	test	r15, r15
	jne	.label_186
	nop	
	cmp	r10, 1
	je	.label_182
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_132
.label_2494:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_191
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_125
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_198
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_198
	cmp	r14, rbp
	jae	.label_202
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_202:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_140
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_140:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_216
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_216:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_198:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_99
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_99:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_107
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_114
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_116
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_122
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_122:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_133
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_133:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_132
.label_2495:
	mov	bl, 0x62
	nop	
	jmp	.label_154
.label_2496:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_102
.label_2497:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_154
.label_2498:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_154
.label_2499:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_102
.label_2502:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_173
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_164
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
	jae	.label_169
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_169:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_183
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_183:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_189
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_189:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_173:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_132
.label_2503:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_196
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_145
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_145
	nop	
	jmp	.label_210
.label_2504:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_212
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_215
	jmp	.label_221
.label_175:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_192
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
	jmp	.label_167
.label_184:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_118
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_118
.label_182:
	mov	dl, 1
.label_2500:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_128
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_132
.label_191:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_139
	jmp	.label_145
.label_212:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_102
.label_215:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_137
.label_102:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_153
.label_154:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_132
	jmp	.label_159
.label_192:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_162
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_162:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_149
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_225:
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
	je	.label_158
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_155
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_224
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_208
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_220:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_223
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_100
.label_223:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_220
.label_208:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_109
	mov	rbp, rbp
	xor	r13d, r13d
.label_109:
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
	je	.label_225
	jmp	.label_115
	nop	
.label_149:
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
	je	.label_151
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_155
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_158
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_165
	xor	r13d, r13d
.label_165:
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
	je	.label_149
	lea	rsi, [rsi]
	jmp	.label_115
.label_118:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_132
.label_196:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_145
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_145
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_145
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_207
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_217
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_113
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_138
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_138:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_171
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_171:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_142
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_142:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_148
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_148:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_132
.label_145:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_132:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_218
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_121
	nop	
	jmp	.label_131
	nop	dword ptr [rax + rax]
.label_218:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_131
.label_121:
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
	jne	.label_134
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_147
	nop	word ptr cs:[rax + rax]
.label_131:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_147:
	mov	bl, r12b
	je	.label_137
	jmp	.label_159
.label_134:
	mov	bl, r12b
.label_159:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_125
	cmp	r9d, 2
	jne	.label_161
	mov	al, dil
	and	al, 1
	jne	.label_161
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_166
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_166:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_172
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_172:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_178
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_178:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_161:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_181
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_181:
	mov	rbp, rbp
	inc	r14
	jmp	.label_188
.label_186:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_132
.label_107:
	xor	r13d, r13d
	jmp	.label_132
.label_114:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_132
.label_116:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_132
.label_155:
	xor	r13d, r13d
.label_151:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_115
.label_158:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_205
	lea	rax, [r11 + r15]
.label_222:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_185
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_222
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_115
.label_205:
	xor	r13d, r13d
	jmp	.label_115
.label_185:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_115
.label_224:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_115:
	mov	rbp, rbp
	mov	rbx, r10
.label_167:
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
	ja	.label_111
	test	cl, cl
	je	.label_111
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_132
.label_111:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_136
	nop	dword ptr [rax]
.label_124:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_136:
	mov	rsp, rsp
	test	cl, cl
	je	.label_150
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_152
	cmp	r14, rbp
	jae	.label_156
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_156:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_152:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_163
	nop	dword ptr [rax + rax]
.label_150:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_170
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_127
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_127
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_179
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_179:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_199
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_199:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_187
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_187:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_127:
	cmp	r14, rbp
	jae	.label_174
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_174:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_168
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_168:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_130
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_130:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_163:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_137
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_106
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_106
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_129
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_129:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_206
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_206:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_106:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_124
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_124
	nop	word ptr cs:[rax + rax]
.label_137:
	test	dil, 1
	je	.label_141
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_141
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_209
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_209:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_120
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_120:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_141:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_188:
	cmp	r14, rbp
	jae	.label_135
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_135:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_139
.label_207:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_132
.label_217:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_132
	nop	word ptr [rax + rax]
.label_157:
	nop	
	mov	rcx, r15
.label_193:
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
	je	.label_180
	mov	rsp, rsp
	or	al, dl
	je	.label_105
.label_180:
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
	je	.label_119
	mov	rsp, rsp
	or	al, dl
	jne	.label_119
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_201
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_119
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
	je	.label_211
.label_119:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_98
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_98
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_98
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_112:
	cmp	r14, rbp
	jae	.label_108
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_108:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_112
.label_98:
	cmp	r14, rbp
	jae	.label_117
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_117
.label_128:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_125
.label_100:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_125
.label_170:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_125
.label_105:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_125
.label_153:
	nop	
	mov	r9d, 2
.label_125:
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
.label_177:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_117:
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
.label_201:
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
	jmp	.label_177
.label_164:
	mov	r9d, 2
	jmp	.label_125
.label_221:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_125
.label_210:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_125
.label_113:
	mov	r9d, 5
	nop	
	jmp	.label_125
.label_104:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045d0
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
	#Procedure 0x404710
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
	je	.label_226
	mov	qword ptr [rax], rbx
.label_226:
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
	#Procedure 0x404860
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_227
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_231:
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
	jl	.label_231
.label_227:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_230
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_228]], OFFSET FLAT:slot0
.label_230:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_229
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_229:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404920
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404930

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
	js	.label_237
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_233
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_234
.label_233:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_238
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
	jne	.label_236
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_236:
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
.label_234:
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
	ja	.label_235
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
	je	.label_232
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_232:
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
.label_235:
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
.label_237:
	lea	rdi, [rdi]
	call	abort
.label_238:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ba0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404bb0
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
	#Procedure 0x404be0
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
	#Procedure 0x404c10
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
	je	.label_239
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
.label_239:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ca0
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
	je	.label_240
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
.label_240:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d40
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
	je	.label_241
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
.label_241:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dd0
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
	je	.label_242
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
.label_242:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404e40
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_243]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_245]]
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
	#Procedure 0x404ee0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_243]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_245]]
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
	#Procedure 0x404f80

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_243]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_245]]
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
	#Procedure 0x404ff0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_243]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_245]]
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
	#Procedure 0x405060

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
	je	.label_246
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
.label_246:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405140
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_243]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_245]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_247
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_247
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
.label_247:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4051d0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_243]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_245]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_248
	test	rdx, rdx
	je	.label_248
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
.label_248:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405260
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_243]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_245]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_249
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_249
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
.label_249:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405300
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_243]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_245]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_250
	test	rsi, rsi
	je	.label_250
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
.label_250:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053b0
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
	#Procedure 0x4053d0
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
	#Procedure 0x4053f0

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
	#Procedure 0x405420

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
	jne	.label_252
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_254
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_253
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_253
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_253
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_253
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_253
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_253
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_252
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_252
.label_254:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_253
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_253
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_253
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_253
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_253
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_253
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_251
.label_253:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12
	cmove	rax, rcx
.label_252:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_251:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_252
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_252
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405590

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
	je	.label_260
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_259
.label_260:
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_259:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
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
	ja	.label_262
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_263]]
.label_2554:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
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
.label_262:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_258
.label_2555:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
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
.label_2556:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
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
.label_2557:
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
	jmp	.label_256
.label_2558:
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
	jmp	.label_255
.label_2559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
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
	jmp	.label_264
.label_2560:
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
.label_264:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_255:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_256:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_261
.label_2562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_258:
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
	jmp	.label_257
.label_2561:
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
.label_257:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_261:
	mov	rbp, rbp
	call	__fprintf_chk
.label_2553:
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
	#Procedure 0x405980
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_265:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_265
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059b0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_269:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_266
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_268
	nop	word ptr cs:[rax + rax]
.label_266:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_268:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_267
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_269
.label_267:
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
	#Procedure 0x405a40

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_270
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
.label_270:
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
.label_272:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_271
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_273
	nop	dword ptr [rax + rax]
.label_271:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_273:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_274
	inc	r9
	cmp	r9, 0xa
	jb	.label_272
.label_274:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b80
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
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
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
	#Procedure 0x405c10
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
	jb	.label_275
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_276
	test	rax, rax
	je	.label_275
.label_276:
	nop	
	pop	rbx
	ret	
.label_275:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_277
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_278
.label_277:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_278:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c90
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
	jb	.label_280
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_279
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_279
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_279:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_281
	test	rax, rax
	je	.label_280
.label_281:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_280:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_282
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_282
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_282:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_283
	test	rax, rax
	nop	
	je	.label_284
.label_283:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_284:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d60
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_285
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_289
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_288
.label_285:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_291
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_291:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_286
.label_288:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_287
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_287
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_287:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_290
	test	rax, rax
	mov	rbp, rbp
	je	.label_289
.label_290:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_289:
	call	xalloc_die
.label_286:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e40
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_293
	test	rax, rax
	mov	rbp, rbp
	je	.label_292
.label_293:
	pop	rbx
	ret	
.label_292:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405e60

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_294
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_297
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_298
	call	free
	xor	eax, eax
	jmp	.label_295
.label_294:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_296
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_298:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_295
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_296
.label_295:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_296:
	mov	rbp, rbp
	call	xalloc_die
.label_297:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ef0
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
	je	.label_299
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_300
.label_299:
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
.label_300:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f50
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
	jb	.label_301
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_301
	pop	rcx
	ret	
.label_301:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405f80

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
	je	.label_303
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_302
.label_303:
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
.label_302:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405fe0
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
	je	.label_304
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_305
.label_304:
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
.label_305:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406040

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406090

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	r14, r9
	lea	rdi, [rdi]
	mov	r12, rcx
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	eax, esi
	mov	r15, rdi
	mov	rbp, rbp
	lea	rcx, [rsp]
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	call	xstrtoimax
	mov	rsp, rsp
	test	eax, eax
	je	.label_310
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_312
	mov	rbp, rbp
	cmp	eax, 3
	jne	.label_307
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_306
.label_310:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	nop	
	jl	.label_313
	cmp	rbx, r12
	jle	.label_308
.label_313:
	mov	rsp, rsp
	cmp	rbx, 0x40000000
	lea	rsi, [rsi]
	jl	.label_309
.label_312:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_306
.label_307:
	mov	rsp, rsp
	call	__errno_location
.label_306:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x40]
	nop	
	test	ecx, ecx
	mov	ebx, 1
	nop	
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ebp, 0x16
	mov	rbp, rbp
	cmove	ebp, eax
	mov	rbp, rbp
	mov	rdi, r15
	call	quote
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rsp, rsp
	mov	rcx, r14
	call	error
	nop	
	mov	rbx, qword ptr [rsp]
.label_308:
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_309:
	call	__errno_location
	mov	rsp, rsp
	cmp	rbx, -0x40000001
	jg	.label_311
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_306
.label_311:
	mov	dword ptr [rax], 0x22
	jmp	.label_306
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061e0

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	rsp, rsp
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rsp, rsp
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406220

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	nop	
	mov	r12, rdi
	cmp	ebp, 0x25
	mov	rsp, rsp
	jae	.label_323
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	lea	rbx, [rsp + 8]
	lea	rdi, [rdi]
	cmovne	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	edx, ebp
	call	__strtol_internal
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	cmp	rcx, r12
	nop	
	je	.label_350
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_355
	mov	rbp, rbp
	mov	r13d, 4
	lea	rsi, [rsi]
	cmp	eax, 0x22
	jne	.label_314
	mov	rsp, rsp
	mov	r13d, 1
.label_355:
	test	r14, r14
	nop	
	je	.label_364
	lea	rsi, [rsi]
	mov	r12d, r13d
	mov	rbp, rbp
	jmp	.label_368
.label_350:
	mov	rbp, rbp
	mov	r13d, 4
	test	r14, r14
	je	.label_314
	lea	rsi, [rsi]
	mov	r15, rcx
	nop	
	movsx	esi, byte ptr [r12]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_314
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	call	strchr
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	mov	ebp, 1
	nop	
	test	rax, rax
	mov	rcx, r15
	je	.label_314
.label_368:
	nop	
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_330
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_326
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	mov	rsp, rsp
	lea	eax, [r13 - 0x45]
	mov	rsp, rsp
	cmp	eax, 0x2f
	nop	
	ja	.label_318
	lea	rdi, [rdi]
	movabs	rcx, 0x814400308945
	mov	rbp, rbp
	bt	rcx, rax
	lea	rdi, [rdi]
	jae	.label_318
	mov	rbp, rbp
	mov	esi, 0x30
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strchr
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	r8d, 0x400
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_318
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	movsx	eax, byte ptr [rax + 1]
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	r8d, 0x400
	mov	rsp, rsp
	cmp	eax, 0x42
	je	.label_315
	lea	rdi, [rdi]
	cmp	eax, 0x44
	mov	rbp, rbp
	je	.label_315
	cmp	eax, 0x69
	lea	rdi, [rdi]
	jne	.label_318
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	movzx	eax, byte ptr [rax + 2]
	mov	r15d, 3
	cmp	eax, 0x42
	nop	
	je	.label_351
	mov	r15d, 1
.label_351:
	mov	r8d, 0x400
	jmp	.label_318
.label_364:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	jmp	.label_314
.label_330:
	mov	rbp, rbp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_331
.label_315:
	mov	r15d, 2
	mov	r8d, 0x3e8
.label_318:
	movabs	r9, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	r13d, 0x59
	jg	.label_344
	lea	eax, [r13 - 0x42]
	lea	rdi, [rdi]
	cmp	eax, 0xe
	ja	.label_339
	jmp	qword ptr [word ptr [+ (rax * 8) + label_345]]
.label_2427:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	lea	rsi, [rsi]
	jl	.label_349
	nop	
	mov	r13, rbp
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	lea	rsi, [rsi]
	jmp	.label_316
.label_344:
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_360
	lea	rsi, [rsi]
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_371
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, rbp
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_367]]
.label_2445:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	nop	
	jl	.label_349
	mov	r13, rbp
	shl	r13, 9
	lea	rsi, [rsi]
	movabs	rax, 0x3fffffffffffff
	jmp	.label_316
.label_339:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	je	.label_324
	cmp	r13d, 0x59
	jne	.label_326
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	mov	rbp, rbp
	idiv	r8
	mov	r10, rax
	mov	rsp, rsp
	cmp	rbp, r10
	mov	edi, 1
	nop	
	mov	rcx, r13
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_328
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	mov	rbp, rbp
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	ebx, al
.label_328:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_356
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_356:
	mov	rsp, rsp
	or	edi, ebx
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	r11d, 1
	mov	rsp, rsp
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_362
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	lea	rdi, [rdi]
	mov	rcx, rsi
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	ebx, al
.label_362:
	or	ebx, edi
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	jl	.label_320
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rsi, rcx
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rsi, r9
	mov	rsp, rsp
	movzx	r11d, al
.label_320:
	or	r11d, ebx
	cmp	rsi, r10
	mov	r14d, 1
	mov	rcx, r13
	nop	
	mov	ebx, 1
	nop	
	jl	.label_333
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	nop	
	div	r8
	mov	rcx, rsi
	nop	
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	nop	
	movzx	ebx, al
.label_333:
	or	ebx, r11d
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_347
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	lea	rsi, [rsi]
	movzx	r14d, al
.label_347:
	or	r14d, ebx
	cmp	rsi, r10
	mov	ebx, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_361
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsp, rsp
	mov	rcx, rsi
	lea	rsi, [rsi]
	imul	rcx, r8
	nop	
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_361:
	lea	rsi, [rsi]
	or	edi, r14d
	cmp	rcx, r10
	jl	.label_317
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
.label_317:
	mov	rbp, rbp
	or	ebx, edi
	nop	
	jmp	.label_322
.label_360:
	cmp	r13d, 0x74
	je	.label_324
	cmp	r13d, 0x77
	jne	.label_326
	mov	rbp, rbp
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_335
.label_349:
	inc	r9
	mov	rsp, rsp
	mov	ebx, 1
	mov	r13, r9
	lea	rsi, [rsi]
	jmp	.label_322
.label_2429:
	mov	rsp, rsp
	lea	r13, [r9 + 1]
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	r10d, 1
	mov	rcx, r13
	mov	rsp, rsp
	mov	ebx, 1
	mov	rbp, rbp
	jl	.label_340
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rbp, rbp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_340:
	nop	
	cmp	rcx, rdi
	mov	rsi, r13
	jl	.label_365
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	imul	rsi, r8
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	r10d, al
.label_365:
	lea	rsi, [rsi]
	or	r10d, ebx
	cmp	rsi, rdi
	mov	rbp, rbp
	mov	ebx, 1
	nop	
	jl	.label_337
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	mov	rbp, rbp
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_337:
	lea	rdi, [rdi]
	or	ebx, r10d
	jmp	.label_322
.label_2430:
	lea	rsi, [rsi]
	lea	r13, [r9 + 1]
	lea	rdi, [rdi]
	mov	rax, r13
	cqo	
	idiv	r8
	cmp	rbp, rax
	mov	ebx, 1
	jl	.label_322
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rbp
	nop	
	cmp	rax, rbp
	nop	
	setl	al
	cmovl	r8, r9
	lea	rdi, [rdi]
	movzx	ebx, al
	mov	r13, r8
	nop	
	jmp	.label_322
.label_2431:
	lea	r13, [r9 + 1]
	mov	rax, r13
	mov	rbp, rbp
	cqo	
	idiv	r8
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ebx, 1
	mov	rcx, r13
	mov	r10d, 1
	jl	.label_352
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rsp, rsp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rdi, [rdi]
	setl	al
	cmovl	rcx, r9
	movzx	r10d, al
.label_352:
	lea	rsi, [rsi]
	cmp	rcx, rdi
	nop	
	jl	.label_369
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	imul	r8, rcx
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_369:
	or	ebx, r10d
	lea	rdi, [rdi]
	jmp	.label_322
.label_324:
	lea	r13, [r9 + 1]
	mov	rsp, rsp
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rbp, rbp
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rbp, rbp
	mov	r11d, 1
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_325
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	lea	rdi, [rdi]
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	lea	rsi, [rsi]
	cmovl	rcx, r9
	lea	rsi, [rsi]
	movzx	edi, al
.label_325:
	cmp	rcx, r10
	mov	rsi, r13
	nop	
	jl	.label_327
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	lea	rsi, [rsi]
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r9
	movzx	r11d, al
.label_327:
	mov	rsp, rsp
	or	r11d, edi
	lea	rdi, [rdi]
	cmp	rsi, r10
	mov	rsp, rsp
	mov	ebx, 1
	mov	rcx, r13
	mov	rbp, rbp
	mov	edi, 1
	jl	.label_357
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	mov	rbp, rbp
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	edi, al
.label_357:
	lea	rdi, [rdi]
	or	edi, r11d
	cmp	rcx, r10
	mov	rbp, rbp
	jl	.label_372
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rcx
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	r8, r9
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r8
.label_372:
	or	ebx, edi
	jmp	.label_322
.label_371:
	nop	
	cmp	r13d, 0x5a
	jne	.label_326
	lea	r13, [r9 + 1]
	nop	
	mov	rax, r13
	cqo	
	idiv	r8
	mov	rsp, rsp
	mov	r10, rax
	nop	
	cmp	rbp, r10
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	jl	.label_329
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	cmp	rax, rbp
	mov	rbp, rbp
	setl	al
	cmovl	rcx, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_329:
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_341
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	mov	rsp, rsp
	div	r8
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	imul	rsi, r8
	cmp	rax, rcx
	setl	al
	nop	
	cmovl	rsi, r9
	movzx	edi, al
.label_341:
	nop	
	or	edi, ebx
	cmp	rsi, r10
	lea	rdi, [rdi]
	mov	r11d, 1
	mov	rcx, r13
	mov	ebx, 1
	nop	
	jl	.label_359
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rbp, rbp
	mov	rcx, rsi
	imul	rcx, r8
	lea	rsi, [rsi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	rcx, r9
	movzx	ebx, al
.label_359:
	lea	rdi, [rdi]
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rcx, r10
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_319
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r9
	div	r8
	lea	rdi, [rdi]
	mov	rsi, rcx
	imul	rsi, r8
	nop	
	cmp	rax, rcx
	nop	
	setl	al
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r11d, al
.label_319:
	or	r11d, ebx
	mov	rbp, rbp
	cmp	rsi, r10
	mov	rsp, rsp
	mov	edi, 1
	mov	rcx, r13
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_353
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	mov	rcx, rsi
	imul	rcx, r8
	cmp	rax, rsi
	setl	al
	cmovl	rcx, r9
	mov	rbp, rbp
	movzx	ebx, al
.label_353:
	or	ebx, r11d
	mov	rbp, rbp
	cmp	rcx, r10
	mov	rsp, rsp
	mov	rsi, r13
	mov	rsp, rsp
	jl	.label_338
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r9
	lea	rsi, [rsi]
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	edi, al
.label_338:
	or	edi, ebx
	cmp	rsi, r10
	nop	
	mov	ebx, 1
	nop	
	jl	.label_358
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	nop	
	imul	r8, rsi
	lea	rdi, [rdi]
	cmp	rax, rsi
	setl	al
	mov	rsp, rsp
	cmovl	r8, r9
	mov	rbp, rbp
	movzx	ebx, al
	mov	r13, r8
.label_358:
	nop	
	or	ebx, edi
	mov	rsp, rsp
	jmp	.label_322
.label_326:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbp
	or	r12d, 2
	lea	rsi, [rsi]
	mov	r13d, r12d
	lea	rsi, [rsi]
	jmp	.label_314
.label_2428:
	lea	r13, [r9 + 1]
	mov	rax, r13
	lea	rdi, [rdi]
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	rbp, r10
	mov	r14d, 1
	nop	
	mov	rcx, r13
	mov	edi, 1
	jl	.label_342
	xor	edx, edx
	nop	
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	nop	
	imul	rcx, r8
	mov	rsp, rsp
	cmp	rax, rbp
	setl	al
	cmovl	rcx, r9
	movzx	edi, al
.label_342:
	mov	rsp, rsp
	cmp	rcx, r10
	mov	rbp, rbp
	mov	rbx, r13
	jl	.label_336
	mov	rbp, rbp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	nop	
	mov	rbx, rcx
	imul	rbx, r8
	cmp	rax, rcx
	mov	rbp, rbp
	setl	al
	lea	rdi, [rdi]
	cmovl	rbx, r9
	movzx	r14d, al
.label_336:
	or	r14d, edi
	lea	rdi, [rdi]
	cmp	rbx, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_348
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	lea	rdi, [rdi]
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	cmp	rax, rbx
	nop	
	setl	al
	lea	rdi, [rdi]
	cmovl	rsi, r9
	movzx	ecx, al
.label_348:
	or	ecx, r14d
	nop	
	cmp	rsi, r10
	mov	rdi, r13
	lea	rsi, [rsi]
	jl	.label_363
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	lea	rdi, [rdi]
	imul	rdi, r8
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	mov	rbp, rbp
	cmovl	rdi, r9
	movzx	r11d, al
.label_363:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	r14d, 1
	lea	rsi, [rsi]
	jl	.label_354
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rsi, r9
	mov	rbp, rbp
	movzx	r14d, al
.label_354:
	or	r14d, r11d
	cmp	rsi, r10
	jl	.label_332
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	lea	rsi, [rsi]
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	cmovl	r8, r9
	movzx	ebx, al
	mov	r13, r8
.label_332:
	nop	
	or	ebx, r14d
	lea	rdi, [rdi]
	jmp	.label_322
.label_2432:
	nop	
	lea	r13, [r9 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	lea	rsi, [rsi]
	idiv	r8
	mov	r10, rax
	lea	rsi, [rsi]
	cmp	rbp, r10
	mov	rsp, rsp
	mov	r14d, 1
	mov	rcx, r13
	mov	edi, 1
	jl	.label_343
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	lea	rdi, [rdi]
	cmp	rax, rbp
	setl	al
	nop	
	cmovl	rcx, r9
	movzx	edi, al
.label_343:
	lea	rsi, [rsi]
	cmp	rcx, r10
	mov	rsi, r13
	jl	.label_366
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r9
	nop	
	div	r8
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	imul	rsi, r8
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r9
	movzx	r14d, al
.label_366:
	lea	rdi, [rdi]
	or	r14d, edi
	cmp	rsi, r10
	mov	rsp, rsp
	mov	r11d, 1
	mov	rbx, r13
	mov	edi, 1
	nop	
	jl	.label_321
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbx, rsi
	mov	rbp, rbp
	imul	rbx, r8
	nop	
	cmp	rax, rsi
	setl	al
	nop	
	cmovl	rbx, r9
	lea	rdi, [rdi]
	movzx	edi, al
.label_321:
	or	edi, r14d
	mov	rsp, rsp
	cmp	rbx, r10
	mov	rsi, r13
	jl	.label_334
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r9
	nop	
	div	r8
	mov	rsi, rbx
	imul	rsi, r8
	mov	rbp, rbp
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r9
	movzx	r11d, al
.label_334:
	or	r11d, edi
	cmp	rsi, r10
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_346
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r9
	div	r8
	mov	rbp, rbp
	imul	r8, rsi
	cmp	rax, rsi
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	r8, r9
	movzx	ebx, al
	lea	rdi, [rdi]
	mov	r13, r8
.label_346:
	or	ebx, r11d
	mov	rsp, rsp
	jmp	.label_322
.label_335:
	lea	r13, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_316:
	nop	
	cmp	rbp, rax
	setg	al
	cmovg	r13, r9
	mov	rsp, rsp
	movzx	ebx, al
.label_322:
	mov	rbp, rbp
	or	ebx, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	lea	rax, [rdx + r15]
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	cmp	byte ptr [rdx + r15], 0
	je	.label_370
	or	ebx, 2
.label_370:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12d, ebx
.label_331:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r13
	mov	r13d, r12d
.label_314:
	mov	rbp, rbp
	mov	eax, r13d
	lea	rsi, [rsi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_323:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_373
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_374
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
	je	.label_374
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
.label_373:
	mov	ecx, 1
.label_374:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fe0

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
	js	.label_375
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_377
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
	je	.label_375
.label_377:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_375
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_376
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_376:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_375:
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
	#Procedure 0x407090

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_378
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_378
	test	byte ptr [rbx + 1], 1
	je	.label_378
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_378:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4070d0

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
	jne	.label_379
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_379
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_380
.label_379:
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
.label_380:
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
	je	.label_381
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_381:
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
	#Procedure 0x407180

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
	je	.label_382
	nop	
	cmp	r15, -2
	jb	.label_382
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_382
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_382:
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
	#Procedure 0x407210

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	nop	
	and	cl, 0x10
	and	al, 0x6f
	mov	rbp, rbp
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	nop	
	mov	rdi, rdx
	mov	rdx, r8
	lea	rdi, [rdi]
	call	re_compile_internal
	test	eax, eax
	je	.label_383
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	mov	rbp, rbp
	jmp	dcgettext
.label_383:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407280

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xf8
	nop	
	mov	qword ptr [rsp + 0xc8], rcx
	nop	
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	rsp, rsp
	mov	r12, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 8], 0xe7
	mov	rsp, rsp
	jbe	.label_520
.label_555:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0xf
	mov	rbp, rbp
	movabs	rax, 0x555555555555554
	cmp	r14, rax
	ja	.label_434
	lea	rdi, [r14 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	dword ptr [rax + rax]
.label_552:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	lea	rdi, [rdi]
	cmp	rbx, r14
	nop	
	jbe	.label_552
	lea	rsi, [rsi]
	mov	edi, 0x18
	mov	rsi, rbx
	mov	rbp, rbp
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	lea	rdi, [rdi]
	dec	rbx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x88], rbx
	nop	
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	mov	rbp, rbp
	movzx	ecx, cl
	cmp	ecx, 0x75
	mov	rsp, rsp
	jne	.label_399
	nop	
	mov	cl, byte ptr [rax + 1]
	lea	rdi, [rdi]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	mov	rbp, rbp
	jne	.label_399
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 2]
	lea	rsi, [rsi]
	or	cl, 0x20
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x66
	mov	rsp, rsp
	jne	.label_399
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	cl
	nop	
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_399
	nop	
	cmp	byte ptr [rax + rcx + 4], 0
	lea	rsi, [rsi]
	jne	.label_399
	or	byte ptr [r12 + 0xb0], 4
.label_399:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_418
	lea	rsi, [rsi]
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_428
	mov	edi, 0x20
	mov	rsp, rsp
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	nop	
	xor	ebx, ebx
	test	rax, rax
	mov	rsp, rsp
	je	.label_434
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	
.label_446:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_439
	mov	edx, 1
	nop	
	mov	cl, bl
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_439:
	mov	rsp, rsp
	cmp	ebx, 0x7f
	lea	rsi, [rsi]
	ja	.label_442
	nop	
	cmp	ebx, eax
	mov	rsp, rsp
	je	.label_442
	or	byte ptr [r12 + 0xb0], 8
.label_442:
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, 0x40
	lea	rdi, [rdi]
	jne	.label_446
	nop	
	mov	qword ptr [rsp + 0xd0], r15
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_461:
	mov	rsp, rsp
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	mov	rsp, rsp
	call	btowc
	cmp	eax, -1
	je	.label_456
	lea	rdi, [rdi]
	mov	edx, 1
	mov	cl, bpl
	mov	rsp, rsp
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rbp, rbp
	or	qword ptr [rcx + 8], rdx
.label_456:
	lea	rsi, [rsi]
	cmp	r15d, eax
	mov	rbp, rbp
	je	.label_459
	or	byte ptr [r12 + 0xb0], 8
.label_459:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, 0x40
	jne	.label_461
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_475:
	mov	rsp, rsp
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_470
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rsp, rsp
	or	qword ptr [rcx + 0x10], rax
.label_470:
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, 0x40
	jne	.label_475
	nop	word ptr cs:[rax + rax]
.label_492:
	lea	rdi, [rdi]
	lea	edi, [rbp + 0xc0]
	mov	rsp, rsp
	call	btowc
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_484
	mov	eax, 1
	mov	cl, bpl
	nop	
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_484:
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, 0x40
	jne	.label_492
	jmp	.label_418
.label_428:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_418:
	cmp	qword ptr [r12], 0
	je	.label_434
	cmp	qword ptr [r12 + 0x40], 0
	nop	
	je	.label_434
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0xc8]
	and	ecx, 0x400000
	nop	
	mov	qword ptr [rsp + 0xc0], rcx
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0x20], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r14
	mov	qword ptr [rsp + 0x70], r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], rbx
	mov	rax, rcx
	nop	
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xa8], al
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rbp, rbp
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xab]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], edx
	lea	rsi, [rsi]
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xa9], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0xb0]
	lea	rsi, [rsi]
	mov	al, cl
	mov	rbp, rbp
	shr	al, 3
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rsp + 0xaa], al
	mov	qword ptr [rsp + 0x88], r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x80], r14
	mov	rsp, rsp
	xor	eax, eax
	test	r14, r14
	jle	.label_502
	mov	rsp, rsp
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_550
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	r15d, 0xc
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	movabs	rcx, 0x1fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	ja	.label_391
	lea	rsi, [rax*4]
	xor	edi, edi
	nop	
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_391
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xd0]
.label_550:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	test	bpl, bpl
	mov	rbp, rbp
	mov	edx, 0
	mov	rbp, rbp
	je	.label_400
	mov	qword ptr [rsp + 0xd0], r15
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	rsi, qword ptr [rsp + 0x18]
	call	realloc
	nop	
	mov	r15d, 0xc
	test	rax, rax
	je	.label_391
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	dl, bpl
	mov	r15, qword ptr [rsp + 0xd0]
.label_400:
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 0x60], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	lea	rdi, [rdi]
	mov	bpl, dl
	mov	rsp, rsp
	jmp	.label_528
.label_434:
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rsp, rsp
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	rsp, rsp
	mov	eax, 0xc
	mov	rbp, rbp
	jmp	.label_422
.label_502:
	mov	rsp, rsp
	shr	rcx, 0x20
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rdx
.label_528:
	test	bpl, bpl
	lea	rdi, [rdi]
	cmove	rax, r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	cmp	qword ptr [rsp + 0xc0], 0
	je	.label_431
	mov	rbp, rbp
	cmp	ecx, 2
	mov	rbp, rbp
	jl	.label_481
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsi]
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_391
	lea	r13, [rsp + 0x20]
.label_482:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r14
	jge	.label_444
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x50]
	cmp	rbp, rax
	lea	rdi, [rdi]
	jg	.label_444
	nop	
	lea	rbx, [rbp + rbp]
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0xb0], 2
	jl	.label_453
	mov	r15d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_391
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	lea	rsi, [rbp*8]
	nop	
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_391
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_453
	lea	rdi, [rdi]
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_391
	mov	qword ptr [rsp + 0x38], rax
.label_453:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xab], 0
	je	.label_471
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_391
	nop	
	mov	qword ptr [rsp + 0x28], rax
.label_471:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rbx
	mov	rsp, rsp
	mov	rdi, r13
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	je	.label_482
.label_391:
	mov	dword ptr [rsp + 0x14], r15d
	lea	rsi, [rsi]
	jmp	.label_415
.label_431:
	nop	
	cmp	ecx, 2
	lea	rsi, [rsi]
	jl	.label_488
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [rsp + 0x20]
	nop	
	call	build_wcs_buffer
	jmp	.label_444
.label_481:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	rax, r14
	cmovg	rax, r14
	nop	
	mov	r14, rax
	mov	rbp, rbp
	xor	eax, eax
	test	r14, r14
	mov	rsp, rsp
	jle	.label_498
	xor	eax, eax
	mov	ebp, 1
	mov	rbp, rbp
	jmp	.label_503
	nop	word ptr cs:[rax + rax]
.label_523:
	mov	r13, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x98]
	inc	rbp
.label_503:
	mov	rsp, rsp
	add	r13, rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp + r13 - 1]
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_510
.label_526:
	movzx	ebx, al
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	mov	rbp, rbp
	ja	.label_517
	call	__ctype_toupper_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_517:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r14
	mov	rbp, rbp
	jl	.label_523
	jmp	.label_524
.label_510:
	mov	al, byte ptr [rbx + rcx]
	jmp	.label_526
.label_488:
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_527
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r14
	cmovg	rcx, r14
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	test	rdi, rdi
	jle	.label_529
	movzx	ecx, byte ptr [r13]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbx + rcx]
	nop	
	mov	byte ptr [rax], cl
	mov	ecx, 1
	lea	rsi, [rsi]
	cmp	rdi, 2
	jl	.label_529
	nop	dword ptr [rax]
.label_437:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x28]
	add	rax, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	al, byte ptr [rsi + rax]
	nop	
	mov	byte ptr [rdx + rcx], al
	lea	rsi, [rsi]
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_437
	mov	rcx, rdi
.label_529:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	qword ptr [rsp + 0x50], rcx
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_444
.label_520:
	mov	esi, 0xe8
	mov	rdi, r12
	lea	rdi, [rdi]
	call	realloc
	mov	rbp, rbp
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_422
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_555
.label_524:
	mov	rbp, rbp
	mov	rax, r14
.label_498:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	nop	
	jmp	.label_386
.label_527:
	mov	qword ptr [rsp + 0xd0], r15
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
.label_386:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_444:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0
	nop	
	mov	r15, qword ptr [rsp + 0xd0]
	nop	
	mov	qword ptr [r15 + 0x30], 0
	mov	rbp, rbp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rsp, rsp
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rsp, rsp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0xe0]
	lea	r13, [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0x68], rax
	lea	r9, [rsp + 0x14]
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r15
	nop	
	mov	rdx, r14
	mov	rcx, rbp
	lea	rsi, [rsi]
	call	parse_reg_exp
	lea	rsi, [rsi]
	mov	r14, rax
	test	r14, r14
	jne	.label_425
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_426
.label_425:
	mov	rsp, rsp
	mov	ebp, dword ptr [rbx + 0x80]
	nop	
	cmp	ebp, 0xf
	je	.label_430
	mov	rax, qword ptr [rbx + 0x70]
.label_424:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rbp, rbp
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
.label_420:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	je	.label_445
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbx + 0x80]
	lea	rsi, [rsi]
	cmp	ecx, 0xf
	je	.label_449
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x70]
.label_450:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	mov	rbp, rbp
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x10], r14
	lea	rsi, [rsi]
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_447
	mov	qword ptr [rbp], rcx
.label_445:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_447
	nop	
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_447
	mov	qword ptr [r12 + 0x68], rcx
	mov	rsp, rsp
	mov	r15, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 8]
	nop	
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	nop	
	shl	rax, 3
	lea	rdi, [rdi]
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x30], rax
	nop	
	cmp	qword ptr [r15 + 0x18], 0
	lea	rsi, [rsi]
	je	.label_490
	nop	
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_494
	mov	rbp, rbp
	test	rax, rax
	je	.label_497
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	test	rax, rax
	je	.label_500
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_507
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_405
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rcx, qword ptr [rcx + 0x30]
	nop	
	cmp	rcx, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	cmova	rdx, rcx
	mov	rsp, rsp
	xor	edi, edi
	cmp	rdx, 4
	lea	rsi, [rsi]
	jb	.label_394
	xor	edi, edi
	mov	rsi, rdx
	lea	rsi, [rsi]
	and	rsi, 0xfffffffffffffffc
	je	.label_394
	lea	rsi, [rsi]
	cmp	rcx, 1
	mov	ebp, 1
	nop	
	cmova	rbp, rcx
	mov	rbp, rbp
	add	rbp, -4
	mov	rbx, rbp
	nop	
	shr	rbx, 2
	lea	rsi, [rsi]
	xor	edi, edi
	bt	rbp, 2
	jb	.label_505
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	movq	xmm0, rdi
	nop	
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_530]]
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	rsp, rsp
	mov	edi, 4
.label_505:
	test	rbx, rbx
	je	.label_537
	lea	rsi, [rsi]
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_530]]
.label_542:
	movq	xmm2, rdi
	mov	rsp, rsp
	pshufd	xmm2, xmm2, 0x44
	lea	rdi, [rdi]
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	paddq	xmm2, xmm1
	nop	
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	nop	
	lea	rbp, [rdi + 4]
	movq	xmm2, rbp
	mov	rbp, rbp
	pshufd	xmm2, xmm2, 0x44
	lea	rdi, [rdi]
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	mov	rbp, rbp
	add	rdi, 8
	cmp	rdi, rsi
	mov	rsp, rsp
	jne	.label_542
.label_537:
	cmp	rdx, rsi
	mov	rdi, rsi
	je	.label_405
	nop	word ptr cs:[rax + rax]
.label_394:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	mov	rsp, rsp
	cmp	rdi, rcx
	nop	
	jb	.label_394
.label_405:
	mov	rdx, qword ptr [r15 + 0x68]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rdx + 0x30]
	nop	
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	je	.label_398
	cmp	ecx, 4
	jne	.label_404
	movsxd	rcx, dword ptr [rdx + 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rdx + 0x28], rcx
	mov	esi, 1
	lea	rdi, [rdi]
	shl	esi, cl
	movsxd	rcx, esi
	or	qword ptr [r15 + 0xa0], rcx
	jmp	.label_404
.label_490:
	mov	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_415
.label_494:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_415
.label_507:
	mov	rsp, rsp
	lea	r14, [r15 + 0x68]
	jmp	.label_417
.label_430:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	xor	ebp, ebp
	test	rax, rax
	je	.label_420
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_424
.label_398:
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_404
	movzx	esi, byte ptr [rcx + 0x30]
	cmp	esi, 0x11
	jne	.label_404
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rdx + 8], rsi
	test	rsi, rsi
	je	.label_435
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rdx
.label_435:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rsi*8]
	nop	
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	jg	.label_404
	mov	rbp, rbp
	mov	rsi, -2
	lea	rsi, [rsi]
	rol	rsi, cl
	and	qword ptr [r15 + 0xa0], rsi
.label_404:
	lea	r14, [r15 + 0x68]
	mov	rbp, rbp
	jmp	.label_539
.label_449:
	mov	edi, 0x3c8
	nop	
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_447
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_450
.label_447:
	mov	dword ptr [rsp + 0x14], 0xc
.label_426:
	mov	qword ptr [r12 + 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_457
.label_497:
	mov	rsp, rsp
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_415
.label_500:
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_415
.label_411:
	mov	rsi, -2
	mov	rsp, rsp
	rol	rsi, cl
	and	qword ptr [r15 + 0xa0], rsi
.label_539:
	mov	rsi, rax
.label_487:
	test	rsi, rsi
	nop	
	jne	.label_468
.label_483:
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	nop	
	mov	ecx, 0
	jne	.label_469
	nop	
.label_478:
	nop	
	mov	rdi, rcx
	nop	
	mov	rcx, rsi
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	cmp	rdx, rdi
	mov	rsp, rsp
	je	.label_472
	test	rdx, rdx
	jne	.label_469
.label_472:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	mov	rsp, rsp
	jne	.label_478
	lea	rsi, [rsi]
	jmp	.label_479
.label_469:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + 0x30]
	cmp	ecx, 0x11
	nop	
	je	.label_480
	lea	rdi, [rdi]
	cmp	ecx, 4
	lea	rsi, [rsi]
	mov	esi, 0
	mov	rsp, rsp
	jne	.label_483
	mov	rbp, rbp
	jmp	.label_487
.label_480:
	nop	
	mov	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_483
	movzx	esi, byte ptr [rcx + 0x30]
	cmp	esi, 0x11
	lea	rdi, [rdi]
	jne	.label_483
	lea	rsi, [rdx + 8]
	lea	rdi, [rdx + 0x28]
	jmp	.label_495
.label_521:
	nop	
	movsxd	rcx, dword ptr [rdi]
	nop	
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rdi], rcx
	mov	edi, 1
	shl	edi, cl
	lea	rdi, [rdi]
	movsxd	rcx, edi
	or	qword ptr [r15 + 0xa0], rcx
.label_468:
	mov	rdi, rdx
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	ecx, 0
	jne	.label_504
	nop	dword ptr [rax]
.label_512:
	lea	rsi, [rsi]
	mov	rbp, rcx
	nop	
	mov	rcx, rdi
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	cmp	rdx, rbp
	lea	rdi, [rdi]
	je	.label_413
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_504
.label_413:
	mov	rdi, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rsp, rsp
	jne	.label_512
	nop	
	jmp	.label_479
.label_504:
	lea	rdi, [rdx + 0x28]
	movzx	ecx, byte ptr [rdx + 0x30]
	cmp	ecx, 0x11
	je	.label_516
	cmp	ecx, 4
	jne	.label_468
	jmp	.label_521
.label_516:
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_468
	mov	rsp, rsp
	movzx	ebp, byte ptr [rcx + 0x30]
	cmp	ebp, 0x11
	jne	.label_468
	lea	rdi, [rdi]
	lea	rsi, [rdx + 8]
.label_495:
	mov	rbp, rbp
	mov	rbp, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rsi], rbp
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_525
	mov	rbp, rbp
	mov	qword ptr [rbp], rdx
.label_525:
	mov	rsi, qword ptr [rdi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rsi*8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	mov	rsi, rax
	jg	.label_487
	jmp	.label_411
.label_479:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xd0]
	nop	
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_462
	mov	rax, qword ptr [r15 + 0xe0]
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_545:
	cmp	rdx, qword ptr [rax + rdx*8]
	lea	rsi, [rsi]
	jne	.label_462
	lea	rdi, [rdi]
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, rcx
	nop	
	jb	.label_545
.label_462:
	mov	rbp, rbp
	cmp	rdx, rcx
	nop	
	jne	.label_417
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
.label_417:
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_433:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	nop	
	jne	.label_433
	mov	rax, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, 0
	jne	.label_433
	jmp	.label_387
.label_429:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	rbp, rdx
.label_387:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xe0], 0
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_392
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rcx + 0x30]
	nop	
	cmp	eax, 0x11
	jne	.label_392
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x38]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	lower_subexp
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	je	.label_392
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax + rax]
.label_392:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_409
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x11
	jne	.label_409
	nop	
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x38]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	lower_subexp
	mov	qword ptr [rbp + 0x10], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_409
	mov	rbp, rbp
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax]
.label_409:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0xe0]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_403
	mov	rdx, qword ptr [rbp]
	test	rdx, rdx
	je	.label_427
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbp
	je	.label_429
	test	rax, rax
	je	.label_429
	jmp	.label_433
.label_427:
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	ebx, 0xfffc00ff
.label_438:
	mov	rbp, rbp
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_438
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_438
	nop	dword ptr [rax + rax]
.label_466:
	movzx	eax, byte ptr [rbp + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 0x10
	lea	rsi, [rsi]
	jne	.label_441
	mov	rax, qword ptr [rbp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_443
.label_441:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	re_dfa_add_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x38], rax
	mov	rsp, rsp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_455
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	jne	.label_443
	mov	ecx, dword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	nop	
	and	esi, ebx
	nop	
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_443:
	mov	rcx, qword ptr [rbp]
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_463
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	lea	rsi, [rsi]
	mov	rbp, rcx
	je	.label_466
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	mov	rbp, rcx
	mov	rbp, rbp
	je	.label_466
	mov	rbp, rbp
	jmp	.label_438
.label_463:
	nop	
	mov	rbx, qword ptr [r14]
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	mov	rsp, rsp
	je	.label_473
	mov	rbp, rbp
	cmp	eax, 0xb
	jne	.label_476
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rax + 0x20], rbx
	mov	rsp, rsp
	jmp	.label_477
.label_455:
	lea	rdi, [rdi]
	mov	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_415
.label_473:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_551
.label_476:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_489
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_489:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	nop	
	je	.label_477
.label_551:
	nop	
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_477:
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_499
.label_514:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdx + 0x18]
	nop	
	mov	qword ptr [rax + 0x20], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	nop	
	mov	rdx, rcx
.label_499:
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	test	rax, rax
	mov	rcx, rax
	nop	
	jne	.label_436
.label_511:
	mov	rax, rsi
	lea	rsi, [rsi]
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	rcx, rax
	je	.label_508
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	jne	.label_436
.label_508:
	mov	rdx, qword ptr [rsi]
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_511
	nop	
	jmp	.label_513
.label_436:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	lea	rdi, [rdi]
	je	.label_514
	lea	rsi, [rsi]
	cmp	eax, 0xb
	jne	.label_518
	mov	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rcx
	lea	rsi, [rsi]
	mov	rdx, rcx
	jmp	.label_499
.label_518:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_522
	mov	rdx, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], rdx
.label_522:
	mov	rsi, qword ptr [rcx + 0x10]
	nop	
	test	rsi, rsi
	mov	rdx, rcx
	nop	
	je	.label_499
	mov	rdx, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_499
.label_513:
	mov	rdi, r15
	nop	
	mov	rsi, rbx
	nop	
	call	link_nfa_nodes
	test	eax, eax
	jne	.label_403
.label_546:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	lea	rsi, [rsi]
	jne	.label_532
	nop	word ptr cs:[rax + rax]
.label_541:
	mov	rsp, rsp
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	lea	rdi, [rdi]
	je	.label_538
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_532
.label_538:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_541
	jmp	.label_544
.label_532:
	mov	rdi, r15
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	link_nfa_nodes
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	mov	rbx, rbp
	lea	rdi, [rdi]
	je	.label_546
	mov	rsp, rsp
	jmp	.label_403
.label_544:
	xor	eax, eax
	lea	r14, [rsp + 0xe0]
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_549
	nop	
.label_388:
	inc	rbp
	nop	
	mov	rax, rbp
.label_549:
	nop	
	cmp	rax, qword ptr [r15 + 0x10]
	jne	.label_553
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r13b, 1
	mov	rsp, rsp
	mov	r13d, 0
	mov	rbp, rbp
	jne	.label_554
	nop	
	jmp	.label_385
.label_553:
	lea	rdi, [rdi]
	mov	rbp, rax
.label_554:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	lea	rbx, [rbp + rbp*2]
	mov	rsp, rsp
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_388
	mov	ecx, 1
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_403
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsp, rsp
	jne	.label_388
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	mov	r13b, 1
	jmp	.label_388
.label_403:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
.label_415:
	mov	r15, qword ptr [rsp + 0xd0]
.label_457:
	mov	rbx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_412
	nop	dword ptr [rax]
.label_540:
	mov	rbp, qword ptr [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rdi, rbp
	nop	
	jne	.label_540
.label_412:
	nop	
	mov	qword ptr [rbx + 0x70], 0
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], 0
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	free
	cmp	byte ptr [rsp + 0xab], 0
	je	.label_432
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	call	free
.label_432:
	mov	rdi, r12
	call	free_dfa_content
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_464:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x14]
.label_422:
	mov	rbp, rbp
	add	rsp, 0xf8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_385:
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_448
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x30], 0
	je	.label_448
	mov	rbp, rbp
	test	byte ptr [r15 + 0xb0], 1
	jne	.label_451
.label_448:
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_454
.label_451:
	mov	rsp, rsp
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x38], rax
	test	rax, rax
	je	.label_458
	cmp	qword ptr [r15 + 0x10], 0
	nop	
	je	.label_454
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	rbp, rbp
	mov	edx, 0x18
	cmp	rax, 1
	jbe	.label_460
.label_467:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	add	rdx, 0x18
	cmp	rcx, rax
	lea	rsi, [rsi]
	jb	.label_467
.label_460:
	mov	rbp, rbp
	test	rax, rax
	je	.label_454
	mov	r8, qword ptr [r15 + 0x30]
	xor	r10d, r10d
.label_493:
	mov	qword ptr [rsp + 0xc8], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	cmp	qword ptr [r8 + r9*8 + 8], 0
	jle	.label_419
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdi
	xor	ebx, ebx
.label_515:
	mov	rbp, rbp
	mov	r13, qword ptr [r15 + 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + rbp*8]
	nop	
	lea	r14, [r13 + rbp*8 + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	nop	
	cmp	rax, rdx
	jne	.label_486
	lea	rcx, [r13 + rbp*8]
	lea	rsi, [rsi]
	lea	rdx, [rax + rax + 2]
	mov	rbp, rbp
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_396
	nop	
	lea	rcx, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14]
	nop	
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_506
.label_486:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_506:
	lea	rdi, [rdi]
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	nop	
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_515
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x10]
.label_419:
	inc	r10
	lea	rsi, [rsi]
	cmp	r10, rax
	jb	.label_493
.label_454:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0
	cmp	qword ptr [rsp + 0xc0], 0
	jne	.label_393
	mov	al, byte ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 4
	nop	
	je	.label_393
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x28], 0
	mov	rbp, rbp
	jne	.label_393
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_533
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	mov	rbp, rbp
	movabs	r8, 0x1000000010001
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rsi, [rsi]
	xor	r10d, r10d
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_397:
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	mov	rsp, rsp
	cmp	esi, 0xb
	lea	rsi, [rsi]
	ja	.label_543
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_547]]
.label_2454:
	lea	rsi, [rsi]
	mov	sil, 1
	cmp	byte ptr [rcx], 0
	lea	rdi, [rdi]
	js	.label_548
	lea	rdi, [rdi]
	mov	sil, r10b
.label_548:
	lea	rsi, [rsi]
	mov	r10b, sil
	jmp	.label_389
.label_2455:
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_393
	nop	
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_389
	jmp	.label_393
.label_2456:
	mov	rsp, rsp
	mov	r9b, 1
	mov	rsp, rsp
	jmp	.label_389
.label_2457:
	mov	esi, dword ptr [rcx]
	mov	rsp, rsp
	lea	edi, [rsi - 0x10]
	cmp	edi, 0x30
	lea	rsi, [rsi]
	ja	.label_384
	lea	rsi, [rsi]
	bt	r8, rdi
	mov	rsp, rsp
	jb	.label_389
.label_384:
	cmp	esi, 0x80
	lea	rdi, [rdi]
	jne	.label_393
.label_389:
	inc	rbp
	nop	
	add	rcx, 0x10
	cmp	rbp, rdx
	mov	rsp, rsp
	jb	.label_397
	lea	rdi, [rdi]
	mov	cl, r9b
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	or	r10b, r9b
	lea	rsi, [rsi]
	xor	edx, edx
	mov	esi, 8
	lea	rdi, [rdi]
	test	r10b, 1
	je	.label_402
	jmp	.label_407
.label_410:
	mov	rbp, rbp
	add	rsi, 0x10
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12]
.label_407:
	nop	
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	cmp	edi, 5
	je	.label_509
	cmp	edi, 1
	lea	rdi, [rdi]
	jne	.label_414
	nop	
	cmp	byte ptr [rbx + rsi - 8], 0
	jns	.label_414
	nop	
	and	eax, 0xffdfffff
	lea	rdi, [rdi]
	jmp	.label_416
.label_509:
	and	eax, 0xffffff00
	mov	rsp, rsp
	or	eax, 7
.label_416:
	mov	dword ptr [rbx + rsi], eax
.label_414:
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_410
	mov	rbp, rbp
	mov	al, byte ptr [r12 + 0xb0]
	lea	rsi, [rsi]
	jmp	.label_402
.label_396:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_415
.label_533:
	xor	ecx, ecx
.label_402:
	mov	dword ptr [r12 + 0xb4], 1
	cmp	qword ptr [r12 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	mov	rsp, rsp
	and	al, 0xf9
	or	al, dl
	mov	rbp, rbp
	mov	byte ptr [r12 + 0xb0], al
.label_393:
	nop	
	mov	rax, qword ptr [r12 + 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x90], rax
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe8], r15
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + r13*8 + 8]
	test	r14, r14
	jle	.label_536
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], r15
	mov	rsp, rsp
	lea	rdi, [r15*8]
	call	malloc
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	qword ptr [rsp + 0xf0], rbp
	nop	
	test	rbp, rbp
	je	.label_452
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	lea	rsi, [rsi]
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0xdc], 0
	test	r15, r15
	lea	rsi, [rsi]
	jle	.label_395
	mov	rax, qword ptr [r12 + 0x98]
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_395
	lea	rsi, [rsi]
	xor	eax, eax
	lea	r14, [rsp + 0xe0]
	jmp	.label_465
.label_519:
	mov	rbp, qword ptr [rsp + 0xf0]
.label_465:
	mov	r8, qword ptr [rbp + rax*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12]
	mov	rsp, rsp
	mov	rsi, r8
	shl	rsi, 4
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	mov	rbp, rbp
	jne	.label_421
	test	r15, r15
	nop	
	mov	edi, 0
	nop	
	jle	.label_474
	add	rsi, rdx
	xor	edi, edi
.label_485:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	mov	rsp, rsp
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	mov	rbp, rbp
	jne	.label_390
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx]
	nop	
	cmp	rcx, qword ptr [rsi]
	mov	rbp, rbp
	je	.label_474
.label_390:
	inc	rdi
	mov	rsp, rsp
	cmp	rdi, r15
	jl	.label_485
.label_474:
	cmp	rdi, r15
	nop	
	je	.label_421
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	test	r15, r15
	jle	.label_491
	mov	rsp, rsp
	mov	rsi, r15
	dec	rsi
	mov	edx, 0
	nop	
	je	.label_496
.label_501:
	lea	rdi, [rdx + rsi]
	mov	rbp, rbp
	shr	rdi, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	mov	rbp, rbp
	cmovl	rdx, rbx
	lea	rsi, [rsi]
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_501
.label_496:
	cmp	rdx, -1
	mov	rbp, rbp
	je	.label_491
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + rdx*8], rcx
	nop	
	je	.label_421
.label_491:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rsi]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	re_node_set_merge
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_440
	nop	
	mov	r15, qword ptr [rsp + 0xe8]
	xor	eax, eax
.label_421:
	inc	rax
	cmp	rax, r15
	jl	.label_519
	mov	rsp, rsp
	jmp	.label_395
.label_536:
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xdc], 0
.label_395:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xdc]
	lea	rdx, [rsp + 0xe0]
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	nop	
	test	rax, rax
	je	.label_531
	cmp	byte ptr [rax + 0x68], 0
	lea	rsi, [rsi]
	js	.label_534
	nop	
	mov	qword ptr [r12 + 0x60], rax
	nop	
	mov	qword ptr [r12 + 0x58], rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_535
.label_534:
	lea	rbx, [rsp + 0xdc]
	lea	rbp, [rsp + 0xe0]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	nop	
	mov	rdi, rbx
	mov	rsi, r12
	nop	
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x58], rax
	mov	rsp, rsp
	mov	ecx, 6
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbp
	nop	
	call	re_acquire_state_context
	nop	
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	lea	rdi, [rdi]
	je	.label_406
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_406
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	mov	rsp, rsp
	je	.label_406
.label_535:
	mov	rdi, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
.label_440:
	mov	dword ptr [rsp + 0x14], eax
	mov	r14, qword ptr [rsp + 0xd0]
	mov	rbx, qword ptr [r14]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_401
.label_408:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	jne	.label_408
.label_401:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	nop	
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x30]
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xab], 0
	lea	rdi, [rdi]
	je	.label_423
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	call	free
.label_423:
	mov	rbp, rbp
	xor	eax, eax
	cmp	dword ptr [rsp + 0x14], 0
	nop	
	je	.label_422
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free_dfa_content
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	lea	rdi, [rdi]
	jmp	.label_464
.label_406:
	mov	eax, dword ptr [rsp + 0xdc]
	jmp	.label_440
.label_458:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_415
.label_531:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xdc]
	mov	rbp, rbp
	jmp	.label_440
.label_452:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xdc], 0xc
	mov	eax, 0xc
	jmp	.label_440
.label_543:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409170
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409190
	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:

	nop
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0xf0], xmm0
	nop	
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x50]
	lea	rdi, [rdi]
	cmp	rax, rsi
	je	.label_556
	nop	
	mov	rdi, r14
	mov	rdx, rbx
	nop	
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_556:
	nop	
	mov	rsi, qword ptr [r15 + 0x58]
	nop	
	cmp	rax, rsi
	mov	rbp, rbp
	je	.label_557
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_557:
	nop	
	mov	rsi, qword ptr [r15 + 0x60]
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_558
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	re_compile_fastmap_iter
.label_558:
	or	byte ptr [r14 + 0x38], 8
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4092a0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x138
	lea	rdi, [rdi]
	mov	r15, rdx
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jne	.label_596
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	al, byte ptr [r13 + 0x1a]
	lea	rdi, [rdi]
	and	al, 0x40
	lea	rsi, [rsi]
	shr	al, 6
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x130], eax
	nop	
	jmp	.label_609
.label_596:
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x130], 0
.label_609:
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x10], 0
	nop	
	jle	.label_564
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsp, rsp
	lea	r14, [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_566:
	mov	rax, qword ptr [rsi + 0x18]
	nop	
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	r12, rbp
	shl	r12, 4
	mov	rsp, rsp
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	cmp	ebx, 1
	lea	rdi, [rdi]
	je	.label_573
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rdx
	mov	rsp, rsp
	cmp	ebx, 6
	mov	rbp, rbp
	je	.label_593
	mov	rsp, rsp
	cmp	ebx, 3
	mov	rsp, rsp
	jne	.label_592
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax]
	mov	eax, dword ptr [rsp + 0x130]
	lea	rdi, [rdi]
	test	al, al
	mov	ebx, 0
	mov	eax, 0
	mov	rbp, rbp
	je	.label_594
	nop	word ptr cs:[rax + rax]
.label_562:
	bt	rbp, rbx
	jae	.label_604
	mov	byte ptr [r15 + rbx], 1
	lea	eax, [rbx + 0x80]
	lea	rsi, [rsi]
	cmp	eax, 0x180
	mov	rbp, rbp
	jae	.label_607
	nop	
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_602
	nop	
.label_607:
	mov	eax, ebx
.label_602:
	mov	rbp, rbp
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_604:
	inc	rbx
	cmp	rbx, 0x40
	lea	rdi, [rdi]
	jne	.label_562
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 8]
	xor	ebp, ebp
.label_588:
	bt	rbx, rbp
	nop	
	jae	.label_570
	mov	byte ptr [r15 + rbp + 0x40], 1
	mov	rbp, rbp
	lea	eax, [rbp + 0xc0]
	cmp	eax, 0x180
	jae	.label_571
	mov	rbp, rbp
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbp*4 + 0x100]
	jmp	.label_579
	nop	word ptr cs:[rax + rax]
.label_571:
	lea	rax, [rbp + 0x40]
.label_579:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_570:
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 0x40
	nop	
	jne	.label_588
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_561:
	lea	rdi, [rdi]
	bt	rbx, rbp
	lea	rdi, [rdi]
	jae	.label_567
	mov	rsp, rsp
	mov	byte ptr [r15 + rbp + 0x80], 1
	lea	eax, [rbp + 0x100]
	mov	rsp, rsp
	cmp	eax, 0x180
	jae	.label_603
	lea	rsi, [rsi]
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x200]
	jmp	.label_608
	nop	dword ptr [rax]
.label_603:
	lea	rax, [rbp + 0x80]
.label_608:
	mov	rbp, rbp
	cdqe	
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_567:
	nop	
	inc	rbp
	cmp	rbp, 0x40
	nop	
	jne	.label_561
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 0x18]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_589:
	mov	rbp, rbp
	bt	rbx, rbp
	jae	.label_576
	mov	rsp, rsp
	mov	byte ptr [r15 + rbp + 0xc0], 1
	lea	rdi, [rdi]
	lea	eax, [rbp + 0x140]
	cmp	eax, 0x180
	lea	rdi, [rdi]
	jae	.label_580
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x300]
	jmp	.label_582
	nop	word ptr [rax + rax]
.label_580:
	lea	rsi, [rsi]
	lea	rax, [rbp + 0xc0]
.label_582:
	lea	rdi, [rdi]
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_576:
	lea	rdi, [rdi]
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, 0x40
	mov	rsp, rsp
	jne	.label_589
	jmp	.label_559
	nop	dword ptr [rax + rax]
.label_594:
	bt	rbp, rax
	jae	.label_584
	mov	byte ptr [r15 + rax], 1
.label_584:
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	bt	rbp, rcx
	lea	rsi, [rsi]
	jae	.label_599
	mov	rbp, rbp
	mov	byte ptr [r15 + rax + 1], 1
.label_599:
	mov	rbp, rbp
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, 0x40
	nop	
	mov	rax, rcx
	jne	.label_594
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	nop	
	mov	rax, qword ptr [rax + 8]
	xor	ecx, ecx
	nop	
.label_563:
	nop	
	bt	rax, rcx
	jae	.label_610
	mov	rsp, rsp
	mov	byte ptr [r15 + rcx + 0x40], 1
.label_610:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	mov	rsp, rsp
	jae	.label_560
	mov	rsp, rsp
	mov	byte ptr [r15 + rcx + 0x41], 1
.label_560:
	mov	rbp, rbp
	add	rcx, 2
	cmp	rcx, 0x40
	mov	rsp, rsp
	jne	.label_563
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_583:
	bt	rax, rcx
	lea	rsi, [rsi]
	jae	.label_572
	mov	byte ptr [r15 + rcx + 0x80], 1
.label_572:
	nop	
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_578
	mov	byte ptr [r15 + rcx + 0x81], 1
.label_578:
	add	rcx, 2
	cmp	rcx, 0x40
	mov	rsp, rsp
	jne	.label_583
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r12]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_611:
	bt	rax, rcx
	mov	rbp, rbp
	jae	.label_587
	mov	rbp, rbp
	mov	byte ptr [r15 + rcx + 0xc0], 1
.label_587:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	bt	rax, rdx
	mov	rsp, rsp
	jae	.label_601
	mov	byte ptr [r15 + rcx + 0xc1], 1
.label_601:
	lea	rsi, [rsi]
	add	rcx, 2
	lea	rdi, [rdi]
	cmp	rcx, 0x40
	lea	rdi, [rdi]
	jne	.label_611
	lea	rdi, [rdi]
	jmp	.label_559
	nop	dword ptr [rax + rax]
.label_593:
	mov	r12, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_568
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_574
	lea	rsi, [rsi]
	test	byte ptr [r12 + 0x20], 1
	nop	
	jne	.label_574
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x40], 0
	nop	
	je	.label_568
.label_574:
	mov	rbp, rbp
	mov	byte ptr [rsp + 8], 0
	lea	rdi, [rdi]
	lea	rbp, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_590:
	mov	qword ptr [rsp + 0x30], 0
	nop	
	xor	edi, edi
	mov	edx, 1
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rsp + 8]
	lea	rdi, [rdi]
	cmp	rax, -2
	jne	.label_585
	mov	byte ptr [r15 + rcx], 1
.label_585:
	mov	rbp, rbp
	inc	cl
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 8], cl
	mov	rsp, rsp
	jne	.label_590
	mov	rbp, rbp
	jmp	.label_559
	nop	word ptr cs:[rax + rax]
.label_573:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	nop	
	movzx	ebx, byte ptr [rcx]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, dword ptr [rsp + 0x130]
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_600
	mov	rsp, rsp
	lea	eax, [rbx + 0x80]
	nop	
	cmp	eax, 0x17f
	ja	.label_606
	lea	rdi, [rdi]
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax + rbx*4]
.label_606:
	nop	
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_600:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_559
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_559
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rcx]
	nop	
	mov	al, byte ptr [rax + r12]
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x30], al
	mov	rdx, rcx
	mov	rbp, rbp
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	mov	rbp, rbp
	jae	.label_565
	mov	rsp, rsp
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	dword ptr [rax]
.label_586:
	mov	rax, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + r12]
	mov	rbp, rbp
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_565
	mov	rbp, rbp
	mov	al, byte ptr [rax + r12 - 8]
	lea	rdi, [rdi]
	mov	byte ptr [r13], al
	lea	rdi, [rdi]
	inc	r13
	nop	
	inc	rbp
	nop	
	add	r12, 0x10
	mov	rsp, rsp
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_586
.label_565:
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], 0
	mov	rsp, rsp
	sub	r13, r14
	lea	rdi, [rsp + 0x134]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rdx, r13
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_605
	mov	edi, dword ptr [rsp + 0x134]
	call	towlower
	mov	rdi, r14
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_605
	nop	
	movzx	eax, byte ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rax], 1
.label_605:
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x28]
	nop	
	jmp	.label_559
	nop	dword ptr [rax]
.label_592:
	cmp	ebx, 2
	je	.label_575
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_559
	mov	rbp, rbp
	jmp	.label_575
.label_568:
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 0x28], 0
	mov	rbp, rbp
	jle	.label_559
	mov	eax, dword ptr [rsp + 0x130]
	test	al, al
	lea	rsi, [rsi]
	mov	ebp, 0
	lea	rdi, [rdi]
	mov	ebx, 0
	mov	rsp, rsp
	je	.label_577
	nop	word ptr cs:[rax + rax]
.label_581:
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_597
	mov	rsp, rsp
	movzx	ebx, byte ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_598
	mov	rsp, rsp
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ebx, dword ptr [rax + rbx*4]
.label_598:
	lea	rdi, [rdi]
	movsxd	rax, ebx
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_597:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_569
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_569
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rbp, rbp
	call	towlower
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	esi, eax
	lea	rdx, [rsp + 8]
	mov	rsp, rsp
	call	wcrtomb
	mov	rsp, rsp
	cmp	rax, -1
	je	.label_569
	nop	
	movzx	eax, byte ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_569:
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	jl	.label_581
	mov	rbp, rbp
	jmp	.label_559
	nop	dword ptr [rax]
.label_577:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbx*4]
	mov	rdi, r14
	lea	rdi, [rdi]
	lea	rbp, [rsp + 8]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	wcrtomb
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_591
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_591:
	mov	rbp, rbp
	test	byte ptr [r13 + 0x1a], 0x40
	lea	rsi, [rsi]
	je	.label_595
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax + 0xb4], 2
	mov	rsp, rsp
	jl	.label_595
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + rbx*4]
	lea	rsi, [rsi]
	call	towlower
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	call	wcrtomb
	cmp	rax, -1
	je	.label_595
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax + rax]
.label_595:
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	jl	.label_577
	nop	word ptr cs:[rax + rax]
.label_559:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_566
.label_564:
	nop	
	add	rsp, 0x138
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_575:
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, 0x100
	mov	rdi, r15
	call	memset
	lea	rsi, [rsi]
	cmp	ebx, 2
	mov	rbp, rbp
	jne	.label_564
	lea	rsi, [rsi]
	or	byte ptr [r13 + 0x38], 1
	lea	rsi, [rsi]
	jmp	.label_564
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b90
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, edx
	nop	
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], rax
	lea	rdi, [rdi]
	mov	ebx, 0xc
	test	rax, rax
	mov	rbp, rbp
	je	.label_612
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	mov	rbp, rbp
	cmovne	rcx, rax
	mov	ebx, ebp
	lea	rsi, [rsi]
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_616
	lea	r12, [r15 + 0x38]
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0x38]
	lea	rdi, [rdi]
	and	al, 0x7f
	jmp	.label_618
.label_616:
	and	ebx, 0x143b2be
	nop	
	or	rbx, 0x100
	lea	r12, [r15 + 0x38]
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_618:
	nop	
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
	nop	
	and	bpl, 0x10
	and	al, 0xef
	lea	rdi, [rdi]
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x28], 0
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	lea	rdi, [rdi]
	cmp	eax, 0x10
	mov	ebx, 8
	nop	
	cmovne	ebx, eax
	nop	
	test	ebx, ebx
	mov	rsp, rsp
	jne	.label_615
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 0x20]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0xf0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0x80], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbp + 0x70], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0x60], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x50]
	nop	
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_617
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_617:
	nop	
	mov	rsi, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	rax, rsi
	mov	rsp, rsp
	je	.label_613
	mov	rdi, r15
	mov	rdx, rbp
	nop	
	call	re_compile_fastmap_iter
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x48]
.label_613:
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	je	.label_614
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_614:
	or	byte ptr [r12], 8
	xor	ebx, ebx
.label_612:
	lea	rdi, [rdi]
	mov	eax, ebx
	mov	rsp, rsp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_615:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_612
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409dc0
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_619
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_621
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rsp, rsp
	mov	rdx, rbx
	ja	.label_620
.label_622:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	call	memcpy
.label_621:
	mov	rax, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
.label_620:
	mov	rsp, rsp
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	jmp	.label_622
.label_619:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x409e70
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_623
	call	free_dfa_content
.label_623:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ed0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_635
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_635
	mov	ebp, 0x400ff
	jmp	.label_628
	nop	word ptr cs:[rax + rax]
.label_629:
	mov	rbp, rbp
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_628:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	lea	rsi, [rsi]
	je	.label_631
	nop	
	cmp	ecx, 6
	jne	.label_632
	nop	
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	mov	rdi, r15
	mov	rsp, rsp
	jmp	.label_624
	nop	dword ptr [rax]
.label_631:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_624:
	lea	rsi, [rsi]
	call	free
.label_632:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_629
.label_635:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	nop	
	je	.label_630
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	nop	
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	dword ptr [rax + rax]
.label_640:
	mov	rax, qword ptr [r12]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_633
	mov	rdi, qword ptr [rax + rbx]
	mov	rsp, rsp
	call	free
.label_633:
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_637
	mov	rdi, qword ptr [rax + rbx]
	lea	rsi, [rsi]
	call	free
.label_637:
	mov	rax, qword ptr [r13]
	nop	
	test	rax, rax
	je	.label_636
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_636:
	mov	rsp, rsp
	inc	rbp
	add	rbx, 0x18
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	jb	.label_640
	lea	rdi, [rdi]
	jmp	.label_626
.label_630:
	mov	rsp, rsp
	lea	r13, [r14 + 0x28]
	mov	rbp, rbp
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_626:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_639
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_641
	nop	word ptr cs:[rax + rax]
.label_638:
	mov	rdi, qword ptr [r14 + 0x40]
.label_641:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*2]
	nop	
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	mov	rsp, rsp
	jle	.label_627
	lea	rbx, [rdi + rax*8]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_634:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	nop	
	cmp	rbp, qword ptr [rbx]
	nop	
	jl	.label_634
.label_627:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_638
	mov	rdi, qword ptr [r14 + 0x40]
.label_639:
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	lea	rsi, [rsi]
	cmp	rdi, rax
	nop	
	je	.label_625
	call	free
.label_625:
	nop	
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a150
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	eax, 2
	mov	rbp, rbp
	cmp	ebp, 7
	nop	
	ja	.label_642
	test	bpl, 4
	nop	
	jne	.label_646
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_643
.label_646:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_643:
	test	byte ptr [rbx + 0x38], 0x10
	nop	
	jne	.label_644
	mov	dword ptr [rsp + 0x10], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	lea	rsi, [rsi]
	jmp	.label_645
.label_644:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp], 0
.label_645:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r8, rdx
	lea	rdi, [rdi]
	mov	r9, rdx
	call	re_search_internal
	mov	rbp, rbp
	test	eax, eax
	setne	al
	movzx	eax, al
.label_642:
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a230

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x268
	mov	r15, rcx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x2a0]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x230], xmm0
	movaps	xmmword ptr [rsp + 0x220], xmm0
	movaps	xmmword ptr [rsp + 0x210], xmm0
	movaps	xmmword ptr [rsp + 0x200], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x1f0], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x1e0], xmm0
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
	movaps	xmmword ptr [rsp + 0x1c0], xmm0
	movaps	xmmword ptr [rsp + 0x1b0], xmm0
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x190], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x180], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x140], xmm0
	mov	qword ptr [rsp + 0x1d8], r11
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x20]
	xor	ebp, ebp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_767
	lea	rsi, [rsi]
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	movzx	ecx, cl
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	ecx, 8
	nop	
	cmovne	rax, rbx
	nop	
	cmp	r15, r8
	mov	rsp, rsp
	cmove	rax, rbx
	mov	rbp, rax
.label_767:
	nop	
	mov	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	lea	r14, [r13 - 1]
	mov	rcx, r14
	nop	
	sub	rcx, rax
	mov	rsp, rsp
	xor	ebx, ebx
	cmp	rax, r13
	mov	rsp, rsp
	cmovb	rbx, rcx
	lea	rsi, [rsi]
	mov	r12d, 1
	cmp	qword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	je	.label_649
	mov	rax, qword ptr [r11 + 0x48]
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_649
	mov	rsp, rsp
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_649
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rbp
	lea	rsi, [rsi]
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	nop	
	je	.label_649
	cmp	qword ptr [r11 + 0x60], 0
	nop	
	je	.label_649
	mov	rbp, rbp
	mov	rbp, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x108], rbp
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_838
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	jne	.label_838
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_843
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 0x38], 0
	mov	rsp, rsp
	js	.label_838
.label_843:
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	test	r15, r15
	mov	r10, rsi
	lea	rdi, [rdi]
	je	.label_846
	lea	rdi, [rdi]
	test	r8, r8
	mov	rbp, rbp
	mov	r15d, 0
	lea	rdi, [rdi]
	jne	.label_649
	jmp	.label_656
.label_838:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r8
	mov	r10, rsi
.label_656:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], r14
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x3f], 1
	mov	rsp, rsp
	cmp	rbx, r13
	mov	qword ptr [rsp + 0x98], rbx
	lea	rdi, [rdi]
	jne	.label_660
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + 0x98], 0
	mov	rbp, rbp
	setne	byte ptr [rsp + 0x3f]
.label_660:
	mov	r13, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	inc	r13
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	mov	rsp, rsp
	cmp	rax, r13
	lea	rdi, [rdi]
	cmovge	r13, rax
	mov	rsp, rsp
	lea	rsi, [rdx + 1]
	cmp	rsi, r13
	cmovle	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x140], r10
	mov	qword ptr [rsp + 0x198], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x190], rdx
	mov	qword ptr [rsp + 0x108], rbp
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rdi, [rdi]
	shr	rcx, 0x16
	lea	rsi, [rsi]
	and	cl, 1
	mov	byte ptr [rsp + 0x1c8], cl
	lea	rsi, [rsi]
	test	rbp, rbp
	setne	bl
	or	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x1cb], bl
	mov	dword ptr [rsp + 0x1d0], eax
	mov	cl, byte ptr [r11 + 0xb0]
	lea	rdi, [rdi]
	shr	cl, 2
	mov	rbp, rbp
	and	cl, 1
	nop	
	mov	byte ptr [rsp + 0x1c9], cl
	mov	rbp, rbp
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	byte ptr [rsp + 0x1ca], cl
	mov	qword ptr [rsp + 0x1a8], rdx
	nop	
	mov	qword ptr [rsp + 0x1a0], rdx
	nop	
	jl	.label_673
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x260], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	rsp, rsp
	mov	r12d, 0xc
	cmp	r13, rax
	lea	rsi, [rsi]
	ja	.label_654
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x118], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x130], rdx
	mov	r14, rdi
	lea	rsi, [r13*4]
	xor	edi, edi
	mov	rbp, rbp
	call	realloc
	nop	
	test	rax, rax
	je	.label_654
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x150], rax
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x260]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x130]
	mov	r10, qword ptr [rsp + 0x118]
.label_673:
	mov	qword ptr [rsp + 0x130], rdx
	mov	al, 1
	lea	rsi, [rsi]
	test	bl, bl
	je	.label_754
	mov	r14, r10
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x260], r11
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, r13
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	mov	r12d, 0xc
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_654
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x260]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	r10, r14
.label_754:
	mov	qword ptr [rsp + 0x180], r13
	lea	rcx, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x1c0], rcx
	mov	rcx, qword ptr [r11 + 0xb0]
	mov	dl, cl
	shr	dl, 4
	and	dl, 1
	mov	byte ptr [rsp + 0x1ce], dl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_772
	shr	rcx, 0x20
	mov	qword ptr [rsp + 0x148], r10
	xor	edx, edx
	mov	rsp, rsp
	cmp	ecx, 1
	mov	rbp, rbp
	cmovle	rdx, qword ptr [rsp + 0x130]
.label_772:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x118], r10
	nop	
	mov	qword ptr [rsp + 0x170], rdx
	mov	qword ptr [rsp + 0x178], rdx
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x1a8], rax
	mov	qword ptr [rsp + 0x1a0], rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	mov	qword ptr [rsp + 0xe8], rdi
	shr	al, 7
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x1cd], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0x260], r11
	lea	r14, [rbx + rbx]
	mov	eax, dword ptr [rsp + 0x2b0]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1e0], eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], -1
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_792
	mov	r12d, 0xc
	mov	rbp, rbp
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_654
	lea	rsi, [rsi]
	shl	rbx, 4
	lea	rdi, [rdi]
	lea	rdi, [rbx + rbx*4]
	lea	rdi, [rdi]
	call	malloc
	mov	rsp, rsp
	mov	rbp, rax
	nop	
	mov	qword ptr [rsp + 0x218], rbp
	mov	rdi, rbx
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x238], rax
	mov	rbp, rbp
	test	rbp, rbp
	nop	
	je	.label_654
	test	rax, rax
	mov	rbp, rbp
	je	.label_654
.label_792:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x2a0]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x248], rax
	mov	qword ptr [rsp + 0x210], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x220], 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x230], r14
	nop	
	cmp	rax, 1
	mov	rax, qword ptr [rsp + 0x260]
	ja	.label_835
	mov	rbx, qword ptr [rax + 0xb0]
	lea	rsi, [rsi]
	test	bl, 2
	jne	.label_835
	shr	rbx, 0x20
	mov	qword ptr [rsp + 0x1f8], 0
	lea	rdi, [rdi]
	jmp	.label_847
.label_835:
	mov	r12d, 0xc
	lea	rsi, [rsi]
	movabs	rax, 0x1ffffffffffffffe
	cmp	r13, rax
	ja	.label_654
	lea	rdi, [r13*8 + 8]
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rsp + 0x1f8], rax
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_654
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x260]
	mov	ebx, dword ptr [rax + 0xb4]
.label_847:
	nop	
	mov	qword ptr [rsp + 0x250], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x260], rax
	mov	qword ptr [rsp + 0xa8], r15
	mov	eax, dword ptr [rsp + 0x2b0]
	lea	eax, [rax + rax]
	lea	rsi, [rsi]
	and	eax, 2
	lea	rdi, [rdi]
	xor	eax, 6
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1b0], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	rsi, r15
	mov	rsp, rsp
	mov	r13, r15
	cmovle	r13, rsi
	mov	rbp, rsi
	cmovl	rbp, r15
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x138], rbp
	mov	rbp, rbp
	mov	ecx, 8
	mov	r14, qword ptr [rsp + 0x128]
	test	r14, r14
	mov	rdi, qword ptr [rsp + 0x108]
	nop	
	je	.label_670
	cmp	ebx, 1
	nop	
	je	.label_700
	mov	ecx, 0x400000
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	jne	.label_704
	mov	rdx, qword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_704
.label_700:
	lea	rsi, [rsi]
	mov	r8d, 4
.label_704:
	test	rdi, rdi
	setne	cl
	cmp	r15, rsi
	lea	rdi, [rdi]
	setle	dl
	lea	rdi, [rdi]
	movzx	ecx, cl
	nop	
	movzx	edx, dl
	lea	ecx, [rcx + rdx*2]
	lea	rdi, [rdi]
	or	ecx, r8d
.label_670:
	mov	qword ptr [rsp + 0x250], rbx
	mov	rbp, rbp
	mov	rbx, rdi
	xor	eax, eax
	cmp	r15, rsi
	setle	byte ptr [rsp + 0x247]
	lea	rdx, [rsp + 0xa8]
	cmovg	rdx, rax
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x110], rax
	lea	rsi, [rsi]
	cmp	rsi, r15
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	rdx, -1
	cmovge	rdx, rax
	mov	qword ptr [rsp + 0x40], rdx
	add	ecx, -4
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rcx
	mov	rsp, rsp
	jmp	.label_669
.label_662:
	mov	rax, qword ptr [rsp + 0x250]
	cmp	eax, 1
	je	.label_746
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x170]
	test	rax, rax
	je	.label_746
	mov	rax, qword ptr [rsp + 0x150]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], -1
	lea	rdi, [rdi]
	je	.label_749
.label_746:
	nop	
	mov	dword ptr [rsp + 0x220], 0
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x200]
	nop	
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x1d8]
	mov	rdi, qword ptr [rsp + 0x188]
	mov	dword ptr [rsp + 0xf4], 0
	mov	r15, qword ptr [r12 + 0x48]
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x68], 0
	lea	rsi, [rsi]
	js	.label_755
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x250]
	jmp	.label_647
.label_755:
	mov	rbp, rbp
	test	rdi, rdi
	jle	.label_770
	lea	rax, [rdi - 1]
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x198], rax
	mov	rbp, rbp
	je	.label_742
	cmp	dword ptr [rsp + 0x1d0], 2
	lea	rsi, [rsi]
	jl	.label_777
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x150]
	mov	rsp, rsp
	mov	rcx, rdi
	nop	dword ptr [rax + rax]
.label_789:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	mov	rbp, rbp
	jne	.label_785
	mov	rsp, rsp
	dec	rcx
	mov	rsp, rsp
	jg	.label_789
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1b0]
	mov	rsp, rsp
	jmp	.label_790
.label_777:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x1c0]
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
	nop	
	mov	cl, al
	mov	rbp, rbp
	shr	cl, 6
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	bt	rcx, rax
	nop	
	jb	.label_658
	mov	rsp, rsp
	movzx	eax, al
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	je	.label_802
	mov	rbx, qword ptr [rsp + 0x250]
	jmp	.label_647
.label_785:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x1ce], 0
	lea	rsi, [rsi]
	jne	.label_810
.label_720:
	cmp	ebx, 0xa
	jne	.label_813
.label_802:
	mov	ecx, 2
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x1cd], 0
	jne	.label_790
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_790
.label_813:
	mov	rbx, qword ptr [rsp + 0x250]
	lea	rsi, [rsi]
	jmp	.label_647
.label_770:
	mov	ecx, dword ptr [rsp + 0x1b0]
	jmp	.label_790
.label_742:
	mov	ecx, dword ptr [rsp + 0x1e0]
	mov	rbp, rbp
	and	ecx, 2
	mov	rsp, rsp
	xor	ecx, 0xa
.label_790:
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_658
	nop	
	test	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x250]
	nop	
	je	.label_647
	mov	rsi, rbx
	mov	rbp, rbp
	mov	eax, ecx
	and	eax, 4
	sete	bl
	mov	edx, ecx
	and	edx, 2
	je	.label_830
	nop	
	test	bl, bl
	nop	
	jne	.label_830
	mov	rbp, rbp
	mov	r15, qword ptr [r12 + 0x60]
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rbp, rbp
	jmp	.label_647
.label_830:
	mov	rbp, rbp
	test	edx, edx
	jne	.label_837
	mov	qword ptr [rsp + 0x128], rdi
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 0x48]
	test	eax, eax
	mov	rbx, rsi
	lea	rsi, [rsi]
	je	.label_763
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x50]
	nop	
	lea	rdi, [rsp + 0xf4]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	call	re_acquire_state_context
	lea	rdi, [rdi]
	mov	r15, rax
.label_763:
	nop	
	mov	rdi, qword ptr [rsp + 0x128]
	jmp	.label_647
.label_837:
	nop	
	mov	r15, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	mov	rbx, rsi
	jmp	.label_647
.label_810:
	mov	qword ptr [rsp + 0x128], rdi
	mov	rbp, rbp
	mov	edi, ebx
	mov	rbp, rbp
	call	iswalnum
	mov	rdi, qword ptr [rsp + 0x128]
	cmp	ebx, 0x5f
	lea	rdi, [rdi]
	je	.label_658
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_720
.label_658:
	mov	r15, qword ptr [r12 + 0x50]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x250]
.label_647:
	test	r15, r15
	mov	rbp, rbp
	je	.label_667
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	test	rax, rax
	mov	cl, byte ptr [rsp + 0x247]
	mov	rbp, rbp
	mov	dl, cl
	mov	dword ptr [rsp + 0xf8], edx
	je	.label_747
	mov	rbp, rbp
	mov	qword ptr [rax + rdi*8], r15
	cmp	qword ptr [r12 + 0x98], 0
	mov	rsp, rsp
	mov	al, cl
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xf8], eax
	mov	rbp, rbp
	jne	.label_681
.label_747:
	mov	byte ptr [rsp + 0x247], cl
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x68]
	mov	rbx, -1
	test	al, 0x10
	mov	ecx, 0
	lea	rsi, [rsi]
	jne	.label_691
.label_677:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
.label_834:
	mov	qword ptr [rsp + 0x30], rdx
	cmp	qword ptr [rsp + 0x1a8], rax
	lea	rsi, [rsi]
	jle	.label_702
	test	rcx, rcx
	sete	cl
	or	cl, byte ptr [rsp + 0x3f]
	mov	byte ptr [rsp + 0x97], cl
	nop	
	jmp	.label_708
.label_724:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe0], rbx
	mov	qword ptr [rsp + 0x258], r13
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x10], 0
	jle	.label_715
	mov	rdi, qword ptr [rsp + 0x1d8]
	lea	rsi, [rsi]
	xor	r12d, r12d
	jmp	.label_718
.label_741:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x188]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_722
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r15
	lea	rdx, [rax - 1]
	lea	rsi, [rsi]
	mov	ecx, 0xa
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x198], rdx
	je	.label_653
	cmp	dword ptr [rsp + 0x1d0], 2
	jl	.label_738
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x150]
.label_743:
	nop	
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_686
	dec	rax
	lea	rsi, [rsi]
	jg	.label_743
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x1b0]
	jmp	.label_653
.label_817:
	cmp	qword ptr [rsp + 0x28], r15
	mov	rdi, qword ptr [rsp + 0x128]
	je	.label_748
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xf8], 0
.label_748:
	mov	rsp, rsp
	cmove	rdi, r12
	mov	rbp, rbp
	jmp	.label_753
.label_738:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x1c0]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	nop	
	shr	dl, 6
	mov	rsp, rsp
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	bt	rdx, rax
	jb	.label_653
	lea	rdi, [rdi]
	xor	ecx, ecx
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0xa
	nop	
	jne	.label_653
	jmp	.label_765
.label_686:
	cmp	byte ptr [rsp + 0x1ce], 0
	mov	rsp, rsp
	jne	.label_766
.label_695:
	lea	rsi, [rsi]
	xor	ecx, ecx
	cmp	ebx, 0xa
	nop	
	jne	.label_653
.label_765:
	lea	rsi, [rsi]
	mov	ecx, 2
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x1cd], 0
	jne	.label_653
	xor	ecx, ecx
	jmp	.label_653
.label_722:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	mov	ecx, dword ptr [rsp + 0x1b0]
.label_653:
	mov	rsp, rsp
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + rcx*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe0]
	jmp	.label_683
.label_844:
	mov	r15, rdi
	mov	edi, ebx
	mov	rsp, rsp
	call	iswalnum
	cmp	ebx, 0x5f
	nop	
	mov	ecx, 1
	mov	rbp, rbp
	je	.label_842
	lea	rsi, [rsi]
	test	eax, eax
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	je	.label_707
	jmp	.label_713
.label_842:
	mov	rdi, r15
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x28]
	jmp	.label_713
.label_718:
	mov	rax, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rdi]
	mov	rbp, rsi
	shl	rbp, 4
	mov	rbp, rbp
	mov	r13d, dword ptr [rax + rbp + 8]
	test	r13d, 0x100000
	mov	rsp, rsp
	je	.label_651
	shr	r13d, 8
	test	r13w, 0x3ff
	lea	rdi, [rdi]
	je	.label_694
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_816
	cmp	qword ptr [rsp + 0x198], rax
	mov	rbp, rbp
	je	.label_819
	cmp	dword ptr [rsp + 0x1d0], 2
	mov	rsp, rsp
	jl	.label_823
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x150]
	inc	rax
.label_827:
	mov	rbp, rbp
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_826
	mov	rsp, rsp
	dec	rax
	lea	rsi, [rsi]
	test	rax, rax
	jg	.label_827
	mov	ecx, dword ptr [rsp + 0x1b0]
	lea	rdi, [rdi]
	jmp	.label_648
.label_823:
	nop	
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x1c0]
	nop	
	movzx	eax, byte ptr [rcx + rax]
	nop	
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	xor	ecx, ecx
	bt	rdx, rax
	jae	.label_833
	mov	ecx, 1
	lea	rdi, [rdi]
	xor	edx, edx
	jmp	.label_655
.label_826:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x1ce], 0
	lea	rsi, [rsi]
	jne	.label_828
.label_668:
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	ebx, 0xa
	je	.label_804
	jmp	.label_648
.label_833:
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jne	.label_648
.label_804:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x1cd], 0
	jne	.label_648
	xor	ecx, ecx
	jmp	.label_648
.label_816:
	mov	ecx, dword ptr [rsp + 0x1b0]
	jmp	.label_648
.label_819:
	mov	ecx, dword ptr [rsp + 0x1e0]
	lea	rdi, [rdi]
	and	ecx, 2
	xor	ecx, 0xa
.label_648:
	nop	
	mov	eax, ecx
	nop	
	and	eax, 1
	sete	dl
	test	r13b, 4
	lea	rdi, [rdi]
	je	.label_655
	test	eax, eax
	je	.label_651
	lea	rdi, [rdi]
	jmp	.label_655
.label_828:
	mov	qword ptr [rsp + 0x48], rsi
	mov	qword ptr [rsp + 8], rdi
	mov	edi, ebx
	nop	
	call	iswalnum
	xor	edx, edx
	cmp	ebx, 0x5f
	mov	ecx, 1
	lea	rsi, [rsi]
	je	.label_666
	test	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	je	.label_668
	lea	rdi, [rdi]
	jmp	.label_655
.label_666:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x48]
.label_655:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbp + 8]
	mov	rbp, rbp
	test	dl, dl
	jne	.label_811
	mov	edx, eax
	mov	rsp, rsp
	and	edx, 0x800
	jne	.label_651
.label_811:
	mov	rsp, rsp
	test	cl, 2
	jne	.label_690
	nop	
	mov	edx, eax
	and	edx, 0x2000
	lea	rdi, [rdi]
	jne	.label_651
.label_690:
	nop	
	test	cl, 8
	jne	.label_694
	nop	
	shr	eax, 8
	mov	rsp, rsp
	test	al, al
	js	.label_651
.label_694:
	mov	rcx, qword ptr [rsp + 0x188]
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	lea	rdx, [rsp + 0x140]
	mov	rbp, rsi
	call	check_node_accept_bytes
	mov	rcx, rbp
	mov	rdi, rbx
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_651
	mov	qword ptr [rsp + 0x48], rcx
	lea	rdi, [rdi]
	mov	rbp, rdi
	mov	rbp, rbp
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rsi, qword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x220]
	lea	rdi, [rdi]
	cmp	ecx, eax
	cmovl	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x220], ecx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x200]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x180]
	nop	
	mov	rax, qword ptr [rsp + 0x198]
	nop	
	cmp	rcx, rsi
	jg	.label_712
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_731
.label_712:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x170]
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jg	.label_732
	cmp	rcx, rax
	jge	.label_732
.label_731:
	mov	rbp, rbp
	mov	r13, rsi
	lea	esi, [r13 + 1]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	mov	rsp, rsp
	call	extend_buffers
	mov	rsp, rsp
	mov	rsi, r13
	test	eax, eax
	nop	
	jne	.label_744
.label_732:
	mov	rdx, rsi
	nop	
	sub	rdx, rbx
	mov	rbp, rbp
	jle	.label_764
	mov	rax, qword ptr [rsp + 0x1f8]
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	mov	rbx, rsi
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	call	memset
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x200], rsi
.label_764:
	mov	dword ptr [rsp + 0xc8], 0
	lea	rdi, [rdi]
	mov	r13, rbp
	nop	
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	mov	rsp, rsp
	add	rdx, qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax + rsi*8]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_758
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x50]
	lea	rdi, [rsp + 0x50]
	mov	rbp, rbp
	call	re_node_set_init_union
	mov	rbp, rbp
	mov	rsi, rbx
	mov	dword ptr [rsp + 0xc8], eax
	test	eax, eax
	je	.label_774
	jmp	.label_779
.label_758:
	nop	
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	nop	
	movups	xmm0, xmmword ptr [rdx]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x50], xmm0
.label_774:
	nop	
	test	rsi, rsi
	mov	rsp, rsp
	jle	.label_689
	mov	rsp, rsp
	lea	rax, [rsi - 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x198], rax
	lea	rdi, [rsp + 0xc8]
	je	.label_825
	cmp	dword ptr [rsp + 0x1d0], 2
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x28]
	jl	.label_652
	nop	
	mov	rax, qword ptr [rsp + 0x150]
	mov	rsp, rsp
	mov	rcx, rsi
.label_801:
	nop	
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	mov	rbp, rbp
	cmp	ebx, -1
	mov	rsp, rsp
	jne	.label_799
	dec	rcx
	lea	rdi, [rdi]
	jg	.label_801
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rsi
	mov	ecx, dword ptr [rsp + 0x1b0]
	lea	rdi, [rdi]
	jmp	.label_713
.label_652:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rsi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x1c0]
	movzx	eax, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_713
	xor	ecx, ecx
	mov	rbp, rbp
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_713
	jmp	.label_824
.label_799:
	mov	qword ptr [rsp + 0x48], rsi
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x1ce], 0
	jne	.label_844
.label_707:
	nop	
	xor	ecx, ecx
	nop	
	cmp	ebx, 0xa
	nop	
	jne	.label_713
.label_824:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x1cd], 0
	mov	rsp, rsp
	jne	.label_713
	xor	ecx, ecx
	jmp	.label_713
.label_689:
	nop	
	mov	qword ptr [rsp + 0x48], rsi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x1b0]
	lea	rdi, [rsp + 0xc8]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x28]
	nop	
	jmp	.label_713
.label_825:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rsi
	mov	ecx, dword ptr [rsp + 0x1e0]
	mov	rsp, rsp
	and	ecx, 2
	lea	rsi, [rsi]
	xor	ecx, 0xa
	mov	r15, qword ptr [rsp + 0x28]
.label_713:
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rbp, rbp
	lea	rdx, [rsp + 0x50]
	lea	rdi, [rdi]
	call	re_acquire_state_context
	test	rbp, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x1f8]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	qword ptr [rcx + rdx*8], rax
	je	.label_678
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rbx, rdx
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdx, rbx
.label_678:
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rbp, rbp
	cmp	qword ptr [rax + rdx*8], 0
	mov	rdi, r13
	mov	rbp, rbp
	jne	.label_651
	nop	
	mov	eax, dword ptr [rsp + 0xc8]
	mov	rbp, rbp
	test	eax, eax
	jne	.label_659
.label_651:
	lea	rsi, [rsi]
	inc	r12
	mov	rbp, rbp
	cmp	r12, qword ptr [r15 + 0x10]
	jl	.label_718
.label_715:
	mov	dword ptr [rsp + 0xf4], 0
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_664
.label_659:
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rdi]
	jmp	.label_779
.label_744:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r15
	mov	dword ptr [rsp + 0xc8], eax
.label_779:
	mov	dword ptr [rsp + 0xf4], eax
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbx, qword ptr [rsp + 0xe0]
	jmp	.label_683
.label_766:
	mov	edi, ebx
	call	iswalnum
	mov	rbp, rbp
	cmp	ebx, 0x5f
	mov	rsp, rsp
	mov	ecx, 1
	lea	rsi, [rsi]
	je	.label_653
	test	eax, eax
	je	.label_695
	mov	rsp, rsp
	jmp	.label_653
.label_708:
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x128], rdi
	lea	rdi, [rdi]
	lea	rbp, [rax + 1]
	nop	
	mov	rdx, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x198]
	cmp	rbp, rdx
	lea	rdi, [rdi]
	jl	.label_698
	cmp	rdx, rcx
	mov	rsp, rsp
	jl	.label_711
.label_698:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x170]
	cmp	rbp, rdx
	jl	.label_714
	cmp	rdx, rcx
	jge	.label_714
.label_711:
	add	eax, 2
	lea	rdi, [rsp + 0x140]
	mov	esi, eax
	call	extend_buffers
	mov	dword ptr [rsp + 0xf4], eax
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_719
.label_714:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rbp
	lea	rsi, [rsi]
	test	byte ptr [r15 + 0x68], 0x20
	nop	
	jne	.label_724
.label_664:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x188]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x188], rcx
	mov	rcx, qword ptr [rsp + 0x148]
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rcx + rax]
.label_750:
	nop	
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_739
	mov	qword ptr [rsp + 0xe0], rbx
	mov	r12, qword ptr [r15 + 0x60]
	mov	rbp, rbp
	test	r12, r12
	nop	
	jne	.label_741
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x1d8]
	mov	rsi, r15
	call	build_trtable
	test	al, al
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe0]
	jne	.label_750
	nop	
	mov	qword ptr [rsp + 0x28], r15
	mov	dword ptr [rsp + 0xf4], 0xc
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_683
.label_739:
	mov	qword ptr [rsp + 0x28], r15
	mov	r15, qword ptr [rax + rbp*8]
.label_683:
	cmp	qword ptr [rsp + 0x1f8], 0
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	je	.label_759
	nop	
	lea	rdi, [rsp + 0xf4]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x140]
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rsi, [rsi]
	call	merge_state_with_log
	mov	r15, rax
.label_759:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x138]
	mov	rbp, rbp
	test	r15, r15
	jne	.label_768
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0xf4], 0
	jne	.label_710
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	test	rax, rax
	lea	rsi, [rsi]
	setne	cl
	nop	
	and	cl, byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 1
	je	.label_775
	jmp	.label_786
.label_807:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rdi, rbp
.label_775:
	mov	rdx, qword ptr [rsp + 0x188]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x200]
	nop	word ptr [rax + rax]
.label_796:
	nop	
	cmp	rdx, rcx
	jge	.label_795
	mov	rsp, rsp
	lea	rsi, [rdx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x188], rsi
	nop	
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	nop	
	je	.label_796
	mov	rbp, rdi
	xor	edx, edx
	lea	rdi, [rsp + 0xf4]
	lea	rsi, [rsp + 0x140]
	call	merge_state_with_log
	mov	r15, rax
	nop	
	test	r15, r15
	jne	.label_805
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xf4]
	nop	
	test	eax, eax
	je	.label_807
.label_805:
	mov	rsp, rsp
	test	r15, r15
	mov	rbp, rbp
	je	.label_812
.label_768:
	mov	eax, dword ptr [rsp + 0xf8]
	mov	rbp, rbp
	test	al, 1
	jne	.label_817
	mov	rdi, qword ptr [rsp + 0x128]
.label_753:
	mov	al, byte ptr [r15 + 0x68]
	test	al, 0x10
	je	.label_821
	mov	rbp, rbp
	test	al, al
	nop	
	jns	.label_822
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x188]
	mov	rsp, rsp
	mov	rbp, rdi
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	call	check_halt_state_context
	lea	rsi, [rsi]
	mov	rdi, rbp
	test	rax, rax
	mov	rbp, rbp
	jne	.label_822
.label_821:
	mov	rax, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x1a8], rax
	jg	.label_708
	jmp	.label_702
.label_822:
	mov	rax, qword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x3f], 0
	mov	rsp, rsp
	mov	rbx, rax
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	edx, 0
	mov	rbp, qword ptr [rsp + 0x138]
	nop	
	jne	.label_834
	jmp	.label_685
.label_795:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x128]
.label_702:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_841
	mov	rbp, rbp
	add	qword ptr [rax], rdi
	lea	rdi, [rdi]
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_716
.label_841:
	nop	
	mov	rax, rbx
.label_716:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x138]
.label_685:
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x108]
	je	.label_701
	mov	rbp, rbp
	mov	r12d, 0xc
	cmp	rax, -2
	lea	rdi, [rdi]
	je	.label_654
.label_657:
	mov	qword ptr [rsp + 0x138], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x258], r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x108], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1e8], rax
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe8]
	mov	rsp, rsp
	mov	cl, byte ptr [rbx + 0x38]
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x248], 2
	mov	rbp, qword ptr [rsp + 0x260]
	jb	.label_661
	mov	dl, cl
	and	dl, 0x10
	lea	rdi, [rdi]
	je	.label_679
.label_661:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_684
.label_679:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x1f8]
	mov	rsi, qword ptr [rcx + rax*8]
	nop	
	lea	rdi, [rsp + 0x140]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	check_halt_state_context
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1f0], rax
	nop	
	mov	cl, byte ptr [rbx + 0x38]
.label_684:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x248], 2
	mov	r9, qword ptr [rsp + 0x98]
	jb	.label_696
	and	cl, 0x10
	nop	
	jne	.label_696
	mov	rbp, rbp
	test	byte ptr [rbp + 0xb0], 1
	jne	.label_703
.label_696:
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_692
.label_703:
	mov	rbp, qword ptr [rsp + 0x1e8]
	mov	rsp, rsp
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_710
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rbx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x1d8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x28], rax
	lea	rbx, [rbp*8 + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	mov	r12, rax
	mov	rsp, rsp
	test	r12, r12
	mov	r15d, 0
	nop	
	je	.label_729
	cmp	qword ptr [r13 + 0x98], 0
	lea	rdi, [rdi]
	je	.label_733
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf8], r13
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	r15, r15
	mov	rbp, rbp
	je	.label_740
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	rdx, rbx
	call	memset
	nop	
	mov	qword ptr [rsp + 0x50], r12
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], r15
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rbp
	mov	rbp, rbp
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	lea	rsi, [rsp + 0x50]
	mov	rsp, rsp
	call	sift_states_backward
	mov	rbx, r12
	mov	qword ptr [rsp + 0x128], rbx
	mov	r12d, eax
	test	r12d, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x250]
	mov	r13, qword ptr [rsp + 0x258]
	jne	.label_675
.label_815:
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	mov	rax, rbx
	jne	.label_728
	lea	rsi, [rsi]
	cmp	qword ptr [r15], 0
	mov	esi, 0
	jne	.label_728
	test	rbp, rbp
	jle	.label_793
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	nop	
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_788:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_782
	nop	
	test	byte ptr [rsi + 0x68], 0x10
	nop	
	jne	.label_806
.label_782:
	lea	rcx, [rbp - 1]
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 2
	mov	rsp, rsp
	mov	rbp, rcx
	mov	rsp, rsp
	jge	.label_788
	lea	rsi, [rsi]
	jmp	.label_793
.label_806:
	mov	rsp, rsp
	lea	r12, [rsp + 0x140]
	mov	rdi, r12
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	check_halt_state_context
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rbx, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x50], rbx
	nop	
	mov	qword ptr [rsp + 0x58], r15
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rbp
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsp + 0x50]
	lea	rsi, [rsi]
	call	sift_states_backward
	mov	rdx, qword ptr [rsp + 0x250]
	lea	rdi, [rdi]
	mov	r12d, eax
	test	r12d, r12d
	mov	rbp, rbp
	je	.label_815
	jmp	.label_675
.label_733:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], r12
	mov	qword ptr [rsp + 0x128], r12
	mov	qword ptr [rsp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rbp
	lea	rax, [rsp + 0x70]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x140]
	lea	rsi, [rsp + 0x50]
	mov	rsp, rsp
	call	sift_states_backward
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	mov	rbp, rbp
	mov	r15d, 0
	mov	rdx, qword ptr [rsp + 0x250]
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, rbp
	jne	.label_675
	mov	rax, qword ptr [rsp + 0x128]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	r15d, 0
	nop	
	jne	.label_672
.label_793:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x250], rdx
	mov	rdi, qword ptr [rsp + 0x128]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rbx, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x138]
.label_701:
	lea	rdi, [rsp + 0x140]
	call	match_ctx_clean
.label_749:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0xa8]
	add	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0xa8], r15
	cmp	r15, r13
	mov	r12d, 1
	jl	.label_654
	nop	
	cmp	rbp, r15
	jge	.label_669
	lea	rsi, [rsi]
	jmp	.label_654
.label_691:
	test	al, al
	mov	rsp, rsp
	js	.label_674
	cmp	byte ptr [rsp + 0x3f], 0
	mov	rbp, rbp
	mov	rbx, rdi
	mov	ecx, 1
	jne	.label_677
	mov	rsp, rsp
	mov	rax, rdi
	nop	
	jmp	.label_685
.label_681:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x138], rbp
	mov	qword ptr [rsp + 0x250], rbx
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	jle	.label_687
	nop	
	mov	rbp, qword ptr [rsp + 0x1d8]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_693
.label_674:
	lea	rsi, [rsi]
	mov	r12, rdi
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	nop	
	mov	rdx, r12
	call	check_halt_state_context
	mov	rbp, rbp
	cmp	rax, 1
	sbb	rdx, rdx
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	setne	cl
	movzx	ecx, cl
	lea	rsi, [rsi]
	or	al, byte ptr [rsp + 0x3f]
	mov	rbp, rbp
	je	.label_706
	mov	rsp, rsp
	or	rdx, r12
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rbx, rdx
	jmp	.label_677
.label_706:
	lea	rdi, [rdi]
	mov	rax, r12
	nop	
	jmp	.label_685
.label_786:
	mov	qword ptr [rsp + 0x138], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x128]
	lea	rsi, [rsi]
	jmp	.label_702
.label_728:
	test	rbp, rbp
	js	.label_726
	nop	
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_680
.label_803:
	mov	rax, qword ptr [rsp + 0x128]
	mov	rsi, qword ptr [rax + rbx*8 + 8]
	inc	rbx
.label_680:
	nop	
	mov	rdx, qword ptr [r15 + rbx*8]
	nop	
	test	rsi, rsi
	je	.label_734
	nop	
	mov	qword ptr [rsp + 0x128], rax
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_709
	mov	rsp, rsp
	add	rsi, 8
	mov	rbp, rbp
	add	rdx, 8
	lea	rdi, [rdi]
	lea	r13, [rsp + 0xc8]
	mov	rdi, r13
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0xf4], r12d
	nop	
	test	r12d, r12d
	jne	.label_760
	lea	rdi, [rsp + 0xf4]
	mov	rsi, qword ptr [rsp + 0xf8]
	lea	rdi, [rdi]
	mov	rdx, r13
	nop	
	call	re_acquire_state
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	mov	qword ptr [rcx + rbx*8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xd8]
	call	free
	mov	r12d, dword ptr [rsp + 0xf4]
	test	r12d, r12d
	je	.label_709
	jmp	.label_760
.label_734:
	mov	rbp, rbp
	mov	qword ptr [rax + rbx*8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rax
.label_709:
	mov	rsp, rsp
	cmp	rbx, rbp
	jl	.label_803
	lea	rsi, [rsi]
	jmp	.label_769
.label_798:
	nop	
	mov	rdi, qword ptr [rsp + 0x238]
	mov	rsp, rsp
	mov	rsi, r13
	shl	rsi, 4
	lea	rsi, [rsi]
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_776
	lea	rsi, [rsi]
	add	r13, r13
	mov	qword ptr [rsp + 0x238], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x230], r13
	jmp	.label_780
.label_693:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rcx + rbx*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp]
	mov	rbp, rbp
	mov	rdx, r12
	shl	rdx, 4
	movzx	esi, byte ptr [rcx + rdx + 8]
	cmp	esi, 8
	jne	.label_787
	mov	rcx, qword ptr [rcx + rdx]
	nop	
	cmp	rcx, 0x3f
	jg	.label_787
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 0xa0]
	bt	rdx, rcx
	jae	.label_787
	mov	qword ptr [rsp + 0x128], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x258], r13
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x228]
	nop	
	cmp	r13, qword ptr [rsp + 0x230]
	je	.label_798
.label_780:
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 0x30
	lea	rdi, [rdi]
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x228]
	mov	rdx, qword ptr [rsp + 0x238]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x238]
	mov	rax, qword ptr [rax + rcx*8]
	nop	
	test	rax, rax
	je	.label_776
	mov	rbp, rbp
	mov	qword ptr [rax + 8], r12
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x228], rcx
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x128]
.label_787:
	lea	rsi, [rsi]
	inc	rbx
	cmp	rbx, rax
	jl	.label_693
.label_687:
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	dword ptr [rsp + 0xf4], 0
	test	byte ptr [r15 + 0x68], 0x40
	jne	.label_832
	nop	
	mov	dword ptr [rsp + 0xf8], 0
	nop	
	mov	r13, rbp
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x138]
	mov	cl, byte ptr [rsp + 0x247]
	jmp	.label_747
.label_832:
	mov	rbp, rbp
	mov	r12, rdi
	nop	
	lea	rsi, [r15 + 8]
	nop	
	lea	rdi, [rsp + 0x140]
	call	transit_state_bkref
	mov	dword ptr [rsp + 0xf4], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_845
	mov	dword ptr [rsp + 0xf8], 0
	mov	rsp, rsp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x138]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsp + 0x247]
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	jmp	.label_747
.label_776:
	mov	eax, 0xc
	mov	rbx, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x138]
	lea	rdi, [rdi]
	jmp	.label_657
.label_726:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x128], rax
.label_769:
	xor	r12d, r12d
.label_760:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	test	r12d, r12d
	mov	rbp, rbp
	mov	r15d, 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x250]
	nop	
	mov	r13, qword ptr [rsp + 0x258]
	je	.label_672
.label_675:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x258], r13
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x128]
	call	free
	mov	rbp, rbp
	mov	rdi, r15
	call	free
	test	r12d, r12d
	mov	rbp, qword ptr [rsp + 0x260]
	mov	r9, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	je	.label_692
	cmp	r12d, 1
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x250], r13
	nop	
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, qword ptr [rsp + 0x138]
	lea	rdi, [rdi]
	je	.label_701
	mov	rbp, rbp
	jmp	.label_654
.label_845:
	cdqe	
	mov	rbp, rbp
	mov	r13, rbp
	mov	rsp, rsp
	jmp	.label_716
.label_812:
	mov	rdi, qword ptr [rsp + 0x128]
	jmp	.label_702
.label_669:
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	eax, 4
	ja	.label_721
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_725]]
.label_2508:
	cmp	r15, r13
	lea	rdi, [rdi]
	jge	.label_727
	mov	rax, r15
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rdx, qword ptr [rsp + 0x118]
	nop	
	jmp	.label_730
.label_2510:
	nop	
	cmp	r15, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x118]
	lea	rsi, [rsi]
	jge	.label_735
.label_745:
	movzx	eax, byte ptr [rcx + r15]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + rax]
	mov	rbp, rbp
	cmp	byte ptr [r14 + rax], 0
	mov	rsp, rsp
	jne	.label_735
	nop	
	inc	r15
	nop	
	mov	qword ptr [rsp + 0xa8], r15
	cmp	r15, rbp
	nop	
	jl	.label_745
	mov	rbp, rbp
	jmp	.label_735
.label_721:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x168]
	nop	
	jmp	.label_752
	nop	dword ptr [rax]
.label_791:
	lea	rsi, [rsi]
	add	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0xa8], r15
	mov	rbp, rbp
	cmp	r15, r13
	lea	rdi, [rdi]
	mov	r12d, 1
	lea	rsi, [rsi]
	jl	.label_654
	cmp	r15, rbp
	lea	rdi, [rdi]
	jle	.label_752
	lea	rdi, [rdi]
	jmp	.label_654
.label_778:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x2b0]
	call	re_string_reconstruct
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_654
	mov	r15, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x168]
	mov	rcx, r15
	sub	rcx, rax
	jmp	.label_771
	nop	
.label_752:
	lea	rdi, [rdi]
	mov	rcx, r15
	sub	rcx, rax
	nop	
	cmp	rcx, qword ptr [rsp + 0x178]
	mov	rbp, rbp
	jae	.label_778
.label_771:
	mov	rdx, qword ptr [rsp + 0x130]
	nop	
	cmp	r15, rdx
	lea	rsi, [rsi]
	mov	edx, 0
	jge	.label_784
	mov	rdx, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	movzx	edx, byte ptr [rdx + rcx]
.label_784:
	nop	
	cmp	byte ptr [r14 + rdx], 0
	je	.label_791
	jmp	.label_794
.label_2509:
	cmp	r15, rbp
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x118]
	jge	.label_735
	nop	dword ptr [rax]
.label_800:
	movzx	eax, byte ptr [rcx + r15]
	cmp	byte ptr [r14 + rax], 0
	mov	rbp, rbp
	jne	.label_735
	inc	r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa8], r15
	nop	
	cmp	r15, rbp
	mov	rsp, rsp
	jl	.label_800
.label_735:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x118], rcx
	mov	rbp, rbp
	cmp	r15, rbp
	nop	
	jne	.label_794
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x130]
	cmp	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x118]
	jge	.label_808
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rbp]
.label_808:
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_818
	nop	
	movzx	eax, byte ptr [rbx + rax]
.label_818:
	mov	rsp, rsp
	mov	r12d, 1
	mov	rsp, rsp
	cmp	byte ptr [r14 + rax], 0
	mov	rsp, rsp
	mov	r15, rbp
	jne	.label_794
	jmp	.label_654
.label_727:
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	mov	rcx, qword ptr [rsp + 0x130]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x118]
	je	.label_723
	nop	word ptr [rax + rax]
.label_736:
	mov	rbp, rbp
	cmp	r15, rcx
	lea	rdi, [rdi]
	mov	eax, 0
	jge	.label_829
	nop	
	movzx	eax, byte ptr [rdx + r15]
.label_829:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + rax]
	cmp	byte ptr [r14 + rax], 0
	jne	.label_717
	nop	
	lea	rax, [r15 - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r15, r13
	mov	r15, rax
	lea	rsi, [rsi]
	jg	.label_736
	nop	
	jmp	.label_730
.label_723:
	mov	rsp, rsp
	cmp	r15, rcx
	mov	eax, 0
	nop	
	jge	.label_839
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdx + r15]
.label_839:
	nop	
	cmp	byte ptr [r14 + rax], 0
	jne	.label_840
	lea	rax, [r15 - 1]
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	cmp	r15, r13
	mov	r15, rax
	jg	.label_723
	jmp	.label_730
.label_717:
	lea	rdi, [rdi]
	mov	rax, r15
	jmp	.label_730
.label_840:
	lea	rsi, [rsi]
	mov	rax, r15
.label_730:
	mov	qword ptr [rsp + 0x118], rdx
	mov	qword ptr [rsp + 0x130], rcx
	lea	rdi, [rdi]
	mov	r12d, 1
	cmp	rax, r13
	mov	r15, rax
	jl	.label_654
.label_794:
	nop	
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	mov	edx, dword ptr [rsp + 0x2b0]
	mov	rsp, rsp
	call	re_string_reconstruct
	nop	
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	je	.label_662
	jmp	.label_654
.label_719:
	cmp	eax, 0xc
	jne	.label_663
.label_710:
	mov	r12d, 0xc
.label_654:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x1f8]
	call	free
	mov	rax, qword ptr [rsp + 0x260]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_671
	nop	
	lea	rdi, [rsp + 0x140]
	call	match_ctx_clean
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x238]
	call	free
	mov	rdi, qword ptr [rsp + 0x218]
	nop	
	call	free
.label_671:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsp, rsp
	call	free
	cmp	byte ptr [rsp + 0x1cb], 0
	mov	rbp, rbp
	je	.label_649
	mov	rdi, qword ptr [rsp + 0x148]
	call	free
.label_649:
	lea	rsi, [rsi]
	mov	eax, r12d
	mov	rsp, rsp
	add	rsp, 0x268
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_667:
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0xf4], 0xc
	mov	rbp, rbp
	je	.label_710
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.25
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rsp, rsp
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_846:
	lea	rsi, [rsi]
	xor	r15d, r15d
	jmp	.label_656
.label_672:
	mov	rdi, qword ptr [rsp + 0x1f8]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x1f8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x1f0], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], rbp
	mov	rbp, qword ptr [rsp + 0x260]
	mov	r9, qword ptr [rsp + 0x98]
	mov	rbx, qword ptr [rsp + 0xe8]
.label_692:
	mov	rsp, rsp
	cmp	r9, qword ptr [rsp + 0x2a0]
	lea	r13, [rsp + 0x178]
	jne	.label_751
	mov	qword ptr [rsp + 0x260], rbp
	nop	
	xor	r12d, r12d
	jmp	.label_654
.label_751:
	mov	r8, rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x260], rbp
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x248], 2
	nop	
	jb	.label_773
	mov	rsi, qword ptr [rsp + 0x2a0]
	nop	
	lea	edx, [rsi + 7]
	sub	edx, r9d
	lea	rax, [rsi - 2]
	sub	rax, r9
	mov	ecx, 1
	test	dl, 7
	je	.label_757
	mov	rcx, qword ptr [rsp + 0x2a8]
	lea	rdx, [rcx + 0x10]
	lea	esi, [rsi + 7]
	sub	esi, r9d
	mov	rbp, rbp
	and	esi, 7
	lea	rdi, [rdi]
	xor	edi, edi
.label_762:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	nop	
	mov	qword ptr [rdx], -1
	nop	
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	nop	
	cmp	rsi, rdi
	jne	.label_762
	add	rcx, 2
.label_757:
	cmp	rax, 7
	lea	rdi, [rdi]
	jb	.label_773
	mov	rax, qword ptr [rsp + 0x2a0]
	sub	rax, r9
	sub	rax, rcx
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x2a8]
	mov	rsp, rsp
	lea	rcx, [rcx + rdx + 0x70]
.label_809:
	mov	qword ptr [rcx - 0x68], -1
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 0x70], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x58], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x60], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x48], -1
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 0x50], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x38], -1
	mov	rbp, rbp
	mov	qword ptr [rcx - 0x40], -1
	nop	
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x18], -1
	nop	
	mov	qword ptr [rcx - 0x20], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	mov	rbp, rbp
	mov	qword ptr [rcx], -1
	nop	
	add	rcx, 0x80
	lea	rdi, [rdi]
	add	rax, -8
	jne	.label_809
.label_773:
	mov	rbp, r9
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x2a8]
	nop	
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1e8]
	mov	qword ptr [rcx + 8], rax
	mov	r14, rcx
	cmp	qword ptr [rsp + 0x248], 2
	mov	rsp, rsp
	jb	.label_820
	lea	rsi, [rsi]
	mov	al, byte ptr [r8 + 0x38]
	mov	rsp, rsp
	and	al, 0x10
	nop	
	jne	.label_820
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x260]
	test	byte ptr [rax + 0xb0], 1
	lea	rsi, [rsi]
	jne	.label_831
	xor	eax, eax
	jmp	.label_836
.label_740:
	mov	rax, r12
	mov	qword ptr [rsp + 0x110], rax
.label_729:
	mov	rdi, qword ptr [rsp + 0x110]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	jmp	.label_710
.label_831:
	cmp	qword ptr [rax + 0x98], 0
	nop	
	setg	al
.label_836:
	mov	rdi, qword ptr [r8]
	mov	rbp, rbp
	movzx	r8d, al
	lea	rsi, [rsp + 0x140]
	mov	rdx, qword ptr [rsp + 0x248]
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	set_regs
	lea	rsi, [rsi]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_654
.label_820:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x1cc], 0
	jne	.label_650
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x2a0]
	mov	rbx, rbp
	mov	rsp, rsp
	sub	ecx, ebx
	lea	rdi, [rdi]
	xor	edx, edx
	test	cl, 1
	mov	r8, qword ptr [rsp + 0x260]
	nop	
	je	.label_665
	mov	rcx, qword ptr [r14]
	mov	rbp, rbp
	mov	edx, 1
	mov	rsp, rsp
	cmp	rcx, -1
	je	.label_665
	add	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [r14], rcx
	lea	rsi, [rsi]
	add	qword ptr [r14 + 8], rax
	mov	edx, 1
.label_665:
	cmp	qword ptr [rsp + 0xc0], rbx
	je	.label_676
	mov	rcx, qword ptr [rsp + 0x2a0]
	lea	rdi, [rdi]
	sub	rcx, rbx
	sub	rcx, rdx
	shl	rdx, 4
	lea	rdx, [rdx + r14 + 0x18]
.label_697:
	mov	rsi, qword ptr [rdx - 0x18]
	cmp	rsi, -1
	je	.label_688
	add	rsi, rax
	mov	qword ptr [rdx - 0x18], rsi
	add	qword ptr [rdx - 0x10], rax
.label_688:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdx - 8]
	mov	rsp, rsp
	cmp	rsi, -1
	je	.label_783
	mov	rsp, rsp
	add	rsi, rax
	mov	qword ptr [rdx - 8], rsi
	add	qword ptr [rdx], rax
.label_783:
	lea	rsi, [rsi]
	add	rdx, 0x20
	nop	
	add	rcx, -2
	mov	rsp, rsp
	jne	.label_697
.label_676:
	lea	rsi, [rsi]
	test	rbx, rbx
	jle	.label_699
	lea	rsi, [rsi]
	lea	rcx, [rbx - 1]
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	test	bl, 3
	mov	rsp, rsp
	je	.label_705
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x2a0]
	sub	rdx, rbx
	lea	rdi, [rdi]
	shl	rdx, 4
	add	rdx, r14
	mov	esi, ebx
	mov	rsp, rsp
	and	esi, 3
	nop	
	xor	eax, eax
.label_797:
	inc	rax
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	mov	rsp, rsp
	add	rdx, 0x10
	lea	rsi, [rsi]
	cmp	rsi, rax
	jne	.label_797
.label_705:
	lea	rdi, [rdi]
	cmp	rcx, 3
	mov	rbp, rbp
	jb	.label_699
	lea	rdi, [rdi]
	mov	rcx, rbx
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x2a0]
	sub	rdx, rbx
	shl	rdx, 4
	add	rdx, r14
	shl	rax, 4
	add	rax, rdx
	mov	rbp, rbp
	xor	edx, edx
.label_737:
	nop	
	mov	qword ptr [rax + rdx + 8], -1
	nop	
	mov	qword ptr [rax + rdx], -1
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x18], -1
	nop	
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	qword ptr [rax + rdx + 0x30], -1
	add	rdx, 0x40
	lea	rdi, [rdi]
	add	rcx, -4
	lea	rsi, [rsi]
	jne	.label_737
.label_699:
	mov	rbp, rbp
	mov	rax, qword ptr [r8 + 0xe0]
	mov	qword ptr [rsp + 0x260], r8
	test	rax, rax
	je	.label_756
	cmp	qword ptr [rsp + 0x248], 2
	mov	r12d, 0
	nop	
	jb	.label_654
	sub	qword ptr [rsp + 0xc0], rbx
	mov	rbp, rbp
	lea	rcx, [r14 + 0x18]
	mov	rsp, rsp
	xor	edx, edx
	xor	r12d, r12d
.label_781:
	mov	rsi, qword ptr [rax + rdx*8]
	mov	rsp, rsp
	cmp	rdx, rsi
	je	.label_761
	mov	rsp, rsp
	shl	rsi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 8], rsi
	nop	
	mov	rsi, qword ptr [rsp + 0x260]
	nop	
	mov	rsi, qword ptr [rsi + 0xe0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rsi
.label_761:
	inc	rdx
	mov	rsp, rsp
	add	rcx, 0x10
	nop	
	cmp	qword ptr [rsp + 0xc0], rdx
	mov	rbp, rbp
	jne	.label_781
	mov	rbp, rbp
	jmp	.label_654
.label_756:
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_654
.label_650:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x158]
	lea	rdi, [rdi]
	lea	rcx, [r14 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x248]
	nop	
	mov	r8, qword ptr [rsp + 0x260]
	mov	rbx, rbp
.label_814:
	mov	rsi, qword ptr [rcx - 8]
	cmp	rsi, -1
	lea	rsi, [rsi]
	je	.label_682
	nop	
	mov	rdi, qword ptr [rsp + 0x170]
	cmp	rsi, rdi
	lea	rsi, [rax + rsi*8]
	cmove	rsi, r13
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [rcx - 8], rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rcx]
	cmp	rbp, rdi
	mov	rbp, rbp
	lea	rdi, [rax + rbp*8]
	cmove	rdi, r13
	mov	rbp, qword ptr [rsp + 0xa8]
	add	rsi, rbp
	mov	rsp, rsp
	add	rbp, qword ptr [rdi]
	mov	qword ptr [rcx - 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rcx], rbp
.label_682:
	lea	rsi, [rsi]
	add	rcx, 0x10
	dec	rdx
	mov	rsp, rsp
	jne	.label_814
	jmp	.label_676
.label_663:
	mov	edi, OFFSET FLAT:.str.25
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.22_0
	nop	
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb50
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	nop
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	mov	rbp, rbp
	call	re_search_stub
	nop	
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb80

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x48
	mov	r15, rcx
	mov	rbx, rdi
	test	r15, r15
	mov	rsp, rsp
	mov	rbp, -1
	mov	rsp, rsp
	js	.label_848
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x40], r9
	nop	
	cmp	r15, rdx
	nop	
	jg	.label_848
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	xor	r12d, r12d
	add	r8, r15
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsp, rsp
	movzx	r13d, byte ptr [rbx + 0x38]
	lea	rdi, [rdi]
	cmp	r12, r15
	mov	al, r13b
	mov	rbp, rbp
	jle	.label_849
	lea	rdi, [rdi]
	test	r13b, 8
	mov	al, r13b
	jne	.label_849
	nop	
	mov	rbp, qword ptr [rbx + 0x20]
	test	rbp, rbp
	mov	al, r13b
	je	.label_849
	mov	r14, qword ptr [rbx]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	nop	
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbp + 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0x60], xmm0
	nop	
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14 + 0x50]
	nop	
	cmp	rax, rsi
	nop	
	je	.label_857
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rdx, rbp
	nop	
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r14 + 0x48]
.label_857:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14 + 0x58]
	lea	rsi, [rsi]
	cmp	rax, rsi
	mov	rsp, rsp
	je	.label_867
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r14 + 0x48]
.label_867:
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x60]
	lea	rdi, [rdi]
	cmp	rax, rsi
	je	.label_875
	mov	rdi, rbx
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_875:
	mov	al, byte ptr [rbx + 0x38]
	nop	
	or	al, 8
	mov	rsp, rsp
	mov	byte ptr [rbx + 0x38], al
	mov	rsi, qword ptr [rsp + 0x80]
.label_849:
	xor	edx, edx
	test	rsi, rsi
	mov	rsp, rsp
	mov	r14d, 1
	lea	rdi, [rdi]
	je	.label_854
	lea	rsi, [rsi]
	mov	cl, al
	and	cl, 0x10
	nop	
	jne	.label_854
	mov	rsp, rsp
	and	al, 6
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 4
	lea	rdi, [rdi]
	jne	.label_874
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	mov	r14, qword ptr [rbx + 0x30]
	nop	
	cmp	rax, r14
	ja	.label_869
	xor	ecx, ecx
	test	rax, rax
	mov	rbp, rbp
	cmovle	rsi, rcx
	lea	rdi, [rdi]
	mov	r14d, 1
	lea	rdi, [rdi]
	cmovg	r14, rax
	mov	rsp, rsp
	jmp	.label_872
.label_874:
	mov	r14, qword ptr [rbx + 0x30]
.label_869:
	inc	r14
.label_872:
	mov	rdx, rsi
.label_854:
	mov	qword ptr [rsp + 0x28], rdx
	mov	rsp, rsp
	mov	rdi, r14
	shl	rdi, 4
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, -2
	test	rax, rax
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_848
	lea	rsi, [rsi]
	mov	cl, r13b
	shr	cl, 5
	nop	
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	mov	rsp, rsp
	shr	r13d, 5
	lea	rdi, [rdi]
	or	r13d, ecx
	mov	dword ptr [rsp + 0x10], r13d
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	r13, rax
	mov	qword ptr [rsp], r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	rcx, r15
	mov	r8, r12
	lea	rdi, [rdi]
	mov	rbp, rdi
	mov	r9, qword ptr [rsp + 0x40]
	call	re_search_internal
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_851
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	mov	rbp, rbp
	or	rbp, 0xfffffffffffffffe
	jmp	.label_853
.label_851:
	mov	qword ptr [rsp + 0x38], r15
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_860
	mov	r8, rbp
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	mov	rsp, rsp
	and	al, 3
	mov	rsp, rsp
	movzx	eax, al
	nop	
	cmp	eax, 2
	je	.label_868
	lea	r15, [r14 + 1]
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_873
	mov	qword ptr [rsp + 0x30], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], r8
	test	eax, eax
	jne	.label_877
	lea	r13, [r15*8]
	mov	rdi, r13
	call	malloc
	mov	r12, rax
	mov	qword ptr [rbx + 8], r12
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_855
	mov	rdi, r13
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_864
	mov	qword ptr [rbx], r15
	lea	rdi, [rdi]
	mov	r12d, 1
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	jmp	.label_858
.label_868:
	mov	r15, qword ptr [rbx]
	mov	r12d, 2
	cmp	r15, r14
	mov	rbp, rbp
	jae	.label_858
	mov	edi, OFFSET FLAT:.str.24
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	lea	rdi, [rdi]
	call	__assert_fail
.label_873:
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	r12d, 1
	lea	rdi, [rdi]
	cmp	r15, rax
	ja	.label_862
	mov	rbp, rbp
	mov	r15, rax
.label_858:
	mov	rsp, rsp
	test	r14, r14
	jle	.label_863
	mov	rdx, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x10]
	xor	esi, esi
	test	r14b, 1
	mov	rbp, rbp
	je	.label_866
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	mov	qword ptr [rdx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	esi, 1
.label_866:
	mov	rsp, rsp
	cmp	r14, 1
	je	.label_871
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	sub	rax, rsi
	nop	
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	lea	rsi, [rsi]
	shl	rsi, 4
	lea	rsi, [rsi + r13 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_856:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsi - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx - 8], rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsi - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 8], rbp
	mov	rbp, qword ptr [rsi - 8]
	mov	rbp, rbp
	mov	qword ptr [rdx], rbp
	mov	rsp, rsp
	mov	rbp, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rcx], rbp
	add	rcx, 0x10
	add	rsi, 0x20
	add	rdx, 0x10
	lea	rsi, [rsi]
	add	rax, -2
	jne	.label_856
.label_871:
	nop	
	mov	r15, qword ptr [rbx]
	lea	rdi, [rdi]
	jmp	.label_876
.label_863:
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_876:
	cmp	r14, r15
	mov	rbp, rbp
	jae	.label_861
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_865:
	mov	rbp, rbp
	mov	qword ptr [rcx + r14*8], -1
	mov	rbp, rbp
	mov	qword ptr [rax + r14*8], -1
	nop	
	inc	r14
	cmp	r14, qword ptr [rbx]
	jb	.label_865
.label_861:
	mov	ebp, r12d
.label_850:
	mov	al, byte ptr [r8 + 0x38]
	mov	rsp, rsp
	add	bpl, bpl
	lea	rsi, [rsi]
	and	al, 0xf9
	lea	rsi, [rsi]
	mov	cl, bpl
	lea	rsi, [rsi]
	and	cl, 6
	lea	rdi, [rdi]
	or	cl, al
	and	bpl, 6
	mov	rbp, rbp
	mov	byte ptr [r8 + 0x38], cl
	nop	
	mov	rbp, -2
	mov	rsp, rsp
	je	.label_853
.label_860:
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rbp, qword ptr [r13]
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	je	.label_853
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	jne	.label_859
	mov	rbp, qword ptr [r13 + 8]
	mov	rbp, rbp
	sub	rbp, rax
.label_853:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
.label_848:
	mov	rax, rbp
	add	rsp, 0x48
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_862:
	mov	qword ptr [rsp + 0x40], r8
	nop	
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [r15*8]
	mov	qword ptr [rsp + 0x30], rsi
	call	realloc
	xor	ebp, ebp
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_870
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_852
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_858
.label_864:
	lea	rsi, [rsi]
	mov	rdi, r12
	nop	
	call	free
.label_855:
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x30]
	jmp	.label_850
.label_870:
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_850
.label_852:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_850
.label_877:
	mov	edi, OFFSET FLAT:.str.23
	mov	esi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	lea	rdi, [rdi]
	call	__assert_fail
.label_859:
	nop	
	mov	edi, OFFSET FLAT:.str.21_0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	nop	
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d1e0

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	nop	
	mov	r9, rdx
	call	re_search_stub
	mov	rsp, rsp
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d210
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	nop	
	mov	r15, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_880
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	nop	
	js	.label_882
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_880
	lea	rsi, [rsi]
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_878
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	mov	rbp, rbp
	jle	.label_883
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	call	malloc
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	je	.label_880
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	r13, rax
	nop	
	call	memcpy
	mov	rdi, r12
	mov	rsp, rsp
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	nop	
	mov	r9, r13
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_878
.label_882:
	mov	rbp, rbp
	inc	rax
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, r14
	jle	.label_879
.label_880:
	mov	rsp, rsp
	mov	rax, -2
	jmp	.label_881
.label_879:
	nop	
	add	rbx, r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	mov	rdx, rbx
	jmp	.label_878
.label_883:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x10]
.label_878:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], 1
	nop	
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rsi, r13
	nop	
	mov	rcx, r9
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	nop	
	call	free
	mov	rbp, rbp
	mov	rax, rbx
.label_881:
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d3c0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	rbp, rbp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rax, rbx
	or	rax, r14
	lea	rdi, [rdi]
	or	rax, rbp
	js	.label_884
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	lea	rsi, [rsi]
	js	.label_887
	mov	rbp, rbp
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_884
	nop	
	lea	rdx, [rbx + r14]
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	rbx, rbx
	nop	
	jle	.label_888
	nop	
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	xor	r12d, r12d
	test	r14, r14
	lea	rdi, [rdi]
	jle	.label_885
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_884
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r14
	mov	r13, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, r12
	lea	rdi, [rdi]
	add	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_888
.label_887:
	inc	rax
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, r14
	mov	rbp, rbp
	jle	.label_889
.label_884:
	mov	rbp, rbp
	mov	rax, -2
	jmp	.label_886
.label_889:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	mov	rsp, rsp
	jmp	.label_888
.label_885:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_888:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r12
	call	free
	nop	
	mov	rax, rbx
.label_886:
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d560
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	lea	rdi, [rdi]
	and	al, 0xf9
	mov	r9b, al
	mov	rbp, rbp
	or	r9b, 2
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_890
	lea	rsi, [rsi]
	mov	al, r9b
.label_890:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d5a0

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_891
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	call	free
.label_891:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d620

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x78
	mov	r12, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	cmp	r13, rax
	nop	
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_900
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_900
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_916
.label_900:
	mov	rbp, rbp
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_902
.label_916:
	cmp	r13, r15
	mov	rsp, rsp
	jle	.label_923
	lea	rax, [r12 + 0x78]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	nop	
	lea	r14, [r12 + 0x20]
	jmp	.label_924
.label_917:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_931
	lea	rdi, [rdi]
	cmp	rbp, -2
	jne	.label_935
	nop	
	mov	rax, qword ptr [r12 + 0x40]
	nop	
	cmp	rax, qword ptr [r12 + 0x58]
	mov	rbp, rbp
	jl	.label_935
.label_931:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, r15
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rbp, rbp
	mov	rdx, qword ptr [r12 + 8]
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	mov	rsp, rsp
	je	.label_947
.label_930:
	mov	rax, r15
	jmp	.label_896
.label_947:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_930
	nop	word ptr cs:[rax + rax]
.label_924:
	nop	
	mov	qword ptr [rsp + 0x50], r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	mov	rsp, rsp
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_903
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_903
	call	__ctype_toupper_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	lea	rsi, [rsi]
	mov	rax, r15
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jmp	.label_896
	nop	word ptr cs:[rax + rax]
.label_903:
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	nop	
	add	rbp, r15
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbp, rax
	lea	rax, [rbp - 1]
	mov	rsp, rsp
	cmp	rax, -4
	ja	.label_917
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rsi, [rsi]
	cmp	ebx, dword ptr [rsp + 0xc]
	nop	
	jne	.label_898
	mov	rdi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	add	rdi, r15
	nop	
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	nop	
	add	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	memcpy
	nop	
	jmp	.label_911
.label_898:
	mov	rbp, rbp
	mov	esi, ebx
	mov	dword ptr [rsp + 0x68], esi
	mov	rbx, rbp
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x10]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	lea	rdi, [rdi]
	jne	.label_918
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
.label_911:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	mov	rsp, rsp
	cmp	rax, rbx
	nop	
	jge	.label_896
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	lea	rdi, [rax + r15*4 + 4]
	mov	rbp, rbp
	lea	rdx, [rbp*4 - 4]
	lea	rdi, [rdi]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_896:
	lea	rdi, [rdi]
	cmp	r13, rax
	mov	r15, rax
	mov	rbp, rbp
	jg	.label_924
	jmp	.label_950
.label_918:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_892
.label_935:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [r14], rax
.label_923:
	lea	rsi, [rsi]
	mov	rax, r15
.label_950:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_941
.label_902:
	cmp	r15, r13
	jge	.label_905
	lea	r14, [r12 + 0x20]
	lea	rdi, [rdi]
	lea	rcx, [r12 + 0x78]
.label_892:
	nop	
	mov	rdx, r13
	nop	
	sub	rdx, r15
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_910
	mov	rbp, qword ptr [r12]
	mov	rbp, rbp
	add	rbp, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rbp, rbx
.label_901:
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r14
	call	rpl_mbrtowc
	mov	r14, rax
	mov	rsp, rsp
	lea	rax, [r14 - 1]
	cmp	rax, -4
	mov	rbp, rbp
	ja	.label_926
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x50], r13
	nop	
	mov	edi, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 8]
	je	.label_907
	mov	rsp, rsp
	lea	rdi, [rsp + 0x10]
	nop	
	lea	rdx, [rsp + 0x70]
	lea	rdi, [rdi]
	mov	esi, r13d
	lea	rsi, [rsi]
	call	wcrtomb
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	mov	rbp, rbp
	jne	.label_949
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	jmp	.label_894
.label_910:
	mov	rsp, rsp
	lea	rbp, [rsp + 0x10]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	nop	
	jle	.label_901
	lea	rsi, [rsi]
	mov	r8, rbx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_914:
	cmp	rsi, rdx
	jge	.label_912
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	rbp, rbp
	mov	byte ptr [rsp + rsi + 0x10], bl
	lea	rsi, [rsi]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jl	.label_914
	mov	rbx, r8
	nop	
	jmp	.label_901
.label_926:
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_925
	lea	rsi, [rsi]
	cmp	r14, -2
	jne	.label_928
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_928
.label_925:
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	mov	rbp, rbp
	movzx	edx, al
	test	rcx, rcx
	jne	.label_939
.label_929:
	movzx	eax, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_945
.label_934:
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	nop	
	cmp	r14, -1
	lea	rsi, [rsi]
	je	.label_897
.label_938:
	mov	rbp, r15
	nop	
	jmp	.label_902
.label_949:
	lea	rsi, [rsi]
	cmp	r8, -1
	je	.label_907
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_909
.label_928:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_905:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], r15
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rbx
.label_941:
	xor	eax, eax
.label_943:
	add	rsp, 0x78
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_907:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 8]
	nop	
	add	rdi, r15
	nop	
	mov	rsi, rbp
.label_894:
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	memcpy
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_933
	mov	rax, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	cmp	r14, 4
	mov	rbp, rbp
	jb	.label_940
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	rcx, r14
	mov	rbp, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_940
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	nop	
	jb	.label_948
	lea	rdi, [rdi]
	mov	edx, 1
	movq	xmm1, rdx
	nop	
	pslldq	xmm1, 8
	mov	rsp, rsp
	paddq	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_530]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_948:
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_913
	lea	rsi, [rax + r15*8 + 0x30]
	lea	rdi, [rdi]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	lea	rsi, [rsi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_530]]
	nop	
.label_944:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	mov	rbp, rbp
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rsi, [rsi]
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	lea	rsi, [rsi]
	movdqa	xmm4, xmm3
	lea	rsi, [rsi]
	paddq	xmm4, xmm1
	nop	
	paddq	xmm3, xmm2
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	mov	rsp, rsp
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	nop	
	add	rdx, 8
	nop	
	cmp	rdx, rcx
	mov	rsp, rsp
	jne	.label_944
.label_913:
	mov	rsp, rsp
	cmp	r14, rcx
	nop	
	mov	rsi, rcx
	nop	
	je	.label_933
.label_940:
	mov	rcx, r14
	lea	rsi, [rsi]
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	nop	
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_920:
	mov	rsp, rsp
	mov	qword ptr [rax], rdx
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	add	rax, 8
	dec	rcx
	mov	rsp, rsp
	jne	.label_920
.label_933:
	add	rbx, r14
	nop	
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_906
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, rbp
	lea	rdi, [rdi]
	jmp	.label_902
.label_906:
	mov	rbp, rbp
	mov	rbp, r15
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	jmp	.label_902
.label_912:
	mov	rbx, r8
	jmp	.label_901
.label_909:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_932
	nop	
	shl	rdi, 3
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r8
	lea	rdi, [rdi]
	call	malloc
	mov	r8, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_942
.label_932:
	mov	qword ptr [rsp + 0x58], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_946
	nop	
	test	r15, r15
	je	.label_893
	mov	rbp, rbp
	xor	edx, edx
	cmp	r15, 4
	nop	
	jb	.label_895
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_895
	lea	rdi, [rdi]
	lea	rdi, [r15 - 4]
	mov	rsp, rsp
	mov	rsi, rdi
	lea	rdi, [rdi]
	shr	rsi, 2
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rdi, 2
	lea	rsi, [rsi]
	jb	.label_904
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	nop	
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_530]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	nop	
	mov	edx, 4
.label_904:
	lea	rsi, [rsi]
	test	rsi, rsi
	nop	
	je	.label_921
	mov	rsp, rsp
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_530]]
.label_927:
	movq	xmm2, rdx
	nop	
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	paddq	xmm2, xmm1
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	nop	
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	mov	rsp, rsp
	pshufd	xmm2, xmm2, 0x44
	nop	
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rbp, rbp
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jne	.label_927
.label_921:
	cmp	r15, rcx
	lea	rdi, [rdi]
	mov	rdx, rcx
	je	.label_893
.label_895:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_895
.label_893:
	mov	byte ptr [r12 + 0x8c], 1
.label_946:
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, rbp
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x50], r8
	lea	rsi, [rsi]
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	mov	dword ptr [rax + r15*4], r13d
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x60]
	jb	.label_899
	mov	r9, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	lea	rsi, [rsi]
	cmp	r10, 4
	mov	rsp, rsp
	jb	.label_919
	mov	rbp, rbp
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	lea	rsi, [rsi]
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_919
	lea	rsi, [rsi]
	mov	rax, rcx
	or	rax, 1
	mov	rsp, rsp
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	nop	
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	mov	rbp, rbp
	movq	xmm2, rbx
	nop	
	mov	r11, rbx
	lea	rdi, [rdi]
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	lea	rdi, [rdi]
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_530]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_936]]
	mov	rsp, rsp
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_937]],  0xe8
.label_908:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	lea	rdi, [rdi]
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	nop	
	movdqa	xmm4, xmm5
	lea	rdi, [rdi]
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	mov	rbp, rbp
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	lea	rsi, [rsi]
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	nop	
	movdqa	xmm4, xmm3
	lea	rdi, [rdi]
	pcmpgtd	xmm4, xmm1
	lea	rsi, [rsi]
	pshufd	xmm2, xmm4, 0xa0
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	mov	rsp, rsp
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	nop	
	pandn	xmm0, xmm11
	nop	
	por	xmm0, xmm5
	mov	rbp, rbp
	pand	xmm7, xmm2
	nop	
	pandn	xmm2, xmm11
	nop	
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	lea	rdi, [rdi]
	movq	qword ptr [rdx + rsi*4], xmm6
	lea	rdi, [rdi]
	add	rsi, 4
	nop	
	cmp	r13, rsi
	jne	.label_908
	mov	rbp, rbp
	cmp	r10, r13
	lea	rdi, [rdi]
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	je	.label_899
.label_919:
	lea	rsi, [rsi]
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_922:
	cmp	rax, r14
	nop	
	mov	rsi, r11
	cmovb	rsi, rax
	nop	
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rbp, rbp
	inc	rax
	cmp	rdi, rax
	jne	.label_922
.label_899:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 0x58]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x58], rax
	nop	
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_915
	add	qword ptr [r12 + 0x68], rcx
.label_915:
	nop	
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	lea	rsi, [rsi]
	mov	r15, rbp
	jmp	.label_902
.label_939:
	mov	al, byte ptr [rcx + rdx]
	nop	
	jmp	.label_929
.label_945:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	mov	rbp, rbp
	jmp	.label_934
.label_897:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_938
.label_942:
	mov	rbp, rbp
	mov	eax, 0xc
	lea	rdi, [rdi]
	jmp	.label_943
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e1f0

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	mov	rbp, rbp
	jle	.label_960
	lea	r14, [rbx + 0x20]
	mov	rbp, rbp
	lea	r15, [rsp + 0xc]
	nop	
	jmp	.label_953
	nop	word ptr [rax + rax]
.label_955:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	nop	
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_952
.label_954:
	nop	
	mov	qword ptr [r14], rbp
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_959
.label_951:
	nop	
	mov	ecx, dword ptr [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_959:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	nop	
	jge	.label_958
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rsi, [rsi]
	lea	rdx, [rax*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	mov	rcx, rbp
.label_958:
	nop	
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_953
	mov	rbp, rbp
	jmp	.label_957
.label_963:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	nop	
	lea	rsi, [rsp + 0x10]
	jle	.label_956
	nop	
.label_961:
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_962
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbx + 0x90]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jl	.label_961
	mov	rbp, rbp
	lea	rsi, [rsp + 0x10]
	jmp	.label_956
.label_952:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rsp, rsp
	jmp	.label_954
.label_962:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	nop	
	jmp	.label_956
	nop	word ptr cs:[rax + rax]
.label_953:
	nop	
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, r13
	nop	
	mov	rbp, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_963
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_956:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	cmp	rcx, 2
	jb	.label_955
	cmp	rax, -2
	jne	.label_951
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rbp, rbp
	jge	.label_955
	mov	rbp, rbp
	mov	qword ptr [r14], rbp
.label_960:
	mov	rcx, r13
.label_957:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e410

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r12, rdx
	mov	qword ptr [rsp], rsi
	mov	r14, rdi
	mov	r15, qword ptr [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	call	parse_branch
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	rbx, rbx
	jne	.label_985
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_970
.label_985:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_964
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	or	rax, 0x800000
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rsp + 0x28], 0
	mov	rbp, rbp
	jne	.label_966
	nop	
	jmp	.label_976
.label_964:
	mov	r13, rbx
	jmp	.label_970
.label_983:
	nop	
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_980
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_984
	nop	word ptr cs:[rax + rax]
.label_966:
	nop	
	mov	rdi, r12
	nop	
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	peek_token
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [r14 + 0x48], rax
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	ja	.label_967
	nop	
	mov	ecx, 0x604
	bt	ecx, eax
	mov	rsp, rsp
	mov	ebp, 0
	lea	rsi, [rsi]
	jb	.label_974
.label_967:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [r15 + 0xa8], rax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x28]
	nop	
	mov	r13, qword ptr [rsp + 0x30]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rbp
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_965
	nop	
	mov	eax, dword ptr [r13]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_968
.label_965:
	mov	rax, qword ptr [rsp + 8]
	or	qword ptr [r15 + 0xa8], rax
.label_974:
	mov	ecx, dword ptr [r15 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	nop	
	je	.label_983
	mov	rax, qword ptr [r15 + 0x70]
.label_984:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	r13, [rax + rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_982
	mov	qword ptr [rbx], r13
.label_982:
	test	rbp, rbp
	je	.label_972
	mov	rsp, rsp
	mov	qword ptr [rbp], r13
.label_972:
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbx, r13
	mov	rbp, rbp
	je	.label_966
	jmp	.label_970
.label_981:
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_980
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_987
	nop	word ptr cs:[rax + rax]
.label_976:
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	call	peek_token
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [r14 + 0x48], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [r12 + 8]
	lea	rsi, [rsi]
	or	eax, 8
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	ebp, 0
	je	.label_977
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0xa8], rax
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp + 0x30]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_969
	mov	eax, dword ptr [r13]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_968
.label_969:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	or	qword ptr [r15 + 0xa8], rax
.label_977:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_981
	mov	rax, qword ptr [r15 + 0x70]
.label_987:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_986
	mov	rsp, rsp
	mov	qword ptr [rbx], r13
.label_986:
	test	rbp, rbp
	nop	
	je	.label_978
	mov	qword ptr [rbp], r13
.label_978:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	nop	
	mov	rbx, r13
	nop	
	je	.label_976
	mov	rsp, rsp
	jmp	.label_970
.label_968:
	xor	r13d, r13d
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_970
	mov	rbp, rbp
	mov	r14d, 0x400ff
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_971:
	nop	
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_971
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_971
	nop	dword ptr [rax]
.label_973:
	mov	eax, dword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	and	eax, r14d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_975
	cmp	eax, 6
	mov	rbp, rbp
	jne	.label_979
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_988
	nop	word ptr cs:[rax + rax]
.label_975:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp + 0x28]
.label_988:
	mov	rbp, rbp
	call	free
.label_979:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_970
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	cmp	rbx, rbp
	mov	rbp, rax
	mov	rsp, rsp
	je	.label_973
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rax
	mov	rbp, rbp
	je	.label_973
	lea	rdi, [rdi]
	jmp	.label_971
.label_980:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
.label_970:
	mov	rax, r13
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e910

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_992
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [r15], r12b
	mov	rsp, rsp
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	nop	
	and	eax, 0xff9fffff
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	mov	rbp, rbp
	jl	.label_1001
	nop	
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1001
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rcx + rax*4], -1
	mov	rbp, rbp
	je	.label_1011
.label_1001:
	cmp	r12d, 0x5c
	jne	.label_1016
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1017
	cmp	byte ptr [rbp + 0x8b], 0
	lea	rdi, [rdi]
	jne	.label_1021
.label_991:
	mov	rcx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rcx + rax]
.label_995:
	mov	rsp, rsp
	mov	byte ptr [r15], r14b
	mov	rsp, rsp
	and	ebx, 0xff9fff00
	nop	
	or	ebx, 1
	nop	
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_998
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	mov	rsp, rsp
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	mov	rbp, rbp
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	nop	
	or	eax, ecx
	jmp	.label_994
.label_992:
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 2
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_989
.label_1016:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1004
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	nop	
	call	iswalnum
	mov	rbp, rbp
	test	eax, eax
	nop	
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	nop	
	or	cl, al
	mov	rsp, rsp
	movzx	ecx, cl
	shl	ecx, 0x16
	lea	rdi, [rdi]
	mov	eax, 0xffbfffff
	mov	rbp, rbp
	and	eax, dword ptr [r15 + 8]
	lea	rdi, [rdi]
	or	eax, ecx
	lea	rsi, [rsi]
	jmp	.label_1007
.label_1017:
	lea	rsi, [rsi]
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_1019
.label_1004:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	mov	rbp, rbp
	cmp	r12d, 0x5f
	mov	rbp, rbp
	sete	cl
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	shr	eax, 3
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	shl	eax, 0x16
	or	eax, ebx
.label_1007:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	mov	rsp, rsp
	cmp	r12d, 0x3e
	mov	rbp, rbp
	jg	.label_1012
	mov	rsp, rsp
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	nop	
	ja	.label_993
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_997]]
.label_2473:
	nop	
	mov	rdx, r13
	mov	rbp, rbp
	test	dl, 8
	lea	rsi, [rsi]
	jne	.label_999
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	lea	rsi, [rsi]
	je	.label_999
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x48], rcx
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rbp, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	ja	.label_989
	nop	
	mov	eax, dword ptr [r15 + 8]
.label_999:
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_989
.label_1012:
	mov	rsp, rsp
	cmp	r12d, 0x7a
	lea	rsi, [rsi]
	jg	.label_1018
	cmp	r12d, 0x3f
	je	.label_1020
	lea	rdi, [rdi]
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_1022
	mov	rsp, rsp
	cmp	r12d, 0x5e
	jne	.label_989
	mov	rbp, rbp
	test	edx, 0x800008
	mov	rbp, rbp
	jne	.label_1025
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1025
	test	dh, 8
	je	.label_989
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_989
.label_1025:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x10
	jmp	.label_989
.label_998:
	movzx	ebp, r14b
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	mov	rbp, rbp
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	lea	rdi, [rdi]
	shl	eax, 0x16
	nop	
	or	eax, ebx
.label_994:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	mov	rsp, rsp
	cmp	ecx, 0x5f
	nop	
	jg	.label_1006
	lea	edx, [rcx - 0x27]
	mov	rsp, rsp
	cmp	edx, 0x2c
	mov	rsp, rsp
	ja	.label_1008
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1013]]
.label_2467:
	mov	rdx, r13
	test	dh, 0x40
	lea	rdi, [rdi]
	jne	.label_989
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	lea	rsi, [rsi]
	movsxd	rax, ecx
	nop	
	mov	qword ptr [r15], rax
	jmp	.label_989
.label_1018:
	cmp	r12d, 0x7b
	je	.label_1009
	mov	rsp, rsp
	cmp	r12d, 0x7c
	lea	rsi, [rsi]
	mov	rcx, r13
	lea	rdi, [rdi]
	je	.label_1023
	cmp	r12d, 0x7d
	lea	rdi, [rdi]
	jne	.label_989
	and	ecx, 0x1200
	lea	rdi, [rdi]
	cmp	rcx, 0x1200
	je	.label_1026
	jmp	.label_989
.label_1011:
	mov	rbp, rbp
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_1019:
	mov	dword ptr [r15 + 8], ebx
	mov	rbp, rbp
	mov	r14d, 1
.label_989:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_1006:
	lea	edx, [rcx - 0x73]
	lea	rdi, [rdi]
	cmp	edx, 0xa
	ja	.label_1000
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1003]]
.label_2526:
	lea	rsi, [rsi]
	test	r13d, 0x80000
	jne	.label_989
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_989
.label_993:
	cmp	r12d, 0xa
	mov	rsp, rsp
	jne	.label_989
	lea	rdi, [rdi]
	mov	rcx, r13
	test	ch, 8
	jne	.label_1002
	jmp	.label_989
.label_2474:
	mov	rbp, rbp
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1010
	nop	
	jmp	.label_989
.label_2475:
	mov	rsp, rsp
	mov	rcx, r13
	lea	rdi, [rdi]
	test	ch, 0x20
	lea	rsi, [rsi]
	jne	.label_1014
	lea	rdi, [rdi]
	jmp	.label_989
.label_2476:
	mov	rbp, rbp
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_989
.label_2477:
	test	r13w, 0x402
	lea	rdi, [rdi]
	jne	.label_989
	jmp	.label_1024
.label_2478:
	nop	
	and	eax, 0xffffff00
	or	eax, 5
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_989
.label_1020:
	lea	rsi, [rsi]
	test	r13w, 0x402
	jne	.label_989
	jmp	.label_990
.label_1022:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_989
.label_1009:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	mov	rsp, rsp
	je	.label_996
	jmp	.label_989
.label_1023:
	test	ch, 4
	mov	rsp, rsp
	jne	.label_989
	lea	rsi, [rsi]
	test	cx, cx
	lea	rdi, [rdi]
	js	.label_1002
	lea	rdi, [rdi]
	jmp	.label_989
.label_1000:
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_1005
	nop	
	cmp	ecx, 0x62
	nop	
	jne	.label_989
	test	r13d, 0x80000
	jne	.label_989
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_989
.label_1021:
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_1015
	mov	rdx, qword ptr [rbp + 0x10]
	nop	
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	mov	rbp, rbp
	je	.label_991
	mov	rbp, rbp
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	mov	rsp, rsp
	je	.label_1015
	lea	rsi, [rsi]
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	nop	
	je	.label_991
.label_1015:
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	je	.label_1027
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1027:
	nop	
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	nop	
	je	.label_995
	test	r14b, r14b
	lea	rdi, [rdi]
	js	.label_991
	mov	rbp, rbp
	jmp	.label_995
.label_1008:
	cmp	ecx, 0x57
	mov	rsp, rsp
	jne	.label_989
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_989
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	lea	rdi, [rdi]
	jmp	.label_989
.label_2527:
	nop	
	test	r13d, 0x80000
	lea	rsi, [rsi]
	jne	.label_989
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_989
.label_2528:
	lea	rdi, [rdi]
	and	r13d, 0x1200
	nop	
	cmp	r13, 0x200
	lea	rsi, [rsi]
	jne	.label_989
.label_996:
	lea	rdi, [rdi]
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0x17
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_989
.label_2529:
	mov	rcx, r13
	lea	rsi, [rsi]
	test	ch, 4
	nop	
	jne	.label_989
	test	cx, cx
	js	.label_989
.label_1002:
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_989
.label_2530:
	and	r13d, 0x1200
	lea	rdi, [rdi]
	cmp	r13, 0x200
	jne	.label_989
.label_1026:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_989
.label_1005:
	nop	
	test	r13d, 0x80000
	nop	
	jne	.label_989
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_989
.label_2463:
	test	r13d, 0x80000
	jne	.label_989
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_989
.label_2464:
	mov	rcx, r13
	test	ch, 0x20
	lea	rdi, [rdi]
	jne	.label_989
.label_1010:
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_989
.label_2465:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_989
.label_1014:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_989
.label_2466:
	and	r13d, 0x402
	lea	rdi, [rdi]
	cmp	r13, 2
	jne	.label_989
.label_1024:
	and	eax, 0xffffff00
	mov	rbp, rbp
	or	eax, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_989
.label_2468:
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_989
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	rbp, rbp
	mov	dword ptr [r15], 6
	lea	rdi, [rdi]
	jmp	.label_989
.label_2469:
	test	r13d, 0x80000
	jne	.label_989
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_989
.label_2470:
	nop	
	and	r13d, 0x402
	lea	rsi, [rsi]
	cmp	r13, 2
	jne	.label_989
.label_990:
	and	eax, 0xffffff00
	or	eax, 0x13
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_989
.label_2471:
	mov	rbp, rbp
	test	r13d, 0x80000
	lea	rdi, [rdi]
	jne	.label_989
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_989
.label_2472:
	mov	rsp, rsp
	test	r13d, 0x80000
	nop	
	jne	.label_989
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_989
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f1a0

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r15, r8
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsi]
	call	parse_expression
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rbp, rbp
	test	rbx, rbx
	jne	.label_1032
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1040
.label_1032:
	nop	
	mov	r13, r14
	test	r15, r15
	mov	rsp, rsp
	jne	.label_1046
	jmp	.label_1029
.label_1049:
	test	rbx, rbx
	mov	rbp, rbp
	cmove	rbx, r14
.label_1046:
	movzx	eax, byte ptr [r12 + 8]
	mov	rbp, rbp
	cmp	eax, 0xa
	ja	.label_1031
	mov	ecx, 0x604
	bt	ecx, eax
	mov	rbp, rbp
	jb	.label_1034
.label_1031:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, r15
	mov	rsp, rsp
	mov	r9, r13
	call	parse_expression
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	setne	al
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_1043
	mov	ecx, dword ptr [r13]
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_1055
.label_1043:
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1049
	mov	rbp, rbp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1049
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_1052
	nop	
	mov	rax, qword ptr [rbp + 0x70]
.label_1035:
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	nop	
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	rbp, rbp
	mov	qword ptr [r14], rdx
	mov	rbp, rbp
	mov	rbx, rdx
	jmp	.label_1046
.label_1052:
	lea	rdi, [rdi]
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	nop	
	je	.label_1033
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1035
	nop	word ptr cs:[rax + rax]
.label_1050:
	mov	rbp, rbp
	test	rbx, rbx
	cmove	rbx, r14
.label_1029:
	mov	eax, dword ptr [r12 + 8]
	lea	rdi, [rdi]
	or	eax, 8
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 0xa
	je	.label_1045
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r9, r13
	nop	
	call	parse_expression
	mov	r14, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	setne	al
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_1051
	mov	ecx, dword ptr [r13]
	test	ecx, ecx
	jne	.label_1055
.label_1051:
	mov	rsp, rsp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1050
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_1050
	mov	ecx, dword ptr [rbp + 0x80]
	mov	rsp, rsp
	cmp	ecx, 0xf
	nop	
	je	.label_1057
	mov	rax, qword ptr [rbp + 0x70]
.label_1048:
	lea	edx, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbp + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	lea	rsi, [rsi]
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_1029
.label_1057:
	mov	rbp, rbp
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1033
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_1048
.label_1055:
	xor	r13d, r13d
	test	al, al
	je	.label_1040
	nop	
	mov	r15d, 0x400ff
	mov	rsp, rsp
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_1047:
	lea	rdi, [rdi]
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_1047
	mov	rbx, qword ptr [rbp + 0x10]
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1047
	nop	word ptr cs:[rax + rax]
.label_1042:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r15d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rsp, rsp
	je	.label_1058
	mov	rbp, rbp
	cmp	eax, 6
	jne	.label_1060
	nop	
	mov	rbx, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbx + 8]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	nop	
	call	free
	mov	rdi, rbx
	jmp	.label_1037
	nop	word ptr [rax + rax]
.label_1058:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x28]
.label_1037:
	call	free
.label_1060:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1040
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	cmp	rbx, rbp
	mov	rbp, rax
	nop	
	je	.label_1042
	test	rbx, rbx
	mov	rbp, rax
	mov	rbp, rbp
	je	.label_1042
	jmp	.label_1047
.label_1034:
	mov	r13, rbx
	jmp	.label_1040
.label_1045:
	mov	r13, rbx
.label_1040:
	mov	rbp, rbp
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1033:
	nop	
	mov	r15d, 0x400ff
.label_1038:
	mov	rsp, rsp
	mov	rbp, r14
	mov	r14, qword ptr [rbp + 8]
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_1038
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp + 0x10]
	nop	
	test	r14, r14
	jne	.label_1038
	nop	word ptr cs:[rax + rax]
.label_1044:
	mov	eax, dword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	and	eax, r15d
	mov	rsp, rsp
	cmp	eax, 3
	je	.label_1061
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_1053
	lea	rdi, [rdi]
	mov	r14, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14]
	nop	
	call	free
	mov	rdi, qword ptr [r14 + 8]
	mov	rsp, rsp
	call	free
	nop	
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_1036
.label_1061:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x28]
.label_1036:
	nop	
	call	free
.label_1053:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1041
	mov	r14, qword ptr [rax + 0x10]
	nop	
	cmp	r14, rbp
	mov	rbp, rax
	je	.label_1044
	lea	rdi, [rdi]
	test	r14, r14
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_1044
	lea	rsi, [rsi]
	jmp	.label_1038
.label_1041:
	mov	r14d, 0x400ff
.label_1039:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1039
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1039
	nop	
.label_1030:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x30]
	mov	rsp, rsp
	and	eax, r14d
	cmp	eax, 3
	je	.label_1056
	cmp	eax, 6
	nop	
	jne	.label_1054
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	jmp	.label_1059
.label_1056:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x28]
.label_1059:
	nop	
	call	free
.label_1054:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1028
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	cmp	rbx, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_1030
	test	rbx, rbx
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	je	.label_1030
	mov	rbp, rbp
	jmp	.label_1039
.label_1028:
	mov	dword ptr [r13], 0xc
	xor	r13d, r13d
	jmp	.label_1040
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f750

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xe8
	nop	
	mov	r12, r9
	mov	qword ptr [rsp + 0x98], r12
	mov	rsp, rsp
	mov	r13, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp], rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdi
	mov	eax, dword ptr [rdx + 8]
	mov	rbp, rbp
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	mov	rsp, rsp
	ja	.label_1067
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1204]]
.label_2415:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_4
	nop	
	mov	ecx, OFFSET FLAT:.str.2_2
	nop	
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbx, r9
	mov	r9, r12
	lea	rsi, [rsi]
	call	build_charclass_op
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1308
	mov	r9, rbx
	mov	rbp, rbp
	jmp	.label_1071
.label_2416:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	cmp	ecx, 0x23
	sete	al
	mov	rbp, rbp
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_1
	mov	ecx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_1087
.label_1308:
	nop	
	mov	eax, dword ptr [r12]
	nop	
	test	eax, eax
	mov	rsp, rsp
	mov	r9, rbx
	je	.label_1071
	nop	
	jmp	.label_1067
.label_2406:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1300
	mov	rax, qword ptr [r9 + 0x70]
.label_1220:
	mov	rsp, rsp
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_1106
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_1132
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rdi]
	jmp	.label_1071
.label_1267:
	mov	rbp, r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1141
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	call	peek_token
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1153
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
.label_1078:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp]
	nop	
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1225:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	je	.label_1182
	mov	rax, qword ptr [r9 + 0x70]
.label_1253:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1062
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	lea	rsi, [rsi]
	jg	.label_1132
	lea	rdi, [rdi]
	jmp	.label_1071
.label_1153:
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	mov	rbp, r9
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	r9, rbp
	test	rax, rax
	mov	rsp, rsp
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_1225
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_1078
.label_1182:
	nop	
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	mov	r13, r9
	call	malloc
	nop	
	mov	r9, r13
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_1062
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1253
.label_1132:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1267
	mov	rsp, rsp
	mov	rbp, r15
	jmp	.label_1071
.label_2407:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	eax, cl
	mov	rbp, rbp
	cdqe	
	lea	rsi, [rsi]
	test	qword ptr [r9 + 0xa8], rax
	je	.label_1274
	or	qword ptr [r9 + 0xa0], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rsp, rsp
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1283
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1273:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	movdqu	xmm1, xmmword ptr [rbx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	inc	qword ptr [r9 + 0x98]
	nop	
	or	byte ptr [r9 + 0xb0], 2
	mov	rsp, rsp
	jmp	.label_1071
.label_2408:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1065
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp]
.label_1245:
	mov	qword ptr [rsp], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	nop	
	jle	.label_1071
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_1071
.label_2409:
	mov	qword ptr [rsp + 0x18], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	lea	rax, [r15 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	or	rdx, 0x800000
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	peek_token
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_1121
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rsi, [rsi]
	inc	r13
	nop	
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	lea	rsi, [rsi]
	mov	rsi, rax
	xor	r15d, r15d
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	mov	rsp, rsp
	jne	.label_1067
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_1290
	mov	r15, rbp
.label_1121:
	nop	
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	mov	rbx, r15
	ja	.label_1148
	mov	eax, 1
	mov	cl, bl
	mov	rbp, rbp
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_1148:
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_1160
	mov	rax, qword ptr [r9 + 0x70]
.label_1288:
	mov	rbp, rbp
	mov	qword ptr [rsp], r14
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	nop	
	je	.label_1166
	mov	rbp, rbp
	mov	qword ptr [rsi], rbp
.label_1166:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_1071
.label_2410:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	ecx, 0x20000
	lea	rdi, [rdi]
	jne	.label_1191
	mov	rsp, rsp
	mov	dword ptr [r12], 0x10
	mov	rbp, rbp
	jmp	.label_1066
.label_2412:
	mov	r15, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	mov	rbp, rbp
	je	.label_1202
	mov	al, byte ptr [r9 + 0xb0]
	nop	
	test	al, 0x10
	jne	.label_1125
	lea	rsi, [rsi]
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	nop	
	test	al, 8
	mov	ebp, 0
	mov	rbp, rbp
	jne	.label_1209
	lea	rdi, [rdi]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1215]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	lea	rsi, [rsi]
	mov	ebp, 2
	lea	rsi, [rsi]
	mov	ebx, 0x80
	test	al, 4
	je	.label_1209
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_1125:
	mov	eax, dword ptr [r15]
.label_1202:
	cmp	eax, 0x200
	je	.label_1228
	lea	rsi, [rsi]
	cmp	eax, 0x100
	jne	.label_1232
	mov	dword ptr [r15], 6
	mov	r13, r15
	mov	rbp, rbp
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	lea	rdi, [rdi]
	je	.label_1238
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_1203:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	mov	rbp, rbp
	movsxd	rcx, ebp
	shl	rcx, 6
	nop	
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	mov	rbp, rbp
	jmp	.label_1250
.label_2414:
	mov	rcx, qword ptr [rsp + 0x30]
	test	ecx, 0x1000000
	jne	.label_1173
.label_2411:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	cl, 0x20
	jne	.label_1173
	test	cl, 0x10
	lea	rdi, [rdi]
	jne	.label_1282
.label_1191:
	nop	
	and	eax, 0xffffff00
	mov	rsp, rsp
	or	eax, 1
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 8], eax
	mov	rbp, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1284
	nop	
	mov	rax, qword ptr [r9 + 0x70]
.label_1189:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1258:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_1071
.label_2417:
	mov	dword ptr [r12], 5
	jmp	.label_1066
.label_2413:
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x90], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	lea	rdi, [rdi]
	mov	edi, 0x50
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_1086
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1086
	mov	qword ptr [rsp + 8], rbx
	mov	rbp, qword ptr [rsp]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	mov	rsp, rsp
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0x19
	nop	
	je	.label_1103
	mov	rsp, rsp
	cmp	edx, 2
	je	.label_1108
	mov	dword ptr [rsp + 0xe0], 0
	nop	
	jmp	.label_1112
.label_1087:
	mov	r9, rbx
	nop	
	jmp	.label_1071
.label_1282:
	mov	r15, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x58]
	nop	
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdx, r14
	mov	rsp, rsp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, r13
	mov	rbp, rbp
	mov	r9, r12
	lea	rsi, [rsi]
	add	rsp, 0xe8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	parse_expression
.label_1106:
	mov	rbp, r15
	mov	rsp, rsp
	jmp	.label_1071
.label_1103:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	or	byte ptr [rcx + 0x20], 1
	nop	
	test	bh, 1
	lea	rdi, [rdi]
	je	.label_1145
	or	byte ptr [r13 + 1], 4
.label_1145:
	cdqe	
	nop	
	mov	rsi, qword ptr [rsp + 0x58]
	add	qword ptr [rsi + 0x48], rax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 2
	lea	rsi, [rsi]
	je	.label_1108
	mov	dl, 1
	mov	dword ptr [rsp + 0xe0], edx
.label_1112:
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	movzx	edx, cl
	nop	
	cmp	edx, 0x15
	mov	rsp, rsp
	jne	.label_1168
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp + 8], ecx
.label_1168:
	lea	rcx, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x20], 3
	lea	rdi, [rsp + 0x20]
	mov	r9d, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	r8, rbx
	call	parse_bracket_element
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1193
	mov	rbp, rbp
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0xd0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_1196
.label_1099:
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_1159
	nop	
	mov	qword ptr [rsp + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	lea	rax, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	
	mov	rbp, qword ptr [rsp]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_1196
	lea	rdi, [rdi]
	jmp	.label_1193
.label_2460:
	nop	
	mov	cl, byte ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_1233
.label_2461:
	mov	r15, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	cmp	rbp, rcx
	mov	rbp, rbp
	je	.label_1246
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
.label_1128:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0x28]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	nop	
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_1118
.label_1240:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	al, byte ptr [rax]
	jmp	.label_1248
.label_1264:
	nop	
	xor	eax, eax
.label_1248:
	cmp	ebx, 3
	je	.label_1269
	lea	rsi, [rsi]
	test	ebx, ebx
	jne	.label_1272
	nop	
	mov	bpl, byte ptr [rsp + 0xa8]
	jmp	.label_1140
.label_1269:
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	bpl, byte ptr [rcx]
	lea	rdi, [rdi]
	jmp	.label_1140
.label_1272:
	mov	rbp, rbp
	xor	ebp, ebp
.label_1140:
	lea	rsi, [rsi]
	cmp	r15d, 3
	je	.label_1144
	test	r15d, r15d
	mov	rsp, rsp
	jne	.label_1281
.label_1144:
	test	r12, r12
	movzx	edx, al
	je	.label_1109
	mov	edi, edx
	call	btowc
	mov	rbp, rbp
	mov	edx, eax
	jmp	.label_1109
.label_1281:
	mov	edx, dword ptr [rsp + 0x28]
.label_1109:
	cmp	ebx, 3
	je	.label_1088
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_1254
.label_1088:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_1124
	mov	edi, ebp
	nop	
	mov	ebx, edx
	nop	
	call	btowc
	mov	edx, ebx
	lea	rdi, [rdi]
	mov	ebp, eax
	jmp	.label_1124
.label_1254:
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rsp + 0xa8]
.label_1124:
	mov	rsp, rsp
	cmp	edx, -1
	mov	ecx, 3
	je	.label_1081
	cmp	ebp, -1
	je	.label_1081
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_1259
	cmp	edx, ebp
	lea	rsi, [rsi]
	mov	ecx, 0xb
	ja	.label_1081
.label_1259:
	test	r12, r12
	je	.label_1307
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x50], rax
	je	.label_1309
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	nop	
	mov	r15, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rsp + 0x14]
.label_1129:
	mov	dword ptr [rdi + rax*4], edx
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_1279
.label_1307:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r9, r13
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x14]
.label_1279:
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
.label_1113:
	mov	rbp, rbp
	cmp	rdx, rcx
	mov	rbp, rbp
	ja	.label_1174
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_1174
	lea	rdi, [rdi]
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	lea	rdi, [rdi]
	shr	rdi, 0x3a
	mov	rsp, rsp
	add	rdi, rcx
	mov	rbp, rbp
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_1174:
	lea	rsi, [rsi]
	inc	rcx
	cmp	rcx, 0x100
	lea	rdi, [rdi]
	jne	.label_1113
	mov	dword ptr [r12], 0
	jmp	.label_1118
.label_1246:
	lea	rsi, [rsi]
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1073
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x38], rbp
	nop	
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	jmp	.label_1128
.label_1309:
	mov	dword ptr [rsp + 0xdc], edx
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + rax]
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	lea	rbx, [rax*4 + 4]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	nop	
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	r15, qword ptr [rsp + 8]
	je	.label_1149
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1149
	mov	rax, qword ptr [rsp + 0x50]
	nop	
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0xdc]
	jmp	.label_1129
.label_1196:
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	peek_token_bracket
	mov	rbp, rbp
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0x20]
	nop	
	cmp	r15d, 2
	je	.label_1179
	cmp	r15d, 4
	jne	.label_1185
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, r13
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	mov	rdx, r15
	lea	rcx, [rsp + 0x90]
	mov	r9, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	build_charclass
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_1118
	nop	
	jmp	.label_1298
.label_1185:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	je	.label_1208
	cmp	eax, 2
	jne	.label_1211
	mov	rbp, rbp
	jmp	.label_1213
.label_1208:
	mov	r13, r9
	nop	
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	nop	
	lea	rdi, [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x48]
	mov	rbp, rbp
	cmp	ecx, 0x15
	je	.label_1135
	lea	rsi, [rsi]
	cmp	ecx, 2
	mov	rsp, rsp
	je	.label_1226
	mov	rsp, rsp
	lea	rcx, [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	mov	dword ptr [rsp + 0xa0], 3
	mov	r9d, 1
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xa0]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rbp, rbp
	lea	rdx, [rsp + 0x40]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1255
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	peek_token_bracket
	mov	rbp, rbp
	cmp	dword ptr [r13 + 0xb4], 1
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jg	.label_1266
	xor	r12d, r12d
.label_1266:
	nop	
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	cmp	ebx, 2
	je	.label_1081
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	cmp	ebx, 4
	lea	rdi, [rdi]
	je	.label_1081
	cmp	r15d, 3
	lea	rsi, [rsi]
	jne	.label_1123
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	nop	
	call	strlen
	mov	ecx, 3
	mov	rbp, rbp
	cmp	rax, 1
	ja	.label_1081
.label_1123:
	cmp	ebx, 3
	mov	rbp, rbp
	jne	.label_1181
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xa8]
	call	strlen
	nop	
	mov	ecx, 3
	cmp	rax, 1
	nop	
	ja	.label_1081
.label_1181:
	mov	rbp, rbp
	cmp	r15d, 3
	nop	
	je	.label_1240
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_1264
	mov	al, byte ptr [rsp + 0x28]
	jmp	.label_1248
.label_1135:
	nop	
	mov	eax, ebx
	neg	eax
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_1211:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	mov	eax, r15d
	cmp	r15d, 3
	mov	rbp, rbp
	ja	.label_1068
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1076]]
.label_1179:
	mov	rbp, qword ptr [rsp + 0x28]
	nop	
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_1079
	mov	cl, byte ptr [rbp]
	mov	rbp, rbp
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1233:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
.label_1118:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	nop	
	movzx	eax, byte ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	eax, 0x15
	jne	.label_1099
	mov	rbp, rbp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0xe0]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_1104
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_1104:
	mov	eax, dword ptr [r9 + 0xb4]
	mov	rsp, rsp
	cmp	eax, 2
	nop	
	jl	.label_1122
	mov	rcx, qword ptr [r9 + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	and	qword ptr [r13], rdx
	nop	
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	and	qword ptr [r13 + 0x10], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_1122:
	cmp	qword ptr [r15 + 0x28], 0
	mov	rsp, rsp
	jne	.label_1084
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x30], 0
	mov	rbp, rbp
	jne	.label_1084
	cmp	qword ptr [r15 + 0x38], 0
	mov	rsp, rsp
	jne	.label_1084
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	lea	rsi, [rsi]
	jne	.label_1084
	mov	rsp, rsp
	cmp	eax, 2
	jl	.label_1152
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1084
	test	byte ptr [r15 + 0x20], 1
	nop	
	jne	.label_1084
.label_1152:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1172
	mov	rax, qword ptr [r9 + 0x70]
.label_1075:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1258
.label_1084:
	nop	
	or	byte ptr [r9 + 0xb0], 2
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1197
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1134:
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	nop	
	jne	.label_1176
	nop	
	cmp	qword ptr [r13 + 8], 0
	jne	.label_1176
	nop	
	cmp	qword ptr [r13 + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1176
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_1229
.label_1176:
	nop	
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	mov	eax, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	eax, 0xf
	mov	rsp, rsp
	je	.label_1186
	mov	rbp, qword ptr [r9 + 0x70]
.label_1242:
	mov	rbp, rbp
	lea	ecx, [rax + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	mov	rbp, rbp
	shl	rbx, 6
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	nop	
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	mov	rsp, rsp
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + rbx + 0x40], -1
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1192
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1147:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rdi], rbp
	jmp	.label_1071
.label_1228:
	lea	rsi, [rsi]
	mov	dword ptr [r15], 5
	mov	rbp, rbp
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1297
	mov	rax, qword ptr [r9 + 0x70]
.label_1218:
	lea	ecx, [rbp + 1]
	nop	
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	mov	rbp, rbp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rsp, rsp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	ecx, 0xa
.label_1250:
	mov	dword ptr [r13], ecx
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	ebx, 0xf
	lea	rsi, [rsi]
	je	.label_1154
	mov	rax, qword ptr [r9 + 0x70]
.label_1301:
	lea	ecx, [rbx + 1]
	nop	
	mov	dword ptr [r15], ecx
	nop	
	movsxd	rcx, ebx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1236:
	mov	rbp, rbp
	mov	ecx, dword ptr [r15]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_1110
	mov	rax, qword ptr [r9 + 0x70]
.label_1101:
	lea	edx, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r15], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	nop	
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1115
	mov	qword ptr [rbp], r15
.label_1115:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	je	.label_1062
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	nop	
	test	rbp, rbp
	jne	.label_1136
	jmp	.label_1062
.label_1232:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1142
	mov	rsp, rsp
	mov	r13, r15
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_1230:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rsi, [rsi]
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	nop	
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
.label_1136:
	nop	
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	call	peek_token
	lea	rdi, [rdi]
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1067
.label_1284:
	mov	rbp, r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1062
	lea	rdi, [rdi]
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_1189
.label_1193:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1080
.label_1108:
	mov	dword ptr [r12], 2
	jmp	.label_1206
.label_1159:
	mov	dword ptr [r12], 7
.label_1298:
	mov	qword ptr [rsp + 0x18], r9
	jmp	.label_1089
.label_1141:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_1071
.label_1300:
	mov	rbp, rbp
	mov	rbx, r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_1062
	nop	
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1220
.label_1274:
	mov	dword ptr [r12], 6
	jmp	.label_1066
.label_1065:
	nop	
	mov	rbx, r9
	mov	rsp, rsp
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_1062
	lea	rsi, [rsi]
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	nop	
	jmp	.label_1245
.label_1086:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, rbx
	call	free
	lea	rdi, [rdi]
	jmp	.label_1062
.label_1283:
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1062
	mov	rsp, rsp
	mov	r9, rbp
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1273
.label_1160:
	nop	
	mov	r15, rsi
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_1062
	lea	rdi, [rdi]
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, r15
	jmp	.label_1288
.label_1154:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1236
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1301
.label_1110:
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1062
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_1101
.label_1079:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1080
.label_1209:
	nop	
	mov	r13, r9
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_1120:
	lea	rdi, [rdi]
	mov	rsi, rbx
	xor	eax, eax
	nop	dword ptr [rax]
.label_1116:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_1095
	lea	rsi, [rsi]
	mov	edi, 1
	mov	cl, al
	mov	rsp, rsp
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1095:
	cmp	esi, 0x5f
	mov	rbp, rbp
	je	.label_1102
	mov	rsp, rsp
	movzx	ecx, word ptr [rdx + rsi*2]
	lea	rsi, [rsi]
	and	ecx, 8
	lea	rdi, [rdi]
	test	cx, cx
	nop	
	je	.label_1289
.label_1102:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	lea	rsi, [rsi]
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1289:
	mov	rsp, rsp
	add	rax, 2
	add	rsi, 2
	nop	
	cmp	rax, 0x40
	mov	rbp, rbp
	jne	.label_1116
	inc	rbp
	mov	rsp, rsp
	add	rbx, 0x40
	cmp	ebp, 4
	lea	rdi, [rdi]
	jne	.label_1120
	jmp	.label_1125
.label_1197:
	mov	qword ptr [rsp + 0x60], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1073
	mov	r9, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1134
.label_1186:
	nop	
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x18], r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1073
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1242
.label_1192:
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_1073
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	jmp	.label_1147
.label_1213:
	mov	dword ptr [r12], 7
	mov	rsp, rsp
	jmp	.label_1080
.label_1238:
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 9
	mov	rsp, rsp
	xor	ebp, ebp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1195
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1203
.label_1297:
	nop	
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_1214
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1218
.label_1142:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1062
	mov	r13, r15
	mov	r9, rbx
	mov	rbp, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_1230
.label_1062:
	lea	rdi, [rdi]
	mov	dword ptr [r12], 0xc
	lea	rsi, [rsi]
	jmp	.label_1066
.label_1226:
	mov	dword ptr [r12], 7
	jmp	.label_1251
.label_1229:
	mov	rbp, rdi
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rbx, r9
	lea	rdi, [rdi]
	call	free
	mov	r9, rbx
	lea	rdi, [rdi]
	jmp	.label_1071
.label_1290:
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_1263
	mov	rsp, rsp
	mov	r14d, 0x400ff
.label_1271:
	nop	
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_1271
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	test	rsi, rsi
	jne	.label_1271
.label_1295:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	mov	rsp, rsp
	je	.label_1276
	nop	
	cmp	eax, 6
	jne	.label_1278
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1291
.label_1276:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1291:
	nop	
	call	free
.label_1278:
	mov	rax, qword ptr [rbp]
	nop	
	test	rax, rax
	je	.label_1263
	mov	rsi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rsi, rbp
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_1295
	test	rsi, rsi
	mov	rbp, rax
	je	.label_1295
	jmp	.label_1271
.label_1263:
	lea	rsi, [rsi]
	mov	dword ptr [r12], 8
	jmp	.label_1066
.label_1195:
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1250
.label_1214:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_1250
.label_1255:
	mov	dword ptr [r12], eax
	mov	rbp, rbp
	jmp	.label_1251
.label_1172:
	mov	qword ptr [rsp + 0x60], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1073
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_1075
.label_1073:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_1206:
	nop	
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_1089
.label_1149:
	call	free
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	nop	
	mov	ecx, 0xc
.label_1081:
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], ecx
.label_1251:
	mov	rsp, rsp
	mov	r9, r13
.label_1080:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
.label_1089:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	ebp, 0
	jne	.label_1067
.label_1071:
	mov	qword ptr [rsp + 0x18], r9
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdx, r14
	mov	rbp, rbp
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	nop	
	mov	eax, r14d
	nop	
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0xd0], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x50], r14
	nop	dword ptr [rax]
.label_1280:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 8]
	nop	
	cmp	eax, 0x17
	ja	.label_1151
	mov	rsp, rsp
	mov	ecx, 0x8c0800
	mov	rbp, rbp
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_1156
	mov	r14, qword ptr [r13 + 0x48]
	nop	
	movdqu	xmm0, xmmword ptr [rbx]
	nop	
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	mov	rdx, -1
	nop	
	cmp	eax, 0x17
	mov	rbp, rbp
	je	.label_1163
	mov	r14, rbp
	lea	rsi, [rsi]
	cmp	eax, 0x12
	nop	
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	lea	rsi, [rsi]
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rbp, rbp
	cmove	rcx, rax
	jmp	.label_1169
.label_1221:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*4]
	nop	
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	mov	rsp, rsp
	cmovle	rdx, rax
	nop	dword ptr [rax]
.label_1163:
	mov	rsp, rsp
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	nop	
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_1198
	nop	
	cmp	eax, 2
	je	.label_1205
	lea	rsi, [rsi]
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_1162
	nop	
	cmp	ecx, 0x30
	mov	rdx, -2
	nop	
	jb	.label_1163
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_1163
	cmp	r15, -2
	je	.label_1163
	cmp	ecx, 0x39
	nop	
	ja	.label_1163
	nop	
	cmp	r15, -1
	mov	rbp, rbp
	jne	.label_1221
	lea	rdx, [rcx - 0x30]
	nop	
	jmp	.label_1163
.label_1162:
	lea	rdi, [rdi]
	mov	esi, eax
	nop	dword ptr [rax]
.label_1198:
	cmp	r15, -1
	lea	rdi, [rdi]
	jne	.label_1222
	movzx	eax, dl
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_1224
	cmp	esi, 1
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_1227
.label_1224:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], rbp
	mov	rbp, rbp
	jmp	.label_1231
	nop	word ptr cs:[rax + rax]
.label_1222:
	cmp	r15, -2
	je	.label_1205
	lea	rdi, [rdi]
	cmp	esi, 0x18
	mov	rsp, rsp
	je	.label_1243
	cmp	esi, 1
	lea	rsi, [rsi]
	jne	.label_1205
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_1205
.label_1227:
	mov	qword ptr [rsp + 0x60], r14
	nop	
	mov	r14, rbp
	mov	rbp, r12
	lea	rsi, [rsi]
	mov	rdx, -1
	jmp	.label_1187
.label_1243:
	mov	rbp, rbp
	mov	r14, rbp
	mov	rcx, r15
	mov	rbp, rbp
	jmp	.label_1261
.label_1216:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	nop	
	cmovg	rdx, rax
.label_1187:
	mov	r12, rdx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	call	peek_token
	cdqe	
	lea	rsi, [rsi]
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 8]
	mov	rsp, rsp
	cmp	eax, 0x18
	lea	rsi, [rsi]
	je	.label_1277
	cmp	eax, 2
	je	.label_1285
	lea	rsi, [rsi]
	cmp	ecx, 0x2c
	je	.label_1277
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1187
	mov	rbp, rbp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_1187
	cmp	r12, -2
	je	.label_1187
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0x39
	nop	
	ja	.label_1187
	lea	rdi, [rdi]
	cmp	r12, -1
	mov	rsp, rsp
	jne	.label_1216
	nop	
	add	rcx, -0x30
	mov	rdx, rcx
	nop	
	jmp	.label_1187
.label_1277:
	mov	rcx, r12
	lea	rsi, [rsi]
	cmp	rcx, -2
	lea	rsi, [rsi]
	je	.label_1285
	cmp	rcx, -1
	mov	r12, rbp
	lea	rsi, [rsi]
	je	.label_1261
	cmp	r15, rcx
	mov	rsp, rsp
	jg	.label_1063
.label_1261:
	cmp	eax, 0x18
	nop	
	jne	.label_1063
	mov	rsp, rsp
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	lea	rdi, [rdi]
	jge	.label_1070
	nop	dword ptr [rax]
.label_1169:
	lea	rdi, [rdi]
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	mov	rsp, rsp
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], r14
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_1069
	lea	rsi, [rsi]
	mov	r9, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r9
	mov	rax, r9
	lea	rsi, [rsi]
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rax, rdi
	lea	rsi, [rsi]
	je	.label_1096
	test	r15, r15
	lea	rdi, [rdi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	nop	
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	jg	.label_1107
.label_1158:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x11
	jne	.label_1117
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_1090:
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1090
	mov	rdx, qword ptr [rcx + 0x10]
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1090
	nop	
.label_1146:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	esi, 0x11
	mov	rsp, rsp
	jne	.label_1133
	cmp	qword ptr [rcx + 0x28], rax
	nop	
	jne	.label_1133
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1133:
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1117
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rsi
	je	.label_1146
	lea	rsi, [rsi]
	test	rdx, rdx
	nop	
	mov	rcx, rsi
	mov	rbp, rbp
	je	.label_1146
	jmp	.label_1090
	nop	dword ptr [rax + rax]
.label_1117:
	nop	
	mov	qword ptr [rsp + 0xe0], rdi
	nop	
	cmp	r9, -1
	sete	bl
	nop	
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1305
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + 0x70]
.label_1072:
	lea	rdi, [rdi]
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	nop	
	mov	dword ptr [r8 + 0x80], esi
	mov	rbp, rbp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	nop	
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	r12, r12
	je	.label_1167
	mov	rsp, rsp
	mov	qword ptr [r12], r13
.label_1167:
	lea	rsi, [rsi]
	add	r15, 2
	cmp	r15, r9
	jg	.label_1190
	nop	
	jmp	.label_1194
	nop	word ptr cs:[rax + rax]
.label_1096:
	mov	rbx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1096
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1096
	nop	
.label_1100:
	nop	
	mov	eax, dword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	ecx, 0x400ff
	and	eax, ecx
	nop	
	cmp	eax, 3
	lea	rsi, [rsi]
	je	.label_1207
	mov	rbp, rbp
	cmp	eax, 6
	jne	.label_1212
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	nop	
	mov	rdi, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, rbp
	jmp	.label_1223
	nop	dword ptr [rax]
.label_1207:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1223:
	mov	rsp, rsp
	call	free
.label_1212:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_1069
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	je	.label_1100
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, rdx
	je	.label_1100
	jmp	.label_1096
.label_1074:
	mov	qword ptr [rsp + 8], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r15
	lea	rdi, [rdi]
	mov	r15, r8
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1256
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r8 + 0x80], 0
	nop	
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1260
.label_1127:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	lea	rdi, [rdi]
	jmp	.label_1294
.label_1217:
	mov	edi, 0x3c8
	mov	rsp, rsp
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r8, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1199
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1241
.label_1256:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1247
.label_1201:
	mov	qword ptr [r14], 0
.label_1247:
	xor	r12d, r12d
.label_1294:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	test	rax, rax
	mov	r8, r15
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	je	.label_1199
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r8 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1292
	nop	word ptr cs:[rax + rax]
.label_1194:
	mov	rsp, rsp
	mov	rbp, qword ptr [r12]
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1074
	mov	rax, qword ptr [r8 + 0x70]
.label_1260:
	lea	rdx, [r12 + 0x28]
	nop	
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	lea	r14, [rsp + 0x70]
	jmp	.label_1083
	nop	dword ptr [rax + rax]
.label_1150:
	lea	rdx, [r12 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	nop	
	lea	rcx, [rax + rsi + 8]
	nop	
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r14], rcx
.label_1083:
	mov	qword ptr [rcx], rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1130
	mov	rsp, rsp
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_1139
	nop	word ptr [rax + rax]
.label_1130:
	mov	rbp, rbp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1094:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r12, rcx
	je	.label_1303
	test	r12, r12
	jne	.label_1092
.label_1303:
	mov	r12, qword ptr [rax]
	nop	
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_1094
	nop	
	jmp	.label_1157
.label_1092:
	lea	r14, [rbp + 0x10]
.label_1139:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	nop	
	je	.label_1171
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1150
.label_1171:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1201
	mov	r8, r15
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1150
	nop	word ptr cs:[rax + rax]
.label_1157:
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1127
	mov	rax, qword ptr [r8 + 0x70]
	nop	
	mov	r12, rbx
.label_1292:
	nop	
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	nop	
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_1199
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1217
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1241:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	r13, [rax + rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rbx
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	nop	
	lea	r15, [r15 + 1]
	lea	rdi, [rdi]
	jl	.label_1194
.label_1190:
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	je	.label_1249
	mov	rbx, rax
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x98]
	je	.label_1252
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1180:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	rdx, [rax + rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	nop	
	jmp	.label_1265
.label_1249:
	mov	r12, qword ptr [rsp + 0x98]
.label_1265:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, r13
	nop	
	jmp	.label_1137
.label_1063:
	mov	qword ptr [rsp + 0xe0], r14
.label_1231:
	nop	
	mov	dword ptr [r12], 0xa
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_1069
.label_1107:
	mov	rbp, rbp
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rbp
	mov	rbp, rdi
	jl	.label_1296
	mov	rax, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	rbp, rbp
	mov	ebx, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	jmp	.label_1287
.label_1305:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	lea	rdi, [rdi]
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r8, rbp
	test	rax, rax
	je	.label_1199
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	rsp, rsp
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	jmp	.label_1072
.label_1285:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_1205:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x50], 0
	nop	
	je	.label_1085
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xb0]
	nop	
	movdqu	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 8], 1
	nop	
	mov	rcx, rbp
	mov	qword ptr [rsp + 0xe0], rbp
	jmp	.label_1069
.label_1155:
	nop	
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 8], r9
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1105
	mov	rbp, rbp
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1299
.label_1082:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	rsp, rsp
	mov	r13, rbp
	jmp	.label_1262
.label_1105:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_1126
.label_1257:
	lea	rsi, [rsi]
	mov	qword ptr [r12], 0
.label_1126:
	nop	
	xor	r13d, r13d
.label_1262:
	lea	rdi, [rdi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	nop	
	je	.label_1199
	mov	rbp, rbp
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jmp	.label_1143
	nop	
.label_1287:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1155
	mov	rsp, rsp
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1299:
	lea	rsi, [rsi]
	lea	rdx, [r13 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbp
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	r12, [rsp + 0x70]
	jmp	.label_1164
	nop	word ptr cs:[rax + rax]
.label_1165:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rsi, [rsi]
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r12], rcx
.label_1164:
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	lea	rsi, [rsi]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1210
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_1219
	nop	dword ptr [rax]
.label_1210:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1235:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_1293
	test	r13, r13
	lea	rdi, [rdi]
	jne	.label_1188
.label_1293:
	nop	
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_1235
	jmp	.label_1239
.label_1188:
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rsi, [rsi]
	lea	r12, [r14 + 0x10]
.label_1219:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1244
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1165
.label_1244:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_1257
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1165
	nop	word ptr cs:[rax + rax]
.label_1239:
	mov	ecx, dword ptr [r8 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_1082
	nop	
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_1143:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	nop	
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1184
	mov	qword ptr [rdi], rdx
.label_1184:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_1199
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	nop	
	jl	.label_1287
.label_1296:
	cmp	r15, r9
	mov	rsp, rsp
	jne	.label_1064
	mov	qword ptr [rsp + 0x18], r8
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	jmp	.label_1069
.label_1252:
	mov	qword ptr [rsp + 0x18], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_1069
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_1180
.label_1064:
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1098
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1237:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	rdi, [rdi]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], r12
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rbp, [rsp + 0x70]
	jmp	.label_1304
	nop	word ptr cs:[rax + rax]
.label_1093:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rbp, rbp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	rbp, rbp
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rbp], rcx
.label_1304:
	mov	rsp, rsp
	mov	qword ptr [rcx], rbx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1161
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_1177
.label_1161:
	lea	rsi, [rsi]
	xor	eax, eax
.label_1178:
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rax, r13
	nop	
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_1170
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_1175
.label_1170:
	mov	rsp, rsp
	mov	r13, qword ptr [rax]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx]
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	jne	.label_1178
	jmp	.label_1183
.label_1175:
	lea	rbp, [rbx + 0x10]
.label_1177:
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1268
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1093
.label_1268:
	mov	qword ptr [rsp + 8], r9
	mov	r14, r8
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_1091
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1093
.label_1085:
	mov	qword ptr [rsp + 0xe0], rbp
	cmp	eax, 2
	setne	al
	nop	
	movzx	eax, al
	mov	rbp, rbp
	add	eax, 9
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_1069
.label_1183:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xe0]
	jmp	.label_1158
.label_1070:
	mov	qword ptr [rsp + 0xe0], r14
	mov	rsp, rsp
	mov	dword ptr [r12], 0xf
	nop	
	xor	ecx, ecx
	jmp	.label_1069
.label_1098:
	lea	rsi, [rsi]
	mov	r14, r9
	nop	
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1234
	nop	
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	r8, r12
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	nop	
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	rsp, rsp
	mov	r9, r14
	lea	rdi, [rdi]
	jmp	.label_1237
.label_1234:
	mov	qword ptr [rsp + 0x70], 0
	nop	
	jmp	.label_1199
.label_1091:
	lea	rsi, [rsi]
	mov	qword ptr [rbp], 0
.label_1199:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_1069:
	test	rcx, rcx
	nop	
	sete	al
	jne	.label_1137
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12]
	lea	rdi, [rdi]
	test	edx, edx
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	je	.label_1270
	lea	rsi, [rsi]
	jmp	.label_1275
	nop	word ptr cs:[rax + rax]
.label_1137:
	mov	rbx, qword ptr [rsp]
.label_1270:
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rbp, rcx
	nop	
	mov	r13, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	je	.label_1280
	nop	
	movzx	edx, byte ptr [rbx + 8]
	mov	rbp, rbp
	cmp	edx, 0x17
	mov	rbp, rbp
	je	.label_1286
	nop	
	cmp	edx, 0xb
	nop	
	mov	rbp, rcx
	mov	rbp, rbp
	jne	.label_1280
.label_1286:
	mov	rbp, rbp
	test	al, al
	jne	.label_1173
	mov	r14d, 0x400ff
	nop	word ptr cs:[rax + rax]
.label_1097:
	nop	
	mov	rbp, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	jne	.label_1097
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_1097
	nop	
.label_1200:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	and	eax, r14d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_1302
	lea	rsi, [rsi]
	cmp	eax, 6
	nop	
	jne	.label_1306
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	nop	
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	nop	
	mov	rdi, rbx
	jmp	.label_1077
	nop	dword ptr [rax + rax]
.label_1302:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1077:
	lea	rsi, [rsi]
	call	free
.label_1306:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1173
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1200
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1200
	jmp	.label_1097
.label_1275:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0xe0]
	test	rcx, rcx
	nop	
	je	.label_1067
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1111:
	mov	rbp, rcx
	nop	
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_1111
	nop	
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_1111
	nop	dword ptr [rax]
.label_1138:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1114
	cmp	eax, 6
	jne	.label_1119
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	call	free
	mov	rdi, rbx
	jmp	.label_1131
	nop	
.label_1114:
	nop	
	mov	rdi, qword ptr [rbp + 0x28]
.label_1131:
	lea	rsi, [rsi]
	call	free
.label_1119:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1067
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1138
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_1138
	mov	rsp, rsp
	jmp	.label_1111
.label_1173:
	mov	dword ptr [r12], 0xd
.label_1066:
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_1067
.label_1151:
	lea	rdi, [rdi]
	mov	r15, rbp
	mov	rsp, rsp
	jmp	.label_1067
.label_1156:
	mov	r15, rbp
.label_1067:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1068:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	lea	rdi, [rdi]
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4129b0

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 0x14], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1327
	mov	qword ptr [rsp], r15
	nop	
	mov	edi, 0x50
	nop	
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1321
	lea	rdi, [rdi]
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0x14]
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 0x20], al
	nop	
	lea	rcx, [rsp + 8]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	nop	
	call	build_charclass
	mov	rbp, rbp
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jne	.label_1322
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1325
	lea	rdi, [rdi]
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1317:
	movsx	rcx, al
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	lea	rdi, [rdi]
	shr	rdx, 0x3a
	add	rdx, rcx
	lea	rsi, [rsi]
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1317
.label_1325:
	mov	eax, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_1319
	movdqu	xmm0, xmmword ptr [rbx]
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm1
	lea	rsi, [rsi]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	mov	rsp, rsp
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	mov	rbp, rbp
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1319:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1310
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	nop	
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	and	qword ptr [rbx + 0x18], rax
.label_1310:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1318
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x70]
.label_1316:
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	lea	r14, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0xb4], 2
	lea	rsi, [rsi]
	jl	.label_1320
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0xb0], 2
	mov	rsp, rsp
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	lea	rsi, [rsi]
	je	.label_1324
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 0x70]
.label_1323:
	lea	rdi, [rdi]
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12 + 0x80]
	nop	
	cmp	eax, 0xf
	je	.label_1326
	mov	rcx, qword ptr [r12 + 0x70]
.label_1312:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	nop	
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	lea	rax, [rcx + rsi + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + rsi + 8], 0
	nop	
	mov	qword ptr [rcx + rsi + 0x10], r14
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1313
.label_1320:
	mov	rdi, qword ptr [r15]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_1313
.label_1327:
	mov	rsp, rsp
	mov	dword ptr [r15], 0xc
	nop	
	jmp	.label_1311
.label_1321:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1315
.label_1322:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_1311
.label_1318:
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1314
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1316
.label_1324:
	mov	edi, 0x3c8
	call	malloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1314
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x70], rbp
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x80], 0
	nop	
	xor	eax, eax
	jmp	.label_1323
.label_1314:
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
.label_1315:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1311:
	xor	eax, eax
.label_1313:
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_1326:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	test	rcx, rcx
	nop	
	je	.label_1313
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], 0
	mov	rsp, rsp
	jmp	.label_1312
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412ec0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	lea	rsi, [rsi]
	jle	.label_1328
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	mov	rsp, rsp
	jl	.label_1334
	mov	rsp, rsp
	mov	r8, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1334
	mov	rcx, qword ptr [rsi + 0x10]
	nop	
	cmp	dword ptr [rcx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_1333
.label_1334:
	test	dl, 1
	mov	rsp, rsp
	je	.label_1331
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	jne	.label_1331
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1331
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x48], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	lea	rsi, [rsi]
	jmp	.label_1333
.label_1328:
	mov	byte ptr [rdi + 8], 2
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_1331:
	mov	rbp, rbp
	cmp	eax, 0x5b
	jne	.label_1335
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1336
	mov	rcx, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	jmp	.label_1332
.label_1335:
	cmp	eax, 0x5e
	nop	
	je	.label_1340
	lea	rdi, [rdi]
	cmp	eax, 0x5d
	je	.label_1330
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_1333
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	lea	rsi, [rsi]
	ret	
.label_1333:
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_1336:
	mov	rbp, rbp
	xor	eax, eax
.label_1332:
	mov	byte ptr [rdi], al
	nop	
	movzx	eax, al
	nop	
	cmp	eax, 0x3d
	je	.label_1339
	cmp	eax, 0x3a
	je	.label_1329
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_1337
	mov	byte ptr [rdi + 8], 0x1a
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1330:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1329:
	mov	rsp, rsp
	test	dl, 4
	mov	rsp, rsp
	jne	.label_1338
.label_1337:
	nop	
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1340:
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 8], 0x19
	mov	rsp, rsp
	mov	eax, 1
	ret	
.label_1339:
	mov	byte ptr [rdi + 8], 0x1c
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1338:
	mov	byte ptr [rdi + 8], 0x1e
	lea	rdi, [rdi]
	mov	eax, 2
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413040

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	r15, rdx
	nop	
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1347
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	nop	
	jge	.label_1347
	nop	
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	
.label_1352:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_1341
	lea	rsi, [rsi]
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	lea	rdi, [rdi]
	jl	.label_1352
.label_1341:
	cmp	edi, 2
	lea	rsi, [rsi]
	jl	.label_1347
	mov	dword ptr [r14], 1
	mov	rbp, rbp
	mov	eax, dword ptr [r10 + rdx*4]
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	nop	
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1355
.label_1347:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	mov	rbp, rbp
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_1350
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1359]]
.label_2545:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	mov	rsp, rsp
	jle	.label_1345
	mov	rbp, rbp
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_1342
	nop	dword ptr [rax]
.label_1361:
	inc	r12
	mov	rbp, rbp
	movzx	edi, byte ptr [r15 + 8]
.label_1342:
	lea	rsi, [rsi]
	movzx	edi, dil
	mov	rsp, rsp
	cmp	edi, 0x1e
	nop	
	jne	.label_1348
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1346
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	nop	
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1351
	nop	word ptr cs:[rax + rax]
.label_1348:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 8]
.label_1344:
	mov	bl, byte ptr [rbx + rdx]
.label_1351:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1345
	nop	
	movzx	edx, r11b
	movzx	ecx, bl
	nop	
	cmp	ecx, edx
	jne	.label_1343
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_1358
.label_1343:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	byte ptr [rcx + r12], bl
	lea	rdi, [rdi]
	cmp	r12, 0x1e
	lea	rdi, [rdi]
	jle	.label_1361
	jmp	.label_1345
.label_1346:
	mov	rbp, rbp
	cmp	byte ptr [rsi + 0x8c], 0
	lea	rdi, [rdi]
	je	.label_1353
	nop	
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	nop	
	cmp	r8, r9
	lea	rsi, [rsi]
	je	.label_1356
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_1360
.label_1356:
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1360
	nop	
	mov	edi, 1
	nop	
	cmp	dword ptr [rsi + 0x90], 1
	mov	rsp, rsp
	je	.label_1349
	lea	rdx, [r8 + 1]
	nop	
	cmp	rdx, r9
	jge	.label_1349
	lea	r10, [r8*4]
	lea	rdi, [rdi]
	add	r10, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	mov	edi, 1
.label_1357:
	lea	rdi, [rdi]
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1349
	lea	rdx, [r8 + rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	cmp	rdx, r9
	jl	.label_1357
.label_1349:
	movsxd	rdi, edi
	mov	rsp, rsp
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	jmp	.label_1351
.label_1353:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	mov	rbx, qword ptr [rsi]
	jmp	.label_1344
.label_1360:
	lea	rdi, [r8 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1351
.label_1358:
	mov	rsp, rsp
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	movsxd	rax, r12d
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x1e
	je	.label_1354
	cmp	ecx, 0x1c
	je	.label_1362
	cmp	ecx, 0x1a
	mov	rbp, rbp
	jne	.label_1345
	mov	dword ptr [r14], 3
	nop	
	jmp	.label_1345
.label_1354:
	mov	dword ptr [r14], 4
	lea	rdi, [rdi]
	jmp	.label_1345
.label_1362:
	mov	dword ptr [r14], 2
	lea	rdi, [rdi]
	jmp	.label_1345
.label_2544:
	test	r9b, r9b
	lea	rsi, [rsi]
	jne	.label_1350
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1345
.label_1350:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1355:
	xor	eax, eax
.label_1345:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413370

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r12, r8
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	test	r9d, 0x400000
	je	.label_1398
	nop	
	mov	esi, OFFSET FLAT:.str.7_1
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_1375
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1398
.label_1375:
	nop	
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1398:
	nop	
	mov	rbp, qword ptr [r13]
	nop	
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1417
.label_1411:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	wctype
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_4
	nop	
	mov	rdi, r12
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_1373
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	nop	
	je	.label_1383
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1392
	mov	esi, OFFSET FLAT:.str.3_1
	nop	
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1406
	mov	esi, OFFSET FLAT:.str.9_1
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_1387
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_2
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_1409
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_1
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1403
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1420
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13_1
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1426
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1371
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_1389
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	nop	
	mov	eax, 4
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_1366
	lea	rdi, [rdi]
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1374
.label_1410:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_1425
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1425:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	jne	.label_1410
	mov	rsp, rsp
	jmp	.label_1366
.label_1373:
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1391
	nop	
.label_1368:
	lea	rdi, [rdi]
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1421
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1421:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	jne	.label_1368
	jmp	.label_1366
	nop	dword ptr [rax]
.label_1391:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1380
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	rax, cl
	mov	rbp, rbp
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1380:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_1391
	jmp	.label_1366
.label_1383:
	call	__ctype_b_loc
	mov	rsp, rsp
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_1365
	nop	word ptr cs:[rax + rax]
.label_1414:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1404
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	nop	
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_1404:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_1414
	jmp	.label_1366
	nop	
.label_1365:
	test	byte ptr [rsi + rdx*2], 2
	lea	rsi, [rsi]
	je	.label_1386
	lea	rsi, [rsi]
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_1386:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	nop	
	jne	.label_1365
	nop	
	jmp	.label_1366
.label_1392:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_1376
	nop	dword ptr [rax + rax]
.label_1399:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1385
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	mov	rsp, rsp
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 6
	lea	rdi, [rdi]
	or	qword ptr [r15 + rcx*8], rax
.label_1385:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_1399
	mov	rsp, rsp
	jmp	.label_1366
	nop	word ptr cs:[rax + rax]
.label_1376:
	lea	rsi, [rsi]
	test	byte ptr [rsi + rdx*2 + 1], 2
	mov	rsp, rsp
	je	.label_1407
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1407:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1376
	mov	rbp, rbp
	jmp	.label_1366
.label_1406:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1397
	nop	
.label_1381:
	mov	rsp, rsp
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1363
	nop	
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	mov	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 0x3f
	lea	rdi, [rdi]
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1363:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1381
	nop	
	jmp	.label_1366
.label_1397:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1390
	mov	cl, byte ptr [r14 + rdx]
	nop	
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1390:
	lea	rsi, [rsi]
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	rdx, 0x100
	jne	.label_1397
	jmp	.label_1366
.label_1417:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1366
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	mov	rsp, rsp
	jmp	.label_1411
.label_1387:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	jne	.label_1395
	nop	word ptr cs:[rax + rax]
.label_1377:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 4
	lea	rdi, [rdi]
	je	.label_1424
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	mov	rbp, rbp
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	sar	rcx, 0x3f
	mov	rbp, rbp
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1424:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1377
	jmp	.label_1366
.label_1395:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1388
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1388:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1395
	jmp	.label_1366
.label_1409:
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1369
	nop	dword ptr [rax]
.label_1418:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1379
	mov	rbp, rbp
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1379:
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	jne	.label_1418
	mov	rbp, rbp
	jmp	.label_1366
.label_1369:
	test	byte ptr [rsi + rdx*2 + 1], 8
	nop	
	je	.label_1423
	mov	rbp, rbp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	nop	
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1423:
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1369
	mov	rbp, rbp
	jmp	.label_1366
.label_1403:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_1384
	nop	dword ptr [rax + rax]
.label_1402:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1422
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_1422:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_1402
	jmp	.label_1366
.label_1384:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1408
	mov	rsp, rsp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	lea	rsi, [rsi]
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1408:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1384
	nop	
	jmp	.label_1366
.label_1420:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	jne	.label_1372
	nop	
.label_1416:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1413
	lea	rsi, [rsi]
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	nop	
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1413:
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	nop	
	jne	.label_1416
	jmp	.label_1366
.label_1372:
	test	byte ptr [rsi + rdx*2 + 1], 1
	lea	rdi, [rdi]
	je	.label_1382
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1382:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1372
	jmp	.label_1366
.label_1426:
	nop	
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	jne	.label_1364
	nop	word ptr cs:[rax + rax]
.label_1415:
	test	byte ptr [rsi + rdx*2], 1
	lea	rdi, [rdi]
	je	.label_1412
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rbp, rbp
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1412:
	mov	rsp, rsp
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1415
	jmp	.label_1366
.label_1364:
	test	byte ptr [rsi + rdx*2], 1
	lea	rsi, [rsi]
	je	.label_1419
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rbp, rbp
	or	qword ptr [r15 + rcx*8], rax
.label_1419:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1364
	jmp	.label_1366
.label_1371:
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_1405
.label_1394:
	mov	rbp, rbp
	cmp	word ptr [rsi + rdx*2], 0
	nop	
	jns	.label_1378
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	lea	rsi, [rsi]
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 6
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_1378:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1394
	nop	
	jmp	.label_1366
.label_1405:
	cmp	word ptr [rsi + rdx*2], 0
	mov	rbp, rbp
	jns	.label_1401
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1401:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1405
	jmp	.label_1366
.label_1374:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_1393
	mov	cl, byte ptr [r14 + rdx]
	mov	rbp, rbp
	mov	eax, 1
	nop	
	shl	rax, cl
	mov	rsp, rsp
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1393:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1374
	mov	rsp, rsp
	jmp	.label_1366
.label_1389:
	call	__ctype_b_loc
	xor	edx, edx
	lea	rsi, [rsi]
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_1367
.label_1400:
	test	byte ptr [rsi + rdx*2], 4
	nop	
	je	.label_1370
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1370:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1400
.label_1366:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1367:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1396
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1396:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	nop	
	jne	.label_1367
	jmp	.label_1366
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413db0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi + 0x30]
	mov	rbp, rbp
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_1436
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_1432]]
.label_2521:
	mov	rsp, rsp
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1428]]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	lea	rsi, [rsi]
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1431
	mov	qword ptr [rax], r15
	mov	rsp, rsp
	jmp	.label_1429
.label_2522:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rsi, [rsi]
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	nop	
	js	.label_1438
	nop	
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	lea	rsi, [rsi]
	js	.label_1439
	lea	rdi, [rdi]
	mov	r12, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	rbx, [rcx + rcx*2]
	mov	rbp, rbp
	mov	qword ptr [r12 + rbx*8], 2
	mov	rsp, rsp
	mov	edi, 0x10
	call	malloc
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1433
	lea	rax, [r12 + rbx*8 + 8]
	mov	rbp, rbp
	cmp	r14, r15
	mov	rsp, rsp
	jne	.label_1434
	mov	qword ptr [rax], 1
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rsi, [rsi]
	jmp	.label_1429
.label_2519:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	nop	
	je	.label_1433
	nop	
	mov	edi, OFFSET FLAT:.str.17_2
	nop	
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2520:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_1429
	nop	
	mov	r14, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1428]]
	mov	rsp, rsp
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_1430
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	jmp	.label_1429
.label_1436:
	mov	rbp, rbp
	test	dl, 8
	jne	.label_1427
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_1429
.label_1434:
	mov	qword ptr [rax], 2
	jge	.label_1435
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	lea	rdi, [rdi]
	jmp	.label_1429
.label_1435:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1429:
	xor	eax, eax
.label_1433:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_1431:
	lea	rax, [r14 + rbx*8]
.label_1437:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1433
.label_1430:
	mov	rbp, rbp
	lea	rax, [r14 + r15*8]
	jmp	.label_1437
.label_1438:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1439:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 0x5b0
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_1427:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rbp, rbp
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414060

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	rbx, rsi
	nop	
	mov	r12, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	dl, 0x10
	mov	rsp, rsp
	je	.label_1444
	mov	rsp, rsp
	test	r12, r12
	je	.label_1444
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	cmp	rax, 0x3f
	mov	rsp, rsp
	jg	.label_1451
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0xa0]
	mov	rsp, rsp
	bt	rcx, rax
	jae	.label_1451
.label_1444:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1452
	nop	
	mov	qword ptr [rsp], rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x70]
.label_1446:
	lea	ecx, [r13 + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], ecx
	lea	rdi, [rdi]
	movsxd	rcx, r13d
	mov	rsp, rsp
	shl	rcx, 6
	mov	rbp, rbp
	lea	r13, [rax + rcx + 8]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	mov	rbp, rbp
	je	.label_1441
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x70]
.label_1445:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	lea	rsi, [rsi]
	movsxd	rcx, r15d
	shl	rcx, 6
	mov	rsp, rsp
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1454:
	lea	rsi, [rsi]
	test	r12, r12
	mov	rbp, r15
	je	.label_1443
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rbx + 0x80]
	nop	
	cmp	ebp, 0xf
	mov	rbp, rbp
	je	.label_1448
	nop	
	mov	rax, qword ptr [rbx + 0x70]
.label_1447:
	mov	rbp, rbp
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	nop	
	movsxd	rcx, ebp
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r12], rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1443
	lea	rdi, [rdi]
	mov	qword ptr [r15], rbp
.label_1443:
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	nop	
	je	.label_1449
	mov	rax, qword ptr [rbx + 0x70]
.label_1442:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	lea	rdi, [rdi]
	movsxd	rcx, r12d
	lea	rsi, [rsi]
	shl	rcx, 6
	mov	rbp, rbp
	lea	r12, [rax + rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	nop	
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	test	r13, r13
	je	.label_1453
	nop	
	mov	qword ptr [r13], r12
.label_1453:
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1450
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
.label_1450:
	test	r15, r15
	nop	
	je	.label_1440
	test	r13, r13
	je	.label_1440
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1440
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_1440
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x28], rax
	mov	eax, 0x80000
	lea	rsi, [rsi]
	and	eax, dword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	ecx, 0xfff7ffff
	mov	rbp, rbp
	mov	edx, dword ptr [r15 + 0x30]
	lea	rsi, [rsi]
	and	edx, ecx
	mov	rsp, rsp
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	mov	rbp, rbp
	and	ecx, dword ptr [r13 + 0x30]
	or	ecx, eax
	mov	dword ptr [r13 + 0x30], ecx
.label_1451:
	mov	rax, r12
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_1452:
	mov	rsp, rsp
	mov	qword ptr [rsp], rdi
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	xor	r13d, r13d
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1441
	nop	
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1446
.label_1441:
	nop	
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rbp
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1454
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	nop	
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1445
.label_1449:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1450
	nop	
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1442
.label_1440:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_1451
.label_1448:
	mov	rbp, rbp
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1443
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1447
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414440

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	cmp	rax, r13
	jae	.label_1455
.label_1459:
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_1456
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	lea	rsi, [rsi]
	jg	.label_1460
.label_1456:
	lea	rdi, [rdi]
	cmp	eax, 6
	lea	rdi, [rdi]
	sete	cl
.label_1460:
	nop	
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	mov	rbp, rbp
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	nop	
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x30]
	nop	
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	lea	rax, [r15 + 1]
	nop	
	mov	qword ptr [rbx + 0x10], rax
.label_1458:
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1455:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_1458
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1458
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rbp, [r13 + r13*2]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	call	realloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1457
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_1457
	test	r13, r13
	mov	rbp, rbp
	je	.label_1457
	nop	
	test	rbp, rbp
	je	.label_1457
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	nop	
	mov	qword ptr [rbx + 0x28], r13
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	jmp	.label_1459
.label_1457:
	lea	rsi, [rsi]
	mov	rbx, rax
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_1458
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4146d0

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0xc], ecx
	mov	r12, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rdi]
	lea	rdi, [rax*8 + 8]
	mov	rbp, rbp
	call	malloc
	mov	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x40], rcx
	nop	
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1463
	mov	qword ptr [rsp + 0x28], rbx
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	qword ptr [rax + r14*8 + 8], -1
	nop	
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	rsp, rsp
	mov	r8d, eax
	mov	rbp, rbp
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1461
	lea	rsi, [rsi]
	lea	rdx, [r15 + r14*8 + 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	je	.label_1461
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	mov	rsp, rsp
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1461
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1463
	mov	rax, qword ptr [rbp]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx + 8]
.label_1461:
	mov	rbx, r12
	lea	rdi, [rdi]
	test	al, 8
	jne	.label_1469
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_1468
.label_1469:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + r14*8 + 8], 0
	nop	
	jle	.label_1472
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1462:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	lea	r12, [rdx + rdx*2]
	nop	
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1470
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_1464
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x10]
	mov	rsp, rsp
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1471
	jmp	.label_1463
.label_1464:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1471:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1463
	nop	
	mov	rax, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + r12*8 + 8], 0
	mov	rsp, rsp
	jne	.label_1467
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	free
.label_1470:
	mov	r15b, 1
.label_1467:
	mov	rbp, rbp
	inc	r13
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	mov	rbp, rbp
	jl	.label_1462
	jmp	.label_1468
.label_1472:
	mov	rbp, rbp
	xor	r15d, r15d
.label_1468:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	lea	rsi, [rsi]
	mov	eax, 0xc
	je	.label_1463
	lea	rsi, [rsi]
	test	r15b, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	je	.label_1465
	mov	ecx, dword ptr [rsp + 0xc]
	test	cl, cl
	jne	.label_1465
	nop	
	mov	qword ptr [rax + r14*8 + 8], 0
	nop	
	jmp	.label_1466
.label_1465:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1466:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	lea	rsi, [rsi]
	xor	eax, eax
.label_1463:
	add	rsp, 0x48
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414980

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13d, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	nop	
	mov	r14, rdi
.label_1481:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], eax
	lea	rsi, [rsi]
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_1478:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	mov	rbp, rbp
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_1487
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	rsp, rsp
	mov	qword ptr [rdx + r12*8 + 8], 0
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	rdi, r14
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	re_dfa_add_node
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	cmp	rbx, -1
	je	.label_1485
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	mov	rbp, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	nop	
	mov	dword ptr [rax + rcx + 8], edx
	mov	rsp, rsp
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x24]
	jne	.label_1478
	jmp	.label_1474
	nop	dword ptr [rax]
.label_1487:
	nop	
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1473
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	nop	
	cmp	rsi, 1
	je	.label_1476
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	lea	rsi, [rsi]
	jle	.label_1479
	lea	rdi, [rdi]
	mov	rdx, rsi
	shl	rdx, 4
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rdx + 8]
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	and	edx, 0x40000
	je	.label_1479
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	
.label_1482:
	cmp	qword ptr [rdx + rsi*8], r12
	mov	rsp, rsp
	jne	.label_1488
	mov	rbp, rbp
	shr	ebp, 8
	nop	
	and	ebp, 0x3ff
	cmp	ebp, r13d
	lea	rsi, [rsi]
	je	.label_1475
.label_1488:
	dec	rsi
	test	rsi, rsi
	jle	.label_1479
	mov	rbp, rbp
	mov	ebp, dword ptr [rdi]
	mov	rbp, rbp
	mov	ebx, ebp
	mov	rsp, rsp
	and	ebx, 0x40000
	mov	rsp, rsp
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_1482
	mov	rbp, rbp
	jmp	.label_1479
.label_1475:
	cmp	rsi, -1
	je	.label_1479
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_1489
	mov	rbp, rbp
	jmp	.label_1474
	nop	word ptr [rax + rax]
.label_1479:
	nop	
	mov	rbp, r12
	mov	rsp, rsp
	shl	rbp, 4
	nop	
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1480
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rax, qword ptr [r14]
	nop	
	mov	rcx, rbx
	nop	
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	mov	rsp, rsp
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	lea	rsi, [rsi]
	mov	esi, 0x3ff00
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	nop	
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_1474
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x1c], eax
	nop	
	test	eax, eax
	nop	
	jne	.label_1474
.label_1489:
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	mov	rsp, rsp
	shl	rbx, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1484
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	mov	rbp, rbp
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r15
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x28]
	nop	
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	lea	rsi, [rsi]
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1478
	mov	rsp, rsp
	jmp	.label_1474
.label_1476:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_1483
	mov	rsp, rsp
	cmp	rbx, r15
	jne	.label_1486
.label_1483:
	nop	
	mov	r15, rdi
	lea	rsi, [rsi]
	lea	rcx, [rax + rdx + 8]
	mov	rbp, rbp
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rsp, rsp
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x1c], 0xc
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1474
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	nop	
	mov	rbp, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	rsp, rsp
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	rbp, rbp
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	nop	
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	mov	rsp, rsp
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	lea	rdi, [rcx + r15*8]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1481
	jmp	.label_1474
.label_1485:
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_1474
.label_1480:
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_1474
.label_1484:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rsi, [rsi]
	jmp	.label_1474
.label_1473:
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1477:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0
.label_1474:
	mov	eax, dword ptr [rsp + 0x1c]
	mov	rsp, rsp
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1486:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	nop	
	call	re_node_set_insert
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_1474
	nop	
	jmp	.label_1477
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414f50

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1492
	nop	
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1492
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	nop	
	cmp	rbx, rdx
	lea	rsi, [rsi]
	jge	.label_1503
	add	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	mov	rsp, rsp
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	je	.label_1501
	nop	
	add	rbx, rbx
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
.label_1503:
	test	rcx, rcx
	je	.label_1496
	nop	
	lea	rbx, [rcx + rax*2]
	lea	rdi, [rdi]
	dec	rax
	dec	rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	or	rdx, rcx
	nop	
	js	.label_1499
	mov	rbp, rbp
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	jmp	.label_1491
.label_1500:
	dec	rax
.label_1490:
	dec	rcx
	jmp	.label_1498
	nop	word ptr cs:[rax + rax]
.label_1491:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + rax*8]
	mov	rbp, rbp
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1500
	jge	.label_1490
	nop	
	dec	rax
	mov	rsp, rsp
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	lea	rsi, [rsi]
	dec	rbx
.label_1498:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1491
.label_1499:
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_1493
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	mov	rbp, rbp
	lea	rdi, [rbx*8]
	lea	rdi, [rdi]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1493:
	mov	r10, qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	lea	rdi, [rdi]
	inc	rdx
	lea	rsi, [rsi]
	je	.label_1492
	lea	rdi, [rdi]
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_1495:
	lea	rdi, [rdi]
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	lea	r11, [rdi + r9*8]
.label_1502:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jle	.label_1494
	nop	
	dec	rcx
	nop	
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_1502
	nop	
	jmp	.label_1492
	nop	word ptr cs:[rax + rax]
.label_1494:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	mov	rbp, rbp
	cmp	r10, 1
	nop	
	mov	r10, r8
	jg	.label_1495
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	mov	rbp, rbp
	jmp	.label_1497
.label_1496:
	mov	qword ptr [r14 + 8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 8]
	nop	
	mov	rsi, qword ptr [r15 + 0x10]
.label_1497:
	shl	rdx, 3
	lea	rsi, [rsi]
	call	memcpy
.label_1492:
	xor	eax, eax
.label_1501:
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415170

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_1513
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1505
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jne	.label_1507
	lea	rax, [rsi + rsi]
	nop	
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1515
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1517
.label_1513:
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1428]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	nop	
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1512
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	jmp	.label_1516
.label_1505:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	mov	rbp, rbp
	jmp	.label_1504
.label_1507:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x10]
.label_1517:
	lea	rsi, [rsi]
	cmp	qword ptr [rax], rbx
	mov	rsp, rsp
	jle	.label_1509
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1506
	nop	word ptr [rax + rax]
.label_1511:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rdi, [rdi]
	lea	rcx, [rcx - 1]
	jg	.label_1511
	lea	rdi, [rdi]
	jmp	.label_1506
.label_1509:
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	rsp, rsp
	jmp	.label_1508
	nop	dword ptr [rax + rax]
.label_1514:
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1508:
	cmp	rdx, rbx
	mov	rsp, rsp
	jg	.label_1514
.label_1506:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_1504:
	inc	qword ptr [r14 + 8]
.label_1516:
	lea	rdi, [rdi]
	mov	al, 1
.label_1510:
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	ret	
.label_1512:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1510
.label_1515:
	xor	eax, eax
	jmp	.label_1510
	nop	
	.section	.text
	.align	16
	#Procedure 0x4152b0

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	r13d, ecx
	mov	r14, rsi
	mov	rsp, rsp
	mov	r8, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	test	r8, r8
	nop	
	je	.label_1525
	mov	r15d, r13d
	add	r15, r8
	lea	rdi, [rdi]
	test	r8, r8
	mov	rsp, rsp
	jle	.label_1558
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jae	.label_1563
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdi
	jmp	.label_1566
.label_1525:
	nop	
	mov	dword ptr [rdi], 0
	nop	
	jmp	.label_1570
.label_1558:
	nop	
	mov	qword ptr [rsp], rdi
	lea	rsi, [rsi]
	jmp	.label_1528
.label_1563:
	mov	qword ptr [rsp], rdi
	nop	
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	je	.label_1556
	mov	rsp, rsp
	movq	xmm0, r15
	mov	rsp, rsp
	lea	rsi, [r8 - 4]
	mov	eax, esi
	shr	eax, 2
	inc	eax
	xor	edi, edi
	mov	rsp, rsp
	test	al, 3
	nop	
	je	.label_1547
	nop	
	lea	ebp, [r8 - 4]
	lea	rdi, [rdi]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	lea	rsi, [rsi]
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	
.label_1584:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	lea	rsi, [rsi]
	paddq	xmm1, xmm3
	mov	rsp, rsp
	add	rdi, 4
	inc	rbp
	mov	rsp, rsp
	jne	.label_1584
	jmp	.label_1589
.label_1556:
	xor	ebx, ebx
	jmp	.label_1566
.label_1547:
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
.label_1589:
	mov	rsp, rsp
	cmp	rsi, 0xc
	nop	
	jb	.label_1593
	mov	rsp, rsp
	mov	rsi, r8
	mov	rsp, rsp
	and	rsi, 0xfffffffffffffffc
	sub	rsi, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	dword ptr [rax + rax]
.label_1557:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	mov	rsp, rsp
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	mov	rsp, rsp
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	mov	rsp, rsp
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	lea	rdi, [rdi]
	paddq	xmm1, xmm5
	lea	rsi, [rsi]
	add	rdi, 0x80
	mov	rbp, rbp
	add	rsi, -0x10
	jne	.label_1557
.label_1593:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rbx
	je	.label_1528
.label_1566:
	nop	
	mov	rsi, r8
	lea	rdi, [rdi]
	sub	rsi, rbx
	lea	rcx, [rcx + rbx*8]
	nop	dword ptr [rax + rax]
.label_1534:
	lea	rsi, [rsi]
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rsi
	jne	.label_1534
.label_1528:
	mov	rsi, qword ptr [r14 + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x88]
	lea	rsi, [rsi]
	and	rax, r15
	mov	rsp, rsp
	lea	rax, [rax + rax*2]
	nop	
	mov	r9, qword ptr [rsi + rax*8]
	test	r9, r9
	lea	rdi, [rdi]
	jle	.label_1538
	xor	ebx, ebx
	nop	
	test	rdx, rdx
	nop	
	je	.label_1548
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsi + rax*8 + 0x10]
.label_1572:
	mov	rsi, qword ptr [r10 + rbx*8]
	cmp	qword ptr [rsi], r15
	jne	.label_1551
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x68]
	and	eax, 0xf
	nop	
	cmp	eax, r13d
	mov	rsp, rsp
	jne	.label_1551
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi + 0x50]
	test	rdi, rdi
	je	.label_1551
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 8], r8
	nop	
	jne	.label_1551
	mov	rax, r8
	nop	word ptr cs:[rax + rax]
.label_1565:
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_1550
	mov	rbp, qword ptr [rdi + 0x10]
	nop	
	mov	rbp, qword ptr [rbp + rax*8 - 8]
	nop	
	mov	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rsp, rsp
	lea	rax, [rax - 1]
	je	.label_1565
	nop	dword ptr [rax]
.label_1551:
	lea	rdi, [rdi]
	inc	rbx
	cmp	rbx, r9
	jl	.label_1572
	mov	rsp, rsp
	jmp	.label_1538
.label_1548:
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r9, 0x10
	mov	rbp, rbp
	jb	.label_1564
	nop	
	xor	ecx, ecx
	mov	rax, r9
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffff0
	je	.label_1564
	nop	
	lea	rcx, [r9 - 0x10]
	lea	rsi, [rsi]
	mov	edi, ecx
	shr	edi, 4
	inc	edi
	xor	esi, esi
	test	dil, 7
	lea	rdi, [rdi]
	je	.label_1582
	lea	edi, [r9 - 0x10]
	lea	rsi, [rsi]
	shr	edi, 4
	inc	edi
	and	edi, 7
	mov	rsp, rsp
	neg	rdi
	xor	esi, esi
	nop	dword ptr [rax]
.label_1583:
	mov	rsp, rsp
	add	rsi, 0x10
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	jne	.label_1583
.label_1582:
	cmp	rcx, 0x70
	jb	.label_1591
	nop	
	mov	rcx, r9
	lea	rsi, [rsi]
	and	rcx, 0xfffffffffffffff0
	sub	rcx, rsi
	nop	word ptr cs:[rax + rax]
.label_1540:
	add	rcx, -0x80
	mov	rbp, rbp
	jne	.label_1540
.label_1591:
	mov	rbp, rbp
	cmp	r9, rax
	mov	rcx, rax
	je	.label_1538
	nop	word ptr cs:[rax + rax]
.label_1564:
	inc	rcx
	cmp	rcx, r9
	lea	rdi, [rdi]
	jl	.label_1564
.label_1538:
	mov	rsp, rsp
	mov	r12, rdx
	mov	rsp, rsp
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	r11, rax
	mov	rsp, rsp
	test	r11, r11
	mov	rbp, rbp
	je	.label_1520
	mov	rbx, r14
	mov	rax, r11
	mov	rsp, rsp
	add	rax, 8
	lea	rdi, [rdi]
	mov	r10, r12
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r10 + 8]
	mov	qword ptr [r11 + 0x10], rdi
	mov	r14, qword ptr [r10 + 8]
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	jle	.label_1523
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	r12, r10
	lea	rsi, [rsi]
	mov	qword ptr [r11 + 8], rdi
	lea	rsi, [rsi]
	shl	rdi, 3
	mov	rbp, r11
	call	malloc
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	test	rax, rax
	je	.label_1535
	mov	rsi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	shl	r14, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rdx, r14
	mov	rbp, rbp
	mov	rbp, rcx
	nop	
	call	memcpy
	mov	r11, rbp
	mov	r10, r12
	mov	rdi, rbx
	mov	rbp, rbp
	mov	r9d, r13d
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jmp	.label_1592
.label_1523:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, rbx
	mov	r9d, r13d
	mov	r14, rax
.label_1592:
	mov	al, byte ptr [r11 + 0x68]
	mov	rbp, rbp
	mov	cl, r9b
	lea	rsi, [rsi]
	and	cl, 0xf
	and	al, 0xf0
	mov	rbp, rbp
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r11 + 0x68], al
	lea	rsi, [rsi]
	mov	qword ptr [r11 + 0x50], r14
	nop	
	cmp	qword ptr [r10 + 8], 0
	jle	.label_1531
	mov	cl, r9b
	mov	eax, r9d
	mov	rsp, rsp
	and	eax, 2
	lea	rsi, [rsi]
	and	r9d, 4
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1569
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	r8d, r8d
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1573
	nop	dword ptr [rax + rax]
.label_1585:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	edx, sil
	mov	rbp, rbp
	mov	r12d, esi
	shr	r12d, 8
	mov	rsp, rsp
	mov	ecx, r12d
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 1
	nop	
	jne	.label_1576
	test	ecx, ecx
	je	.label_1560
.label_1576:
	shr	esi, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	lea	rsi, [rsi]
	mov	al, bl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	or	eax, esi
	mov	rbp, rbp
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	lea	rsi, [rsi]
	or	bl, al
	mov	rsp, rsp
	mov	byte ptr [r11 + 0x68], bl
	cmp	edx, 2
	mov	rsp, rsp
	je	.label_1571
	lea	rsi, [rsi]
	cmp	edx, 4
	mov	rsp, rsp
	jne	.label_1594
	mov	rbp, rbp
	or	bl, 0x40
	mov	rbp, rbp
	jmp	.label_1595
.label_1571:
	nop	
	or	bl, 0x10
.label_1595:
	lea	rdi, [rdi]
	mov	byte ptr [r11 + 0x68], bl
.label_1594:
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1560
	nop	
	mov	r13, r10
	mov	rsp, rsp
	cmp	qword ptr [r11 + 0x50], r14
	nop	
	jne	.label_1598
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x14], r9d
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdi
	nop	
	mov	edi, 0x18
	mov	rbx, r11
	lea	rdi, [rdi]
	call	malloc
	mov	r11, rbx
	mov	r14, rax
	lea	rdi, [rdi]
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1526
	mov	rbx, qword ptr [r13 + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	nop	
	jle	.label_1530
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r11
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1537
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	memcpy
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	r11, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_1546
.label_1530:
	nop	
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r14], xmm0
	nop	
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
.label_1546:
	mov	r14, qword ptr [rsp + 0x18]
	or	byte ptr [r11 + 0x68], 0x80
	mov	rbp, rbp
	xor	r8d, r8d
.label_1598:
	mov	rsp, rsp
	test	r12b, 0x11
	mov	rsp, rsp
	mov	r10, r13
	jne	.label_1555
	mov	rsp, rsp
	test	r9d, r9d
	mov	rsp, rsp
	jne	.label_1560
	mov	rsp, rsp
	and	r12d, 0x40
	mov	rsp, rsp
	je	.label_1560
.label_1555:
	mov	rax, rbp
	mov	rsp, rsp
	sub	rax, r8
	lea	rsi, [rsi]
	js	.label_1567
	mov	rcx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jle	.label_1567
	mov	rsp, rsp
	dec	rcx
	mov	rbp, rbp
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1567
	nop	
	lea	rax, [rbp*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [r11 + 0x18]
	lea	rdi, [rdi]
	mov	rcx, r8
	neg	rcx
	nop	dword ptr [rax]
.label_1581:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r11 + 0x10]
	jl	.label_1581
	nop	word ptr [rax + rax]
.label_1567:
	inc	r8
.label_1560:
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [r10 + 8]
	jl	.label_1585
	jmp	.label_1531
	nop	dword ptr [rax + rax]
.label_1573:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rbp*8]
	mov	rbp, rbp
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	movzx	edx, sil
	mov	r12d, esi
	shr	r12d, 8
	mov	ecx, r12d
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	edx, 1
	lea	rsi, [rsi]
	jne	.label_1586
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_1527
.label_1586:
	shr	esi, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	lea	rdi, [rdi]
	shl	al, 5
	and	al, 0x20
	lea	rsi, [rsi]
	and	bl, 0xdf
	or	bl, al
	mov	rsp, rsp
	mov	byte ptr [r11 + 0x68], bl
	mov	rbp, rbp
	cmp	edx, 2
	je	.label_1597
	cmp	edx, 4
	lea	rdi, [rdi]
	jne	.label_1522
	lea	rdi, [rdi]
	or	bl, 0x40
	mov	rbp, rbp
	jmp	.label_1524
.label_1597:
	lea	rdi, [rdi]
	or	bl, 0x10
.label_1524:
	nop	
	mov	byte ptr [r11 + 0x68], bl
.label_1522:
	mov	rbp, rbp
	test	ecx, ecx
	je	.label_1527
	lea	rsi, [rsi]
	mov	r13, r10
	mov	rbp, rbp
	cmp	qword ptr [r11 + 0x50], r14
	lea	rsi, [rsi]
	jne	.label_1529
	nop	
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x14], r9d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	edi, 0x18
	lea	rdi, [rdi]
	mov	rbx, r11
	call	malloc
	lea	rsi, [rsi]
	mov	r11, rbx
	nop	
	mov	r14, rax
	nop	
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	je	.label_1526
	mov	rsp, rsp
	mov	rbx, qword ptr [r13 + 8]
	nop	
	mov	qword ptr [r14 + 8], rbx
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	jle	.label_1544
	mov	qword ptr [rsp + 0x20], r11
	lea	rsi, [rsi]
	mov	qword ptr [r14], rbx
	mov	rsp, rsp
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rax
	nop	
	test	rax, rax
	je	.label_1537
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	r9d, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jmp	.label_1559
.label_1544:
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	r9d, dword ptr [rsp + 0x14]
.label_1559:
	mov	r14, qword ptr [rsp + 0x18]
	or	byte ptr [r11 + 0x68], 0x80
	xor	r8d, r8d
.label_1529:
	test	r12b, 1
	mov	r10, r13
	mov	rsp, rsp
	jne	.label_1574
	test	r9d, r9d
	jne	.label_1527
	mov	rbp, rbp
	and	r12d, 0x40
	je	.label_1527
.label_1574:
	mov	rbp, rbp
	mov	rax, rbp
	sub	rax, r8
	mov	rsp, rsp
	js	.label_1580
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r11 + 0x10]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jle	.label_1580
	nop	
	dec	rcx
	mov	rsp, rsp
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1580
	lea	rsi, [rsi]
	lea	rax, [rbp*8]
	add	rax, qword ptr [r11 + 0x18]
	mov	rsp, rsp
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1590:
	nop	
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	mov	rbp, rbp
	inc	rcx
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [r11 + 0x10]
	mov	rbp, rbp
	jl	.label_1590
	nop	word ptr cs:[rax + rax]
.label_1580:
	inc	r8
.label_1527:
	inc	rbp
	cmp	rbp, qword ptr [r10 + 8]
	jl	.label_1573
	mov	rbp, rbp
	jmp	.label_1531
.label_1569:
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	esi, esi
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1541
	nop	
.label_1578:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax + rcx + 8]
	mov	rsp, rsp
	movzx	edx, bpl
	mov	r13d, ebp
	mov	rbp, rbp
	shr	r13d, 8
	lea	rdi, [rdi]
	mov	ecx, r13d
	mov	rbp, rbp
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 1
	nop	
	jne	.label_1518
	test	ecx, ecx
	je	.label_1532
.label_1518:
	shr	ebp, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	rbp, rbp
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	or	eax, ebp
	nop	
	shl	al, 5
	nop	
	and	al, 0x20
	and	bl, 0xdf
	mov	rsp, rsp
	or	bl, al
	mov	byte ptr [r11 + 0x68], bl
	nop	
	cmp	edx, 2
	je	.label_1577
	cmp	edx, 4
	jne	.label_1539
	or	bl, 0x40
	jmp	.label_1542
.label_1577:
	or	bl, 0x10
.label_1542:
	mov	rbp, rbp
	mov	byte ptr [r11 + 0x68], bl
.label_1539:
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1532
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	cmp	qword ptr [r11 + 0x50], r14
	lea	rsi, [rsi]
	jne	.label_1549
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	nop	
	mov	rbx, r11
	call	malloc
	mov	rsp, rsp
	mov	r11, rbx
	mov	rbp, rbp
	mov	r14, rax
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	mov	rsp, rsp
	je	.label_1526
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	mov	rbp, rbp
	jle	.label_1562
	mov	qword ptr [rsp + 0x20], r11
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	lea	rdi, [rdi]
	shl	rbx, 3
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rax
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1537
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_1579
.label_1562:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
.label_1579:
	mov	r14, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	or	byte ptr [r11 + 0x68], 0x80
	nop	
	xor	esi, esi
.label_1549:
	mov	rsp, rsp
	test	r13b, 0x12
	mov	rbp, rbp
	mov	r10, rbp
	mov	rsp, rsp
	jne	.label_1588
	test	r9d, r9d
	mov	rsp, rsp
	jne	.label_1532
	and	r13d, 0x40
	je	.label_1532
.label_1588:
	mov	rsp, rsp
	mov	rax, r12
	lea	rsi, [rsi]
	sub	rax, rsi
	js	.label_1568
	mov	rcx, qword ptr [r11 + 0x10]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jle	.label_1568
	nop	
	dec	rcx
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	lea	rsi, [rsi]
	jle	.label_1568
	lea	rax, [r12*8]
	add	rax, qword ptr [r11 + 0x18]
	mov	rcx, rsi
	lea	rsi, [rsi]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_1519:
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdi, [rdi]
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	mov	rsp, rsp
	cmp	rdx, qword ptr [r11 + 0x10]
	jl	.label_1519
	nop	word ptr cs:[rax + rax]
.label_1568:
	lea	rdi, [rdi]
	inc	rsi
.label_1532:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r10 + 8]
	jl	.label_1578
	jmp	.label_1531
	nop	dword ptr [rax + rax]
.label_1541:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	ebp, dword ptr [rax + rcx + 8]
	lea	rdi, [rdi]
	movzx	edx, bpl
	mov	r13d, ebp
	shr	r13d, 8
	mov	ecx, r13d
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	edx, 1
	lea	rdi, [rdi]
	jne	.label_1533
	test	ecx, ecx
	je	.label_1543
.label_1533:
	shr	ebp, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	rsp, rsp
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, ebp
	lea	rsi, [rsi]
	shl	al, 5
	mov	rbp, rbp
	and	al, 0x20
	mov	rsp, rsp
	and	bl, 0xdf
	nop	
	or	bl, al
	nop	
	mov	byte ptr [r11 + 0x68], bl
	nop	
	cmp	edx, 4
	nop	
	je	.label_1545
	lea	rsi, [rsi]
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_1553
	mov	rbp, rbp
	or	bl, 0x10
	jmp	.label_1554
.label_1545:
	or	bl, 0x40
.label_1554:
	mov	byte ptr [r11 + 0x68], bl
.label_1553:
	nop	
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_1543
	mov	rbp, r10
	cmp	qword ptr [r11 + 0x50], r14
	nop	
	jne	.label_1561
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	edi, 0x18
	lea	rdi, [rdi]
	mov	rbx, r11
	mov	rsp, rsp
	call	malloc
	mov	r11, rbx
	mov	r14, rax
	mov	rbp, rbp
	mov	qword ptr [r11 + 0x50], r14
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1526
	mov	rbx, qword ptr [rbp + 8]
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1575
	mov	qword ptr [rsp + 0x20], r11
	mov	rbp, rbp
	mov	qword ptr [r14], rbx
	nop	
	shl	rbx, 3
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1537
	nop	
	mov	rsi, qword ptr [rbp + 0x10]
	nop	
	mov	rdi, rax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	r11, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_1587
.label_1575:
	nop	
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
.label_1587:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x18]
	or	byte ptr [r11 + 0x68], 0x80
	xor	esi, esi
.label_1561:
	test	r13b, 2
	mov	r10, rbp
	lea	rdi, [rdi]
	jne	.label_1596
	test	r9d, r9d
	lea	rdi, [rdi]
	jne	.label_1543
	and	r13d, 0x40
	mov	rsp, rsp
	je	.label_1543
.label_1596:
	mov	rbp, rbp
	mov	rax, r12
	sub	rax, rsi
	lea	rdi, [rdi]
	js	.label_1521
	mov	rcx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	nop	
	jle	.label_1521
	mov	rbp, rbp
	dec	rcx
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1521
	lea	rsi, [rsi]
	lea	rax, [r12*8]
	add	rax, qword ptr [r11 + 0x18]
	lea	rsi, [rsi]
	mov	rcx, rsi
	lea	rdi, [rdi]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1536:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rdx
	nop	
	lea	rdx, [r12 + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [r11 + 0x10]
	mov	rsp, rsp
	jl	.label_1536
	nop	word ptr cs:[rax + rax]
.label_1521:
	inc	rsi
.label_1543:
	inc	r12
	cmp	r12, qword ptr [r10 + 8]
	mov	rsp, rsp
	jl	.label_1541
.label_1531:
	mov	rsi, r11
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rbx, r11
	mov	rbp, rbp
	call	register_state
	nop	
	mov	rsi, rbx
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1550
	mov	rdi, rsi
	nop	
	jmp	.label_1552
.label_1526:
	mov	rdi, r11
.label_1552:
	call	free_state
	mov	rsp, rsp
	jmp	.label_1520
.label_1537:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	lea	rdi, [rdi]
	jmp	.label_1520
.label_1535:
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	rsp, rsp
	call	free
.label_1520:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
.label_1570:
	lea	rsi, [rsi]
	xor	esi, esi
.label_1550:
	nop	
	mov	rax, rsi
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x416120

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	lea	rdi, [r13*8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	rsp, rsp
	mov	ecx, 0xc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1600
	mov	rbp, rbp
	test	r13, r13
	jle	.label_1601
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1605:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1599
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jne	.label_1603
	lea	rcx, [rdx + rdx + 2]
	mov	rsp, rsp
	lea	rdx, [rdx + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1606
	mov	qword ptr [rbx + 0x30], rax
	nop	
	mov	rcx, qword ptr [rbx + 0x28]
.label_1603:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1599:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1605
.label_1601:
	lea	rdi, [rdi]
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rsi, [rsi]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	lea	rsi, [rsi]
	jle	.label_1602
	nop	
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1604:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_1600
.label_1606:
	nop	
	mov	ecx, 0xc
.label_1600:
	mov	eax, ecx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_1602:
	mov	rbp, rbp
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	mov	rsp, rsp
	lea	rsi, [rax*8 + 0x10]
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	ecx, 0xc
	mov	rsp, rsp
	je	.label_1600
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	rbp, rbp
	mov	qword ptr [rcx], rdx
	lea	rsi, [rsi]
	mov	r15, qword ptr [r14]
	lea	rdi, [rdi]
	jmp	.label_1604
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4162e0

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r10, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	r13, [rbx + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r10
	jle	.label_1681
	cmp	dword ptr [rbx + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_1675
	mov	qword ptr [rbx + 0x20], 0
.label_1675:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	mov	rsp, rsp
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	mov	r14, r10
	jne	.label_1663
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	r14, r10
.label_1663:
	mov	rbp, rbp
	test	r14, r14
	je	.label_1686
	mov	r12, qword ptr [rbx + 0x38]
	mov	rbp, rbp
	cmp	r14, r12
	lea	rdi, [rdi]
	jge	.label_1694
	mov	rsp, rsp
	mov	ecx, dword ptr [rbx + 0x8c]
	mov	rbp, rbp
	mov	r9d, ecx
	mov	rbp, rbp
	shr	r9d, 0x10
	test	cl, cl
	lea	rsi, [rsi]
	jne	.label_1627
	mov	rsp, rsp
	test	r14, r14
	jle	.label_1699
	lea	rcx, [r14 - 1]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], rcx
	mov	rbp, rbp
	je	.label_1701
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1702
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	dword ptr [rax + rax]
.label_1615:
	mov	ebp, dword ptr [rcx + rdx*4 - 4]
	nop	
	cmp	ebp, -1
	mov	rbp, rbp
	jne	.label_1611
	nop	
	dec	rdx
	jg	.label_1615
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rbx + 0x70]
	lea	rsi, [rsi]
	jmp	.label_1618
.label_1702:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x80]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	r15d, 1
	bt	rcx, rax
	jb	.label_1618
	xor	r15d, r15d
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jne	.label_1618
	movzx	eax, word ptr [rbx + 0x8c]
	movzx	eax, ax
	nop	
	mov	r15d, 2
	cmp	eax, 0xff
	lea	rdi, [rdi]
	ja	.label_1618
	lea	rdi, [rdi]
	jmp	.label_1648
.label_1611:
	test	r9b, r9b
	lea	rdi, [rdi]
	jne	.label_1650
.label_1616:
	xor	r15d, r15d
	mov	rbp, rbp
	cmp	ebp, 0xa
	lea	rsi, [rsi]
	jne	.label_1618
	nop	
	mov	r15d, 2
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_1618
.label_1648:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_1618
.label_1681:
	nop	
	mov	r14, r10
	sub	r14, rax
	lea	rsi, [rsi]
	jmp	.label_1663
.label_1694:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	test	cl, cl
	mov	rbp, rbp
	jne	.label_1665
.label_1659:
	mov	qword ptr [rbx + 0x30], 0
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	jl	.label_1670
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x89], 0
	lea	rsi, [rsi]
	je	.label_1678
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	lea	r8, [rdi + rax]
	mov	rdx, r14
	sub	rdx, rsi
	nop	
	add	rdx, r8
	cmp	rdx, rdi
	mov	rbp, rbp
	cmovb	rdx, rdi
	lea	r9, [r8 + r14]
	lea	rsi, [r14 + rax]
	lea	rsi, [rdi + rsi - 1]
	nop	dword ptr [rax + rax]
.label_1689:
	mov	rbp, rsi
	mov	rsp, rsp
	cmp	rbp, rdx
	jb	.label_1678
	mov	cl, byte ptr [rbp]
	mov	rsp, rsp
	and	cl, 0xc0
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	mov	rbp, rbp
	je	.label_1689
	mov	qword ptr [rsp + 8], r9
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	test	r9, r9
	mov	rsp, rsp
	jne	.label_1692
	mov	r12, r11
	mov	qword ptr [rsp + 0x20], r10
	lea	rdi, [rdi]
	mov	rsi, rbp
.label_1662:
	nop	
	mov	qword ptr [rsp], 0
	lea	rdi, [rsp + 0x34]
	lea	rcx, [rsp]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	mov	rsp, rsp
	sub	rcx, rdx
	jb	.label_1700
	cmp	rax, -3
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r11, r12
	ja	.label_1607
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x34]
	jmp	.label_1607
.label_1627:
	mov	rbp, rbp
	mov	r8, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rbx + 0x30]
	xor	ebp, ebp
.label_1640:
	lea	rsi, [rbp + rax]
	mov	rsp, rsp
	mov	rdx, rsi
	lea	rsi, [rsi]
	shr	rdx, 0x3f
	mov	rsp, rsp
	add	rdx, rsi
	sar	rdx, 1
	mov	rsi, qword ptr [r8 + rdx*8]
	nop	
	cmp	rsi, r14
	lea	rdi, [rdi]
	mov	rdi, rdx
	jg	.label_1624
	jge	.label_1637
	lea	rbp, [rdx + 1]
	mov	rbp, rbp
	mov	rdi, rax
.label_1624:
	nop	
	cmp	rbp, rdi
	mov	rbp, rbp
	mov	rax, rdi
	jl	.label_1640
.label_1637:
	mov	rbp, rbp
	cmp	rsi, r14
	setl	al
	nop	
	movzx	eax, al
	lea	rdi, [rdi]
	lea	r12, [rax + rdx]
	test	r12, r12
	jle	.label_1672
	lea	rdi, [rax + rdx - 1]
	cmp	qword ptr [rbx + 0x58], rdi
	lea	rsi, [rsi]
	je	.label_1647
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1619
	cmp	rsi, r14
	setl	al
	mov	rcx, qword ptr [rbx + 0x10]
	movzx	eax, al
	lea	rdi, [rdi]
	add	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1666:
	mov	rbp, rbp
	mov	ebp, dword ptr [rcx + rdx*4 - 4]
	lea	rsi, [rsi]
	cmp	ebp, -1
	mov	rbp, rbp
	jne	.label_1660
	dec	rdx
	jg	.label_1666
	mov	rsp, rsp
	mov	r15d, dword ptr [rbx + 0x70]
	jmp	.label_1635
.label_1699:
	mov	r15d, dword ptr [rbx + 0x70]
	jmp	.label_1618
.label_1701:
	and	r15d, 2
	nop	
	xor	r15d, 0xa
.label_1618:
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x70], r15d
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1643
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 2
	mov	rbp, r10
	nop	
	call	memmove
	mov	r10, rbp
.label_1643:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1682
.label_1617:
	lea	rdi, [rdi]
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1636:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rbp, rbp
	jne	.label_1686
	nop	
	add	qword ptr [rbx + 8], r14
.label_1686:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x28], r10
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_1688
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1691
	mov	rdi, rbx
	mov	rbp, rbp
	call	build_wcs_upper_buffer
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1695
	jmp	.label_1622
.label_1688:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1696
	mov	qword ptr [rbx + 0x30], rdx
	mov	rbp, rbp
	jmp	.label_1622
.label_1691:
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	build_wcs_buffer
.label_1622:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x48], 0
	lea	rdi, [rdi]
	xor	eax, eax
.label_1695:
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_1682:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	sub	rdx, r14
	nop	
	lea	rsi, [rdi + r14]
	lea	rdi, [rdi]
	mov	rbp, r10
	call	memmove
	mov	r10, rbp
	mov	rsp, rsp
	jmp	.label_1617
.label_1696:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1621
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	cmp	r14, rdx
	lea	rdi, [rdi]
	cmovg	r14, rdx
	cmp	r15, r14
	jge	.label_1623
	lea	rdi, [rdi]
	jmp	.label_1631
	nop	word ptr cs:[rax + rax]
.label_1654:
	lea	rdi, [rdi]
	mov	r10, qword ptr [r13]
.label_1631:
	mov	rsp, rsp
	inc	r15
	lea	rsi, [rsi]
	add	r10, qword ptr [rbx]
	mov	al, byte ptr [r15 + r10 - 1]
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1656
.label_1661:
	mov	rbp, rbp
	movzx	ebp, al
	mov	rbp, rbp
	lea	eax, [rbp + 0x80]
	mov	rsp, rsp
	cmp	eax, 0x17f
	ja	.label_1645
	lea	rdi, [rdi]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rbp*4]
.label_1645:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r15 - 1], bpl
	nop	
	cmp	r15, r14
	lea	rdi, [rdi]
	jl	.label_1654
	lea	rdi, [rdi]
	jmp	.label_1658
.label_1656:
	mov	rbp, rbp
	mov	al, byte ptr [rdx + rcx]
	jmp	.label_1661
.label_1670:
	lea	rsi, [rsi]
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	mov	rsp, rsp
	movzx	edx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1664
	lea	rsi, [rsi]
	mov	al, byte ptr [rsi + rdx]
.label_1664:
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_1680
	mov	rsp, rsp
	xor	eax, eax
	nop	
	cmp	edx, 0xa
	lea	rdi, [rdi]
	jne	.label_1680
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	lea	rsi, [rsi]
	movzx	eax, al
	add	eax, eax
.label_1680:
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x70], eax
	jmp	.label_1636
.label_1619:
	mov	rax, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x80]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rax + rdi]
	mov	dl, al
	lea	rdi, [rdi]
	shr	dl, 6
	lea	rsi, [rsi]
	movzx	edx, dl
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsp, rsp
	mov	r15d, 1
	bt	rdx, rax
	jb	.label_1635
	lea	rsi, [rsi]
	xor	r15d, r15d
	movzx	eax, al
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jne	.label_1635
	test	ch, 0xff
	setne	al
	movzx	r15d, al
	mov	rbp, rbp
	add	r15d, r15d
	jmp	.label_1635
.label_1660:
	mov	rsp, rsp
	test	r9b, r9b
	mov	rbp, rbp
	jne	.label_1697
.label_1668:
	xor	r15d, r15d
	nop	
	cmp	ebp, 0xa
	lea	rsi, [rsi]
	jne	.label_1635
	lea	rdi, [rdi]
	mov	r15d, 2
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rsp, rsp
	jne	.label_1635
	xor	r15d, r15d
	jmp	.label_1635
.label_1650:
	mov	r12, r10
	mov	edi, ebp
	call	iswalnum
	mov	rbp, rbp
	cmp	ebp, 0x5f
	mov	rsp, rsp
	mov	r15d, 1
	je	.label_1610
	test	eax, eax
	lea	rsi, [rsi]
	mov	r10, r12
	lea	rdi, [rdi]
	je	.label_1616
	mov	rbp, rbp
	jmp	.label_1618
.label_1621:
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1622
	mov	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_1628
	nop	
	add	r10, rax
	mov	rdx, qword ptr [rbx]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r10]
	nop	
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1634
.label_1649:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rax + rsi]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rdx + rsi]
.label_1634:
	mov	byte ptr [rdi + rax], dl
	mov	rbp, rbp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_1649
	mov	rsp, rsp
	mov	rax, rcx
.label_1628:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1622
.label_1658:
	mov	rbp, rbp
	mov	r15, r14
.label_1623:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1622
.label_1665:
	lea	rsi, [rsi]
	mov	rdx, r14
	sub	rdx, r10
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x50]
	mov	rsp, rsp
	add	rsi, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x58], rsi
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1659
.label_1672:
	mov	r15d, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_1635
.label_1647:
	and	r15d, 2
	xor	r15d, 0xa
.label_1635:
	mov	dword ptr [rbx + 0x70], r15d
	mov	rax, qword ptr [rbx + 0x30]
	cmp	r12, r14
	mov	rsp, rsp
	jne	.label_1677
	mov	rbp, rbp
	mov	rdx, rax
	sub	rdx, r14
	jle	.label_1677
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + r14*8], r14
	lea	rdi, [rdi]
	jne	.label_1677
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	nop	
	shl	rdx, 2
	mov	rbp, r10
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	sub	rdx, r14
	nop	
	lea	rsi, [rdi + r14]
	lea	rdi, [rdi]
	call	memmove
	mov	r10, rbp
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	mov	rbp, rbp
	movq	xmm1, r14
	nop	
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_1636
	mov	rax, qword ptr [rbx + 0x18]
	lea	rsi, [rsi]
	lea	rcx, [rax + r14*8]
	lea	rdi, [rdi]
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1698:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	nop	
	mov	qword ptr [rax + rdx*8], rsi
	lea	rsi, [rsi]
	inc	rdx
	nop	
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1698
	mov	rbp, rbp
	jmp	.label_1636
.label_1677:
	mov	rcx, r14
	sub	rcx, r10
	mov	rdx, qword ptr [rbx + 0x50]
	add	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x58], rdx
	mov	rbp, rbp
	add	rcx, qword ptr [rbx + 0x60]
	nop	
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax + rax]
.label_1620:
	mov	rbp, rbp
	mov	rcx, r12
	test	rcx, rcx
	mov	rbp, rbp
	jle	.label_1614
	lea	r12, [rcx - 1]
	mov	rdx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rdx + rcx*8 - 8], r14
	lea	rdi, [rdi]
	je	.label_1620
.label_1614:
	cmp	rcx, rax
	jge	.label_1630
	mov	rdx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1608:
	nop	
	cmp	dword ptr [rdx + rcx*4], -1
	jne	.label_1630
	inc	rcx
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1608
.label_1630:
	mov	rsp, rsp
	cmp	rcx, rax
	jne	.label_1632
	mov	qword ptr [rbx + 0x30], 0
	xor	ebp, ebp
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rbp
	lea	rsi, [rsi]
	jmp	.label_1636
.label_1632:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rax + rcx*8]
	sub	rbp, r14
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rbp
	lea	rdi, [rdi]
	je	.label_1642
	mov	rbp, rbp
	mov	r15, r10
	test	rbp, rbp
	jle	.label_1646
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	mov	rsp, rsp
	call	memset
.label_1646:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	r10, r15
.label_1642:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rbp
	mov	rsp, rsp
	jmp	.label_1636
.label_1610:
	nop	
	mov	r10, r12
	jmp	.label_1618
.label_1700:
	mov	r10, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	r11, r12
.label_1607:
	mov	rsp, rsp
	cmp	esi, -1
	jne	.label_1629
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	mov	r12, qword ptr [rbx + 0x38]
.label_1678:
	mov	rsp, rsp
	add	r12, rax
	nop	
	mov	rax, r12
	nop	
	sub	rax, r10
	mov	rsp, rsp
	jge	.label_1676
	mov	qword ptr [rsp + 0x10], r11
	nop	
	mov	qword ptr [rsp + 0x18], r13
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	jmp	.label_1609
.label_1671:
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	cmp	r13, r12
	je	.label_1684
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	mov	r10, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	je	.label_1685
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rax + r12]
	jmp	.label_1685
.label_1684:
	lea	rsi, [rsi]
	mov	r10, rbp
	nop	
	mov	rcx, qword ptr [rsp + 8]
.label_1685:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	nop	
	jmp	.label_1690
	nop	
.label_1609:
	mov	rbp, r10
	nop	
	mov	rax, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	r13, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	rdx, r13
	sub	rdx, r12
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	add	rsi, r12
	lea	rdi, [rsp]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	nop	
	test	rax, rax
	je	.label_1671
	mov	rcx, rax
	lea	rdi, [rdi]
	or	rcx, 1
	lea	rdi, [rdi]
	cmp	rcx, -1
	je	.label_1671
	mov	esi, dword ptr [rsp]
	mov	rsp, rsp
	mov	r10, rbp
.label_1690:
	add	r12, rax
	lea	rdi, [rdi]
	mov	rax, r12
	nop	
	sub	rax, r10
	jl	.label_1609
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	cmp	esi, -1
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	je	.label_1612
.label_1629:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1679
.label_1613:
	xor	ecx, ecx
	cmp	esi, 0xa
	mov	rbp, rbp
	jne	.label_1625
	lea	rsi, [rsi]
	mov	ecx, 2
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1625
	mov	rsp, rsp
	xor	ecx, ecx
.label_1625:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rsp, rsp
	jmp	.label_1633
.label_1676:
	mov	qword ptr [rbx + 0x30], rax
.label_1612:
	test	r11, r11
	mov	rbp, rbp
	jle	.label_1639
	lea	rax, [r11 - 1]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], rax
	mov	rsp, rsp
	je	.label_1641
	mov	rbp, rbp
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1644
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
.label_1653:
	mov	ebp, dword ptr [rax + r11*4 - 4]
	nop	
	cmp	ebp, -1
	mov	rbp, rbp
	jne	.label_1651
	lea	rsi, [rsi]
	dec	r11
	mov	rbp, rbp
	jg	.label_1653
	mov	r15d, dword ptr [rbx + 0x70]
	mov	dword ptr [rbx + 0x70], r15d
	nop	
	jmp	.label_1633
.label_1644:
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x80]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	r15d, 1
	lea	rsi, [rsi]
	bt	rcx, rax
	mov	rbp, rbp
	jb	.label_1652
	mov	rbp, rbp
	xor	r15d, r15d
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1652
	jmp	.label_1673
.label_1651:
	cmp	byte ptr [rbx + 0x8e], 0
	lea	rsi, [rsi]
	jne	.label_1674
.label_1669:
	lea	rsi, [rsi]
	xor	r15d, r15d
	cmp	ebp, 0xa
	jne	.label_1652
.label_1673:
	mov	r15d, 2
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rbp, rbp
	jne	.label_1652
	xor	r15d, r15d
.label_1652:
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x70], r15d
.label_1633:
	mov	rbp, rbp
	mov	rbp, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	test	rbp, rbp
	jne	.label_1683
.label_1693:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, rbp
	jmp	.label_1636
.label_1683:
	jle	.label_1687
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	nop	
	cmovg	rdx, rbp
	lea	rdi, [rdi]
	shl	rdx, 2
	mov	esi, 0xff
	lea	rdi, [rdi]
	mov	r15, r10
	lea	rsi, [rsi]
	call	memset
	mov	r10, r15
.label_1687:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1693
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	esi, 0xff
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rbp, r10
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	r10, rbp
	lea	rdi, [rdi]
	jmp	.label_1693
.label_1639:
	mov	r15d, dword ptr [rbx + 0x70]
	mov	dword ptr [rbx + 0x70], r15d
	jmp	.label_1633
.label_1641:
	mov	rsp, rsp
	and	r15d, 2
	mov	rsp, rsp
	xor	r15d, 0xa
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x70], r15d
	mov	rsp, rsp
	jmp	.label_1633
.label_1679:
	mov	rsp, rsp
	mov	r15, r10
	mov	ebp, esi
	mov	edi, ebp
	nop	
	call	iswalnum
	mov	esi, ebp
	nop	
	cmp	esi, 0x5f
	nop	
	mov	ecx, 1
	je	.label_1657
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	mov	r10, r15
	je	.label_1613
	lea	rdi, [rdi]
	jmp	.label_1625
.label_1697:
	nop	
	mov	qword ptr [rsp + 0x20], r10
	nop	
	mov	edi, ebp
	call	iswalnum
	nop	
	cmp	ebp, 0x5f
	mov	rsp, rsp
	mov	r15d, 1
	je	.label_1626
	test	eax, eax
	nop	
	mov	r10, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	je	.label_1668
	nop	
	jmp	.label_1635
.label_1692:
	lea	rsi, [rsp + 0x2e]
	mov	rsp, rsp
	cmp	rdx, 6
	lea	rsi, [rsi]
	mov	ecx, 6
	cmovl	ecx, edx
	nop	
	test	ecx, ecx
	jle	.label_1638
	mov	qword ptr [rsp + 0x20], r10
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	mov	rsp, rsp
	cmp	rdi, -8
	nop	
	mov	rcx, -7
	mov	rbp, rbp
	cmovg	rcx, rdi
	xor	rcx, 0xffffffffffffffff
	mov	rbp, rbp
	shl	rcx, 0x20
	lea	rdi, [rdi]
	sar	rcx, 0x20
	inc	rcx
.label_1655:
	nop	
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	rbp, rbp
	mov	al, byte ptr [r9 + rdi]
	mov	byte ptr [rsp + rcx + 0x2c], al
	lea	rdi, [rdi]
	dec	rcx
	cmp	rcx, 1
	mov	rsp, rsp
	jg	.label_1655
	mov	r12, r11
	jmp	.label_1662
.label_1674:
	lea	rsi, [rsi]
	mov	r12, r10
	lea	rdi, [rdi]
	mov	edi, ebp
	call	iswalnum
	lea	rdi, [rdi]
	cmp	ebp, 0x5f
	nop	
	mov	r15d, 1
	je	.label_1667
	test	eax, eax
	mov	rsp, rsp
	mov	r10, r12
	lea	rdi, [rdi]
	je	.label_1669
	jmp	.label_1652
.label_1638:
	mov	r12, r11
	mov	qword ptr [rsp + 0x20], r10
	jmp	.label_1662
.label_1657:
	nop	
	mov	r10, r15
	jmp	.label_1625
.label_1626:
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_1635
.label_1667:
	mov	rsp, rsp
	mov	r10, r12
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x70], r15d
	jmp	.label_1633
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417160

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r14
	push	rbx
	nop	
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	js	.label_1719
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x58], rdx
	je	.label_1721
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1704
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	inc	rdx
	nop	word ptr [rax + rax]
.label_1716:
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	mov	rbp, rbp
	cmp	ebp, -1
	mov	rsp, rsp
	jne	.label_1712
	dec	rdx
	test	rdx, rdx
	lea	rdi, [rdi]
	jg	.label_1716
	mov	edi, dword ptr [rbx + 0x70]
	mov	rsp, rsp
	jmp	.label_1709
.label_1704:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x80]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edi, 1
	bt	rcx, rax
	mov	rsp, rsp
	jb	.label_1709
	xor	edi, edi
	movzx	eax, al
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_1709
	jmp	.label_1705
.label_1712:
	cmp	byte ptr [rbx + 0x8e], 0
	lea	rdi, [rdi]
	jne	.label_1706
.label_1715:
	lea	rsi, [rsi]
	xor	edi, edi
	cmp	ebp, 0xa
	mov	rbp, rbp
	jne	.label_1709
.label_1705:
	mov	rbp, rbp
	mov	edi, 2
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_1709
	lea	rdi, [rdi]
	xor	edi, edi
	jmp	.label_1709
.label_1719:
	mov	rbp, rbp
	mov	edi, dword ptr [rbx + 0x70]
	jmp	.label_1709
.label_1721:
	mov	edi, dword ptr [rbx + 0xa0]
	nop	
	and	edi, 2
	xor	edi, 0xa
.label_1709:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	xor	eax, eax
	test	rcx, rcx
	mov	rsp, rsp
	jle	.label_1707
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x98]
	nop	
	mov	rdx, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax]
	mov	eax, edi
	and	eax, 2
	mov	rsp, rsp
	mov	r8d, edi
	and	r8d, 8
	xor	ebp, ebp
	test	dil, 1
	lea	rsi, [rsi]
	jne	.label_1720
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_1711
	nop	dword ptr [rax + rax]
.label_1708:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	mov	rsp, rsp
	shl	rdi, 4
	mov	edi, dword ptr [rsi + rdi + 8]
	lea	rsi, [rsi]
	movzx	ebx, dil
	nop	
	cmp	ebx, 2
	mov	rsp, rsp
	jne	.label_1714
	shr	edi, 8
	test	di, 0x3ff
	lea	rsi, [rsi]
	je	.label_1707
	test	dil, 0x24
	lea	rsi, [rsi]
	jne	.label_1714
	lea	rsi, [rsi]
	test	r8d, r8d
	jne	.label_1707
	mov	rbp, rbp
	test	dil, dil
	lea	rsi, [rsi]
	jns	.label_1707
	nop	word ptr [rax + rax]
.label_1714:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, rcx
	mov	rbp, rbp
	mov	eax, 0
	jl	.label_1708
	lea	rdi, [rdi]
	jmp	.label_1707
	nop	dword ptr [rax + rax]
.label_1711:
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	shl	rdi, 4
	mov	rsp, rsp
	mov	edi, dword ptr [rsi + rdi + 8]
	movzx	ebx, dil
	cmp	ebx, 2
	lea	rsi, [rsi]
	jne	.label_1713
	shr	edi, 8
	nop	
	test	di, 0x3ff
	je	.label_1707
	test	dil, 4
	jne	.label_1713
	lea	rsi, [rsi]
	test	r8d, r8d
	jne	.label_1707
	lea	rsi, [rsi]
	test	dil, dil
	mov	rsp, rsp
	jns	.label_1707
.label_1713:
	mov	rbp, rbp
	inc	rbp
	cmp	rbp, rcx
	mov	eax, 0
	jl	.label_1711
	nop	
	jmp	.label_1707
.label_1720:
	test	eax, eax
	jne	.label_1710
	nop	dword ptr [rax]
.label_1703:
	mov	rax, qword ptr [rdx + rbp*8]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	shl	rdi, 4
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + rdi + 8]
	lea	rsi, [rsi]
	movzx	ebx, dil
	cmp	ebx, 2
	lea	rdi, [rdi]
	jne	.label_1717
	shr	edi, 8
	lea	rdi, [rdi]
	test	di, 0x3ff
	lea	rsi, [rsi]
	je	.label_1707
	test	dil, 0x28
	lea	rdi, [rdi]
	jne	.label_1717
	lea	rdi, [rdi]
	test	r8d, r8d
	nop	
	jne	.label_1707
	mov	rbp, rbp
	test	dil, dil
	lea	rsi, [rsi]
	jns	.label_1707
	nop	
.label_1717:
	inc	rbp
	cmp	rbp, rcx
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rsp, rsp
	jl	.label_1703
	mov	rsp, rsp
	jmp	.label_1707
	nop	dword ptr [rax + rax]
.label_1710:
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	nop	
	shl	rdi, 4
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsi + rdi + 8]
	lea	rdi, [rdi]
	movzx	ebx, dil
	cmp	ebx, 2
	nop	
	jne	.label_1718
	nop	
	shr	edi, 8
	mov	rsp, rsp
	test	di, 0x3ff
	lea	rsi, [rsi]
	je	.label_1707
	test	dil, 8
	lea	rsi, [rsi]
	jne	.label_1718
	test	r8d, r8d
	lea	rdi, [rdi]
	jne	.label_1707
	lea	rdi, [rdi]
	test	dil, dil
	nop	
	jns	.label_1707
.label_1718:
	mov	rsp, rsp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, rcx
	mov	rbp, rbp
	mov	eax, 0
	mov	rbp, rbp
	jl	.label_1710
.label_1707:
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1706:
	mov	edi, ebp
	call	iswalnum
	nop	
	cmp	ebp, 0x5f
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	je	.label_1709
	nop	
	test	eax, eax
	jne	.label_1709
	lea	rsi, [rsi]
	jmp	.label_1715
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4174c0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdi
	nop	
	cmp	qword ptr [r14 + 0xe8], 0
	mov	rbp, rbp
	jle	.label_1722
	nop	
	xor	r12d, r12d
	nop	
.label_1725:
	mov	rax, qword ptr [r14 + 0xf8]
	nop	
	mov	r15, qword ptr [rax + r12*8]
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rsi, [rsi]
	jle	.label_1724
	nop	word ptr cs:[rax + rax]
.label_1723:
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	call	free
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1723
.label_1724:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1726
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
.label_1726:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	free
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1725
.label_1722:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4175d0

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	r14, rcx
	nop	
	mov	qword ptr [rbp - 0x98], r14
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x58], rbx
	mov	r13, rsi
	mov	qword ptr [rbp - 0x88], r13
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + label_1763]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1764]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	xor	r12d, r12d
	test	r8b, r8b
	je	.label_1765
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	r15, r14
	mov	edi, 0x60
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	r14d, 0xc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1736
	nop	
	lea	r12, [rbp - 0x50]
	nop	
	mov	r14, r15
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
.label_1765:
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rdi + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rdi, [rdi]
	cmp	rdx, 0xfbf
	mov	rsp, rsp
	ja	.label_1750
	mov	rsp, rsp
	mov	rax, rsp
	lea	rdi, [rdi]
	lea	rcx, [rdx + 0xf]
	and	rcx, 0xfffffffffffffff0
	mov	rsp, rsp
	sub	rax, rcx
	nop	
	mov	rsp, rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], 0
	jmp	.label_1733
.label_1750:
	lea	rdi, [rdi]
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdx
	call	malloc
	test	rax, rax
	nop	
	je	.label_1768
	mov	cl, 1
	mov	dword ptr [rbp - 0x9c], ecx
	mov	rdx, qword ptr [rbp - 0x78]
.label_1733:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdx
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, r14
	call	memcpy
	mov	rsi, qword ptr [r14]
	xor	edi, edi
	mov	rbp, rbp
	cmp	rsi, qword ptr [r14 + 8]
	jg	.label_1771
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], r12
	nop	
	lea	rax, [r14 + 8]
	mov	qword ptr [rbp - 0x90], rax
	nop	word ptr cs:[rax + rax]
.label_1759:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax]
	mov	rdx, r15
	shl	rdx, 4
	mov	rbp, rbp
	lea	rax, [rcx + rdx]
	mov	rbp, rbp
	mov	ecx, dword ptr [rcx + rdx + 8]
	lea	rsi, [rsi]
	movzx	edx, cl
	cmp	edx, 9
	je	.label_1752
	cmp	edx, 8
	mov	r12, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	jne	.label_1740
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1740
	shl	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [r14 + rax], rsi
	lea	rdi, [rdi]
	mov	qword ptr [r14 + rax + 8], -1
	mov	rsp, rsp
	jmp	.label_1740
	nop	
.label_1752:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	mov	r12, qword ptr [rbp - 0xa8]
	jge	.label_1740
	nop	
	shl	rax, 4
	cmp	qword ptr [r14 + rax], rsi
	jge	.label_1785
	mov	qword ptr [r14 + rax + 8], rsi
	mov	rdi, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rbp - 0xb8], rsi
	nop	
	mov	rsi, r14
	jmp	.label_1788
.label_1785:
	test	ecx, 0x80000
	je	.label_1793
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	cmp	qword ptr [rcx + rax], -1
	mov	rbp, rbp
	je	.label_1793
	mov	rdi, r14
	nop	
	mov	qword ptr [rbp - 0xb8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xb0]
.label_1788:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rsi, qword ptr [rbp - 0xb8]
	jmp	.label_1740
.label_1793:
	lea	rsi, [rsi]
	mov	qword ptr [r14 + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_1740:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rsi
	cmp	rsi, qword ptr [r14 + 8]
	mov	rbp, rbp
	jne	.label_1744
	cmp	r15, qword ptr [r13 + 0xb0]
	lea	rdi, [rdi]
	jne	.label_1744
	test	r12, r12
	je	.label_1751
	mov	rsp, rsp
	test	rbx, rbx
	mov	rcx, qword ptr [rbp - 0x90]
	mov	eax, 0
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	je	.label_1753
	nop	dword ptr [rax]
.label_1761:
	mov	rsp, rsp
	cmp	qword ptr [rcx - 8], 0
	js	.label_1757
	lea	rdi, [rdi]
	cmp	qword ptr [rcx], -1
	je	.label_1753
.label_1757:
	inc	rax
	lea	rdi, [rdi]
	add	rcx, 0x10
	cmp	rax, rbx
	lea	rdi, [rdi]
	jb	.label_1761
.label_1753:
	cmp	rax, rbx
	je	.label_1756
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rsp, rsp
	lea	rax, [rcx - 1]
	mov	qword ptr [r12], rax
	nop	
	test	rcx, rcx
	mov	rbp, rbp
	jle	.label_1737
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	lea	rsi, [rsi]
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
.label_1744:
	nop	
	mov	rbx, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	r14, r15
	shl	r14, 4
	mov	eax, dword ptr [rsi + r14 + 8]
	test	al, 8
	mov	rsp, rsp
	jne	.label_1774
	nop	
	mov	qword ptr [rbp - 0xa8], r12
	test	eax, 0x100000
	jne	.label_1777
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 4
	lea	rsi, [rsi]
	jne	.label_1778
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi + r14]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx + 0x10]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rax + rcx + 0x18]
	lea	rsi, [rsi]
	mov	r12, r13
	sub	r12, rdx
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	je	.label_1783
	cmp	r13, -1
	je	.label_1728
	cmp	rdx, -1
	mov	rsp, rsp
	je	.label_1728
	cmp	r13, rdx
	lea	rdi, [rdi]
	je	.label_1783
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, r12
	lea	rdi, [rdi]
	jl	.label_1728
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rax + 8]
	lea	rdi, [rsi + rdx]
	add	rsi, qword ptr [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 0x80], rdx
	lea	rsi, [rsi]
	mov	rdx, r12
	call	memcmp
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1728
.label_1783:
	cmp	r13, rdx
	lea	rdi, [rdi]
	jne	.label_1754
	lea	rdi, [rbp - 0x70]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	je	.label_1729
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xb8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rcx*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1754
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x28]
	nop	
	lea	rsi, [r15 + r15*2]
	mov	rdx, qword ptr [rdx + rsi*8 + 0x10]
	mov	r13, qword ptr [rdx]
	lea	rdi, [rdi]
	dec	rax
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, 0
	nop	
	je	.label_1762
	nop	word ptr cs:[rax + rax]
.label_1770:
	lea	rsi, [rdx + rax]
	lea	rsi, [rsi]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r13
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	lea	rsi, [rsi]
	cmovge	rax, rsi
	cmp	rdx, rax
	lea	rsi, [rsi]
	jb	.label_1770
.label_1762:
	cmp	rdx, -1
	nop	
	je	.label_1754
	cmp	qword ptr [rcx + rdx*8], r13
	je	.label_1772
	lea	rsi, [rsi]
	jmp	.label_1754
	nop	word ptr cs:[rax + rax]
.label_1774:
	nop	
	mov	qword ptr [rbp - 0xa8], r12
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	r14, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	je	.label_1729
	nop	
	lea	rax, [r15 + r15*2]
	mov	r10, qword ptr [rbx + rax*8 + 8]
	mov	rsp, rsp
	test	r10, r10
	lea	rdi, [rdi]
	jle	.label_1755
	mov	r9, qword ptr [r14 + 0x10]
	test	r9, r9
	jle	.label_1755
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	dec	r9
	mov	rsi, qword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	mov	r11, -1
	mov	rbp, rbp
	mov	r14d, 0
	mov	rbp, rbp
	je	.label_1781
	nop	dword ptr [rax]
.label_1739:
	mov	rbx, qword ptr [r8 + r14*8]
	mov	rbp, rbp
	mov	rdx, r9
	xor	eax, eax
	nop	dword ptr [rax]
.label_1789:
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rcx, [rdi + rdx]
	shr	rcx, 1
	mov	rbp, rbp
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rax, [rcx + 1]
	nop	
	cmovge	rax, rdi
	cmovge	rdx, rcx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jb	.label_1789
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_1730
	nop	
	cmp	qword ptr [rsi + rax*8], rbx
	jne	.label_1730
	mov	rsp, rsp
	cmp	r11, -1
	mov	rbp, rbp
	mov	r13, r11
	mov	r11, rbx
	lea	rdi, [rdi]
	jne	.label_1734
.label_1730:
	nop	
	inc	r14
	cmp	r14, r10
	jl	.label_1739
	mov	r12, qword ptr [rbp - 0xb8]
	mov	r13, r11
	jmp	.label_1742
	nop	word ptr [rax + rax]
.label_1777:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	call	check_node_accept_bytes
	movsxd	r12, eax
.label_1754:
	test	r12, r12
	nop	
	jne	.label_1748
	mov	rsi, qword ptr [rbx]
	nop	
	mov	r13, qword ptr [rbp - 0x88]
.label_1778:
	add	rsi, r14
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rdx, qword ptr [rbp - 0xb8]
	call	check_node_accept
	test	al, al
	lea	rdi, [rdi]
	mov	r12d, 1
	je	.label_1755
.label_1748:
	add	r12, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rax, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rax + r15*8]
	mov	rsp, rsp
	je	.label_1758
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	r12, qword ptr [rax + 0xa8]
	jg	.label_1728
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + r12*8]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1728
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1728
	dec	rax
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	edx, 0
	mov	rsp, rsp
	je	.label_1747
	nop	word ptr cs:[rax + rax]
.label_1773:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	lea	rdi, [rdi]
	shr	rsi, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rsi*8], r13
	nop	
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	mov	rbp, rbp
	jb	.label_1773
.label_1747:
	lea	rsi, [rsi]
	cmp	rdx, -1
	lea	rsi, [rsi]
	je	.label_1755
	mov	rsp, rsp
	cmp	qword ptr [rcx + rdx*8], r13
	jne	.label_1755
.label_1758:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_1742
.label_1781:
	nop	
	mov	rbx, qword ptr [rsi]
	nop	
	mov	r13, -1
	nop	
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1784:
	cmp	rbx, qword ptr [r8 + rcx*8]
	jne	.label_1780
	cmp	r13, -1
	mov	rax, rbx
	mov	rbp, rbp
	je	.label_1782
	jmp	.label_1734
	nop	word ptr cs:[rax + rax]
.label_1780:
	mov	rax, r13
.label_1782:
	inc	rcx
	lea	rsi, [rsi]
	cmp	rcx, r10
	nop	
	mov	r13, rax
	mov	rsp, rsp
	jl	.label_1784
	jmp	.label_1738
.label_1734:
	mov	r14, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	test	r14, r14
	jle	.label_1787
	lea	rdi, [rdi]
	mov	rcx, r14
	dec	rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	je	.label_1791
	nop	word ptr cs:[rax + rax]
.label_1732:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r13
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	nop	
	jb	.label_1732
.label_1791:
	cmp	rdx, -1
	setne	cl
	mov	rbp, rbp
	cmp	qword ptr [rax + rdx*8], r13
	nop	
	sete	dl
	and	dl, cl
	mov	rbp, rbp
	mov	rax, r13
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1738
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	nop	
	jne	.label_1745
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	jmp	.label_1742
.label_1738:
	mov	r12, qword ptr [rbp - 0xb8]
	mov	r13, rax
	lea	rdi, [rdi]
	jmp	.label_1742
.label_1787:
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xb8]
	nop	
	je	.label_1766
.label_1745:
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	lea	rax, [r12 + 1]
	mov	qword ptr [rcx], rax
	nop	
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jne	.label_1760
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0xa8], rcx
	nop	
	shl	rax, 5
	nop	
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r15, rax
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_1729
	mov	rax, qword ptr [rbp - 0xa8]
	shl	qword ptr [rax + 8], 1
	nop	
	mov	qword ptr [rax + 0x10], r15
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb8]
	jmp	.label_1769
.label_1760:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rcx
	mov	rdi, qword ptr [rbp - 0x78]
.label_1769:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rdi
	lea	r12, [r12 + r12*2]
	lea	rdi, [rdi]
	shl	r12, 4
	lea	rdi, [rdi]
	mov	qword ptr [r15 + r12], rdx
	mov	rsp, rsp
	mov	qword ptr [r15 + r12 + 8], rbx
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [r15 + r12 + 0x10], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1729
	mov	rdi, rax
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	lea	rbx, [r15 + r12 + 0x18]
	mov	qword ptr [r15 + r12 + 0x20], r14
	nop	
	test	r14, r14
	jle	.label_1786
	nop	
	mov	qword ptr [rbx], r14
	shl	r14, 3
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15 + r12 + 0x28], rax
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1779
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	jmp	.label_1772
.label_1786:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1772:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xb8]
	jmp	.label_1742
.label_1766:
	mov	rbp, rbp
	mov	r12, rdx
.label_1742:
	test	r13, r13
	nop	
	mov	r14, qword ptr [rbp - 0x98]
	jns	.label_1792
	mov	rsp, rsp
	cmp	r13, -2
	lea	rsi, [rsi]
	je	.label_1729
	nop	word ptr cs:[rax + rax]
.label_1755:
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_1735
.label_1728:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbx]
	lea	rax, [rcx - 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1737
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rax, 4
	lea	r14, [rax + rax*2]
	mov	r12, qword ptr [rcx + r14]
	mov	rsi, qword ptr [rcx + r14 + 0x10]
	mov	r15, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r14 + 0x10]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rax + r14 + 0x28]
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + r14 + 0x18]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm0
	nop	
	mov	r13, qword ptr [rax + r14 + 8]
	mov	r14, r15
.label_1792:
	cmp	r12, qword ptr [r14 + 8]
	mov	r15, r13
	mov	rsi, r12
	mov	rbx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	r13, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	jle	.label_1759
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xa8]
.label_1771:
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	mov	rsp, rsp
	je	.label_1727
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	call	free
.label_1727:
	xor	r14d, r14d
	test	r12, r12
	je	.label_1736
	xor	r14d, r14d
	nop	
	cmp	qword ptr [r12], 0
	jle	.label_1749
	nop	
	xor	ebx, ebx
	nop	
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1776:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	lea	rsi, [rsi]
	inc	r15
	add	rbx, 0x30
	mov	rsp, rsp
	cmp	r15, qword ptr [r12]
	mov	rbp, rbp
	jl	.label_1776
	jmp	.label_1749
.label_1768:
	lea	rdi, [rdi]
	mov	r14d, 0xc
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_1736
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [r12], 0
	mov	rbp, rbp
	jle	.label_1749
	nop	
	xor	r15d, r15d
	nop	
.label_1790:
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	mov	rdi, qword ptr [rax + rbx + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	inc	r15
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r12]
	jl	.label_1790
	lea	rsi, [rsi]
	jmp	.label_1749
.label_1735:
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	r14d, 1
	jmp	.label_1731
.label_1751:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	xor	r14d, r14d
.label_1731:
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	je	.label_1736
	mov	rdi, qword ptr [rbp - 0xb0]
	jmp	.label_1741
.label_1756:
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1743
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	free
.label_1743:
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	jle	.label_1749
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1746:
	nop	
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	nop	
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	mov	rsp, rsp
	jl	.label_1746
	nop	
	jmp	.label_1749
.label_1779:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1729:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	free
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	mov	rsp, rsp
	je	.label_1767
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	free
.label_1767:
	mov	rbp, rbp
	mov	r14d, 0xc
	nop	
	mov	r12, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_1736
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [r12], 0
	mov	rsp, rsp
	jle	.label_1749
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1775:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	mov	rbp, rbp
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1775
.label_1749:
	mov	rdi, qword ptr [r12 + 0x10]
.label_1741:
	nop	
	call	free
.label_1736:
	mov	rbp, rbp
	mov	eax, r14d
	lea	rsi, [rsi]
	lea	rsp, [rbp - 0x28]
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1737:
	mov	edi, OFFSET FLAT:.str.26_0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_0
	nop	
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4183c0

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	test	rcx, rcx
	jle	.label_1794
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_1797
.label_1796:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0xf8]
	nop	
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1794
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	rbp, rbp
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1798
	nop	dword ptr [rax]
.label_1797:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	mov	rdx, rbp
	shl	rdx, 4
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	lea	rdi, [rdi]
	jne	.label_1795
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx]
	lea	rdi, [rdi]
	cmp	rax, 0x3f
	nop	
	jg	.label_1795
	mov	rdx, qword ptr [r13 + 0xa0]
	mov	rbp, rbp
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_1795
	lea	rdi, [rdi]
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	lea	rdi, [rdi]
	je	.label_1796
.label_1798:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x30
	mov	rsp, rsp
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	nop	
	test	rdx, rdx
	je	.label_1794
	mov	qword ptr [rdx + 8], rbp
	lea	rdi, [rdi]
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	nop	
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax + rax]
.label_1795:
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rbp, rbp
	jl	.label_1797
.label_1794:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418560

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xa8
	mov	r10, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r10
	mov	r9, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], r9
	lea	rsi, [rsi]
	cmp	qword ptr [r10 + 8], 0
	nop	
	jle	.label_1857
	nop	
	mov	rax, qword ptr [r9 + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x90], rax
	mov	r8, qword ptr [r9 + 0x48]
	mov	qword ptr [rsp + 0x38], r8
	lea	rax, [r8 + 1]
	mov	qword ptr [rsp + 0x78], rax
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_1837:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], r11
	mov	rsp, rsp
	mov	rax, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + r11*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax]
	nop	
	shl	r15, 4
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r14 + r15 + 8]
	mov	rsp, rsp
	movzx	eax, bpl
	cmp	eax, 4
	jne	.label_1804
	shr	ebp, 8
	lea	rsi, [rsi]
	test	bp, 0x3ff
	nop	
	je	.label_1802
	test	r8, r8
	js	.label_1863
	cmp	qword ptr [r9 + 0x58], r8
	je	.label_1814
	cmp	dword ptr [r9 + 0x90], 2
	jl	.label_1816
	mov	rax, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rsp + 0x78]
	nop	word ptr [rax + rax]
.label_1822:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	lea	rsi, [rsi]
	cmp	ebx, -1
	jne	.label_1820
	dec	rcx
	nop	
	test	rcx, rcx
	jg	.label_1822
	mov	ecx, dword ptr [r9 + 0x70]
	mov	rsp, rsp
	jmp	.label_1824
.label_1816:
	nop	
	mov	rax, qword ptr [r9 + 8]
	mov	rcx, qword ptr [r9 + 0x80]
	movzx	eax, byte ptr [rax + r8]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + rdx*8]
	xor	ecx, ecx
	bt	rdx, rax
	jae	.label_1825
	mov	rbp, rbp
	mov	ecx, 1
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	jmp	.label_1828
.label_1820:
	cmp	byte ptr [r9 + 0x8e], 0
	jne	.label_1834
.label_1862:
	xor	ecx, ecx
	cmp	ebx, 0xa
	je	.label_1836
	lea	rdi, [rdi]
	jmp	.label_1824
.label_1825:
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1824
.label_1836:
	mov	ecx, 2
	cmp	byte ptr [r9 + 0x8d], 0
	mov	rsp, rsp
	jne	.label_1824
	xor	ecx, ecx
	nop	
	jmp	.label_1824
.label_1863:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	jmp	.label_1824
.label_1814:
	mov	ecx, dword ptr [r9 + 0xa0]
	lea	rsi, [rsi]
	and	ecx, 2
	xor	ecx, 0xa
	nop	
.label_1824:
	mov	eax, ecx
	mov	rbp, rbp
	and	eax, 1
	sete	dl
	test	bpl, 4
	nop	
	je	.label_1828
	mov	rsp, rsp
	test	eax, eax
	je	.label_1804
	jmp	.label_1828
.label_1834:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r8
	lea	rdi, [rdi]
	mov	r13, r9
	lea	rdi, [rdi]
	mov	r12, r10
	mov	rbp, rbp
	mov	edi, ebx
	call	iswalnum
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	cmp	ebx, 0x5f
	lea	rdi, [rdi]
	mov	ecx, 1
	je	.label_1859
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r10, r12
	lea	rdi, [rdi]
	mov	r9, r13
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	je	.label_1862
	nop	
	jmp	.label_1828
.label_1859:
	mov	r10, r12
	mov	r9, r13
	mov	r8, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x88]
	nop	word ptr [rax + rax]
.label_1828:
	mov	rbp, rbp
	lea	rax, [r14 + r15 + 8]
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	test	dl, dl
	jne	.label_1869
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	and	edx, 0x800
	nop	
	jne	.label_1804
.label_1869:
	test	cl, 2
	jne	.label_1875
	mov	edx, eax
	and	edx, 0x2000
	jne	.label_1804
.label_1875:
	nop	
	test	cl, 8
	nop	
	jne	.label_1802
	mov	rsp, rsp
	shr	eax, 8
	nop	
	test	al, al
	js	.label_1804
	nop	word ptr cs:[rax + rax]
.label_1802:
	mov	rbp, qword ptr [r9 + 0xc8]
	mov	qword ptr [rsp + 0x40], rbp
	mov	rax, qword ptr [r9 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rax
	nop	
	mov	rax, qword ptr [r9 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x68], rax
	test	rbp, rbp
	mov	rsp, rsp
	mov	eax, 0
	lea	rsi, [rsi]
	jle	.label_1809
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0xd8]
	xor	eax, eax
	mov	rdx, rbp
	nop	word ptr cs:[rax + rax]
.label_1823:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	rax, rsi
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	jl	.label_1823
.label_1809:
	cmp	rax, rbp
	nop	
	jge	.label_1829
	lea	rdi, [rdi]
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1829
	mov	rcx, qword ptr [r9 + 0xd8]
	mov	rsp, rsp
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r8
	jne	.label_1829
	lea	rax, [rcx + rax*8]
	nop	dword ptr [rax + rax]
.label_1841:
	nop	
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	cmp	qword ptr [rax], rcx
	mov	rsp, rsp
	je	.label_1840
	cmp	byte ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	lea	rax, [rax + 0x28]
	jne	.label_1841
.label_1829:
	mov	rbp, rbp
	cmp	qword ptr [r9 + 0xe8], 0
	mov	rax, rbp
	jle	.label_1844
	mov	rax, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rax]
	nop	
	mov	r15, qword ptr [rax + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], r15
	lea	rsi, [rsi]
	xor	edx, edx
	jmp	.label_1847
	nop	word ptr cs:[rax + rax]
.label_1868:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
.label_1847:
	mov	rcx, qword ptr [r9 + 0xf8]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rcx + rdx*8]
	mov	qword ptr [rsp + 0x50], r13
	mov	rcx, qword ptr [r13 + 8]
	mov	rbp, rbp
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r15
	jne	.label_1855
	mov	r15, qword ptr [r13]
	nop	
	mov	rax, qword ptr [r13 + 0x20]
	test	rax, rax
	jle	.label_1850
	mov	qword ptr [rsp + 0xa0], rdx
	mov	rsp, rsp
	mov	r12, r8
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_1861
	nop	word ptr cs:[rax + rax]
.label_1855:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rdx
	jmp	.label_1846
.label_1850:
	mov	qword ptr [rsp + 0xa0], rdx
	mov	rdx, r8
	mov	rsi, r15
	xor	r14d, r14d
	jmp	.label_1835
.label_1849:
	mov	rdx, qword ptr [r9 + 0x58]
	nop	
	cmp	rsi, rdx
	lea	rdi, [rdi]
	jg	.label_1871
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x40]
	mov	rdi, qword ptr [r9 + 0xc0]
	nop	
	cmp	rax, rsi
	mov	qword ptr [rsp + 0x30], rsi
	mov	rsi, r13
	jg	.label_1872
	lea	rsi, [rsi]
	cmp	rax, rdx
	jl	.label_1800
.label_1872:
	cmp	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	jg	.label_1805
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_1805
.label_1800:
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsp, rsp
	lea	esi, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rdi
	mov	rdi, r9
	mov	r13, r9
	call	extend_buffers
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13d, eax
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1808
.label_1805:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	sub	rdx, rdi
	jle	.label_1817
	mov	rax, qword ptr [r9 + 0xb8]
	lea	rdi, [rax + rdi*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	r13, r9
	lea	rsi, [rsi]
	call	memset
	mov	r9, r13
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [r9 + 0xc0], rax
.label_1817:
	nop	
	mov	rax, qword ptr [r9 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	jmp	.label_1827
	nop	word ptr cs:[rax + rax]
.label_1861:
	mov	rcx, qword ptr [r13 + 0x28]
	nop	
	mov	rbx, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	mov	rsi, rcx
	sub	rsi, r15
	add	rsi, r12
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_1838
	mov	rcx, qword ptr [r9 + 0x30]
	cmp	rsi, rcx
	jg	.label_1849
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rsi
.label_1827:
	mov	r13, r9
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + r12]
	lea	rsi, [rsi]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, r13
	nop	
	mov	r8, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x50]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	jne	.label_1848
.label_1838:
	mov	rbp, rsi
	mov	rdi, r9
	mov	rsi, r13
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbx, r8
	lea	rdi, [rdi]
	mov	r15, r9
	mov	rbp, rbp
	call	get_subexp_sub
	mov	rbp, rbp
	mov	r9, r15
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_1808
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x70], rax
	inc	r14
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	cmp	r14, rax
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	r12, rdx
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	r13, rcx
	jl	.label_1861
	nop	
	jmp	.label_1835
.label_1848:
	mov	rax, qword ptr [r13 + 0x20]
.label_1871:
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	rbp, rbp
	mov	rsi, r15
.label_1835:
	cmp	r14, rax
	jge	.label_1870
	mov	r10, qword ptr [rsp + 0x98]
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x48]
	jmp	.label_1846
.label_1870:
	test	r14, r14
	setg	al
	lea	rdi, [rdi]
	movzx	ebp, al
	add	rbp, rsi
	cmp	rbp, r8
	mov	r10, qword ptr [rsp + 0x98]
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x48]
	jg	.label_1846
	jmp	.label_1806
.label_1854:
	lea	rdi, [rdi]
	cmp	r14, -1
	je	.label_1807
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r11
	mov	qword ptr [rsp + 0x38], r8
	lea	rsi, [rsi]
	mov	r15, r10
	mov	rax, qword ptr [r13 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, r13
	mov	rsp, rsp
	jne	.label_1811
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	edi, 0x18
	mov	r12, r9
	call	rpl_calloc
	mov	rsp, rsp
	mov	r9, r12
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_1808
.label_1811:
	mov	rcx, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 8]
	mov	r12, rbx
	mov	dword ptr [rsp], 9
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbx, r9
	nop	
	mov	rsi, rax
	mov	r8, r14
	mov	rbp, rbp
	mov	r9, rbp
	lea	rsi, [rsi]
	call	check_arrival
	mov	r13d, eax
	cmp	r13d, 1
	mov	r10, r15
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x88]
	mov	r15, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	je	.label_1831
	mov	r15, r8
	nop	
	mov	qword ptr [rsp + 0x98], r10
	test	r13d, r13d
	mov	rax, r12
	jne	.label_1808
	mov	qword ptr [rsp + 0x80], rbx
	mov	r12, qword ptr [rax + 0x20]
	mov	rsp, rsp
	cmp	r12, qword ptr [rax + 0x18]
	mov	rbx, rax
	je	.label_1842
.label_1826:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r12, rbx
	mov	r13d, 0xc
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x80]
	je	.label_1808
	mov	rcx, qword ptr [r12 + 0x20]
	nop	
	mov	rdx, qword ptr [r12 + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	qword ptr [r12 + 0x20], rcx
	nop	
	mov	rsi, r12
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	r8, r15
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	get_subexp_sub
	nop	
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	r13d, eax
	lea	rsi, [rsi]
	cmp	r13d, 1
	lea	rsi, [rsi]
	ja	.label_1808
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsp, rsp
	mov	rbx, rcx
	mov	r10, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	mov	r8, r15
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x48]
	jmp	.label_1810
.label_1833:
	cmp	rdx, qword ptr [r9 + 0x58]
	jge	.label_1846
	mov	qword ptr [rsp + 0x48], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	mov	qword ptr [rsp + 0x38], r8
	mov	rsp, rsp
	mov	r15, r10
	lea	rbx, [rdx + 1]
	mov	rbp, rbp
	mov	r14, rdx
	nop	
	mov	rdi, r9
	mov	esi, ebx
	mov	rbp, rbp
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13, r9
	call	extend_buffers
	mov	rsp, rsp
	mov	r9, r13
	mov	r13d, eax
	mov	rbp, rbp
	test	r13d, r13d
	jne	.label_1808
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r10, r15
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0x88]
	mov	r15, qword ptr [rsp + 0x48]
	mov	r13, r12
	lea	rdi, [rdi]
	mov	rdx, r14
	jmp	.label_1865
.label_1842:
	mov	rbp, rbp
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	lea	rsi, [rax*8 + 8]
	lea	rsi, [rsi]
	call	realloc
	mov	r13d, 0xc
	test	rax, rax
	je	.label_1808
	lea	rcx, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], rcx
	nop	
	jmp	.label_1826
	nop	word ptr cs:[rax + rax]
.label_1806:
	mov	rbp, rbp
	cmp	rbp, qword ptr [r13]
	jle	.label_1830
	nop	
	cmp	rdx, qword ptr [r9 + 0x30]
	lea	rdi, [rdi]
	jge	.label_1833
	lea	rbx, [rdx + 1]
.label_1865:
	mov	rcx, qword ptr [rsp + 0x70]
	movzx	eax, byte ptr [rbp + rcx - 1]
	movzx	ecx, byte ptr [rcx + rdx]
	lea	rsi, [rsi]
	cmp	ecx, eax
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	jne	.label_1846
.label_1830:
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	test	rcx, rcx
	je	.label_1819
	nop	
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1819
	mov	qword ptr [rsp + 0x30], rdx
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	nop	
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1858:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	shl	rdi, 4
	nop	
	movzx	ebx, byte ptr [rdx + rdi + 8]
	nop	
	cmp	ebx, 9
	lea	rsi, [rsi]
	jne	.label_1852
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rdi], r15
	lea	rdi, [rdi]
	je	.label_1854
.label_1852:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1858
.label_1807:
	lea	rsi, [rsi]
	mov	r12, r13
	lea	rdi, [rdi]
	mov	rbx, r9
.label_1810:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_1831
	nop	dword ptr [rax + rax]
.label_1819:
	mov	r12, r13
	lea	rsi, [rsi]
	mov	rbx, r9
.label_1831:
	cmp	rbp, r8
	lea	rbp, [rbp + 1]
	lea	rdi, [rdi]
	mov	r9, rbx
	nop	
	mov	r13, r12
	lea	rdi, [rdi]
	jl	.label_1806
	nop	word ptr cs:[rax + rax]
.label_1846:
	mov	rdx, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	inc	rdx
	cmp	rdx, qword ptr [r9 + 0xe8]
	lea	rsi, [rsi]
	jl	.label_1868
	mov	rax, qword ptr [r9 + 0xc8]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_1844
.label_1840:
	mov	rax, rbp
.label_1844:
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	cmp	rbp, rax
	mov	rsp, rsp
	jge	.label_1804
	jmp	.label_1801
.label_1874:
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], r14
	mov	r14, r12
	mov	r12, rbp
	mov	rbp, r11
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], r8
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	edi, ebx
	lea	rsi, [rsi]
	call	iswalnum
	mov	rbp, rbp
	cmp	ebx, 0x5f
	mov	rbp, rbp
	mov	edx, 1
	nop	
	je	.label_1813
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x38]
	mov	r11, rbp
	mov	rbp, rbp
	mov	rbp, r12
	nop	
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 8]
	je	.label_1815
	jmp	.label_1799
.label_1813:
	mov	r9, qword ptr [rsp + 0x80]
	mov	r8, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_1799
	nop	word ptr cs:[rax + rax]
.label_1801:
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0xd8]
	lea	rcx, [rbp + rbp*4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x60]
	nop	
	cmp	qword ptr [rax + rcx*8], rdx
	jne	.label_1803
	cmp	qword ptr [rax + rcx*8 + 8], r8
	jne	.label_1803
	mov	r12, qword ptr [rax + rcx*8 + 0x18]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsi, qword ptr [rax + 0x30]
	cmp	r12, r14
	jne	.label_1839
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rsp + 0x60]
	nop	
	lea	rcx, [rcx + rcx*2]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1843
.label_1839:
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	lea	rax, [rax*8]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x18]
.label_1843:
	mov	r13, qword ptr [rax]
	lea	r15, [r12 + r8]
	sub	r15, r14
	test	r15, r15
	jle	.label_1853
	lea	rax, [r15 - 1]
	mov	rbp, rbp
	cmp	qword ptr [r9 + 0x58], rax
	mov	rsp, rsp
	je	.label_1856
	lea	rsi, [rsi]
	cmp	dword ptr [r9 + 0x90], 2
	mov	rbp, rbp
	jl	.label_1860
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x10]
	mov	rcx, r15
	nop	dword ptr [rax]
.label_1866:
	nop	
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_1864
	lea	rdi, [rdi]
	dec	rcx
	jg	.label_1866
	lea	rdi, [rdi]
	mov	edx, dword ptr [r9 + 0x70]
	jmp	.label_1799
.label_1860:
	mov	rcx, qword ptr [r9 + 8]
	mov	rdx, qword ptr [r9 + 0x80]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	edx, 1
	bt	rcx, rax
	lea	rdi, [rdi]
	jb	.label_1799
	mov	rbp, rbp
	xor	edx, edx
	movzx	eax, al
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_1799
	jmp	.label_1873
.label_1864:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + 0x8e], 0
	jne	.label_1874
.label_1815:
	xor	edx, edx
	mov	rbp, rbp
	cmp	ebx, 0xa
	jne	.label_1799
.label_1873:
	mov	edx, 2
	mov	rsp, rsp
	cmp	byte ptr [r9 + 0x8d], 0
	jne	.label_1799
	lea	rdi, [rdi]
	xor	edx, edx
	jmp	.label_1799
.label_1853:
	mov	edx, dword ptr [r9 + 0x70]
	jmp	.label_1799
.label_1856:
	mov	rbp, rbp
	mov	edx, dword ptr [r9 + 0xa0]
	lea	rsi, [rsi]
	and	edx, 2
	mov	rbp, rbp
	xor	edx, 0xa
.label_1799:
	mov	dword ptr [rsp + 8], edx
	mov	rsp, rsp
	lea	rcx, [r13 + r13*2]
	mov	rbp, rbp
	mov	rdx, qword ptr [r9 + 0xb8]
	mov	rax, qword ptr [rdx + r15*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + r8*8]
	test	rdx, rdx
	mov	rsp, rsp
	mov	ebx, 0
	je	.label_1812
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdx + 0x10]
.label_1812:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	lea	rdx, [rsi + rcx*8]
	test	rax, rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x18]
	mov	rsp, rsp
	je	.label_1821
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r14
	mov	r14, r12
	mov	r12, rbp
	mov	rbp, rbp
	mov	rbp, r8
	nop	
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbx, rdi
	nop	
	call	re_node_set_init_union
	mov	r13d, eax
	mov	dword ptr [rsp + 0x14], r13d
	mov	rsp, rsp
	test	r13d, r13d
	jne	.label_1832
	lea	rdi, [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 0x90]
	nop	
	mov	rdx, rbx
	mov	ecx, dword ptr [rsp + 8]
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x80]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbp, rbp
	mov	r9, rbx
	mov	rax, qword ptr [r9 + 0xb8]
	cmp	qword ptr [rax + r15*8], 0
	lea	rdi, [rdi]
	jne	.label_1845
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rsp + 0x14]
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1818
.label_1845:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r12
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x50]
	jmp	.label_1851
.label_1821:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rbx
	lea	rsi, [rsi]
	mov	rbx, rbp
	lea	rdi, [rdi]
	mov	rbp, r8
	lea	rdi, [rsp + 0x14]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 0x30], rdx
	mov	ecx, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x80]
	mov	rcx, qword ptr [r9 + 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	nop	
	mov	rax, qword ptr [r9 + 0xb8]
	mov	rsp, rsp
	cmp	qword ptr [rax + r15*8], 0
	nop	
	jne	.label_1867
	mov	r13d, dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	test	r13d, r13d
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbx
	je	.label_1851
	jmp	.label_1818
.label_1867:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x98]
	nop	
	mov	r8, rbp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbx
.label_1851:
	cmp	r12, r14
	mov	rbp, rbp
	jne	.label_1803
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r8*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x70]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1803
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	rsp, rsp
	mov	r15, r10
	mov	rsp, rsp
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	rbp, r9
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, r11
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	rdx, r14
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r13d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], r13d
	lea	rsi, [rsi]
	test	r13d, r13d
	mov	rsp, rsp
	jne	.label_1818
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r12, rbp
	mov	rbp, rdi
	nop	
	mov	r14, rdx
	lea	rdi, [rdi]
	call	transit_state_bkref
	lea	rdi, [rdi]
	mov	r11, rbx
	nop	
	mov	r8, r14
	lea	rdi, [rdi]
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	mov	r10, r15
	mov	r13d, eax
	mov	dword ptr [rsp + 0x14], r13d
	nop	
	test	r13d, r13d
	jne	.label_1818
.label_1803:
	inc	rbp
	cmp	rbp, qword ptr [r9 + 0xc8]
	jl	.label_1801
.label_1804:
	inc	r11
	cmp	r11, qword ptr [r10 + 8]
	mov	rbp, rbp
	jl	.label_1837
.label_1857:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	nop	
	xor	r13d, r13d
	jmp	.label_1818
.label_1808:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], r13d
.label_1818:
	mov	rbp, rbp
	mov	eax, r13d
	lea	rsi, [rsi]
	add	rsp, 0xa8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1832:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	call	free
	jmp	.label_1818
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419550

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rdi
	mov	rbp, qword ptr [r15 + 0x40]
	mov	r14d, 0xc
	movabs	rax, 0xffffffffffffffe
	cmp	rbp, rax
	lea	rsi, [rsi]
	ja	.label_1876
	mov	rbp, rbp
	movsxd	rax, esi
	mov	rcx, qword ptr [r15 + 0x58]
	add	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	cmovle	rbp, rcx
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovge	rbp, rax
	cmp	dword ptr [r15 + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_1878
	mov	rax, rbp
	shr	rax, 0x3d
	jne	.label_1876
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbp*4]
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	nop	
	je	.label_1876
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1878
	lea	rsi, [rbp*8]
	call	realloc
	nop	
	test	rax, rax
	je	.label_1876
	mov	qword ptr [r15 + 0x18], rax
.label_1878:
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x8b], 0
	lea	rdi, [rdi]
	je	.label_1879
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_1876
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rax
.label_1879:
	mov	qword ptr [r15 + 0x40], rbp
	mov	rdi, qword ptr [r15 + 0xb8]
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	je	.label_1891
	lea	rsi, [rbp*8 + 8]
	nop	
	call	realloc
	test	rax, rax
	je	.label_1876
	mov	qword ptr [r15 + 0xb8], rax
.label_1891:
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x88], 0
	mov	eax, dword ptr [r15 + 0x90]
	lea	rsi, [rsi]
	je	.label_1888
	nop	
	cmp	eax, 2
	jl	.label_1877
	mov	rdi, r15
	nop	
	call	build_wcs_upper_buffer
	mov	r14d, eax
	mov	rsp, rsp
	test	r14d, r14d
	je	.label_1881
	jmp	.label_1876
.label_1888:
	cmp	eax, 2
	mov	rbp, rbp
	jl	.label_1883
	mov	rdi, r15
	call	build_wcs_buffer
	nop	
	jmp	.label_1881
.label_1877:
	nop	
	mov	rbp, qword ptr [r15 + 0x30]
	mov	r14, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	r14, rax
	lea	rdi, [rdi]
	cmovg	r14, rax
	mov	rbp, rbp
	cmp	rbp, r14
	jge	.label_1885
	nop	
	jmp	.label_1884
.label_1890:
	mov	rsp, rsp
	mov	cl, byte ptr [rax + rdx]
	lea	rdi, [rdi]
	jmp	.label_1887
.label_1884:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x78]
	add	rcx, qword ptr [r15 + 0x28]
	nop	
	mov	cl, byte ptr [rbp + rcx]
	mov	rbp, rbp
	movzx	edx, cl
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1890
.label_1887:
	mov	rsp, rsp
	movzx	ebx, cl
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	lea	rsi, [rsi]
	ja	.label_1880
	lea	rsi, [rsi]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1880:
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp], bl
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, r14
	jl	.label_1884
	mov	rbp, r14
.label_1885:
	mov	qword ptr [r15 + 0x30], rbp
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x38], rbp
	jmp	.label_1881
.label_1883:
	mov	rdx, qword ptr [r15 + 0x78]
	nop	
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_1881
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x30]
	mov	rcx, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x58]
	mov	rbp, rbp
	cmp	rcx, rsi
	lea	rdi, [rdi]
	cmovg	rcx, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_1889
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	add	rsi, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15]
	nop	
	mov	rbp, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	rsp, rsp
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbp + rax], dl
	jmp	.label_1882
	nop	dword ptr [rax]
.label_1886:
	mov	rdx, qword ptr [r15 + 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	add	rsi, qword ptr [r15 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rax], dl
.label_1882:
	inc	rax
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_1886
	lea	rdi, [rdi]
	mov	rax, rcx
.label_1889:
	mov	qword ptr [r15 + 0x30], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x38], rax
.label_1881:
	xor	r14d, r14d
.label_1876:
	lea	rdi, [rdi]
	mov	eax, r14d
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419830

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbx + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rsi, [rsi]
	cmp	r14, qword ptr [rbx + 0xc0]
	jle	.label_1901
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8], rbp
	mov	qword ptr [rbx + 0xc0], r14
	jmp	.label_1904
.label_1901:
	mov	rcx, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_1896
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbp, rbp
	je	.label_1898
	mov	rbp, rbp
	mov	r13, qword ptr [rbp + 0x50]
	lea	rdi, [rsp]
	mov	rsi, r13
	call	re_node_set_init_union
	mov	rsp, rsp
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1902
	mov	rax, qword ptr [rbx + 0x48]
	jmp	.label_1903
.label_1896:
	mov	qword ptr [rax + r14*8], rbp
	nop	
	jmp	.label_1904
.label_1898:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	r13d, r13d
	mov	rsp, rsp
	mov	rax, r14
.label_1903:
	test	rax, rax
	jle	.label_1907
	nop	
	lea	rcx, [rax - 1]
	cmp	qword ptr [rbx + 0x58], rcx
	lea	rdi, [rdi]
	je	.label_1908
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1905
	mov	rcx, qword ptr [rbx + 0x10]
.label_1900:
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rcx + rax*4 - 4]
	cmp	ebp, -1
	mov	rsp, rsp
	jne	.label_1899
	dec	rax
	lea	rsi, [rsi]
	jg	.label_1900
	mov	ecx, dword ptr [rbx + 0x70]
	jmp	.label_1895
.label_1905:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rcx]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	mov	rsp, rsp
	jb	.label_1895
	lea	rsi, [rsi]
	xor	ecx, ecx
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0xa
	jne	.label_1895
	jmp	.label_1909
.label_1899:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1892
.label_1906:
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	ebp, 0xa
	jne	.label_1895
.label_1909:
	lea	rdi, [rdi]
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rsp, rsp
	jne	.label_1895
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_1895
.label_1907:
	mov	ecx, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_1895
.label_1908:
	mov	ecx, dword ptr [rbx + 0xa0]
	and	ecx, 2
	nop	
	xor	ecx, 0xa
.label_1895:
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r12
	nop	
	call	re_acquire_state_context
	mov	rbp, rax
	nop	
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r14*8], rbp
	test	r13, r13
	je	.label_1904
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	free
.label_1904:
	test	rbp, rbp
	je	.label_1894
	mov	rax, qword ptr [r12 + 0x98]
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1897
	nop	
	lea	r12, [rbp + 8]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_1893
	test	byte ptr [rbp + 0x68], 0x40
	lea	rsi, [rsi]
	mov	rax, rbp
	mov	rsp, rsp
	je	.label_1893
	mov	rdi, rbx
	nop	
	mov	rsi, r12
	call	transit_state_bkref
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_1893
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1893
.label_1894:
	mov	rax, rbp
	jmp	.label_1893
.label_1897:
	nop	
	mov	rax, rbp
.label_1893:
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1902:
	xor	eax, eax
	jmp	.label_1893
.label_1892:
	mov	edi, ebp
	lea	rsi, [rsi]
	call	iswalnum
	lea	rsi, [rsi]
	cmp	ebp, 0x5f
	mov	ecx, 1
	lea	rdi, [rdi]
	je	.label_1895
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1895
	jmp	.label_1906
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x419ae0

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rbp, rdi
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1912
	lea	rsi, [rsi]
	mov	r13, qword ptr [r12 + 8]
	mov	rsp, rsp
	test	r15, r15
	je	.label_1916
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	jle	.label_1916
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1916
	lea	rsi, [rsi]
	add	rdi, r13
	mov	rsp, rsp
	mov	qword ptr [rbp], rdi
	mov	rsp, rsp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, 0xc
	nop	
	je	.label_1914
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_1917
.label_1916:
	test	r13, r13
	jle	.label_1912
	mov	qword ptr [rbp + 8], r13
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1915
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1918
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, r15
	call	memcpy
	mov	rsp, rsp
	jmp	.label_1913
.label_1912:
	test	r15, r15
	je	.label_1915
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1915
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_1915
	lea	rdi, [rdi]
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1918
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	shl	rbx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	jmp	.label_1913
.label_1915:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1913
.label_1920:
	mov	rcx, rbx
	nop	dword ptr [rax]
.label_1917:
	mov	rbp, rbp
	cmp	rcx, qword ptr [r15 + 8]
	mov	rsp, rsp
	jge	.label_1919
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	nop	
	jle	.label_1921
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	rbp, r13
	nop	
	jl	.label_1917
	jmp	.label_1919
.label_1921:
	nop	
	sete	bl
	mov	rbp, rbp
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	nop	
	jl	.label_1920
	jmp	.label_1922
.label_1919:
	mov	rsp, rsp
	mov	rbx, rcx
.label_1922:
	nop	
	sub	r13, rbp
	jle	.label_1911
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	nop	
	mov	rdx, r13
	call	memcpy
	lea	rsi, [rsi]
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_1910
.label_1911:
	mov	rdx, qword ptr [r15 + 8]
	nop	
	sub	rdx, rbx
	jle	.label_1910
	mov	rsp, rsp
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	mov	rsp, rsp
	shl	rdx, 3
	lea	rdi, [rdi]
	call	memcpy
	nop	
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_1910:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rax + 8], r14
.label_1913:
	xor	ecx, ecx
.label_1914:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_1918:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	lea	rdi, [rdi]
	jmp	.label_1914
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419d80

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	nop	
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	mov	rbp, rbp
	test	r8, r8
	mov	rbp, rbp
	jle	.label_1923
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr cs:[rax + rax]
.label_1925:
	lea	rdi, [rdi]
	lea	r10, [rax + r11]
	lea	rdi, [rdi]
	mov	rdx, r10
	mov	rbp, rbp
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	add	rdx, r10
	sar	rdx, 1
	mov	rbp, rbp
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	nop	
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	lea	rdi, [rdi]
	cmp	rax, r11
	lea	rdi, [rdi]
	jl	.label_1925
.label_1923:
	mov	rbp, rbp
	cmp	rax, r8
	lea	rdi, [rdi]
	jge	.label_1924
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
	lea	rdx, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_1926
.label_1924:
	mov	rax, -1
.label_1926:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x419e20

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	rsp, rsp
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1927
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1934
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	mov	rbp, rbp
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1929
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rsp, rsp
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	mov	rbp, rbp
	add	rbp, rbp
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1934:
	nop	
	test	r15, r15
	nop	
	jle	.label_1933
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	lea	rcx, [rcx + rcx*4]
	nop	
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1928
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1928
.label_1933:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xd8]
.label_1928:
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx*8 + 8], r14
	nop	
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	mov	rbp, rbp
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	mov	rbp, rbp
	cmovne	si, dx
	mov	rbp, rbp
	mov	word ptr [rax + rcx*8 + 0x22], si
	nop	
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_1930
	mov	dword ptr [r13 + 0xe0], edi
.label_1930:
	lea	rdi, [rdi]
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x18]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0xc0]
	nop	
	cmp	rax, r14
	jg	.label_1935
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1931
.label_1935:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	mov	rbp, rbp
	jg	.label_1932
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1932
.label_1931:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	mov	rsp, rsp
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_1927
.label_1932:
	xor	ebp, ebp
	mov	rdx, r14
	nop	
	sub	rdx, r15
	jle	.label_1927
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0xc0], r14
.label_1927:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1929:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	lea	rdi, [rdi]
	mov	ebp, 0xc
	jmp	.label_1927
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41a080

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0xb0], r9
	mov	r13, rcx
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, r15
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rcx]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, qword ptr [rsi + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rsi, [rsi]
	lea	rcx, [rax + r9]
	mov	rsp, rsp
	cmp	rbp, rcx
	jle	.label_1970
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa0], r8
	nop	
	mov	rbx, qword ptr [rsi + 0x10]
.label_1967:
	mov	rax, qword ptr [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	cmove	rax, r13
	mov	rcx, qword ptr [rdi + 0x48]
	nop	
	mov	rdx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], rbx
	mov	rbx, rax
	mov	qword ptr [rdi + 0x48], rbx
	test	rbx, rbx
	mov	rsp, rsp
	jle	.label_1939
	lea	rax, [rbx - 1]
	cmp	qword ptr [rdi + 0x58], rax
	je	.label_1951
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x68], rcx
	cmp	dword ptr [rdi + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_1941
	mov	rax, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_1984:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_1965
	lea	rsi, [rsi]
	dec	rcx
	nop	
	jg	.label_1984
	jmp	.label_1972
.label_1941:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x80]
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	edx, 1
	bt	rcx, rax
	mov	rbp, rbp
	jb	.label_1936
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0xa
	nop	
	jne	.label_1936
	nop	
	jmp	.label_1985
.label_1965:
	cmp	byte ptr [rdi + 0x8e], 0
	mov	rsp, rsp
	mov	r14, rdi
	lea	rdi, [rdi]
	jne	.label_1952
.label_1974:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1936
.label_1985:
	lea	rsi, [rsi]
	mov	edx, 2
	cmp	byte ptr [r14 + 0x8d], 0
	mov	rbp, rbp
	jne	.label_1936
	mov	rbp, rbp
	xor	edx, edx
	nop	
	jmp	.label_1936
.label_1970:
	mov	qword ptr [rsp + 0x98], r12
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r12d, 0xc
	cmp	rdx, rcx
	jle	.label_1943
	mov	rsp, rsp
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 0xa0], r8
	nop	
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	r14, [rax + rcx + 1]
	mov	rbp, rbp
	lea	rcx, [r14 + rbp]
	mov	rax, rcx
	shr	rax, 0x3d
	lea	rsi, [rsi]
	jne	.label_1943
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0xc0], rsi
	lea	rdi, [rdi]
	lea	rsi, [rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rdi, [rdi]
	call	realloc
	mov	rbx, rax
	test	rbx, rbx
	nop	
	je	.label_1943
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rbx
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 8], rax
	lea	rsi, [rsi]
	lea	rdi, [rbx + rbp*8]
	lea	rsi, [rsi]
	shl	r14, 3
	nop	
	xor	esi, esi
	mov	rdx, r14
	mov	rbp, rbp
	call	memset
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_1967
.label_1939:
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	nop	
	mov	qword ptr [rsp + 0x68], rcx
.label_1972:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	edx, dword ptr [r14 + 0x70]
	jmp	.label_1936
.label_1951:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rcx
	mov	rsp, rsp
	mov	r14, rdi
	nop	
	mov	edx, dword ptr [r14 + 0xa0]
	lea	rsi, [rsi]
	and	edx, 2
	xor	edx, 0xa
.label_1936:
	mov	rsp, rsp
	cmp	rbx, r13
	jne	.label_1954
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], edx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rsi
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1428]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1968
	mov	rbp, rbp
	mov	r13, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax], r15
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], 0
	mov	rbp, rbp
	lea	rsi, [rsp + 0x40]
	mov	rdi, r12
	mov	r15, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x100]
	mov	ecx, ebp
	call	check_arrival_expand_ecl
	mov	rbp, rbp
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_1963
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	jmp	.label_1987
.label_1954:
	nop	
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r13, rbx
	nop	
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1990
	lea	rsi, [rsi]
	test	byte ptr [rcx + 0x68], 0x40
	jne	.label_1940
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], edx
	mov	r15, r12
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rsi
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
	xor	ebx, ebx
	nop	
	jmp	.label_1942
.label_1990:
	lea	rdi, [rdi]
	mov	r15, r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xc0], rsi
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1950
.label_1940:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rcx + 0x10]
	mov	qword ptr [rsp + 0x48], rbx
	mov	rbp, qword ptr [rcx + 0x10]
	nop	
	test	rbp, rbp
	jle	.label_1959
	mov	dword ptr [rsp + 0x10], edx
	mov	qword ptr [rsp + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0x40], rbx
	nop	
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1968
	mov	r15, r12
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x18]
	nop	
	mov	rsi, qword ptr [r12 + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	memcpy
	mov	rcx, r12
	mov	dword ptr [rsp + 0xc], 0
	nop	
	jmp	.label_1942
.label_1959:
	mov	dword ptr [rsp + 0x10], edx
	mov	rbp, rbp
	mov	r15, r12
	nop	
	mov	qword ptr [rsp + 0xc0], rsi
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
.label_1942:
	nop	
	mov	ebp, dword ptr [rsp + 0x100]
	test	byte ptr [rcx + 0x68], 0x40
	je	.label_1950
.label_1987:
	test	rbx, rbx
	je	.label_1975
	lea	rsi, [rsp + 0x40]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	lea	rdi, [rdi]
	test	r12d, r12d
	jne	.label_1963
.label_1975:
	lea	rdi, [rsp + 0xc]
	lea	rdx, [rsp + 0x40]
	mov	rsi, r15
	mov	ecx, dword ptr [rsp + 0x10]
	call	re_acquire_state_context
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_1966
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1949
.label_1966:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	qword ptr [rax + r13*8], rcx
.label_1950:
	cmp	r13, qword ptr [rsp + 0xb0]
	jge	.label_1980
	mov	rsp, rsp
	lea	rax, [r13 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb8], rax
	xor	ebp, ebp
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x98], r15
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jmp	.label_1962
	nop	dword ptr [rax]
.label_1946:
	inc	rbp
	mov	rbp, rbp
	test	rcx, rcx
	mov	rax, qword ptr [r14 + 0xb8]
	nop	
	mov	qword ptr [rax + r13*8 + 8], rcx
	mov	eax, 0
	lea	rdi, [rdi]
	cmovne	rbp, rax
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xb8]
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	r13, rbx
	jl	.label_1962
	jmp	.label_1953
.label_1955:
	mov	edi, ebx
	nop	
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	mov	rsp, rsp
	je	.label_1957
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_1958
	jmp	.label_1957
.label_1962:
	mov	rsp, rsp
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rbp, rax
	lea	rdi, [rdi]
	jg	.label_1977
	mov	r15, rcx
	mov	qword ptr [rsp + 0x48], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rsi, qword ptr [rax + r13*8 + 8]
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_1973
	lea	rdi, [rdi]
	add	rsi, 8
	lea	rdi, [rsp + 0x40]
	call	re_node_set_merge
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1949
.label_1973:
	mov	rbp, rbp
	mov	rax, r15
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_1981
	mov	r15, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x94], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	cmp	qword ptr [rax + 0x28], 0
	lea	rsi, [rsi]
	mov	edi, 0
	jle	.label_1986
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rbp
	mov	qword ptr [rsp + 0x10], r13
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1991:
	mov	rax, qword ptr [rax + 0x30]
	mov	r13, qword ptr [rax + r12*8]
	mov	rsi, qword ptr [r15]
	mov	rbx, r13
	lea	rsi, [rsi]
	shl	rbx, 4
	test	byte ptr [rsi + rbx + 0xa], 0x10
	je	.label_1947
	mov	rdi, r15
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rcx, rbp
	lea	rdi, [rdi]
	call	check_node_accept_bytes
	lea	rsi, [rsi]
	cmp	eax, 2
	jl	.label_1964
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rdx, qword ptr [rcx + r13*8]
	mov	rcx, r14
	movsxd	r14, eax
	nop	
	add	r14, rbp
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + 0xb8]
	nop	
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x78], 0
	test	rsi, rsi
	lea	rbx, [rsp + 0x70]
	lea	rsi, [rsi]
	je	.label_1969
	lea	rsi, [rsi]
	add	rsi, 8
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rdx
	lea	rsi, [rsi]
	call	re_node_set_merge
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	ebp, eax
	nop	
	mov	dword ptr [rsp + 0x94], ebp
	mov	rbp, rbp
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_1956
.label_1969:
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rdx
	nop	
	call	re_node_set_insert
	test	al, al
	mov	rbp, rbp
	je	.label_1976
	lea	rdi, [rsp + 0x94]
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	re_acquire_state
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	mov	rcx, qword ptr [rbx + 0xb8]
	nop	
	mov	qword ptr [rcx + r14*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rbx
	jne	.label_1937
	mov	ebp, dword ptr [rsp + 0x94]
	mov	rsp, rsp
	test	ebp, ebp
	nop	
	je	.label_1937
	jmp	.label_1956
	nop	word ptr cs:[rax + rax]
.label_1964:
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1937
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15]
	nop	dword ptr [rax]
.label_1947:
	add	rsi, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x10]
	nop	
	call	check_node_accept
	test	al, al
	lea	rsi, [rsi]
	je	.label_1971
.label_1937:
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [rax + r13*8]
	lea	rdi, [rsp + 0x40]
	call	re_node_set_insert
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_1976
.label_1971:
	lea	rsi, [rsi]
	inc	r12
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	r12, qword ptr [rax + 0x28]
	jl	.label_1991
	mov	rdi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x60]
.label_1986:
	lea	rsi, [rsi]
	call	free
	nop	
	mov	dword ptr [rsp + 0xc], 0
.label_1981:
	mov	rsp, rsp
	mov	r15, r12
	lea	rbx, [r13 + 1]
	cmp	qword ptr [rsp + 0x48], 0
	nop	
	je	.label_1989
	mov	qword ptr [rsp + 0x60], rbp
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x98]
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x100]
	nop	
	mov	ecx, ebp
	mov	rsp, rsp
	call	check_arrival_expand_ecl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1949
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r15
	lea	rdi, [rdi]
	mov	r8d, ebp
	lea	rsi, [rsi]
	call	expand_bkref_cache
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x60]
	jne	.label_1949
.label_1989:
	test	r13, r13
	nop	
	js	.label_1988
	cmp	qword ptr [r14 + 0x58], r13
	lea	rsi, [rsi]
	je	.label_1944
	lea	rsi, [rsi]
	cmp	dword ptr [r14 + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_1945
	mov	qword ptr [rsp + 0x18], rbx
	mov	rax, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	r12, r15
	nop	word ptr [rax + rax]
.label_1982:
	nop	
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	mov	rsp, rsp
	cmp	ebx, -1
	jne	.label_1983
	mov	rsp, rsp
	dec	rcx
	test	rcx, rcx
	nop	
	jg	.label_1982
	mov	rsp, rsp
	mov	ecx, dword ptr [r14 + 0x70]
	jmp	.label_1957
	nop	word ptr cs:[rax + rax]
.label_1945:
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x80]
	nop	
	movzx	eax, byte ptr [rax + r13]
	lea	rsi, [rsi]
	mov	dl, al
	mov	rbp, rbp
	shr	dl, 6
	lea	rdi, [rdi]
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	rbp, rbp
	mov	ecx, 1
	bt	rdx, rax
	mov	rbp, rbp
	mov	r12, r15
	lea	rdi, [rdi]
	jb	.label_1957
	xor	ecx, ecx
	mov	rbp, rbp
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0xa
	jne	.label_1957
	nop	
	jmp	.label_1948
.label_1983:
	cmp	byte ptr [r14 + 0x8e], 0
	jne	.label_1955
.label_1958:
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	ebx, 0xa
	nop	
	jne	.label_1957
.label_1948:
	mov	ecx, 2
	cmp	byte ptr [r14 + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_1957
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_1957
.label_1988:
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14 + 0x70]
	mov	r12, r15
	mov	rbp, rbp
	jmp	.label_1957
.label_1944:
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14 + 0xa0]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_1957:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xc]
	nop	
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state_context
	mov	rcx, rax
	mov	rsp, rsp
	test	rcx, rcx
	jne	.label_1946
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_1946
	jmp	.label_1949
.label_1980:
	lea	rsi, [rsi]
	mov	rbx, r13
.label_1953:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	nop	
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	lea	rax, [rcx + 8]
	test	rcx, rcx
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rcx], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r14 + 0xb8], rcx
	mov	rcx, qword ptr [rsp + 0x68]
	mov	qword ptr [r14 + 0x48], rcx
	mov	rsp, rsp
	je	.label_1938
	mov	rcx, qword ptr [rax + 8]
	test	rcx, rcx
	nop	
	jle	.label_1938
	xor	r12d, r12d
	dec	rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	je	.label_1961
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0xa0]
	nop	
.label_1960:
	lea	rsi, [rdx + rcx]
	mov	rbp, rbp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rdi
	mov	rsp, rsp
	cmovge	rcx, rsi
	cmp	rdx, rcx
	mov	rsp, rsp
	jb	.label_1960
	jmp	.label_1979
.label_1976:
	nop	
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	call	free
	mov	ebp, 0xc
	mov	dword ptr [rsp + 0xc], ebp
	mov	rbp, rbp
	jmp	.label_1949
.label_1956:
	mov	rdi, qword ptr [rsp + 0x80]
	nop	
	call	free
	mov	dword ptr [rsp + 0xc], ebp
.label_1949:
	nop	
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	nop	
	mov	r12d, dword ptr [rsp + 0xc]
	lea	rdi, [rdi]
	jmp	.label_1943
.label_1961:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0xa0]
.label_1979:
	cmp	rdx, -1
	je	.label_1938
	cmp	qword ptr [rax + rdx*8], rbp
	lea	rdi, [rdi]
	je	.label_1943
.label_1938:
	lea	rdi, [rdi]
	mov	r12d, 1
.label_1943:
	mov	eax, r12d
	lea	rdi, [rdi]
	add	rsp, 0xc8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1963:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_1943
.label_1968:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0xc
	nop	
	mov	r12d, 0xc
	nop	
	jmp	.label_1943
.label_1977:
	mov	rbx, r13
	jmp	.label_1953
.label_1952:
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	nop	
	mov	edx, 1
	je	.label_1978
	test	eax, eax
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_1974
	jmp	.label_1936
.label_1978:
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_1936
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41acc0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r15d, ecx
	mov	r13, rdx
	mov	rbp, rbp
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rsi, [rsi]
	lea	rdi, [r12*8]
	call	malloc
	nop	
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1997
	test	r12, r12
	mov	rbp, rbp
	jle	.label_1993
	mov	rbp, rbp
	xor	r12d, r12d
	jmp	.label_1994
	nop	dword ptr [rax]
.label_1999:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	nop	
	jl	.label_1994
	lea	rsi, [rsi]
	jmp	.label_1993
	nop	word ptr cs:[rax + rax]
.label_1996:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_1998
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	nop	
	jmp	.label_1995
	nop	
.label_1994:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	lea	r9, [rdx + rdx*2]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_1998
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	dword ptr [rax]
.label_2000:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbx + rcx + 8]
	lea	rdi, [rdi]
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_1992
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + rcx], r13
	je	.label_1996
.label_1992:
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jl	.label_2000
.label_1998:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_1995:
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	je	.label_1999
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	lea	rsi, [rsi]
	jmp	.label_1997
.label_1993:
	nop	
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	mov	rsp, rsp
	xor	ebx, ebx
.label_1997:
	mov	eax, ebx
	nop	
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41ae80

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x68
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], r14
	nop	
	mov	r10, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	mov	rax, qword ptr [r10 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	lea	rdi, [rdi]
	mov	edx, 0
	lea	rdi, [rdi]
	jle	.label_2001
	nop	
	mov	rsi, qword ptr [r10 + 0xd8]
	nop	
	xor	edx, edx
	mov	rdi, r9
	nop	
.label_2021:
	mov	rbp, rbp
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	lea	rsi, [rsi]
	add	rbx, rbp
	mov	rsp, rsp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rbp
	mov	rbp, rbp
	cmp	rdx, rdi
	jl	.label_2021
.label_2001:
	mov	rsp, rsp
	cmp	rdx, r9
	mov	rsp, rsp
	jge	.label_2005
	cmp	rdx, -1
	mov	rbp, rbp
	je	.label_2005
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x38], r8d
	mov	rbp, rbp
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	mov	rsp, rsp
	jne	.label_2005
	mov	dword ptr [rsp + 0x3c], eax
	mov	rbp, rbp
	jmp	.label_2018
.label_2015:
	mov	rcx, qword ptr [r10 + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_2018:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r13, [rcx + rax*8]
	nop	
.label_2030:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2009
	mov	rdx, qword ptr [r13]
	dec	rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_2011
	nop	
.label_2020:
	mov	rsp, rsp
	lea	rbp, [rsi + rdi]
	lea	rsi, [rsi]
	shr	rbp, 1
	mov	rsp, rsp
	cmp	qword ptr [rax + rbp*8], rdx
	nop	
	lea	rbx, [rbp + 1]
	lea	rsi, [rsi]
	cmovl	rsi, rbx
	mov	rbp, rbp
	cmovge	rdi, rbp
	cmp	rsi, rdi
	mov	rbp, rbp
	jb	.label_2020
.label_2011:
	mov	rbp, rbp
	cmp	rsi, -1
	je	.label_2009
	cmp	qword ptr [rax + rsi*8], rdx
	mov	rbp, rbp
	jne	.label_2009
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	cmp	r12, r15
	lea	rsi, [rsi]
	jne	.label_2004
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_2032
	nop	dword ptr [rax + rax]
.label_2025:
	lea	rsi, [rdx + rcx]
	lea	rdi, [rdi]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	mov	rsp, rsp
	cmovge	rcx, rsi
	mov	rsp, rsp
	cmp	rdx, rcx
	jb	.label_2025
.label_2032:
	cmp	rdx, -1
	lea	rdi, [rdi]
	je	.label_2003
	lea	rsi, [rsi]
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_2003
	mov	rbp, r14
	jmp	.label_2012
.label_2004:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_2014
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_2010
	lea	rsi, [rsi]
	mov	rcx, rdi
	dec	rcx
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_2029
.label_2007:
	lea	rsi, [rdx + rcx]
	mov	rsp, rsp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	lea	rsi, [rsi]
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2007
.label_2029:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_2010
	mov	ecx, 4
	mov	rsp, rsp
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2013
.label_2010:
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	test	rbp, rbp
	jle	.label_2019
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_2027
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	nop	
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_2008
.label_2003:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1428]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_2017
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xor	eax, eax
.label_2026:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x5c], eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	ecx, dword ptr [rsp + 0x38]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	ebx, eax
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x5c]
	mov	rsp, rsp
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	mov	rsp, rsp
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jne	.label_2028
.label_2024:
	mov	r14, rbp
	jmp	.label_2012
.label_2014:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1428]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	nop	
	mov	edi, 8
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2031
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_2002
.label_2019:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
.label_2008:
	mov	rsp, rsp
	xor	ebx, ebx
.label_2022:
	mov	dword ptr [rsp + 0xc], ebx
	mov	rsp, rsp
	lea	rdi, [rsp + 0x40]
	nop	
	mov	rsi, r14
	call	re_node_set_insert
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_2023
	xor	al, 1
	mov	rsp, rsp
	jne	.label_2023
.label_2002:
	lea	rdi, [rsp + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rbp, rbp
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	nop	
	sete	al
	mov	edx, dword ptr [rsp + 0xc]
	nop	
	test	edx, edx
	lea	rsi, [rsi]
	setne	cl
	mov	rbp, rbp
	and	cl, al
	movzx	ecx, cl
	nop	
	mov	eax, dword ptr [rsp + 0x3c]
	lea	rsi, [rsi]
	cmovne	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3c], eax
.label_2013:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x20]
.label_2012:
	test	ecx, ecx
	je	.label_2009
	nop	
	cmp	ecx, 4
	nop	
	jne	.label_2006
	nop	dword ptr [rax + rax]
.label_2009:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	rdi, [rdi]
	lea	r13, [r13 + 0x28]
	mov	rbp, rbp
	jne	.label_2030
	nop	
	jmp	.label_2005
.label_2017:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	jmp	.label_2026
.label_2028:
	lea	rsi, [rsi]
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xc], r14d
	mov	rsp, rsp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], r14d
	mov	rbp, rbp
	jmp	.label_2024
.label_2023:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rdi, [rdi]
	cmove	ebx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], ebx
	nop	
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], ebx
	lea	rsi, [rsi]
	jmp	.label_2016
.label_2031:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x3c], 0xc
	lea	rdi, [rdi]
	mov	ecx, 1
.label_2016:
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_2012
.label_2027:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	ebx, 0xc
	nop	
	jmp	.label_2022
.label_2006:
	lea	rdi, [rdi]
	cmp	ecx, 2
	lea	rsi, [rsi]
	je	.label_2015
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x3c]
.label_2005:
	add	rsp, 0x68
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41b490

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r15d, r8d
	lea	rdi, [rdi]
	mov	r14, rcx
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	nop	
	jmp	.label_2034
	nop	
.label_2036:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax]
.label_2034:
	nop	
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2035
	mov	rsp, rsp
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_2038
	nop	dword ptr [rax]
.label_2039:
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	mov	rsp, rsp
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	nop	
	cmovge	rax, rsi
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	jb	.label_2039
.label_2038:
	mov	rsp, rsp
	cmp	rdx, -1
	lea	rsi, [rsi]
	je	.label_2035
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2040
.label_2035:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	lea	rdi, [rdi]
	jne	.label_2041
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], r14
	je	.label_2037
.label_2041:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	nop	
	mov	eax, 0xc
	mov	rsp, rsp
	test	cl, cl
	je	.label_2033
	mov	rax, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	lea	rbp, [rbp + rbp*2]
	nop	
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2042
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_2036
	jmp	.label_2040
	nop	word ptr cs:[rax + rax]
.label_2042:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rcx, r14
	mov	rsp, rsp
	mov	r8d, r15d
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2033
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2036
.label_2037:
	cmp	r15d, 9
	jne	.label_2040
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	nop	
	je	.label_2033
.label_2040:
	nop	
	xor	eax, eax
.label_2033:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41b630

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	nop	
	mov	r8, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r8, r8
	je	.label_2051
	mov	rsp, rsp
	mov	r15, r8
	jle	.label_2053
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_2069
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	nop	
	mov	r15, r8
	je	.label_2069
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	rsp, rsp
	mov	eax, ebx
	shr	eax, 2
	lea	rsi, [rsi]
	inc	eax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	test	al, 3
	nop	
	je	.label_2046
	nop	
	lea	ebp, [r8 - 4]
	nop	
	shr	ebp, 2
	nop	
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2063:
	nop	
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	mov	rbp, rbp
	paddq	xmm0, xmm2
	nop	
	paddq	xmm1, xmm3
	add	rdi, 4
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	jne	.label_2063
	jmp	.label_2073
.label_2046:
	pxor	xmm1, xmm1
.label_2073:
	mov	rbp, rbp
	cmp	rbx, 0xc
	mov	rsp, rsp
	jb	.label_2044
	nop	
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	lea	rdi, [rdi]
	sub	rax, rdi
	mov	rbp, rbp
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr cs:[rax + rax]
.label_2060:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	lea	rsi, [rsi]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	lea	rdi, [rdi]
	paddq	xmm3, xmm1
	nop	
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	lea	rsi, [rsi]
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	mov	rbp, rbp
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	nop	
	paddq	xmm4, xmm2
	mov	rbp, rbp
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdi]
	mov	rsp, rsp
	paddq	xmm0, xmm4
	mov	rsp, rsp
	paddq	xmm1, xmm5
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rax, -0x10
	mov	rsp, rsp
	jne	.label_2060
.label_2044:
	lea	rsi, [rsi]
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	mov	rbp, rbp
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_2053
.label_2069:
	mov	rdx, r8
	lea	rdi, [rdi]
	sub	rdx, rax
	nop	
	lea	rcx, [rcx + rax*8]
	nop	word ptr cs:[rax + rax]
.label_2067:
	add	r15, qword ptr [rcx]
	lea	rsi, [rsi]
	add	rcx, 8
	dec	rdx
	jne	.label_2067
.label_2053:
	mov	rax, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	mov	rsp, rsp
	and	rcx, r15
	nop	
	lea	rdi, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rdi*8]
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2047
	nop	
	xor	edx, edx
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_2052
	nop	
	mov	rax, qword ptr [rax + rdi*8 + 0x10]
	nop	dword ptr [rax]
.label_2043:
	mov	r13, qword ptr [rax + rdx*8]
	lea	rsi, [rsi]
	cmp	r15, qword ptr [r13]
	jne	.label_2057
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2057
	nop	
	mov	rdi, r8
	nop	word ptr [rax + rax]
.label_2064:
	test	rdi, rdi
	nop	
	jle	.label_2068
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rbx + rdi*8 - 8]
	lea	rsi, [rsi]
	lea	rdi, [rdi - 1]
	mov	rbp, rbp
	je	.label_2064
	nop	dword ptr [rax]
.label_2057:
	mov	rsp, rsp
	inc	rdx
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jl	.label_2043
	mov	rbp, rbp
	jmp	.label_2047
.label_2052:
	xor	edx, edx
	cmp	rcx, 0x10
	mov	rsp, rsp
	jb	.label_2045
	xor	edx, edx
	mov	rax, rcx
	and	rax, 0xfffffffffffffff0
	mov	rbp, rbp
	je	.label_2045
	lea	rdx, [rcx - 0x10]
	mov	edi, edx
	shr	edi, 4
	lea	rsi, [rsi]
	inc	edi
	nop	
	xor	ebp, ebp
	test	dil, 7
	je	.label_2059
	lea	edi, [rcx - 0x10]
	shr	edi, 4
	lea	rsi, [rsi]
	inc	edi
	mov	rsp, rsp
	and	edi, 7
	lea	rsi, [rsi]
	neg	rdi
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2071:
	add	rbp, 0x10
	mov	rsp, rsp
	inc	rdi
	mov	rbp, rbp
	jne	.label_2071
.label_2059:
	cmp	rdx, 0x70
	jb	.label_2074
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	and	rdx, 0xfffffffffffffff0
	sub	rdx, rbp
	nop	word ptr cs:[rax + rax]
.label_2050:
	lea	rdi, [rdi]
	add	rdx, -0x80
	mov	rsp, rsp
	jne	.label_2050
.label_2074:
	cmp	rcx, rax
	mov	rsp, rsp
	mov	rdx, rax
	je	.label_2047
	nop	word ptr [rax + rax]
.label_2045:
	mov	rsp, rsp
	inc	rdx
	cmp	rdx, rcx
	mov	rsp, rsp
	jl	.label_2045
.label_2047:
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	mov	edi, 0x70
	lea	rdi, [rdi]
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	nop	
	je	.label_2066
	mov	rbx, r13
	lea	rsi, [rsi]
	add	rbx, 8
	nop	
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	rsp, rsp
	jle	.label_2072
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	mov	rbp, rbp
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2054
	mov	qword ptr [rsp + 0x10], r14
	mov	rsp, rsp
	lea	r14, [r12 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rdx, rbp
	mov	rbp, rbp
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_2065
.label_2072:
	mov	qword ptr [rsp + 0x10], r14
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	jle	.label_2070
	mov	rsp, rsp
	lea	r14, [r12 + 0x10]
.label_2065:
	mov	rbp, rbp
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_2061:
	mov	r8, qword ptr [rdi]
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rax*8]
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rdi, [rdi]
	mov	ebp, dword ptr [r8 + rdx + 8]
	mov	esi, ebp
	mov	rbp, rbp
	and	esi, 0x3ffff
	mov	rbp, rbp
	cmp	esi, 1
	je	.label_2058
	movzx	esi, bpl
	lea	rdi, [rdi]
	shr	ebp, 0x14
	lea	rsi, [rsi]
	mov	cl, byte ptr [r13 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	mov	rbp, rbp
	or	ebx, ebp
	lea	rsi, [rsi]
	shl	bl, 5
	mov	rbp, rbp
	and	bl, 0x20
	nop	
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r13 + 0x68], cl
	cmp	esi, 0xc
	je	.label_2055
	mov	rbp, rbp
	cmp	esi, 4
	je	.label_2048
	cmp	esi, 2
	mov	rbp, rbp
	jne	.label_2049
	or	cl, 0x10
	mov	rsp, rsp
	jmp	.label_2056
.label_2048:
	or	cl, 0x40
	jmp	.label_2056
.label_2049:
	lea	rdx, [r8 + rdx + 8]
	test	dword ptr [rdx], 0x3ff00
	nop	
	je	.label_2058
.label_2055:
	mov	rbp, rbp
	or	cl, 0x80
.label_2056:
	mov	byte ptr [r13 + 0x68], cl
.label_2058:
	mov	rbp, rbp
	inc	rax
	nop	
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2061
.label_2070:
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rdx, r15
	mov	rbp, rbp
	call	register_state
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2068
	nop	
	mov	rdi, r13
	call	free_state
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jmp	.label_2066
.label_2051:
	mov	dword ptr [r14], 0
	lea	rdi, [rdi]
	jmp	.label_2062
.label_2054:
	nop	
	mov	rdi, r13
	lea	rsi, [rsi]
	call	free
.label_2066:
	mov	rsp, rsp
	mov	dword ptr [r14], 0xc
.label_2062:
	mov	rsp, rsp
	xor	r13d, r13d
.label_2068:
	mov	rbp, rbp
	mov	rax, r13
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41bb60

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	nop	
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	lea	rdi, [rdi]
	cmp	r10d, 7
	je	.label_2094
	mov	rsp, rsp
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r8d, 1
	lea	rdi, [rdi]
	je	.label_2079
	lea	rax, [rcx + 1]
	nop	
	mov	r11, qword ptr [rdx + 0x30]
	mov	rsp, rsp
	cmp	rax, r11
	lea	rsi, [rsi]
	jge	.label_2079
	lea	rax, [rcx*4]
	mov	rbp, rbp
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2092:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2079
	mov	rbp, rbp
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	lea	rdi, [rdi]
	jl	.label_2092
.label_2079:
	cmp	r10d, 5
	jne	.label_2099
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2078
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2095
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	nop	
	cmp	esi, 0xa
	nop	
	je	.label_2078
.label_2095:
	test	al, al
	js	.label_2083
	mov	r14d, ebx
	jmp	.label_2078
.label_2099:
	mov	rsp, rsp
	cmp	ebx, 1
	setg	al
	mov	rbp, rbp
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2078
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_2078
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_2098
	cmp	qword ptr [r15 + 0x48], 0
	mov	rbp, rbp
	jne	.label_2098
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2075
.label_2098:
	cmp	r8d, 1
	jne	.label_2101
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	jmp	.label_2075
.label_2101:
	nop	
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2075:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2081
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax]
.label_2089:
	nop	
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	je	.label_2088
	inc	rdx
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_2089
.label_2081:
	cmp	qword ptr [r15 + 0x48], 0
	nop	
	jle	.label_2090
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2100:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	edi, r12d
	call	iswctype
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_2088
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2100
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x40]
.label_2090:
	nop	
	xor	ecx, ecx
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_2080
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2091:
	cmp	dword ptr [rax + rdx*4], r12d
	lea	rdi, [rdi]
	jg	.label_2085
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	jle	.label_2082
.label_2085:
	lea	rdi, [rdi]
	inc	rdx
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2091
	jmp	.label_2080
.label_2088:
	lea	rsi, [rsi]
	mov	ecx, ebx
.label_2080:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2096
	mov	r14d, ecx
	jmp	.label_2078
.label_2096:
	test	ecx, ecx
	mov	rbp, rbp
	jg	.label_2078
	test	ebx, ebx
	mov	r14d, 1
	mov	rsp, rsp
	cmovg	r14d, ebx
	jmp	.label_2078
.label_2083:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	byte ptr [rax + rcx], 0
	je	.label_2078
	mov	rbp, rbp
	mov	r14d, ebx
	nop	
	jmp	.label_2078
.label_2094:
	mov	rax, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_2086
.label_2078:
	mov	rbp, rbp
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_2082:
	nop	
	mov	ecx, ebx
	jmp	.label_2080
.label_2086:
	nop	
	lea	rdi, [rcx + 2]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_2078
	mov	bl, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	movzx	edi, sil
	mov	rsp, rsp
	cmp	edi, 0xdf
	mov	rsp, rsp
	ja	.label_2097
	lea	rsi, [rsi]
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 0xc0
	sbb	eax, eax
	mov	rbp, rbp
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_2078
.label_2097:
	cmp	edi, 0xef
	nop	
	ja	.label_2084
	mov	esi, 3
	lea	rdi, [rdi]
	cmp	edi, 0xe0
	jne	.label_2076
	lea	rsi, [rsi]
	movzx	edi, bl
	cmp	edi, 0xa0
	mov	rsp, rsp
	jb	.label_2078
	jmp	.label_2076
.label_2084:
	cmp	edi, 0xf7
	nop	
	ja	.label_2093
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_2076
	mov	rsp, rsp
	movzx	edi, bl
	mov	rsp, rsp
	cmp	edi, 0x90
	lea	rdi, [rdi]
	jb	.label_2078
	jmp	.label_2076
.label_2093:
	mov	rsp, rsp
	cmp	edi, 0xfb
	ja	.label_2077
	nop	
	mov	esi, 5
	lea	rsi, [rsi]
	cmp	edi, 0xf8
	jne	.label_2076
	movzx	edi, bl
	cmp	edi, 0x88
	lea	rdi, [rdi]
	jb	.label_2078
	mov	rsp, rsp
	jmp	.label_2076
.label_2077:
	cmp	edi, 0xfd
	ja	.label_2078
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_2076
	mov	rbp, rbp
	movzx	edi, bl
	cmp	edi, 0x84
	mov	rbp, rbp
	jb	.label_2078
.label_2076:
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rbp, rbp
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	nop	
	jg	.label_2078
	nop	
	add	rax, rcx
	mov	rbp, rbp
	mov	ecx, 1
.label_2087:
	nop	
	mov	dl, byte ptr [rax + rcx]
	mov	rsp, rsp
	test	dl, dl
	lea	rsi, [rsi]
	jns	.label_2078
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_2078
	mov	rsp, rsp
	inc	rcx
	cmp	rcx, rdi
	mov	rsp, rsp
	jl	.label_2087
	mov	r14d, esi
	jmp	.label_2078
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41bf50

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	nop	
	movzx	ecx, byte ptr [rax + rdx]
	mov	r15d, dword ptr [r14 + 8]
	lea	rsi, [rsi]
	movzx	esi, r15b
	lea	rdi, [rdi]
	xor	eax, eax
	dec	esi
	cmp	esi, 6
	ja	.label_2109
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_2105]]
.label_2398:
	movzx	eax, byte ptr [r14]
	cmp	eax, ecx
	nop	
	je	.label_2102
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_2109
.label_2399:
	mov	rsi, qword ptr [r14]
	mov	al, cl
	mov	rsp, rsp
	shr	al, 6
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + rax*8]
	lea	rdi, [rdi]
	bt	rax, rcx
	jb	.label_2102
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2109
.label_2401:
	test	cl, cl
	nop	
	js	.label_2117
.label_2400:
	lea	rsi, [rsi]
	test	cl, cl
	mov	rsp, rsp
	je	.label_2118
	mov	rsp, rsp
	movzx	eax, cl
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_2102
	mov	rax, qword ptr [rbx + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2102
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_2109
.label_2118:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	lea	rsi, [rsi]
	js	.label_2108
.label_2102:
	lea	rsi, [rsi]
	shr	r15d, 8
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	test	r15w, 0x3ff
	je	.label_2109
	mov	rsp, rsp
	test	rdx, rdx
	nop	
	js	.label_2113
	cmp	qword ptr [rbx + 0x58], rdx
	lea	rsi, [rsi]
	je	.label_2116
	mov	rsp, rsp
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_2115
	mov	rax, qword ptr [rbx + 0x10]
	inc	rdx
	nop	
.label_2106:
	mov	rsp, rsp
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	lea	rdi, [rdi]
	cmp	ebp, -1
	lea	rdi, [rdi]
	jne	.label_2103
	nop	
	dec	rdx
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rsp, rsp
	jg	.label_2106
	mov	eax, dword ptr [rbx + 0x70]
	jmp	.label_2104
.label_2115:
	nop	
	mov	rax, qword ptr [rbx + 0x80]
	mov	dl, cl
	mov	rsp, rsp
	shr	dl, 6
	movzx	edx, dl
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	bt	rdx, rcx
	jae	.label_2110
	mov	eax, 1
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_2114
.label_2117:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_2109
.label_2103:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8e], 0
	mov	rbp, rbp
	jne	.label_2119
.label_2111:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	ebp, 0xa
	je	.label_2120
	jmp	.label_2104
.label_2110:
	cmp	ecx, 0xa
	jne	.label_2104
.label_2120:
	mov	eax, 2
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rbp, rbp
	jne	.label_2104
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2104
.label_2108:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_2109
.label_2113:
	mov	eax, dword ptr [rbx + 0x70]
	mov	rsp, rsp
	jmp	.label_2104
.label_2116:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0xa0]
	lea	rdi, [rdi]
	and	eax, 2
	lea	rdi, [rdi]
	xor	eax, 0xa
.label_2104:
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	and	ecx, 1
	mov	rsp, rsp
	sete	dl
	test	r15b, 4
	lea	rdi, [rdi]
	je	.label_2114
	test	ecx, ecx
	jne	.label_2114
	xor	eax, eax
	nop	
	jmp	.label_2109
.label_2119:
	mov	edi, ebp
	lea	rsi, [rsi]
	call	iswalnum
	mov	ecx, eax
	mov	rbp, rbp
	xor	edx, edx
	cmp	ebp, 0x5f
	lea	rsi, [rsi]
	mov	eax, 1
	je	.label_2114
	test	ecx, ecx
	je	.label_2111
.label_2114:
	mov	ecx, dword ptr [r14 + 8]
	lea	rsi, [rsi]
	test	dl, dl
	jne	.label_2107
	mov	edx, ecx
	and	edx, 0x800
	je	.label_2107
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2109
.label_2107:
	test	al, 2
	jne	.label_2112
	mov	rbp, rbp
	mov	edx, ecx
	lea	rsi, [rsi]
	and	edx, 0x2000
	je	.label_2112
	xor	eax, eax
	jmp	.label_2109
.label_2112:
	mov	rsp, rsp
	shr	ecx, 8
	lea	rdi, [rdi]
	and	eax, 8
	lea	rsi, [rsi]
	test	cl, cl
	setns	cl
	lea	rdi, [rdi]
	shr	eax, 3
	mov	rsp, rsp
	or	al, cl
.label_2109:
	add	rsp, 8
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41c200

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], r13
	mov	rbx, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r12, rax
	mov	qword ptr [rbp - 0xa8], r12
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_2132
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2139
	lea	rax, [r12 + 0x1800]
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [r12 + 0x1818]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	r11d, r11d
	mov	rbp, rbp
	mov	r15, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], r15
	nop	word ptr [rax + rax]
.label_2219:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + rdi*8]
	mov	rax, qword ptr [r15]
	lea	rdi, [rdi]
	shl	rsi, 4
	nop	
	lea	r8, [rax + rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], r8
	mov	edx, dword ptr [rax + rsi + 8]
	mov	rsp, rsp
	movzx	r9d, dl
	mov	rsp, rsp
	cmp	r9d, 1
	lea	rdi, [rdi]
	jne	.label_2176
	mov	cl, byte ptr [r8]
	mov	rbp, rbp
	mov	ebx, 1
	mov	rbp, rbp
	shl	rbx, cl
	lea	rdi, [rdi]
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x100], rbx
	jmp	.label_2163
	nop	
.label_2176:
	cmp	r9d, 7
	je	.label_2196
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_2198
	nop	
	cmp	r9d, 3
	jne	.label_2179
	mov	rcx, qword ptr [r8]
	mov	rbx, qword ptr [rcx]
	or	qword ptr [rbp - 0x100], rbx
	mov	rbx, qword ptr [rcx + 8]
	or	qword ptr [rbp - 0xf8], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rcx + 0x10]
	nop	
	or	qword ptr [rbp - 0xf0], rbx
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	or	qword ptr [rbp - 0xe8], rcx
	mov	rsp, rsp
	jmp	.label_2163
.label_2196:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], -1
	mov	rsp, rsp
	mov	rcx, qword ptr [r15 + 0xd8]
	mov	rbx, -2
	nop	
	test	cl, 0x40
	jne	.label_2216
	nop	
	mov	qword ptr [rbp - 0x100], -0x401
	lea	rsi, [rsi]
	mov	rbx, -0x402
.label_2216:
	lea	rdi, [rdi]
	test	cl, cl
	lea	rdi, [rdi]
	jns	.label_2163
	mov	qword ptr [rbp - 0x100], rbx
	jmp	.label_2163
.label_2198:
	mov	rsp, rsp
	cmp	dword ptr [r15 + 0xb4], 2
	nop	
	jl	.label_2228
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 0x78]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	or	rcx, qword ptr [r8]
	mov	qword ptr [rbp - 0x100], rcx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r8 + 8]
	or	qword ptr [rbp - 0xf8], rbx
	mov	rbx, qword ptr [r8 + 0x10]
	lea	rdi, [rdi]
	or	qword ptr [rbp - 0xf0], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r8 + 0x18]
	mov	r8, r14
	lea	rsi, [rsi]
	or	qword ptr [rbp - 0xe8], rbx
	jmp	.label_2231
.label_2228:
	mov	qword ptr [rbp - 0xe8], -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], -1
	mov	qword ptr [rbp - 0xf8], -1
	mov	qword ptr [rbp - 0x100], -1
	mov	rcx, -1
.label_2231:
	mov	rbx, qword ptr [r15 + 0xd8]
	lea	rdi, [rdi]
	test	bl, 0x40
	jne	.label_2215
	mov	rsp, rsp
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x100], rcx
.label_2215:
	test	bl, bl
	jns	.label_2163
	mov	rbp, rbp
	and	rcx, 0xfffffffffffffffe
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rcx
	nop	dword ptr [rax + rax]
.label_2163:
	mov	rsp, rsp
	shr	edx, 8
	nop	
	mov	ecx, edx
	lea	rdi, [rdi]
	and	ecx, 0x3ff
	je	.label_2143
	mov	rsp, rsp
	test	dl, 0x20
	je	.label_2178
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	test	ch, 4
	nop	
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	je	.label_2179
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], 0x400
.label_2178:
	mov	rbp, rbp
	test	dl, dl
	js	.label_2151
	lea	rcx, [rax + rsi + 8]
	test	dl, 4
	je	.label_2193
	cmp	r9d, 1
	mov	rbp, rbp
	jne	.label_2197
	test	byte ptr [rcx + 2], 0x40
	nop	
	je	.label_2151
.label_2197:
	cmp	dword ptr [r15 + 0xb4], 1
	jle	.label_2199
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rax, qword ptr [rsi]
	not	rax
	mov	rbp, rbp
	or	rax, qword ptr [r15 + 0xb8]
	mov	rsp, rsp
	and	rax, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rbp - 0x100], rax
	mov	rbx, qword ptr [rsi + 8]
	nop	
	not	rbx
	or	rbx, qword ptr [r15 + 0xc0]
	lea	rdi, [rdi]
	and	rbx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0xf8], rbx
	or	rbx, rax
	mov	rax, qword ptr [rsi + 0x10]
	not	rax
	or	rax, qword ptr [r15 + 0xc8]
	and	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x18]
	nop	
	not	rsi
	mov	rsp, rsp
	or	rsi, qword ptr [r15 + 0xd0]
	and	rsi, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rsi
	or	rsi, rax
	jmp	.label_2203
.label_2199:
	movdqu	xmm0, xmmword ptr [r15 + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x100]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	movq	rsi, xmm0
	pshufd	xmm0, xmm0, 0x4e
	mov	rsp, rsp
	movq	rax, xmm0
	movdqu	xmm0, xmmword ptr [r15 + 0xc8]
	nop	
	pand	xmm0, xmmword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movq	rbx, xmm0
	or	rbx, rsi
	or	rbx, rax
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	pshufd	xmm0, xmm0, 0x4e
	lea	rsi, [rsi]
	movq	rsi, xmm0
.label_2203:
	mov	rbp, rbp
	or	rsi, rbx
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_2179
.label_2193:
	nop	
	test	dl, 8
	lea	rsi, [rsi]
	je	.label_2143
	mov	rbp, rbp
	cmp	r9d, 1
	mov	rbp, rbp
	jne	.label_2149
	test	byte ptr [rcx + 2], 0x40
	mov	rbp, rbp
	jne	.label_2151
.label_2149:
	cmp	dword ptr [r15 + 0xb4], 1
	mov	rsp, rsp
	jle	.label_2156
	nop	
	mov	rcx, qword ptr [r15 + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	and	rdx, qword ptr [r15 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rbp - 0x100], rdx
	mov	rsi, qword ptr [rcx + 8]
	mov	rbp, rbp
	and	rsi, qword ptr [r15 + 0xc0]
	lea	rsi, [rsi]
	not	rsi
	lea	rsi, [rsi]
	and	rsi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rsi
	or	rsi, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
	and	rdx, qword ptr [r15 + 0xc8]
	nop	
	not	rdx
	lea	rdi, [rdi]
	and	rdx, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	and	rcx, qword ptr [r15 + 0xd0]
	nop	
	not	rcx
	and	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rcx
	or	rcx, rdx
	jmp	.label_2160
	nop	word ptr cs:[rax + rax]
.label_2151:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	jmp	.label_2179
.label_2156:
	nop	
	movdqu	xmm0, xmmword ptr [r15 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	nop	
	movq	rcx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	mov	rbp, rbp
	movq	rdx, xmm0
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [r15 + 0xc8]
	mov	rsp, rsp
	pandn	xmm0, xmmword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movq	rsi, xmm0
	mov	rsp, rsp
	or	rsi, rcx
	or	rsi, rdx
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	nop	
	pshufd	xmm0, xmm0, 0x4e
	nop	
	movq	rcx, xmm0
.label_2160:
	or	rcx, rsi
	test	rcx, rcx
	je	.label_2179
	nop	word ptr cs:[rax + rax]
.label_2143:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	lea	rdi, [rdi]
	test	r11, r11
	lea	rdi, [rdi]
	jle	.label_2158
	cmp	r9d, 1
	jne	.label_2229
	nop	
	mov	r15, qword ptr [rbp - 0x38]
	mov	rbx, r12
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_2202:
	nop	
	movzx	eax, byte ptr [r8]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	nop	
	mov	rcx, qword ptr [r15 + rcx*8]
	lea	rsi, [rsi]
	bt	rcx, rax
	jae	.label_2121
	mov	qword ptr [rbp - 0x40], rbx
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	mov	r8, qword ptr [r15]
	mov	r13, qword ptr [r15 + 8]
	mov	rsi, r8
	lea	rsi, [rsi]
	and	rsi, r9
	mov	rbp, rbp
	mov	rdi, r13
	and	rdi, rax
	mov	rdx, rdi
	or	rdx, rsi
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	r12, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rsi, [rsi]
	and	rcx, rax
	or	rdx, rcx
	mov	r10, qword ptr [rbp - 0xe8]
	mov	rbx, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	and	rax, r10
	or	rdx, rax
	je	.label_2128
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x88], rsi
	mov	qword ptr [rbp - 0xc0], r11
	mov	rsp, rsp
	mov	rsi, r10
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r11, r9
	lea	rdi, [rdi]
	not	r11
	and	r11, r8
	lea	rdi, [rdi]
	not	r8
	lea	rdi, [rdi]
	and	r8, r9
	mov	qword ptr [rbp - 0x100], r8
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	r9, rax
	not	r9
	and	r9, r13
	lea	rsi, [rsi]
	mov	rcx, r9
	or	rcx, r11
	not	r13
	and	r13, rax
	mov	qword ptr [rbp - 0xf8], r13
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rax, rdx
	not	rax
	and	rax, r12
	lea	rdi, [rdi]
	or	rcx, rax
	nop	
	not	r12
	mov	rbp, rbp
	and	r12, rdx
	mov	qword ptr [rbp - 0xf0], r12
	mov	rdx, rsi
	mov	rsp, rsp
	not	rdx
	and	rdx, r10
	not	r10
	mov	rsp, rsp
	and	r10, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], r10
	mov	rbp, rbp
	or	rcx, rdx
	mov	rsp, rsp
	je	.label_2168
	mov	qword ptr [rbp - 0x50], r13
	mov	qword ptr [rbp - 0xc8], r8
	nop	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rcx, rsi
	nop	
	shl	rcx, 5
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [r10 + rcx], r11
	mov	qword ptr [r10 + rcx + 8], r9
	nop	
	mov	r9, rsi
	lea	rdi, [rdi]
	mov	qword ptr [r10 + rcx + 0x10], rax
	nop	
	mov	qword ptr [r10 + rcx + 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [r15 + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x18], rax
	lea	rcx, [r9 + r9*2]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rax, [rdx + rcx*8]
	mov	rbx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8 + 8], rdi
	mov	r13, qword ptr [rbx + 8]
	nop	
	test	r13, r13
	lea	rsi, [rsi]
	jle	.label_2214
	mov	qword ptr [rax], rdi
	nop	
	shl	rdi, 3
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x88], rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_2135
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	r13, 3
	mov	rdi, rax
	mov	rbp, rbp
	mov	rdx, r13
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	jmp	.label_2153
	nop	word ptr [rax + rax]
.label_2128:
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp - 0x40]
	jmp	.label_2121
.label_2168:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], r13
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], r8
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jmp	.label_2164
.label_2214:
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
.label_2153:
	mov	rsp, rsp
	inc	r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
.label_2164:
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	re_node_set_insert
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_2142
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	or	rax, qword ptr [rbp - 0xc8]
	or	r12, qword ptr [rbp - 0x70]
	nop	
	or	r12, rax
	mov	r11, qword ptr [rbp - 0xc0]
	mov	r8, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	je	.label_2147
.label_2121:
	mov	rsp, rsp
	inc	r14
	lea	rsi, [rsi]
	add	rbx, 0x18
	mov	rbp, rbp
	add	r15, 0x20
	mov	rsp, rsp
	cmp	r14, r11
	mov	rbp, rbp
	jl	.label_2202
	jmp	.label_2147
.label_2158:
	mov	rbp, rbp
	xor	r14d, r14d
	mov	rbp, rbp
	jmp	.label_2147
.label_2229:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	r10, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	r15, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rbx, r12
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_2211:
	nop	
	mov	qword ptr [rbp - 0xc0], r11
	mov	r12, qword ptr [r15 - 0x18]
	nop	
	mov	r13, qword ptr [r15 - 0x10]
	mov	rdi, r12
	and	rdi, rsi
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	rax, r13
	mov	rsp, rsp
	and	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	or	rax, rdi
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 - 8]
	mov	rdi, r11
	and	rdi, r10
	or	rax, rdi
	mov	r9, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, r9
	and	r8, rcx
	or	rax, r8
	nop	
	je	.label_2224
	mov	qword ptr [rbp - 0x88], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rbx
	mov	rsp, rsp
	mov	rax, rsi
	mov	rbp, rbp
	not	rax
	lea	rsi, [rsi]
	and	rax, r12
	not	r12
	and	r12, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], r12
	mov	rbx, rdx
	nop	
	not	rbx
	lea	rsi, [rsi]
	and	rbx, r13
	mov	rsi, rbx
	or	rsi, rax
	not	r13
	and	r13, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], r13
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], r13
	mov	rdx, r10
	not	rdx
	and	rdx, r11
	nop	
	or	rsi, rdx
	not	r11
	and	r11, r10
	mov	qword ptr [rbp - 0xf0], r11
	mov	rdi, rcx
	not	rcx
	and	rcx, r9
	not	r9
	and	r9, rdi
	nop	
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0xe8], r9
	or	rsi, rcx
	mov	r13, r11
	lea	rdi, [rdi]
	je	.label_2126
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], r12
	mov	r10, qword ptr [rbp - 0xc0]
	mov	rsi, r10
	shl	rsi, 5
	mov	r12, qword ptr [rbp - 0x38]
	mov	qword ptr [r12 + rsi], rax
	nop	
	mov	qword ptr [r12 + rsi + 8], rbx
	mov	qword ptr [r12 + rsi + 0x10], rdx
	mov	rsp, rsp
	mov	qword ptr [r12 + rsi + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [r15 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [r15 - 0x10], rax
	mov	rax, r10
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [r15 - 8], rcx
	mov	rbp, rbp
	mov	qword ptr [r15], r8
	lea	rsi, [rax + rax*2]
	mov	rbp, rbp
	mov	r12, qword ptr [rbp - 0xa8]
	lea	rcx, [r12 + rsi*8]
	mov	rbx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r12 + rsi*8 + 8], rdi
	nop	
	mov	rdx, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2172
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], r13
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	lea	rdi, [rdi]
	mov	r13, rcx
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + rcx*8 + 0x10], rax
	test	rax, rax
	je	.label_2213
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	shl	rdx, 3
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	r13, qword ptr [rbp - 0x98]
	nop	
	jmp	.label_2222
	nop	word ptr cs:[rax + rax]
.label_2224:
	mov	rsp, rsp
	mov	rdi, rcx
	mov	r13, r10
	mov	r12, rsi
	mov	r11, qword ptr [rbp - 0xc0]
	jmp	.label_2227
	nop	dword ptr [rax + rax]
.label_2126:
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x70]
	jmp	.label_2152
.label_2172:
	nop	
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rcx], xmm0
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0x48]
.label_2222:
	inc	rax
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
.label_2152:
	mov	qword ptr [rbp - 0x30], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	mov	rdi, rbx
	call	re_node_set_insert
	test	al, al
	nop	
	je	.label_2142
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc8]
	nop	
	mov	rax, rdx
	nop	
	or	rax, r12
	mov	rbp, rbp
	mov	rcx, r13
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	or	rcx, rdi
	or	rcx, rax
	mov	r11, qword ptr [rbp - 0xc0]
	je	.label_2147
.label_2227:
	mov	rsp, rsp
	inc	r14
	mov	rbp, rbp
	add	rbx, 0x18
	lea	rdi, [rdi]
	add	r15, 0x20
	nop	
	cmp	r14, r11
	nop	
	mov	rcx, rdi
	mov	rbp, rbp
	mov	r10, r13
	mov	rsi, r12
	mov	rbp, rbp
	jl	.label_2211
	nop	word ptr cs:[rax + rax]
.label_2147:
	cmp	r14, r11
	mov	r12, qword ptr [rbp - 0xa8]
	mov	r15, qword ptr [rbp - 0xd0]
	mov	r13, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	jne	.label_2179
	mov	rbp, rbp
	mov	rax, r14
	mov	rsp, rsp
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x100]
	movaps	xmm1, xmmword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	movups	xmmword ptr [rdx + rax + 0x10], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdx + rax], xmm0
	lea	rbx, [r14 + r14*2]
	mov	rax, qword ptr [r13 + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rax + rdi*8]
	mov	r13, r12
	nop	
	mov	r12, rdi
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1428]]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r13 + rbx*8], xmm0
	mov	rsp, rsp
	mov	edi, 8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r13 + rbx*8 + 0x10], rax
	mov	rbp, rbp
	mov	rcx, r13
	test	rax, rax
	je	.label_2204
	mov	qword ptr [rax], r15
	lea	rsi, [rsi]
	inc	r14
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	mov	r11, r14
	mov	r15, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rdi, r12
	mov	r12, rcx
	nop	
.label_2179:
	mov	rsp, rsp
	inc	rdi
	mov	rbp, rbp
	cmp	rdi, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	jl	.label_2219
	test	r11, r11
	lea	rdi, [rdi]
	jle	.label_2225
	nop	
	lea	rax, [r11 + 1]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	lea	rdi, [r11*8 + 8]
	mov	rbx, r11
	mov	qword ptr [rbp - 0xc0], rbx
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x58], rax
	xor	ecx, ecx
	nop	
	test	rax, rax
	mov	edx, 0xc
	mov	rbp, rbp
	cmovne	edx, ecx
	mov	dword ptr [rbp - 0xac], edx
	lea	rsi, [rsi]
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	rbx, rcx
	ja	.label_2129
	test	rax, rax
	je	.label_2129
	lea	rax, [rbx*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	lea	rsi, [rsi]
	cmp	rax, 0xfbf
	lea	rsi, [rsi]
	ja	.label_2134
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], r13
	mov	rsp, rsp
	mov	rax, rsp
	mov	rsp, rsp
	add	rdi, 0xf
	nop	
	and	rdi, 0xfffffffffffffff0
	mov	rbp, rbp
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jmp	.label_2144
.label_2135:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0x48]
.label_2213:
	mov	rsp, rsp
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [r13], xmm0
.label_2142:
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0xa8]
.label_2190:
	mov	rbp, rbp
	mov	r15, -1
	test	r14, r14
	jle	.label_2139
	mov	rbp, rbp
	mov	rbx, r12
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2181:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	call	free
	nop	
	add	rbx, 0x18
	dec	r14
	jne	.label_2181
.label_2139:
	mov	rdi, r12
	nop	
	call	free
	lea	rsi, [rsi]
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_2184
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2188
.label_2184:
	mov	edi, 8
	mov	esi, 0x100
	mov	rbp, rbp
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	test	rax, rax
	lea	rsi, [rsi]
	setne	al
	nop	
	jmp	.label_2188
.label_2132:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2188
.label_2134:
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_2129
	mov	qword ptr [rbp - 0xb8], r13
	mov	cl, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], ecx
.label_2144:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	lea	rax, [rax + rbx*8]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rax, [rax + rbx*8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
.label_2218:
	mov	qword ptr [rbp - 0xc8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], r12
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	lea	rcx, [rbx + rbx*2]
	nop	
	mov	rax, qword ptr [r12 + rcx*8 + 8]
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_2221
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	lea	r13, [rdx + rcx*8 + 8]
	lea	r12, [rdx + rcx*8 + 0x10]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2148:
	nop	
	mov	rcx, qword ptr [r12]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + r14*8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	nop	
	je	.label_2145
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	lea	rcx, [rcx + rcx*2]
	nop	
	lea	rsi, [rax + rcx*8]
	lea	rdi, [rbp - 0x68]
	call	re_node_set_merge
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_2136
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13]
.label_2145:
	inc	r14
	mov	rsp, rsp
	cmp	r14, rax
	jl	.label_2148
.label_2221:
	xor	ecx, ecx
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xac]
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rdx, [rbp - 0x68]
	call	re_acquire_state_context
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + rbx*8], rax
	nop	
	test	rax, rax
	jne	.label_2159
	mov	ecx, dword ptr [rbp - 0xac]
	nop	
	test	ecx, ecx
	nop	
	jne	.label_2136
.label_2159:
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2166
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + rbx*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rcx + rbx*8], rax
	jmp	.label_2169
.label_2166:
	mov	ecx, 1
	mov	rbp, rbp
	lea	rdi, [rbp - 0xac]
	mov	rsp, rsp
	mov	rsi, r15
	lea	rdx, [rbp - 0x68]
	mov	rsp, rsp
	call	re_acquire_state_context
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	jne	.label_2183
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xac]
	test	ecx, ecx
	jne	.label_2136
.label_2183:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rcx + rbx*8], rax
	nop	
	je	.label_2192
	mov	rbp, rbp
	mov	al, 1
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_2195
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
.label_2195:
	mov	qword ptr [rbp - 0x90], rax
.label_2192:
	mov	rsp, rsp
	mov	ecx, 2
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xac]
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdx, [rbp - 0x68]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rcx + rbx*8], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_2169
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2136
.label_2169:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x70]
	or	rdx, qword ptr [rcx + rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x98], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	or	rdx, qword ptr [rcx + rax + 0x18]
	nop	
	inc	rbx
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rbx, rax
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0xa8]
	jl	.label_2218
	mov	rsp, rsp
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0x90]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_2122
	nop	
	mov	qword ptr [rbp - 0x90], rax
	nop	
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2136
	mov	rcx, qword ptr [rbp - 0x40]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	r10, r15
	mov	rbp, rbp
	mov	r11, qword ptr [rbp - 0x30]
	mov	r12, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	je	.label_2127
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_2157
.label_2162:
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	lea	rbx, [rsi + 1]
	nop	
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	lea	rsi, [rsi]
	je	.label_2162
	test	qword ptr [r10 + 0xb8], rdx
	je	.label_2170
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_2180
.label_2170:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r11 + rsi*8 + 8]
.label_2180:
	mov	qword ptr [rax + r9*8], rcx
	nop	
	jmp	.label_2177
.label_2157:
	mov	rbx, -1
	lea	rdi, [rdi]
	test	dil, 1
	mov	rcx, r8
	jne	.label_2162
.label_2177:
	lea	rsi, [rsi]
	add	rdx, rdx
	mov	rbp, rbp
	shr	rdi, 1
	nop	
	inc	r9
	test	rdi, rdi
	jne	.label_2157
.label_2127:
	test	r12, r12
	je	.label_2187
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	lea	rsi, [rsi]
	mov	esi, 0x40
	lea	rsi, [rsi]
	jmp	.label_2175
.label_2194:
	mov	rbx, rdi
	mov	rbp, rbp
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2194
	mov	rbp, rbp
	test	qword ptr [r10 + 0xc0], rdx
	lea	rsi, [rsi]
	je	.label_2207
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	mov	rbp, rbp
	jmp	.label_2205
.label_2207:
	nop	
	mov	rcx, qword ptr [r11 + rbx*8 + 8]
.label_2205:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2206
.label_2175:
	lea	rdi, [rdi]
	mov	rdi, -1
	lea	rdi, [rdi]
	test	r12b, 1
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	rbp, rbp
	jne	.label_2194
.label_2206:
	mov	rbp, rbp
	add	rdx, rdx
	nop	
	shr	r12, 1
	lea	rdi, [rdi]
	inc	rsi
	mov	rbp, rbp
	test	r12, r12
	jne	.label_2175
.label_2187:
	lea	rdi, [rdi]
	mov	r12, r11
	mov	r11, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	test	r11, r11
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0xc0]
	mov	r15d, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	je	.label_2217
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	rsp, rsp
	mov	esi, 0x80
	jmp	.label_2189
.label_2125:
	mov	rbx, rdi
	mov	rsp, rsp
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	mov	rsp, rsp
	lea	rcx, [rcx + 0x20]
	je	.label_2125
	test	qword ptr [r10 + 0xc8], rdx
	mov	rsp, rsp
	je	.label_2161
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	lea	rsi, [rsi]
	jmp	.label_2230
.label_2161:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + rbx*8 + 8]
.label_2230:
	mov	qword ptr [rax + rsi*8], rcx
	lea	rdi, [rdi]
	jmp	.label_2123
.label_2189:
	mov	rbp, rbp
	mov	rdi, -1
	test	r11b, 1
	mov	rcx, r8
	jne	.label_2125
.label_2123:
	nop	
	add	rdx, rdx
	mov	rsp, rsp
	shr	r11, 1
	inc	rsi
	lea	rsi, [rsi]
	test	r11, r11
	jne	.label_2189
.label_2217:
	mov	rsp, rsp
	test	r13, r13
	mov	rsp, rsp
	mov	r11, r12
	nop	
	mov	r12d, r15d
	je	.label_2137
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	nop	
	mov	esi, 0xc0
	nop	
	jmp	.label_2141
.label_2150:
	mov	rbx, rdi
	lea	rdi, [rdi]
	lea	rdi, [rbx + 1]
	lea	rsi, [rsi]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2150
	test	qword ptr [r10 + 0xd0], rdx
	lea	rsi, [rsi]
	je	.label_2191
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	lea	rdi, [rdi]
	jmp	.label_2208
.label_2191:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r11 + rbx*8 + 8]
.label_2208:
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi*8], rcx
	mov	rsp, rsp
	jmp	.label_2165
.label_2141:
	mov	rdi, -1
	mov	rbp, rbp
	test	r13b, 1
	mov	rcx, r8
	jne	.label_2150
.label_2165:
	nop	
	add	rdx, rdx
	mov	rbp, rbp
	shr	r13, 1
	lea	rdi, [rdi]
	inc	rsi
	test	r13, r13
	jne	.label_2141
.label_2137:
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	test	ch, 4
	mov	rbp, rbp
	je	.label_2131
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_2186:
	lea	rdi, [rdi]
	test	byte ptr [rdx + 1], 4
	jne	.label_2182
	mov	rbp, rbp
	inc	rcx
	lea	rsi, [rsi]
	add	rdx, 0x20
	cmp	rcx, r9
	lea	rsi, [rsi]
	jl	.label_2186
	mov	rsp, rsp
	jmp	.label_2131
.label_2204:
	mov	rbp, rbp
	mov	r12, rcx
	lea	rax, [r12 + rbx*8]
	nop	
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	jmp	.label_2190
.label_2129:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rax, rbx
	nop	
	jmp	.label_2200
.label_2225:
	lea	rsi, [rsi]
	mov	r15, r11
	jmp	.label_2139
.label_2182:
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	test	dl, dl
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2131
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x850], rcx
.label_2131:
	nop	
	mov	r15, r9
	lea	rdi, [rdi]
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_2173
	mov	rdi, r11
	nop	
	call	free
.label_2173:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rbx, r14
	nop	
	add	rbx, 0x10
.label_2223:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	nop	
	call	free
	lea	rdi, [rdi]
	add	rbx, 0x18
	mov	rbp, rbp
	dec	r15
	nop	
	jne	.label_2223
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	al, 1
	jmp	.label_2188
.label_2122:
	mov	qword ptr [rbp - 0x90], rax
	mov	edi, 8
	nop	
	mov	esi, 0x200
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + 0x60], rax
	nop	
	test	rax, rax
	je	.label_2136
	mov	rcx, qword ptr [rbp - 0x40]
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x70]
	je	.label_2124
	lea	rsi, [rsi]
	lea	r8, [r14 + 0x1800]
	nop	
	mov	edx, 1
	mov	rsp, rsp
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_2133
.label_2136:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x48]
	test	al, al
	mov	rbp, rbp
	je	.label_2140
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_2140:
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0xc0]
	test	rax, rax
	mov	r12, qword ptr [rbp - 0xa8]
	nop	
	jle	.label_2155
.label_2200:
	nop	
	mov	rbx, r12
	lea	rsi, [rsi]
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2167:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	r14, rax
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, r14
	add	rbx, 0x18
	dec	rax
	jne	.label_2167
.label_2155:
	mov	rdi, r12
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
.label_2188:
	lea	rsp, [rbp - 0x28]
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_2174:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	mov	rsp, rsp
	lea	rcx, [rcx + 0x20]
	je	.label_2174
	nop	
	mov	rcx, qword ptr [r11 + rsi*8 + 8]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	lea	rsi, [rsi]
	jmp	.label_2185
.label_2133:
	mov	rbx, -1
	nop	
	test	dil, 1
	mov	rcx, r8
	lea	rsi, [rsi]
	jne	.label_2174
.label_2185:
	nop	
	add	rdx, rdx
	shr	rdi, 1
	nop	
	inc	r9
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_2133
.label_2124:
	nop	
	test	r10, r10
	je	.label_2201
	lea	r8, [r14 + 0x1808]
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	esi, 0x40
	jmp	.label_2220
.label_2209:
	mov	rcx, rbx
	nop	
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2209
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2212
.label_2220:
	mov	rbx, -1
	test	r10b, 1
	mov	rdi, r8
	jne	.label_2209
.label_2212:
	mov	rbp, rbp
	add	rdx, rdx
	shr	r10, 1
	inc	rsi
	mov	rbp, rbp
	test	r10, r10
	nop	
	jne	.label_2220
.label_2201:
	mov	rcx, qword ptr [rbp - 0x98]
	test	rcx, rcx
	mov	r9, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	je	.label_2226
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	lea	rsi, [rsi]
	mov	esi, 0x80
	nop	
	jmp	.label_2138
.label_2130:
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rbp, rbp
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi]
	lea	rdi, [rdi + 0x20]
	je	.label_2130
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2154
.label_2138:
	mov	rbx, -1
	nop	
	test	cl, 1
	mov	r10, rcx
	mov	rdi, r8
	jne	.label_2130
.label_2154:
	add	rdx, rdx
	nop	
	mov	rcx, r10
	shr	rcx, 1
	inc	rsi
	test	rcx, rcx
	nop	
	jne	.label_2138
.label_2226:
	test	r13, r13
	je	.label_2137
	nop	
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2146
.label_2171:
	mov	rsp, rsp
	mov	rcx, rbx
	mov	rsp, rsp
	lea	rbx, [rcx + 1]
	mov	rsp, rsp
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi]
	lea	rdi, [rdi + 0x20]
	je	.label_2171
	mov	rbp, rbp
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	lea	rsi, [rsi]
	jmp	.label_2210
.label_2146:
	mov	rsp, rsp
	mov	rbx, -1
	test	r13b, 1
	mov	rsp, rsp
	mov	rdi, r8
	jne	.label_2171
.label_2210:
	nop	
	add	rdx, rdx
	mov	rsp, rsp
	shr	r13, 1
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_2137
	jmp	.label_2146
	nop	
	.section	.text
	.align	16
	#Procedure 0x41daf0

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x58
	nop	
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1428]]
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	nop	
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_2246
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2233
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x20]
	nop	
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x4c], 0
	nop	
.label_2251:
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	rbp, rbp
	test	rdx, rdx
	mov	rsp, rsp
	jle	.label_2232
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_2238
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2241
	nop	dword ptr [rax]
.label_2238:
	mov	eax, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	inc	eax
.label_2241:
	lea	rsi, [rsi]
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_2244
	mov	dword ptr [rsp + 0x4c], eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], 0
	lea	r13, [rdx - 1]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_2234
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2234
	mov	rcx, qword ptr [r14 + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2245:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	r12, qword ptr [rax + rbx*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r12
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	shl	r12, 4
	lea	rdi, [rdi]
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2239
	mov	rax, r15
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, rbp
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	nop	
	call	check_node_accept_bytes
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_2240
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	jle	.label_2243
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	mov	r14, r13
	mov	r13, r15
	mov	rbp, rbp
	mov	r15, rcx
	mov	rsp, rsp
	jmp	.label_2235
.label_2240:
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_2235
	mov	rbp, rbp
	jmp	.label_2239
.label_2243:
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + rcx*8]
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	mov	r14, r13
	mov	rsp, rsp
	mov	r13, r15
	mov	r15, rsi
	nop	
	je	.label_2239
	mov	rsi, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_2239
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2242
	nop	word ptr [rax + rax]
.label_2236:
	mov	rbp, rbp
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	mov	rbp, rbp
	cmovge	rsi, rbp
	lea	rsi, [rsi]
	cmp	rdi, rsi
	jb	.label_2236
.label_2242:
	mov	rbp, rbp
	test	eax, eax
	je	.label_2239
	lea	rsi, [rsi]
	cmp	rdi, -1
	nop	
	je	.label_2239
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2235
.label_2239:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	add	r12, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	nop	
	call	check_node_accept
	nop	
	test	al, al
	nop	
	je	.label_2237
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2237
	mov	rax, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_2237
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	lea	rsi, [rsi]
	dec	rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	mov	rbp, rbp
	je	.label_2250
.label_2249:
	lea	rdi, [rsi + rax]
	mov	rbp, rbp
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	mov	rbp, rbp
	lea	rbp, [rdi + 1]
	nop	
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	mov	rbp, rbp
	jb	.label_2249
.label_2250:
	lea	rsi, [rsi]
	cmp	rsi, -1
	nop	
	je	.label_2237
	mov	eax, 1
	nop	
	cmp	qword ptr [rdx + rsi*8], rcx
	lea	rsi, [rsi]
	jne	.label_2237
	nop	
.label_2235:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2248
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	add	rcx, r13
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	mov	r8, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + r8*8]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	r9, r13
	call	check_dst_limits
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_2237
.label_2248:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	mov	rsp, rsp
	je	.label_2233
.label_2237:
	inc	rbx
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	mov	rbp, rbp
	jl	.label_2245
.label_2234:
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r13
	nop	
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	rsp, rsp
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_2251
	mov	rbp, rbp
	jmp	.label_2233
.label_2232:
	lea	rdi, [rdi]
	xor	ebp, ebp
	jmp	.label_2233
.label_2244:
	nop	
	shl	rdx, 3
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	esi, esi
	lea	rdi, [rdi]
	call	memset
.label_2233:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_2247:
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_2246:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jmp	.label_2247
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41df60

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r11, rcx
	nop	
	mov	rbp, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rbp
	nop	
	mov	r13, rdi
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	cmove	rax, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r11 + 8], 0
	lea	rdi, [rdi]
	je	.label_2291
	mov	qword ptr [rsp + 0x68], rdx
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_2269
	mov	rbp, rbp
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	lea	rsi, [rsi]
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x10]
	nop	
	test	r12d, r12d
	mov	rbp, rbp
	jne	.label_2264
	lea	rdi, [rdi]
	mov	r15, r14
	lea	rsi, [rsi]
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rsp, rsp
	jne	.label_2275
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	lea	rdi, [rdi]
	shl	rdi, 3
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	mov	rsp, rsp
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], ecx
	je	.label_2264
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2275
	mov	r14, rbp
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
.label_2271:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	mov	rbp, rbp
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2311
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jl	.label_2271
	mov	dword ptr [rsp + 0x10], 0
	mov	rbp, r14
.label_2275:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	nop	
	mov	rbx, qword ptr [rsp]
	jne	.label_2258
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	je	.label_2269
	mov	qword ptr [rsp + 0x80], r13
	nop	
	mov	r10, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	jle	.label_2279
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2252:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	lea	rdi, [rdi]
	jge	.label_2272
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + rax*8 + 8], r10
	lea	rdi, [rdi]
	jl	.label_2272
	mov	rdx, qword ptr [r13 + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12]
	nop	
	shl	rdx, 4
	mov	rsp, rsp
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x48], r8
	mov	rbp, rbp
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2302
	nop	
	test	rax, rax
	nop	
	jle	.label_2272
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	lea	rsi, [rsi]
	mov	rsi, -1
	nop	
.label_2286:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	mov	rbp, rbp
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	nop	
	je	.label_2253
	lea	rdi, [rdi]
	cmp	ebx, 8
	jne	.label_2266
	cmp	r8, qword ptr [rcx + rdi]
	mov	rbp, rbp
	je	.label_2268
	mov	rbp, rsi
.label_2268:
	lea	rsi, [rsi]
	mov	rsi, rbp
	jmp	.label_2266
	nop	word ptr cs:[rax + rax]
.label_2253:
	nop	
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2301
	mov	rbp, r14
.label_2301:
	lea	rsi, [rsi]
	mov	r14, rbp
.label_2266:
	mov	rbp, rbp
	add	rdx, 8
	dec	rax
	jne	.label_2286
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rbp, r11
	js	.label_2290
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rdx, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	lea	rsi, [rsi]
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_2295
.label_2290:
	test	r14, r14
	mov	rbp, rbp
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	js	.label_2272
	mov	rbp, rbp
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_2272
	nop	dword ptr [rax]
.label_2265:
	mov	rsp, rsp
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2278
	mov	rbp, rbp
	dec	rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	rbp, rbp
	mov	eax, 0
	je	.label_2308
	nop	dword ptr [rax]
.label_2260:
	mov	rsp, rsp
	lea	rbx, [rax + rdx]
	lea	rdi, [rdi]
	shr	rbx, 1
	mov	rsp, rsp
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	mov	rsp, rsp
	cmovl	rax, rcx
	cmovge	rdx, rbx
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_2260
.label_2308:
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2278
	mov	rbp, rbp
	cmp	qword ptr [rdi + rax*8], r14
	lea	rdi, [rdi]
	je	.label_2282
.label_2278:
	nop	
	mov	rax, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	lea	rdi, [rdi]
	test	rdx, rdx
	jle	.label_2288
	nop	
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	lea	rdi, [rdi]
	mov	eax, 0
	je	.label_2299
	nop	dword ptr [rax]
.label_2254:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	nop	
	cmp	qword ptr [rcx + rdi*8], r14
	nop	
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rax, rbx
	cmovge	rdx, rdi
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_2254
.label_2299:
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_2288
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], r14
	mov	rsp, rsp
	je	.label_2282
.label_2288:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], r15
	mov	r15, r13
	nop	
	mov	rdi, r12
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, r11
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	r12, r10
	nop	
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	nop	
	mov	r12d, eax
	test	r12d, r12d
	nop	
	jne	.label_2295
	mov	rsp, rsp
	dec	rbp
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	nop	
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x98]
.label_2282:
	inc	rbp
	nop	
	cmp	rbp, r8
	jl	.label_2265
	jmp	.label_2272
.label_2302:
	nop	
	test	rax, rax
	mov	ebp, 0
	jg	.label_2273
	jmp	.label_2272
	nop	dword ptr [rax]
.label_2314:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
.label_2273:
	mov	rbp, rbp
	mov	rdx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	shl	rdx, 4
	nop	
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	mov	rbp, rbp
	and	edi, ebx
	nop	
	or	edi, 1
	cmp	edi, 9
	jne	.label_2283
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_2283
	mov	rbp, rbp
	mov	r14, r15
	mov	r15, r13
	mov	rsp, rsp
	mov	rdi, r12
	mov	r13, r12
	mov	rsp, rsp
	mov	rdx, r11
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	r12, r10
	mov	rbx, r11
	lea	rsi, [rsi]
	call	sub_epsilon_src_nodes
	mov	rbp, rbp
	mov	r10, r12
	mov	r12d, eax
	mov	rsp, rsp
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2295
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	r11, rbx
	lea	rsi, [rsi]
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x48]
.label_2283:
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, rax
	jl	.label_2314
	nop	word ptr cs:[rax + rax]
.label_2272:
	inc	r15
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_2252
.label_2279:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0
	mov	r13, qword ptr [rsp + 0x80]
	mov	rbx, qword ptr [rsp]
.label_2269:
	nop	
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r11
	mov	rbp, rbp
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	test	r12d, r12d
	lea	rsi, [rsi]
	je	.label_2285
	jmp	.label_2258
.label_2291:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_2285:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_2300
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	nop	
	je	.label_2300
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbp, rbp
	jle	.label_2303
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	
.label_2281:
	mov	rbp, rbp
	lea	rsi, [rax + r15]
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	mov	rsp, rsp
	add	rdi, rsi
	sar	rdi, 1
	nop	
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	lea	rdi, [rdi]
	cmovge	rax, rdi
	mov	rbp, rbp
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	lea	rsi, [rsi]
	cmp	r15, rax
	lea	rsi, [rsi]
	jl	.label_2281
.label_2303:
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_2270
	cmp	r15, -1
	nop	
	je	.label_2270
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb0], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_2270
	mov	qword ptr [rsp + 0x10], 0
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jle	.label_2289
	mov	rdi, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rdi
	mov	qword ptr [rsp + 0x68], rdx
	nop	
	mov	r10, rbx
	mov	qword ptr [rsp + 0xa8], r10
	mov	rbp, rbp
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	shl	qword ptr [rsp + 0xb0], 3
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_2317:
	mov	qword ptr [rsp + 0x90], r13
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	nop	
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	jne	.label_2310
	cmp	eax, 4
	mov	rbp, rbp
	mov	rcx, rdx
	jne	.label_2262
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_2259
	nop	
	jmp	.label_2262
.label_2310:
	nop	
	cmp	eax, 4
	mov	rcx, rdx
	mov	rbp, rbp
	jne	.label_2262
.label_2259:
	mov	rbx, qword ptr [rdi + 0xd8]
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0xb0]
	mov	r14, r15
	nop	dword ptr [rax]
.label_2313:
	cmp	qword ptr [rbx], rbp
	lea	rsi, [rsi]
	jne	.label_2280
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_2284
	mov	rbp, rbp
	mov	rax, qword ptr [r11 + 0x28]
	nop	
	lea	rdx, [rbp + rbp*2]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_2294
	nop	dword ptr [rax]
.label_2284:
	lea	rdi, [rdi]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_2294:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_2280
	lea	rsi, [rsi]
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_2280
	mov	rax, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_2280
	mov	rsp, rsp
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	lea	rdi, [rdi]
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2309
	nop	dword ptr [rax]
.label_2263:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	nop	
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rdi, [rdi]
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	lea	rdi, [rdi]
	jb	.label_2263
.label_2309:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_2257
	nop	
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_2257
	mov	qword ptr [rsp + 0x48], r11
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	call	check_dst_limits
	test	al, al
	lea	rdi, [rdi]
	mov	r10, r12
	je	.label_2276
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	nop	
	mov	rdi, qword ptr [rsp + 0x80]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_2261
.label_2257:
	lea	rdi, [rdi]
	mov	r10, r12
	nop	
	jmp	.label_2261
.label_2276:
	cmp	qword ptr [rsp], 0
	jne	.label_2293
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0x40], rax
	movups	xmm0, xmmword ptr [r10]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r10 + 0x10]
	mov	rbp, rbp
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x30], xmm2
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x38], rbx
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jle	.label_2297
	mov	rbp, rbp
	mov	rbp, r10
	mov	qword ptr [rsp + 0x30], rbx
	shl	rbx, 3
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	nop	
	je	.label_2312
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	mov	r10, rbp
	jmp	.label_2293
.label_2297:
	lea	rax, [rsp + 0x30]
	nop	
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
.label_2293:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rbx, r10
	mov	rsp, rsp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	mov	r12d, 0xc
	test	al, al
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	je	.label_2296
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rbx + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rcx
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r12, rax
	nop	
	mov	rbp, rdx
	lea	rdi, [rdi]
	call	sift_states_backward
	mov	r10, rbp
	mov	rsp, rsp
	mov	r11, r12
	nop	
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_2296
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	je	.label_2305
	lea	rdi, [rdi]
	mov	r13, -1
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x50]
	js	.label_2306
	nop	dword ptr [rax]
.label_2304:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_2315
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_2256
	mov	rbp, rbp
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	mov	rsp, rsp
	call	re_node_set_init_union
	lea	rdi, [rdi]
	mov	r12d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xbc], r12d
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2296
	mov	rsp, rsp
	lea	rdi, [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rsp + 0xbc]
	test	r12d, r12d
	nop	
	mov	rcx, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rbx, qword ptr [rsp]
	je	.label_2256
	jmp	.label_2296
.label_2315:
	lea	rsi, [rsi]
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_2256:
	inc	r13
	cmp	r13, rcx
	jl	.label_2304
.label_2306:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x90]
.label_2305:
	mov	qword ptr [rsp], rbx
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	r12, r12
	jle	.label_2287
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, rbp
	mov	edx, 0
	je	.label_2316
	nop	
.label_2292:
	mov	rsp, rsp
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	mov	rbp, rbp
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	lea	rdi, [rdi]
	jb	.label_2292
.label_2316:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	nop	
	je	.label_2277
	nop	
	mov	rdi, -1
.label_2277:
	test	rdi, rdi
	mov	rsp, rsp
	js	.label_2287
	lea	rsi, [rsi]
	cmp	r12, rdi
	jle	.label_2287
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rbp
	cmp	rbp, rdi
	nop	
	jle	.label_2287
	mov	rbp, rbp
	dec	r12
	lea	rdi, [rdx + 1]
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rbx, rdi
	nop	
	cmovge	rbx, r12
	lea	rdi, [rdi]
	sub	rbx, rdx
	cmp	rbx, 4
	mov	rbp, rbp
	jb	.label_2274
	nop	
	mov	r8, rbx
	lea	rdi, [rdi]
	and	r8, 0xfffffffffffffffc
	nop	
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	lea	rsi, [rsi]
	je	.label_2274
	mov	qword ptr [rsp + 0xa8], r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], r11
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	lea	rsi, [rsi]
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	nop	
	shr	r11, 2
	mov	rsp, rsp
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_2307
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_2307:
	mov	rbp, rbp
	test	r11, r11
	lea	rdi, [rdi]
	je	.label_2298
	mov	rbp, rbp
	cmp	r12, rdi
	lea	rsi, [rsi]
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	nop	
	lea	rsi, [rax + r10*8 + 0x38]
.label_2255:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rsi - 0x28], xmm1
	nop	
	movups	xmm0, xmmword ptr [rsi - 0x10]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	mov	rsp, rsp
	add	rdi, -8
	mov	rbp, rbp
	jne	.label_2255
.label_2298:
	cmp	rbx, r9
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	je	.label_2287
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2274:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	mov	rbp, rbp
	cmp	rdx, rbp
	jl	.label_2274
.label_2287:
	lea	rbx, [r14 + r14*4]
	mov	rbp, rbp
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	add	rbx, qword ptr [rdi + 0xd8]
.label_2261:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x98]
	nop	
.label_2280:
	mov	rbp, rbp
	inc	r14
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x20], 0
	mov	rbp, rbp
	lea	rbx, [rbx + 0x28]
	jne	.label_2313
.label_2262:
	mov	rdx, rcx
	nop	
	inc	r13
	xor	r12d, r12d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_2317
.label_2296:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_2267
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	free
.label_2267:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	test	r12d, r12d
	je	.label_2300
	mov	rsp, rsp
	jmp	.label_2258
.label_2270:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
.label_2300:
	xor	r12d, r12d
.label_2258:
	mov	rbp, rbp
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_2295:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	jmp	.label_2258
.label_2311:
	mov	dword ptr [rsp + 0x10], eax
.label_2264:
	nop	
	mov	dword ptr [rsp + 0xc], r12d
	lea	rdi, [rdi]
	jmp	.label_2258
.label_2289:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_2300
.label_2312:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x30]
	nop	
	movups	xmmword ptr [rax], xmm0
	lea	rdi, [rdi]
	mov	r12d, 0xc
	jmp	.label_2296
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41edb0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2326
	mov	r10, qword ptr [r14 + 8]
	nop	
	test	r10, r10
	je	.label_2326
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	mov	rsp, rsp
	jle	.label_2333
	add	rbx, rax
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_2326
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	mov	rsp, rsp
	jmp	.label_2336
.label_2333:
	lea	rsi, [rsi]
	lea	r8, [r12 + 0x10]
.label_2336:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_2324:
	dec	rdx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rcx, qword ptr [r14 + 0x10]
	nop	
	mov	rdi, r10
.label_2318:
	lea	rdi, [rdi]
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2328:
	nop	
	cmp	qword ptr [rbx + rdx*8], rax
	lea	rsi, [rsi]
	je	.label_2322
	nop	
	jl	.label_2327
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rsp, rsp
	lea	rdx, [rdx - 1]
	mov	rsp, rsp
	jg	.label_2328
	nop	
	jmp	.label_2321
	nop	word ptr cs:[rax + rax]
.label_2327:
	nop	
	cmp	rdi, 2
	nop	
	mov	rdi, r10
	jge	.label_2318
	jmp	.label_2321
	nop	dword ptr [rax]
.label_2322:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	lea	rsi, [rsi]
	js	.label_2325
	nop	dword ptr [rax + rax]
.label_2331:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_2319
	test	rsi, rsi
	mov	rsp, rsp
	lea	rsi, [rsi - 1]
	nop	
	jg	.label_2331
	mov	rbp, rbp
	jmp	.label_2325
.label_2319:
	test	rsi, rsi
	js	.label_2325
	cmp	rcx, rax
	je	.label_2320
	nop	dword ptr [rax + rax]
.label_2325:
	mov	rbp, rbp
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2320:
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2321
	cmp	rdi, 2
	lea	rdi, [rdi]
	jge	.label_2324
.label_2321:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 8], rsi
	lea	rdi, [rdi]
	test	rcx, rcx
	jle	.label_2329
	nop	
	test	rax, rax
	js	.label_2329
	lea	rdi, [rdi]
	add	r11, rdx
	mov	rbp, rbp
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_2332:
	mov	rsp, rsp
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	dword ptr [rax + rax]
.label_2334:
	mov	rsi, qword ptr [rdi + r14*8]
	nop	
	mov	rbx, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	cmp	rsi, rbx
	lea	rdi, [rdi]
	jg	.label_2330
	mov	qword ptr [rax + rcx*8], rbx
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	lea	rdi, [rdi]
	jg	.label_2334
	jmp	.label_2335
.label_2330:
	mov	rsp, rsp
	dec	r14
	nop	
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	nop	
	jne	.label_2332
	mov	rbp, rbp
	jmp	.label_2323
.label_2329:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r8]
.label_2335:
	mov	rdx, r10
.label_2323:
	lea	rsi, [rdi + r9*8]
	lea	rsi, [rsi]
	shl	rdx, 3
	call	memcpy
	lea	rdi, [rdi]
	xor	eax, eax
.label_2326:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41f010

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], 0
	nop	
	lea	rdx, [r15 + r15*2]
	mov	rsp, rsp
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_2341
	lea	rsi, [rsi]
	lea	rax, [rcx + rdx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2347:
	mov	rbp, rbp
	mov	r11, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, qword ptr [r11 + r13*8]
	lea	rsi, [rsi]
	cmp	rcx, r15
	je	.label_2343
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	test	byte ptr [rdx + rax + 8], 8
	je	.label_2343
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	nop	
	mov	rsi, qword ptr [rcx]
	mov	rbp, rbp
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	lea	rdi, [rdi]
	jl	.label_2355
	mov	rsp, rsp
	mov	r10, qword ptr [rcx + 8]
.label_2355:
	test	r9, r9
	lea	rsi, [rsi]
	jle	.label_2339
	mov	rcx, r9
	dec	rcx
	mov	rbp, rbp
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_2340
	nop	
.label_2346:
	mov	rbp, rbp
	lea	rbx, [rbp + rcx]
	lea	rdi, [rdi]
	shr	rbx, 1
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	mov	rbp, rbp
	cmovl	rbp, rax
	nop	
	cmovge	rcx, rbx
	mov	rsp, rsp
	cmp	rbp, rcx
	jb	.label_2346
.label_2340:
	cmp	rbp, -1
	je	.label_2339
	lea	rsi, [rsi]
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2350
.label_2339:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	jle	.label_2350
	lea	rdi, [rdi]
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_2360
	nop	word ptr cs:[rax + rax]
.label_2363:
	lea	rax, [rcx + rbp]
	mov	rbp, rbp
	shr	rax, 1
	nop	
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	lea	rdi, [rdi]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rsp, rsp
	cmp	rcx, rbp
	mov	rbp, rbp
	jb	.label_2363
.label_2360:
	lea	rdi, [rdi]
	cmp	rcx, -1
	nop	
	je	.label_2350
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdi, [rdi]
	je	.label_2351
.label_2350:
	test	r10, r10
	jle	.label_2343
	test	r9, r9
	mov	rsp, rsp
	jle	.label_2349
	mov	rbp, r9
	mov	rsp, rsp
	dec	rbp
	mov	ecx, 0
	lea	rdi, [rdi]
	je	.label_2358
	nop	word ptr cs:[rax + rax]
.label_2337:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	mov	rbp, rbp
	lea	rdx, [rax + 1]
	mov	rsp, rsp
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rbp, rbp
	cmp	rcx, rbp
	lea	rdi, [rdi]
	jb	.label_2337
.label_2358:
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2349
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdi, [rdi]
	je	.label_2343
.label_2349:
	mov	rsi, qword ptr [r12 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	jle	.label_2343
	mov	rbp, rbp
	dec	rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2354
	nop	word ptr cs:[rax + rax]
.label_2344:
	nop	
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	mov	rsp, rsp
	cmovge	rsi, rax
	cmp	rcx, rsi
	mov	rbp, rbp
	jb	.label_2344
.label_2354:
	cmp	rcx, -1
	je	.label_2343
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rsi, [rsi]
	jne	.label_2343
.label_2351:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	nop	
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	nop	
	mov	ebp, eax
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_2359
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	word ptr [rax + rax]
.label_2343:
	inc	r13
	cmp	r13, r9
	jl	.label_2347
	test	r9, r9
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	jle	.label_2341
	lea	r8, [rsp + 0x30]
	mov	rsp, rsp
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r11, [r10 - 1]
	lea	rsi, [rsi]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2357:
	lea	rsi, [rsi]
	test	r10, r10
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_2345
	lea	rsi, [rsi]
	test	r11, r11
	lea	rsi, [rsi]
	mov	rdx, r11
	mov	rbp, rbp
	mov	ecx, 0
	je	.label_2356
	nop	word ptr cs:[rax + rax]
.label_2361:
	lea	rdi, [rdi]
	lea	rdi, [rcx + rdx]
	mov	rbp, rbp
	shr	rdi, 1
	mov	rbp, rbp
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rcx, rbx
	lea	rsi, [rsi]
	cmovge	rdx, rdi
	mov	rsp, rsp
	cmp	rcx, rdx
	jb	.label_2361
.label_2356:
	lea	rdi, [rdi]
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2345
	cmp	qword ptr [rsi + rcx*8], rax
	mov	rsp, rsp
	je	.label_2348
.label_2345:
	mov	rsp, rsp
	mov	r14, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r14, r14
	jle	.label_2348
	mov	r15, r14
	dec	r15
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_2353
	nop	word ptr cs:[rax + rax]
.label_2352:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	mov	rbp, rbp
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	lea	rdi, [rdi]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	nop	
	jb	.label_2352
.label_2353:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	mov	rbp, rbp
	je	.label_2342
	nop	
	mov	rax, -1
.label_2342:
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_2348
	cmp	r14, rax
	jle	.label_2348
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_2348
	nop	
.label_2338:
	nop	
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	nop	
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_2338
	nop	dword ptr [rax + rax]
.label_2348:
	inc	r13
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r13, qword ptr [rax]
	mov	rsp, rsp
	jl	.label_2357
	jmp	.label_2364
.label_2341:
	mov	rbp, rbp
	lea	r8, [rsp + 0x30]
.label_2364:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_2362:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_2359:
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_2362
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41f4b0

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	r14, r9
	mov	qword ptr [rsp + 0x30], r14
	nop	
	mov	qword ptr [rsp + 0x28], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	mov	rbp, rbp
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2367
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_2366:
	nop	
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x18]
	nop	
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	nop	
	mov	rdi, rbp
	mov	rdx, r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	rbp, rbp
	mov	al, 1
	jne	.label_2365
	nop	
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	mov	rsp, rsp
	jl	.label_2366
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_2365
.label_2367:
	lea	rdi, [rdi]
	xor	eax, eax
.label_2365:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41f5f0

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	rsp, rsp
	mov	r10, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	lea	rsi, [rsi + rsi*4]
	mov	rbp, rbp
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmp	r11, r8
	jg	.label_2368
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	rbp, rbp
	mov	eax, 1
	cmp	r10, r8
	mov	rbp, rbp
	jl	.label_2368
	cmp	r11, r8
	sete	al
	movzx	r11d, al
	cmp	r10, r8
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	esi, al
	add	esi, esi
	xor	eax, eax
	or	esi, r11d
	lea	rdi, [rdi]
	je	.label_2368
	lea	rsi, [rsi]
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_2368:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x41f660

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	r12, rdx
	mov	ebx, esi
	mov	qword ptr [rsp], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_2385
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	eax, 1
	mov	cl, r12b
	nop	
	shl	rax, cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	eax, ebx
	mov	rbp, rbp
	and	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], eax
	shr	eax, 1
	cmp	r12, 0x3f
	setg	cl
	or	cl, al
	nop	
	mov	byte ptr [rsp + 0x3f], cl
	mov	eax, ebx
	nop	
	and	eax, 1
	mov	dword ptr [rsp + 0x1c], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	jmp	.label_2379
.label_2382:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x3f], 0
	lea	rdi, [rdi]
	je	.label_2373
	nop	
.label_2375:
	mov	rsp, rsp
	cmp	qword ptr [r14], r13
	mov	rsp, rsp
	jne	.label_2369
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	nop	
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0x28]
	je	.label_2381
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	rsp, rsp
	mov	ecx, eax
	test	ecx, ecx
	je	.label_2388
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	cmp	ecx, -1
	mov	rbp, rbp
	jne	.label_2369
	jmp	.label_2374
	nop	word ptr cs:[rax + rax]
.label_2388:
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	dword ptr [rsp + 0x18], 0
	jne	.label_2374
.label_2369:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	lea	rsi, [rsi]
	jne	.label_2375
	jmp	.label_2380
	nop	word ptr [rax + rax]
.label_2373:
	cmp	qword ptr [r14], r13
	jne	.label_2377
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	lea	rcx, [r13 + r13*2]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x28]
	je	.label_2381
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp]
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos_1
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_2371
	mov	rsp, rsp
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmp	ecx, -1
	mov	rsp, rsp
	jne	.label_2377
	mov	rsp, rsp
	jmp	.label_2374
	nop	
.label_2371:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x30]
	nop	
	and	ecx, eax
	mov	rbp, rbp
	mov	word ptr [r14 + 0x22], cx
.label_2377:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	nop	
	jne	.label_2373
	jmp	.label_2380
	nop	dword ptr [rax]
.label_2379:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	r13, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r13
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	lea	rsi, [rsi]
	cmp	eax, 9
	nop	
	je	.label_2387
	cmp	eax, 8
	nop	
	je	.label_2376
	cmp	eax, 4
	jne	.label_2380
	nop	
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2380
	mov	rax, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	lea	r14, [rax + rax*4]
	nop	
	shl	r14, 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	add	r14, qword ptr [rax + 0xd8]
	cmp	r12, 0x3f
	lea	rdi, [rdi]
	jg	.label_2382
	nop	
.label_2378:
	cmp	qword ptr [r14], r13
	jne	.label_2386
	lea	rsi, [rsi]
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	je	.label_2386
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	lea	rcx, [r13 + r13*2]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x28]
	je	.label_2381
	nop	
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, r12
	nop	
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	check_dst_limits_calc_pos_1
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	test	ecx, ecx
	je	.label_2384
	mov	eax, 0xffffffff
	cmp	ecx, -1
	jne	.label_2372
	jmp	.label_2374
.label_2384:
	cmp	byte ptr [rsp + 0x3f], 0
	je	.label_2372
	xor	eax, eax
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2386
	mov	rbp, rbp
	jmp	.label_2374
	nop	word ptr cs:[rax + rax]
.label_2372:
	mov	rsp, rsp
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	and	ecx, eax
	nop	
	mov	word ptr [r14 + 0x22], cx
.label_2386:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_2378
	lea	rdi, [rdi]
	jmp	.label_2380
	nop	dword ptr [rax]
.label_2387:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2380
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_2383
	nop	
.label_2376:
	cmp	dword ptr [rsp + 0x1c], 0
	mov	rsp, rsp
	je	.label_2380
	mov	eax, 0xffffffff
.label_2383:
	mov	rsp, rsp
	cmp	qword ptr [rcx], r12
	je	.label_2374
.label_2380:
	mov	rbp, rbp
	inc	r15
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r15, qword ptr [rax]
	lea	rsi, [rsi]
	jl	.label_2379
.label_2385:
	shr	ebx, 1
	and	ebx, 1
	jmp	.label_2370
.label_2381:
	nop	
	shl	ebx, 0x1f
	sar	ebx, 0x1f
.label_2370:
	nop	
	mov	eax, ebx
.label_2374:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41fa30

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
	jne	.label_2389
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_2390
	test	cl, cl
	mov	rsp, rsp
	jne	.label_2390
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_2390
.label_2389:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2390
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_2390:
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
	#Procedure 0x41fac0

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
	je	.label_2392
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2391
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_2393
.label_2391:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_2392
.label_2393:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_2392:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x41fb10

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
	mov	ecx, OFFSET FLAT:.str_1
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_2394
	nop	
	mov	rax, rcx
.label_2394:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x41fb50

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