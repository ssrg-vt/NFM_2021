	.section	.text
	.align	32
	#Procedure 0x4026a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
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
	call	emit_mandatory_arg_note
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
	call	emit_blocksize_note
	call	emit_size_note
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402870

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028a0

	.globl emit_blocksize_note
	.type emit_blocksize_note, @function
emit_blocksize_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.12
	xor	eax, eax
	mov	rsi, rcx
	pop	rcx
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028d0

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402900

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.59
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.13
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.13
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
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
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.13
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.73
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a20

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rsi
	mov	r13d, edi
	mov	qword ptr [word ptr [rsp + 64]], OFFSET FLAT:.str_1
	mov	qword ptr [rsp + 0x48], 0
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.16
	mov	esi, OFFSET FLAT:.str.17_0
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.16
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	call	new_exclude
	mov	qword ptr [word ptr [rip + exclude]],  rax
	mov	edi, OFFSET FLAT:.str.18_0
	call	getenv
	mov	esi, OFFSET FLAT:human_output_opts
	mov	edx, OFFSET FLAT:output_block_size
	mov	rdi, rax
	call	human_options
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	dword ptr [rsp + 0x2c], 8
	mov	dword ptr [rsp + 0x28], 0x10
	xor	ebp, ebp
	lea	r12, [rsp + 0x3c]
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_42
	nop	word ptr cs:[rax + rax]
.label_24:
	mov	bpl, cl
.label_42:
	mov	dword ptr [rsp + 0x3c], 0xffffffff
	mov	edx, OFFSET FLAT:.str.19
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r13d
	mov	rsi, r15
	mov	r8, r12
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x72
	jg	.label_54
	cmp	ebx, 0x4f
	jle	.label_58
	lea	eax, [rbx - 0x58]
	cmp	eax, 0x15
	ja	.label_60
	jmp	qword ptr [word ptr [+ (rax * 8) + label_61]]
.label_2842:
	mov	rsi,  qword ptr [word ptr [rip + exclude]]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	mov	edi, OFFSET FLAT:add_exclude
	mov	ecx, 0x10000000
	mov	r8d, 0xa
	call	add_exclude_file
	test	eax, eax
	je	.label_21
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_21
	nop	
.label_54:
	mov	eax, ebx
	add	eax, -0x73
	cmp	eax, 0x14
	ja	.label_17
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_70]]
.label_2767:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:opt_threshold
	mov	r8d, OFFSET FLAT:.str.21
	call	xstrtoimax
	test	eax, eax
	jne	.label_28
	cmp	qword ptr [word ptr [rip + opt_threshold]],  0
	jne	.label_21
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2d
	mov	cl, bpl
	jne	.label_24
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
.label_58:
	cmp	ebx, 0x43
	jg	.label_11
	cmp	ebx, 0x2f
	jle	.label_14
	cmp	ebx, 0x30
	je	.label_15
	cmp	ebx, 0x42
	jne	.label_17
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:human_output_opts
	mov	edx, OFFSET FLAT:output_block_size
	call	human_options
	test	eax, eax
	mov	cl, bpl
	je	.label_24
	jmp	.label_28
.label_11:
	cmp	ebx, 0x44
	je	.label_30
	cmp	ebx, 0x48
	je	.label_30
	cmp	ebx, 0x4c
	jne	.label_17
	mov	dword ptr [rsp + 0x28], 2
	jmp	.label_21
.label_30:
	mov	dword ptr [rsp + 0x28], 0x11
	jmp	.label_21
.label_60:
	cmp	ebx, 0x50
	je	.label_35
	cmp	ebx, 0x53
	jne	.label_17
	mov	byte ptr [byte ptr [rip + opt_separate_dirs]],  1
	jmp	.label_21
.label_14:
	cmp	ebx, -1
	je	.label_36
	cmp	ebx, 0xffffff7d
	je	.label_38
	cmp	ebx, 0xffffff7e
	je	.label_39
.label_17:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_21
.label_15:
	mov	byte ptr [byte ptr [rip + opt_nul_terminate_output]],  1
	jmp	.label_21
.label_2768:
	or	dword ptr [rsp + 0x2c], 0x40
	jmp	.label_21
.label_2769:
	mov	byte ptr [byte ptr [rip + apparent_size]],  1
	jmp	.label_21
.label_2770:
	mov	rdi,  qword ptr [word ptr [rip + exclude]]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edx, 0x10000000
	call	add_exclude
	jmp	.label_21
.label_2771:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_21
.label_2772:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0x90
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_21
.label_2773:
	mov	byte ptr [byte ptr [rip + opt_time]],  1
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	xor	eax, eax
	test	rsi, rsi
	je	.label_37
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.24
	mov	edx, OFFSET FLAT:time_args
	mov	ecx, OFFSET FLAT:time_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + time_types]]
.label_37:
	mov	dword ptr [dword ptr [rip + time_type]],  eax
	mov	edi, OFFSET FLAT:.str_3
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [rip + localtz]],  rax
	jmp	.label_21
.label_2774:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + time_style]],  rax
	jmp	.label_21
.label_2775:
	mov	byte ptr [byte ptr [rip + opt_inodes]],  1
	jmp	.label_21
.label_2844:
	mov	byte ptr [byte ptr [rip + apparent_size]],  1
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_21
.label_2845:
	mov	byte ptr [byte ptr [rip + print_grand_total]],  1
	jmp	.label_21
.label_2847:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0xb0
	mov	qword ptr [word ptr [rip + output_block_size]],  1
	jmp	.label_21
.label_2849:
	mov	byte ptr [byte ptr [rip + opt_count_all]],  1
	jmp	.label_21
.label_2843:
	mov	byte ptr [byte ptr [rip + opt_all]],  1
	jmp	.label_21
.label_2846:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	lea	rcx, [rsp + 0x30]
	call	xstrtoul
	test	eax, eax
	je	.label_16
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_21
.label_2848:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  0x400
	jmp	.label_21
.label_2850:
	mov	dword ptr [dword ptr [rip + human_output_opts]],  0
	mov	qword ptr [word ptr [rip + output_block_size]],  0x100000
	jmp	.label_21
.label_35:
	mov	dword ptr [rsp + 0x28], 0x10
	jmp	.label_21
.label_16:
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [word ptr [rip + max_depth]],  rax
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	nop	word ptr [rax + rax]
.label_21:
	mov	cl, bpl
	jmp	.label_24
.label_36:
	mov	rax, qword ptr [rsp + 0x20]
	test	al, 1
	je	.label_76
	and	bpl, 1
	je	.label_44
	mov	al,  byte ptr [byte ptr [rip + opt_all]]
	xor	al, 1
	test	al, 1
	je	.label_45
.label_44:
	test	bpl, bpl
	je	.label_48
	mov	rbx, qword ptr [rsp + 0x18]
	and	bl, 1
	je	.label_49
	mov	rax,  qword ptr [word ptr [rip + max_depth]]
	test	rax, rax
	jne	.label_49
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_49:
	test	bl, bl
	je	.label_56
	mov	rbx,  qword ptr [word ptr [rip + max_depth]]
	test	rbx, rbx
	jne	.label_57
.label_56:
	mov	qword ptr [word ptr [rip + max_depth]],  0
.label_48:
	movzx	eax,  byte ptr [byte ptr [rip + opt_inodes]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_62
	movzx	eax,  byte ptr [byte ptr [rip + apparent_size]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_63
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_63:
	mov	qword ptr [word ptr [rip + output_block_size]],  1
.label_62:
	movzx	eax,  byte ptr [byte ptr [rip + opt_time]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_29
	cmp	qword ptr [word ptr [rip + time_style]],  0
	jne	.label_13
	mov	edi, OFFSET FLAT:.str.35
	call	getenv
	mov	rbx, rax
	mov	qword ptr [word ptr [rip + time_style]],  rbx
	test	rbx, rbx
	je	.label_69
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_69
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2b
	jne	.label_74
	mov	esi, 0xa
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	je	.label_13
	mov	byte ptr [rax], 0
	jmp	.label_13
.label_69:
	mov	qword ptr [word ptr [rip + time_style]], OFFSET FLAT:.str.37
	jmp	.label_13
.label_74:
	mov	rbx,  qword ptr [word ptr [rip + time_style]]
	mov	esi, OFFSET FLAT:main.posix_prefix
	mov	edx, 6
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	jne	.label_13
	add	rbx, 6
	nop	word ptr [rax + rax]
.label_22:
	mov	qword ptr [word ptr [rip + time_style]],  rbx
	mov	esi, OFFSET FLAT:main.posix_prefix
	mov	edx, 6
	mov	rdi, rbx
	call	strncmp
	add	rbx, 6
	test	eax, eax
	je	.label_22
.label_13:
	mov	rsi,  qword ptr [word ptr [rip + time_style]]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2b
	jne	.label_23
	inc	rsi
	mov	qword ptr [word ptr [rip + time_format]],  rsi
	jmp	.label_29
.label_23:
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.38
	mov	edx, OFFSET FLAT:time_style_args
	mov	ecx, OFFSET FLAT:time_style_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + time_style_types]]
	cmp	eax, 2
	je	.label_34
	cmp	eax, 1
	je	.label_50
	test	eax, eax
	jne	.label_29
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:.str.39
	jmp	.label_29
.label_34:
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:.str.2_0
	jmp	.label_29
.label_50:
	mov	qword ptr [word ptr [rip + time_format]], OFFSET FLAT:.str.40
.label_29:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	test	r14, r14
	je	.label_41
	cmp	eax, r13d
	jl	.label_43
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	mov	r13, qword ptr [rsp + 0x20]
	jne	.label_46
	cmp	byte ptr [r14 + 1], 0
	je	.label_47
.label_46:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rdi, r14
	call	freopen_safer
	test	rax, rax
	je	.label_51
.label_47:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	argv_iter_init_stream
	mov	r12, rax
	mov	al, 1
	jmp	.label_52
.label_41:
	cmp	eax, r13d
	lea	rax, [r15 + rax*8]
	lea	rdi, [rsp + 0x40]
	cmovl	rdi, rax
	call	argv_iter_init_argv
	mov	r12, rax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	cmp	eax, r13d
	setl	cl
	cmp	dword ptr [rsp + 0x28], 2
	sete	al
	or	al, cl
	mov	r13, qword ptr [rsp + 0x20]
.label_52:
	mov	ebp, dword ptr [rsp + 0x2c]
	mov	byte ptr [byte ptr [rip + hash_all]],  al
	test	r12, r12
	je	.label_64
	call	di_set_alloc
	mov	qword ptr [word ptr [rip + di_files]],  rax
	test	rax, rax
	je	.label_64
	mov	al,  byte ptr [byte ptr [rip + opt_count_all]]
	and	al, 1
	mov	ecx, ebp
	or	ecx, 0x100
	cmp	byte ptr [byte ptr [rip + hash_all]],  0
	cmove	ebp, ecx
	test	al, al
	cmovne	ebp, ecx
	lea	rsi, [rsp + 0x30]
	mov	rdi, r12
	call	argv_iter
	mov	rbx, rax
	test	rbx, rbx
	je	.label_66
	or	ebp, dword ptr [rsp + 0x28]
	mov	dword ptr [rsp + 0x2c], ebp
	lea	r15, [rsp + 0x30]
	jmp	.label_53
.label_33:
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2d
	jne	.label_71
	cmp	byte ptr [rbx + 1], 0
	je	.label_72
	xor	eax, eax
	jmp	.label_18
.label_71:
	xor	eax, eax
	jmp	.label_31
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	al, 1
	jmp	.label_18
	nop	word ptr cs:[rax + rax]
.label_53:
	test	r14, r14
	je	.label_12
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_20
	cmp	byte ptr [r14 + 1], 0
	je	.label_33
	xor	eax, eax
	jmp	.label_18
	nop	dword ptr [rax]
.label_12:
	xor	eax, eax
	jmp	.label_18
	nop	word ptr cs:[rax + rax]
.label_20:
	xor	eax, eax
.label_18:
	mov	cl, byte ptr [rbx]
.label_31:
	test	cl, cl
	je	.label_25
	test	al, al
	je	.label_26
	xor	r13d, r13d
	jmp	.label_27
	nop	word ptr cs:[rax + rax]
.label_25:
	test	r14, r14
	je	.label_32
	mov	rdi, r12
	call	argv_iter_n_args
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.53
	xor	eax, eax
	mov	rcx, rbp
	mov	r8, r13
	xor	r13d, r13d
	mov	r9, rbx
	call	error
	jmp	.label_27
	nop	word ptr cs:[rax + rax]
.label_26:
	mov	qword ptr [word ptr [rip + main.temp_argv]],  rbx
	mov	edi, dword ptr [rsp + 0x2c]
	call	du_files
	and	al, r13b
	mov	r13b, al
	jmp	.label_27
.label_32:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	call	error
	nop	
.label_27:
	mov	rdi, r12
	mov	rsi, r15
	call	argv_iter
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_53
.label_66:
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 2
	je	.label_55
	cmp	eax, 4
	jne	.label_59
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
.label_55:
	mov	rdi, r12
	call	argv_iter_free
	mov	rdi,  qword ptr [word ptr [rip + di_files]]
	call	di_set_free
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	test	rdi, rdi
	je	.label_65
	call	di_set_free
.label_65:
	test	r14, r14
	je	.label_19
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	call	ferror_unlocked
	test	eax, eax
	je	.label_67
	test	r13b, 1
	je	.label_19
	jmp	.label_68
.label_67:
	mov	rdi, rbx
	call	rpl_fclose
	test	r13b, 1
	je	.label_19
	test	eax, eax
	jne	.label_68
.label_19:
	movzx	eax,  byte ptr [byte ptr [rip + print_grand_total]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_73
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	edi, OFFSET FLAT:tot_dui
	mov	rsi, rax
	call	print_size
.label_73:
	not	r13b
	and	r13b, 1
	movzx	eax, r13b
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_38:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x10], 0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.30
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.29
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.27
	mov	r9d, OFFSET FLAT:.str.28
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_39:
	xor	edi, edi
	call	usage
.label_28:
	mov	esi, dword ptr [rsp + 0x3c]
	mov	r8,  qword ptr [word ptr [rip + optarg]]
	movsx	edx, bl
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	call	xstrtol_fatal
.label_76:
	mov	edi, 1
	call	usage
.label_45:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_59:
	cmp	eax, 3
	jne	.label_40
.label_64:
	call	xalloc_die
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.43
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_51:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
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
	call	error
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_40:
	mov	edi, OFFSET FLAT:.str.49
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 0x438
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403600

	.globl du_files
	.type du_files, @function
du_files:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	eax, edi
	mov	bl, 1
	cmp	qword ptr [word ptr [rip + main.temp_argv]],  0
	je	.label_77
	mov	edi, OFFSET FLAT:main.temp_argv
	xor	edx, edx
	mov	esi, eax
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	bl, 1
	jmp	.label_78
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	rdi, r14
	mov	rsi, rax
	call	process_file
	and	bl, al
	mov	rdi, r14
	call	rpl_fts_read
.label_78:
	test	rax, rax
	jne	.label_79
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_80
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdx, qword ptr [r14 + 0x20]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
.label_80:
	mov	qword ptr [word ptr [rip + prev_level]],  0
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	je	.label_77
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_77:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036f0

	.globl print_size
	.type print_size, @function
print_size:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	al,  byte ptr [byte ptr [rip + opt_inodes]]
	and	al, 1
	lea	rcx, [rbx + 8]
	test	al, al
	cmove	rcx, rbx
	mov	rdi, qword ptr [rcx]
	call	print_only_size
	movzx	eax,  byte ptr [byte ptr [rip + opt_time]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_81
	mov	edi, 9
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [rip + time_format]]
	mov	rcx,  qword ptr [word ptr [rip + localtz]]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x18]
	call	show_date
.label_81:
	mov	al,  byte ptr [byte ptr [rip + opt_nul_terminate_output]]
	xor	edx, edx
	and	al, 1
	mov	ecx, 0xa
	cmovne	ecx, edx
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.112
	xor	eax, eax
	mov	rdx, r14
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fflush_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403790

	.globl process_file
	.type process_file, @function
process_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbp, rsi
	mov	r13, rdi
	mov	rax, qword ptr [rbp + 0x38]
	mov	qword ptr [rsp + 8], rax
	lea	r12, [rbp + 0x78]
	movzx	r14d, word ptr [rbp + 0x70]
	cmp	r14d, 6
	mov	r15b, 1
	je	.label_102
	movzx	eax, r14w
	cmp	eax, 4
	jne	.label_110
	mov	r13d, dword ptr [rbp + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
.label_102:
	movzx	eax,  byte ptr [byte ptr [rip + apparent_size]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_84
	mov	rax, qword ptr [rbp + 0xa8]
	xor	ebx, ebx
	test	rax, rax
	cmovns	rbx, rax
	jmp	.label_88
.label_84:
	mov	rbx, qword ptr [rbp + 0xb8]
	shl	rbx, 9
.label_88:
	mov	eax,  dword ptr [dword ptr [rip + time_type]]
	mov	rdi, r12
	cmp	eax, 2
	je	.label_91
	test	eax, eax
	jne	.label_105
	call	get_stat_mtime
	jmp	.label_94
.label_110:
	mov	rdi,  qword ptr [word ptr [rip + exclude]]
	mov	rsi, qword ptr [rsp + 8]
	call	excluded_file_name
	test	al, al
	jne	.label_95
	cmp	r14d, 0xb
	jne	.label_98
	mov	edx, 1
	mov	rdi, r13
	mov	rsi, rbp
	call	rpl_fts_set
	mov	rdi, r13
	call	rpl_fts_read
	cmp	rax, rbp
	jne	.label_101
	movzx	r14d, word ptr [rbp + 0x70]
.label_98:
	cmp	r14d, 0xd
	je	.label_103
	cmp	r14d, 0xa
	jne	.label_104
.label_103:
	mov	ebx, dword ptr [rbp + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
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
	call	error
	jmp	.label_82
.label_91:
	call	get_stat_atime
	jmp	.label_94
.label_105:
	call	get_stat_ctime
.label_94:
	mov	rcx, rdx
	lea	rdi, [rsp + 0x38]
	mov	rsi, rbx
	mov	rdx, rax
	call	duinfo_set
	mov	r12, qword ptr [rbp + 0x58]
	movups	xmm0, xmmword ptr [rsp + 0x38]
	movups	xmm1, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rax,  qword ptr [word ptr [rip + process_file.n_alloc]]
	test	rax, rax
	je	.label_85
	mov	rsi,  qword ptr [word ptr [rip + prev_level]]
	cmp	r12, rsi
	je	.label_90
	jbe	.label_92
	cmp	rax, r12
	ja	.label_107
	mov	rdi,  qword ptr [word ptr [rip + process_file.dulvl]]
	mov	edx, 0x80
	mov	rsi, r12
	call	xnrealloc
	mov	qword ptr [word ptr [rip + process_file.dulvl]],  rax
	lea	rax, [r12 + r12]
	mov	qword ptr [word ptr [rip + process_file.n_alloc]],  rax
.label_107:
	mov	rbp,  qword ptr [word ptr [rip + prev_level]]
	lea	rbx, [rbp + 1]
	cmp	rbx, r12
	ja	.label_90
	shl	rbp, 6
	add	rbp, 0x40
.label_106:
	mov	rdi,  qword ptr [word ptr [rip + process_file.dulvl]]
	add	rdi, rbp
	call	duinfo_init
	mov	rax,  qword ptr [word ptr [rip + process_file.dulvl]]
	lea	rdi, [rax + rbp + 0x20]
	call	duinfo_init
	inc	rbx
	add	rbp, 0x40
	cmp	rbx, r12
	jbe	.label_106
	jmp	.label_90
.label_85:
	lea	rdi, [r12 + 0xa]
	mov	qword ptr [word ptr [rip + process_file.n_alloc]],  rdi
	mov	esi, 0x40
	call	xcalloc
	mov	qword ptr [word ptr [rip + process_file.dulvl]],  rax
	jmp	.label_90
.label_92:
	lea	rax, [rsi - 1]
	cmp	r12, rax
	jne	.label_112
	shl	rsi, 6
	add	rsi,  qword ptr [word ptr [rip + process_file.dulvl]]
	lea	rdi, [rsp + 0x10]
	call	duinfo_add
	mov	al,  byte ptr [byte ptr [rip + opt_separate_dirs]]
	and	al, 1
	jne	.label_83
	mov	rax,  qword ptr [word ptr [rip + prev_level]]
	mov	rcx,  qword ptr [word ptr [rip + process_file.dulvl]]
	shl	rax, 6
	lea	rsi, [rcx + rax + 0x20]
	lea	rdi, [rsp + 0x10]
	call	duinfo_add
.label_83:
	mov	rax,  qword ptr [word ptr [rip + process_file.dulvl]]
	mov	rbx, r12
	shl	rbx, 6
	lea	rdi, [rax + rbx + 0x20]
	mov	rsi,  qword ptr [word ptr [rip + prev_level]]
	shl	rsi, 6
	add	rsi, rax
	call	duinfo_add
	mov	rax,  qword ptr [word ptr [rip + process_file.dulvl]]
	lea	rdi, [rax + rbx + 0x20]
	mov	rcx,  qword ptr [word ptr [rip + prev_level]]
	shl	rcx, 6
	lea	rsi, [rax + rcx + 0x20]
	call	duinfo_add
.label_90:
	mov	qword ptr [word ptr [rip + prev_level]],  r12
	or	r14d, 2
	cmp	r14d, 6
	jne	.label_99
	test	byte ptr [byte ptr [rip + opt_separate_dirs]],  1
	jne	.label_100
.label_99:
	mov	rdi, r12
	shl	rdi, 6
	add	rdi,  qword ptr [word ptr [rip + process_file.dulvl]]
	lea	rsi, [rsp + 0x38]
	call	duinfo_add
.label_100:
	lea	rsi, [rsp + 0x38]
	mov	edi, OFFSET FLAT:tot_dui
	call	duinfo_add
	cmp	r14d, 6
	mov	rax,  qword ptr [word ptr [rip + max_depth]]
	jne	.label_108
	cmp	r12, rax
	jbe	.label_96
.label_108:
	movzx	ecx,  byte ptr [byte ptr [rip + opt_all]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_111
	test	r12, r12
	je	.label_96
	cmp	r12, rax
	ja	.label_87
	jmp	.label_96
.label_111:
	test	r12, r12
	jne	.label_87
.label_96:
	mov	al,  byte ptr [byte ptr [rip + opt_inodes]]
	and	al, 1
	lea	rax, [rsp + 0x18]
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rax
	mov	rax, qword ptr [rcx]
	mov	rcx,  qword ptr [word ptr [rip + opt_threshold]]
	test	rcx, rcx
	js	.label_113
	cmp	rax, rcx
	jb	.label_87
	jmp	.label_86
.label_113:
	neg	rcx
	cmp	rax, rcx
	ja	.label_87
.label_86:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	call	print_size
.label_87:
	test	r15b, r15b
	setne	r15b
.label_82:
	mov	al, r15b
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_104:
	test	byte ptr [r13 + 0x48], 0x40
	je	.label_93
	cmp	qword ptr [rbp + 0x58], 0
	jle	.label_93
	mov	rax, qword ptr [r13 + 0x18]
	cmp	rax, qword ptr [r12]
	jne	.label_95
.label_93:
	mov	al,  byte ptr [byte ptr [rip + opt_count_all]]
	and	al, 1
	jne	.label_89
	cmp	byte ptr [byte ptr [rip + hash_all]],  0
	jne	.label_97
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x90]
	cmp	eax, 0x4000
	je	.label_89
	cmp	qword ptr [rbp + 0x88], 2
	jb	.label_89
.label_97:
	mov	rdi,  qword ptr [word ptr [rip + di_files]]
	mov	rdx, qword ptr [rbp + 0x78]
	mov	rsi, qword ptr [rbp + 0x80]
	call	hash_ins
	test	al, al
	je	.label_95
.label_89:
	mov	r15b, 1
	cmp	r14d, 1
	je	.label_82
	cmp	r14d, 2
	je	.label_109
	cmp	r14d, 7
	jne	.label_102
	mov	ebx, dword ptr [rbp + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	r14d, 7
	jmp	.label_102
.label_95:
	mov	r15b, 1
	cmp	r14d, 1
	jne	.label_82
	mov	edx, 4
	mov	rdi, r13
	mov	rsi, rbp
	call	rpl_fts_set
	mov	rdi, r13
	call	rpl_fts_read
	cmp	rax, rbp
	je	.label_82
	mov	edi, OFFSET FLAT:.str.108
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 0x22f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.process_file
	call	__assert_fail
.label_109:
	mov	rdi, r13
	mov	rsi, rbp
	call	cycle_warning_required
	test	al, al
	je	.label_82
	mov	rdi, rbp
	call	mount_point_in_fts_cycle
	test	al, al
	jne	.label_82
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_82
.label_112:
	mov	edi, OFFSET FLAT:.str.111
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 0x27d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.process_file
	call	__assert_fail
.label_101:
	mov	edi, OFFSET FLAT:.str.108
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 0x20e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.process_file
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ce0

	.globl hash_ins
	.type hash_ins, @function
hash_ins:
	push	rax
	mov	rax, rsi
	mov	rsi, rdx
	mov	rdx, rax
	call	di_set_insert
	test	eax, eax
	js	.label_114
	setne	al
	pop	rcx
	ret	
.label_114:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d00

	.globl mount_point_in_fts_cycle
	.type mount_point_in_fts_cycle, @function
mount_point_in_fts_cycle:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	cmp	qword ptr [word ptr [rip + di_mnt]],  0
	jne	.label_115
	call	di_set_alloc
	mov	qword ptr [word ptr [rip + di_mnt]],  rax
	test	rax, rax
	je	.label_118
	call	fill_mount_table
.label_115:
	cmp	r14, rbx
	je	.label_117
	nop	
.label_119:
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rdx, qword ptr [rbx + 0x80]
	call	di_set_lookup
	mov	ecx, eax
	mov	al, 1
	test	ecx, ecx
	jg	.label_116
	mov	rbx, qword ptr [rbx + 8]
	xor	eax, eax
	test	rbx, rbx
	je	.label_116
	cmp	rbx, r14
	jne	.label_119
	jmp	.label_116
.label_117:
	xor	eax, eax
.label_116:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_118:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403d70

	.globl duinfo_set
	.type duinfo_set, @function
duinfo_set:
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rdi + 8], 1
	mov	qword ptr [rdi + 0x10], rdx
	mov	qword ptr [rdi + 0x18], rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d90

	.globl duinfo_init
	.type duinfo_init, @function
duinfo_init:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rdi + 0x10], rax
	mov	qword ptr [rdi + 0x18], -1
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403db0

	.globl duinfo_add
	.type duinfo_add, @function
duinfo_add:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	cmp	rax, rcx
	mov	rax, -1
	cmovbe	rax, rcx
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 8]
	add	qword ptr [rbx + 8], rax
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rcx, qword ptr [r14 + 0x18]
	call	timespec_cmp
	test	eax, eax
	jns	.label_120
	add	rbx, 0x10
	add	r14, 0x10
	movups	xmm0, xmmword ptr [r14]
	movups	xmmword ptr [rbx], xmm0
.label_120:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e10

	.globl fill_mount_table
	.type fill_mount_table, @function
fill_mount_table:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x90
	xor	edi, edi
	call	read_file_system_list
	mov	rbx, rax
	test	rbx, rbx
	je	.label_122
	lea	r14, [rsp]
	nop	
.label_123:
	test	byte ptr [rbx + 0x28], 3
	jne	.label_121
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	stat
	test	eax, eax
	jne	.label_121
	mov	rdi,  qword ptr [word ptr [rip + di_mnt]]
	mov	rdx, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 8]
	call	hash_ins
	nop	dword ptr [rax + rax]
.label_121:
	mov	r15, qword ptr [rbx + 0x30]
	mov	rdi, rbx
	call	free_mount_entry
	test	r15, r15
	mov	rbx, r15
	jne	.label_123
.label_122:
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e90

	.globl print_only_size
	.type print_only_size, @function
print_only_size:
	sub	rsp, 0x298
	cmp	rdi, -1
	je	.label_124
	mov	edx,  dword ptr [dword ptr [rip + human_output_opts]]
	mov	r8,  qword ptr [word ptr [rip + output_block_size]]
	lea	rsi, [rsp]
	mov	ecx, 1
	call	human_readable
	jmp	.label_125
.label_124:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.113
	mov	edx, 5
	call	dcgettext
.label_125:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	add	rsp, 0x298
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ef0

	.globl show_date
	.type show_date, @function
show_date:
	push	r14
	push	rbx
	sub	rsp, 0x68
	mov	rbx, rcx
	mov	r14, rdi
	mov	qword ptr [rsp + 0x58], rsi
	mov	qword ptr [rsp + 0x60], rdx
	lea	rsi, [rsp + 0x58]
	lea	rdx, [rsp + 0x20]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_126
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	r8d, dword ptr [rsp + 0x60]
	lea	rdx, [rsp + 0x20]
	mov	rsi, r14
	mov	rcx, rbx
	call	fprintftime
	jmp	.label_127
.label_126:
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rsp]
	call	timetostr
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	call	fputs_unlocked
.label_127:
	add	rsp, 0x68
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fa0

	.globl timetostr
	.type timetostr, @function
timetostr:
	jmp	imaxtostr
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fb0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fc0

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
	je	.label_129
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_128:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_133
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_131
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_132
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_134
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_133
.label_134:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_133
.label_132:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_133:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_128
	jmp	.label_130
.label_129:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_130:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_131:
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
	.align	32
	#Procedure 0x4040c0

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
	je	.label_135
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_136
.label_135:
	mov	esi, OFFSET FLAT:.str_4
.label_136:
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
	.align	32
	#Procedure 0x404130

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_138
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_140:
	test	rbp, rbp
	je	.label_137
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_139
.label_137:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_141
	nop	word ptr cs:[rax + rax]
.label_139:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_141:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_140
.label_138:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x404230

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_142
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_142:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042a0
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
	je	.label_143
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_144:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_143
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_144
.label_143:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404310

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_145
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rcx, rax
.label_145:
	mov	rax, rcx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404340

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_146
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x18], xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_146:
	mov	rax, rcx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404370

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_147
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	call	getdelim
	test	rax, rax
	js	.label_149
	mov	dword ptr [r14], 1
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_148
.label_147:
	mov	rax, qword ptr [rbx + 0x28]
	cmp	qword ptr [rax], 0
	je	.label_150
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rax, qword ptr [rax]
	jmp	.label_148
.label_149:
	mov	rdi, qword ptr [rbx]
	call	feof
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	eax, [rax + rax + 2]
	mov	dword ptr [r14], eax
	xor	eax, eax
	jmp	.label_148
.label_150:
	mov	dword ptr [r14], 2
	xor	eax, eax
.label_148:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	cmp	qword ptr [rdi], 0
	je	.label_151
	mov	rax, qword ptr [rdi + 8]
	ret	
.label_151:
	mov	rax, qword ptr [rdi + 0x28]
	sub	rax, qword ptr [rdi + 0x20]
	sar	rax, 3
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404420

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	je	.label_152
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_152:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404440
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404450
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404460

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_155
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_153
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_153
.label_155:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_156
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_5
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_154
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_156:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_154:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404520

	.globl di_set_alloc
	.type di_set_alloc, @function
di_set_alloc:
	push	rbx
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_157
	mov	edi, 0xb
	xor	esi, esi
	mov	edx, OFFSET FLAT:di_ent_hash
	mov	ecx, OFFSET FLAT:di_ent_compare
	mov	r8d, OFFSET FLAT:di_ent_free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_158
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 8], xmm0
	jmp	.label_157
.label_158:
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_157:
	mov	rax, rbx
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404570

	.globl di_ent_hash
	.type di_ent_hash, @function
di_ent_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404580

	.globl di_ent_compare
	.type di_ent_compare, @function
di_ent_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404590

	.globl di_ent_free
	.type di_ent_free, @function
di_ent_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	call	hash_free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045b0

	.globl di_set_free
	.type di_set_free, @function
di_set_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0

	.globl di_set_insert
	.type di_set_insert, @function
di_set_insert:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rdi
	call	map_device
	mov	r15, rax
	test	r15, r15
	je	.label_159
	mov	rdi, rbx
	mov	rsi, r14
	call	map_inode_number
	cmp	rax, -1
	je	.label_159
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rax
	pop	rbx
	pop	r14
	pop	r15
	jmp	hash_insert_if_absent
.label_159:
	mov	eax, 0xffffffff
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404630

	.globl map_device
	.type map_device, @function
map_device:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x10]
	test	rbx, rbx
	je	.label_163
	cmp	qword ptr [rbx], r15
	jne	.label_161
	jmp	.label_162
.label_163:
	mov	edi, 0x10
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	xor	eax, eax
	test	rbx, rbx
	je	.label_164
.label_161:
	mov	qword ptr [rbx], r15
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	hash_insert
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_164
	cmp	rcx, rbx
	je	.label_165
	mov	rax, qword ptr [rcx + 8]
	jmp	.label_160
.label_165:
	mov	qword ptr [r14 + 0x10], 0
	mov	edi, 0x3fd
	xor	esi, esi
	mov	edx, OFFSET FLAT:di_ino_hash
	xor	ecx, ecx
	xor	r8d, r8d
	call	hash_initialize
.label_160:
	mov	qword ptr [rbx + 8], rax
.label_162:
	mov	rax, qword ptr [rbx + 8]
.label_164:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046c0

	.globl map_inode_number
	.type map_inode_number, @function
map_inode_number:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	movabs	rdi, 0x7ffffffffffffffe
	lea	rax, [rbx - 1]
	cmp	rax, rdi
	jae	.label_166
	mov	rax, rbx
.label_167:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_166:
	cmp	qword ptr [r14 + 8], 0
	jne	.label_168
	inc	rdi
	call	ino_map_alloc
	mov	rcx, rax
	mov	qword ptr [r14 + 8], rcx
	mov	rax, -1
	test	rcx, rcx
	je	.label_167
.label_168:
	mov	rdi, qword ptr [r14 + 8]
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	ino_map_insert
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404720

	.globl di_set_lookup
	.type di_set_lookup, @function
di_set_lookup:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbp, rdi
	call	map_device
	mov	rbx, rax
	mov	r15d, 0xffffffff
	test	rbx, rbx
	je	.label_169
	mov	rdi, rbp
	mov	rsi, r14
	call	map_inode_number
	cmp	rax, -1
	je	.label_169
	mov	rdi, rbx
	mov	rsi, rax
	call	hash_lookup
	test	rax, rax
	setne	al
	movzx	r15d, al
.label_169:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404780

	.globl di_ino_hash
	.type di_ino_hash, @function
di_ino_hash:
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404790

	.globl exclude_add_pattern_buffer
	.type exclude_add_pattern_buffer, @function
exclude_add_pattern_buffer:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x10
	call	xmalloc
	mov	qword ptr [rax + 8], r14
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 8], rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047c0

	.globl fnmatch_pattern_has_wildcards
	.type fnmatch_pattern_has_wildcards, @function
fnmatch_pattern_has_wildcards:
	mov	eax, esi
	and	eax, 0x8000000
	mov	r8d, esi
	and	r8d, 2
	and	esi, 0x20
	jmp	.label_170
.label_173:
	movzx	ecx, dl
	add	rdi, rcx
	nop	dword ptr [rax]
.label_170:
	movsx	edx, byte ptr [rdi]
	inc	rdi
	cmp	edx, 0x3e
	jg	.label_177
	cmp	edx, 0x29
	jg	.label_179
	lea	ecx, [rdx - 0x28]
	cmp	ecx, 2
	jb	.label_175
	cmp	edx, 0x21
	je	.label_180
	test	edx, edx
	jne	.label_170
	jmp	.label_171
	nop	word ptr cs:[rax + rax]
.label_177:
	cmp	edx, 0x5b
	jg	.label_174
	cmp	edx, 0x40
	je	.label_180
	cmp	edx, 0x3f
	je	.label_176
	cmp	edx, 0x5b
	jne	.label_170
	jmp	.label_176
	nop	word ptr [rax + rax]
.label_179:
	cmp	edx, 0x2b
	je	.label_180
	cmp	edx, 0x2e
	je	.label_175
	cmp	edx, 0x2a
	jne	.label_170
	jmp	.label_176
	nop	word ptr cs:[rax + rax]
.label_174:
	cmp	edx, 0x5c
	je	.label_178
	cmp	edx, 0x7d
	je	.label_175
	cmp	edx, 0x7b
	jne	.label_170
	nop	
.label_175:
	test	eax, eax
	je	.label_170
	jmp	.label_176
.label_180:
	test	esi, esi
	je	.label_170
	movzx	ecx, byte ptr [rdi]
	cmp	ecx, 0x28
	jne	.label_170
	jmp	.label_176
.label_178:
	test	eax, eax
	jne	.label_170
	test	r8d, r8d
	jne	.label_172
	cmp	byte ptr [rdi], 0
	setne	dl
	jmp	.label_173
.label_172:
	xor	edx, edx
	jmp	.label_173
.label_176:
	mov	al, 1
	ret	
.label_171:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048b0

	.globl new_exclude
	.type new_exclude, @function
new_exclude:
	mov	edi, 0x10
	jmp	xzalloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048c0
	.globl free_exclude
	.type free_exclude, @function
free_exclude:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_181
.label_183:
	mov	rbx, qword ptr [rdi]
	call	free_exclude_segment
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_183
.label_181:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_184
	nop	dword ptr [rax]
.label_182:
	mov	r15, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, rbx
	call	free
	test	r15, r15
	mov	rbx, r15
	jne	.label_182
.label_184:
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404920

	.globl free_exclude_segment
	.type free_exclude_segment, @function
free_exclude_segment:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 8]
	test	eax, eax
	je	.label_185
	cmp	eax, 1
	jne	.label_186
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_188
	xor	r15d, r15d
	mov	ebx, 8
	nop	word ptr cs:[rax + rax]
.label_189:
	mov	rdi, qword ptr [r14 + 0x10]
	test	byte ptr [rdi + rbx - 5], 8
	je	.label_187
	add	rdi, rbx
	call	rpl_regfree
.label_187:
	inc	r15
	add	rbx, 0x48
	cmp	r15, qword ptr [r14 + 0x20]
	jb	.label_189
.label_188:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	jmp	.label_186
.label_185:
	mov	rdi, qword ptr [r14 + 0x10]
	call	hash_free
.label_186:
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049a0

	.globl exclude_fnmatch
	.type exclude_fnmatch, @function
exclude_fnmatch:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, edx
	mov	rbx, rsi
	mov	r14, rdi
	mov	eax, OFFSET FLAT:fnmatch
	mov	ebp, OFFSET FLAT:fnmatch_no_wildcards
	test	r15d, 0x10000000
	cmovne	rbp, rax
	call	rbp
	mov	ecx, eax
	test	ecx, ecx
	sete	al
	test	r15d, 0x40000000
	jne	.label_190
	mov	dl, byte ptr [rbx]
	test	ecx, ecx
	setne	cl
	test	dl, dl
	je	.label_190
	test	cl, cl
	je	.label_190
	inc	rbx
	nop	dword ptr [rax]
.label_192:
	movzx	ecx, dl
	cmp	ecx, 0x2f
	jne	.label_191
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2f
	je	.label_191
	mov	rdi, r14
	mov	rsi, rbx
	mov	edx, r15d
	call	rbp
	test	eax, eax
	sete	al
.label_191:
	test	al, 1
	jne	.label_190
	mov	dl, byte ptr [rbx]
	inc	rbx
	test	dl, dl
	jne	.label_192
.label_190:
	and	al, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a30

	.globl fnmatch_no_wildcards
	.type fnmatch_no_wildcards, @function
fnmatch_no_wildcards:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	eax, edx
	and	eax, 0x10
	test	dl, 8
	jne	.label_199
	mov	rdi, r15
	mov	rsi, r14
	add	rsp, 8
	test	eax, eax
	je	.label_195
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	mbscasecmp
.label_199:
	test	eax, eax
	je	.label_193
	mov	rdi, r14
	call	xstrdup
	mov	r14, rax
	mov	esi, 0x2f
	mov	rdi, r14
	jmp	.label_197
	nop	dword ptr [rax]
.label_196:
	mov	byte ptr [rbx], 0x2f
	inc	rbx
	mov	esi, 0x2f
	mov	rdi, rbx
.label_197:
	call	strchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_200
	mov	byte ptr [rbx], 0
	mov	rdi, r15
	mov	rsi, r14
	call	mbscasecmp
	mov	ebp, eax
	test	ebp, ebp
	jg	.label_196
	jmp	.label_198
.label_195:
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcmp
.label_193:
	mov	rdi, r15
	call	strlen
	mov	rbx, rax
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	strncmp
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_194
	movsx	eax, byte ptr [r14 + rbx]
	xor	ebp, ebp
	cmp	eax, 0x2f
	cmovne	ebp, eax
	jmp	.label_194
.label_200:
	mov	rdi, r15
	mov	rsi, r14
	call	mbscasecmp
	mov	ebp, eax
.label_198:
	mov	rdi, r14
	call	free
.label_194:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b10

	.globl excluded_file_name
	.type excluded_file_name, @function
excluded_file_name:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rax, qword ptr [rdi]
	xor	r15d, r15d
	test	rax, rax
	je	.label_205
	nop	word ptr cs:[rax + rax]
.label_204:
	mov	rbx, rax
	cmp	dword ptr [rbx + 8], 0
	je	.label_202
	mov	rdi, rbx
	mov	rsi, r14
	call	file_pattern_matches
	jmp	.label_203
	nop	word ptr cs:[rax + rax]
.label_202:
	test	r15, r15
	jne	.label_201
	mov	rdi, r14
	call	strlen
	lea	rdi, [rax + 1]
	call	xmalloc
	mov	r15, rax
.label_201:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	file_name_matches
.label_203:
	xor	ebp, ebp
	test	al, al
	jne	.label_206
	mov	rax, qword ptr [rbx]
	mov	ebp, 1
	test	rax, rax
	jne	.label_204
.label_206:
	mov	rdi, r15
	call	free
	mov	eax, dword ptr [rbx + 0xc]
	shr	eax, 0x1d
	not	eax
	and	eax, 1
	cmp	ebp, eax
	setne	r15b
.label_205:
	mov	al, r15b
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0

	.globl file_name_matches
	.type file_name_matches, @function
file_name_matches:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r15, rsi
	mov	r12d, dword ptr [rdi + 0xc]
	mov	r14, qword ptr [rdi + 0x10]
	mov	r13d, r12d
	and	r13d, 8
	and	r12d, 0x40000000
.label_209:
	mov	rdi, rbx
	mov	rsi, r15
	call	strcpy
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_lookup
	mov	bpl, 1
	test	rax, rax
	jne	.label_210
	test	r13d, r13d
	je	.label_208
	nop	word ptr [rax + rax]
.label_211:
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	je	.label_208
	mov	byte ptr [rax], 0
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_lookup
	test	rax, rax
	je	.label_211
	jmp	.label_210
	nop	word ptr [rax + rax]
.label_208:
	test	r12d, r12d
	jne	.label_207
	mov	esi, 0x2f
	mov	rdi, r15
	call	strchr
	test	rax, rax
	lea	r15, [rax + 1]
	jne	.label_209
.label_207:
	xor	ebp, ebp
.label_210:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404c70

	.globl file_pattern_matches
	.type file_pattern_matches, @function
file_pattern_matches:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, qword ptr [rdi + 0x20]
	xor	r12d, r12d
	test	r15, r15
	mov	eax, 0
	je	.label_212
	mov	rbx, qword ptr [rdi + 0x10]
.label_213:
	mov	rdi, rbx
	mov	rsi, r14
	call	exclude_patopts
	mov	cl, al
	mov	al, 1
	test	cl, cl
	jne	.label_212
	inc	r12
	add	rbx, 0x48
	cmp	r12, r15
	jb	.label_213
	xor	eax, eax
.label_212:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0

	.globl add_exclude
	.type add_exclude, @function
add_exclude:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	rbx, rdi
	test	ebp, 0x18000000
	je	.label_214
	mov	rdi, r14
	mov	esi, ebp
	call	fnmatch_pattern_has_wildcards
	test	al, al
	je	.label_214
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_226
	cmp	dword ptr [rax + 8], 1
	jne	.label_226
	mov	eax, dword ptr [rax + 0xc]
	xor	eax, ebp
	test	eax, 0x20000000
	je	.label_227
.label_226:
	mov	esi, 1
	mov	rdi, rbx
	mov	edx, ebp
	call	new_exclude_segment
.label_227:
	mov	r12, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 0x20]
	cmp	rax, qword ptr [r12 + 0x18]
	jne	.label_223
	lea	rsi, [r12 + 0x18]
	mov	rdi, qword ptr [r12 + 0x10]
	mov	edx, 0x48
	call	x2nrealloc
	mov	qword ptr [r12 + 0x10], rax
.label_223:
	mov	rax, qword ptr [r12 + 0x20]
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x20], rcx
	mov	r13, qword ptr [r12 + 0x10]
	lea	r15, [rax + rax*8]
	mov	dword ptr [r13 + r15*8], ebp
	test	ebp, 0x8000000
	jne	.label_216
	test	ebp, 0x4000000
	je	.label_225
	mov	rdi, r14
	call	xstrdup
	mov	r14, rax
	mov	rdi, rbx
	mov	rsi, r14
	call	exclude_add_pattern_buffer
.label_225:
	mov	qword ptr [r13 + r15*8 + 8], r14
	jmp	.label_220
.label_214:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_221
	cmp	dword ptr [rax + 8], 0
	jne	.label_221
	mov	eax, dword ptr [rax + 0xc]
	xor	eax, ebp
	test	eax, 0x60000018
	je	.label_224
.label_221:
	xor	esi, esi
	mov	rdi, rbx
	mov	edx, ebp
	call	new_exclude_segment
.label_224:
	mov	r15, qword ptr [rbx]
	mov	rdi, r14
	call	xstrdup
	mov	rbx, rax
	and	ebp, 0x10000002
	cmp	ebp, 0x10000000
	jne	.label_217
	mov	rdi, rbx
	call	unescape_pattern
.label_217:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	call	hash_insert
	cmp	rax, rbx
	je	.label_220
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_216:
	mov	ebx, ebp
	shr	ebx, 3
	and	ebx, 2
	or	ebx, 9
	test	bpl, 8
	jne	.label_219
	lea	rdi, [r13 + r15*8 + 8]
	mov	rsi, r14
	mov	edx, ebx
	call	rpl_regcomp
	mov	ebx, eax
	jmp	.label_215
.label_219:
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	add	rbp, 8
	nop	word ptr [rax + rax]
.label_218:
	cmp	rbp, 8
	je	.label_222
	movzx	eax, byte ptr [r14 + rbp - 9]
	dec	rbp
	cmp	eax, 0x2f
	je	.label_218
	mov	rdi, rbp
	call	xmalloc
	mov	qword ptr [rsp], rax
	lea	rdx, [rbp - 7]
	mov	rdi, rax
	mov	rsi, r14
	call	memcpy
	mov	rsi, qword ptr [rsp]
	mov	byte ptr [rsi + rbp - 1], 0
	mov	word ptr [rsi + rbp - 3], 0x3f29
	mov	dword ptr [rsi + rbp - 7], 0x2a2e2f28
	lea	rdi, [r13 + r15*8 + 8]
	mov	rbp, rsi
	mov	edx, ebx
	call	rpl_regcomp
	mov	ebx, eax
	mov	rdi, rbp
	call	free
.label_215:
	test	ebx, ebx
	je	.label_220
.label_222:
	dec	qword ptr [r12 + 0x20]
.label_220:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ec0

	.globl new_exclude_segment
	.type new_exclude_segment, @function
new_exclude_segment:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, edx
	mov	ebp, esi
	mov	r14, rdi
	mov	edi, 0x28
	call	xzalloc
	mov	rbx, rax
	mov	dword ptr [rbx + 8], ebp
	mov	dword ptr [rbx + 0xc], r15d
	test	ebp, ebp
	jne	.label_228
	and	r15d, 0x10
	shr	r15d, 4
	mov	eax, OFFSET FLAT:string_hasher_ci
	mov	edx, OFFSET FLAT:string_hasher
	cmovne	rdx, rax
	mov	eax, OFFSET FLAT:string_compare_ci
	mov	ecx, OFFSET FLAT:string_compare
	cmovne	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r8d, OFFSET FLAT:string_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x10], rax
.label_228:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rbx], rax
	mov	qword ptr [r14], rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f40

	.globl unescape_pattern
	.type unescape_pattern, @function
unescape_pattern:
	mov	rax, rdi
	nop	word ptr cs:[rax + rax]
.label_230:
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	jne	.label_229
	cmp	byte ptr [rax + 1], 0
	setne	cl
	jmp	.label_231
	nop	word ptr cs:[rax + rax]
.label_229:
	xor	ecx, ecx
.label_231:
	movzx	ecx, cl
	mov	dl, byte ptr [rax + rcx]
	lea	rax, [rax + rcx + 1]
	mov	byte ptr [rdi], dl
	inc	rdi
	test	dl, dl
	jne	.label_230
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f90

	.globl add_exclude_fp
	.type add_exclude_fp, @function
add_exclude_fp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x28], r9
	mov	r15d, r8d
	mov	dword ptr [rsp + 0x24], ecx
	mov	rbp, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x30], 0
	mov	rdi, rbp
	call	getc_unlocked
	mov	ebx, eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	cmp	ebx, -1
	je	.label_233
	mov	dword ptr [rsp + 0xc], r15d
	lea	r15, [rsp + 0x30]
	xor	r12d, r12d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_237:
	cmp	r13, qword ptr [rsp + 0x30]
	jne	.label_243
	mov	rdi, r12
	mov	rsi, r15
	call	x2realloc
	mov	r12, rax
.label_243:
	mov	byte ptr [r12 + r13], bl
	inc	r13
	mov	rdi, rbp
	call	getc_unlocked
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_237
	jmp	.label_236
.label_233:
	mov	dword ptr [rsp + 0xc], r15d
	xor	r12d, r12d
	xor	r13d, r13d
.label_236:
	mov	rdi, rbp
	call	ferror_unlocked
	test	eax, eax
	mov	r15d, dword ptr [rsp + 0xc]
	je	.label_239
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	qword ptr [rsp + 0x10], rax
.label_239:
	lea	rsi, [r13 + 1]
	mov	rdi, r12
	call	xrealloc
	mov	rbp, rax
	lea	rbx, [rbp + r13]
	mov	byte ptr [rbp + r13], r15b
	test	r13, r13
	je	.label_235
	movzx	eax, byte ptr [r13 + rbp - 1]
	movzx	ecx, r15b
	cmp	eax, ecx
	setne	al
	jmp	.label_241
.label_235:
	xor	eax, eax
.label_241:
	movzx	r12d, al
	add	rbx, r12
	mov	rdi, r14
	mov	rsi, rbp
	call	exclude_add_pattern_buffer
	cmp	rbp, rbx
	jae	.label_234
	movzx	r15d, r15b
	add	r13, r12
	mov	r12, rbp
	add	r12, r13
	mov	rbx, rbp
	nop	dword ptr [rax]
.label_244:
	movzx	eax, byte ptr [rbp]
	cmp	eax, r15d
	jne	.label_238
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + r15*2 + 1], 0x20
	mov	rcx, rbp
	je	.label_242
	nop	dword ptr [rax]
.label_240:
	cmp	rbx, rcx
	je	.label_232
	movzx	edx, byte ptr [rcx - 1]
	dec	rcx
	mov	rsi, qword ptr [rax]
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	jne	.label_240
	inc	rcx
.label_242:
	mov	byte ptr [rcx], 0
	mov	rdi, r14
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x24]
	mov	rcx, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x18]
.label_232:
	lea	rbx, [rbp + 1]
.label_238:
	inc	rbp
	cmp	rbp, r12
	jne	.label_244
.label_234:
	call	__errno_location
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	neg	ecx
	sbb	eax, eax
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405120

	.globl add_exclude_file
	.type add_exclude_file, @function
add_exclude_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, r8d
	mov	r14d, ecx
	mov	r15, rsi
	mov	qword ptr [rsp], rdi
	movzx	eax, byte ptr [rdx]
	cmp	eax, 0x2d
	jne	.label_245
	cmp	byte ptr [rdx + 1], 0
	je	.label_247
.label_245:
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rdi, rdx
	call	fopen
	mov	rbx, rax
	mov	eax, 0xffffffff
	test	rbx, rbx
	je	.label_246
	movsx	r8d, bpl
	lea	r9, [rsp]
	mov	edi, OFFSET FLAT:call_addfn
	mov	rsi, r15
	mov	rdx, rbx
	mov	ecx, r14d
	call	add_exclude_fp
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	cmp	eax, 1
	sbb	eax, eax
	not	eax
	or	ebp, eax
	mov	eax, ebp
	jmp	.label_246
.label_247:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	movsx	r8d, bpl
	lea	r9, [rsp]
	mov	edi, OFFSET FLAT:call_addfn
	mov	rsi, r15
	mov	ecx, r14d
	call	add_exclude_fp
.label_246:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051c0

	.globl call_addfn
	.type call_addfn, @function
call_addfn:
	mov	rax, qword ptr [rcx]
	jmp	rax
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0

	.globl exclude_patopts
	.type exclude_patopts, @function
exclude_patopts:
	push	rax
	mov	edx, dword ptr [rdi]
	add	rdi, 8
	test	edx, 0x8000000
	jne	.label_248
	mov	rdi, qword ptr [rdi]
	call	exclude_fnmatch
	pop	rcx
	ret	
.label_248:
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	call	rpl_regexec
	test	eax, eax
	sete	al
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405200

	.globl string_hasher_ci
	.type string_hasher_ci, @function
string_hasher_ci:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	mov	al, byte ptr [rsp + 0x20]
	mov	edi, dword ptr [rsp + 0x24]
	xor	ebx, ebx
	test	al, al
	je	.label_250
	test	edi, edi
	je	.label_253
.label_250:
	xor	ebx, ebx
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_249:
	test	al, al
	je	.label_251
	call	towlower
	jmp	.label_252
	nop	dword ptr [rax + rax]
.label_251:
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax]
.label_252:
	mov	rcx, rbx
	shl	rcx, 5
	sub	rcx, rbx
	cdqe	
	add	rax, rcx
	xor	edx, edx
	div	r14
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x10], rax
	mov	byte ptr [rsp + 0xc], 0
	mov	rbx, rdx
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	al, byte ptr [rsp + 0x20]
	mov	edi, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_249
	test	edi, edi
	jne	.label_249
.label_253:
	mov	rax, rbx
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052c0

	.globl string_hasher
	.type string_hasher, @function
string_hasher:
	jmp	hash_string
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052d0

	.globl string_compare_ci
	.type string_compare_ci, @function
string_compare_ci:
	push	rax
	call	mbscasecmp
	test	eax, eax
	sete	al
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052e0

	.globl string_compare
	.type string_compare, @function
string_compare:
	push	rax
	call	strcmp
	test	eax, eax
	sete	al
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0

	.globl string_free
	.type string_free, @function
string_free:
	jmp	free
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405300

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], r8d
	mov	qword ptr [rsp], rcx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9d, 0xffffffff
	call	__strftime_internal
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	r15d, r9d
	mov	dword ptr [rsp + 0x3c], r8d
	mov	dword ptr [rsp + 0x5c], ecx
	mov	qword ptr [rsp + 0x40], rdx
	mov	r14, rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0x78], r13
	mov	eax, dword ptr [rdx + 8]
	mov	rcx, qword ptr [rdx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x2c], edx
	cmp	byte ptr [r14], 0
	mov	r11d, 0
	je	.label_366
	movabs	rbp, 0x1000000000002500
	xor	r11d, r11d
	jmp	.label_274
.label_413:
	mov	r10d, 3
	jmp	.label_408
	nop	word ptr cs:[rax + rax]
.label_274:
	movzx	eax, byte ptr [r14]
	xor	r12d, r12d
	cmp	eax, 0x25
	jne	.label_409
	mov	eax, dword ptr [rsp + 0x5c]
	mov	r9b, al
	xor	r13d, r13d
	mov	r9b, al
	jmp	.label_259
	nop	dword ptr [rax + rax]
.label_416:
	movsx	r13d, byte ptr [r14]
.label_259:
	inc	r14
	movsx	ecx, byte ptr [r14]
	lea	edx, [rcx - 0x23]
	cmp	edx, 0x3c
	ja	.label_255
	bt	rbp, rdx
	jb	.label_416
	mov	al, 1
	test	rdx, rdx
	je	.label_418
	cmp	rdx, 0x3b
	jne	.label_255
	mov	r9b, al
	jmp	.label_259
.label_418:
	mov	r12b, 1
	mov	al, r9b
	jmp	.label_259
	nop	dword ptr [rax + rax]
.label_409:
	test	r15d, r15d
	mov	eax, r15d
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	cmovbe	rbx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rbx, rcx
	jae	.label_263
	test	r13, r13
	je	.label_273
	mov	r12, r11
	cmp	eax, 2
	setb	al
	cmp	r15d, 1
	je	.label_275
	test	al, al
	jne	.label_275
	movsxd	rbp, r15d
	dec	rbp
	nop	word ptr [rax + rax]
.label_286:
	mov	edi, 0x20
	mov	rsi, r13
	call	fputc
	dec	rbp
	jne	.label_286
.label_275:
	movsx	edi, byte ptr [r14]
	mov	rsi, r13
	call	fputc
	mov	r11, r12
	movabs	rbp, 0x1000000000002500
.label_273:
	add	r11, rbx
	jmp	.label_290
	nop	word ptr cs:[rax + rax]
.label_255:
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 9
	ja	.label_264
	nop	word ptr [rax + rax]
.label_303:
	mov	r15d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_297
	jne	.label_301
	movsx	ecx, byte ptr [r14]
	add	ecx, -0x30
	cmp	ecx, 7
	jg	.label_297
.label_301:
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [r14]
	lea	r15d, [rcx + rax*2 - 0x30]
.label_297:
	movsx	eax, byte ptr [r14 + 1]
	inc	r14
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r15d
	jb	.label_303
.label_264:
	mov	ecx, r15d
	movsx	eax, byte ptr [r14]
	cmp	eax, 0x4f
	je	.label_307
	xor	r8d, r8d
	cmp	eax, 0x45
	jne	.label_310
.label_307:
	movsx	r8d, byte ptr [r14]
	inc	r14
.label_310:
	mov	qword ptr [rsp + 0x60], rcx
	mov	bl, byte ptr [r14]
	movsx	eax, bl
	xor	r10d, r10d
	mov	edx, 1
	lea	edi, [rax - 0x25]
	cmp	edi, 0x55
	ja	.label_314
	mov	eax, OFFSET FLAT:.str.3_1
	mov	qword ptr [rsp + 0x48], rax
	mov	byte ptr [rsp + 0x50], bl
	mov	qword ptr [rsp + 0x70], r11
	mov	al, 0x72
	mov	ebx, 0xffffffff
	xor	ecx, ecx
	xor	esi, esi
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_318]]
.label_2733:
	cmp	r8d, 0x45
	je	.label_282
	mov	dword ptr [rsp + 0x60], r8d
	mov	qword ptr [rsp + 0x68], r9
	mov	rdx, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rdx + 0x14]
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	sar	ecx, 0x1f
	and	ecx, 0x190
	lea	ebp, [rax + rcx - 0x64]
	mov	r12d, dword ptr [rdx + 0x1c]
	mov	edi, r12d
	call	iso_week_days
	mov	ebx, eax
	test	ebx, ebx
	js	.label_334
	mov	eax, 0x16d
	test	bpl, 3
	jne	.label_336
	movsxd	rax, ebp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	cmp	ebp, eax
	sete	al
	movzx	edx, al
	add	edx, 0x16d
	cmp	ebp, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_336:
	sub	r12d, eax
	mov	rax, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rax + 0x18]
	mov	edi, r12d
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	ebx, eax
	jmp	.label_348
	nop	
.label_355:
	inc	rdx
.label_2727:
	movzx	eax, byte ptr [r14 + rdx]
	cmp	eax, 0x3a
	je	.label_355
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_282
	add	r14, rdx
	mov	r10, rdx
.label_2764:
	mov	rax, qword ptr [rsp + 0x40]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_357
	mov	edx, dword ptr [rax + 0x28]
	mov	sil, 1
	test	edx, edx
	js	.label_360
	mov	rdi, rax
	test	edx, edx
	je	.label_361
	xor	esi, esi
	jmp	.label_353
.label_2747:
	test	r12b, r12b
	mov	al, byte ptr [rsp + 0x50]
	je	.label_365
	mov	r9b, 1
.label_365:
	xor	ecx, ecx
	cmp	r8d, 0x45
	jne	.label_343
	jmp	.label_282
.label_314:
	test	eax, eax
	jne	.label_370
	mov	qword ptr [rsp + 0x70], r11
	dec	r14
	jmp	.label_282
.label_2726:
	test	r8d, r8d
	jne	.label_282
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	r11, qword ptr [rsp + 0x70]
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_263
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_291
	mov	qword ptr [rsp + 0x68], rdx
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x78]
	jb	.label_272
	movsxd	rbp, r15d
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	je	.label_331
	cmp	r13d, 0x2b
	jne	.label_385
.label_331:
	test	rbx, rbx
	je	.label_272
	dec	rbp
.label_369:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_369
	jmp	.label_272
.label_2728:
	test	r8d, r8d
	jne	.label_282
	test	r12b, r12b
	je	.label_391
	mov	r9b, 1
.label_391:
	xor	ecx, ecx
	mov	al, 0x41
	jmp	.label_343
.label_2729:
	cmp	r8d, 0x45
	je	.label_282
	test	r12b, r12b
	je	.label_395
	mov	r9b, 1
.label_395:
	xor	ecx, ecx
	mov	al, 0x42
	jmp	.label_343
.label_2730:
	cmp	r8d, 0x45
	jne	.label_396
	xor	ecx, ecx
	mov	al, 0x43
	jmp	.label_343
.label_2731:
	test	r8d, r8d
	jne	.label_282
	mov	eax, OFFSET FLAT:.str.1_3
	jmp	.label_384
.label_2732:
	test	r8d, r8d
	jne	.label_282
	test	r13d, r13d
	jne	.label_398
	test	r15d, r15d
	jns	.label_398
	mov	eax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rsp + 0x48], rax
	mov	r13d, 0x2b
	mov	ebx, 4
	jmp	.label_402
.label_2734:
	cmp	r8d, 0x45
	je	.label_282
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_284
.label_2735:
	cmp	r8d, 0x45
	je	.label_282
	mov	eax, dword ptr [rsp + 0x2c]
	jmp	.label_284
.label_2736:
	cmp	r8d, 0x45
	je	.label_282
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 4]
	jmp	.label_284
.label_2737:
	cmp	r8d, 0x45
	je	.label_282
	mov	r10d, 9
	cmp	r15d, -1
	je	.label_412
	mov	ecx, 9
	cmp	r15d, 8
	mov	eax, dword ptr [rsp + 0x4e8]
	jg	.label_257
	nop	
.label_298:
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	dec	ecx
	cmp	r15d, ecx
	jne	.label_298
	mov	r10d, r15d
	jmp	.label_270
.label_2738:
	mov	sil, 1
.label_2756:
	test	r12b, r12b
	je	.label_271
	mov	r9d, 0
.label_271:
	mov	r10d, 0
	je	.label_276
	mov	sil, 1
.label_276:
	mov	al, 0x70
	mov	cl, sil
	jmp	.label_279
.label_2739:
	cmp	r8d, 0x45
	je	.label_282
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax]
	jmp	.label_284
.label_2740:
	mov	eax, OFFSET FLAT:.str.4_1
.label_384:
	mov	qword ptr [rsp + 0x48], rax
.label_402:
	test	r9b, r9b
	mov	qword ptr [rsp + 0x68], r9
	setne	al
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	xor	ebp, ebp
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	r8d, r13d
	mov	r9d, ebx
	call	__strftime_internal
	test	r15d, r15d
	cmovns	ebp, r15d
	movsxd	rcx, ebp
	cmp	rax, rcx
	mov	rsi, rax
	cmovb	rsi, rcx
	mov	r11, qword ptr [rsp + 0x70]
	mov	rdx, r11
	not	rdx
	cmp	rsi, rdx
	jae	.label_263
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_304
	mov	qword ptr [rsp + 0x60], rsi
	cmp	rax, rcx
	mov	r12, qword ptr [rsp + 0x78]
	jae	.label_325
	movsxd	rcx, r15d
	mov	r15, rcx
	sub	r15, rax
	cmp	r13d, 0x30
	je	.label_311
	cmp	r13d, 0x2b
	jne	.label_377
.label_311:
	xor	ebp, ebp
	cmp	rcx, rax
	je	.label_325
	nop	word ptr cs:[rax + rax]
.label_323:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_323
	jmp	.label_325
.label_2741:
	cmp	r8d, 0x45
	je	.label_282
	mov	rcx, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	cdqe	
	jmp	.label_326
.label_2742:
	cmp	r8d, 0x45
	je	.label_282
	mov	rcx, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	add	ecx, 7
	sub	ecx, edx
	movsxd	rax, ecx
.label_326:
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	jmp	.label_284
.label_2743:
	cmp	r8d, 0x4f
	je	.label_282
	xor	ecx, ecx
	mov	al, 0x58
	jmp	.label_343
.label_2744:
	cmp	r8d, 0x45
	je	.label_400
	cmp	r8d, 0x4f
	je	.label_282
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0x14]
	cmp	eax, 0xfffff894
	setl	sil
	add	eax, 0x76c
	mov	r10d, 4
	jmp	.label_349
.label_2745:
	mov	qword ptr [rsp + 0x68], r9
	mov	rdi, qword ptr [rsp + 0x30]
	call	strlen
	xor	ecx, ecx
	test	r15d, r15d
	cmovns	ecx, r15d
	movsxd	rsi, ecx
	cmp	rax, rsi
	mov	rdx, rax
	cmovb	rdx, rsi
	mov	r11, qword ptr [rsp + 0x70]
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_263
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_291
	mov	qword ptr [rsp + 0x50], rdx
	cmp	rax, rsi
	mov	qword ptr [rsp + 0x60], rax
	mov	rbx, qword ptr [rsp + 0x78]
	jae	.label_302
	movsxd	rax, r15d
	mov	r15, rax
	mov	rcx, qword ptr [rsp + 0x60]
	sub	r15, rcx
	cmp	r13d, 0x30
	je	.label_372
	cmp	r13d, 0x2b
	jne	.label_375
.label_372:
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_302
	nop	word ptr [rax + rax]
.label_380:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_380
	jmp	.label_302
.label_2746:
	test	r8d, r8d
	jne	.label_282
	test	r12b, r12b
	je	.label_383
	mov	r9b, 1
.label_383:
	xor	ecx, ecx
	mov	al, 0x61
	jmp	.label_343
.label_2748:
	cmp	r8d, 0x4f
	je	.label_282
	xor	ecx, ecx
	mov	al, 0x63
	jmp	.label_343
.label_2749:
	cmp	r8d, 0x45
	je	.label_282
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_284
.label_2750:
	cmp	r8d, 0x45
	je	.label_282
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_390
.label_2751:
	cmp	r8d, 0x45
	je	.label_282
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0x1c]
	cmp	eax, -1
	setl	sil
	inc	eax
	mov	r10d, 3
	jmp	.label_387
.label_2752:
	cmp	r8d, 0x45
	je	.label_282
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_390
.label_2753:
	cmp	r8d, 0x45
	mov	eax, dword ptr [rsp + 0x2c]
	je	.label_282
.label_390:
	test	r13d, r13d
	mov	ecx, 0x5f
	cmove	r13d, ecx
	jmp	.label_284
.label_2754:
	cmp	r8d, 0x45
	je	.label_282
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0x10]
	cmp	eax, -1
	setl	sil
	inc	eax
	mov	r10d, 2
	jmp	.label_387
.label_2755:
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	r11, qword ptr [rsp + 0x70]
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_263
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_291
	mov	qword ptr [rsp + 0x68], rdx
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x78]
	jb	.label_254
	movsxd	rbp, r15d
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	je	.label_414
	cmp	r13d, 0x2b
	jne	.label_417
.label_414:
	test	rbx, rbx
	je	.label_254
	dec	rbp
	nop	
.label_261:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_261
	jmp	.label_254
.label_2757:
	mov	rax, qword ptr [rsp + 0x40]
	imul	eax, dword ptr [rax + 0x10], 0xb
	sar	eax, 5
	inc	eax
	mov	r10d, 1
	xor	edx, edx
	xor	ecx, ecx
	xor	esi, esi
	jmp	.label_265
.label_2758:
	mov	rbx, r9
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xb0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x4e0]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0x4a7]
	nop	word ptr cs:[rax + rax]
.label_294:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ecx
	sub	ebp, edi
	add	rdx, rax
	mov	eax, ebp
	neg	eax
	test	rsi, rsi
	cmove	eax, ebp
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_294
	mov	r10d, 1
	xor	ecx, ecx
	mov	r11, qword ptr [rsp + 0x70]
	mov	r9, rbx
	jmp	.label_308
.label_2759:
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	r11, qword ptr [rsp + 0x70]
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_263
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_291
	mov	qword ptr [rsp + 0x68], rdx
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x78]
	jb	.label_322
	movsxd	rbp, r15d
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	je	.label_346
	cmp	r13d, 0x2b
	jne	.label_328
.label_346:
	test	rbx, rbx
	je	.label_322
	dec	rbp
	nop	
.label_333:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_333
	jmp	.label_322
.label_2760:
	mov	rax, qword ptr [rsp + 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	lea	eax, [rcx + 6]
	cdqe	
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	lea	ecx, [rdx + rcx + 6]
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	inc	eax
	mov	r10d, 1
	jmp	.label_270
.label_2761:
	cmp	r8d, 0x45
	je	.label_282
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0x18]
	mov	r10d, 1
	jmp	.label_270
.label_2762:
	cmp	r8d, 0x4f
	je	.label_282
	xor	ecx, ecx
	mov	al, 0x78
	jmp	.label_343
.label_2763:
	cmp	r8d, 0x45
	jne	.label_351
	xor	ecx, ecx
	mov	al, 0x79
	jmp	.label_343
.label_370:
	mov	qword ptr [rsp + 0x70], r11
	jmp	.label_282
.label_334:
	dec	ebp
	mov	edi, 0x16d
	test	bpl, 3
	jne	.label_356
	movsxd	rax, ebp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	cmp	ebp, eax
	sete	al
	movzx	eax, al
	add	eax, 0x16d
	cmp	ebp, ecx
	mov	edi, 0x16e
	cmove	edi, eax
.label_356:
	add	edi, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ebx, eax
	mov	ecx, 0xffffffff
.label_348:
	movsx	eax, byte ptr [r14]
	cmp	eax, 0x47
	movabs	rbp, 0x1000000000002500
	mov	r9, qword ptr [rsp + 0x68]
	mov	r8d, dword ptr [rsp + 0x60]
	je	.label_373
	cmp	eax, 0x67
	jne	.label_376
	mov	rax, qword ptr [rsp + 0x40]
	movsxd	rdx, dword ptr [rax + 0x14]
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	mov	esi, edx
	sub	esi, eax
	add	esi, ecx
	movsxd	rax, esi
	imul	rsi, rax, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	sub	eax, esi
	mov	r10d, 2
	js	.label_403
	xor	esi, esi
	jmp	.label_349
.label_357:
	mov	r13, qword ptr [rsp + 0x78]
	mov	r11, qword ptr [rsp + 0x70]
	jmp	.label_290
.label_396:
	mov	rax, qword ptr [rsp + 0x40]
	movsxd	rcx, dword ptr [rax + 0x14]
	cmp	rcx, -0x76c
	setl	sil
	setg	dl
	imul	rax, rcx, 0x51eb851f
	mov	rdi, rax
	shr	rdi, 0x3f
	sar	rax, 0x25
	add	eax, edi
	imul	edi, eax, 0x64
	cmp	ecx, edi
	sets	cl
	and	cl, dl
	movzx	ecx, cl
	sub	eax, ecx
	add	eax, 0x13
	mov	r10d, 2
	jmp	.label_349
.label_351:
	mov	rax, qword ptr [rsp + 0x40]
	movsxd	rcx, dword ptr [rax + 0x14]
	imul	rax, rcx, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	edx, eax, 0x64
	mov	eax, ecx
	sub	eax, edx
	mov	r10d, 2
	js	.label_266
	xor	esi, esi
	jmp	.label_349
.label_373:
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	cmp	eax, edx
	setl	sil
	lea	eax, [rcx + rax + 0x76c]
	mov	r10d, 4
	jmp	.label_349
.label_376:
	movsxd	rax, ebx
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	lea	eax, [rcx + rax + 1]
.label_284:
	mov	r10d, 2
.label_270:
	mov	esi, eax
	shr	esi, 0x1f
.label_387:
	xor	edx, edx
	xor	ecx, ecx
.label_265:
	cmp	r8d, 0x4f
	jne	.label_399
	test	sil, sil
	jne	.label_399
	xor	ecx, ecx
	mov	al, byte ptr [rsp + 0x50]
	jmp	.label_279
.label_399:
	mov	ebx, eax
	neg	ebx
	test	sil, sil
	cmove	ebx, eax
	lea	r12, [rsp + 0x4a7]
	mov	r11, qword ptr [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_268:
	test	dl, 1
	je	.label_381
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_381:
	sar	edx, 1
	mov	ebp, ebx
	mov	eax, 0xcccccccd
	imul	rax, rbp
	shr	rax, 0x23
	lea	ebp, [rax + rax]
	lea	ebp, [rbp + rbp*4]
	mov	edi, ebx
	sub	edi, ebp
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	cmp	ebx, 9
	mov	ebx, eax
	ja	.label_268
	test	edx, edx
	mov	ebx, eax
	jne	.label_268
.label_308:
	cmp	r10d, r15d
	cmovl	r10d, r15d
	test	cl, cl
	je	.label_280
	mov	cl, 0x2b
.label_280:
	test	sil, sil
	mov	bl, 0x2d
	jne	.label_283
	mov	bl, cl
.label_283:
	cmp	r13d, 0x2d
	jne	.label_285
	test	bl, bl
	je	.label_388
	mov	qword ptr [rsp + 0x68], r9
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_263
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_295
	mov	qword ptr [rsp + 0x48], rdx
	mov	byte ptr [rsp + 0x50], bl
	mov	qword ptr [rsp + 0x70], r11
	cmp	eax, 2
	setb	al
	test	r10d, r10d
	mov	qword ptr [rsp + 0x60], r10
	mov	rbx, qword ptr [rsp + 0x78]
	jne	.label_299
	test	al, al
	jne	.label_299
	cmp	r15d, 1
	je	.label_299
	movsxd	rbp, r15d
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_309:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_309
.label_299:
	movzx	edi, byte ptr [rsp + 0x50]
	mov	rsi, rbx
	jmp	.label_313
.label_285:
	movsxd	rax, r10d
	mov	rcx, r12
	lea	rdx, [rsp + 0x4a7]
	sub	rcx, rdx
	mov	dl, bl
	neg	dl
	sbb	rsi, rsi
	add	rsi, rcx
	add	rsi, rax
	test	esi, esi
	jle	.label_316
	mov	qword ptr [rsp + 0x68], r9
	cmp	r13d, 0x5f
	jne	.label_405
	movsxd	rbp, esi
	mov	rax, r11
	not	rax
	cmp	rbp, rax
	jae	.label_263
	mov	dword ptr [rsp + 0x20], r15d
	mov	qword ptr [rsp + 0x48], rsi
	mov	byte ptr [rsp + 0x50], bl
	mov	qword ptr [rsp + 0x60], r10
	mov	qword ptr [rsp + 0x70], r11
	mov	r15, qword ptr [rsp + 0x78]
	test	r15, r15
	je	.label_327
	test	rbp, rbp
	mov	ebx, 0
	je	.label_327
	nop	word ptr cs:[rax + rax]
.label_338:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	inc	rbx
	cmp	rbx, rbp
	jb	.label_338
.label_327:
	mov	r11, qword ptr [rsp + 0x70]
	add	r11, rbp
	mov	rax, qword ptr [rsp + 0x48]
	mov	ecx, dword ptr [rsp + 0x20]
	sub	ecx, eax
	mov	edx, 0
	cmovg	edx, ecx
	mov	al, byte ptr [rsp + 0x50]
	test	al, al
	je	.label_341
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	esi, 1
	cmova	rsi, rcx
	mov	rcx, r11
	not	rcx
	cmp	rsi, rcx
	mov	r10, qword ptr [rsp + 0x60]
	jae	.label_263
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_352
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x70], r11
	cmp	eax, 2
	setb	al
	test	r10d, r10d
	mov	r15, qword ptr [rsp + 0x78]
	jne	.label_354
	test	al, al
	jne	.label_354
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rbx, eax
	dec	rbx
	cmp	r13d, 0x30
	je	.label_359
	cmp	r13d, 0x2b
	jne	.label_362
.label_359:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_354
	nop	word ptr cs:[rax + rax]
.label_371:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_371
	jmp	.label_354
.label_388:
	mov	qword ptr [rsp + 0x68], r9
	jmp	.label_258
.label_316:
	mov	qword ptr [rsp + 0x68], r9
	test	bl, bl
	je	.label_258
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_263
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_295
	mov	qword ptr [rsp + 0x48], rdx
	mov	byte ptr [rsp + 0x50], bl
	mov	qword ptr [rsp + 0x70], r11
	cmp	eax, 2
	setb	al
	test	r10d, r10d
	mov	qword ptr [rsp + 0x60], r10
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_288
	test	al, al
	jne	.label_288
	mov	rax, rsi
	movsxd	rbp, r15d
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	je	.label_386
	cmp	r13d, 0x2b
	jne	.label_389
.label_386:
	test	rbx, rbx
	mov	rsi, rax
	je	.label_288
	dec	rbp
	nop	dword ptr [rax]
.label_378:
	mov	edi, 0x30
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	dec	rbp
	jne	.label_378
	jmp	.label_288
.label_405:
	mov	rcx, r11
	not	rcx
	cmp	rax, rcx
	jae	.label_263
	test	bl, bl
	je	.label_397
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	edi, 1
	cmova	rdi, rdx
	cmp	rdi, rcx
	jae	.label_263
	mov	qword ptr [rsp + 0x48], rsi
	mov	qword ptr [rsp + 0x60], r10
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_345
	mov	qword ptr [rsp + 0x20], rdi
	mov	byte ptr [rsp + 0x50], bl
	mov	qword ptr [rsp + 0x70], r11
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x60]
	test	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_256
	test	al, al
	jne	.label_256
	mov	rax, rsi
	movsxd	rbp, r15d
	lea	rbx, [rbp - 1]
	cmp	r13d, 0x30
	je	.label_410
	cmp	r13d, 0x2b
	jne	.label_358
.label_410:
	test	rbx, rbx
	mov	rsi, rax
	je	.label_256
	dec	rbp
	nop	
.label_382:
	mov	edi, 0x30
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	dec	rbp
	jne	.label_382
	jmp	.label_256
.label_341:
	mov	r15d, edx
	mov	r10, qword ptr [rsp + 0x60]
	jmp	.label_258
.label_397:
	mov	qword ptr [rsp + 0x48], rsi
	mov	qword ptr [rsp + 0x60], r10
	jmp	.label_260
.label_400:
	xor	ecx, ecx
	mov	al, 0x59
.label_343:
	xor	r10d, r10d
.label_279:
	mov	dword ptr [rsp + 0x60], ecx
	mov	r12, r10
	mov	qword ptr [rsp + 0x68], r9
	mov	word ptr [rsp + 0x48b], 0x2520
	test	r8d, r8d
	lea	rcx, [rsp + 0x48d]
	je	.label_267
	mov	byte ptr [rsp + 0x48d], r8b
	lea	rcx, [rsp + 0x48e]
.label_267:
	mov	byte ptr [rcx], al
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x40]
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_287
	dec	rbx
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	r11, qword ptr [rsp + 0x70]
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_263
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_296
	mov	qword ptr [rsp + 0x50], rdx
	cmp	rbx, rax
	setae	al
	test	r12d, r12d
	mov	r12, qword ptr [rsp + 0x78]
	jne	.label_300
	test	al, al
	jne	.label_300
	movsxd	rax, r15d
	mov	r15, rax
	sub	r15, rbx
	cmp	r13d, 0x30
	je	.label_337
	cmp	r13d, 0x2b
	jne	.label_305
.label_337:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_300
	nop	
.label_363:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_363
	jmp	.label_300
.label_287:
	mov	r11, qword ptr [rsp + 0x70]
	mov	r13, qword ptr [rsp + 0x78]
	jmp	.label_290
.label_305:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_300
	nop	dword ptr [rax]
.label_277:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_277
.label_300:
	mov	qword ptr [rsp + 0x78], r12
	mov	eax, dword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_321
	mov	rax, qword ptr [rsp + 0x68]
	test	al, 1
	mov	rax, qword ptr [rsp + 0x78]
	movabs	rbp, 0x1000000000002500
	jne	.label_324
	mov	edx, 1
	lea	rdi, [rsp + 0x81]
	mov	rsi, rbx
	mov	rcx, rax
	call	fwrite
	jmp	.label_332
.label_321:
	mov	rdi, qword ptr [rsp + 0x78]
	lea	rsi, [rsp + 0x81]
	mov	rdx, rbx
	call	fwrite_lowcase
	mov	r11, qword ptr [rsp + 0x70]
	movabs	rbp, 0x1000000000002500
	jmp	.label_335
.label_324:
	mov	rdi, rax
	lea	rsi, [rsp + 0x81]
	mov	rdx, rbx
	call	fwrite_uppcase
.label_332:
	mov	r11, qword ptr [rsp + 0x70]
.label_335:
	mov	rdx, qword ptr [rsp + 0x50]
.label_296:
	add	r11, rdx
	mov	r13, qword ptr [rsp + 0x78]
	jmp	.label_290
.label_377:
	xor	ebp, ebp
	cmp	rcx, rax
	je	.label_325
	nop	dword ptr [rax + rax]
.label_344:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_344
.label_325:
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	mov	rdi, r12
	mov	qword ptr [rsp + 0x78], r12
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	r8d, r13d
	mov	r9d, ebx
	call	__strftime_internal
	mov	r11, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x60]
.label_304:
	add	r11, rsi
	jmp	.label_292
.label_361:
	mov	rax, qword ptr [rsp + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2d
	sete	sil
.label_353:
	mov	rax, rdi
.label_360:
	cmp	r10, 3
	ja	.label_342
	mov	rbx, rbp
	mov	qword ptr [rsp + 0x40], rax
	movsxd	rax, edx
	imul	rcx, rax, -0x77777777
	shr	rcx, 0x20
	add	ecx, edx
	mov	edi, ecx
	shr	edi, 0x1f
	sar	ecx, 5
	add	ecx, edi
	imul	rax, rax, -0x6e5d4c3b
	shr	rax, 0x20
	add	eax, edx
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 0xb
	add	eax, edi
	movsxd	rcx, ecx
	imul	rdi, rcx, -0x77777777
	shr	rdi, 0x20
	add	edi, ecx
	mov	ebp, edi
	shr	ebp, 0x1f
	sar	edi, 5
	add	edi, ebp
	imul	edi, edi, 0x3c
	imul	ebp, ecx, 0x3c
	sub	ecx, edi
	sub	edx, ebp
	jmp	qword ptr [word ptr [+ (r10 * 8) + label_367]]
.label_2669:
	imul	eax, eax, 0x64
	add	eax, ecx
	mov	r10d, 5
.label_408:
	mov	cl, 1
	xor	edx, edx
	mov	rbp, rbx
	jmp	.label_265
.label_398:
	xor	eax, eax
	mov	ebx, r15d
	add	ebx, -6
	cmovs	ebx, eax
	mov	eax, OFFSET FLAT:.str.2_0
	jmp	.label_384
.label_412:
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	r15d, 9
	jmp	.label_270
.label_403:
	mov	esi, 0xfffff894
	sub	esi, ecx
	mov	ecx, eax
	neg	ecx
	add	eax, 0x64
	cmp	edx, esi
	cmovl	eax, ecx
	xor	esi, esi
	jmp	.label_349
.label_266:
	mov	edx, eax
	neg	edx
	add	eax, 0x64
	cmp	ecx, 0xfffff894
	cmovl	eax, edx
	xor	esi, esi
.label_349:
	test	r13d, r13d
	cmove	r13d, dword ptr [rsp + 0x3c]
	xor	edx, edx
	cmp	r13d, 0x2b
	mov	ecx, 0
	jne	.label_265
	cmp	r10d, 2
	mov	ecx, 0x63
	mov	edi, 0x270f
	cmove	edi, ecx
	cmp	edi, eax
	setb	bl
	cmp	r10d, r15d
	setl	cl
	or	cl, bl
	jmp	.label_265
.label_342:
	mov	qword ptr [rsp + 0x40], rax
.label_282:
	mov	qword ptr [rsp + 0x68], r9
	xor	ebp, ebp
	xor	ebx, ebx
	movabs	rdx, 0x100000000
	nop	word ptr cs:[rax + rax]
.label_401:
	add	rbx, rdx
	movzx	eax, byte ptr [r14 + rbp]
	dec	rbp
	cmp	eax, 0x25
	jne	.label_401
	mov	rax, rbp
	neg	rax
	mov	rcx, qword ptr [rsp + 0x60]
	test	ecx, ecx
	mov	edx, r15d
	mov	esi, 0
	cmovs	edx, esi
	cmp	eax, edx
	mov	esi, edx
	cmova	esi, eax
	movsxd	rdi, esi
	mov	r11, qword ptr [rsp + 0x70]
	mov	rsi, r11
	not	rsi
	cmp	rdi, rsi
	jae	.label_263
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_411
	mov	qword ptr [rsp + 0x50], rdi
	sar	rbx, 0x20
	cmp	eax, edx
	mov	rsi, qword ptr [rsp + 0x78]
	jae	.label_269
	add	rcx, rbp
	movsxd	r15, r15d
	sub	r15, rbx
	cmp	r13d, 0x30
	je	.label_415
	cmp	r13d, 0x2b
	jne	.label_406
.label_415:
	test	ecx, ecx
	mov	r13d, 0
	mov	r12, rsi
	je	.label_269
	nop	word ptr cs:[rax + rax]
.label_312:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	r13
	cmp	r13, r15
	jb	.label_312
	jmp	.label_269
.label_406:
	test	ecx, ecx
	mov	r13d, 0
	mov	r12, rsi
	je	.label_269
	nop	word ptr cs:[rax + rax]
.label_278:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	r13
	cmp	r13, r15
	jb	.label_278
.label_269:
	lea	rsi, [r14 + rbp + 1]
	mov	rax, qword ptr [rsp + 0x68]
	test	al, 1
	jne	.label_281
	mov	edx, 1
	mov	rdi, rsi
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 0x78]
	call	fwrite
	jmp	.label_393
.label_281:
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rdx, rbx
	call	fwrite_uppcase
.label_393:
	mov	r11, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x50]
.label_411:
	add	r11, rdi
	jmp	.label_292
.label_2672:
	test	edx, edx
	je	.label_293
.label_2671:
	imul	eax, eax, 0x2710
	imul	ecx, ecx, 0x64
	add	eax, edx
	add	eax, ecx
	mov	r10d, 9
	mov	cl, 1
	mov	edx, 0x14
	mov	rbp, rbx
	jmp	.label_265
.label_257:
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	r10d, r15d
	jmp	.label_270
.label_375:
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_302
.label_306:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_306
.label_302:
	mov	qword ptr [rsp + 0x78], rbx
	test	r12b, r12b
	je	.label_347
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x60]
	call	fwrite_lowcase
	jmp	.label_315
.label_347:
	setne	al
	mov	rcx, qword ptr [rsp + 0x68]
	test	cl, cl
	mov	rcx, qword ptr [rsp + 0x78]
	je	.label_317
	test	al, al
	jne	.label_317
	mov	rdi, rcx
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_319
.label_317:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_320
.label_417:
	test	rbx, rbx
	je	.label_254
	nop	dword ptr [rax]
.label_329:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_329
.label_254:
	mov	edi, 0xa
	jmp	.label_330
.label_328:
	test	rbx, rbx
	je	.label_322
	nop	word ptr cs:[rax + rax]
.label_339:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_339
.label_322:
	mov	edi, 9
	jmp	.label_330
.label_389:
	test	rbx, rbx
	mov	rsi, rax
	je	.label_288
.label_374:
	mov	edi, 0x20
	mov	rbp, rsi
	call	fputc
	mov	rsi, rbp
	dec	rbx
	jne	.label_374
.label_288:
	movzx	edi, byte ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x78], rsi
.label_313:
	call	fputc
	mov	r11, qword ptr [rsp + 0x70]
	mov	r10, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x48]
.label_295:
	add	r11, rdx
	jmp	.label_258
.label_362:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_354
.label_350:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_350
.label_354:
	mov	qword ptr [rsp + 0x78], r15
	movzx	edi, byte ptr [rsp + 0x50]
	mov	rsi, r15
	call	fputc
	mov	r11, qword ptr [rsp + 0x70]
	mov	r10, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x20]
.label_352:
	add	r11, rsi
	mov	r15d, edx
	jmp	.label_258
.label_358:
	test	rbx, rbx
	mov	rsi, rax
	je	.label_256
.label_364:
	mov	edi, 0x20
	mov	rbp, rsi
	call	fputc
	mov	rsi, rbp
	dec	rbx
	jne	.label_364
.label_256:
	movzx	edi, byte ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x78], rsi
	call	fputc
	mov	r11, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
.label_345:
	add	r11, rdi
.label_260:
	mov	qword ptr [rsp + 0x70], r11
	mov	r15, qword ptr [rsp + 0x78]
	test	r15, r15
	je	.label_368
	xor	ebx, ebx
	mov	rax, qword ptr [rsp + 0x48]
	test	eax, eax
	je	.label_368
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rbp, eax
	nop	word ptr [rax + rax]
.label_379:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	inc	rbx
	cmp	rbx, rbp
	jb	.label_379
.label_368:
	mov	rax, qword ptr [rsp + 0x48]
	cdqe	
	mov	r11, qword ptr [rsp + 0x70]
	add	r11, rax
	xor	r15d, r15d
	mov	r10, qword ptr [rsp + 0x60]
.label_258:
	lea	rbx, [rsp + 0x4a7]
	sub	rbx, r12
	xor	eax, eax
	test	r15d, r15d
	cmovns	eax, r15d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_263
	cmp	qword ptr [rsp + 0x78], 0
	je	.label_291
	mov	qword ptr [rsp + 0x50], rdx
	mov	qword ptr [rsp + 0x70], r11
	cmp	rbx, rax
	mov	qword ptr [rsp + 0x60], rbx
	setae	al
	test	r10d, r10d
	mov	rbx, qword ptr [rsp + 0x78]
	jne	.label_340
	test	al, al
	jne	.label_340
	mov	rcx, rbx
	movsxd	rax, r15d
	mov	r15, rax
	mov	rdx, qword ptr [rsp + 0x60]
	sub	r15, rdx
	cmp	r13d, 0x30
	je	.label_392
	cmp	r13d, 0x2b
	jne	.label_394
.label_392:
	xor	ebp, ebp
	cmp	rax, rdx
	mov	rbx, rcx
	je	.label_340
	nop	word ptr cs:[rax + rax]
.label_289:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_289
	jmp	.label_340
.label_394:
	xor	ebp, ebp
	cmp	rax, rdx
	mov	rbx, rcx
	je	.label_340
	nop	word ptr cs:[rax + rax]
.label_404:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_404
.label_340:
	mov	qword ptr [rsp + 0x78], rbx
	mov	rax, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_407
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsi, r12
.label_319:
	mov	rdx, qword ptr [rsp + 0x60]
	call	fwrite_uppcase
	jmp	.label_315
.label_407:
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x78]
.label_320:
	call	fwrite
.label_315:
	mov	r11, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_291
.label_293:
	test	ecx, ecx
	je	.label_413
.label_2670:
	imul	eax, eax, 0x64
	add	eax, ecx
	mov	r10d, 6
	mov	cl, 1
	mov	edx, 4
	mov	rbp, rbx
	jmp	.label_265
.label_385:
	test	rbx, rbx
	je	.label_272
.label_262:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_262
.label_272:
	movsx	edi, byte ptr [r14]
.label_330:
	mov	rsi, r12
	mov	qword ptr [rsp + 0x78], r12
	call	fputc
	mov	r11, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x68]
.label_291:
	add	r11, rdx
.label_292:
	mov	r13, qword ptr [rsp + 0x78]
	movabs	rbp, 0x1000000000002500
.label_290:
	mov	r15d, 0xffffffff
	cmp	byte ptr [r14 + 1], 0
	lea	r14, [r14 + 1]
	jne	.label_274
	jmp	.label_366
.label_263:
	xor	r11d, r11d
.label_366:
	mov	rax, r11
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406c80

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_419
	call	__ctype_tolower_loc
	mov	r12, rax
	nop	
.label_420:
	movzx	eax, byte ptr [rbx]
	mov	rcx, qword ptr [r12]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_420
.label_419:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cd0

	.globl fwrite_uppcase
	.type fwrite_uppcase, @function
fwrite_uppcase:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_421
	call	__ctype_toupper_loc
	mov	r12, rax
	nop	
.label_422:
	movzx	eax, byte ptr [rbx]
	mov	rcx, qword ptr [r12]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_422
.label_421:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d20

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	lea	eax, [rdi + 0x17e]
	sub	eax, esi
	cdqe	
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	neg	eax
	lea	eax, [rdi + rax + 3]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d60

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, r12
	call	fileno
	xor	r14d, r14d
	test	eax, eax
	je	.label_434
	cmp	eax, 1
	je	.label_425
	cmp	eax, 2
	je	.label_427
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_427:
	mov	dword ptr [rsp + 4], r14d
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r14b
	jmp	.label_433
.label_434:
	mov	dword ptr [rsp + 4], 0
	xor	r15d, r15d
	jmp	.label_423
.label_425:
	mov	dword ptr [rsp + 4], 0
.label_433:
	xor	r15d, r15d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_430
	xor	r13d, r13d
	xor	edi, edi
	call	protect_fd
	mov	r15b, 1
	test	al, al
	je	.label_429
.label_430:
	test	r14b, r14b
	je	.label_432
	mov	edi, 1
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_429
.label_432:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_423
	mov	edi, 2
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_429
.label_423:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
.label_429:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_424
	mov	edi, 2
	call	close
.label_424:
	test	r14b, r14b
	je	.label_428
	mov	edi, 1
	call	close
.label_428:
	test	r15b, r15b
	je	.label_426
	xor	edi, edi
	call	close
.label_426:
	test	r13, r13
	jne	.label_431
	mov	dword ptr [rbx], ebp
.label_431:
	mov	rax, r13
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
	#Procedure 0x406e90

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:.str_6
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ecx, eax
	mov	al, 1
	cmp	ecx, ebx
	je	.label_435
	test	ecx, ecx
	js	.label_436
	mov	edi, ecx
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
.label_436:
	xor	eax, eax
.label_435:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ed0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ee0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ef0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f00

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_437
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_439:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_438
	nop	
.label_440:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_440
	cmp	rsi, rax
	cmova	rax, rsi
.label_438:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_439
.label_437:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f50
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	cmp	rsi, qword ptr [rdi + 8]
	mov	edx, 0
	jae	.label_441
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_446:
	cmp	qword ptr [rsi], 0
	mov	rax, rsi
	je	.label_443
	nop	dword ptr [rax]
.label_442:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_442
	inc	rdx
.label_443:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_446
.label_441:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_444
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_445
.label_444:
	xor	eax, eax
.label_445:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406fb0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_447]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_448]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_449]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_2
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4070a0

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_450
	test	rbx, rbx
	je	.label_450
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_451:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_452
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_452
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_451
	jmp	.label_450
.label_452:
	mov	r15, qword ptr [rbx]
.label_450:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407100

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_453
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_453:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407130
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_454
	mov	rcx, qword ptr [rdi]
	jmp	.label_456
	nop	
.label_457:
	add	rcx, 0x10
.label_456:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_455
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_457
.label_454:
	ret	
.label_455:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407160
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_462:
	cmp	qword ptr [rcx], rbx
	jne	.label_458
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_460
.label_458:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_462
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_461:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_459
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_461
	jmp	.label_459
.label_460:
	mov	rcx, qword ptr [rdx]
.label_459:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071d0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	jmp	.label_463
	nop	word ptr [rax + rax]
.label_464:
	add	r8, 0x10
.label_463:
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_465
	cmp	qword ptr [r8], 0
	je	.label_464
	test	r8, r8
	mov	r9, r8
	je	.label_464
	nop	dword ptr [rax + rax]
.label_466:
	cmp	rax, rdx
	jae	.label_465
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_466
	jmp	.label_464
.label_465:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407220
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	jmp	.label_467
	nop	dword ptr [rax]
.label_468:
	add	r13, 0x10
.label_467:
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_469
	cmp	qword ptr [r13], 0
	je	.label_468
	test	r13, r13
	mov	rbp, r13
	je	.label_468
	nop	word ptr [rax + rax]
.label_470:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_469
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_470
	jmp	.label_468
.label_469:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407290

	.globl hash_string
	.type hash_string, @function
hash_string:
	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_471
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_472:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_472
.label_471:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072d0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_473]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072f0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_475
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_474
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_474
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_474
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_475
.label_474:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_475:
	add	rsp, 8
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
	#Procedure 0x4073d0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073f0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407400

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_476
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_477]]
	jbe	.label_478
	movss	xmm1,  dword ptr [dword ptr [rip + label_481]]
	ucomiss	xmm1, xmm0
	jbe	.label_478
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_480]]
	jbe	.label_478
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_478
	addss	xmm1,  dword ptr [dword ptr [rip + label_477]]
	ucomiss	xmm0, xmm1
	jbe	.label_478
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_479]]
	ucomiss	xmm2, xmm0
	jb	.label_478
	ucomiss	xmm0, xmm1
	ja	.label_476
.label_478:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_476:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407480

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_482
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_487
	cvtsi2ss	xmm0, rdi
	jmp	.label_483
.label_487:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_483:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_484]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_485]]
	jae	.label_486
.label_482:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_486:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407500
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_488
	nop	dword ptr [rax]
.label_494:
	add	r14, 0x10
.label_488:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_493
	cmp	qword ptr [r14], 0
	je	.label_494
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_489
	nop	word ptr cs:[rax + rax]
.label_490:
	test	cl, 1
	je	.label_492
	mov	rdi, qword ptr [rbx]
	call	rax
.label_492:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_490
.label_489:
	test	cl, cl
	je	.label_491
	mov	rdi, qword ptr [r14]
	call	rax
.label_491:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_494
.label_493:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075a0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_499
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_499
	mov	r14, qword ptr [r15]
	jmp	.label_504
	nop	dword ptr [rax + rax]
.label_498:
	add	r14, 0x10
.label_504:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_499
	cmp	qword ptr [r14], 0
	je	.label_498
	test	r14, r14
	mov	rbx, r14
	je	.label_498
	nop	dword ptr [rax + rax]
.label_500:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_500
	jmp	.label_498
.label_499:
	mov	r14, qword ptr [r15]
	jmp	.label_502
	nop	word ptr [rax + rax]
.label_497:
	add	r14, 0x10
.label_502:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_495
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_497
	nop	word ptr cs:[rax + rax]
.label_501:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_501
	jmp	.label_497
.label_495:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_503
	nop	dword ptr [rax]
.label_496:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_496
.label_503:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407670

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_505
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_506
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_505
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_507
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_506
.label_507:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_508
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_508
	mov	rdi, qword ptr [rsp]
	call	free
.label_505:
	xor	r14d, r14d
.label_506:
	mov	al, r14b
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_508:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077a0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	r15, qword ptr [r12]
	mov	al, 1
	cmp	r15, qword ptr [r12 + 8]
	jae	.label_514
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_511:
	cmp	qword ptr [r15], 0
	je	.label_510
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_513
	nop	word ptr cs:[rax + rax]
.label_517:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_518
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_509
	nop	word ptr cs:[rax + rax]
.label_518:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_509:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_517
.label_513:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_510
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_512
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_515
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_516
.label_512:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_516:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_510:
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	jb	.label_511
	mov	al, 1
	jmp	.label_514
.label_515:
	xor	eax, eax
.label_514:
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
	#Procedure 0x4078c0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_519
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_530
	test	rbx, rbx
	je	.label_522
	mov	qword ptr [rbx], rax
	jmp	.label_522
.label_530:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_521
	cvtsi2ss	xmm0, rcx
	jmp	.label_526
.label_521:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_526:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_533
	cvtsi2ss	xmm1, rax
	jmp	.label_532
.label_533:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_532:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_523
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_528
	cvtsi2ss	xmm2, rcx
	jmp	.label_531
.label_528:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_531:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_524
	cvtsi2ss	xmm0, rax
	jmp	.label_527
.label_524:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_527:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_523
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_520
	mulss	xmm0, xmm1
.label_520:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_485]]
	jae	.label_522
	movss	xmm1,  dword ptr [dword ptr [rip + label_484]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	je	.label_522
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_519
.label_523:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_529
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_522
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_525
.label_529:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_525:
	mov	ebp, 1
.label_522:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_519:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407a90

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_537
	cmp	rsi, r13
	je	.label_535
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_538
.label_535:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_537
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_540
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_536
.label_538:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_537
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_539:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_534
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_534
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_539
	jmp	.label_537
.label_540:
	mov	qword ptr [rbx], 0
	jmp	.label_537
.label_534:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_537
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_536:
	mov	rdi, r14
	call	free_entry
.label_537:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b60

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_541
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_541:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b90

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_542
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_542:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407bc0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_550
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_545
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_554
	cvtsi2ss	xmm0, rax
	jmp	.label_547
.label_554:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_547:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_553
	cvtsi2ss	xmm1, rcx
	jmp	.label_549
.label_553:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_549:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_545
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_552
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_544
.label_552:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_544:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_548
	cvtsi2ss	xmm0, rax
	jmp	.label_551
.label_548:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_551:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_545
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_543
	mulss	xmm0, dword ptr [rcx + 8]
.label_543:
	movss	xmm1,  dword ptr [dword ptr [rip + label_484]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_545
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_546
	nop	word ptr cs:[rax + rax]
.label_555:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_555
.label_546:
	mov	qword ptr [r15 + 0x48], 0
.label_545:
	mov	rax, r14
.label_550:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d50

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_556
	nop	
.label_557:
	add	rbx, 2
.label_556:
	cmp	rbx, -1
	je	.label_558
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_557
	mov	r14, rbx
.label_558:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407da0

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_559
	nop	dword ptr [rax + rax]
.label_560:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_559
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_560
.label_559:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407df0

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x407e10

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r13, r8
	mov	r15, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r12d
	and	eax, 3
	mov	dword ptr [rsp + 0x64], eax
	mov	eax, r12d
	and	eax, 0x20
	mov	dword ptr [rsp + 0x4c], eax
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x74], ecx
	call	localeconv
	mov	rbx, rax
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	eax, OFFSET FLAT:.str_1
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, qword ptr [rbx + 8]
	mov	rbx, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 0x11
	mov	ecx, OFFSET FLAT:.str_0
	cmovb	rcx, rbp
	lea	rax, [r14 + 0x287]
	mov	qword ptr [rsp + 0x68], rax
	cmp	r13, r15
	jbe	.label_588
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x58], r14
	test	r15, r15
	mov	r8d, r12d
	mov	r12, r13
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_573
	xor	edx, edx
	mov	rax, r12
	div	r15
	test	rdx, rdx
	jne	.label_573
	xor	edx, edx
	mov	rax, r12
	div	r15
	mov	rsi, rax
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	r14, rax
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
	movzx	ebp, al
	cmovae	ebp, edi
	jmp	.label_596
.label_588:
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x58], r14
	xor	edx, edx
	mov	rax, r15
	div	r13
	test	rdx, rdx
	mov	r8d, r12d
	mov	r12, r13
	mov	rdi, qword ptr [rsp + 0x50]
	jne	.label_573
	xor	ebp, ebp
	xor	edx, edx
	mov	rax, r15
	div	r12
	mov	rcx, rax
	mov	r14, rcx
	imul	r14, rdi
	xor	edx, edx
	mov	rax, r14
	div	rcx
	cmp	rax, rdi
	mov	ecx, 0
	jne	.label_573
.label_596:
	mov	qword ptr [rsp + 0x38], rbx
	mov	r15d, r8d
	and	r15d, 0x10
	mov	ebx, 0xffffffff
	je	.label_584
	mov	r9d, dword ptr [rsp + 0x74]
	mov	edi, r9d
	xor	ebx, ebx
	cmp	rdi, r14
	jbe	.label_587
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_576
	nop	dword ptr [rax]
.label_587:
	xor	edx, edx
	mov	rax, r14
	div	rdi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	esi, ebp
	sar	esi, 1
	xor	edx, edx
	mov	r14, rax
	mov	eax, ecx
	div	r9d
	lea	edx, [rsi + rdx*2]
	cmp	edx, r9d
	mov	ecx, eax
	jae	.label_589
	add	edx, ebp
	setne	al
	movzx	ebp, al
	jmp	.label_594
.label_589:
	add	edx, ebp
	cmp	r9d, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_594:
	inc	ebx
	cmp	ebx, 7
	jg	.label_597
	cmp	rdi, r14
	jbe	.label_587
.label_597:
	cmp	r14, 9
	ja	.label_598
	mov	eax, dword ptr [rsp + 0x64]
	cmp	eax, 1
	jne	.label_561
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_581
	jmp	.label_569
.label_573:
	mov	qword ptr [rsp + 0x80], r12
	test	r12, r12
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x80]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_570]]
	mov	qword ptr [rsp + 0x88], rdi
	test	rdi, rdi
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x88]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_570]]
	mov	qword ptr [rsp + 0x90], r15
	test	r15, r15
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_570]]
	fdivrp	st(2)
	fmulp	st(1)
	test	r8b, 0x10
	jne	.label_571
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x50], r8d
	fstp	xword ptr [rsp]
	mov	edi, dword ptr [rsp + 0x64]
	call	adjust_value
	fstp	xword ptr [rsp]
	xor	r12d, r12d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_3
	xor	eax, eax
	mov	r14, qword ptr [rsp + 0x58]
	mov	rdi, r14
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	mov	ebx, 0xffffffff
	mov	r15, qword ptr [rsp + 0x68]
	jmp	.label_563
.label_571:
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x50], r8d
	mov	eax, dword ptr [rsp + 0x74]
	mov	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	fld1	
	xor	ebx, ebx
	fild	qword ptr [rsp + 0x78]
	fldz	
	nop	word ptr cs:[rax + rax]
.label_568:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	ebx
	fld	st(0)
	fmul	st(2)
	cmp	ebx, 7
	jg	.label_564
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_568
.label_564:
	fstp	st(1)
	fstp	st(0)
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp]
	mov	ebp, dword ptr [rsp + 0x64]
	mov	edi, ebp
	call	adjust_value
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.3_3
	xor	eax, eax
	mov	r14, qword ptr [rsp + 0x58]
	mov	rdi, r14
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	mov	ecx, dword ptr [rsp + 0x4c]
	shr	ecx, 5
	xor	ecx, 1
	or	rcx, 2
	mov	rdx, qword ptr [rsp + 0x40]
	add	rcx, rdx
	cmp	rcx, rax
	mov	r15, qword ptr [rsp + 0x68]
	jb	.label_583
	fld	xword ptr [rsp + 0x20]
	inc	rdx
	mov	ecx, dword ptr [rsp + 0x50]
	test	cl, 8
	jne	.label_586
	fstp	st(0)
	jmp	.label_562
.label_584:
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_576
.label_586:
	movzx	ecx, byte ptr [rax + r14 - 1]
	cmp	ecx, 0x30
	fstp	xword ptr [rsp + 0x20]
	jne	.label_562
.label_583:
	mov	qword ptr [rsp + 0x40], r12
	fld	dword ptr [dword ptr [rip + label_592]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x14]
	fld	xword ptr [rsp + 0x20]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, ebp
	call	adjust_value
	fld	xword ptr [rsp + 0x14]
	fdivp	st(1)
	fstp	xword ptr [rsp]
	xor	r12d, r12d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_3
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	jmp	.label_563
.label_562:
	mov	qword ptr [rsp + 0x40], r12
	mov	r12, rdx
.label_563:
	mov	rbp, r15
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rax
	call	memmove
	mov	r13, r15
	sub	r13, r12
	mov	r8d, dword ptr [rsp + 0x50]
	mov	r12, qword ptr [rsp + 0x40]
	jmp	.label_572
.label_598:
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_576
.label_561:
	test	eax, eax
	jne	.label_569
	test	ebp, ebp
	je	.label_569
.label_581:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_569
	inc	r14
	xor	ecx, ecx
	cmp	r14, 9
	mov	ebp, 0
	ja	.label_580
.label_569:
	test	r8b, 8
	je	.label_582
	test	ecx, ecx
	jne	.label_582
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_576
.label_582:
	add	ecx, 0x30
	mov	rax, qword ptr [rsp + 0x58]
	lea	r13, [rax + 0x286]
	mov	byte ptr [rax + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x40]
	sub	r13, rdx
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	ebp, r8d
	call	memcpy
	mov	r8d, ebp
	xor	ebp, ebp
	xor	ecx, ecx
	jmp	.label_576
.label_580:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x68]
	mov	r14d, 0xa
.label_576:
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	je	.label_591
	cmp	eax, 1
	jne	.label_577
	movsxd	rax, ebp
	mov	edx, r14d
	and	edx, 1
	add	rdx, rax
	setne	al
	movzx	eax, al
	add	eax, ecx
	cmp	eax, 5
	jg	.label_593
	jmp	.label_577
.label_591:
	add	ecx, ebp
	jle	.label_577
.label_593:
	inc	r14
	mov	eax, dword ptr [rsp + 0x74]
	cmp	ebx, 7
	jg	.label_577
	test	r15d, r15d
	je	.label_577
	cmp	r14, rax
	jne	.label_577
	inc	ebx
	mov	r14d, 1
	test	r8b, 8
	jne	.label_577
	mov	byte ptr [r13 - 1], 0x30
	dec	r13
	mov	rdx, qword ptr [rsp + 0x40]
	sub	r13, rdx
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	ebp, r8d
	call	memcpy
	mov	r8d, ebp
	mov	r14d, 1
.label_577:
	mov	r15, qword ptr [rsp + 0x68]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_579:
	mov	rax, r14
	mul	rcx
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	esi, r14d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	dec	rbp
	shr	rdx, 3
	cmp	r14, 9
	mov	r14, rdx
	ja	.label_579
	mov	r14, qword ptr [rsp + 0x58]
.label_572:
	test	r8b, 4
	je	.label_585
	sub	r13, rbp
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	ebp, r8d
	call	group_number
	mov	r8d, ebp
	mov	rbp, rax
.label_585:
	mov	eax, dword ptr [rsp + 0x74]
	test	r8b, r8b
	jns	.label_574
	test	ebx, ebx
	jns	.label_590
	xor	ebx, ebx
	cmp	r12, 2
	jb	.label_590
	mov	eax, eax
	xor	ecx, ecx
	mov	edx, 1
	nop	
.label_567:
	mov	ebx, 8
	cmp	ecx, 7
	je	.label_590
	inc	ecx
	imul	rdx, rax
	cmp	rdx, r12
	mov	ebx, ecx
	jb	.label_567
.label_590:
	mov	eax, r8d
	and	eax, 0x100
	test	r8b, 0x40
	je	.label_595
	mov	ecx, ebx
	or	ecx, eax
	je	.label_595
	mov	byte ptr [r14 + 0x287], 0x20
	add	r14, 0x288
	mov	r15, r14
.label_595:
	test	ebx, ebx
	je	.label_578
	cmp	dword ptr [rsp + 0x4c], 0
	jne	.label_565
	mov	cl, 0x6b
	cmp	ebx, 1
	je	.label_566
.label_565:
	movsxd	rcx, ebx
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_566:
	mov	byte ptr [r15], cl
	inc	r15
.label_578:
	test	eax, eax
	je	.label_574
	cmp	dword ptr [rsp + 0x4c], 0
	je	.label_575
	test	ebx, ebx
	je	.label_575
	mov	byte ptr [r15], 0x69
	inc	r15
.label_575:
	mov	byte ptr [r15], 0x42
	inc	r15
.label_574:
	mov	byte ptr [r15], 0
	mov	rax, rbp
	add	rsp, 0x98
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
	#Procedure 0x408470

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	fld	xword ptr [rsp + 8]
	cmp	edi, 1
	je	.label_599
	fld	xword ptr [word ptr [rip + label_600]]
	fucomip	st(1)
	jbe	.label_599
	fld	dword ptr [dword ptr [rip + label_484]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp - 0x22]
	mov	ax, word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], 0xc7f
	fldcw	word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], ax
	fistp	qword ptr [rsp - 0x18]
	fldcw	word ptr [rsp - 0x22]
	fnstcw	word ptr [rsp - 0x24]
	mov	ax, word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], 0xc7f
	fldcw	word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], ax
	fld	st(1)
	fistp	qword ptr [rsp - 0x20]
	fldcw	word ptr [rsp - 0x24]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp - 0x18]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp - 0x20]
	test	edi, edi
	sete	sil
	mov	qword ptr [rsp - 0x10], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp - 0x10]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_570]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	setne	cl
	or	cl, dl
	and	cl, sil
	movzx	ecx, cl
	add	rcx, rax
	mov	qword ptr [rsp - 8], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp - 8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_570]]
.label_599:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408540

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rdi, rcx
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	mov	r13, r14
	neg	r13
	mov	rbp, -1
	jmp	.label_603
	nop	dword ptr [rax]
.label_601:
	add	rbx, r13
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r14
	call	memcpy
.label_603:
	movzx	eax, byte ptr [r15]
	test	rax, rax
	je	.label_602
	cmp	eax, 0x7f
	cmovae	rax, r12
	inc	r15
	mov	rbp, rax
.label_602:
	cmp	r12, rbp
	cmovb	rbp, r12
	sub	rbx, rbp
	mov	rax, r12
	sub	rax, rbp
	lea	rsi, [rsp + rax + 0x10]
	mov	rdi, rbx
	mov	rdx, rbp
	call	memcpy
	sub	r12, rbp
	jne	.label_601
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085f0

	.globl human_options
	.type human_options, @function
human_options:
	push	rbx
	mov	rbx, rdx
	mov	rax, rsi
	mov	rsi, rbx
	mov	rdx, rax
	call	humblock
	cmp	qword ptr [rbx], 0
	jne	.label_604
	call	default_block_size
	mov	qword ptr [rbx], rax
	mov	eax, 4
.label_604:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408620

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	test	rdi, rdi
	jne	.label_610
	mov	edi, OFFSET FLAT:.str.4_2
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_610
	mov	edi, OFFSET FLAT:.str.5_0
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_607
.label_610:
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
	js	.label_606
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_608:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_612
.label_606:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.6_0
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_613
	mov	dword ptr [r14], 0
.label_612:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_613:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	movzx	eax, al
	cmp	eax, 0xa
	jb	.label_608
	mov	rax, qword ptr [rsp]
.label_611:
	cmp	rax, rbx
	je	.label_605
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	movzx	ecx, cl
	cmp	ecx, 0xa
	jae	.label_611
	jmp	.label_608
.label_607:
	call	default_block_size
	mov	qword ptr [r15], rax
	xor	ebp, ebp
	jmp	.label_608
.label_605:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x42
	cmove	ecx, ebp
	jne	.label_609
	movzx	eax, byte ptr [rax - 2]
	cmp	eax, 0x69
	jne	.label_608
.label_609:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_608
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408740

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rax
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	mov	ecx, 0x200
	mov	eax, 0x400
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408760

	.globl ino_map_alloc
	.type ino_map_alloc, @function
ino_map_alloc:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_614
	mov	edi, 0x3fd
	xor	esi, esi
	mov	edx, OFFSET FLAT:ino_hash
	mov	ecx, OFFSET FLAT:ino_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx], rax
	test	rax, rax
	je	.label_615
	mov	qword ptr [rbx + 8], r14
	mov	qword ptr [rbx + 0x10], 0
	jmp	.label_614
.label_615:
	mov	rdi, rbx
	call	free
	xor	ebx, ebx
.label_614:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087c0

	.globl ino_hash
	.type ino_hash, @function
ino_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4087d0

	.globl ino_compare
	.type ino_compare, @function
ino_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087e0
	.globl ino_map_free
	.type ino_map_free, @function
ino_map_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	
	.section	.text
	.align	32
	#Procedure 0x408800

	.globl ino_map_insert
	.type ino_map_insert, @function
ino_map_insert:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x10]
	test	rbx, rbx
	je	.label_616
	cmp	qword ptr [rbx], r15
	jne	.label_618
	jmp	.label_620
.label_616:
	mov	edi, 0x10
	call	malloc
	mov	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	mov	rax, -1
	test	rbx, rbx
	je	.label_617
.label_618:
	mov	qword ptr [rbx], r15
	mov	rdi, qword ptr [r14]
	mov	rsi, rbx
	call	hash_insert
	mov	rcx, rax
	mov	rax, -1
	test	rcx, rcx
	je	.label_617
	cmp	rcx, rbx
	je	.label_619
	mov	rax, qword ptr [rcx + 8]
	jmp	.label_621
.label_619:
	mov	qword ptr [r14 + 0x10], 0
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 8], rcx
.label_621:
	mov	qword ptr [rbx + 8], rax
.label_620:
	mov	rax, qword ptr [rbx + 8]
.label_617:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408890

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_622
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_623:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_623
	jmp	.label_624
.label_622:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_625:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_625
	mov	byte ptr [rsi], 0x2d
.label_624:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408950

	.globl mbscasecmp
	.type mbscasecmp, @function
mbscasecmp:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x80
	mov	r14, rsi
	mov	rbx, rdi
	xor	r12d, r12d
	cmp	rbx, r14
	je	.label_626
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_638
	mov	qword ptr [rsp + 0x50], rbx
	mov	byte ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x44], 0
	mov	byte ptr [rsp + 0x4c], 0
	mov	qword ptr [rsp + 0x10], r14
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rsp + 0x40]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x60], 0
	je	.label_635
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	je	.label_632
.label_635:
	lea	r14, [rsp]
	lea	r15, [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_628:
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	al, byte ptr [rsp + 0x20]
	test	al, al
	je	.label_636
	mov	ecx, dword ptr [rsp + 0x24]
	test	ecx, ecx
	je	.label_632
.label_636:
	cmp	byte ptr [rsp + 0x60], 0
	je	.label_640
	mov	r12d, 0xffffffff
	test	al, al
	je	.label_626
	mov	edi, dword ptr [rsp + 0x64]
	call	towlower
	mov	r12d, eax
	mov	edi, dword ptr [rsp + 0x24]
	call	towlower
	sub	r12d, eax
	jmp	.label_629
	nop	dword ptr [rax + rax]
.label_640:
	mov	r12d, 1
	test	al, al
	jne	.label_626
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rdx, rax
	jne	.label_631
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	call	memcmp
	mov	r12d, eax
.label_629:
	test	r12d, r12d
	jne	.label_626
	mov	rax, qword ptr [rsp + 0x58]
	add	qword ptr [rsp + 0x50], rax
	mov	byte ptr [rsp + 0x4c], 0
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x10], rax
	mov	byte ptr [rsp + 0xc], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x60], 0
	je	.label_628
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_628
.label_632:
	lea	rdi, [rsp + 0x40]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x60], 0
	mov	r12d, 1
	je	.label_626
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_626
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x20], 0
	sete	al
	cmp	dword ptr [rsp + 0x24], 0
	setne	cl
	or	cl, al
	movzx	r12d, cl
	shl	r12d, 0x1f
	sar	r12d, 0x1f
	jmp	.label_626
.label_638:
	call	__ctype_b_loc
	mov	r15, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_634:
	movzx	r12d, byte ptr [rbx]
	test	byte ptr [r15 + r12*2 + 1], 1
	je	.label_627
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	r12d, byte ptr [rax + r12*4]
.label_627:
	movzx	r13d, byte ptr [r14]
	test	byte ptr [r15 + r13*2 + 1], 1
	je	.label_630
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	movzx	r13d, byte ptr [rax + r13*4]
.label_630:
	test	r12d, r12d
	je	.label_633
	inc	rbx
	inc	r14
	cmp	r12d, r13d
	je	.label_634
.label_633:
	sub	r12d, r13d
.label_626:
	mov	eax, r12d
	add	rsp, 0x80
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_631:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	jae	.label_637
	call	memcmp
	test	eax, eax
	setg	al
	jmp	.label_639
.label_637:
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	setns	al
.label_639:
	movzx	eax, al
	lea	r12d, [rax + rax - 1]
	jmp	.label_626
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ba0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_644
	cmp	byte ptr [rbx], 0
	jne	.label_650
	mov	rax, qword ptr [rbx + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, al
	je	.label_641
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_642
.label_641:
	lea	rdi, [rbx + 4]
	call	mbsinit
	test	eax, eax
	je	.label_647
	mov	byte ptr [rbx], 1
.label_650:
	lea	r14, [rbx + 0x24]
	mov	r12, qword ptr [rbx + 0x10]
	call	__ctype_get_mb_cur_max
	mov	rdi, r12
	mov	rsi, rax
	call	strnlen1
	lea	r15, [rbx + 4]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, r15
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_645
	test	rax, rax
	je	.label_648
	cmp	rax, -1
	jne	.label_649
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_642
.label_645:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_642
.label_648:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_643
	cmp	dword ptr [r14], 0
	jne	.label_646
.label_649:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r15
	call	mbsinit
	test	eax, eax
	je	.label_642
	mov	byte ptr [rbx], 0
.label_642:
	mov	byte ptr [rbx + 0xc], 1
.label_644:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_647:
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_643:
	mov	edi, OFFSET FLAT:.str.2_4
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_646:
	mov	edi, OFFSET FLAT:.str.3_4
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cf0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d00
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	mov	al, byte ptr [rsi]
	test	al, al
	mov	byte ptr [rdi], al
	je	.label_651
	mov	rax, qword ptr [rsi + 4]
	mov	qword ptr [rdi + 4], rax
	jmp	.label_652
.label_651:
	mov	qword ptr [rdi + 4], 0
.label_652:
	mov	al, byte ptr [rsi + 0xc]
	mov	byte ptr [rdi + 0xc], al
	add	rdi, 0x10
	add	rsi, 0x10
	jmp	mb_copy
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408d30

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_654
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_655
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_655
	mov	esi, OFFSET FLAT:.str.2_5
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_653
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_653:
	mov	rbx, r14
.label_655:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_654:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408de0
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
	#Procedure 0x408e20
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
	#Procedure 0x408e30
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
	#Procedure 0x408e40

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
	.align	32
	#Procedure 0x408e80
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
	#Procedure 0x408ea0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_656
	test	rdx, rdx
	je	.label_656
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_656:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ed0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rdx, [rbp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f50

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
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	shr	r15b, 1
	and	r15b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	xor	r11d, r11d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_777:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_685
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_666]]
.label_2719:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_2720:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_698
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_698
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_724:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_713
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_713:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_724
.label_698:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	r12, r10
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r11d, dword ptr [rsp + 0xb8]
	jmp	.label_657
.label_2712:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_657
.label_2715:
	mov	al, 1
.label_2713:
	mov	r15b, 1
.label_2716:
	test	r15b, 1
	mov	cl, 1
	je	.label_683
	mov	cl, al
.label_683:
	mov	al, cl
.label_2714:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_754
	test	r10, r10
	je	.label_720
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_758
.label_754:
	xor	ecx, ecx
	jmp	.label_758
.label_2717:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_760
	test	r10, r10
	je	.label_765
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_676
.label_2718:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_657
.label_720:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_758:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_657
.label_760:
	xor	eax, eax
	jmp	.label_676
.label_765:
	mov	eax, 1
.label_676:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_657:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	cmp	qword ptr [rsp + 0x140], 0
	setne	bl
	cmp	r14d, 2
	setne	r15b
	sete	dl
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	and	al, 1
	mov	byte ptr [rsp + 0xcf], al
	sete	cl
	and	dl, al
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	and	sil, dil
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	xor	esi, esi
	jmp	.label_693
	nop	dword ptr [rax + rax]
.label_768:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_693:
	cmp	rbp, -1
	je	.label_737
	cmp	rsi, rbp
	jne	.label_739
	jmp	.label_741
	nop	dword ptr [rax]
.label_737:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_741
.label_739:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_745
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_661
	cmp	rbp, -1
	jne	.label_661
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rdi, r9
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r14
	mov	r12, r9
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	r14, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_661:
	cmp	rbx, rbp
	jbe	.label_763
.label_745:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_678:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_766
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_702]]
.label_2869:
	test	rsi, rsi
	jne	.label_688
	jmp	.label_771
	nop	word ptr cs:[rax + rax]
.label_763:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	mov	r13, r14
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_673
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_678
	jmp	.label_694
.label_673:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_678
.label_2873:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_705
	test	rsi, rsi
	jne	.label_710
	cmp	rbp, 1
	je	.label_771
	xor	r15d, r15d
	jmp	.label_709
.label_2862:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_679
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_694
	cmp	edi, 2
	jne	.label_719
	mov	al, r11b
	and	al, 1
	jne	.label_723
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_727
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_727:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_662
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_662:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_738
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_738:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_753
.label_2863:
	mov	bl, 0x62
	jmp	.label_747
.label_2864:
	mov	cl, 0x74
	jmp	.label_750
.label_2865:
	mov	bl, 0x76
	jmp	.label_747
.label_2866:
	mov	bl, 0x66
	jmp	.label_747
.label_2867:
	mov	cl, 0x72
	jmp	.label_750
.label_2870:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_756
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_684
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_762
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_762:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_774
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_774:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_659
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_659:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_670
.label_2871:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_677
	cmp	r14d, 2
	jne	.label_682
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_684
.label_682:
	mov	rdi, r14
	jmp	.label_688
.label_2872:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_691
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_684
	mov	rdi, r14
	jmp	.label_695
.label_766:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_699
	mov	r14, r9
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	shr	r15d, 0xe
	and	r15b, 1
	mov	ebx, 1
.label_726:
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0xb8]
	ja	.label_715
	test	dl, dl
	je	.label_715
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_709
.label_705:
	test	rsi, rsi
	jne	.label_735
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_735
.label_771:
	mov	dl, 1
.label_2868:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_694
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_709
.label_679:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_688
	mov	r14, rdi
	inc	rsi
	jmp	.label_693
.label_756:
	mov	rdi, r14
.label_670:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_709
.label_691:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_750
.label_695:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_680
.label_750:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_694
.label_747:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_709
	jmp	.label_667
.label_699:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_764
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_764:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_717:
	lea	rax, [rbx + rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_665
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_672
	cmp	rbp, -2
	je	.label_687
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_689
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_707:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_701
	bt	rsi, rdx
	jb	.label_704
.label_701:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_707
.label_689:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_712
	xor	r15d, r15d
.label_712:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_717
	jmp	.label_726
.label_735:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_709
.label_677:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_688
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_688
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_688
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_740
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_743
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_694
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_748
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_748:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_725
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_725:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_761
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_761:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_675
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_675:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_709
.label_688:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_709:
	test	r12b, r12b
	je	.label_730
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_776
	jmp	.label_658
	nop	word ptr cs:[rax + rax]
.label_730:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_658
.label_776:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_668
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_680
	jmp	.label_667
	nop	word ptr cs:[rax + rax]
.label_658:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_667
	jmp	.label_680
.label_668:
	mov	bl, r13b
	mov	rsi, r14
.label_667:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_694
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_703
	mov	al, r11b
	and	al, 1
	jne	.label_703
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_708
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_708:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_664
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_664:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_728
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_728:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_703:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_731
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_731:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_736
.label_710:
	xor	r15d, r15d
	jmp	.label_709
.label_715:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_742
	nop	word ptr cs:[rax + rax]
.label_744:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_742:
	test	dl, dl
	je	.label_749
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_751
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_706
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_706:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_751
	nop	word ptr [rax + rax]
.label_749:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_684
	cmp	r14d, 2
	jne	.label_696
	mov	al, r11b
	and	al, 1
	jne	.label_696
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_770
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_770:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_775
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_775:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_660
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_660:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_696:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_686
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_686:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_769
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_769:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_697
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_697:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_751:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_680
	test	r11b, 1
	je	.label_716
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_718
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_722
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_722:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_772
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_772:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_718
	nop	word ptr cs:[rax + rax]
.label_716:
	mov	r14, rdi
.label_718:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_744
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_744
.label_680:
	test	r11b, 1
	je	.label_752
	and	al, 1
	jne	.label_752
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_700
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_700:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_759
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_759:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_736
	nop	dword ptr [rax + rax]
.label_752:
	mov	bl, r13b
	mov	r14, rdi
.label_736:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_768
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_768
.label_719:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_753
.label_723:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_753:
	cmp	rcx, r10
	jae	.label_778
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_778:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_663
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_674
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_692
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_755
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_755:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_690
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_690:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_709
.label_663:
	xor	r15d, r15d
	jmp	.label_709
.label_674:
	xor	r15d, r15d
	jmp	.label_709
.label_692:
	xor	r15d, r15d
	jmp	.label_709
.label_665:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_711
.label_672:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_714
.label_687:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_721
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_732:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_729
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_732
	xor	r15d, r15d
	jmp	.label_711
.label_721:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_714:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_711:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_726
.label_729:
	xor	r15d, r15d
	jmp	.label_711
.label_740:
	xor	r15d, r15d
	jmp	.label_709
.label_743:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_709
	nop	dword ptr [rax + rax]
.label_741:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_746
	or	dl, al
	je	.label_684
.label_746:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_757
	or	dl, al
	jne	.label_757
	test	r8b, 1
	jne	.label_767
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_757
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_777
.label_757:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_773
	test	cl, cl
	jne	.label_773
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_773
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_669:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_734
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_734:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_669
.label_773:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_681
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_681
.label_694:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_671:
	test	r8b, 1
	mov	r8d, 4
	cmove	r8d, r14d
	cmp	r14d, 2
	cmovne	r8d, r14d
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rcx, rbp
.label_733:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_681:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_704:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_671
.label_684:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_671
.label_767:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_733
.label_685:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a160
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a170

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
	call	xcharalloc
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
	je	.label_779
	mov	qword ptr [rax], rbx
.label_779:
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
	.align	32
	#Procedure 0x40a270
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_780
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_782:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_782
.label_780:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_783
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_784]], OFFSET FLAT:slot0
.label_783:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_781
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_781:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a310

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a320

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
	js	.label_785
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_788
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_791
.label_788:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_787
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
	jne	.label_786
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_786:
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
.label_791:
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
	ja	.label_789
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_790
	mov	rdi, rbx
	call	free
.label_790:
	mov	rdi, r14
	call	xcharalloc
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
.label_789:
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
.label_785:
	call	abort
.label_787:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a4f0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a500
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a510
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	32
	#Procedure 0x40a520

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a560

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_792
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_792:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5c0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a600

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a620
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a640

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a6b0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a6c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6e0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a730

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a740

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7b0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a7d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7f0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a800
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x40a810

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a820

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a830

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_797
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp], 0
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_796
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_797
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_797
.label_796:
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_798
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_797
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_797
.label_798:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_797:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a910

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_800
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_801
	jmp	.label_799
.label_800:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_799
.label_801:
	mov	eax, 1
	test	bpl, bpl
	je	.label_799
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_799:
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
	#Procedure 0x40a9a0

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_804
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_803
	jmp	.label_802
.label_804:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_802
.label_803:
	mov	eax, 1
	test	bpl, bpl
	je	.label_802
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_802:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40aa30

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_805
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_807
	jmp	.label_806
.label_805:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_806
.label_807:
	mov	eax, 1
	test	bpl, bpl
	je	.label_806
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_806:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40aab0

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_810
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_809
	jmp	.label_808
.label_810:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_808
.label_809:
	mov	eax, 1
	test	bpl, bpl
	je	.label_808
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_808:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ab20

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_813
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_811
	jmp	.label_812
.label_813:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_812
.label_811:
	mov	eax, 1
	test	bpl, bpl
	je	.label_812
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_812:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab90

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_816
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_815
	jmp	.label_814
.label_816:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_814
.label_815:
	mov	eax, 1
	test	bpl, bpl
	je	.label_814
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_814:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40abe0

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_819
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_818
	jmp	.label_817
.label_819:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_817
.label_818:
	mov	eax, 1
	test	bpl, bpl
	je	.label_817
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_817:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac30

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_822
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_821
	jmp	.label_820
.label_822:
	mov	eax, 1
	test	cl, cl
	je	.label_820
.label_821:
	xor	eax, eax
.label_820:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ac60
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac70
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac80
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac90
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aca0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40acb0

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40acc0

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40acd0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ace0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40acf0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad30
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	mov	rax, rdi
	mov	rdx, rsi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad40

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_823
	mov	eax, 1
	jg	.label_823
	sub	esi, ecx
	mov	eax, esi
.label_823:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad60
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	or	rsi, rdi
	setne	al
	test	rdi, rdi
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad80
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_824]]
	addsd	xmm0, xmm1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ada0

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
	je	.label_830
	mov	edx, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_829
.label_830:
	mov	edx, OFFSET FLAT:.str.1_7
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_829:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_6
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
	mov	esi, OFFSET FLAT:.str.3_5
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_834
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_825]]
.label_2853:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_3
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
.label_834:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_833
.label_2854:
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
.label_2855:
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
.label_2856:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_832
.label_2857:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_831
.label_2858:
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
	jmp	.label_828
.label_2859:
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
.label_828:
	mov	qword ptr [rsp + 0x10], rdi
.label_831:
	mov	qword ptr [rsp + 8], rsi
.label_832:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_826
.label_2861:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_833:
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
	jmp	.label_827
.label_2860:
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
.label_827:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_826:
	call	__fprintf_chk
.label_2852:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b090
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_835:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_835
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b0c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_837:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_836
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_838
	nop	dword ptr [rax]
.label_836:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_838:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_839
	inc	r9
	cmp	r9, 0xa
	jb	.label_837
.label_839:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b120

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_840
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_840:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	call	version_etc_va
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b1b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_0
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
	.align	32
	#Procedure 0x40b230
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_841
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_841:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b260

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_842
	test	rax, rax
	je	.label_843
.label_842:
	pop	rbx
	ret	
.label_843:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b280

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_844
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_844:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b2b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_845
	test	rbx, rbx
	jne	.label_845
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_845:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_847
	test	rax, rax
	je	.label_846
.label_847:
	pop	rbx
	ret	
.label_846:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40b2e0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_848
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_851
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_849
.label_848:
	test	rcx, rcx
	jne	.label_852
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_852:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_850
.label_849:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_851:
	call	xalloc_die
.label_850:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b360

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b370

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b380

	.globl xzalloc
	.type xzalloc, @function
xzalloc:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3b0

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_853
	call	rpl_calloc
	test	rax, rax
	je	.label_853
	pop	rcx
	ret	
.label_853:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3e0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b410

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b430

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40b460

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_855
	pop	rcx
	ret	
.label_855:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_854
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_854:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b4a0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_856
	cmp	ecx, 0x11
	jne	.label_857
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_856:
	ret	
.label_857:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b4c0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r8
	mov	r14, rcx
	mov	ebp, edx
	mov	r12, rdi
	cmp	ebp, 0x25
	jae	.label_871
	test	rsi, rsi
	lea	r13, [rsp + 0x10]
	cmovne	r13, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r12
	mov	rsi, r13
	mov	edx, ebp
	call	strtoimax
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r13]
	cmp	rax, r12
	je	.label_861
	mov	eax, dword ptr [rbx]
	xor	r12d, r12d
	test	eax, eax
	je	.label_864
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_860
	mov	r12d, 1
.label_864:
	test	r15, r15
	jne	.label_869
	jmp	.label_878
.label_861:
	mov	r12d, 4
	test	r15, r15
	je	.label_860
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_860
	mov	rdi, r15
	call	strchr
	test	rax, rax
	je	.label_860
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_869:
	mov	rax, qword ptr [r13]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_878
	mov	rdi, r15
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_863
	mov	esi, 0x400
	mov	ebp, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_858
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_858
	mov	esi, 0x30
	mov	rdi, r15
	call	strchr
	mov	ebp, 1
	test	rax, rax
	je	.label_873
	mov	rax, qword ptr [r13]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebp, 1
	cmp	ecx, 0x42
	je	.label_875
	cmp	ecx, 0x44
	je	.label_875
	cmp	ecx, 0x69
	jne	.label_877
	movzx	eax, byte ptr [rax + 2]
	mov	ebp, 3
	cmp	eax, 0x42
	mov	esi, 0x400
	je	.label_858
	mov	ebp, 1
	jmp	.label_858
.label_873:
	mov	esi, 0x400
	jmp	.label_858
.label_875:
	mov	esi, 0x3e8
	mov	ebp, 2
	jmp	.label_858
.label_877:
	mov	esi, 0x400
.label_858:
	mov	rax, qword ptr [r13]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_865
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_866
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_867]]
.label_2709:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_870
.label_865:
	cmp	eax, 0x73
	jg	.label_872
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_874
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_876]]
.label_2655:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_870
.label_866:
	cmp	eax, 0x54
	je	.label_862
	cmp	eax, 0x59
	jne	.label_863
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_859
.label_872:
	cmp	eax, 0x74
	je	.label_862
	cmp	eax, 0x77
	jne	.label_863
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_870:
	call	bkm_scale
	jmp	.label_859
.label_2656:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_859
.label_2657:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_859
.label_2658:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_859
.label_862:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_859
.label_874:
	cmp	eax, 0x5a
	jne	.label_863
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_859
.label_863:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_860
.label_2710:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_859
.label_2711:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
.label_859:
	or	eax, r12d
	mov	rcx, qword ptr [r13]
	lea	rdx, [rcx + rbp]
	mov	qword ptr [r13], rdx
	cmp	byte ptr [rcx + rbp], 0
	je	.label_868
	or	eax, 2
.label_868:
	mov	r12d, eax
.label_878:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_860:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_871:
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b790

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_879
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_879:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_880
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
.label_880:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7e0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_881
	nop	word ptr cs:[rax + rax]
.label_882:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_882
.label_881:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b820

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_893
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_905:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_905
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_888
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoul
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_895
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_897
	cmp	eax, 0x22
	jne	.label_888
	mov	r12d, 1
.label_897:
	test	rbp, rbp
	jne	.label_900
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_902
.label_895:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_888
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_888
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_888
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_900:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_894
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_892
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_898
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_903
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_883
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_889
	cmp	ecx, 0x44
	je	.label_889
	cmp	ecx, 0x69
	jne	.label_883
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_883
	mov	r14d, 1
	jmp	.label_883
.label_889:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_883:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_899
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_901
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_904]]
.label_2811:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_886
.label_899:
	cmp	eax, 0x73
	jg	.label_906
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_907
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_890]]
.label_2638:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_886
.label_901:
	cmp	eax, 0x54
	je	.label_891
	cmp	eax, 0x59
	jne	.label_892
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_884
.label_906:
	cmp	eax, 0x74
	je	.label_891
	cmp	eax, 0x77
	jne	.label_892
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_886:
	call	bkm_scale_0
	jmp	.label_885
.label_2639:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_884
.label_2640:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_884
.label_2641:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_884
.label_891:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_884
.label_907:
	cmp	eax, 0x5a
	jne	.label_892
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_884
.label_892:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_887
.label_2812:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_884
.label_2813:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_884:
	mov	esi, r15d
	call	bkm_scale_by_power_0
.label_885:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_896
	or	eax, 2
.label_896:
	mov	r12d, eax
.label_894:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_902:
	mov	qword ptr [rcx], rax
.label_887:
	mov	r15d, r12d
.label_888:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_898:
	mov	rbx, r13
	jmp	.label_883
.label_903:
	mov	rbx, r13
	jmp	.label_883
.label_893:
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb30

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bb60

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_908
	nop	word ptr cs:[rax + rax]
.label_909:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebx, eax
	dec	ebp
	jne	.label_909
.label_908:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bba0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rax
	mov	r9d,  dword ptr [dword ptr [rip + exit_failure]]
	call	xstrtol_error
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bbc0

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, r9d
	mov	r14, r8
	mov	eax, esi
	dec	edi
	cmp	edi, 4
	jae	.label_910
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_911]]
	cdqe	
	test	eax, eax
	js	.label_912
	shl	rax, 5
	mov	rbx, qword ptr [rcx + rax]
	mov	ebp, OFFSET FLAT:.str_13
	jmp	.label_913
.label_912:
	lea	rbx, [rsp + 6]
	mov	ebp, OFFSET FLAT:.str_13
	sub	rbp, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
.label_913:
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r15d
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	mov	r9, r14
	call	error
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_910:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bc50

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
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_931
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_923:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_923
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_921
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoumax
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_933
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_934
	cmp	eax, 0x22
	jne	.label_921
	mov	r12d, 1
.label_934:
	test	rbp, rbp
	jne	.label_916
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_918
.label_933:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_921
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_921
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_921
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_916:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_932
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_925
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_937
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_919
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_922
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_928
	cmp	ecx, 0x44
	je	.label_928
	cmp	ecx, 0x69
	jne	.label_922
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_922
	mov	r14d, 1
	jmp	.label_922
.label_928:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_922:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_914
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_917
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_936]]
.label_2652:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_920
.label_914:
	cmp	eax, 0x73
	jg	.label_924
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_926
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_938]]
.label_2648:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_920
.label_917:
	cmp	eax, 0x54
	je	.label_930
	cmp	eax, 0x59
	jne	.label_925
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_915
.label_924:
	cmp	eax, 0x74
	je	.label_930
	cmp	eax, 0x77
	jne	.label_925
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_920:
	call	bkm_scale_1
	jmp	.label_929
.label_2649:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_915
.label_2650:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_915
.label_2651:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_915
.label_930:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_915
.label_926:
	cmp	eax, 0x5a
	jne	.label_925
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_915
.label_925:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_927
.label_2653:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_915
.label_2654:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_915:
	mov	esi, r15d
	call	bkm_scale_by_power_1
.label_929:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_935
	or	eax, 2
.label_935:
	mov	r12d, eax
.label_932:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_918:
	mov	qword ptr [rcx], rax
.label_927:
	mov	r15d, r12d
.label_921:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_937:
	mov	rbx, r13
	jmp	.label_922
.label_919:
	mov	rbx, r13
	jmp	.label_922
.label_931:
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf60

	.globl bkm_scale_1
	.type bkm_scale_1, @function
bkm_scale_1:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bf90

	.globl bkm_scale_by_power_1
	.type bkm_scale_by_power_1, @function
bkm_scale_by_power_1:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_939
	nop	word ptr cs:[rax + rax]
.label_940:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_1
	or	ebx, eax
	dec	ebp
	jne	.label_940
.label_939:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bfd0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_941
	test	rsi, rsi
	mov	ecx, 1
	je	.label_942
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_942
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_941:
	mov	ecx, 1
.label_942:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c020

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_943
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_945
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_943
.label_945:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_943
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_944
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_944:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_943:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_946
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_946
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_946:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_947
	ret	
.label_947:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c0f0

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	orig_freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_949
	test	rbx, rbx
	je	.label_949
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_949
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_949
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_948
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_949
.label_948:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_949:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c190

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c1a0

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
	jne	.label_950
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_950
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_951
.label_950:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_951:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_952
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_952:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c210

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_958
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_958
	test	r14b, 0x12
	je	.label_958
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_954
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_968
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_969
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_972
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_969:
	mov	byte ptr [rsp + 0x27], 1
	test	rbp, rbp
	je	.label_959
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x27], al
.label_959:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	je	.label_962
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x10], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_953:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_955
	cmp	rax, 3
	jb	.label_955
	cmp	rax, 2
	jb	.label_955
	movzx	ecx, byte ptr [rax + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_955
	nop	word ptr cs:[rax + rax]
.label_963:
	movzx	ecx, byte ptr [r13 + rax - 2]
	cmp	ecx, 0x2f
	jne	.label_955
	dec	rax
	cmp	rax, 1
	ja	.label_963
	nop	word ptr cs:[rax + rax]
.label_955:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_967
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0x27]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_970
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_961
.label_970:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_961:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_964
	mov	qword ptr [rbp + 0x10], rbx
	mov	qword ptr [rsp + 0x30], rbp
	jmp	.label_965
.label_964:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_966
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 8], rbp
	jmp	.label_965
.label_966:
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x30], rbp
	nop	word ptr [rax + rax]
.label_965:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_953
	cmp	qword ptr [rsp + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_960
	cmp	r12, 2
	jb	.label_960
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x30], rax
.label_960:
	mov	r12, qword ptr [rsp + 0x18]
.label_962:
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_971
	mov	rbx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_956
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_957
	mov	esi, OFFSET FLAT:.str_1
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_957
	or	byte ptr [r13 + 0x48], 4
.label_957:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_954
.label_958:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_954:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_967:
	mov	r12, qword ptr [rsp + 0x18]
.label_971:
	mov	rbx, qword ptr [rsp + 0x30]
.label_956:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_972:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_968:
	mov	rdi, r13
	call	free
	xor	eax, eax
	jmp	.label_954
	.section	.text
	.align	32
	#Procedure 0x40c590

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_973
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_974:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_974
	inc	r14
.label_973:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c5e0

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_975
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	xor	eax, eax
	pop	rbx
	ret	
.label_975:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_976
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	pop	rbx
	ret	
.label_976:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c640

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_977
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_977:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6d0

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_978
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_978:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c6f0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_979
	test	byte ptr [r14 + 0x48], 1
	je	.label_979
	mov	dl, 1
.label_979:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_983
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_983
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_982
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_989
.label_983:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_982
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_988
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	__lstat
	test	eax, eax
	je	.label_987
.label_988:
	mov	eax, dword ptr [r14]
.label_989:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_980:
	movzx	eax, ax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_982:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_980
	cmp	ecx, 0x8000
	je	.label_981
	cmp	ecx, 0x4000
	jne	.label_984
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_985
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_985
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_985:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	movzx	ecx, byte ptr [r15 + 0x108]
	cmp	ecx, 0x2e
	jne	.label_980
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_986
	movzx	ecx, cl
	cmp	ecx, 0x2e
	jne	.label_980
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_980
.label_986:
	mov	ax, 1
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_980
	mov	ax, 5
	jmp	.label_980
.label_981:
	mov	ax, 8
	jmp	.label_980
.label_984:
	mov	ax, 3
	jmp	.label_980
.label_987:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_980
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c880

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_990
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_996
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_996
	mov	qword ptr [r15 + 0x10], rax
.label_990:
	test	rbx, rbx
	je	.label_991
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_993:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_993
.label_991:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	cmp	r14, 1
	je	.label_994
	mov	ecx, 1
	sub	rcx, r14
	dec	r14
	lea	rdx, [rax + 8]
.label_995:
	mov	rsi, qword ptr [rdx - 8]
	mov	rdi, qword ptr [rdx]
	mov	qword ptr [rsi + 0x10], rdi
	add	rdx, 8
	inc	rcx
	jne	.label_995
	lea	rax, [rax + r14*8]
.label_994:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_992
.label_996:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_992:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c960

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_997
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_998
	jmp	.label_1000
.label_997:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_999
	mov	rdi, rax
	call	cycle_check_init
.label_998:
	mov	r14b, 1
	jmp	.label_1000
.label_999:
	xor	r14d, r14d
.label_1000:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c9d0

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1001
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_1001:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ca00

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1002
	nop	dword ptr [rax]
.label_1004:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1003
	call	closedir
.label_1003:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_1004
.label_1002:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca40

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_1005
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_1008
	nop	word ptr cs:[rax + rax]
.label_1014:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_1011
	mov	rbx, qword ptr [rdi + 8]
.label_1011:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_1014
	jmp	.label_1016
.label_1008:
	mov	rbx, rdi
.label_1016:
	mov	rdi, rbx
	call	free
.label_1005:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_1007
	call	fts_lfree
.label_1007:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_1013
	xor	ebx, ebx
	test	al, 4
	jne	.label_1009
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_1006
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_1006:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_1015
	jmp	.label_1009
.label_1013:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_1009
	call	close
.label_1015:
	test	eax, eax
	je	.label_1009
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_1009:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_1010
	call	hash_free
.label_1010:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_1012
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_1012:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cb40

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_1017
	nop	word ptr cs:[rax + rax]
.label_1018:
	mov	edi, eax
	call	close
.label_1017:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1019
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1018
	jmp	.label_1017
.label_1019:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cb80

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1020
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_1021
	jmp	hash_free
.label_1020:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
.label_1021:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cbb0

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1044
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1044
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_1060
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_1023
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_1044
.label_1060:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_1023
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1029
	test	byte ptr [r14 + 0x48], 4
	jne	.label_1033
	mov	esi, OFFSET FLAT:.str_1
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_1039
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_1022
.label_1023:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_1030
	movzx	eax, ax
	cmp	eax, 4
	je	.label_1045
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_1047
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_1045
.label_1047:
	cmp	qword ptr [r14 + 8], 0
	je	.label_1050
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_1052
	cmp	qword ptr [r14 + 8], 0
	je	.label_1050
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1055
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1042
	nop	word ptr [rax + rax]
.label_1030:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_1061
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_1051
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_1024
.label_1061:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1027
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_1030
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_1037
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1036
	test	byte ptr [r14 + 0x48], 4
	jne	.label_1036
	mov	esi, OFFSET FLAT:.str_1
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_1048
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_1036
.label_1053:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_1042:
	test	rax, rax
	jne	.label_1053
	jmp	.label_1055
.label_1045:
	test	byte ptr [rbx + 0x72], 2
	je	.label_1056
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_1056:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_1058
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_1058:
	mov	word ptr [rbx + 0x70], 6
.label_1057:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_1044
.label_1027:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_1062
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_1044
.label_1029:
	mov	r15, rbx
	jmp	.label_1022
.label_1033:
	mov	r15, rbx
	jmp	.label_1022
.label_1051:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_1032
	mov	rdi, rbx
	call	free
	jmp	.label_1037
.label_1062:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_1022
.label_1052:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_1050:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_1049
.label_1055:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_1037
.label_1049:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1044
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_1057
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_1057
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_1057
.label_1039:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_1022
.label_1032:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1044
.label_1024:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_1025
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_1040
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1028
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_1035
	test	al, 1
	jne	.label_1046
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_7
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_1043
.label_1025:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_1044
.label_1028:
	mov	rdi, r14
	call	restore_initial_cwd
.label_1043:
	test	eax, eax
	je	.label_1046
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1046
.label_1035:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1054
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_1031
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_1054
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1054
.label_1048:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_1036:
	mov	word ptr [r15 + 0x74], 3
.label_1037:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	jne	.label_1063
	dec	rcx
.label_1063:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_1022:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_1034
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_1038
	cmp	rax, 2
	jne	.label_1040
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_1041
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_1041
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_1038
.label_1041:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_1034
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1038
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1038
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_1038:
	movzx	eax, word ptr [r15 + 0x70]
.label_1034:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1044
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1059
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_1059:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_1044
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_1044
.label_1031:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_1054:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_1046:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_1026
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	setne	cl
	movzx	ecx, cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_1026
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_1026:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_1044:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1040:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40d160

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1064
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_1066
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_1064:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1065
	cmp	qword ptr [rax + 0x58], 0
	js	.label_1065
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1066
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_1065
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_1065
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_1065:
	add	rsp, 0x18
	ret	
.label_1066:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d200

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r14, rdi
	test	rbx, rbx
	je	.label_1067
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_1072
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_1072
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_1072:
	test	eax, eax
	sete	r15b
	jmp	.label_1074
.label_1067:
	xor	r15d, r15d
.label_1074:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1076
	test	r13d, r13d
	jns	.label_1077
	mov	cl, r15b
	xor	cl, 1
	jne	.label_1078
	and	eax, 0x200
	je	.label_1079
	mov	qword ptr [rsp], rsi
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_1068
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
	jmp	.label_1068
.label_1076:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_1070
	and	eax, 0x200
	je	.label_1070
	mov	edi, r13d
	call	close
	jmp	.label_1070
.label_1079:
	mov	qword ptr [rsp], rsi
	jmp	.label_1068
.label_1077:
	mov	qword ptr [rsp], rsi
	jmp	.label_1068
.label_1078:
	mov	qword ptr [rsp], rsi
.label_1068:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_1075
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_1070
.label_1075:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_1082
	test	rbx, rbx
	je	.label_1069
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	jne	.label_1069
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x2e
	jne	.label_1069
	cmp	byte ptr [rbx + 2], 0
	jne	.label_1069
.label_1082:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	__fstat
	test	eax, eax
	jne	.label_1071
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_1073
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_1073
.label_1069:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_1080
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_1081
.label_1080:
	test	r15b, r15b
	sete	al
	movzx	edx, al
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_1070
.label_1073:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_1071:
	mov	ebp, 0xffffffff
.label_1081:
	test	r13d, r13d
	jns	.label_1070
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_1070:
	mov	eax, ebp
	add	rsp, 0x98
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
	#Procedure 0x40d3b0

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r12d, esi
	mov	r14, rdi
	mov	rbp, qword ptr [r14]
	mov	qword ptr [rsp + 0x48], rbp
	mov	r15, qword ptr [rbp + 0x18]
	mov	qword ptr [rsp + 0x60], r15
	test	r15, r15
	je	.label_1123
	mov	rdi, r15
	call	dirfd
	mov	dword ptr [rsp + 0x84], eax
	test	eax, eax
	js	.label_1136
	mov	qword ptr [rsp + 0x38], -1
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_1124
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_1124:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	jmp	.label_1085
.label_1123:
	mov	eax, 0x204
	and	eax, dword ptr [r14 + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_1095
	mov	edi, dword ptr [r14 + 0x2c]
.label_1095:
	mov	rsi, qword ptr [rbp + 0x30]
	mov	eax, dword ptr [r14 + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_1100
	test	al, 1
	je	.label_1103
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_1100
.label_1103:
	mov	edx, 0x20000
.label_1100:
	lea	rcx, [rsp + 0x84]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_1110
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_1113
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_1118
.label_1136:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_1110:
	xor	r13d, r13d
	cmp	r12d, 3
	jne	.label_1083
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	xor	r13d, r13d
	jmp	.label_1083
.label_1113:
	test	byte ptr [r14 + 0x49], 1
	je	.label_1118
	mov	rdi, r14
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	mov	rdi, r14
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_1137
.label_1118:
	mov	qword ptr [rsp + 0x38], -1
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_1138
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_1138:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	test	r15, r15
	jne	.label_1085
	cmp	r12d, 2
	jne	.label_1094
	mov	r13d, r12d
	xor	r12d, r12d
	jmp	.label_1096
.label_1094:
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_1097
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_1097
	mov	r13d, r12d
	mov	esi, dword ptr [rsp + 0x84]
	mov	rdi, rbp
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_1106
.label_1137:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_1083
.label_1097:
	mov	r13d, r12d
	xor	r12d, r12d
.label_1106:
	xor	r12b, 1
.label_1096:
	cmp	r13d, 3
	je	.label_1117
	test	r12b, r12b
	jne	.label_1117
	mov	dword ptr [rsp + 0x18], r12d
	mov	r12d, r13d
	jmp	.label_1085
.label_1117:
	mov	qword ptr [rsp + 0x60], r15
	test	byte ptr [r14 + 0x49], 2
	mov	ebx, dword ptr [rsp + 0x84]
	je	.label_1116
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 0x84], ebx
.label_1116:
	test	ebx, ebx
	js	.label_1127
	xor	ecx, ecx
	mov	rdi, r14
	mov	rsi, rbp
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1133
.label_1127:
	cmp	r13d, 3
	jne	.label_1101
	test	r12b, r12b
	je	.label_1101
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
.label_1101:
	or	byte ptr [rbp + 0x72], 1
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	je	.label_1089
	mov	edi, dword ptr [rsp + 0x84]
	test	edi, edi
	js	.label_1089
	call	close
.label_1089:
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0x18], 0
.label_1133:
	mov	r12d, r13d
	mov	r15, qword ptr [rsp + 0x60]
.label_1085:
	mov	rax, qword ptr [rbp + 0x38]
	mov	rdx, qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_1099
	dec	rdx
.label_1099:
	mov	dword ptr [rsp + 0x1c], r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	test	byte ptr [r14 + 0x48], 4
	je	.label_1104
	mov	rax, qword ptr [r14 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x50], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_1104:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x68], rax
	mov	rcx, qword ptr [r14 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x28], rax
	add	rdx, 2
	mov	qword ptr [rsp + 8], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r12d, r12d
	xor	ebx, ebx
	xor	r13d, r13d
.label_1122:
	cmp	qword ptr [rbp + 0x18], 0
	je	.label_1105
	mov	qword ptr [rsp + 0x70], rbx
	mov	qword ptr [rsp + 0x78], r13
	call	__errno_location
	mov	r13, rax
	nop	dword ptr [rax]
.label_1114:
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [rbp + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_1135
	test	byte ptr [r14 + 0x48], 0x20
	jne	.label_1088
	movzx	eax, byte ptr [r15 + 0x13]
	cmp	eax, 0x2e
	jne	.label_1088
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	eax, 0x2e
	je	.label_1139
	test	al, al
	je	.label_1084
	jmp	.label_1088
	nop	
.label_1139:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_1088
.label_1084:
	cmp	qword ptr [rbp + 0x18], 0
	jne	.label_1114
	jmp	.label_1091
	nop	word ptr cs:[rax + rax]
.label_1088:
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_1092
	cmp	rbp, qword ptr [rsp + 0x40]
	jae	.label_1107
	mov	rbx, qword ptr [rsp + 0x68]
	jmp	.label_1111
	nop	
.label_1107:
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_1092
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_1120
	mov	rbx, qword ptr [rsp + 0x68]
	add	rax, rbx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x50]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1121
.label_1120:
	mov	rbx, qword ptr [rsp + 0x68]
.label_1121:
	mov	rax, qword ptr [r14 + 0x30]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
.label_1111:
	add	rbp, rbx
	jb	.label_1130
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [r14 + 0x48], 4
	jne	.label_1132
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_1112
	nop	dword ptr [rax]
.label_1132:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x50]
	call	memmove
.label_1112:
	mov	rbp, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	je	.label_1098
	test	byte ptr [r14 + 0x49], 4
	jne	.label_1098
	mov	qword ptr [rsp + 0x68], rbx
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_1108
	nop	word ptr [rax + rax]
.label_1098:
	mov	qword ptr [rsp + 0x68], rbx
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_1128
	movzx	eax, byte ptr [r15 + 0x12]
	cmp	eax, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_1119
.label_1128:
	xor	ebx, ebx
.label_1119:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
.label_1108:
	mov	r15, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], 0
	test	r13, r13
	mov	rax, r12
	je	.label_1126
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r13
.label_1126:
	mov	r13, rax
	mov	rbx, qword ptr [rsp + 0x70]
	cmp	rbx, 0x2710
	jne	.label_1087
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_1087
	mov	esi, dword ptr [rsp + 0x84]
	mov	rdi, rbp
	call	dirent_inode_sort_may_be_useful
	mov	qword ptr [rsp + 0x10], rax
.label_1087:
	inc	rbx
	cmp	qword ptr [rsp + 0x38], rbx
	ja	.label_1122
	jmp	.label_1105
.label_1135:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbx, qword ptr [rsp + 0x70]
	je	.label_1093
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, r15
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_1093:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_1105
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_1105
.label_1091:
	mov	r15, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbx, qword ptr [rsp + 0x70]
.label_1105:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_1115
	mov	rdi, r14
	mov	rsi, r13
	call	fts_padjust
.label_1115:
	test	byte ptr [r14 + 0x48], 4
	mov	r12d, dword ptr [rsp + 0x1c]
	je	.label_1102
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	rdx, qword ptr [r14 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_1102:
	test	r15, r15
	jne	.label_1125
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_1125
	cmp	r12d, 1
	je	.label_1129
	test	rbx, rbx
	jne	.label_1125
.label_1129:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_1131
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_7
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_1134
.label_1131:
	mov	rdi, r14
	call	restore_initial_cwd
.label_1134:
	test	eax, eax
	je	.label_1125
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1109
.label_1125:
	test	rbx, rbx
	je	.label_1086
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	je	.label_1090
	mov	rbp, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [rbp]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	mov	qword ptr [rbp], 0
.label_1090:
	cmp	rbx, 2
	jb	.label_1083
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_1083
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	jmp	.label_1083
.label_1086:
	cmp	r12d, 3
	jne	.label_1109
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_1109
	movzx	eax, ax
	cmp	eax, 7
	je	.label_1109
	mov	word ptr [rbp + 0x70], 6
.label_1109:
	mov	rdi, r13
	call	fts_lfree
	xor	r13d, r13d
.label_1083:
	mov	rax, r13
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1092:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	xor	r13d, r13d
	jmp	.label_1083
.label_1130:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	xor	r13d, r13d
	jmp	.label_1083
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db30

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_1140
	test	ah, 2
	jne	.label_1142
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_1141
.label_1140:
	xor	eax, eax
	jmp	.label_1141
.label_1142:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
	xor	eax, eax
.label_1141:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db90

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1144
	cmp	rbx, r15
	jne	.label_1143
	cmp	byte ptr [rbx + 1], 0
	je	.label_1144
.label_1143:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_1144:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc20

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_1148
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_1149
	cmp	rax, 0x52654973
	je	.label_1147
	cmp	rax, 0x5346414f
	je	.label_1146
	jmp	.label_1145
.label_1148:
	test	rax, rax
	je	.label_1146
	cmp	rax, 0x6969
	je	.label_1146
	cmp	rax, 0x9fa0
	je	.label_1146
	jmp	.label_1145
.label_1149:
	cmp	rax, 0x58465342
	je	.label_1147
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_1145
.label_1146:
	xor	ecx, ecx
	jmp	.label_1147
.label_1145:
	mov	ecx, 1
.label_1147:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc90

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_1152
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1153
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_1150
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_1151
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_1154
.label_1152:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_1150
	mov	qword ptr [r14], r14
.label_1154:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_1150
.label_1153:
	xor	ebp, ebp
	jmp	.label_1150
.label_1151:
	xor	ebp, ebp
.label_1150:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd30

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_1156
	cmp	esi, -0x64
	jne	.label_1159
.label_1156:
	test	dl, dl
	je	.label_1155
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1157
	mov	edi, eax
	jmp	.label_1158
.label_1155:
	test	esi, esi
	js	.label_1157
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_1157
	mov	edi, esi
.label_1158:
	call	close
.label_1157:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1159:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd80

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_1160
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_1160:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ddb0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_1169
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_1161
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_1167
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_1161
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_1161
.label_1169:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_1161
.label_1167:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_1165
	call	fts_lfree
.label_1165:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_1166
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_1166:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_1162
	mov	rax, qword ptr [r12 + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_1162
	test	byte ptr [rbx + 0x48], 4
	jne	.label_1162
	mov	esi, OFFSET FLAT:.str_1
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1168
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_1170
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_1163
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_1161
.label_1162:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_1161:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1168:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_1161
.label_1170:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_1164
.label_1163:
	mov	edi, ebp
	call	close
.label_1164:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_1161
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40def0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40df00

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1171
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_1171:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40df20

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_1172
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_1174
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_1175
.label_1174:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_1176
	mov	rax, qword ptr [rax + 8]
	jmp	.label_1172
.label_1176:
	mov	r12b, 1
	mov	r14, rbp
.label_1175:
	xor	eax, eax
	test	r15d, r15d
	js	.label_1172
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1172
	test	r12b, r12b
	je	.label_1173
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1173
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_1177
	cmp	rax, rbp
	je	.label_1173
	call	abort
.label_1177:
	mov	rdi, rbp
	call	free
.label_1173:
	mov	rax, qword ptr [rsp + 0x10]
.label_1172:
	add	rsp, 0x88
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
	#Procedure 0x40e030

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e040

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e050

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_1178
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_1179]]
.label_1178:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e070

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_1180
	cmp	rcx, 0x1021994
	je	.label_1180
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_1180
	mov	al, 1
.label_1180:
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e0a0

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_1181
	nop	word ptr [rax + rax]
.label_1184:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_1181:
	test	rcx, rcx
	je	.label_1185
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_1184
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_1184
.label_1185:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_1186
	nop	word ptr cs:[rax + rax]
.label_1187:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_1182
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_1182:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_1183
	mov	rcx, qword ptr [rsi + 8]
.label_1183:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_1187
.label_1186:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e130

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e160
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e170

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
	je	.label_1188
	cmp	r15, -2
	jb	.label_1188
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1188
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1188:
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
	#Procedure 0x40e1d0

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	edi, OFFSET FLAT:.str_14
	mov	esi, OFFSET FLAT:.str.1_0
	call	fopen
	mov	r14, rax
	test	r14, r14
	je	.label_1206
	mov	qword ptr [rsp + 0x58], 0
	mov	qword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsp + 0x50]
	mov	rdx, r14
	call	getline
	lea	r12, [rsp + 0x60]
	cmp	rax, -1
	je	.label_1194
	lea	rbx, [rsp + 0x27]
	lea	r15, [rsp + 0x40]
	lea	r13, [rsp + 0x44]
	nop	dword ptr [rax + rax]
.label_1198:
	mov	rdi, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp], r13
	mov	esi, OFFSET FLAT:.str.2_8
	xor	eax, eax
	lea	rdx, [rsp + 0x4c]
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x2c]
	lea	r9, [rsp + 0x28]
	call	sscanf
	or	eax, 4
	cmp	eax, 7
	jne	.label_1201
	movsxd	rdi, dword ptr [rsp + 0x40]
	add	rdi, qword ptr [rsp + 0x58]
	mov	esi, OFFSET FLAT:.str.3_6
	call	strstr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1201
	mov	qword ptr [rsp], rbx
	mov	esi, OFFSET FLAT:.str.4_4
	xor	eax, eax
	mov	rdi, rbp
	lea	rdx, [rsp + 0x3c]
	lea	rcx, [rsp + 0x38]
	lea	r8, [rsp + 0x34]
	lea	r9, [rsp + 0x30]
	call	sscanf
	or	eax, 4
	cmp	eax, 5
	jne	.label_1201
	movsxd	rax, dword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x38]
	mov	byte ptr [rbp + rax], 0
	movsxd	rax, dword ptr [rsp + 0x30]
	mov	byte ptr [rbp + rax], 0
	movsxd	rdi, dword ptr [rsp + 0x34]
	add	rdi, rbp
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x44]
	add	rdi, qword ptr [rsp + 0x58]
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x2c]
	add	rdi, qword ptr [rsp + 0x58]
	call	unescape_tab
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	movsxd	rdi, dword ptr [rsp + 0x34]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13], rax
	movsxd	rdi, dword ptr [rsp + 0x44]
	add	rdi, qword ptr [rsp + 0x58]
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x2c]
	add	rdi, qword ptr [rsp + 0x58]
	call	xstrdup
	mov	qword ptr [r13 + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x3c]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13 + 0x18], rax
	or	byte ptr [r13 + 0x28], 4
	mov	edi, dword ptr [rsp + 0x4c]
	mov	esi, dword ptr [rsp + 0x48]
	call	gnu_dev_makedev
	mov	qword ptr [r13 + 0x20], rax
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:.str.5_2
	mov	rdi, rbp
	call	strcmp
	mov	bl, 1
	test	eax, eax
	mov	al, 1
	je	.label_1190
	mov	esi, OFFSET FLAT:.str.6_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1190
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1190
	mov	esi, OFFSET FLAT:.str.8_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1190
	mov	esi, OFFSET FLAT:.str.9_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1190
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1190
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1190
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1190
	mov	esi, OFFSET FLAT:.str.13_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1190
	mov	esi, OFFSET FLAT:.str.14_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1190
	mov	esi, OFFSET FLAT:.str.15_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1190
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1190
	mov	esi, OFFSET FLAT:.str.17_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	nop	dword ptr [rax]
.label_1190:
	mov	cl, byte ptr [r13 + 0x28]
	and	cl, 0xfe
	or	cl, al
	mov	byte ptr [r13 + 0x28], cl
	mov	rbp, qword ptr [r13]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_1195
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_1205
	movzx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2f
	jne	.label_1205
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1195
	mov	esi, OFFSET FLAT:.str.19_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1195
.label_1205:
	mov	rsi, qword ptr [r13]
	mov	edi, OFFSET FLAT:.str.20_0
	call	strcmp
	test	eax, eax
	sete	bl
.label_1195:
	mov	al, byte ptr [r13 + 0x28]
	add	bl, bl
	and	al, 0xfd
	or	al, bl
	mov	byte ptr [r13 + 0x28], al
	mov	qword ptr [r12], r13
	add	r13, 0x30
	mov	r12, r13
	lea	rbx, [rsp + 0x27]
	lea	r13, [rsp + 0x44]
.label_1201:
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsp + 0x50]
	mov	rdx, r14
	call	getline
	cmp	rax, -1
	jne	.label_1198
.label_1194:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	je	.label_1200
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, r14
	call	rpl_fclose
	mov	dword ptr [rbp], r15d
	jmp	.label_1193
.label_1206:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	esi, OFFSET FLAT:.str.1_0
	call	setmntent
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1196
	lea	r15, [rsp + 0x60]
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1202
	nop	word ptr [rax + rax]
.label_1207:
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rdi, rbp
	call	hasmntopt
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, 0x38
	call	xmalloc
	mov	r12, rax
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	qword ptr [r12], rax
	mov	rdi, qword ptr [rbp + 8]
	call	xstrdup
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x10], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	rbp, rax
	mov	qword ptr [r12 + 0x18], rbp
	or	byte ptr [r12 + 0x28], 4
	mov	esi, OFFSET FLAT:.str.5_2
	mov	rdi, rbp
	call	strcmp
	mov	r13b, 1
	test	eax, eax
	mov	r14b, 1
	je	.label_1189
	mov	esi, OFFSET FLAT:.str.6_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1189
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1189
	mov	esi, OFFSET FLAT:.str.8_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1189
	mov	esi, OFFSET FLAT:.str.9_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1189
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1189
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1189
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1189
	mov	esi, OFFSET FLAT:.str.13_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1189
	mov	esi, OFFSET FLAT:.str.14_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1189
	mov	esi, OFFSET FLAT:.str.15_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1189
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_1189
	cmp	qword ptr [rsp + 0x18], 0
	sete	r14b
	mov	esi, OFFSET FLAT:.str.17_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1189
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1189:
	mov	al, byte ptr [r12 + 0x28]
	and	al, 0xfe
	or	al, r14b
	mov	byte ptr [r12 + 0x28], al
	mov	rbp, qword ptr [r12]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_1203
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_1204
	movzx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2f
	jne	.label_1204
	mov	rbp, qword ptr [r12 + 0x18]
	mov	esi, OFFSET FLAT:.str.18_2
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1203
	mov	esi, OFFSET FLAT:.str.19_1
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1203
	nop	
.label_1204:
	mov	rsi, qword ptr [r12]
	mov	edi, OFFSET FLAT:.str.20_0
	call	strcmp
	test	eax, eax
	sete	r13b
.label_1203:
	mov	al, byte ptr [r12 + 0x28]
	add	r13b, r13b
	and	al, 0xfd
	or	al, r13b
	mov	byte ptr [r12 + 0x28], al
	mov	qword ptr [r12 + 0x20], -1
	mov	qword ptr [r15], r12
	add	r12, 0x30
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	mov	r15, r12
	jne	.label_1207
	jmp	.label_1191
.label_1200:
	mov	rdi, r14
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_1192
	jmp	.label_1193
.label_1202:
	mov	r12, r15
.label_1191:
	mov	rdi, rbx
	call	endmntent
	test	eax, eax
	je	.label_1193
.label_1192:
	mov	qword ptr [r12], 0
	mov	rax, qword ptr [rsp + 0x60]
	jmp	.label_1196
.label_1193:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	qword ptr [r12], 0
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_1197
	nop	word ptr [rax + rax]
.label_1199:
	mov	rbx, qword ptr [rdi + 0x30]
	call	free_mount_entry
	mov	qword ptr [rsp + 0x60], rbx
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1199
.label_1197:
	mov	dword ptr [rbp], r14d
	xor	eax, eax
.label_1196:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e890

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	strlen
	xor	ecx, ecx
	inc	rax
	je	.label_1211
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_1210:
	lea	rsi, [rcx + 4]
	cmp	rsi, rax
	jae	.label_1208
	movzx	esi, byte ptr [r14 + rcx]
	cmp	esi, 0x5c
	jne	.label_1208
	mov	sil, byte ptr [rcx + r14 + 1]
	mov	bl, sil
	and	bl, 0xfc
	movzx	edi, bl
	cmp	edi, 0x30
	jne	.label_1208
	mov	dil, byte ptr [rcx + r14 + 2]
	mov	bl, dil
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_1208
	mov	r8b, byte ptr [r14 + rcx + 3]
	mov	bl, r8b
	and	bl, 0xf8
	movzx	ebx, bl
	cmp	ebx, 0x30
	jne	.label_1208
	add	rcx, 3
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rdx], dil
	jmp	.label_1209
	nop	word ptr [rax + rax]
.label_1208:
	mov	bl, byte ptr [r14 + rcx]
	mov	byte ptr [rdx], bl
.label_1209:
	inc	rcx
	inc	rdx
	cmp	rcx, rax
	jb	.label_1210
.label_1211:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e940

	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	test	byte ptr [rbx + 0x28], 4
	je	.label_1212
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1212:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e980
	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:

	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_1213
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_1213:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e9e0

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	dword ptr [rsp + 0xa4], 0
	mov	al, byte ptr [rbx + 0x38]
	mov	qword ptr [rbx + 0x18], r15
	mov	qword ptr [rbx + 0x10], 0
	mov	qword ptr [rbx + 0x30], 0
	and	al, 0x90
	mov	byte ptr [rbx + 0x38], al
	mov	r14, qword ptr [rbx]
	cmp	qword ptr [rbx + 8], 0xe7
	jbe	.label_1218
.label_1219:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	jne	.label_1214
	mov	rcx, qword ptr [rbx + 0x28]
	mov	ebp, r15d
	and	ebp, 0x400000
	mov	r8, rbp
	shr	r8, 0x16
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r14
	call	re_string_construct
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	jne	.label_1216
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 8]
	lea	rcx, [rsp + 0xa4]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_1216
	mov	rdi, rbx
	call	analyze
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	jne	.label_1216
	test	rbp, rbp
	jne	.label_1215
	mov	al, byte ptr [r14 + 0xb0]
	and	al, 4
	je	.label_1215
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_1215
	mov	rdi, r14
	call	optimize_utf8
.label_1215:
	mov	rdi, r14
	call	create_initial_state
	mov	dword ptr [rsp + 0xa4], eax
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 8]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xa4], 0
	je	.label_1220
	jmp	.label_1214
.label_1216:
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 8]
	call	re_string_destruct
.label_1214:
	mov	rdi, r14
	call	free_dfa_content
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1220:
	mov	eax, dword ptr [rsp + 0xa4]
.label_1217:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1218:
	mov	esi, 0xe8
	mov	rdi, r14
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	test	r14, r14
	je	.label_1217
	mov	qword ptr [rbx + 8], 0xe8
	mov	qword ptr [rbx], r14
	jmp	.label_1219
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eb80
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40eb90

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_1221
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1221:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_1222
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1222:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_1223
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_1223:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec60

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x158
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rdi]
	mov	qword ptr [rsp + 0x28], rdx
	cmp	dword ptr [rdx + 0xb4], 1
	jne	.label_1239
	mov	r14b, byte ptr [rdi + 0x1a]
	mov	qword ptr [rsp + 0x20], rdi
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_1228
.label_1239:
	mov	qword ptr [rsp + 0x20], rdi
	xor	r14d, r14d
.label_1228:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_1241
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1231:
	mov	rax, qword ptr [rsi + 0x18]
	mov	r13, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rdx]
	mov	rbx, r13
	shl	rbx, 4
	mov	qword ptr [rsp + 0x30], rbx
	movzx	r12d, byte ptr [rax + rbx + 8]
	add	rax, rbx
	cmp	r12d, 6
	je	.label_1238
	mov	qword ptr [rsp + 0x18], rcx
	cmp	r12d, 3
	mov	ebp, 0
	mov	r15d, 0
	je	.label_1244
	cmp	r12d, 1
	jne	.label_1225
	movzx	edi, byte ptr [rax]
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_1230
	mov	rbp, rdx
	call	tolower
	mov	rdx, rbp
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_1230:
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_1226
	cmp	dword ptr [rdx + 0xb4], 2
	jl	.label_1226
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + rbx]
	mov	byte ptr [rsp + 0x40], al
	inc	r13
	cmp	r13, qword ptr [rdx + 0x10]
	lea	rbp, [rsp + 0x41]
	lea	r15, [rsp + 0x148]
	lea	r12, [rsp + 0x40]
	mov	esi, 0x2000ff
	jae	.label_1242
	add	rbx, 0x18
	lea	rbp, [rsp + 0x41]
	nop	word ptr cs:[rax + rax]
.label_1237:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + rbx]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_1242
	mov	al, byte ptr [rax + rbx - 8]
	mov	byte ptr [rbp], al
	inc	rbp
	inc	r13
	add	rbx, 0x10
	cmp	r13, qword ptr [rdx + 0x10]
	jb	.label_1237
.label_1242:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x148], 0
	sub	rbp, r12
	lea	rdi, [rsp + 0x154]
	mov	rsi, r12
	mov	rdx, rbp
	mov	rcx, r15
	call	rpl_mbrtowc
	cmp	rax, rbp
	jne	.label_1227
	mov	edi, dword ptr [rsp + 0x154]
	call	towlower
	mov	rdi, r12
	mov	esi, eax
	mov	rdx, r15
	call	wcrtomb
	cmp	rax, -1
	je	.label_1227
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
	jmp	.label_1227
	nop	
.label_1244:
	mov	rax, qword ptr [rdx]
	mov	rax, qword ptr [rax + rbx]
	mov	rbx, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [rsp + 0x38]
	lea	r13, [rax + r15]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1243:
	bt	rbx, r12
	jae	.label_1240
	mov	byte ptr [r13 + r12], 1
	test	r14b, r14b
	je	.label_1240
	lea	edi, [r15 + r12]
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_1240:
	inc	r12
	cmp	r12, 0x40
	jne	.label_1243
	inc	rbp
	add	r15, 0x40
	cmp	rbp, 4
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_1244
	jmp	.label_1226
	nop	word ptr [rax + rax]
.label_1238:
	mov	r15, qword ptr [rax]
	cmp	dword ptr [rdx + 0xb4], 1
	jle	.label_1235
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1234
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1234
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_1235
.label_1234:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x148], 0
	lea	rbp, [rsp + 0x148]
	mov	r15, rbp
	lea	rbp, [rsp + 0x40]
	nop	dword ptr [rax]
.label_1232:
	mov	qword ptr [rsp + 0x40], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, r15
	mov	rcx, rbp
	call	rpl_mbrtowc
	cmp	rax, -2
	jne	.label_1245
	movzx	eax, byte ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_1245:
	inc	byte ptr [rsp + 0x148]
	jne	.label_1232
.label_1227:
	mov	rdx, rbx
	jmp	.label_1226
	nop	word ptr cs:[rax + rax]
.label_1225:
	cmp	r12d, 2
	je	.label_1236
	mov	eax, r12d
	or	eax, 2
	cmp	eax, 7
	jne	.label_1226
	jmp	.label_1236
.label_1235:
	mov	qword ptr [rsp + 0x18], rcx
	cmp	qword ptr [r15 + 0x28], 0
	jle	.label_1226
	xor	ebp, ebp
.label_1224:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x148], 0
	mov	rax, qword ptr [r15]
	mov	esi, dword ptr [rax + rbp*4]
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	lea	r12, [rsp + 0x148]
	mov	rdx, r12
	call	wcrtomb
	cmp	rax, -1
	je	.label_1229
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_1229
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_1229:
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0x1a], 0x40
	mov	rdx, rbx
	je	.label_1233
	cmp	dword ptr [rdx + 0xb4], 2
	jl	.label_1233
	mov	rax, qword ptr [r15]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rbx, rdx
	call	towlower
	mov	rdi, r13
	mov	esi, eax
	mov	rdx, r12
	call	wcrtomb
	mov	rdx, rbx
	cmp	rax, -1
	je	.label_1233
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
	nop	
.label_1233:
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x28]
	jl	.label_1224
	nop	dword ptr [rax]
.label_1226:
	mov	rcx, qword ptr [rsp + 0x18]
	inc	rcx
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	rcx, qword ptr [rsi + 0x10]
	jl	.label_1231
.label_1241:
	add	rsp, 0x158
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1236:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, qword ptr [rsp + 0x38]
	call	memset
	cmp	r12d, 2
	jne	.label_1241
	mov	rax, qword ptr [rsp + 0x20]
	or	byte ptr [rax + 0x38], 1
	jmp	.label_1241
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f060

	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1246
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_1248
	and	byte ptr [r15 + 0x38], 0x7f
	jmp	.label_1249
.label_1248:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_1249:
	mov	al, byte ptr [r15 + 0x38]
	add	ebp, ebp
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_1247
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_1246:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1247:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_1246
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f150
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_1250
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_1253
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_1252
.label_1251:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_1253:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1252:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_1251
.label_1250:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f1d0

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_1254
	call	free_dfa_content
.label_1254:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f210

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14], 0
	je	.label_1258
	xor	r15d, r15d
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1258
	xor	ebx, ebx
	nop	
.label_1255:
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	call	free_token
	inc	rbx
	add	r15, 0x10
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1255
.label_1258:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1259
	xor	r15d, r15d
	mov	ebx, 0x10
.label_1260:
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_1262
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1262:
	mov	rax, qword ptr [r14 + 0x38]
	test	rax, rax
	je	.label_1266
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1266:
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	je	.label_1256
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1256:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_1260
.label_1259:
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_1257
	xor	r15d, r15d
.label_1261:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_1263
	lea	r13, [rax + rcx*8]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1265:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_1265
.label_1263:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1261
.label_1257:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1264
	call	free
.label_1264:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f360

	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, 2
	cmp	ebp, 7
	ja	.label_1267
	test	bpl, 4
	jne	.label_1269
	mov	rdi, r14
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1268
.label_1269:
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_1268:
	test	byte ptr [rbx + 0x38], 0x10
	jne	.label_1271
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	jmp	.label_1270
.label_1271:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
.label_1270:
	mov	rdi, rbx
	mov	rsi, r14
	mov	r8, rdx
	mov	r9, rdx
	call	re_search_internal
	test	eax, eax
	setne	al
	movzx	eax, al
.label_1267:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f400

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x188
	mov	r15, rcx
	mov	r14, rdi
	mov	r12, qword ptr [rsp + 0x1c0]
	mov	rbx, qword ptr [r14]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	qword ptr [rsp + 0x118], rbx
	mov	rax, qword ptr [r14 + 0x20]
	xor	r10d, r10d
	test	rax, rax
	je	.label_1272
	mov	cl, byte ptr [r14 + 0x38]
	and	cl, 9
	movzx	ecx, cl
	xor	edi, edi
	cmp	ecx, 8
	cmovne	rax, rdi
	cmp	r15, r8
	cmove	rax, rdi
	mov	r10, rax
.label_1272:
	mov	rax, qword ptr [r14 + 0x30]
	lea	rdi, [r12 - 1]
	mov	rcx, rdi
	sub	rcx, rax
	xor	ebp, ebp
	cmp	rax, r12
	cmovb	rbp, rcx
	mov	r13d, 1
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1280
	mov	rax, qword ptr [rbx + 0x48]
	test	rax, rax
	je	.label_1280
	mov	rcx, qword ptr [rbx + 0x50]
	test	rcx, rcx
	je	.label_1280
	mov	r11, qword ptr [rbx + 0x58]
	test	r11, r11
	je	.label_1280
	cmp	qword ptr [rbx + 0x60], 0
	je	.label_1280
	mov	qword ptr [rsp + 0x58], r9
	mov	r9, qword ptr [r14 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1289
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_1295
.label_1289:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1298
	mov	qword ptr [rsp + 0x50], r8
.label_1295:
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x48], r10
	mov	qword ptr [rsp + 0x18], rdi
	mov	byte ptr [rsp + 0x67], 1
	cmp	rbp, r12
	jne	.label_1303
	cmp	qword ptr [rbx + 0x98], 0
	setne	byte ptr [rsp + 0x67]
.label_1303:
	mov	rcx, qword ptr [rbx + 0x10]
	inc	rcx
	mov	r8, qword ptr [r14 + 0x28]
	mov	r9d, 0x400000
	and	r9, qword ptr [r14 + 0x18]
	shr	r9, 0x16
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 0x78], rbx
	lea	rdi, [rsp + 0x80]
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0x70], rdx
	call	re_string_allocate
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1278
	mov	esi, dword ptr [rsp + 0x1d0]
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xe0], rax
	mov	al, byte ptr [r14 + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	rax, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rax + 0x98]
	add	rdx, rdx
	lea	rdi, [rsp + 0x80]
	call	match_ctx_init
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1278
	mov	rax, r12
	sub	rax, rbp
	mov	qword ptr [rsp + 0x40], rax
	cmp	rax, 1
	ja	.label_1283
	mov	rax, qword ptr [rsp + 0x78]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_1283
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_1290
.label_1283:
	mov	qword ptr [rsp + 0x10], rbp
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	movabs	rcx, 0x1ffffffffffffffe
	cmp	rax, rcx
	ja	.label_1278
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_1278
.label_1290:
	mov	qword ptr [rsp + 0x180], r15
	mov	eax, dword ptr [rsp + 0x1d0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, r15
	mov	r11d, 0xffffffff
	mov	ecx, 1
	cmovge	r11d, ecx
	mov	r13, r15
	cmovle	r13, rax
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, rax
	cmovl	rbp, r15
	mov	qword ptr [rsp + 0x38], rbp
	mov	r8, qword ptr [rsp + 0x78]
	mov	ecx, dword ptr [r8 + 0xb4]
	mov	dword ptr [rsp + 0x58], ecx
	mov	esi, 8
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	mov	rbx, qword ptr [rsp + 0x30]
	je	.label_1316
	cmp	dword ptr [rsp + 0x58], 1
	je	.label_1338
	mov	edx, 0x400000
	xor	r9d, r9d
	test	rbx, rbx
	jne	.label_1275
	and	rdx, qword ptr [r14 + 0x18]
	jne	.label_1275
.label_1338:
	mov	r9d, 4
.label_1275:
	cmp	r15, rax
	setle	dl
	test	rbx, rbx
	setne	cl
	movzx	ecx, cl
	movzx	edx, dl
	lea	esi, [rcx + rdx*2]
	or	esi, r9d
.label_1316:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r13
	mov	rdx, qword ptr [rsp + 0x70]
	mov	r9, qword ptr [rsp + 0x68]
	jl	.label_1291
	cmp	rbp, rcx
	jl	.label_1331
	xor	r10d, r10d
	cmp	r15, rax
	lea	rcx, [rsp + 0x180]
	cmovg	rcx, r10
	mov	qword ptr [rsp + 0x20], rcx
	movsxd	r15, r11d
	add	esi, -4
	mov	qword ptr [rsp + 0x50], rsi
.label_1319:
	cmp	esi, 4
	ja	.label_1299
	mov	rax, qword ptr [rsp + 0x50]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1315]]
.label_2663:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r13
	jl	.label_1306
	nop	dword ptr [rax]
.label_1326:
	xor	eax, eax
	cmp	rcx, rdx
	jge	.label_1321
	movzx	eax, byte ptr [r9 + rcx]
.label_1321:
	test	rbx, rbx
	je	.label_1323
	movzx	eax, byte ptr [rbx + rax]
.label_1323:
	cmp	byte ptr [rdi + rax], 0
	jne	.label_1306
	mov	rax, qword ptr [rsp + 0x180]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x180], rcx
	cmp	rax, r13
	jg	.label_1326
.label_1306:
	cmp	qword ptr [rsp + 0x180], r13
	jge	.label_1276
	jmp	.label_1308
	nop	word ptr [rax + rax]
.label_1327:
	mov	rax, qword ptr [rsp + 0x180]
	add	rax, r15
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	jl	.label_1308
	cmp	rax, rbp
	jle	.label_1299
	jmp	.label_1308
.label_1318:
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	r15, r9
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x78], r8
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1278
	mov	rax, qword ptr [rsp + 0x180]
	sub	rax, qword ptr [rsp + 0xa8]
	mov	r8, qword ptr [rsp + 0x78]
	mov	rdx, rbp
	mov	r9, r15
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_1301
	nop	word ptr cs:[rax + rax]
.label_1299:
	mov	rsi, qword ptr [rsp + 0x180]
	mov	rax, rsi
	sub	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0xb8]
	jae	.label_1318
.label_1301:
	cmp	qword ptr [rsp + 0x180], rdx
	mov	ecx, 0
	jge	.label_1325
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_1325:
	cmp	byte ptr [rdi + rcx], 0
	je	.label_1327
	jmp	.label_1276
.label_2664:
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_1329
	nop	word ptr cs:[rax + rax]
.label_1273:
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_1329:
	cmp	rax, rbp
	jge	.label_1279
	movzx	ecx, byte ptr [r9 + rax]
	cmp	byte ptr [rdi + rcx], 0
	je	.label_1273
	jmp	.label_1279
.label_2665:
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_1281
	nop	word ptr [rax + rax]
.label_1288:
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_1281:
	cmp	rax, rbp
	jge	.label_1279
	movzx	ecx, byte ptr [r9 + rax]
	movzx	ecx, byte ptr [rbx + rcx]
	cmp	byte ptr [rdi + rcx], 0
	je	.label_1288
.label_1279:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, rbp
	je	.label_1294
.label_1276:
	mov	rbp, rdi
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	test	eax, eax
	jne	.label_1309
	cmp	dword ptr [rsp + 0x58], 1
	je	.label_1311
	mov	rcx, qword ptr [rsp + 0xb0]
	test	rcx, rcx
	je	.label_1311
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	dword ptr [rcx], -1
	je	.label_1296
.label_1311:
	mov	dword ptr [rsp + 0x30], eax
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x67]
	lea	rdi, [rsp + 0x80]
	mov	rdx, qword ptr [rsp + 0x20]
	call	check_matching
	cmp	rax, -1
	je	.label_1328
	mov	r13d, 0xc
	cmp	rax, -2
	je	.label_1278
	mov	qword ptr [rsp + 0x128], rax
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_1312
	mov	cl, byte ptr [r14 + 0x38]
	and	cl, 0x10
	je	.label_1337
.label_1312:
	mov	rcx, qword ptr [rsp + 0x78]
	cmp	qword ptr [rcx + 0x98], 0
	je	.label_1274
.label_1337:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, rax
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
.label_1274:
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_1292
	mov	al, byte ptr [r14 + 0x38]
	and	al, 0x10
	jne	.label_1292
	mov	rax, qword ptr [rsp + 0x78]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1297
.label_1292:
	mov	rax, qword ptr [rsp + 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1302
.label_1297:
	lea	rdi, [rsp + 0x80]
	call	prune_impossible_nodes
	mov	r13d, eax
	mov	dword ptr [rsp + 0x30], 0
	test	r13d, r13d
	je	.label_1302
	cmp	r13d, 1
	jne	.label_1278
.label_1328:
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x28]
.label_1296:
	mov	rax, qword ptr [rsp + 0x180]
	add	rax, r15
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	mov	rdi, rbp
	jl	.label_1330
	mov	rbp, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	mov	r8, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	r9, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x50]
	jge	.label_1319
	jmp	.label_1305
.label_1294:
	xor	eax, eax
	cmp	rcx, rdx
	jge	.label_1333
	movzx	eax, byte ptr [r9 + rcx]
.label_1333:
	test	rbx, rbx
	je	.label_1336
	movzx	eax, byte ptr [rbx + rax]
.label_1336:
	cmp	byte ptr [rdi + rax], 0
	jne	.label_1276
.label_1308:
	mov	qword ptr [rsp + 0x78], r8
	mov	r13d, 1
	jmp	.label_1278
.label_1291:
	mov	r13d, 1
	jmp	.label_1278
.label_1331:
	mov	r13d, 1
	jmp	.label_1278
.label_1302:
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	rdx, r12
	je	.label_1282
	cmp	qword ptr [rsp + 0x40], 2
	mov	rsi, qword ptr [rsp + 0x1c8]
	jb	.label_1293
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, rdx
	lea	rcx, [rsi + 0x10]
.label_1300:
	mov	qword ptr [rcx + 8], -1
	mov	qword ptr [rcx], -1
	add	rcx, 0x10
	dec	rax
	jne	.label_1300
.label_1293:
	mov	rbx, rdx
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rsi + 8], rax
	mov	rbp, rsi
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_1286
	mov	al, byte ptr [r14 + 0x38]
	and	al, 0x10
	jne	.label_1286
	mov	dword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x78]
	test	byte ptr [rcx + 0xb0], 1
	mov	eax, 0
	je	.label_1335
	cmp	qword ptr [rcx + 0x98], 0
	setg	al
.label_1335:
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, rbp
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_1278
.label_1286:
	mov	rdx, rbx
	cmp	rdx, r12
	je	.label_1332
	mov	al, byte ptr [rsp + 0x10c]
	lea	r8, [rsp + 0xb8]
	mov	r9, qword ptr [rsp + 0x98]
	lea	rsi, [rbp + 8]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_1322
.label_1298:
	cmp	qword ptr [r11 + 0x10], 0
	je	.label_1284
	cmp	byte ptr [r14 + 0x38], 0
	js	.label_1285
.label_1284:
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	test	r15, r15
	je	.label_1287
	test	r8, r8
	mov	r15d, 0
	jne	.label_1280
	jmp	.label_1295
.label_1309:
	mov	r13d, eax
	jmp	.label_1278
.label_1277:
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	je	.label_1317
	lea	rcx, [r9 + rbx*8]
.label_1317:
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsi - 8], rcx
	mov	rbx, qword ptr [rsi]
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	je	.label_1307
	lea	rcx, [r9 + rbx*8]
.label_1307:
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsi], rcx
	jmp	.label_1313
.label_1322:
	mov	rbx, qword ptr [rsi - 8]
	cmp	rbx, -1
	je	.label_1314
	test	al, al
	jne	.label_1277
.label_1313:
	mov	rcx, qword ptr [rsp + 0x180]
	add	qword ptr [rsi - 8], rcx
	add	qword ptr [rsi], rcx
.label_1314:
	add	rsi, 0x10
	dec	rdi
	jne	.label_1322
.label_1332:
	test	rdx, rdx
	mov	rbx, qword ptr [rsp + 0x18]
	jle	.label_1324
	sub	r12, rdx
	shl	r12, 4
	add	r12, rbp
	mov	rax, rdx
	nop	word ptr cs:[rax + rax]
.label_1320:
	mov	qword ptr [r12 + 8], -1
	mov	qword ptr [r12], -1
	add	r12, 0x10
	dec	rax
	jne	.label_1320
.label_1324:
	mov	rdi, qword ptr [rsp + 0x78]
	cmp	qword ptr [rdi + 0xe0], 0
	je	.label_1282
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_1282
	mov	rax, qword ptr [rdi + 0xe0]
	sub	rbx, rdx
	lea	rcx, [rbp + 0x18]
	xor	edx, edx
.label_1310:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_1334
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + rbp + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rdi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + rbp + 0x18]
	mov	qword ptr [rcx], rsi
.label_1334:
	inc	rdx
	add	rcx, 0x10
	cmp	rbx, rdx
	jne	.label_1310
.label_1282:
	mov	r13d, dword ptr [rsp + 0x30]
.label_1278:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1304
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_1304:
	lea	rdi, [rsp + 0x80]
	call	re_string_destruct
.label_1280:
	mov	eax, r13d
	add	rsp, 0x188
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1285:
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_1295
.label_1287:
	xor	r15d, r15d
	jmp	.label_1295
.label_1330:
	mov	r13d, 1
	jmp	.label_1278
.label_1305:
	mov	r13d, 1
	jmp	.label_1278
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fdc0
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fde0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	test	rcx, rcx
	mov	r14, -1
	js	.label_1346
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], r9
	cmp	rcx, rdx
	jg	.label_1346
	mov	r14, qword ptr [rsp + 0x80]
	xor	r15d, r15d
	add	r8, rcx
	cmovns	r15, r8
	cmp	r8, rdx
	cmovg	r15, rdx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	r15, rcx
	jle	.label_1341
	test	r12b, 8
	jne	.label_1341
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	je	.label_1341
	mov	rbp, rdi
	mov	r13, rcx
	mov	rbx, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, rbx
	mov	rdi, rbp
	mov	rcx, r13
.label_1341:
	xor	esi, esi
	test	r14, r14
	mov	ebx, 1
	je	.label_1344
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x40], rcx
	mov	al, byte ptr [rdi + 0x38]
	mov	cl, al
	and	cl, 0x10
	jne	.label_1347
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_1349
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_1339
.label_1349:
	mov	rbx, qword ptr [rdi + 0x30]
	inc	rbx
.label_1345:
	mov	rsi, r14
	jmp	.label_1347
.label_1344:
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x40], rcx
.label_1347:
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbp, rdi
	mov	rdi, rbx
	shl	rdi, 4
	call	malloc
	mov	r13, rax
	mov	r14, -2
	test	r13, r13
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_1346
	mov	al, r12b
	shr	al, 5
	and	al, 1
	and	r12d, 0x40
	movzx	eax, al
	shr	r12d, 5
	or	r12d, eax
	mov	dword ptr [rsp + 0x10], r12d
	mov	qword ptr [rsp + 8], r13
	mov	r14, rbx
	mov	qword ptr [rsp], r14
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	mov	r8, r15
	mov	r9, qword ptr [rsp + 0x30]
	call	re_search_internal
	test	eax, eax
	je	.label_1343
	cmp	eax, 1
	sete	al
	movzx	r14d, al
	or	r14, 0xfffffffffffffffe
	jmp	.label_1342
.label_1343:
	mov	rdx, r14
	mov	rdi, qword ptr [rsp + 0x20]
	test	rdi, rdi
	je	.label_1348
	mov	al, byte ptr [rbp + 0x38]
	shr	al, 1
	and	al, 3
	movzx	ecx, al
	mov	rsi, r13
	call	re_copy_regs
	mov	cl, byte ptr [rbp + 0x38]
	add	al, al
	and	cl, 0xf9
	mov	dl, al
	and	dl, 6
	or	dl, cl
	and	al, 6
	mov	byte ptr [rbp + 0x38], dl
	mov	r14, -2
	je	.label_1342
.label_1348:
	mov	al, byte ptr [rsp + 0x88]
	mov	r14, qword ptr [r13]
	test	al, al
	je	.label_1342
	cmp	r14, rbx
	jne	.label_1340
	mov	r14, qword ptr [r13 + 8]
	sub	r14, rbx
.label_1342:
	mov	rdi, r13
	call	free
.label_1346:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1339:
	xor	ecx, ecx
	test	rax, rax
	cmovle	r14, rcx
	mov	ebx, 1
	cmovg	rbx, rax
	jmp	.label_1345
.label_1340:
	mov	edi, OFFSET FLAT:.str.21_1
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ffd0
	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:

	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fff0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	sub	rsp, 0x28
	mov	r10, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x10], rax
.label_2824:
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x18], 1
	mov	qword ptr [rsp], 0
	call	re_search_2_stub
	add	rsp, 0x28
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410030

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1352
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_1355
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_1352
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1351
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_1353
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1352
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_1351
.label_1355:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1354
.label_1352:
	mov	rax, -2
	jmp	.label_1350
.label_1354:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_1351
.label_1353:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_1351:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	movzx	ecx, byte ptr [rsp + 0x78]
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp], rax
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1350:
	add	rsp, 0x28
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
	#Procedure 0x410170
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	sub	rsp, 0x28
	mov	r10, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 0x18], 0
	call	re_search_2_stub
	add	rsp, 0x28
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4101b0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	test	rdx, rdx
	je	.label_1356
	or	al, 2
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_1356:
	mov	byte ptr [rdi + 0x38], al
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	mov	qword ptr [rsi + 0x10], 0
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4101e0

	.globl free_token
	.type free_token, @function
free_token:
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_1357
	mov	rdi, qword ptr [rdi]
	jmp	free_charset
.label_1357:
	cmp	eax, 3
	jne	.label_1358
	mov	rdi, qword ptr [rdi]
	jmp	free
.label_1358:
	ret	
	.section	.text
	.align	32
	#Procedure 0x410200

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_1359
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_1359:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410260

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x410290

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0xd0], xmm0
	movups	xmmword ptr [r15 + 0xc0], xmm0
	movups	xmmword ptr [r15 + 0xb0], xmm0
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0xe0], 0
	mov	dword ptr [r15 + 0x80], 0xf
	mov	r14d, 0xc
	movabs	rax, 0x555555555555554
	cmp	rbp, rax
	ja	.label_1363
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r15], rax
	mov	eax, 1
.label_1360:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, rbp
	jbe	.label_1360
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r15 + 0x40], rax
	dec	rbx
	mov	qword ptr [r15 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r15 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x75
	jne	.label_1365
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_1365
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x66
	jne	.label_1365
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_1365
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_1365
	or	byte ptr [r15 + 0xb0], 4
.label_1365:
	mov	al, byte ptr [r15 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1364
	test	al, 4
	jne	.label_1368
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	xor	r12d, r12d
	test	rax, rax
	je	.label_1363
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1367:
	xor	ebp, ebp
	mov	ebx, r14d
	nop	word ptr cs:[rax + rax]
.label_1361:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_1369
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rcx, qword ptr [r15 + 0x78]
	or	qword ptr [rcx + r12*8], rdx
.label_1369:
	cmp	ebx, 0x7f
	ja	.label_1366
	cmp	ebx, eax
	je	.label_1366
	or	byte ptr [r15 + 0xb0], 8
.label_1366:
	inc	rbp
	inc	ebx
	cmp	rbp, 0x40
	jne	.label_1361
	add	r14d, 0x40
	inc	r12
	cmp	r12, 4
	jne	.label_1367
	jmp	.label_1364
.label_1368:
	mov	qword ptr [word ptr [r15 + 120]], OFFSET FLAT:utf8_sb_map
.label_1364:
	cmp	qword ptr [r15], 0
	je	.label_1362
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_1363
.label_1362:
	mov	r14d, 0xc
.label_1363:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4104b0

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r13d, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x90], 0
	movzx	r8d, r13b
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	re_string_construct_common
	test	r15, r15
	jle	.label_1373
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1371
.label_1373:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1376
	mov	rbp, qword ptr [rbx + 8]
.label_1376:
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_1378
	cmp	eax, 2
	jl	.label_1377
	nop	
.label_1370:
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1371
	xor	eax, eax
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_1371
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	cmp	rsi, rcx
	jg	.label_1371
	add	rsi, rsi
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	je	.label_1370
	jmp	.label_1371
.label_1378:
	cmp	eax, 2
	jl	.label_1372
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_1374
.label_1377:
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_1374
.label_1372:
	test	r12, r12
	je	.label_1375
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_1374
.label_1375:
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
.label_1374:
	xor	eax, eax
.label_1371:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4105d0

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	push	r14
	push	rbx
	push	rax
	mov	r14, qword ptr [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	test	rdi, rdi
	je	.label_1379
.label_1380:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1380
.label_1379:
	mov	qword ptr [r14 + 0x70], 0
	mov	dword ptr [r14 + 0x80], 0xf
	mov	qword ptr [r14 + 0x68], 0
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	qword ptr [r14 + 0x20], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410630

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1381
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
.label_1381:
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410660

	.globl parse
	.type parse, @function
parse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	r15, qword ptr [r13]
	mov	qword ptr [r15 + 0xd8], rbx
	or	rdx, 0x800000
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	fetch_token
	xor	r12d, r12d
	xor	r8d, r8d
	mov	rdi, rbp
	mov	rsi, r13
	lea	rdx, [rsp + 8]
	mov	rcx, rbx
	mov	r9, r14
	call	parse_reg_exp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1386
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_1383
.label_1386:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	r13, rax
	test	rbx, rbx
	je	.label_1385
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r13
	call	create_tree
	mov	r12, rax
	jmp	.label_1384
.label_1385:
	mov	r12, r13
.label_1384:
	test	r13, r13
	je	.label_1382
	test	r12, r12
	je	.label_1382
.label_1383:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1382:
	mov	dword ptr [r14], 0xc
	xor	r12d, r12d
	jmp	.label_1383
	.section	.text
	.align	32
	#Procedure 0x410720

	.globl analyze
	.type analyze, @function
analyze:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, 0xc
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_1389
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_1389
	test	rcx, rcx
	je	.label_1389
	mov	rcx, qword ptr [rbx + 0x28]
	test	rcx, rcx
	je	.label_1389
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	je	.label_1392
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_1388
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1387:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_1387
.label_1388:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rdx, rbx
	call	preorder
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_1390
	mov	rcx, qword ptr [rbx + 0xe0]
	xor	eax, eax
.label_1391:
	cmp	rax, qword ptr [rcx + rax*8]
	jne	.label_1390
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	jb	.label_1391
.label_1390:
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_1392
	mov	rdi, qword ptr [rbx + 0xe0]
	call	free
	mov	qword ptr [rbx + 0xe0], 0
.label_1392:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	test	eax, eax
	jne	.label_1389
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	test	eax, eax
	jne	.label_1389
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	call	preorder
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, rbx
	call	preorder
	test	eax, eax
	jne	.label_1389
	mov	rdi, rbx
	call	calc_eclosure
	test	eax, eax
	jne	.label_1389
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_1394
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_1394
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_1393
.label_1394:
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_1389
.label_1393:
	mov	rax, qword ptr [rbx + 0x10]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x38], rax
	test	rax, rax
	mov	eax, 0xc
	je	.label_1389
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	calc_inveclosure
.label_1389:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410900

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1395
	mov	r11, qword ptr [rdi]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	xor	r10d, r10d
	xor	eax, eax
.label_1396:
	mov	rsi, rax
	shl	rsi, 4
	movzx	edx, byte ptr [r11 + rsi + 8]
	dec	edx
	cmp	edx, 0xb
	ja	.label_1403
	lea	rcx, [r11 + rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1408]]
.label_2910:
	mov	dl, 1
	cmp	byte ptr [rcx], 0
	js	.label_1397
	mov	dl, r10b
.label_1397:
	mov	r10b, dl
	jmp	.label_1400
.label_2911:
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	edx, 2
	nop	
.label_1405:
	cmp	qword ptr [rsi + rdx*8], 0
	jne	.label_1401
	inc	rdx
	cmp	rdx, 3
	jle	.label_1405
	jmp	.label_1400
.label_2912:
	mov	r9b, 1
	jmp	.label_1400
.label_2913:
	mov	edx, dword ptr [rcx]
	lea	ecx, [rdx - 0x10]
	cmp	ecx, 0x30
	ja	.label_1409
	bt	r8, rcx
	jb	.label_1400
.label_1409:
	cmp	edx, 0x80
	jne	.label_1401
	nop	word ptr [rax + rax]
.label_1400:
	inc	rax
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_1396
	jmp	.label_1406
.label_1395:
	xor	r9d, r9d
	xor	r10d, r10d
.label_1406:
	mov	r8b, r9b
	and	r8b, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_1398
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1398
	xor	eax, eax
	mov	edx, 8
	nop	word ptr cs:[rax + rax]
.label_1404:
	mov	rsi, qword ptr [rdi]
	mov	r9d, dword ptr [rsi + rdx]
	movzx	ecx, r9b
	cmp	ecx, 1
	jne	.label_1402
	cmp	byte ptr [rsi + rdx - 8], 0
	js	.label_1407
.label_1402:
	mov	r9, qword ptr [rdi]
	mov	esi, dword ptr [r9 + rdx]
	movzx	ecx, sil
	cmp	ecx, 5
	jne	.label_1399
	and	esi, 0xffffff00
	or	esi, 7
	mov	dword ptr [r9 + rdx], esi
	jmp	.label_1399
.label_1407:
	and	r9d, 0xffdfffff
	mov	dword ptr [rsi + rdx], r9d
	nop	word ptr cs:[rax + rax]
.label_1399:
	inc	rax
	add	rdx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_1404
.label_1398:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	cmp	qword ptr [rdi + 0x98], 0
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_1401:
	ret	
.label_1403:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x410a70

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r15 + 0x90], rax
	mov	rcx, qword ptr [r15 + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rsp]
	call	re_node_set_init_copy
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1417
	cmp	qword ptr [r15 + 0x98], 0
	jle	.label_1411
	cmp	qword ptr [rsp + 8], 0
	jle	.label_1411
	xor	r13d, r13d
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1416:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15]
	mov	r10, r8
	shl	r10, 4
	movzx	r9d, byte ptr [rax + r10 + 8]
	cmp	r9d, 4
	jne	.label_1410
	cmp	qword ptr [rsp + 8], 0
	mov	esi, 0
	jle	.label_1412
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	add	r10, rdi
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1413:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	movzx	edx, byte ptr [rdi + rbx + 8]
	cmp	edx, 9
	jne	.label_1420
	mov	rdx, qword ptr [rdi + rbx]
	cmp	rdx, qword ptr [r10]
	je	.label_1412
.label_1420:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1413
.label_1412:
	cmp	r9d, 4
	setne	al
	cmp	rsi, qword ptr [rsp + 8]
	je	.label_1410
	test	al, al
	jne	.label_1410
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1410
	mov	rax, qword ptr [r15 + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	mov	r13d, 0
	jne	.label_1417
	nop	word ptr [rax + rax]
.label_1410:
	inc	r13
	cmp	r13, qword ptr [rsp + 8]
	jl	.label_1416
.label_1411:
	lea	rdi, [rsp + 0x1c]
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rsi, r15
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	test	rax, rax
	je	.label_1415
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1418
	mov	qword ptr [r15 + 0x60], rax
	mov	qword ptr [r15 + 0x58], rax
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_1419
.label_1418:
	lea	rbx, [rsp + 0x1c]
	lea	r14, [rsp]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x60], rax
	cmp	qword ptr [r15 + 0x50], 0
	je	.label_1414
	test	rax, rax
	je	.label_1414
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	je	.label_1414
.label_1419:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	xor	eax, eax
.label_1417:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_1414:
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_1417
.label_1415:
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_1417
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410c80

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	mov	qword ptr [rdx], rdi
	mov	qword ptr [rdx + 0x58], rsi
	mov	qword ptr [rdx + 0x50], rsi
	mov	qword ptr [rdx + 0x78], rcx
	mov	byte ptr [rdx + 0x88], r8b
	test	rcx, rcx
	setne	al
	or	al, r8b
	mov	byte ptr [rdx + 0x8b], al
	mov	eax, dword ptr [r9 + 0xb4]
	mov	dword ptr [rdx + 0x90], eax
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rdx + 0x89], al
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 3
	and	al, 1
	mov	byte ptr [rdx + 0x8a], al
	mov	rax, qword ptr [rdx + 0x58]
	mov	qword ptr [rdx + 0x68], rax
	mov	qword ptr [rdx + 0x60], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410cf0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1422
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_1421
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_1421
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1422
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_1421
	mov	qword ptr [rbx + 0x18], rax
.label_1422:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1423
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_1421
	mov	qword ptr [rbx + 8], rax
.label_1423:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_1421:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410d80

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15, rdi
	mov	r13, qword ptr [r15 + 0x30]
	mov	rbx, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	rbx, rax
	cmovg	rbx, rax
	cmp	byte ptr [r15 + 0x8a], 0
	jne	.label_1446
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_1446
	cmp	byte ptr [r15 + 0x8c], 0
	je	.label_1454
.label_1446:
	mov	r12, qword ptr [r15 + 0x38]
	jmp	.label_1428
.label_1454:
	cmp	rbx, r13
	jle	.label_1457
	lea	r14, [r15 + 0x20]
	jmp	.label_1437
.label_1455:
	mov	r12, rcx
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jb	.label_1460
	cmp	rbx, -2
	jne	.label_1465
	mov	rax, qword ptr [r15 + 0x40]
	cmp	rax, qword ptr [r15 + 0x58]
	jl	.label_1465
.label_1460:
	mov	rax, qword ptr [r15 + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r13], al
	mov	rcx, qword ptr [r15 + 0x10]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	rbx, -1
	jne	.label_1449
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_1449
	nop	dword ptr [rax]
.label_1437:
	mov	rax, qword ptr [r15 + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [r15]
	movzx	ebp, byte ptr [rcx + rax]
	test	bpl, bpl
	js	.label_1432
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_1432
	mov	r12, rbx
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + rbp*4]
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + r13], al
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	movzx	eax, byte ptr [rax + r13]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
.label_1449:
	mov	rax, r13
	jmp	.label_1430
	nop	word ptr cs:[rax + rax]
.label_1432:
	mov	rdx, rbx
	sub	rdx, r13
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsi, qword ptr [r15]
	add	rsi, qword ptr [r15 + 0x28]
	add	rsi, r13
	lea	rdi, [rsp + 0x2c]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rcx, rbx
	mov	rbx, rax
	lea	rax, [rbx - 1]
	cmp	rax, -4
	lea	rbp, [rsp + 0x30]
	ja	.label_1455
	mov	qword ptr [rsp + 0x20], rcx
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 0x2c]
	jne	.label_1462
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	mov	rsi, qword ptr [r15]
	add	rsi, qword ptr [r15 + 0x28]
	add	rsi, r13
	jmp	.label_1442
.label_1462:
	mov	rdi, rbp
	mov	esi, r12d
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	jne	.label_1426
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	mov	rsi, rbp
.label_1442:
	mov	rdx, rbx
	call	memcpy
	mov	rax, qword ptr [r15 + 0x10]
	mov	dword ptr [rax + r13*4], r12d
	lea	rbp, [rbx + r13]
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	mov	r12, qword ptr [rsp + 0x20]
	jge	.label_1430
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rax + r13*4 + 4]
	lea	rdx, [rbx*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_1430:
	mov	rbx, r12
	cmp	rbx, rax
	mov	r13, rax
	jg	.label_1437
	jmp	.label_1440
.label_1426:
	mov	r12, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1441
.label_1465:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_1457:
	mov	rax, r13
.label_1440:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_1439
.label_1428:
	cmp	r13, rbx
	jge	.label_1448
.label_1441:
	mov	rdx, rbx
	sub	rdx, r13
	lea	rcx, [r15 + 0x20]
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_1450
	mov	rbp, qword ptr [r15]
	add	rbp, qword ptr [r15 + 0x28]
	add	rbp, r12
.label_1431:
	mov	qword ptr [rsp + 0x18], r12
	lea	rdi, [rsp + 0x28]
	mov	rsi, rbp
	mov	qword ptr [rsp + 0x10], rcx
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_1458
	mov	qword ptr [rsp + 0x20], rbx
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x28]
	je	.label_1467
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	esi, ebx
	call	wcrtomb
	mov	rdx, rax
	sub	rax, r14
	jne	.label_1427
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsp + 0x30]
	jmp	.label_1429
.label_1450:
	lea	rbp, [rsp + 0x30]
	cmp	dword ptr [r15 + 0x90], 0
	jle	.label_1431
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_1436:
	cmp	rax, rdx
	jge	.label_1431
	mov	rdi, qword ptr [r15]
	mov	r8, qword ptr [r15 + 0x78]
	add	rdi, qword ptr [r15 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rax + rdi]
	mov	rsi, rbx
	mov	bl, byte ptr [r8 + rdi]
	mov	byte ptr [rsp + rax + 0x30], bl
	mov	rbx, rsi
	inc	rax
	movsxd	rsi, dword ptr [r15 + 0x90]
	cmp	rax, rsi
	jl	.label_1436
	jmp	.label_1431
.label_1458:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_1444
	cmp	r14, -2
	jne	.label_1447
	mov	rax, qword ptr [r15 + 0x40]
	cmp	rax, qword ptr [r15 + 0x58]
	jl	.label_1447
.label_1444:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r12, qword ptr [rsp + 0x18]
	add	rax, r12
	mov	rdx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1451
.label_1466:
	movzx	eax, al
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + r13], al
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_1433
.label_1461:
	inc	r12
	mov	rcx, qword ptr [r15 + 0x10]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	r14, -1
	je	.label_1459
	mov	rbp, r13
	jmp	.label_1428
.label_1427:
	cmp	rdx, -1
	je	.label_1467
	lea	rbp, [rdx + r13]
	mov	rdi, qword ptr [r15 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1469
.label_1447:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_1448:
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], r12
.label_1439:
	xor	eax, eax
.label_1464:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1467:
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	mov	rsi, rbp
.label_1429:
	mov	rdx, r14
	call	memcpy
	mov	r12, qword ptr [rsp + 0x18]
	cmp	byte ptr [r15 + 0x8c], 0
	je	.label_1435
	lea	rax, [r13*8]
	add	rax, qword ptr [r15 + 0x18]
	mov	rcx, r12
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_1443:
	mov	qword ptr [rax], rcx
	inc	rcx
	add	rax, 8
	dec	rdx
	jne	.label_1443
.label_1435:
	add	r12, r14
	mov	rax, qword ptr [r15 + 0x10]
	mov	dword ptr [rax + r13*4], ebx
	lea	rbp, [r14 + r13]
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	jge	.label_1445
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rax + r13*4 + 4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_1453
.label_1445:
	mov	rbp, rax
.label_1453:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r13, rbp
	jmp	.label_1428
.label_1469:
	cmp	qword ptr [r15 + 0x18], 0
	jne	.label_1456
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x20], rdx
	call	malloc
	mov	rdx, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0x18], rax
	test	rax, rax
	mov	rax, qword ptr [rsp + 8]
	je	.label_1463
.label_1456:
	mov	qword ptr [rsp + 8], rax
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_1468
	test	r13, r13
	je	.label_1425
	mov	rax, qword ptr [r15 + 0x18]
	xor	ecx, ecx
.label_1438:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r13, rcx
	jne	.label_1438
.label_1425:
	mov	byte ptr [r15 + 0x8c], 1
.label_1468:
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rdx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r15 + 0x10]
	mov	dword ptr [rax + r13*4], ebx
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + r13*8], rsi
	cmp	rdi, 2
	jb	.label_1434
	lea	rax, [r13*4]
	add	rax, qword ptr [r15 + 0x10]
	shl	r13, 3
	add	r13, qword ptr [r15 + 0x18]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1424:
	cmp	rcx, r14
	mov	rdx, r12
	cmovb	rdx, rcx
	add	rdx, rsi
	mov	qword ptr [r13 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	inc	rcx
	cmp	rdi, rcx
	jne	.label_1424
.label_1434:
	mov	rax, qword ptr [rsp + 8]
	add	qword ptr [r15 + 0x58], rax
	cmp	qword ptr [r15 + 0x60], rsi
	mov	r12, rsi
	jle	.label_1452
	add	qword ptr [r15 + 0x68], rax
.label_1452:
	mov	rbx, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	rbx, rax
	cmovg	rbx, rax
	add	r12, r14
	mov	r13, rbp
	jmp	.label_1428
.label_1451:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_1466
.label_1433:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	qword ptr [rcx + r13*8], r12
	jmp	.label_1461
.label_1459:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	rbp, r13
	jmp	.label_1428
.label_1463:
	mov	eax, 0xc
	jmp	.label_1464
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411310

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jge	.label_1470
	jmp	.label_1473
.label_1472:
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_1471
	nop	word ptr [rax + rax]
.label_1473:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1472
.label_1471:
	movzx	edi, cl
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	inc	rbx
	cmp	rbx, r15
	jl	.label_1473
	mov	rbx, r15
.label_1470:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411380

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	jle	.label_1474
	lea	r14, [rbx + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1481
	nop	dword ptr [rax + rax]
.label_1480:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	jne	.label_1475
.label_1477:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1483:
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_1482
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1482:
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_1481
	jmp	.label_1484
.label_1485:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1476
	nop	word ptr cs:[rax + rax]
.label_1479:
	cmp	rax, rdx
	jge	.label_1478
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_1479
	lea	rsi, [rsp + 0x10]
	jmp	.label_1476
.label_1475:
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1477
.label_1478:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1476
	nop	word ptr cs:[rax + rax]
.label_1481:
	mov	rdx, r12
	sub	rdx, r13
	mov	rbp, qword ptr [rbx + 0x20]
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1485
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_1476:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1480
	cmp	rax, -2
	jne	.label_1483
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_1480
	mov	qword ptr [r14], rbp
.label_1474:
	mov	rcx, r13
.label_1484:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
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
	#Procedure 0x411520

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	mov	rdx, qword ptr [rdi + 0x58]
	cmp	r8, rdx
	cmovg	r8, rdx
	cmp	rax, r8
	jge	.label_1486
	nop	dword ptr [rax + rax]
.label_1487:
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	add	rdx, qword ptr [rdi + 0x28]
	movzx	edx, byte ptr [rax + rdx]
	mov	rcx, qword ptr [rdi + 0x78]
	mov	cl, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	cmp	rax, r8
	jl	.label_1487
	mov	rax, r8
.label_1486:
	mov	qword ptr [rdi + 0x30], rax
	mov	qword ptr [rdi + 0x38], rax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411570

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbx
	mov	rbx, rsi
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411590

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r15, rdi
	mov	rbp, qword ptr [rsi]
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp], rax
	call	parse_branch
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_1492
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_1489
.label_1492:
	mov	r14, qword ptr [rsp + 0x18]
	or	r14, 0x800000
	nop	dword ptr [rax]
.label_1495:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	jne	.label_1488
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	mov	edx, 0
	je	.label_1491
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_1494
	cmp	eax, 9
	mov	edx, 0
	je	.label_1491
.label_1494:
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 0xa8], rax
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, r12
	call	parse_branch
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1490
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_1493
.label_1490:
	mov	rax, qword ptr [rsp + 0x10]
	or	qword ptr [rbp + 0xa8], rax
	nop	word ptr cs:[rax + rax]
.label_1491:
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1495
	mov	dword ptr [r12], 0xc
	xor	r14d, r14d
	jmp	.label_1489
.label_1488:
	mov	r14, rbx
.label_1489:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1493:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1489
	xor	r14d, r14d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_1489
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4116f0

	.globl create_tree
	.type create_tree, @function
create_tree:
	sub	rsp, 0x18
	mov	byte ptr [rsp + 0x10], cl
	lea	rcx, [rsp + 8]
	call	create_token_tree
	add	rsp, 0x18
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411710

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_1500
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	mov	eax, dword ptr [r15 + 8]
	mov	ecx, eax
	and	ecx, 0xff9fffff
	mov	dword ptr [r15 + 8], ecx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1506
	mov	rcx, qword ptr [rbp + 0x48]
	cmp	rcx, qword ptr [rbp + 0x30]
	je	.label_1506
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	dword ptr [rsi + rcx*4], -1
	je	.label_1507
.label_1506:
	cmp	r12d, 0x5c
	jne	.label_1521
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1511
	mov	r12, rdx
	mov	rdi, rbp
	call	re_string_peek_byte_case
	mov	r14b, al
	mov	byte ptr [r15], r14b
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r15 + 8]
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1516
	mov	rsi, qword ptr [rbp + 0x48]
	inc	rsi
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebp, eax
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_1522
.label_1500:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_1497
.label_1521:
	mov	qword ptr [rsp], rdx
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r15 + 8]
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1528
	mov	rsi, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebx, eax
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_1504
.label_1511:
	mov	byte ptr [r15 + 8], 0x24
	mov	r14d, 1
	jmp	.label_1497
.label_1528:
	movzx	r14d, byte ptr [r15]
	cmp	r14, 0x5f
	sete	r13b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r14*2]
	movzx	ecx, r13b
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	and	ebx, 0xffbfff01
.label_1504:
	or	ebx, eax
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
	cmp	r12d, 0x3e
	jg	.label_1513
	lea	eax, [r12 - 0x24]
	cmp	eax, 0xa
	ja	.label_1517
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1498]]
.label_2682:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	jne	.label_1519
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	je	.label_1519
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_1497
.label_1519:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x20
	jmp	.label_1497
.label_1513:
	cmp	r12d, 0x7a
	jg	.label_1496
	cmp	r12d, 0x3f
	je	.label_1499
	cmp	r12d, 0x5b
	je	.label_1501
	cmp	r12d, 0x5e
	jne	.label_1497
	mov	rcx, qword ptr [rsp]
	test	ecx, 0x800008
	jne	.label_1502
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_1502
	test	ch, 8
	je	.label_1497
	mov	rcx, qword ptr [rbp + 8]
	movzx	eax, byte ptr [rax + rcx - 1]
	cmp	eax, 0xa
	jne	.label_1497
.label_1502:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x10
	jmp	.label_1497
.label_1516:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	and	ebx, 0xffbfff01
.label_1522:
	or	ebx, eax
	mov	dword ptr [r15 + 8], ebx
	movzx	eax, r14b
	mov	r14d, 2
	cmp	eax, 0x5f
	jg	.label_1515
	lea	ecx, [rax - 0x27]
	cmp	ecx, 0x2c
	ja	.label_1518
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1508]]
.label_2696:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_1497
	mov	byte ptr [r15 + 8], 4
	add	eax, -0x31
	cdqe	
	mov	qword ptr [r15], rax
	jmp	.label_1497
.label_1496:
	cmp	r12d, 0x7b
	je	.label_1523
	cmp	r12d, 0x7c
	je	.label_1525
	cmp	r12d, 0x7d
	jne	.label_1497
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	je	.label_1526
	jmp	.label_1497
.label_1507:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	jmp	.label_1497
.label_1515:
	lea	ecx, [rax - 0x73]
	cmp	ecx, 0xa
	ja	.label_1503
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1509]]
.label_2901:
	test	r12d, 0x80000
	jne	.label_1497
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_1517:
	cmp	r12d, 0xa
	jne	.label_1497
	mov	rax, qword ptr [rsp]
	test	ah, 8
	jne	.label_1510
	jmp	.label_1497
.label_2683:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_1512
	jmp	.label_1497
.label_2684:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_1514
	jmp	.label_1497
.label_2685:
	and	ebx, 0xffffff00
	or	ebx, 0xb
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_2686:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_1497
	jmp	.label_1520
.label_2687:
	and	ebx, 0xffffff00
	or	ebx, 5
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_1499:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_1497
	jmp	.label_1524
.label_1501:
	and	ebx, 0xffffff00
	or	ebx, 0x14
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_1523:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	je	.label_1527
	jmp	.label_1497
.label_1525:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_1497
	test	ax, ax
	js	.label_1510
	jmp	.label_1497
.label_1503:
	cmp	eax, 0x60
	je	.label_1505
	cmp	eax, 0x62
	jne	.label_1497
	test	r12d, 0x80000
	jne	.label_1497
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x100
	jmp	.label_1497
.label_1518:
	cmp	eax, 0x57
	jne	.label_1497
	test	r12d, 0x80000
	jne	.label_1497
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_2902:
	test	r12d, 0x80000
	jne	.label_1497
	and	ebx, 0xffffff00
	or	ebx, 0x20
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_2903:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_1497
.label_1527:
	and	ebx, 0xffffff00
	or	ebx, 0x17
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_2904:
	mov	rax, r12
	test	ah, 4
	jne	.label_1497
	test	ax, ax
	js	.label_1497
.label_1510:
	and	ebx, 0xffffff00
	or	ebx, 0xa
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_2905:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_1497
.label_1526:
	and	ebx, 0xffffff00
	or	ebx, 0x18
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_1505:
	test	r12d, 0x80000
	jne	.label_1497
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x40
	jmp	.label_1497
.label_2692:
	test	r12d, 0x80000
	jne	.label_1497
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x80
	jmp	.label_1497
.label_2693:
	mov	rax, r12
	test	ah, 0x20
	jne	.label_1497
.label_1512:
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_2694:
	mov	rax, r12
	test	ah, 0x20
	jne	.label_1497
.label_1514:
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_2695:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_1497
.label_1520:
	and	ebx, 0xffffff00
	or	ebx, 0x12
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_2697:
	test	r12d, 0x80000
	jne	.label_1497
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 6
	jmp	.label_1497
.label_2698:
	test	r12d, 0x80000
	jne	.label_1497
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 9
	jmp	.label_1497
.label_2699:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_1497
.label_1524:
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_1497
.label_2700:
	test	r12d, 0x80000
	jne	.label_1497
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x200
	jmp	.label_1497
.label_2701:
	test	r12d, 0x80000
	jne	.label_1497
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r15 + 8], ebx
.label_1497:
	mov	eax, r14d
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
	#Procedure 0x411d80

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	cmp	byte ptr [rdi + 0x8b], 0
	jne	.label_1529
.label_1532:
	mov	rax, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	al, byte ptr [rcx + rax + 1]
.label_1531:
	movzx	eax, al
	ret	
.label_1529:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_1534
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	cmp	dword ptr [rax + rcx*4 + 4], -1
	je	.label_1532
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	je	.label_1534
	cmp	dword ptr [rax + rcx*4 + 8], -1
	je	.label_1532
.label_1534:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_1530
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	jmp	.label_1533
.label_1530:
	inc	rax
.label_1533:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	test	al, al
	jns	.label_1531
	mov	cl, byte ptr [rdi + 0x8c]
	test	cl, cl
	je	.label_1531
	jmp	.label_1532
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411e00

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	jne	.label_1535
	mov	rax, qword ptr [rdi + 8]
	movzx	eax, byte ptr [rax + rsi]
	ret	
.label_1535:
	mov	rax, qword ptr [rdi + 0x10]
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411e20

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp], rax
	call	parse_expression
	xor	r15d, r15d
	test	rax, rax
	jne	.label_1540
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_1540
	jmp	.label_1536
	nop	word ptr cs:[rax + rax]
.label_1538:
	test	rbx, rbx
	cmovne	r15, rbx
	mov	rax, r15
.label_1540:
	mov	rbx, rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_1543
	test	r12, r12
	je	.label_1539
	cmp	eax, 9
	je	.label_1541
.label_1539:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, r14
	call	parse_expression
	mov	r15, rax
	test	r15, r15
	jne	.label_1542
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_1537
.label_1542:
	test	rbx, rbx
	je	.label_1538
	test	r15, r15
	je	.label_1538
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	call	create_tree
	test	rax, rax
	jne	.label_1540
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r15
	xor	r15d, r15d
	call	postorder
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	mov	dword ptr [r14], 0xc
	jmp	.label_1536
.label_1537:
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1536
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_1536
.label_1543:
	mov	r15, rbx
	jmp	.label_1536
.label_1541:
	mov	r15, rbx
.label_1536:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411f50

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	jmp	.label_1546
.label_1548:
	mov	rdi, qword ptr [rcx + 0x10]
.label_1546:
	mov	rcx, rdi
	mov	rdi, qword ptr [rcx + 8]
	test	rdi, rdi
	jne	.label_1546
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1545
	mov	rdi, qword ptr [rcx + 8]
	test	rdi, rdi
	jne	.label_1546
	jmp	.label_1548
.label_1545:
	mov	r12, rbx
	nop	word ptr cs:[rax + rax]
.label_1547:
	mov	rbx, rcx
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_1544
	mov	rcx, qword ptr [rbx]
	xor	eax, eax
	test	rcx, rcx
	je	.label_1544
	cmovne	r12, rbx
	mov	rax, rcx
	cmove	rax, rbx
	mov	rdi, qword ptr [rax + 0x10]
	cmp	rdi, r12
	mov	r12, rbx
	je	.label_1547
	test	rdi, rdi
	mov	r12, rbx
	je	.label_1547
	jmp	.label_1546
.label_1544:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411fe0

	.globl free_tree
	.type free_tree, @function
free_tree:
	push	rax
	lea	rdi, [rsi + 0x28]
	call	free_token
	xor	eax, eax
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411ff0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 8], r9
	mov	qword ptr [rsp], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	r14d, ecx
	and	r14d, 0x1000000
	mov	ebx, ecx
	and	ebx, 0x20
	mov	r15d, ecx
	and	r15d, 0x10
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1567
	nop	word ptr cs:[rax + rax]
.label_1564:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
.label_1567:
	movzx	eax, byte ptr [r13 + 8]
	dec	eax
	cmp	eax, 0x23
	ja	.label_1561
	mov	r12, qword ptr [rbp]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1562]]
.label_2794:
	test	r14, r14
	jne	.label_1563
.label_2791:
	test	rbx, rbx
	jne	.label_1563
	test	r15, r15
	jne	.label_1564
.label_2790:
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, 0x20000
	jne	.label_1565
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	jne	.label_1565
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	jmp	.label_1549
.label_1563:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xd
.label_1549:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_1561:
	mov	rax, qword ptr [rsp + 0x10]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1565:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	jne	.label_1559
	jmp	.label_1557
.label_2795:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x21
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_11
	mov	ecx, OFFSET FLAT:.str.2_9
	jmp	.label_1572
.label_2796:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x23
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_7
	mov	ecx, OFFSET FLAT:.str_0
.label_1572:
	mov	rdi, r12
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	build_charclass_op
	jmp	.label_1552
.label_2793:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	parse_bracket_exp
	jmp	.label_1552
.label_2786:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	je	.label_1557
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1559
	mov	rbx, qword ptr [rsp + 0x20]
.label_1575:
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	jle	.label_1559
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_1559
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1559
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	test	rbp, rbp
	je	.label_1557
	test	r14, r14
	jne	.label_1575
	jmp	.label_1557
.label_2787:
	mov	cl, byte ptr [r13]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r12 + 0xa8], rax
	je	.label_1550
	or	qword ptr [r12 + 0xa0], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	je	.label_1557
	inc	qword ptr [r12 + 0x98]
	or	byte ptr [r12 + 0xb0], 2
	jmp	.label_1559
.label_2788:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	je	.label_1557
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1559
	or	byte ptr [r12 + 0xb0], 2
	jmp	.label_1559
.label_2789:
	mov	r8, qword ptr [rsp]
	inc	r8
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	parse_sub_exp
.label_1552:
	mov	r14, rax
	test	r14, r14
	jne	.label_1559
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, dword ptr [rbx]
	test	eax, eax
	jne	.label_1561
.label_1559:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdx, rbx
	call	fetch_token
	mov	ebp, ebx
	mov	r15, rbx
	and	ebp, 0x1000000
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_1555:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x17
	ja	.label_1573
	mov	ecx, 0x8c0800
	bt	ecx, eax
	jae	.label_1576
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, r15
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	jne	.label_1553
	mov	ecx, dword ptr [rbx]
	test	ecx, ecx
	jne	.label_1554
.label_1553:
	test	rbp, rbp
	mov	r14, rax
	je	.label_1555
	movzx	ecx, byte ptr [r13 + 8]
	cmp	ecx, 0x17
	je	.label_1558
	cmp	ecx, 0xb
	mov	r14, rax
	jne	.label_1555
.label_1558:
	test	rax, rax
	je	.label_1560
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rax
	call	postorder
.label_1560:
	mov	dword ptr [rbx], 0xd
	jmp	.label_1549
.label_1554:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r14, r14
	je	.label_1561
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r14
	call	postorder
	jmp	.label_1561
.label_1573:
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_1561
.label_1576:
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_1561
.label_2792:
	mov	eax, dword ptr [r13]
	test	ax, 0x30f
	je	.label_1568
	test	byte ptr [r12 + 0xb0], 0x10
	jne	.label_1569
	mov	rdi, r12
	call	init_word_char
.label_1569:
	mov	eax, dword ptr [r13]
.label_1568:
	cmp	eax, 0x200
	je	.label_1570
	cmp	eax, 0x100
	jne	.label_1571
.label_1570:
	cmp	dword ptr [r13], 0x100
	jne	.label_1551
	mov	dword ptr [r13], 6
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 9
	jmp	.label_1574
.label_2797:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	jmp	.label_1549
.label_1557:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_1549
.label_1571:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	test	rax, rax
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1556
	mov	dword ptr [rcx], 0xc
	jmp	.label_1549
.label_1551:
	mov	dword ptr [r13], 5
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 0xa
.label_1574:
	mov	r14, qword ptr [rsp + 8]
	mov	dword ptr [r13], eax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0xa
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rbp
	call	create_tree
	test	rbx, rbx
	je	.label_1566
	test	rbp, rbp
	je	.label_1566
	test	rax, rax
	je	.label_1566
.label_1556:
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	jmp	.label_1561
.label_1550:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	jmp	.label_1549
.label_1566:
	mov	dword ptr [r14], 0xc
	jmp	.label_1549
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4124e0

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x80], 0xf
	je	.label_1577
.label_1579:
	movsxd	rcx, dword ptr [rbx + 0x80]
	lea	eax, [rcx + 1]
	mov	dword ptr [rbx + 0x80], eax
	mov	rdx, qword ptr [rbx + 0x70]
	shl	rcx, 6
	lea	rax, [rdx + rcx + 8]
	mov	qword ptr [rdx + rcx + 8], 0
	mov	qword ptr [rdx + rcx + 0x10], r12
	mov	qword ptr [rdx + rcx + 0x18], r14
	movups	xmm0, xmmword ptr [r15]
	movups	xmmword ptr [rdx + rcx + 0x30], xmm0
	and	byte ptr [rdx + rcx + 0x3a], 0xf3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdx + rcx + 0x20], xmm0
	mov	qword ptr [rdx + rcx + 0x40], -1
	test	r12, r12
	je	.label_1580
	mov	qword ptr [r12], rax
.label_1580:
	test	r14, r14
	je	.label_1578
	mov	qword ptr [r14], rax
.label_1578:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1577:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1578
	mov	rax, qword ptr [rbx + 0x70]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1579
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4125a0

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	qword ptr [rsp + 8], r8
	mov	rbp, rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, qword ptr [r14 + 0x30]
	lea	rax, [r12 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbp
	or	rdx, 0x800000
	mov	rdi, rbx
	mov	rsi, r15
	call	fetch_token
	movzx	eax, byte ptr [rbx + 8]
	xor	r8d, r8d
	cmp	eax, 9
	je	.label_1582
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_reg_exp
	mov	r8, rax
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_1581
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 9
	jne	.label_1585
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_1581
.label_1582:
	cmp	r12, 8
	mov	rdi, qword ptr [rsp + 0x10]
	ja	.label_1583
	mov	eax, 1
	mov	cl, r12b
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa8], rax
.label_1583:
	xor	edx, edx
	mov	ecx, 0x11
	mov	rsi, r8
	call	create_tree
	test	rax, rax
	je	.label_1584
	mov	qword ptr [rax + 0x28], r12
.label_1581:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1584:
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	jmp	.label_1581
.label_1585:
	test	r8, r8
	je	.label_1586
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	call	postorder
.label_1586:
	mov	dword ptr [r13], 8
	xor	eax, eax
	jmp	.label_1581
	.section	.text
	.align	32
	#Procedure 0x4126a0

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0x28], r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	test	r15, r15
	je	.label_1589
	test	r14, r14
	je	.label_1589
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x19
	je	.label_1592
	cmp	eax, 2
	je	.label_1593
	mov	dword ptr [rsp + 0x14], 0
	jmp	.label_1596
.label_1592:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_1599
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_1599:
	movsxd	rax, ebp
	add	qword ptr [r13 + 0x48], rax
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 2
	je	.label_1593
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
.label_1596:
	mov	qword ptr [rsp + 0x20], r14
	mov	eax, dword ptr [r12 + 8]
	movzx	ecx, al
	cmp	ecx, 0x15
	jne	.label_1611
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_1611:
	lea	rax, [rsp + 0x60]
	mov	qword ptr [rsp + 0xa0], rax
	mov	dword ptr [rsp + 0x98], 3
	lea	rdi, [rsp + 0x98]
	mov	r9d, 1
	mov	rsi, r13
	mov	rdx, r12
	mov	ecx, ebp
	mov	rbp, r13
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1600
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1595
	nop	
.label_1606:
	cmp	eax, 2
	je	.label_1623
	mov	qword ptr [rsp + 0x28], r13
	lea	rax, [rsp + 0x60]
	mov	qword ptr [rsp + 0xa0], rax
	mov	dword ptr [rsp + 0x98], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x98]
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_1595
	jmp	.label_1600
.label_1619:
	lea	rax, [r13 + r13]
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_1604
	lea	rcx, [r13 + r13 + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_1605
	nop	dword ptr [rax]
.label_1595:
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0x98]
	cmp	eax, 2
	je	.label_1609
	cmp	eax, 4
	mov	r13, qword ptr [rsp + 0x28]
	je	.label_1612
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x16
	je	.label_1614
	cmp	eax, 2
	jne	.label_1615
	jmp	.label_1617
	nop	word ptr cs:[rax + rax]
.label_1609:
	mov	r13, qword ptr [rsp + 0x28]
	jmp	.label_1612
.label_1614:
	movsxd	rax, r14d
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x38]
	cmp	ecx, 0x15
	je	.label_1621
	cmp	ecx, 2
	je	.label_1622
	lea	rcx, [rsp + 0x40]
	mov	qword ptr [rsp + 0x90], rcx
	mov	dword ptr [rsp + 0x88], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x88]
	mov	rsi, rbp
	lea	rdx, [rsp + 0x30]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1594
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rdx, qword ptr [rsp + 0x20]
	jg	.label_1601
	xor	edx, edx
.label_1601:
	mov	rdi, rbx
	mov	rsi, r15
	lea	rcx, [rsp + 0xb0]
	lea	r8, [rsp + 0x98]
	lea	r9, [rsp + 0x88]
	call	build_range_exp
	jmp	.label_1591
.label_1621:
	mov	eax, r14d
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	byte ptr [r12 + 8], 1
.label_1615:
	mov	eax, dword ptr [rsp + 0x98]
.label_1612:
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_1613
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1616]]
.label_2828:
	movzx	esi, byte ptr [rsp + 0xa0]
	mov	rdi, r15
	call	bitset_set
	jmp	.label_1620
.label_2829:
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 8], r13
	je	.label_1619
.label_1605:
	mov	eax, dword ptr [rsp + 0xa0]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rdx, qword ptr [rbp]
	mov	dword ptr [rdx + rcx*4], eax
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp]
	jmp	.label_1620
.label_2830:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	call	build_equiv_class
	jmp	.label_1591
.label_2831:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	call	build_collating_symbol
	jmp	.label_1591
.label_2832:
	mov	rdi, qword ptr [rbp + 0x78]
	mov	r8, qword ptr [rsp + 0xa0]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
.label_1591:
	mov	dword ptr [r13], eax
	test	eax, eax
	jne	.label_1602
.label_1620:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x15
	jne	.label_1606
	movsxd	rax, r14d
	add	qword ptr [rbp + 0x48], rax
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_1608
	mov	rdi, r15
	call	bitset_not
.label_1608:
	mov	qword ptr [rsp + 0x28], r13
	mov	r12, qword ptr [rsp + 0x18]
	cmp	dword ptr [r12 + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x20]
	jl	.label_1610
	mov	rsi, qword ptr [r12 + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_1610:
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_1588
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_1588
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_1588
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_1588
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1618
	cmp	qword ptr [r14 + 0x48], 0
	jne	.label_1588
	test	byte ptr [r14 + 0x20], 1
	jne	.label_1588
.label_1618:
	mov	rdi, r14
	call	free_charset
	mov	byte ptr [rsp + 0xc0], 3
	mov	qword ptr [rsp + 0xb8], r15
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	jmp	.label_1597
.label_1588:
	or	byte ptr [r12 + 0xb0], 2
	mov	byte ptr [rsp + 0xc0], 6
	mov	qword ptr [rsp + 0xb8], r14
	xor	ebx, ebx
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1598
	nop	dword ptr [rax]
.label_1590:
	cmp	qword ptr [r15 + rbx*8], 0
	jne	.label_1603
	inc	rbx
	cmp	rbx, 3
	jle	.label_1590
	mov	rdi, r15
	call	free
	jmp	.label_1607
.label_1603:
	mov	byte ptr [rsp + 0xc0], 3
	mov	qword ptr [rsp + 0xb8], r15
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	test	rax, rax
	je	.label_1598
	mov	ecx, 0xa
	mov	rdi, r12
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_1597:
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1607
	jmp	.label_1598
.label_1600:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
.label_1602:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1587
.label_1593:
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 2
	jmp	.label_1587
.label_1623:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1587
.label_1589:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
	jmp	.label_1624
.label_1617:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1587
.label_1622:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1587
.label_1594:
	mov	dword ptr [r13], eax
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1587
.label_1604:
	mov	r14, rbp
.label_1598:
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
.label_1587:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free_charset
.label_1624:
	xor	ebp, ebp
.label_1607:
	mov	rax, rbp
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1613:
	mov	edi, OFFSET FLAT:.str.5_3
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412c80

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	al, byte ptr [r14 + 0xb0]
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r14 + 0xb0], cl
	xor	ebx, ebx
	test	al, 8
	mov	r15d, 0
	jne	.label_1625
	movabs	rax, 0x3ff000000000000
	mov	qword ptr [r14 + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	qword ptr [r14 + 0xc0], rax
	mov	r15d, 2
	mov	ebx, 0x80
	test	byte ptr [r14 + 0xb0], 4
	je	.label_1625
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0xc8], xmm0
.label_1629:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1625:
	call	__ctype_b_loc
	lea	rdx, [rbx + rbx]
	add	rdx, qword ptr [rax]
	nop	dword ptr [rax + rax]
.label_1630:
	mov	rax, rdx
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1627:
	lea	esi, [rbx + rcx]
	cmp	esi, 0x5f
	je	.label_1626
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	je	.label_1628
.label_1626:
	mov	esi, 1
	shl	rsi, cl
	or	qword ptr [r14 + r15*8 + 0xb8], rsi
.label_1628:
	inc	rcx
	add	rax, 2
	cmp	rcx, 0x40
	jne	.label_1627
	inc	r15
	add	rbx, 0x40
	add	rdx, 0x80
	cmp	r15d, 4
	jne	.label_1630
	jmp	.label_1629
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d60

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1634
	mov	qword ptr [rsp], r12
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_1641
	mov	al, byte ptr [r12 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
	or	al, cl
	mov	byte ptr [r12 + 0x20], al
	lea	rcx, [rsp + 0x20]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_1639
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1642
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1635:
	movsx	rsi, al
	mov	rdi, rbx
	call	bitset_set
	mov	al, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_1635
.label_1642:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1637
	mov	rdi, rbx
	call	bitset_not
.label_1637:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1640
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_1640:
	mov	byte ptr [rsp + 0x18], 3
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1632
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_1638
	mov	byte ptr [rsp + 0x18], 6
	mov	qword ptr [rsp + 0x10], r12
	or	byte ptr [r15 + 0xb0], 2
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	test	rax, rax
	je	.label_1632
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, rax
	call	create_tree
	mov	rbp, rax
	jmp	.label_1631
.label_1638:
	mov	rdi, r12
	call	free_charset
	jmp	.label_1631
.label_1632:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	jmp	.label_1636
.label_1634:
	mov	dword ptr [r12], 0xc
	jmp	.label_1633
.label_1641:
	mov	rdi, rbx
	call	free
.label_1636:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_1633
.label_1639:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_1633:
	xor	ebp, ebp
.label_1631:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412f20

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, r9
	mov	rbp, r8
	mov	r15, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r14 + 0x48]
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x17
	jne	.label_1649
	mov	qword ptr [rsp], rcx
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	qword ptr [rsp + 8], rbp
	call	fetch_number
	mov	rbx, rax
	cmp	rbx, -1
	jne	.label_1661
	mov	qword ptr [rsp + 0x10], r13
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 1
	jne	.label_1648
	movzx	eax, byte ptr [r15]
	xor	ebx, ebx
	cmp	eax, 0x2c
	je	.label_1646
	jmp	.label_1648
.label_1649:
	mov	qword ptr [rsp + 0x10], r13
	cmp	eax, 0x12
	sete	cl
	movzx	ebx, cl
	cmp	eax, 0x13
	mov	eax, 1
	mov	r13, -1
	cmove	r13, rax
.label_1651:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	fetch_token
	xor	r14d, r14d
	test	r12, r12
	je	.label_1644
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	je	.label_1657
	test	rbx, rbx
	jg	.label_1660
	mov	r15, qword ptr [rsp + 0x18]
.label_1645:
	movzx	eax, byte ptr [r12 + 0x30]
	cmp	eax, 0x11
	jne	.label_1663
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	call	postorder
.label_1663:
	cmp	r13, -1
	sete	al
	movzx	ecx, al
	or	ecx, 0xa
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1643
	lea	rax, [rbx + 2]
	cmp	rax, r13
	jg	.label_1655
	inc	rbx
	nop	dword ptr [rax + rax]
.label_1650:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	call	create_tree
	test	r12, r12
	je	.label_1643
	test	rax, rax
	je	.label_1643
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1643
	inc	rbx
	cmp	rbx, r13
	jl	.label_1650
.label_1655:
	test	r14, r14
	je	.label_1652
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	jmp	.label_1644
.label_1661:
	mov	qword ptr [rsp + 0x10], r13
	cmp	rbx, -2
	je	.label_1647
.label_1646:
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	mov	r13, rbx
	je	.label_1656
	cmp	eax, 1
	jne	.label_1647
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2c
	jne	.label_1647
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	mov	r13, rax
	cmp	r13, -2
	je	.label_1647
.label_1656:
	cmp	r13, -1
	je	.label_1658
	cmp	rbx, r13
	jg	.label_1648
.label_1658:
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	jne	.label_1648
	cmp	r13, -1
	mov	rax, r13
	cmove	rax, rbx
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_1651
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xf
	xor	r14d, r14d
	jmp	.label_1644
.label_1648:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_1644
.label_1647:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	je	.label_1659
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r15], xmm0
	mov	byte ptr [r15 + 8], 1
	mov	r14, r12
	jmp	.label_1644
.label_1652:
	mov	r14, rbp
	jmp	.label_1644
.label_1657:
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_1644
.label_1660:
	mov	ebp, 1
	mov	r14, r12
	cmp	rbx, 2
	jge	.label_1653
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_1654
.label_1653:
	mov	r15, qword ptr [rsp + 0x18]
.label_1662:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	create_tree
	mov	r14, rax
	test	r12, r12
	je	.label_1643
	test	r14, r14
	je	.label_1643
	inc	rbp
	cmp	rbp, rbx
	jl	.label_1662
.label_1654:
	cmp	rbx, r13
	je	.label_1644
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	test	r12, r12
	jne	.label_1645
.label_1643:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
.label_1644:
	mov	rax, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1659:
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 2
	setne	al
	movzx	eax, al
	add	eax, 9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_1644
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413260

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_1671
	mov	rcx, qword ptr [rsi + 8]
	mov	r8b, byte ptr [rcx + rax]
	mov	byte ptr [rdi], r8b
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_1674
	mov	rax, qword ptr [rsi + 0x48]
	cmp	rax, qword ptr [rsi + 0x30]
	je	.label_1674
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1666
.label_1674:
	movzx	ecx, r8b
	test	dl, 1
	je	.label_1664
	cmp	ecx, 0x5c
	jne	.label_1664
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1664
	mov	qword ptr [rsi + 0x48], rax
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	jmp	.label_1666
.label_1671:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_1664:
	cmp	ecx, 0x5b
	jne	.label_1665
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_1675
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	jmp	.label_1669
.label_1665:
	cmp	ecx, 0x5e
	je	.label_1670
	cmp	ecx, 0x5d
	je	.label_1672
	cmp	ecx, 0x2d
	jne	.label_1666
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_1666:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_1675:
	xor	eax, eax
.label_1669:
	mov	byte ptr [rdi], al
	movzx	eax, al
	cmp	eax, 0x3d
	je	.label_1668
	cmp	eax, 0x3a
	je	.label_1667
	cmp	eax, 0x2e
	jne	.label_1676
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_1672:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1667:
	test	dl, 4
	jne	.label_1673
.label_1676:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], r8b
	mov	eax, 1
	ret	
.label_1670:
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_1668:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_1673:
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413360

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	eax, 1
	mov	cl, sil
	shl	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	or	qword ptr [rdi + rcx*8], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413390

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], r8
	mov	ebp, ecx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r13, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	mov	rsi, r13
	call	re_string_char_size_at
	mov	r12d, eax
	cmp	r12d, 2
	jl	.label_1677
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	call	re_string_wchar_at
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1680
.label_1677:
	movsxd	rax, ebp
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	movzx	eax, byte ptr [r14 + 8]
	add	eax, -0x16
	cmp	eax, 8
	ja	.label_1678
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1679]]
.label_2800:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_bracket_symbol
.label_2799:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	jne	.label_1678
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 8]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x20]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1681
.label_1678:
	mov	dword ptr [r15], 0
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
.label_1680:
	xor	eax, eax
.label_1681:
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
	#Procedure 0x413470

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	rbp, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	ecx, dword ptr [rbp]
	mov	eax, 0xb
	cmp	ecx, 2
	je	.label_1690
	cmp	ecx, 4
	je	.label_1690
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_1690
	cmp	edx, 4
	je	.label_1690
	cmp	ecx, 3
	jne	.label_1694
	mov	rdi, qword ptr [rbp + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_1690
.label_1694:
	cmp	dword ptr [rbx], 3
	jne	.label_1699
	mov	rdi, qword ptr [rbx + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_1690
.label_1699:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_1703
	test	eax, eax
	jne	.label_1683
	mov	al, byte ptr [rbp + 8]
	jmp	.label_1684
.label_1703:
	mov	rax, qword ptr [rbp + 8]
	mov	al, byte ptr [rax]
	jmp	.label_1684
.label_1683:
	xor	eax, eax
.label_1684:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	je	.label_1687
	test	ecx, ecx
	jne	.label_1688
	mov	dl, byte ptr [rbx + 8]
	jmp	.label_1689
.label_1687:
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	jmp	.label_1689
.label_1688:
	xor	edx, edx
.label_1689:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	je	.label_1692
	test	ecx, ecx
	jne	.label_1693
.label_1692:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_1695
.label_1693:
	mov	ebp, dword ptr [rbp + 8]
.label_1695:
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_1697
	test	eax, eax
	jne	.label_1698
.label_1697:
	movzx	edi, dl
	mov	rsi, r14
	call	parse_byte
	mov	ebx, eax
	jmp	.label_1701
.label_1698:
	mov	ebx, dword ptr [rbx + 8]
.label_1701:
	cmp	ebp, -1
	mov	eax, 3
	je	.label_1690
	cmp	ebx, -1
	je	.label_1690
	test	r12d, 0x10000
	je	.label_1682
	cmp	ebp, ebx
	mov	eax, 0xb
	ja	.label_1690
.label_1682:
	test	r14, r14
	je	.label_1685
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	je	.label_1686
.label_1702:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	mov	dword ptr [rcx + rax*4], ebx
.label_1685:
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1700:
	cmp	rbp, rbx
	ja	.label_1696
	cmp	rbx, r14
	ja	.label_1696
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_1696:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1700
.label_1690:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1686:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rax*4 + 4]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_1691
	test	rax, rax
	je	.label_1691
	lea	rcx, [r12 + r12 + 1]
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r15], rcx
	jmp	.label_1702
.label_1691:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	eax, 0xc
	jmp	.label_1690
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413670

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_1704
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_1704:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4136b0

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_1705
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_1705:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4136f0

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_1725
	mov	esi, OFFSET FLAT:.str.7_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1720
	mov	esi, OFFSET FLAT:.str.8_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1725
.label_1720:
	mov	r12d, OFFSET FLAT:.str.9_3
.label_1725:
	mov	rbp, qword ptr [rbx + 0x48]
	cmp	qword ptr [r13], rbp
	je	.label_1729
.label_1748:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_11
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1743
	mov	esi, OFFSET FLAT:.str.10_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1747
	mov	esi, OFFSET FLAT:.str.8_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1752
	mov	esi, OFFSET FLAT:.str.3_7
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1759
	mov	esi, OFFSET FLAT:.str.9_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1756
	mov	esi, OFFSET FLAT:.str.11_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1721
	mov	esi, OFFSET FLAT:.str.12_3
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1754
	mov	esi, OFFSET FLAT:.str.7_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1708
	mov	esi, OFFSET FLAT:.str.13_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1765
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1723
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1712
	mov	esi, OFFSET FLAT:.str.16_2
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_1715
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1718
.label_1750:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_1745
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1745:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1750
	jmp	.label_1715
.label_1743:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1710
	nop	word ptr cs:[rax + rax]
.label_1766:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_1761
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1761:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1766
	jmp	.label_1715
	nop	dword ptr [rax + rax]
.label_1710:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_1768
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1768:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1710
	jmp	.label_1715
.label_1747:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1719
	nop	dword ptr [rax]
.label_1732:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_1724
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1724:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1732
	jmp	.label_1715
	nop	dword ptr [rax + rax]
.label_1719:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_1737
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1737:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1719
	jmp	.label_1715
.label_1752:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1735
	nop	dword ptr [rax]
.label_1760:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_1753
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1753:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1760
	jmp	.label_1715
	nop	dword ptr [rax]
.label_1735:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_1764
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1764:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1735
	jmp	.label_1715
.label_1759:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1706
	nop	word ptr [rax + rax]
.label_1722:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_1713
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1713:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1722
	jmp	.label_1715
.label_1706:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_1728
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1728:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1706
	jmp	.label_1715
.label_1729:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1715
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_1748
.label_1756:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1755
	nop	dword ptr [rax]
.label_1763:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_1758
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1758:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1763
	jmp	.label_1715
.label_1755:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_1767
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1767:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1755
	jmp	.label_1715
.label_1721:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1711
	nop	word ptr cs:[rax + rax]
.label_1727:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_1762
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1762:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1727
	jmp	.label_1715
.label_1711:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_1733
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1733:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1711
	jmp	.label_1715
.label_1754:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1744
	nop	word ptr cs:[rax + rax]
.label_1757:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_1749
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1749:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1757
	jmp	.label_1715
.label_1744:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_1734
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1734:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1744
	jmp	.label_1715
.label_1708:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1730
	nop	word ptr cs:[rax + rax]
.label_1716:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_1707
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1707:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1716
	jmp	.label_1715
.label_1730:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_1769
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1769:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1730
	jmp	.label_1715
.label_1765:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1717
	nop	word ptr cs:[rax + rax]
.label_1746:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_1742
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1742:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1746
	jmp	.label_1715
.label_1717:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_1751
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1751:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1717
	jmp	.label_1715
.label_1723:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1714
.label_1739:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_1738
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1738:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1739
	jmp	.label_1715
.label_1714:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_1740
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1740:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1714
	jmp	.label_1715
.label_1718:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_1709
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1709:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1718
	jmp	.label_1715
.label_1712:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_1726
.label_1741:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_1736
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1736:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1741
.label_1715:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1726:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_1731
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1731:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1726
	jmp	.label_1715
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413dc0

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1770:
	not	qword ptr [rdi + rax*8]
	inc	rax
	cmp	rax, 4
	jne	.label_1770
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413de0

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1771:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_1771
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413e10

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	je	.label_1772
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_1772
	lea	rcx, [rsi*4]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax]
.label_1773:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1772
	lea	rdx, [rsi + rax + 1]
	inc	rax
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_1773
.label_1772:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413e60

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbx + 0x68]
	mov	r14d, 7
	cmp	rax, qword ptr [rbx + 0x48]
	jle	.label_1774
	mov	rbp, -1
	movzx	r13d, byte ptr [r12]
.label_1775:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x1e
	jne	.label_1779
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_1776
	nop	word ptr cs:[rax + rax]
.label_1779:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	mov	al, byte ptr [rcx + rax]
.label_1776:
	mov	rcx, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_1774
	movzx	edx, al
	cmp	edx, r13d
	jne	.label_1778
	mov	rdx, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + rcx]
	cmp	edx, 0x5d
	je	.label_1780
.label_1778:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_1775
.label_1774:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1780:
	inc	rcx
	mov	qword ptr [rbx + 0x48], rcx
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	movzx	eax, byte ptr [r12 + 8]
	xor	r14d, r14d
	cmp	eax, 0x1e
	je	.label_1777
	cmp	eax, 0x1c
	je	.label_1781
	cmp	eax, 0x1a
	jne	.label_1774
	mov	dword ptr [r15], 3
	jmp	.label_1774
.label_1777:
	mov	dword ptr [r15], 4
	jmp	.label_1774
.label_1781:
	mov	dword ptr [r15], 2
	jmp	.label_1774
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413f50

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1786
	mov	rax, qword ptr [rbx + 0x48]
.label_1782:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
.label_1785:
	mov	bpl, byte ptr [rcx + rax]
.label_1783:
	movzx	eax, bpl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1786:
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_1788
	mov	rax, qword ptr [rbx + 0x48]
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_1784
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1782
.label_1784:
	mov	r14, qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_1787
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	cdqe	
	add	rax, r14
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_1783
.label_1788:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx]
	jmp	.label_1785
.label_1787:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_1783
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414000

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_1789
	jmp	btowc
.label_1789:
	mov	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414010

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, -1
	mov	r13d, 0x8000
	jmp	.label_1790
.label_1793:
	lea	rcx, [rbx + rbx*4]
	lea	rcx, [rax + rcx*2 - 0x30]
	cmp	rcx, 0x8000
	cmovg	rcx, r13
	nop	word ptr cs:[rax + rax]
.label_1790:
	mov	rbx, rcx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r12]
	movzx	edx, byte ptr [r12 + 8]
	cmp	edx, 0x18
	je	.label_1791
	cmp	edx, 2
	je	.label_1792
	cmp	eax, 0x2c
	je	.label_1791
	cmp	eax, 0x30
	mov	rcx, -2
	jb	.label_1790
	cmp	edx, 1
	jne	.label_1790
	cmp	rbx, -2
	je	.label_1790
	movzx	edx, al
	cmp	edx, 0x39
	ja	.label_1790
	cmp	rbx, -1
	jne	.label_1793
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_1790
.label_1792:
	mov	rbx, -2
.label_1791:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4140c0

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx]
	lea	rcx, [rbx + 0x28]
	xor	r14d, r14d
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_1795
	lea	r13, [rsp]
	xor	r14d, r14d
.label_1798:
	mov	qword ptr [rax], r12
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	je	.label_1800
	lea	r13, [r12 + 8]
	jmp	.label_1799
	nop	dword ptr [rax]
.label_1800:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1794:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_1797
	test	rbp, rbp
	jne	.label_1801
.label_1797:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	jne	.label_1794
	jmp	.label_1796
	nop	word ptr cs:[rax + rax]
.label_1801:
	lea	r13, [r12 + 0x10]
.label_1799:
	lea	rcx, [rbp + 0x28]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [r13], rax
	test	rax, rax
	mov	rbx, rbp
	jne	.label_1798
	jmp	.label_1795
.label_1796:
	mov	r14, qword ptr [rsp]
.label_1795:
	mov	rax, r14
	add	rsp, 8
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
	#Procedure 0x4141a0

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	eax, dword ptr [rsi + 0x30]
	movzx	ecx, al
	cmp	ecx, 0x11
	jne	.label_1802
	cmp	qword ptr [rsi + 0x28], rdi
	jne	.label_1802
	or	eax, 0x80000
	mov	dword ptr [rsi + 0x30], eax
.label_1802:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4141c0

	.globl preorder
	.type preorder, @function
preorder:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_1803
.label_1806:
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	mov	ecx, 0
	jne	.label_1807
	nop	dword ptr [rax]
.label_1804:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	cmp	r12, rax
	je	.label_1805
	test	r12, r12
	jne	.label_1807
.label_1805:
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	jne	.label_1804
	jmp	.label_1803
.label_1807:
	mov	rdi, r14
	mov	rsi, r12
	call	r15
	test	eax, eax
	mov	rbx, r12
	je	.label_1806
.label_1803:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414230

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1808
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1808
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_1808:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	jne	.label_1809
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1809
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_1809
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1810
	mov	qword ptr [rdx], rsi
.label_1810:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1809
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1809:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4142c0

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	dword ptr [rsp + 4], 0
	mov	rdx, qword ptr [rbx + 8]
	test	rdx, rdx
	je	.label_1811
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_1811
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_1811
	mov	qword ptr [rax], rbx
.label_1811:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_1812
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_1812
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1812
	mov	qword ptr [rax], rbx
.label_1812:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414340

	.globl calc_first
	.type calc_first, @function
calc_first:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	jne	.label_1813
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_1814
.label_1813:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rcx, rax
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	je	.label_1814
	xor	eax, eax
	movzx	edx, byte ptr [rbx + 0x30]
	cmp	edx, 0xc
	jne	.label_1814
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsi, qword ptr [r14]
	shl	rcx, 4
	shl	edx, 8
	and	edx, 0x3ff00
	mov	edi, 0xfffc00ff
	and	edi, dword ptr [rsi + rcx + 8]
	or	edi, edx
	mov	dword ptr [rsi + rcx + 8], edi
.label_1814:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4143d0

	.globl calc_next
	.type calc_next, @function
calc_next:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x10
	je	.label_1815
	cmp	eax, 0xb
	jne	.label_1818
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	xor	eax, eax
	ret	
.label_1815:
	mov	rax, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_1817
.label_1818:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1819
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1819:
	mov	rax, qword ptr [rsi + 0x10]
	test	rax, rax
	je	.label_1816
.label_1817:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1816:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414430

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	movzx	eax, byte ptr [rsi + 0x30]
	lea	edx, [rax - 2]
	cmp	edx, 0xe
	ja	.label_1825
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1822]]
.label_2808:
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rcx + 0x38]
.label_1821:
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
.label_2809:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rdx, [rdx + 0x18]
	cmove	rdx, rsi
	test	rax, rax
	js	.label_1823
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x38]
	test	rdx, rdx
	js	.label_1820
	lea	rcx, [rcx + rcx*2]
	shl	rcx, 3
	add	rcx, qword ptr [rdi + 0x28]
	mov	rdi, rcx
	mov	rsi, rax
	pop	rax
	jmp	re_node_set_init_2
.label_2806:
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_1824
	mov	edi, OFFSET FLAT:.str.17_3
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2807:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1824
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	jmp	.label_1821
.label_1825:
	test	al, 8
	jne	.label_1826
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1824:
	xor	eax, eax
	pop	rcx
	ret	
.label_1823:
	mov	edi, OFFSET FLAT:.str.18_3
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1820:
	mov	edi, OFFSET FLAT:.str.19_2
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1826:
	mov	edi, OFFSET FLAT:.str.20_1
	mov	esi, OFFSET FLAT:.str.6_3
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x414580

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdi
	xor	ebx, ebx
	lea	r15, [rsp + 8]
	xor	r12d, r12d
	jmp	.label_1827
	nop	dword ptr [rax]
.label_1830:
	inc	rbx
.label_1827:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_1828
	xor	ebx, ebx
	test	r12b, 1
	mov	r12d, 0
	je	.label_1829
.label_1828:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1830
	mov	ecx, 1
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_1831
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1830
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	jmp	.label_1830
.label_1831:
	mov	ebx, eax
.label_1829:
	mov	eax, ebx
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414610

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 0x10], 0
	je	.label_1835
	xor	eax, eax
	xorps	xmm0, xmm0
	xor	ecx, ecx
.label_1832:
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	mov	qword ptr [rdx + rax + 0x10], 0
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_1832
	xor	eax, eax
	test	rdx, rdx
	je	.label_1835
	xor	r14d, r14d
.label_1834:
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	cmp	qword ptr [rax + r15*8 + 8], 0
	jle	.label_1836
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1833:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r12 + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	call	re_node_set_insert_last
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1835
	inc	rbx
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	jl	.label_1833
.label_1836:
	inc	r14
	xor	eax, eax
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_1834
.label_1835:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4146d0

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r13, qword ptr [rsi]
	mov	rbp, qword ptr [r15 + 8]
	test	rbp, rbp
	je	.label_1838
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1838
	mov	rax, qword ptr [r15 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1840
	mov	rcx, qword ptr [r13 + 0xa0]
	bt	rcx, rax
	jae	.label_1840
.label_1838:
	mov	qword ptr [rsp], rdi
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 8
	mov	rdi, r13
	call	create_tree
	mov	r12, rax
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 9
	mov	rdi, r13
	call	create_tree
	mov	rbx, rax
	test	rbp, rbp
	mov	r14, rbx
	je	.label_1841
	mov	ecx, 0x10
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	r14, rax
.label_1841:
	mov	ecx, 0x10
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	create_tree
	test	rbx, rbx
	je	.label_1839
	test	r12, r12
	je	.label_1839
	test	r14, r14
	je	.label_1839
	test	rax, rax
	je	.label_1839
	mov	rcx, qword ptr [r15 + 0x28]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [r12 + 0x28], rcx
	mov	ecx, 0x80000
	and	ecx, dword ptr [r15 + 0x30]
	mov	edx, 0xfff7ffff
	mov	esi, dword ptr [rbx + 0x30]
	and	esi, edx
	or	esi, ecx
	mov	dword ptr [rbx + 0x30], esi
	and	edx, dword ptr [r12 + 0x30]
	or	edx, ecx
	mov	dword ptr [r12 + 0x30], edx
	jmp	.label_1837
.label_1840:
	mov	rax, qword ptr [r15 + 8]
.label_1837:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1839:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_1837
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4147e0

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rbx + 0x10], rbp
	jae	.label_1845
.label_1846:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r12
	mov	qword ptr [rax + rcx + 8], r15
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r15b
	cmp	eax, 5
	jne	.label_1842
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1847
.label_1842:
	cmp	eax, 6
	sete	cl
.label_1847:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r14, qword ptr [rbx + 0x10]
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_1843:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1845:
	lea	r13, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	r13, rax
	ja	.label_1843
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1843
	mov	qword ptr [rsp], r13
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 8]
	call	realloc
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_1844
	test	rbp, rbp
	je	.label_1844
	test	r13, r13
	je	.label_1844
	test	rax, rax
	je	.label_1844
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_1846
.label_1844:
	mov	r15, rax
	call	free
	mov	rdi, rbp
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_1843
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4149b0

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1851
	cmp	r14, r15
	jne	.label_1848
	mov	qword ptr [rbx + 8], 1
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1849
.label_1848:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	jge	.label_1850
	mov	qword ptr [rax], r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_1849
.label_1850:
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r14
.label_1849:
	xor	eax, eax
.label_1851:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414a30

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 1
	mov	qword ptr [rbx + 8], 1
	mov	edi, 8
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1853
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1852:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1853:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	eax, 0xc
	jmp	.label_1852
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414a80

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r15, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rbp + 0x28]
	lea	r14, [r15 + r15*2]
	mov	rsi, qword ptr [rax + r14*8 + 8]
	inc	rsi
	lea	rdi, [rsp + 0x30]
	call	re_node_set_alloc
	test	eax, eax
	jne	.label_1856
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rax, qword ptr [rbp]
	mov	rbx, r15
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1863
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_1863
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	jne	.label_1863
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r15
	mov	rcx, r15
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1856
.label_1863:
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + rbx + 8], 8
	jne	.label_1860
	mov	rbx, r15
	xor	r15d, r15d
	jmp	.label_1862
.label_1860:
	mov	rbx, r15
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1865
	xor	r15d, r15d
	xor	r13d, r13d
.label_1858:
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rdx, qword ptr [rcx + r13*8]
	lea	r12, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1857
	test	rcx, rcx
	jne	.label_1864
	xor	ecx, ecx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1855
	jmp	.label_1856
	nop	dword ptr [rax]
.label_1864:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1855:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1856
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_1861
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1857:
	mov	r15b, 1
.label_1861:
	inc	r13
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_1858
	jmp	.label_1862
.label_1865:
	xor	r15d, r15d
.label_1862:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1856
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1854
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1854
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1859
.label_1854:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1859:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1856:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414c60

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx], rsi
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rsi*8]
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	xor	ecx, ecx
	test	rax, rax
	mov	eax, 0xc
	cmovne	eax, ecx
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x414c90

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	ebx, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
.label_1878:
	mov	dword ptr [rsp + 0x10], ebx
	nop	word ptr cs:[rax + rax]
.label_1873:
	mov	rcx, qword ptr [rbp]
	mov	rax, r14
	shl	rax, 4
	movzx	ecx, byte ptr [rcx + rax + 8]
	cmp	ecx, 4
	jne	.label_1866
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rax + r14*8]
	mov	r15, rbp
	lea	r12, [r13 + r13*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x10]
	call	duplicate_node
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_1867
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + r13*8], rcx
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r14, rbx
	mov	r13, rbp
	mov	rbp, r15
	jne	.label_1873
	jmp	.label_1868
	nop	word ptr cs:[rax + rax]
.label_1866:
	mov	rcx, qword ptr [rbp + 0x28]
	lea	r15, [r14 + r14*2]
	mov	rdx, qword ptr [rcx + r15*8 + 8]
	test	rdx, rdx
	je	.label_1869
	mov	rsi, qword ptr [rcx + r15*8 + 0x10]
	mov	rsi, qword ptr [rsi]
	lea	r12, [r13 + r13*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	cmp	rdx, 1
	je	.label_1872
	mov	rdi, rbp
	mov	rbx, rsi
	mov	r13d, dword ptr [rsp + 0x10]
	mov	edx, r13d
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_1870
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	jne	.label_1871
	jmp	.label_1868
.label_1870:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	edx, r13d
	call	duplicate_node
	mov	r14, rax
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r14, -1
	je	.label_1868
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	mov	rsi, rbx
	je	.label_1868
	mov	rdi, rbp
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1868
.label_1871:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + r15*8 + 0x10]
	mov	r14, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r14
	mov	edx, r13d
	call	duplicate_node
	mov	r13, rax
	cmp	r13, -1
	je	.label_1877
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	jne	.label_1873
	jmp	.label_1868
.label_1872:
	cmp	r14, qword ptr [rsp + 8]
	jne	.label_1875
	cmp	r13, r14
	jne	.label_1876
.label_1875:
	mov	rcx, qword ptr [rbp]
	mov	eax, dword ptr [rcx + rax + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	ebx, dword ptr [rsp + 0x10]
	or	ebx, eax
	mov	rdi, rbp
	mov	r14, rsi
	mov	edx, ebx
	call	duplicate_node
	mov	r13, rax
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r13, -1
	je	.label_1868
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	jne	.label_1878
	jmp	.label_1868
.label_1867:
	mov	dword ptr [rsp + 0x14], 0xc
	jmp	.label_1868
.label_1877:
	mov	dword ptr [rsp + 0x14], 0xc
	jmp	.label_1868
.label_1869:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + r13*8], rcx
.label_1874:
	mov	dword ptr [rsp + 0x14], 0
.label_1868:
	mov	eax, dword ptr [rsp + 0x14]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1876:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	je	.label_1868
	jmp	.label_1874
	nop	
	.section	.text
	.align	32
	#Procedure 0x414f20

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	xor	eax, eax
	test	r15, r15
	je	.label_1882
	mov	rdx, qword ptr [r15 + 8]
	test	rdx, rdx
	je	.label_1882
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rax, [rcx + rdx*2]
	cmp	rbx, rax
	jge	.label_1881
	add	rbx, rdx
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1882
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_1881:
	mov	rax, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_1883
	lea	rbx, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1886
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1889
.label_1879:
	dec	rax
.label_1884:
	dec	rcx
	jmp	.label_1891
	nop	word ptr [rax + rax]
.label_1889:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1879
	jge	.label_1884
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_1891:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1889
.label_1886:
	test	rax, rax
	js	.label_1887
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1887:
	mov	r11, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	r10, [r11 + rax*2 - 1]
	mov	r15, r10
	sub	r15, rbx
	inc	r15
	mov	eax, 0
	je	.label_1882
	lea	rax, [r15 + r11]
	mov	qword ptr [r14 + 8], rax
	lea	r8, [r11 - 1]
.label_1885:
	lea	r9, [r11 - 1]
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdx, [r15*8]
	lea	rax, [r15 + r8]
	lea	r12, [rcx + rax*8]
	lea	r13, [rcx + r10*8]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1890:
	mov	rax, qword ptr [r13 + rsi*8]
	mov	rdi, qword ptr [rcx + r11*8 - 8]
	cmp	rax, rdi
	jle	.label_1880
	mov	qword ptr [r12 + rsi*8], rax
	add	rdx, -8
	dec	rsi
	xor	eax, eax
	mov	rdi, r15
	add	rdi, rsi
	jne	.label_1890
	jmp	.label_1882
	nop	word ptr cs:[rax + rax]
.label_1880:
	mov	qword ptr [r12 + rsi*8], rdi
	add	r15, rsi
	dec	r8
	add	r10, rsi
	cmp	r11, 1
	mov	r11, r9
	jg	.label_1885
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	jmp	.label_1888
.label_1883:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
.label_1888:
	call	memcpy
	xor	eax, eax
.label_1882:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4150e0

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	je	.label_1892
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1899
	cmp	rsi, rax
	jne	.label_1901
	lea	rax, [rsi + rsi]
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1900
	mov	qword ptr [rbx + 0x10], rax
.label_1901:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	qword ptr [rcx], r14
	jle	.label_1896
	test	rax, rax
	jle	.label_1895
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_1894:
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx + rax*8], rdx
	cmp	rax, 1
	lea	rax, [rax - 1]
	jg	.label_1894
	jmp	.label_1895
.label_1892:
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	test	eax, eax
	sete	al
	jmp	.label_1893
.label_1899:
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1897
.label_1896:
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	cmp	rcx, r14
	jle	.label_1895
	mov	rdx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1898:
	mov	qword ptr [rsi + rax*8], rcx
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsi, rdx
	jg	.label_1898
.label_1895:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_1897:
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_1893:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1900:
	xor	eax, eax
	jmp	.label_1893
	nop	
	.section	.text
	.align	32
	#Procedure 0x4151c0

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	r15, r14
	shl	r15, 4
	mov	rsi, qword ptr [rax + r15]
	mov	rdx, qword ptr [rax + r15 + 8]
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1902
	mov	rcx, qword ptr [rbx]
	mov	rdx, rax
	shl	rdx, 4
	shl	ebp, 8
	and	ebp, 0x3ff00
	mov	esi, 0xfffc00ff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, ebp
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	mov	esi, 0x3ff00
	and	esi, dword ptr [rcx + r15 + 8]
	or	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	or	dword ptr [rcx + rdx + 8], 0x40000
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + rax*8], r14
.label_1902:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x415240

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_1903
	mov	r9, qword ptr [rdi]
	mov	rcx, r10
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	mov	ecx, r11d
	and	ecx, 0x40000
	je	.label_1903
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
	nop	word ptr [rax + rax]
.label_1906:
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_1904
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	je	.label_1905
.label_1904:
	dec	r10
	test	r10, r10
	jle	.label_1903
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	mov	ecx, r11d
	and	ecx, 0x40000
	add	r8, -0x10
	test	ecx, ecx
	jne	.label_1906
	jmp	.label_1903
.label_1905:
	mov	rax, r10
.label_1903:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4152c0

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_1907
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rbx], rcx
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1908
	mov	qword ptr [rbx + 0x10], rax
.label_1907:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_1909:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1908:
	xor	eax, eax
	jmp	.label_1909
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415320

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rdi
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1910
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1912
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1911
.label_1910:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1911:
	xor	eax, eax
.label_1913:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1912:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_1913
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415390

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	mov	r9, qword ptr [rdi + 8]
	xor	eax, eax
	test	r9, r9
	jle	.label_1914
	xor	eax, eax
	dec	r9
	je	.label_1916
	mov	r8, qword ptr [rdi + 0x10]
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1915:
	lea	rdx, [r9 + rax]
	shr	rdx, 1
	cmp	qword ptr [r8 + rdx*8], rsi
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmovge	r9, rdx
	cmp	rax, r9
	jb	.label_1915
.label_1916:
	mov	rcx, qword ptr [rdi + 0x10]
	cmp	qword ptr [rcx + rax*8], rsi
	jne	.label_1917
	inc	rax
	ret	
.label_1917:
	xor	eax, eax
.label_1914:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4153e0

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbp, rsi
	cmp	qword ptr [rdx + 8], 0
	je	.label_1918
	mov	qword ptr [rsp], rdi
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	mov	esi, r13d
	call	calc_state_hash
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x40]
	mov	rcx, qword ptr [rbp + 0x88]
	mov	qword ptr [rsp + 8], rbp
	and	rcx, rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_1923
	lea	r14, [rax + rcx*8]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
.label_1922:
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_1920
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1920
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_node_set_compare
	test	al, al
	jne	.label_1919
.label_1920:
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_1922
.label_1923:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1919
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_1921
.label_1918:
	mov	dword ptr [rdi], 0
.label_1921:
	xor	ebp, ebp
.label_1919:
	mov	rax, rbp
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
	#Procedure 0x4154c0

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	mov	eax, esi
	add	rax, rcx
	test	rcx, rcx
	jle	.label_1924
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1925:
	add	rax, qword ptr [rdx + rsi*8]
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1925
.label_1924:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4154f0

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	test	rdi, rdi
	je	.label_1926
	test	rsi, rsi
	je	.label_1926
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	jne	.label_1928
	nop	word ptr cs:[rax + rax]
.label_1927:
	mov	al, 1
	test	rcx, rcx
	jle	.label_1926
	mov	rax, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_1927
.label_1928:
	xor	eax, eax
.label_1926:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415540

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x10], rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_1931
	mov	r12, r15
	add	r12, 8
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1933
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r14b
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r12
	mov	qword ptr [rsp + 0x20], r12
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1943
	mov	eax, r14d
	and	eax, 1
	mov	dword ptr [rsp + 0x1c], eax
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r14d, 4
	mov	dword ptr [rsp + 8], r14d
	xor	r14d, r14d
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1929:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	ecx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	eax, r13d
	and	eax, 0x3ff
	cmp	ecx, 1
	jne	.label_1938
	test	eax, eax
	je	.label_1930
.label_1938:
	mov	rdi, rbx
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	dl, bl
	shr	dl, 5
	movzx	edx, dl
	or	edx, esi
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r15 + 0x68], bl
	cmp	ecx, 4
	je	.label_1935
	cmp	ecx, 2
	jne	.label_1945
	or	bl, 0x10
	jmp	.label_1940
.label_1935:
	or	bl, 0x40
.label_1940:
	mov	byte ptr [r15 + 0x68], bl
.label_1945:
	test	eax, eax
	je	.label_1934
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [r15 + 0x50], rax
	mov	rbx, rdi
	jne	.label_1936
	mov	edi, 0x18
	call	malloc
	mov	qword ptr [r15 + 0x50], rax
	test	rax, rax
	je	.label_1932
	mov	rdi, rax
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	mov	eax, 0
	jne	.label_1931
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_1936:
	cmp	dword ptr [rsp + 0x1c], 0
	jne	.label_1937
	mov	eax, r13d
	and	eax, 1
	jne	.label_1942
.label_1937:
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_1939
	mov	eax, r13d
	and	eax, 2
	jne	.label_1942
.label_1939:
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1944
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1942
.label_1944:
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1930
	and	r13d, 0x40
	je	.label_1930
	nop	word ptr cs:[rax + rax]
.label_1942:
	mov	rsi, r14
	sub	rsi, r12
	mov	rdi, qword ptr [rsp + 0x20]
	call	re_node_set_remove_at
	inc	r12
	jmp	.label_1930
.label_1934:
	mov	rbx, rdi
	nop	dword ptr [rax + rax]
.label_1930:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_1929
.label_1943:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	call	register_state
	test	eax, eax
	mov	rax, r15
	je	.label_1931
.label_1932:
	mov	rdi, r15
	call	free_state
	jmp	.label_1941
.label_1933:
	mov	rdi, r15
	call	free
.label_1941:
	xor	eax, eax
.label_1931:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415750

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	test	rsi, rsi
	js	.label_1946
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_1946
	dec	rax
	mov	qword ptr [rdi + 8], rax
	cmp	rax, rsi
	jle	.label_1946
	mov	rax, qword ptr [rdi + 0x10]
	nop	
.label_1947:
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	mov	qword ptr [rax + rsi*8], rcx
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	jl	.label_1947
.label_1946:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415790

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r13, rdi
	mov	qword ptr [rbx], r15
	lea	r12, [rbx + 0x20]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	r14d, 0xc
	test	eax, eax
	jne	.label_1951
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_1949
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1952:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	jne	.label_1950
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	je	.label_1951
.label_1950:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_1952
.label_1949:
	mov	r12, qword ptr [r13 + 0x40]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_1953
.label_1948:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_1951:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1953:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1951
	lea	rcx, [r12 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r12 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rcx], rdx
	jmp	.label_1948
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415880

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	cmp	ecx, 2
	je	.label_1954
	lea	r13, [r14 + 1]
	cmp	ecx, 1
	je	.label_1964
	test	ecx, ecx
	jne	.label_1963
	lea	r12, [r13*8]
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 8], rax
	xor	ebp, ebp
	test	rax, rax
	je	.label_1960
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	je	.label_1959
	mov	qword ptr [r15], r13
	mov	r12d, 1
	jmp	.label_1956
.label_1954:
	mov	r12d, 2
	cmp	qword ptr [r15], r14
	jae	.label_1956
	mov	edi, OFFSET FLAT:.str.24_0
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1964:
	mov	r12d, 1
	cmp	r13, qword ptr [r15]
	ja	.label_1958
.label_1956:
	xor	eax, eax
	test	r14, r14
	jle	.label_1961
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	add	rbx, 8
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_1955:
	mov	rsi, qword ptr [rbx - 8]
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_1955
	mov	rax, r14
.label_1961:
	cmp	rax, qword ptr [r15]
	jae	.label_1962
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_1965:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	cmp	rax, qword ptr [r15]
	jb	.label_1965
.label_1962:
	mov	ebp, r12d
.label_1960:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1958:
	mov	rdi, qword ptr [r15 + 8]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1960
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1957
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15], r13
	jmp	.label_1956
.label_1959:
	mov	rdi, qword ptr [r15 + 8]
	call	free
	jmp	.label_1960
.label_1957:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_1960
.label_1963:
	mov	edi, OFFSET FLAT:.str.23
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415a20

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	r15, qword ptr [rsp + 0x30]
	movsxd	rax, dword ptr [r15 + 0xb4]
	cmp	rax, rcx
	cmovge	rcx, rax
	lea	rbx, [r14 + 1]
	cmp	rbx, rcx
	cmovg	rbx, rcx
	movzx	eax, r9b
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, r8
	mov	r8d, eax
	mov	r9, r15
	call	re_string_construct_common
	mov	rdi, r13
	mov	rsi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1966
	lea	rax, [r15 + 0xb8]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	shr	al, 4
	and	al, 1
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_1968
	mov	r12, qword ptr [r13 + 8]
.label_1968:
	mov	qword ptr [r13 + 8], r12
	xor	eax, eax
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_1967
	xor	ecx, ecx
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_1967
	mov	rcx, r14
.label_1967:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_1966:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x415ae0

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	dword ptr [rbx + 0xa0], esi
	mov	qword ptr [rbx + 0xa8], -1
	test	r14, r14
	jle	.label_1969
	mov	r15d, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1970
	lea	rbp, [r14*8]
	lea	rdi, [rbp + rbp*4]
	call	malloc
	mov	qword ptr [rbx + 0xd8], rax
	mov	rdi, rbp
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rax, rax
	je	.label_1970
	mov	rax, qword ptr [rbx + 0xd8]
	test	rax, rax
	je	.label_1970
.label_1969:
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	xor	r15d, r15d
.label_1970:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415b80

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r14
	jle	.label_1995
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2004
	mov	qword ptr [rbx + 0x20], 0
.label_2004:
	mov	rcx, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rcx
	mov	rcx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	lea	ecx, [r15 + r15]
	and	ecx, 2
	xor	ecx, 6
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbx + 0x70], ecx
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r13, r14
	jne	.label_1974
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_1974:
	test	r13, r13
	je	.label_1971
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_1975
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1978
	lea	rsi, [r13 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1983
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r13*4]
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_1983:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1988
.label_2006:
	sub	qword ptr [rbx + 0x30], r13
	sub	qword ptr [rbx + 0x38], r13
.label_1973:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1971
	add	qword ptr [rbx + 8], r13
.label_1971:
	mov	qword ptr [rbx + 0x28], r14
	sub	qword ptr [rbx + 0x58], r13
	sub	qword ptr [rbx + 0x68], r13
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1993
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1997
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1999
	jmp	.label_1992
.label_1993:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2002
	mov	rax, qword ptr [rbx + 0x58]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1992
.label_1997:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1992:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1999:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1995:
	mov	r13, r14
	sub	r13, rax
	jmp	.label_1974
.label_1975:
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1986
.label_2007:
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2016
	mov	qword ptr [rsp], rdx
	mov	dword ptr [rsp + 0x24], 0xffffffff
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1982
	mov	rdx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, rdx
	movsxd	rsi, dword ptr [rbx + 0x90]
	mov	rcx, r13
	sub	rcx, rsi
	add	rcx, rax
	cmp	rcx, rdx
	cmovb	rcx, rdx
	lea	r12, [rax + r13]
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_1979:
	dec	rbp
	cmp	rbp, rcx
	jb	.label_2000
	mov	dl, byte ptr [rbp]
	and	dl, 0xc0
	movzx	edx, dl
	cmp	edx, 0x80
	je	.label_1979
	add	rax, qword ptr [rbx + 0x58]
	mov	rdx, rax
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_1991
.label_1985:
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 0x18]
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	sub	rcx, r12
	jb	.label_2000
	cmp	rax, -3
	ja	.label_2000
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, dword ptr [rsp + 0x14]
	mov	dword ptr [rsp + 0x24], eax
.label_2000:
	mov	edi, dword ptr [rsp + 0x24]
	cmp	edi, -1
	jne	.label_2008
.label_1982:
	lea	rdx, [rsp + 0x24]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_skip_chars
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	mov	edi, dword ptr [rsp + 0x24]
	cmp	edi, -1
	je	.label_2012
.label_2008:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2015
	mov	ecx, dword ptr [rsp + 0x24]
.label_2010:
	xor	eax, eax
	cmp	ecx, 0xa
	jne	.label_1980
	mov	eax, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1980
	xor	eax, eax
	jmp	.label_1980
.label_1978:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1989:
	lea	rdi, [rdx + rsi]
	mov	rcx, rdi
	shr	rcx, 0x3f
	add	rcx, rdi
	sar	rcx, 1
	cmp	qword ptr [rax + rcx*8], r13
	mov	rdi, rcx
	jg	.label_1984
	jge	.label_1987
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_1984:
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_1989
.label_1987:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rcx*8], r13
	setl	al
	movzx	eax, al
	lea	rbp, [rax + rcx]
	lea	rsi, [rax + rcx - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	jle	.label_1994
	cmp	rbp, r13
	jne	.label_1994
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_1994
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r13*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	sub	qword ptr [rbx + 0x38], r13
	test	rax, rax
	jle	.label_1973
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r13*8]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_2003:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_2003
	jmp	.label_1973
.label_1988:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_2006
.label_1994:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	word ptr cs:[rax + rax]
.label_1990:
	mov	rax, rbp
	test	rax, rax
	jle	.label_2013
	lea	rbp, [rax - 1]
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_1990
.label_2013:
	cmp	rax, qword ptr [rbx + 0x30]
	jge	.label_1972
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1996:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1972
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	jl	.label_1996
.label_1972:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1998
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_1977
.label_2002:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2005
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_1992
.label_2016:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	mov	al, byte ptr [rcx + rax - 1]
	movzx	ecx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	je	.label_2009
	mov	al, byte ptr [rdx + rcx]
.label_2009:
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	r15d, al
	mov	rsi, r15
	call	bitset_contain
	mov	ecx, 1
	test	al, al
	jne	.label_1981
	xor	ecx, ecx
	cmp	r15d, 0xa
	jne	.label_1981
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1981
	xor	ecx, ecx
.label_1981:
	mov	dword ptr [rbx + 0x70], ecx
	jmp	.label_1973
.label_1998:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	je	.label_1977
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1976
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1976:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	call	memset
	jmp	.label_1977
.label_2005:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1992
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_1992
.label_2012:
	mov	rsi, qword ptr [rsp]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
.label_1980:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	jne	.label_2001
.label_1977:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1973
.label_1986:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_2007
.label_2001:
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_2011
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_2011:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1976
	jmp	.label_1977
.label_2015:
	call	iswalnum
	test	eax, eax
	mov	eax, 1
	jne	.label_1980
	mov	ecx, dword ptr [rsp + 0x24]
	cmp	ecx, 0x5f
	jne	.label_2010
	jmp	.label_1980
.label_1991:
	lea	rsi, [rsp + 0xe]
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1985
	lea	rcx, [rbp - 1]
	sub	rcx, rax
	cmp	rcx, -8
	mov	r10, -7
	cmovg	r10, rcx
	xor	r10, 0xffffffffffffffff
	shl	r10, 0x20
	sar	r10, 0x20
	lea	r8, [rsp + r10 + 0xd]
	lea	r9, [r10 + rbp - 1]
	xor	ecx, ecx
.label_2014:
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	mov	al, byte ptr [rax + rdi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_2014
	jmp	.label_1985
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4161b0

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rdx
	mov	dword ptr [rsp + 0x1c], esi
	mov	rbp, rdi
	mov	r14, qword ptr [rbp + 0x98]
	mov	r12, qword ptr [rbp + 0x48]
	test	r13, r13
	setne	al
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x24], 0
	mov	r15, qword ptr [rbp + 0x98]
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	jns	.label_2023
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [rbp + 0xa0]
	mov	rdi, rbp
	call	re_string_context_at
	test	al, 1
	jne	.label_2022
	test	eax, eax
	je	.label_2023
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	je	.label_2024
	test	sil, sil
	jne	.label_2024
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_2023
.label_2022:
	mov	rbx, qword ptr [r15 + 0x50]
.label_2023:
	test	rbx, rbx
	je	.label_2031
	mov	rax, qword ptr [rbp + 0xb8]
	test	rax, rax
	je	.label_2033
	mov	qword ptr [rax + r12*8], rbx
	cmp	qword ptr [r14 + 0x98], 0
	jne	.label_2037
.label_2033:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	xor	ecx, ecx
	test	al, 0x10
	jne	.label_2041
.label_2019:
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 0x24]
.label_2038:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_2020
	test	rcx, rcx
	sete	r12b
	mov	eax, dword ptr [rsp + 0x1c]
	or	r12b, al
	mov	r15, rbx
	nop	word ptr cs:[rax + rax]
.label_2044:
	lea	r14, [rsi + 1]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r14, rax
	jge	.label_2029
.label_2017:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r14, rax
	jge	.label_2021
.label_2028:
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r15
	call	transit_state
	mov	rbx, rax
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_2040
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_2040:
	test	rbx, rbx
	jne	.label_2045
	mov	rax, -2
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_2025
	cmp	qword ptr [rbp + 0xb8], 0
	setne	al
	and	al, r12b
	movzx	eax, al
	cmp	eax, 1
	jne	.label_2020
	mov	rdi, r13
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2020
.label_2045:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_2034
.label_2030:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	je	.label_2036
	test	al, al
	jns	.label_2027
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsi, rbx
	call	check_halt_state_context
	test	rax, rax
	jne	.label_2027
.label_2036:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r15, rbx
	jg	.label_2044
	jmp	.label_2020
.label_2029:
	cmp	rax, qword ptr [rbp + 0x58]
	jl	.label_2047
	jmp	.label_2017
.label_2021:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_2028
.label_2047:
	add	esi, 2
	mov	rdi, rbp
	call	extend_buffers
	mov	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
	test	ecx, ecx
	jne	.label_2026
	jmp	.label_2028
.label_2034:
	cmp	r15, rbx
	je	.label_2018
	mov	dword ptr [rsp + 0x20], 0
.label_2018:
	mov	rax, qword ptr [rsp + 0x10]
	cmove	rax, r14
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_2030
	nop	dword ptr [rax + rax]
.label_2027:
	mov	rdx, qword ptr [rbp + 0x48]
	mov	qword ptr [rsp], rdx
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	ecx, 1
	mov	eax, 0
	mov	qword ptr [rsp + 8], rax
	mov	rax, rdx
	jne	.label_2038
	jmp	.label_2025
.label_2020:
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_2046
	mov	rax, qword ptr [rsp + 0x10]
	add	qword ptr [rcx], rax
.label_2046:
	mov	rax, qword ptr [rsp]
	jmp	.label_2025
.label_2026:
	mov	rax, -2
	cmp	ecx, 0xc
	je	.label_2025
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_2031:
	mov	rax, -2
	cmp	dword ptr [rsp + 0x24], 0xc
	je	.label_2025
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_2024:
	test	edx, edx
	jne	.label_2043
	test	ecx, ecx
	je	.label_2023
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x24]
	mov	rsi, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_2023
.label_2041:
	test	al, al
	js	.label_2042
	mov	ecx, 1
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	rdx, r12
	jne	.label_2019
	mov	rax, r12
	jmp	.label_2025
.label_2037:
	lea	r15, [rbx + 8]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, r15
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_2032
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_2035
	mov	rdi, rbp
	mov	rsi, r15
	call	transit_state_bkref
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_2039
.label_2035:
	mov	dword ptr [rsp + 0x20], 0
	jmp	.label_2033
.label_2043:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_2023
.label_2042:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	or	rdx, r12
	test	rax, rax
	setne	al
	movzx	ecx, al
	je	.label_2019
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_2019
	mov	rax, r12
.label_2025:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2032:
	cdqe	
	jmp	.label_2025
.label_2039:
	cdqe	
	jmp	.label_2025
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416550

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r15d, eax
	xor	ebp, ebp
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_2048
	mov	r12, qword ptr [rbx + 0x98]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2049:
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rdi, r12
	mov	rsi, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_2048
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	jl	.label_2049
.label_2048:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4165d0

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0xa8]
	mov	r13d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbx, rax
	ja	.label_2051
	mov	r14, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r12 + 0xb0]
	mov	qword ptr [rsp + 0x18], rax
	lea	rbp, [rbx*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r15, rax
	mov	r13d, 0xc
	test	r15, r15
	je	.label_2059
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_2062
	mov	qword ptr [rsp + 8], r14
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	je	.label_2056
	mov	qword ptr [rsp + 0x10], r12
	lea	rbp, [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x18]
	mov	r14, r15
	mov	r15, rax
	jmp	.label_2054
.label_2062:
	lea	r14, [rsp + 0x20]
	xor	edx, edx
	mov	rdi, r14
	mov	rbp, r15
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, r12
	mov	rsi, r14
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_2058
	xor	r15d, r15d
	cmp	qword ptr [rbp], 0
	jne	.label_2061
	mov	r13d, 1
	jmp	.label_2050
	nop	word ptr [rax + rax]
.label_2053:
	mov	rdx, rbx
	call	check_halt_state_context
	mov	r12, rax
.label_2054:
	lea	rdx, [rbx*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_2057
	cmp	qword ptr [r14], 0
	jne	.label_2055
	cmp	qword ptr [r15], 0
	jne	.label_2055
	mov	r13d, 1
	test	rbx, rbx
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_2060
	mov	rax, qword ptr [rdi + 0xb8]
	dec	rbx
	nop	word ptr [rax + rax]
.label_2052:
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	je	.label_2063
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_2053
.label_2063:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	jge	.label_2052
	mov	rbp, r14
	jmp	.label_2050
.label_2059:
	mov	rbp, r15
	xor	r15d, r15d
	jmp	.label_2050
.label_2057:
	mov	rbp, r14
	jmp	.label_2050
.label_2055:
	mov	qword ptr [rsp + 0x18], r12
	lea	rcx, [rbx + 1]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, r14
	mov	rsi, rbp
	mov	rdx, r15
	call	merge_state_array
	mov	r13d, eax
	mov	rdi, r15
	call	free
	xor	r15d, r15d
	test	r13d, r13d
	mov	r12, qword ptr [rsp + 0x10]
	jne	.label_2050
.label_2061:
	mov	rdi, qword ptr [r12 + 0xb8]
	call	free
	mov	qword ptr [r12 + 0xb8], rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0xb0], rax
	mov	qword ptr [r12 + 0xa8], rbx
	xor	r13d, r13d
	xor	ebp, ebp
.label_2058:
	xor	r15d, r15d
.label_2050:
	mov	rdi, rbp
	call	free
	mov	rdi, r15
	call	free
.label_2051:
	mov	eax, r13d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2056:
	mov	rbp, r15
	mov	r15, rax
	jmp	.label_2050
.label_2060:
	mov	rbp, r14
	jmp	.label_2050
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416820

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_2064
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2067:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	mov	ebx, 0
	jle	.label_2065
	nop	word ptr [rax + rax]
.label_2068:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2068
.label_2065:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_2066
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_2066:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2067
.label_2064:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4168e0

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r12, rcx
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x78], rsi
	mov	r15, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_2078]]
	mov	qword ptr [rbp - 0x60], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_2079]]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	xor	r14d, r14d
	test	r8b, r8b
	je	.label_2080
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 4
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_2071
	lea	r14, [rbp - 0x70]
.label_2080:
	mov	qword ptr [rbp - 0x88], r15
	mov	r15, qword ptr [r15 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x50], xmm0
	mov	qword ptr [rbp - 0x40], 0
	mov	r13, rbx
	shl	r13, 4
	cmp	r13, 0xfbf
	ja	.label_2075
	mov	rdi, rsp
	lea	rax, [r13 + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x8c], 0
	jmp	.label_2087
.label_2075:
	mov	rdi, r13
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_2070
	mov	al, 1
	mov	dword ptr [rbp - 0x8c], eax
.label_2087:
	mov	qword ptr [rbp - 0x80], rdi
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	qword ptr [rbp - 0x30], r8
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_2085
	lea	r13, [r12 + 8]
	jmp	.label_2076
.label_2073:
	cmp	r15, -2
	je	.label_2081
	test	r14, r14
	je	.label_2082
	mov	rdi, r14
	lea	rsi, [rbp - 0x30]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	mov	r15, rax
	jmp	.label_2088
	nop	word ptr cs:[rax + rax]
.label_2076:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_2072
	mov	rax, qword ptr [rbp - 0x78]
	cmp	r15, qword ptr [rax + 0xb0]
	jne	.label_2072
	test	r14, r14
	je	.label_2074
	test	rbx, rbx
	mov	rcx, r13
	mov	eax, 0
	je	.label_2077
	nop	word ptr [rax + rax]
.label_2086:
	cmp	qword ptr [rcx - 8], 0
	js	.label_2083
	cmp	qword ptr [rcx], -1
	je	.label_2077
.label_2083:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_2086
.label_2077:
	cmp	rax, rbx
	je	.label_2085
	mov	rdi, r14
	lea	rsi, [rbp - 0x30]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	mov	r15, rax
.label_2072:
	sub	rsp, 0x10
	mov	qword ptr [rsp], r14
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rcx, [rbp - 0x30]
	mov	r8, r15
	lea	r9, [rbp - 0x50]
	call	proceed_next_node
	add	rsp, 0x10
	mov	r15, rax
	test	r15, r15
	js	.label_2073
.label_2088:
	mov	r8, qword ptr [rbp - 0x30]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_2076
.label_2085:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_2084
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_2084:
	mov	rdi, r14
	call	free_fail_stack_return
	xor	r14d, r14d
	jmp	.label_2071
.label_2074:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	xor	r14d, r14d
	jmp	.label_2069
.label_2081:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_2070
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_2070:
	mov	rdi, r14
	call	free_fail_stack_return
	mov	r14d, 0xc
.label_2071:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2082:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	r14d, 1
.label_2069:
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_2071
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	jmp	.label_2071
	nop	
	.section	.text
	.align	32
	#Procedure 0x416b70

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	push	rbx
	mov	rbx, rdi
	call	match_ctx_clean
	mov	rdi, qword ptr [rbx + 0xf8]
	call	free
	mov	rdi, qword ptr [rbx + 0xd8]
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416ba0

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_2095
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2096
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2097
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_2093:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_2092
	dec	rsi
	test	rsi, rsi
	jg	.label_2093
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2089
.label_2097:
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	ebp, byte ptr [rax + rsi]
	mov	rsi, rbp
	call	bitset_contain
	mov	edx, 1
	test	al, al
	jne	.label_2089
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2089
	jmp	.label_2090
.label_2092:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2091
.label_2094:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2089
.label_2090:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_2089
	xor	edx, edx
	jmp	.label_2089
.label_2095:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_2089
.label_2096:
	and	edx, 2
	xor	edx, 0xa
.label_2089:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2091:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_2089
	test	eax, eax
	jne	.label_2089
	jmp	.label_2094
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416c60

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0x38]
	add	rbx, qword ptr [r12 + 0x28]
	mov	ecx, 0xffffffff
	cmp	rbx, r15
	jge	.label_2098
	mov	qword ptr [rsp + 8], rdx
	lea	r13, [r12 + 0x20]
	jmp	.label_2102
.label_2101:
	xor	ecx, ecx
	cmp	rbp, rbx
	je	.label_2103
	test	rax, rax
	je	.label_2103
	mov	rax, qword ptr [r12]
	movzx	ecx, byte ptr [rax + rbx]
.label_2103:
	mov	qword ptr [r13], r14
	mov	eax, 1
	jmp	.label_2100
	nop	word ptr cs:[rax + rax]
.label_2102:
	mov	r14, qword ptr [r12 + 0x20]
	mov	rbp, qword ptr [r12 + 0x50]
	mov	rdx, rbp
	sub	rdx, rbx
	mov	rsi, qword ptr [r12]
	add	rsi, rbx
	lea	rdi, [rsp + 0x14]
	mov	rcx, r13
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_2101
	mov	rcx, rax
	or	rcx, 1
	cmp	rcx, -1
	je	.label_2101
	mov	ecx, dword ptr [rsp + 0x14]
.label_2100:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_2102
	jmp	.label_2099
.label_2098:
	mov	qword ptr [rsp + 8], rdx
.label_2099:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
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
	#Procedure 0x416d30

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rax, rsi
	sar	rax, 0x3f
	shr	rax, 0x3a
	add	rax, rsi
	sar	rax, 6
	mov	rax, qword ptr [rdi + rax*8]
	bt	rax, rsi
	setb	al
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x416d50

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 8], 0
	jle	.label_2104
	mov	r12, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2106:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	mov	rcx, rsi
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, 8
	jne	.label_2105
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	jg	.label_2105
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_2105
	mov	rdi, r15
	mov	rdx, r14
	call	match_ctx_add_subtop
	test	eax, eax
	jne	.label_2104
	nop	word ptr cs:[rax + rax]
.label_2105:
	inc	rbx
	xor	eax, eax
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_2106
.label_2104:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416df0

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r14, rsi
	mov	qword ptr [rsp + 0x38], r14
	mov	r13, rdi
	cmp	qword ptr [r14 + 8], 0
	jle	.label_2122
	mov	r8, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x10], r8
	mov	rax, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x40], rax
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_2121:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	movzx	eax, bl
	cmp	eax, 4
	jne	.label_2108
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_2115
	mov	r14, rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	r12, r8
	mov	rsi, qword ptr [rsp + 0x40]
	call	re_string_context_at
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2123
	test	ecx, ecx
	je	.label_2108
.label_2123:
	test	bh, 8
	je	.label_2111
	test	ecx, ecx
	jne	.label_2108
.label_2111:
	test	bh, 0x20
	je	.label_2112
	mov	ecx, eax
	and	ecx, 2
	je	.label_2108
.label_2112:
	test	bpl, bpl
	jns	.label_2115
	and	eax, 8
	je	.label_2108
	nop	word ptr cs:[rax + rax]
.label_2115:
	mov	qword ptr [rsp + 8], rsi
	mov	r12, qword ptr [r13 + 0xc8]
	mov	rdi, r13
	mov	rbx, r8
	mov	rbp, rsi
	mov	rdx, qword ptr [rsp + 0x40]
	call	get_subexp
	mov	rdx, rbp
	mov	r8, rbx
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_2107
	cmp	r12, qword ptr [r13 + 0xc8]
	jge	.label_2108
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr [rax + rax]
.label_2117:
	mov	rax, qword ptr [r13 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rdx
	jne	.label_2110
	mov	rcx, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_2110
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rdi, qword ptr [r8 + 0x30]
	cmp	rsi, rcx
	jne	.label_2118
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	jmp	.label_2119
.label_2118:
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rdx*8]
	add	rcx, qword ptr [r8 + 0x18]
.label_2119:
	mov	rcx, qword ptr [rcx]
	lea	rcx, [rcx + rcx*2]
	mov	qword ptr [rsp + 0x30], rcx
	mov	r14, qword ptr [rax + rbp]
	mov	rbx, qword ptr [rsp + 0x40]
	add	r14, rbx
	sub	r14, qword ptr [rax + rbp - 8]
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	r8, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rbx*8]
	test	rcx, rcx
	mov	esi, 0
	je	.label_2114
	mov	rsi, qword ptr [rcx + 0x10]
.label_2114:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdx, [rcx + rdx*8]
	test	r8, r8
	lea	rbx, [rsp + 0x48]
	mov	rdi, rbx
	je	.label_2120
	mov	ebx, eax
	mov	qword ptr [rsp + 0x30], rsi
	mov	rsi, qword ptr [r8 + 0x50]
	mov	qword ptr [rsp + 0x28], rdx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_2109
	lea	rdi, [rsp + 0x64]
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdx, [rsp + 0x48]
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_2113
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_2107
.label_2113:
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_2116
.label_2120:
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rsp + 0x64]
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, rbx
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 8]
	jne	.label_2116
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_2107
	nop	dword ptr [rax]
.label_2116:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_2110
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_2110
	mov	rdi, r13
	mov	qword ptr [rsp + 0x38], r14
	mov	r14, r8
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x40]
	call	check_subexp_matching_top
	mov	rdx, rbx
	mov	rcx, r14
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_2107
	mov	rdi, r13
	mov	r14, rcx
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	call	transit_state_bkref
	mov	rdx, rbx
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_2107
	nop	dword ptr [rax + rax]
.label_2110:
	inc	r12
	add	rbp, 0x28
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_2117
	nop	word ptr cs:[rax + rax]
.label_2108:
	inc	r15
	cmp	r15, qword ptr [r14 + 8]
	jl	.label_2121
.label_2122:
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_2107
.label_2109:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
.label_2107:
	mov	eax, dword ptr [rsp + 0x64]
	add	rsp, 0x68
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
	#Procedure 0x4171a0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbx
	mov	ecx, esi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_2124
	movsxd	rax, ecx
	mov	rcx, qword ptr [rbx + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_2124
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_2125
	mov	rax, qword ptr [rbx + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_2124
	mov	qword ptr [rbx + 0xb8], rcx
.label_2125:
	cmp	byte ptr [rbx + 0x88], 0
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_2128
	mov	rdi, rbx
	cmp	eax, 2
	jl	.label_2126
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_2127
	jmp	.label_2124
.label_2128:
	cmp	eax, 2
	jl	.label_2129
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_2127
.label_2126:
	call	build_upper_buffer
	jmp	.label_2127
.label_2129:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_2127
	mov	rdi, rbx
	call	re_string_translate_buffer
.label_2127:
	xor	eax, eax
.label_2124:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417270

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_2133
.label_2131:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_2135:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_2134
	mov	r13, qword ptr [r14 + 0x60]
	test	r13, r13
	jne	.label_2132
	mov	rdi, qword ptr [rbx + 0x98]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	jne	.label_2135
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	jmp	.label_2130
.label_2134:
	mov	rax, qword ptr [rax + r12*8]
.label_2130:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_2133:
	mov	rdi, rbx
	mov	rsi, r14
	call	transit_state_mb
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	je	.label_2131
	jmp	.label_2130
.label_2132:
	mov	rsi, qword ptr [rbx + 0x48]
	dec	rsi
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rdi, rbx
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, r12
	mov	rax, qword ptr [r13 + rax*8]
	jmp	.label_2130
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417320

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_2140
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_2139
.label_2140:
	cmp	qword ptr [rax + r14*8], 0
	je	.label_2141
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	je	.label_2142
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_2138
	xor	eax, eax
	jmp	.label_2136
.label_2141:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_2139
.label_2142:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	ebp, ebp
.label_2138:
	mov	rsi, qword ptr [r13 + 0x48]
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	rbp, rbp
	je	.label_2139
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2139:
	test	rbx, rbx
	je	.label_2137
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_2143
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2136
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_2136
	mov	rdi, r13
	mov	rsi, rbp
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2136
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2136
.label_2137:
	mov	rax, rbx
	jmp	.label_2136
.label_2143:
	mov	rax, rbx
.label_2136:
	add	rsp, 0x18
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
	#Procedure 0x417470

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
.label_2145:
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	word ptr cs:[rax + rax]
.label_2146:
	cmp	rcx, rdx
	mov	eax, 0
	jge	.label_2144
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	je	.label_2146
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_2144
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_2145
.label_2144:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4174e0

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0xf0]
	cmp	qword ptr [rbx + 0xe8], r12
	je	.label_2147
.label_2148:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rbx + 0xe8]
	mov	rdx, qword ptr [rbx + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbx + 0xe8]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rcx + rax*8]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2149
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0xe8], rcx
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_2149:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2147:
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2149
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_2148
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4175b0

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rbx + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, rdx
	call	search_cur_bkref_entry
	mov	rbp, rbx
	cmp	rax, -1
	je	.label_2167
	lea	rcx, [rax + rax*4]
	shl	rcx, 3
	add	rcx, qword ptr [rbp + 0xd8]
.label_2166:
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x50]
	cmp	qword ptr [rcx], rdx
	je	.label_2150
	cmp	byte ptr [rcx + 0x20], 0
	lea	rcx, [rcx + 0x28]
	jne	.label_2166
.label_2167:
	xor	eax, eax
	cmp	qword ptr [rbp + 0xe8], 0
	jle	.label_2150
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x50]
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_2158
.label_2160:
	mov	r13, r15
	jmp	.label_2151
	nop	word ptr cs:[rax + rax]
.label_2158:
	mov	rax, qword ptr [rbp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	rdx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rcx + rax], rdx
	jne	.label_2154
	mov	r15, qword ptr [rbx]
	cmp	qword ptr [rbx + 0x20], 0
	jle	.label_2153
	mov	r8, qword ptr [rsp + 0x40]
	xor	r14d, r14d
	jmp	.label_2157
.label_2153:
	mov	r8, qword ptr [rsp + 0x40]
	mov	r13, r15
	xor	r14d, r14d
	jmp	.label_2151
.label_2152:
	cmp	rsi, qword ptr [rbp + 0x58]
	jg	.label_2160
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], r8
	mov	rdi, rbp
	call	clean_state_log_if_needed
	test	eax, eax
	jne	.label_2150
	mov	qword ptr [rsp + 0x30], r13
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_2162
	nop	dword ptr [rax + rax]
.label_2157:
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rax + r14*8]
	mov	r13, qword ptr [rdx + 8]
	mov	r12, r13
	sub	r12, r15
	jle	.label_2165
	lea	rsi, [r12 + r8]
	cmp	rsi, qword ptr [rbp + 0x30]
	jg	.label_2152
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x30], r13
.label_2162:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rax + r8]
	lea	rsi, [rax + r15]
	mov	r13, r8
	mov	rdx, r12
	call	memcmp
	mov	r8, r13
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	jne	.label_2159
.label_2165:
	mov	r15, r8
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r8, qword ptr [rsp + 0x40]
	call	get_subexp_sub
	cmp	eax, 1
	ja	.label_2150
	mov	r8, r15
	add	r8, r12
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	inc	r14
	cmp	r14, qword ptr [rbx + 0x20]
	mov	r15, r13
	jl	.label_2157
	jmp	.label_2151
.label_2159:
	mov	r13, r15
	nop	word ptr cs:[rax + rax]
.label_2151:
	mov	rcx, r13
	cmp	r14, qword ptr [rbx + 0x20]
	jl	.label_2154
	test	r14, r14
	setg	al
	movzx	r13d, al
	add	r13, rcx
	cmp	r13, qword ptr [rsp + 0x40]
	jg	.label_2154
	jmp	.label_2156
.label_2169:
	cmp	r8, qword ptr [rbp + 0x58]
	jge	.label_2154
	lea	esi, [r8 + 1]
	mov	r14, r8
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	jne	.label_2150
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	r8, r14
	jmp	.label_2164
	nop	word ptr cs:[rax + rax]
.label_2156:
	cmp	r13, qword ptr [rbx]
	jle	.label_2168
	cmp	r8, qword ptr [rbp + 0x30]
	jge	.label_2169
.label_2164:
	mov	rcx, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + r13 - 1]
	movzx	ecx, byte ptr [rcx + r8]
	cmp	ecx, eax
	jne	.label_2154
	inc	r8
.label_2168:
	mov	r14, rbx
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rsi, qword ptr [rax + r13*8]
	test	rsi, rsi
	je	.label_2155
	mov	r15, r8
	add	rsi, 8
	mov	ecx, 9
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	find_subexp_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_2161
	cmp	qword ptr [r14 + 0x10], 0
	mov	rdi, rbp
	jne	.label_2163
	mov	rsi, r13
	sub	rsi, qword ptr [r14]
	inc	rsi
	mov	rbp, rdi
	mov	edi, 0x18
	call	rpl_calloc
	mov	rdi, rbp
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2150
.label_2163:
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [r14 + 8]
	mov	dword ptr [rsp], 9
	mov	rbp, rdi
	mov	r8, rbx
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	mov	r8, r15
	je	.label_2155
	mov	r15, r8
	test	eax, eax
	mov	rdi, r14
	jne	.label_2150
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rdi
	call	match_ctx_add_sublast
	mov	rsi, rbx
	mov	rdx, rbp
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2150
	mov	rbx, rdx
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rbp, rsi
	mov	r8, qword ptr [rsp + 0x40]
	call	get_subexp_sub
	mov	rcx, rbp
	cmp	eax, 1
	ja	.label_2150
	mov	r14, rcx
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rbx
.label_2161:
	mov	r8, r15
.label_2155:
	cmp	r13, qword ptr [rsp + 0x40]
	lea	r13, [r13 + 1]
	mov	rbx, r14
	jl	.label_2156
	nop	dword ptr [rax + rax]
.label_2154:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rsp + 0x28], rcx
	xor	eax, eax
	cmp	rcx, qword ptr [rbp + 0xe8]
	jl	.label_2158
.label_2150:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x417960

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_2175
	mov	rax, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_2173
	test	rax, rax
	jle	.label_2173
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2178
	add	rdi, rax
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2180
	xor	r13d, r13d
	cmp	qword ptr [r12 + 8], 0
	mov	ebx, 0
	mov	ebp, 0
	jle	.label_2172
	xor	edx, edx
	xor	esi, esi
	xor	r13d, r13d
.label_2179:
	mov	rbx, rdx
	mov	rbp, rsi
	nop	word ptr [rax + rax]
.label_2174:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_2172
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	jle	.label_2182
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	qword ptr [rcx + rbx*8], rax
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_2174
	jmp	.label_2172
.label_2182:
	sete	sil
	inc	r13
	mov	rdx, qword ptr [r14 + 0x10]
	mov	qword ptr [rdx + rbx*8], rcx
	lea	rdx, [rbx + 1]
	movzx	esi, sil
	add	rsi, rbp
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_2179
	cmp	rcx, rax
	sete	al
	inc	rbx
	movzx	eax, al
	add	rbp, rax
.label_2172:
	mov	rdx, qword ptr [r12 + 8]
	sub	rdx, r13
	jle	.label_2177
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	jmp	.label_2176
.label_2178:
	mov	rax, qword ptr [r12 + 8]
.label_2173:
	test	rax, rax
	jle	.label_2175
	mov	rdi, r14
	mov	rsi, r12
	jmp	.label_2181
.label_2175:
	test	r15, r15
	je	.label_2171
	cmp	qword ptr [r15 + 8], 0
	jle	.label_2171
	mov	rdi, r14
	mov	rsi, r15
.label_2181:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_2171:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_2170
.label_2177:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbp
	jle	.label_2176
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_2176:
	mov	qword ptr [r14 + 8], rbx
.label_2170:
	xor	eax, eax
.label_2180:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417b20

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_2183
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_2184:
	lea	r10, [rax + r11]
	mov	rdx, r10
	shr	rdx, 0x3f
	add	rdx, r10
	sar	rdx, 1
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmp	rax, r11
	jl	.label_2184
.label_2183:
	cmp	rax, r8
	jge	.label_2186
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_2185
.label_2186:
	mov	rax, -1
.label_2185:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417b90

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x40]
	mov	r15, qword ptr [rbx + 0xc0]
	cmp	rax, r14
	jg	.label_2187
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_2190
.label_2187:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_2188
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_2188
.label_2190:
	lea	esi, [r14 + 1]
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2189
.label_2188:
	xor	ebp, ebp
	cmp	r15, r14
	jge	.label_2189
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	sub	rdx, r15
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [rbx + 0xc0], r14
.label_2189:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x417c10

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rbx + 0x10]
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	dword ptr [rsp], 8
	mov	r8, r13
	mov	r9, r12
	call	check_arrival
	test	eax, eax
	jne	.label_2191
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_2191
	add	r12, qword ptr [rbx + 8]
	sub	r12, qword ptr [r15]
	mov	rdi, r14
	mov	rsi, r12
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	clean_state_log_if_needed
.label_2191:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417ca0

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2192
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_2194:
	mov	rax, qword ptr [r8 + r11*8]
	mov	r10, rax
	shl	r10, 4
	movzx	edi, byte ptr [r9 + r10 + 8]
	cmp	edi, ecx
	jne	.label_2193
	cmp	qword ptr [r9 + r10], rdx
	je	.label_2195
.label_2193:
	inc	r11
	cmp	r11, qword ptr [rsi + 8]
	jl	.label_2194
.label_2192:
	mov	rax, -1
.label_2195:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x417cf0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x38], r9
	mov	qword ptr [rsp + 8], r8
	mov	r13, rcx
	mov	r12, rdx
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x40], rax
	mov	dword ptr [rsp + 0x74], 0
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, qword ptr [rsi + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	cmp	rbp, rcx
	jle	.label_2213
.label_2215:
	mov	qword ptr [rsp + 0x20], rsi
	mov	r15d, dword ptr [rsp + 0xb0]
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 0x10]
	test	r14, r14
	cmove	r14, r13
	mov	rcx, qword ptr [rdi + 0x48]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rdi
	call	re_string_context_at
	cmp	r14, r13
	jne	.label_2204
	mov	r13d, eax
	mov	ebp, r15d
	lea	rdi, [rsp + 0x50]
	mov	rsi, r12
	call	re_node_set_init_1
	mov	r15d, eax
	mov	dword ptr [rsp + 0x74], r15d
	test	r15d, r15d
	jne	.label_2199
	lea	rsi, [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r15d, ebp
	mov	ecx, r15d
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	mov	rcx, rbx
	je	.label_2210
	jmp	.label_2202
.label_2204:
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	rbp, qword ptr [rcx + r14*8]
	test	rbp, rbp
	mov	rcx, rbx
	je	.label_2214
	mov	rbx, rcx
	mov	r12d, r15d
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_2198
	mov	r13d, eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x60], 0
	jmp	.label_2203
.label_2214:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x60], 0
	xor	ebp, ebp
	jmp	.label_2205
.label_2198:
	mov	r13d, eax
	lea	rsi, [rbp + 8]
	lea	rdi, [rsp + 0x50]
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	dword ptr [rsp + 0x74], r15d
	test	r15d, r15d
	jne	.label_2199
.label_2203:
	test	byte ptr [rbp + 0x68], 0x40
	mov	r15d, r12d
	mov	rcx, rbx
	je	.label_2205
.label_2210:
	cmp	qword ptr [rsp + 0x58], 0
	je	.label_2201
	lea	rsi, [rsp + 0x50]
	mov	rbx, rcx
	mov	rdi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8d, r15d
	call	expand_bkref_cache
	mov	rcx, rbx
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_2202
.label_2201:
	mov	rbx, rcx
	lea	rdi, [rsp + 0x74]
	lea	rdx, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	ecx, r13d
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_2207
	mov	eax, dword ptr [rsp + 0x74]
	test	eax, eax
	jne	.label_2202
.label_2207:
	mov	rcx, rbx
	mov	rax, qword ptr [rcx + 0xb8]
	mov	qword ptr [rax + r14*8], rbp
.label_2205:
	cmp	r14, qword ptr [rsp + 0x38]
	jge	.label_2206
	inc	r14
	lea	rbx, [rsp + 0x50]
	mov	r12, r14
	xor	r13d, r13d
.label_2197:
	lea	r14, [r12 - 1]
	movsxd	rax, dword ptr [rcx + 0xe0]
	cmp	r13, rax
	jg	.label_2206
	mov	qword ptr [rsp + 0x58], 0
	mov	rax, qword ptr [rcx + 0xb8]
	mov	qword ptr [rsp + 0x48], rcx
	mov	rsi, qword ptr [rax + r12*8]
	test	rsi, rsi
	je	.label_2200
	add	rsi, 8
	mov	rdi, rbx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_2202
.label_2200:
	test	rbp, rbp
	je	.label_2208
	add	rbp, 0x20
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, rbx
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_2202
.label_2208:
	mov	qword ptr [rsp + 0x30], r14
	cmp	qword ptr [rsp + 0x58], 0
	mov	r14, rbx
	je	.label_2211
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r14
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, rbp
	mov	ebx, dword ptr [rsp + 0xb0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_2202
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_2202
.label_2211:
	mov	r15, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_string_context_at
	lea	rdi, [rsp + 0x74]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r14
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_2212
	mov	eax, dword ptr [rsp + 0x74]
	test	eax, eax
	jne	.label_2202
.label_2212:
	mov	rbx, r14
	inc	r13
	test	rbp, rbp
	mov	rcx, r15
	mov	rax, qword ptr [rcx + 0xb8]
	mov	qword ptr [rax + r12*8], rbp
	mov	eax, 0
	cmovne	r13, rax
	cmp	r12, qword ptr [rsp + 0x38]
	lea	r12, [r12 + 1]
	jl	.label_2197
	mov	rbx, rcx
	dec	r12
	mov	r14, r12
	jmp	.label_2196
.label_2206:
	mov	rbx, rcx
.label_2196:
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + rcx*8]
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r14
	mov	qword ptr [rbx + 0xb8], rbp
	mov	qword ptr [rbx + 0x48], r15
	je	.label_2209
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_2199
.label_2209:
	mov	r15d, 1
	jmp	.label_2199
.label_2202:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	r15d, dword ptr [rsp + 0x74]
.label_2199:
	mov	eax, r15d
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2213:
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r15d, 0xc
	cmp	rdx, rcx
	jle	.label_2199
	mov	rcx, qword ptr [rsp + 0x38]
	lea	r14, [rax + rcx + 1]
	lea	rbx, [r14 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_2199
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x20], rsi
	lea	rsi, [rbx*8]
	call	realloc
	test	rax, rax
	je	.label_2199
	mov	r15, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r14, 3
	xor	esi, esi
	mov	rdx, r14
	call	memset
	mov	rsi, r15
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_2215
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418140

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x18]
	cmp	qword ptr [rbx + 0x20], r12
	je	.label_2216
.label_2217:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	test	rax, rax
	je	.label_2218
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r15
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_2218:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2216:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_2218
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_2217
	.section	.text
	.align	32
	#Procedure 0x4181c0

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd0]
	cmp	rax, rcx
	jl	.label_2219
	mov	rdi, qword ptr [rbx + 0xd8]
	shl	rcx, 4
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_2220
	mov	qword ptr [rbx + 0xd8], rax
	mov	rcx, qword ptr [rbx + 0xc8]
	mov	rbp, qword ptr [rbx + 0xd0]
	lea	rcx, [rcx + rcx*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [rbx + 0xd0], rbp
	mov	rax, qword ptr [rbx + 0xc8]
.label_2219:
	test	rax, rax
	jle	.label_2221
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	jne	.label_2221
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_2221:
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8], r13
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 8], r12
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x10], r15
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	xor	eax, eax
	sub	r14, r15
	mov	cx, 0xffff
	cmovne	cx, ax
	mov	rdx, qword ptr [rbx + 0xc8]
	mov	rsi, qword ptr [rbx + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	word ptr [rsi + rdx*8 + 0x22], cx
	mov	rcx, qword ptr [rbx + 0xc8]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0xc8], rdx
	mov	rdx, qword ptr [rbx + 0xd8]
	lea	rcx, [rcx + rcx*4]
	mov	byte ptr [rdx + rcx*8 + 0x20], 0
	movsxd	rcx, dword ptr [rbx + 0xe0]
	cmp	rcx, r14
	jge	.label_2222
	mov	dword ptr [rbx + 0xe0], r14d
.label_2222:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2220:
	mov	rdi, qword ptr [rbx + 0xd8]
	call	free
	mov	eax, 0xc
	jmp	.label_2222
	.section	.text
	.align	32
	#Procedure 0x418340

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14d, ecx
	mov	r13, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rbp
	mov	rbx, rdi
	mov	rsi, qword ptr [rbp + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_alloc
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2224
	mov	r15d, r14d
	cmp	qword ptr [rbp + 8], 0
	jle	.label_2227
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_2228:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r12, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rbp, [rax + rcx*8]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r13
	mov	ecx, r15d
	call	find_subexp_node
	cmp	rax, -1
	je	.label_2226
	mov	rdi, rbx
	lea	rsi, [rsp + 0x10]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_2225
	nop	word ptr cs:[rax + rax]
.label_2226:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_merge
.label_2225:
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2223
	inc	r14
	mov	rbp, qword ptr [rsp + 8]
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_2228
.label_2227:
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rbp + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbp], xmm0
	xor	r12d, r12d
	jmp	.label_2224
.label_2223:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_2224:
	mov	eax, r12d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x418440

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	dword ptr [rsp + 0x18], r8d
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x38], rdi
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], r14
	mov	rsi, rdx
	call	search_cur_bkref_entry
	cmp	rax, -1
	je	.label_2238
	lea	rcx, [rax + rax*4]
	mov	qword ptr [rsp + 8], rcx
	lea	r12, [rsp + 0x48]
.label_2236:
	mov	dword ptr [rsp + 0x34], eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	dword ptr [rax + rax]
.label_2242:
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_2240
	mov	rbp, qword ptr [r15 - 8]
	mov	rax, qword ptr [rsp + 0x40]
	add	rbp, rax
	sub	rbp, qword ptr [r15 - 0x10]
	cmp	rbp, rax
	jne	.label_2230
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rax, [rax + rax*2]
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	je	.label_2241
	mov	rbx, r14
	jmp	.label_2235
	nop	dword ptr [rax + rax]
.label_2230:
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbx, qword ptr [rax + rbp*8]
	test	rbx, rbx
	je	.label_2234
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	je	.label_2229
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_2231
.label_2241:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_init_1
	mov	rdi, r14
	mov	r14d, eax
	mov	dword ptr [rsp + 0x64], r14d
	mov	rbx, rdi
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rsp + 0x18]
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x1c], eax
	mov	rdi, r13
	mov	rsi, r12
	call	re_node_set_merge
	mov	ebp, eax
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	edx, r14d
	mov	r14d, dword ptr [rsp + 0x1c]
	mov	eax, ebp
	or	eax, r14d
	mov	ecx, 2
	or	eax, edx
	jne	.label_2237
.label_2243:
	mov	r14, rbx
	jmp	.label_2235
.label_2234:
	mov	rdi, r12
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	je	.label_2232
	mov	ecx, 1
	mov	dword ptr [rsp + 0x34], eax
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_2231
.label_2229:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_init_copy
	mov	ebx, eax
	mov	dword ptr [rsp + 0x64], ebx
	mov	rdi, r12
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_2233
	xor	al, 1
	jne	.label_2233
.label_2232:
	lea	rdi, [rsp + 0x64]
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r12
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	sete	al
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	movzx	ecx, cl
	mov	eax, dword ptr [rsp + 0x34]
	cmovne	eax, edx
	mov	dword ptr [rsp + 0x34], eax
.label_2231:
	mov	r13, qword ptr [rsp + 0x28]
.label_2235:
	test	ecx, ecx
	je	.label_2240
	cmp	ecx, 4
	jne	.label_2244
.label_2240:
	cmp	byte ptr [r15], 0
	lea	r15, [r15 + 0x28]
	jne	.label_2242
	jmp	.label_2238
.label_2237:
	test	r14d, r14d
	cmovne	ebp, r14d
	test	edx, edx
	cmovne	ebp, edx
	mov	dword ptr [rsp + 0x64], ebp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x34], ebp
	jmp	.label_2243
.label_2233:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	ecx, dword ptr [rsp + 0x64]
	test	ecx, ecx
	mov	eax, 0xc
	cmove	ecx, eax
	mov	dword ptr [rsp + 0x34], ecx
	mov	dword ptr [rsp + 0x64], ecx
	mov	ecx, 1
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_2231
	nop	word ptr cs:[rax + rax]
.label_2244:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 8]
	mov	eax, dword ptr [rsp + 0x34]
	je	.label_2236
	jmp	.label_2239
.label_2238:
	xor	eax, eax
.label_2239:
	add	rsp, 0x68
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
	#Procedure 0x418710

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x28], rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x20], rbp
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], r12
	mov	r14, qword ptr [r12 + 0x98]
	mov	dword ptr [rsp + 0x54], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rbp + 8], 0
	jle	.label_2248
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_2247:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r13, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r14]
	mov	rbx, r13
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	je	.label_2252
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rbp, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_2254
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rcx + r13*8]
	movsxd	rbx, eax
	add	rbx, rbp
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x38], 0
	test	rsi, rsi
	lea	rbp, [rsp + 0x30]
	je	.label_2250
	add	rsi, 8
	mov	rdi, rbp
	mov	r12, rcx
	call	re_node_set_merge
	mov	rcx, r12
	mov	dword ptr [rsp + 0x54], eax
	test	eax, eax
	jne	.label_2245
.label_2250:
	mov	rdi, rbp
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	je	.label_2249
	lea	rdi, [rsp + 0x54]
	mov	rsi, r14
	mov	rdx, rbp
	call	re_acquire_state
	mov	r12, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	cmp	qword ptr [rax + rbx*8], 0
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_2246
	mov	eax, dword ptr [rsp + 0x54]
	test	eax, eax
	je	.label_2246
	jmp	.label_2245
	nop	dword ptr [rax]
.label_2254:
	test	eax, eax
	mov	rcx, rbp
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_2246
	nop	dword ptr [rax]
.label_2252:
	add	rbx, qword ptr [r14]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rbx, rcx
	call	check_node_accept
	mov	rcx, rbx
	test	al, al
	je	.label_2253
.label_2246:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r13*8]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	call	re_node_set_insert
	mov	rcx, rbx
	test	al, al
	je	.label_2249
.label_2253:
	inc	r15
	cmp	r15, qword ptr [rbp + 8]
	jl	.label_2247
.label_2248:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	xor	eax, eax
	jmp	.label_2251
.label_2249:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	eax, 0xc
	jmp	.label_2251
.label_2245:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	eax, dword ptr [rsp + 0x54]
.label_2251:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4188e0

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	jmp	.label_2255
	nop	dword ptr [rax]
.label_2257:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rbx, qword ptr [rax]
.label_2255:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2259
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_2256
	cmp	qword ptr [rax + rcx], r14
	je	.label_2261
.label_2256:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_2258
	mov	rax, qword ptr [rbp + 0x28]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	cmp	rcx, 2
	je	.label_2260
	test	rcx, rcx
	jne	.label_2257
	jmp	.label_2259
	nop	dword ptr [rax + rax]
.label_2260:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	je	.label_2257
	jmp	.label_2258
.label_2261:
	cmp	r15d, 9
	jne	.label_2259
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_2258
.label_2259:
	xor	eax, eax
.label_2258:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4189c0

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	rbx, rsi
	cmp	qword ptr [r12 + 8], 0
	je	.label_2262
	mov	qword ptr [rsp + 8], rdi
	xor	esi, esi
	mov	rdi, r12
	call	calc_state_hash
	mov	r13, rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	rcx, r13
	and	rcx, qword ptr [rbx + 0x88]
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_2264
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_2268:
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	jne	.label_2267
	lea	rdi, [rbx + 8]
	mov	rsi, r12
	call	re_node_set_compare
	test	al, al
	jne	.label_2266
.label_2267:
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_2268
.label_2264:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	call	create_ci_newstate
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2265
.label_2266:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2262:
	mov	dword ptr [rdi], 0
	jmp	.label_2263
.label_2265:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_2263:
	xor	ebx, ebx
	jmp	.label_2266
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418a90

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	xor	eax, eax
	test	r12, r12
	je	.label_2276
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_2274
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	cmp	qword ptr [r14 + 8], 0
	jle	.label_2275
	xor	eax, eax
.label_2272:
	mov	r8, qword ptr [r15]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	edi, dword ptr [r8 + rbp + 8]
	mov	esi, edi
	and	esi, 0x3ffff
	cmp	esi, 1
	je	.label_2270
	movzx	esi, dil
	shr	edi, 0x14
	mov	cl, byte ptr [r12 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, edi
	shl	bl, 5
	and	bl, 0x20
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r12 + 0x68], cl
	cmp	esi, 0xc
	je	.label_2273
	cmp	esi, 4
	je	.label_2277
	cmp	esi, 2
	jne	.label_2271
	or	cl, 0x10
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_2270
.label_2277:
	or	cl, 0x40
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_2270
.label_2271:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_2270
.label_2273:
	or	byte ptr [r12 + 0x68], 0x80
.label_2270:
	inc	rax
	cmp	rax, qword ptr [r14 + 8]
	jl	.label_2272
.label_2275:
	mov	rdi, r15
	mov	rsi, r12
	call	register_state
	test	eax, eax
	mov	rax, r12
	jne	.label_2269
.label_2276:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2274:
	mov	rdi, r12
	call	free
	jmp	.label_2278
.label_2269:
	mov	rdi, r12
	call	free_state
.label_2278:
	xor	eax, eax
	jmp	.label_2276
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418bc0

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	shl	rbp, 4
	movzx	r15d, byte ptr [r14 + rbp + 8]
	cmp	r15d, 7
	je	.label_2293
	mov	rdi, r13
	mov	rsi, r12
	call	re_string_char_size_at
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_2307
	xor	eax, eax
	cmp	esi, 2
	jl	.label_2280
	test	byte ptr [rbx + 0xd8], 0x40
	jne	.label_2296
	mov	rcx, qword ptr [r13 + 8]
	movzx	ecx, byte ptr [rcx + r12]
	cmp	ecx, 0xa
	je	.label_2280
.label_2296:
	cmp	byte ptr [rbx + 0xd8], 0
	js	.label_2289
	mov	eax, esi
	jmp	.label_2280
.label_2307:
	cmp	esi, 1
	setg	cl
	xor	eax, eax
	cmp	r15d, 6
	jne	.label_2280
	test	cl, cl
	je	.label_2280
	mov	rbp, qword ptr [r14 + rbp]
	cmp	qword ptr [rbp + 0x40], 0
	jne	.label_2299
	cmp	qword ptr [rbp + 0x48], 0
	jne	.label_2299
	xor	r14d, r14d
	cmp	qword ptr [rbp + 0x28], 0
	je	.label_2306
.label_2299:
	mov	rdi, r13
	mov	ebx, esi
	mov	rsi, r12
	call	re_string_wchar_at
	mov	esi, ebx
	mov	r14d, eax
.label_2306:
	cmp	qword ptr [rbp + 0x28], 0
	jle	.label_2282
	mov	rax, qword ptr [rbp]
	xor	ecx, ecx
.label_2286:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_2285
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x28]
	jl	.label_2286
.label_2282:
	mov	r15d, esi
	cmp	qword ptr [rbp + 0x48], 0
	jle	.label_2288
	xor	ebx, ebx
	nop	
.label_2294:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	edi, r14d
	call	iswctype
	test	eax, eax
	jne	.label_2279
	inc	rbx
	cmp	rbx, qword ptr [rbp + 0x48]
	jl	.label_2294
.label_2288:
	xor	ecx, ecx
	cmp	qword ptr [rbp + 0x40], 0
	mov	esi, r15d
	jle	.label_2304
	mov	rax, qword ptr [rbp + 8]
	xor	edx, edx
	nop	
.label_2284:
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_2303
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	jle	.label_2305
.label_2303:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, qword ptr [rbp + 0x40]
	jl	.label_2284
	jmp	.label_2304
.label_2289:
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0
	je	.label_2280
	mov	eax, esi
	jmp	.label_2280
.label_2293:
	mov	rsi, qword ptr [r13 + 8]
	movzx	edx, byte ptr [rsi + r12]
	xor	eax, eax
	cmp	edx, 0xc2
	jb	.label_2280
	lea	rcx, [r12 + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_2287
	xor	eax, eax
	jmp	.label_2280
.label_2279:
	mov	esi, r15d
.label_2285:
	mov	ecx, esi
.label_2304:
	test	byte ptr [rbp + 0x20], 1
	jne	.label_2291
	mov	eax, ecx
	jmp	.label_2280
.label_2291:
	test	ecx, ecx
	mov	eax, 0
	jg	.label_2280
	test	esi, esi
	mov	eax, 1
	cmovg	eax, esi
.label_2280:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2305:
	mov	ecx, esi
	jmp	.label_2304
.label_2287:
	mov	cl, byte ptr [r12 + rsi + 1]
	movzx	edx, dl
	cmp	edx, 0xdf
	ja	.label_2298
	movzx	eax, cl
	cmp	eax, 0xc0
	sbb	edx, edx
	and	edx, 2
	test	cl, cl
	mov	eax, 0
	cmovs	eax, edx
	jmp	.label_2280
.label_2298:
	cmp	edx, 0xef
	ja	.label_2301
	mov	eax, 3
	cmp	edx, 0xe0
	jne	.label_2283
	movzx	ecx, cl
	cmp	ecx, 0xa0
	jae	.label_2283
	xor	eax, eax
	jmp	.label_2280
.label_2301:
	cmp	edx, 0xf7
	ja	.label_2292
	mov	eax, 4
	cmp	edx, 0xf0
	jne	.label_2283
	movzx	ecx, cl
	cmp	ecx, 0x90
	jae	.label_2283
	xor	eax, eax
	jmp	.label_2280
.label_2292:
	cmp	edx, 0xfb
	ja	.label_2302
	mov	eax, 5
	cmp	edx, 0xf8
	jne	.label_2283
	movzx	ecx, cl
	cmp	ecx, 0x88
	jae	.label_2283
	xor	eax, eax
	jmp	.label_2280
.label_2302:
	cmp	edx, 0xfd
	ja	.label_2281
	mov	eax, 6
	cmp	edx, 0xfc
	jne	.label_2283
	movzx	ecx, cl
	cmp	ecx, 0x84
	jae	.label_2283
	xor	eax, eax
	jmp	.label_2280
.label_2283:
	mov	ecx, eax
	lea	rdx, [rcx + r12]
	cmp	rdx, qword ptr [r13 + 0x58]
	jle	.label_2290
	xor	eax, eax
	jmp	.label_2280
.label_2290:
	add	r12, qword ptr [r13 + 8]
	mov	edx, 1
.label_2300:
	mov	bl, byte ptr [r12 + rdx]
	test	bl, bl
	jns	.label_2295
	movzx	esi, bl
	cmp	esi, 0xbf
	ja	.label_2297
	inc	rdx
	cmp	rdx, rcx
	jl	.label_2300
	jmp	.label_2280
.label_2281:
	xor	eax, eax
	jmp	.label_2280
.label_2295:
	xor	eax, eax
	jmp	.label_2280
.label_2297:
	xor	eax, eax
	jmp	.label_2280
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418e80

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rax + r14]
	movzx	ecx, byte ptr [rbx + 8]
	xor	eax, eax
	dec	ecx
	cmp	ecx, 6
	ja	.label_2308
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_2314]]
.label_2632:
	movzx	eax, byte ptr [rbx]
	cmp	eax, esi
	je	.label_2310
	xor	eax, eax
	jmp	.label_2308
.label_2633:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	test	al, al
	jne	.label_2310
	xor	eax, eax
	jmp	.label_2308
.label_2635:
	test	sil, sil
	js	.label_2311
.label_2634:
	test	sil, sil
	je	.label_2313
	movzx	eax, sil
	cmp	eax, 0xa
	jne	.label_2310
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2310
	xor	eax, eax
	jmp	.label_2308
.label_2313:
	mov	rax, qword ptr [r15 + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_2316
.label_2310:
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	shr	ebx, 8
	mov	al, 1
	test	bx, 0x3ff
	je	.label_2308
	mov	ebp, ecx
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, r14
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bl, 4
	je	.label_2315
	test	ecx, ecx
	jne	.label_2315
	xor	eax, eax
	jmp	.label_2308
.label_2315:
	mov	edx, ebp
	test	dh, 8
	je	.label_2309
	test	ecx, ecx
	je	.label_2309
	xor	eax, eax
	jmp	.label_2308
.label_2311:
	xor	eax, eax
	jmp	.label_2308
.label_2309:
	test	dh, 0x20
	je	.label_2312
	mov	ecx, eax
	and	ecx, 2
	jne	.label_2312
	xor	eax, eax
	jmp	.label_2308
.label_2316:
	xor	eax, eax
	jmp	.label_2308
.label_2312:
	and	eax, 8
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_2308:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x418f80
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418f90

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_2320
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2324:
	mov	rax, qword ptr [r12 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_2318
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_2317
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_2319
	test	ecx, ecx
	je	.label_2318
.label_2319:
	test	bh, 8
	je	.label_2322
	test	ecx, ecx
	jne	.label_2318
.label_2322:
	test	bh, 0x20
	je	.label_2325
	mov	ecx, eax
	and	ecx, 2
	je	.label_2318
.label_2325:
	test	bpl, bpl
	jns	.label_2317
	and	eax, 8
	je	.label_2318
	nop	word ptr cs:[rax + rax]
.label_2317:
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_2318
	mov	rbp, r12
	movsxd	r12, eax
	add	r12, qword ptr [r15 + 0x48]
	mov	ecx, dword ptr [r15 + 0xe0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [r15 + 0xe0], ecx
	mov	rdi, r15
	mov	rsi, r12
	call	clean_state_log_if_needed
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	jne	.label_2320
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_2323
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	je	.label_2321
	jmp	.label_2320
.label_2323:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_2321:
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	mov	ecx, eax
	call	re_acquire_state_context
	test	rbx, rbx
	mov	rcx, qword ptr [r15 + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_2326
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_2326:
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	jne	.label_2318
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_2320
	nop	word ptr cs:[rax + rax]
.label_2318:
	inc	r13
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	jl	.label_2324
.label_2320:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x419190

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	r14, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	mov	qword ptr [rbp - 0x80], r15
	test	r15, r15
	je	.label_2357
	lea	rcx, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x90], rcx
	lea	r13, [rbx + 0x58]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x58], xmm0
	mov	rdi, r14
	mov	rsi, rbx
	mov	qword ptr [rbp - 0xb8], rbx
	mov	rdx, r15
	call	group_nodes_into_DFAstates
	mov	r12, rax
	test	r12, r12
	jle	.label_2364
	lea	rsi, [r12 + 1]
	lea	rdi, [rbp - 0x48]
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_2330
	test	eax, eax
	jne	.label_2330
	lea	rax, [r12*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2337
	mov	qword ptr [rbp - 0xc0], r13
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_2342
.label_2337:
	call	malloc
	test	rax, rax
	je	.label_2330
	mov	qword ptr [rbp - 0xc0], r13
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
.label_2342:
	mov	qword ptr [rbp - 0x88], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0x98], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rbp - 0xb0], rax
.label_2347:
	mov	qword ptr [rbp - 0x78], r13
	mov	qword ptr [rbp - 0x40], 0
	lea	rax, [r13 + r13*2]
	cmp	qword ptr [r15 + rax*8 + 8], 0
	mov	rbx, r14
	jle	.label_2359
	mov	rcx, qword ptr [rbp - 0x80]
	lea	r14, [rcx + rax*8 + 8]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2335:
	mov	rax, qword ptr [r13 + r15*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, -1
	je	.label_2365
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x48]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	jne	.label_2332
.label_2365:
	inc	r15
	cmp	r15, qword ptr [r14]
	jl	.label_2335
.label_2359:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	test	rax, rax
	jne	.label_2341
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_2332
.label_2341:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2348
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + rdx*8], rax
	mov	r13, rdx
	jmp	.label_2336
	nop	word ptr cs:[rax + rax]
.label_2348:
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	lea	rdx, [rbp - 0x48]
	mov	rbx, rsi
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	test	rax, rax
	jne	.label_2358
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_2332
.label_2358:
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + rbx*8], rax
	je	.label_2362
	mov	al, 1
	cmp	dword ptr [rsi + 0xb4], 1
	jg	.label_2363
	mov	rax, qword ptr [rbp - 0xb0]
.label_2363:
	mov	qword ptr [rbp - 0xb0], rax
.label_2362:
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	r14, rsi
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + rbx*8], rax
	mov	r13, rbx
	test	rax, rax
	jne	.label_2331
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	mov	rsi, r14
	je	.label_2336
	jmp	.label_2332
.label_2331:
	mov	rsi, r14
	nop	dword ptr [rax + rax]
.label_2336:
	mov	r14, rsi
	mov	rsi, r13
	shl	rsi, 5
	mov	rbx, qword ptr [rbp - 0x90]
	add	rsi, rbx
	lea	rdi, [rbp - 0x70]
	call	bitset_merge
	inc	r13
	cmp	r13, r12
	mov	r15, qword ptr [rbp - 0x80]
	jl	.label_2347
	mov	rax, qword ptr [rbp - 0xb0]
	and	al, 1
	jne	.label_2349
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rax], r15
	test	r15, r15
	mov	r11, r14
	je	.label_2332
	mov	r13, qword ptr [rbp - 0x88]
	lea	r10, [r13 - 8]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rbx, [rax + 0x1800]
	xor	r8d, r8d
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_2340:
	mov	rdi, qword ptr [rbp + r9*8 - 0x70]
	test	rdi, rdi
	je	.label_2361
	mov	rdx, r8
	mov	esi, 1
	jmp	.label_2338
	nop	word ptr cs:[rax + rax]
.label_2334:
	add	rax, 8
	test	qword ptr [rcx], rsi
	lea	rcx, [rcx + 0x20]
	je	.label_2334
	test	qword ptr [r11 + r9*8 + 0xb8], rsi
	je	.label_2367
	mov	rax, qword ptr [rax + r12*8]
	jmp	.label_2328
.label_2367:
	mov	rax, qword ptr [rax]
.label_2328:
	mov	qword ptr [r15 + rdx*8], rax
	jmp	.label_2351
	nop	word ptr cs:[rax + rax]
.label_2338:
	test	dil, 1
	mov	rcx, rbx
	mov	rax, r10
	jne	.label_2334
.label_2351:
	add	rsi, rsi
	shr	rdi, 1
	inc	rdx
	test	rdi, rdi
	jne	.label_2338
.label_2361:
	inc	r9
	add	r8, 0x40
	add	rbx, 8
	cmp	r9, 4
	jne	.label_2340
.label_2329:
	mov	r14, r15
	lea	rdi, [rbp - 0x70]
	mov	esi, 0xa
	call	bitset_contain
	test	al, al
	je	.label_2346
	test	r12, r12
	jle	.label_2346
	mov	rax, qword ptr [rbp - 0x80]
	lea	r15, [rax + 0x1800]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2353:
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_contain
	test	al, al
	jne	.label_2350
	inc	rbx
	add	r15, 0x20
	cmp	rbx, r12
	jl	.label_2353
	jmp	.label_2346
.label_2357:
	xor	eax, eax
	jmp	.label_2344
.label_2364:
	mov	rdi, r15
	call	free
	test	r12, r12
	je	.label_2355
	xor	eax, eax
	jmp	.label_2344
.label_2355:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_2344
.label_2350:
	mov	rax, r12
	shl	rax, 4
	add	rax, r13
	mov	rcx, qword ptr [rbp - 0xb0]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x50], rcx
	je	.label_2346
	mov	rax, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x850], rax
.label_2346:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_2327
	mov	rdi, r13
	call	free
.label_2327:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	r12, r12
	jle	.label_2333
	mov	rbx, qword ptr [rbp - 0x80]
	add	rbx, 0x10
	nop	dword ptr [rax + rax]
.label_2343:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2343
.label_2333:
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	mov	al, 1
	jmp	.label_2344
.label_2349:
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	mov	esi, 0x200
	call	rpl_calloc
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rax + 0x60], r15
	test	r15, r15
	je	.label_2332
	mov	r13, qword ptr [rbp - 0x88]
	lea	r10, [r13 - 8]
	xor	r8d, r8d
	xor	r9d, r9d
.label_2366:
	mov	rsi, qword ptr [rbp + r9*8 - 0x70]
	test	rsi, rsi
	mov	rdi, r8
	mov	ecx, 1
	jne	.label_2352
	jmp	.label_2354
	nop	word ptr cs:[rax + rax]
.label_2356:
	add	rax, 8
	test	qword ptr [rdx], rcx
	lea	rdx, [rdx + 0x20]
	je	.label_2356
	mov	rdx, qword ptr [rax]
	mov	qword ptr [r15 + rdi*8], rdx
	mov	rax, qword ptr [rax + r12*8]
	mov	qword ptr [r15 + rdi*8 + 0x800], rax
	jmp	.label_2360
	nop	word ptr cs:[rax + rax]
.label_2352:
	test	sil, 1
	mov	rdx, rbx
	mov	rax, r10
	jne	.label_2356
.label_2360:
	add	rcx, rcx
	shr	rsi, 1
	inc	rdi
	test	rsi, rsi
	jne	.label_2352
.label_2354:
	inc	r9
	add	r8, 0x40
	add	rbx, 8
	cmp	r9, 4
	jne	.label_2366
	jmp	.label_2329
.label_2332:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r15, qword ptr [rbp - 0x80]
	je	.label_2330
	call	free
.label_2330:
	mov	r14, r15
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	r12, r12
	jle	.label_2339
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2345:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2345
.label_2339:
	mov	rdi, r14
	call	free
	xor	eax, eax
.label_2344:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419780

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x30], rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rsp + 0x80]
	call	bitset_empty
	mov	r8, rbp
	xor	r15d, r15d
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_2395
	xor	ebp, ebp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_2399:
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbx, qword ptr [rax + rbp*8]
	mov	r12, qword ptr [r8]
	shl	rbx, 4
	lea	rax, [r12 + rbx]
	mov	r13d, dword ptr [r12 + rbx + 8]
	movzx	ebp, r13b
	mov	dword ptr [rsp + 0x3c], ebp
	cmp	ebp, 1
	jne	.label_2401
	movzx	esi, byte ptr [rax]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rsp + 0x80]
	call	bitset_set
	jmp	.label_2372
	nop	word ptr cs:[rax + rax]
.label_2401:
	cmp	ebp, 7
	je	.label_2374
	cmp	ebp, 5
	je	.label_2375
	cmp	ebp, 3
	jne	.label_2376
	mov	rsi, qword ptr [rax]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rsp + 0x80]
	call	bitset_merge
	jmp	.label_2372
.label_2374:
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x88], -1
	mov	qword ptr [rsp + 0x80], -1
	test	byte ptr [r8 + 0xd8], 0x40
	jne	.label_2385
	mov	esi, 0xa
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_clear
	mov	r8, rbp
	mov	ebp, dword ptr [rsp + 0x3c]
.label_2385:
	cmp	byte ptr [r8 + 0xd8], 0
	mov	qword ptr [rsp + 0x10], r8
	jns	.label_2372
	jmp	.label_2392
.label_2375:
	mov	qword ptr [rsp + 0x18], rax
	cmp	dword ptr [r8 + 0xb4], 2
	jl	.label_2393
	mov	rsi, qword ptr [r8 + 0x78]
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_merge
	jmp	.label_2397
.label_2393:
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_set_all
.label_2397:
	test	byte ptr [rbp + 0xd8], 0x40
	mov	rax, rbp
	jne	.label_2373
	mov	esi, 0xa
	lea	rdi, [rsp + 0x80]
	mov	rbp, rax
	call	bitset_clear
	mov	rax, rbp
.label_2373:
	mov	qword ptr [rsp + 0x10], rax
	cmp	byte ptr [rax + 0xd8], 0
	mov	ebp, dword ptr [rsp + 0x3c]
	jns	.label_2372
.label_2392:
	xor	esi, esi
	lea	rdi, [rsp + 0x80]
	call	bitset_clear
	nop	
.label_2372:
	shr	r13d, 8
	mov	eax, r13d
	and	eax, 0x3ff
	je	.label_2381
	test	r13b, 0x20
	je	.label_2379
	mov	dword ptr [rsp + 0x3c], ebp
	mov	esi, 0xa
	lea	rbp, [rsp + 0x80]
	mov	rdi, rbp
	call	bitset_contain
	mov	byte ptr [rsp + 8], al
	mov	rdi, rbp
	call	bitset_empty
	cmp	byte ptr [rsp + 8], 0
	je	.label_2388
	mov	esi, 0xa
	mov	rdi, rbp
	call	bitset_set
	mov	ebp, dword ptr [rsp + 0x3c]
.label_2379:
	test	r13b, r13b
	js	.label_2384
	lea	rax, [r12 + rbx + 8]
	test	r13b, 4
	mov	r8, qword ptr [rsp + 0x10]
	je	.label_2390
	cmp	ebp, 1
	lea	rdi, [rsp + 0x80]
	jne	.label_2391
	test	byte ptr [rax + 2], 0x40
	jne	.label_2391
	mov	rbp, r8
	call	bitset_empty
	mov	r8, rbp
	jmp	.label_2376
.label_2391:
	cmp	dword ptr [r8 + 0xb4], 2
	mov	ecx, 0
	mov	edx, 0
	jl	.label_2389
	mov	rdx, qword ptr [r8 + 0x78]
	xor	ecx, ecx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2400:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [r8 + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x80]
	mov	qword ptr [rsp + rsi*8 + 0x80], rdi
	or	rcx, rdi
	inc	rsi
	cmp	rsi, 4
	jne	.label_2400
	jmp	.label_2371
	nop	dword ptr [rax]
.label_2389:
	mov	rsi, qword ptr [rsp + rdx*8 + 0x80]
	and	rsi, qword ptr [r8 + rdx*8 + 0xb8]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rcx, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_2389
.label_2371:
	test	rcx, rcx
	je	.label_2376
.label_2390:
	test	r13b, 8
	je	.label_2381
	cmp	ebp, 1
	jne	.label_2383
	test	byte ptr [rax + 2], 0x40
	jne	.label_2384
.label_2383:
	mov	rdi, qword ptr [rsp + 0x10]
	cmp	dword ptr [rdi + 0xb4], 2
	mov	eax, 0
	mov	ecx, 0
	jl	.label_2386
	mov	rcx, qword ptr [rdi + 0x78]
	xor	eax, eax
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2398:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	not	rsi
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rax, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_2398
	jmp	.label_2394
	nop	dword ptr [rax]
.label_2386:
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rsp + rcx*8 + 0x80]
	mov	qword ptr [rsp + rcx*8 + 0x80], rdx
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_2386
.label_2394:
	test	rax, rax
	je	.label_2388
.label_2381:
	test	r15, r15
	jle	.label_2382
	mov	rbx, qword ptr [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_2380:
	cmp	ebp, 1
	mov	rcx, rbx
	mov	eax, 0
	mov	edx, 0
	jne	.label_2368
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x18]
	movzx	esi, byte ptr [rax]
	call	bitset_contain
	test	al, al
	mov	rcx, rbx
	mov	eax, 0
	mov	edx, 0
	je	.label_2377
.label_2368:
	mov	rsi, qword ptr [rcx]
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	mov	qword ptr [rsp + rdx*8 + 0x60], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	jne	.label_2368
	test	rax, rax
	mov	ebp, 0
	mov	eax, 0
	mov	ecx, 0
	je	.label_2377
	nop	dword ptr [rax + rax]
.label_2402:
	mov	rdx, qword ptr [rsp + rcx*8 + 0x80]
	not	rdx
	mov	rsi, qword ptr [rbx + rcx*8]
	and	rdx, rsi
	mov	qword ptr [rsp + rcx*8 + 0x40], rdx
	or	rax, rdx
	not	rsi
	and	rsi, qword ptr [rsp + rcx*8 + 0x80]
	mov	qword ptr [rsp + rcx*8 + 0x80], rsi
	or	rbp, rsi
	inc	rcx
	cmp	rcx, 4
	jne	.label_2402
	test	rax, rax
	je	.label_2387
	mov	rdi, r15
	shl	rdi, 5
	mov	r13, qword ptr [rsp + 0x30]
	add	rdi, r13
	lea	rsi, [rsp + 0x40]
	call	bitset_copy
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, r13
	lea	rsi, [rsp + 0x60]
	call	bitset_copy
	lea	rax, [r15 + r15*2]
	lea	rdi, [r14 + rax*8]
	lea	rax, [r12 + r12*2]
	lea	rsi, [r14 + rax*8]
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_2369
	inc	r15
.label_2387:
	lea	rax, [r12 + r12*2]
	lea	rdi, [r14 + rax*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rcx*8]
	call	re_node_set_insert
	test	al, al
	je	.label_2369
	test	rbp, rbp
	je	.label_2378
.label_2377:
	inc	r12
	add	rbx, 0x20
	cmp	r12, r15
	mov	ebp, dword ptr [rsp + 0x3c]
	jl	.label_2380
	jmp	.label_2378
.label_2376:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x28]
	jmp	.label_2396
.label_2384:
	lea	rdi, [rsp + 0x80]
	call	bitset_empty
	jmp	.label_2388
.label_2382:
	xor	r12d, r12d
.label_2378:
	cmp	r12, r15
	jne	.label_2388
	mov	rdi, r15
	shl	rdi, 5
	mov	rax, qword ptr [rsp + 0x30]
	add	rdi, rax
	lea	r12, [rsp + 0x80]
	mov	rsi, r12
	call	bitset_copy
	lea	rax, [r15 + r15*2]
	lea	rdi, [r14 + rax*8]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_init_1
	test	eax, eax
	jne	.label_2369
	inc	r15
	mov	rdi, r12
	call	bitset_empty
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_2396
	nop	word ptr [rax + rax]
.label_2388:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x28]
.label_2396:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_2399
	jmp	.label_2395
.label_2369:
	test	r15, r15
	jle	.label_2403
	add	r14, 0x10
	nop	word ptr [rax + rax]
.label_2370:
	mov	rdi, qword ptr [r14]
	call	free
	add	r14, 0x18
	dec	r15
	jne	.label_2370
.label_2403:
	mov	r15, -1
.label_2395:
	mov	rax, r15
	add	rsp, 0xa8
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
	#Procedure 0x419d30

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x10], xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419d40

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2404:
	mov	rcx, qword ptr [rsi + rax*8]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_2404
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419d70

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	mov	qword ptr [rdi + 0x18], -1
	mov	qword ptr [rdi + 0x10], -1
	mov	qword ptr [rdi + 8], -1
	mov	qword ptr [rdi], -1
	ret	
	.section	.text
	.align	32
	#Procedure 0x419d90

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	mov	rax, -2
	mov	cl, sil
	rol	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	and	qword ptr [rdi + rcx*8], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419dc0

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 0x10]
	movups	xmmword ptr [rdi + 0x10], xmm1
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x419dd0

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	ecx, dword ptr [rax + rsi + 8]
	movzx	eax, cl
	cmp	eax, 2
	jne	.label_2408
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	je	.label_2405
	mov	eax, edx
	and	eax, 1
	jne	.label_2409
	mov	esi, ecx
	and	esi, 4
	je	.label_2409
	xor	eax, eax
	ret	
.label_2408:
	xor	eax, eax
	ret	
.label_2409:
	test	eax, eax
	je	.label_2407
	mov	eax, ecx
	and	eax, 8
	je	.label_2407
	xor	eax, eax
	ret	
.label_2407:
	test	dl, 2
	jne	.label_2406
	mov	eax, ecx
	and	eax, 0x20
	je	.label_2406
	xor	eax, eax
	ret	
.label_2406:
	and	edx, 8
	test	cl, cl
	setns	al
	shr	edx, 3
	or	dl, al
	mov	al, dl
.label_2405:
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e30

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rdi + 8], rdx
	mov	qword ptr [rdi + 0x10], rcx
	mov	qword ptr [rdi + 0x18], r8
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x20], xmm0
	mov	qword ptr [rdi + 0x30], 0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x419e50

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdi, [rsp]
	call	re_node_set_init_1
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2415
	lea	rcx, [rsp]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2412
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2411:
	test	rbx, rbx
	jle	.label_2410
	mov	rdi, qword ptr [r14]
	cmp	qword ptr [rdi + rbx*8], 0
	je	.label_2416
	xor	r13d, r13d
	jmp	.label_2417
	nop	word ptr cs:[rax + rax]
.label_2416:
	inc	r13d
.label_2417:
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_2414
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rbx, [rbx - 1]
	je	.label_2413
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	build_sifted_states
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2412
.label_2413:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_2411
	jmp	.label_2412
.label_2410:
	xor	ebp, ebp
	jmp	.label_2412
.label_2414:
	shl	rbx, 3
	xor	ebp, ebp
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_2412:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2415:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419f60

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r14, r14
	jle	.label_2418
	xor	ebp, ebp
	lea	r13, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_2420:
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	je	.label_2419
	test	rax, rax
	je	.label_2421
	mov	rsi, qword ptr [rbx + rbp*8]
	add	rsi, 8
	mov	rdx, qword ptr [r15 + rbp*8]
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_2418
	lea	rdi, [rsp + 0x24]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	je	.label_2421
	jmp	.label_2418
	nop	dword ptr [rax + rax]
.label_2419:
	mov	qword ptr [rbx + rbp*8], rax
.label_2421:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r14
	jl	.label_2420
.label_2418:
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
	#Procedure 0x41a010

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rcx
	mov	r15, rdx
	mov	rbx, rdi
	mov	rdx, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r14, qword ptr [rax + r15*8]
	lea	r12, [r14 + 8]
	test	r14, r14
	cmove	r12, r14
	cmp	qword ptr [r13 + 8], 0
	je	.label_2426
	test	r14, r14
	je	.label_2423
	mov	rdi, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, r13
	mov	rbp, rdx
	mov	rdx, r12
	call	add_epsilon_src_nodes
	mov	rdx, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_2422
	cmp	qword ptr [rsi + 0x28], 0
	je	.label_2423
	lea	rcx, [rsi + 0x20]
	mov	r8, qword ptr [rbx + 0xd8]
	mov	rdi, rdx
	mov	rsi, r13
	mov	rbp, rdx
	mov	rdx, r12
	mov	r9, r15
	call	check_subexp_limits
	mov	rdx, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_2422
.label_2423:
	lea	rdi, [rsp + 0x14]
	mov	rbp, rsi
	mov	rsi, rdx
	mov	rdx, r13
	call	re_acquire_state
	mov	rsi, rbp
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	je	.label_2425
	jmp	.label_2422
.label_2426:
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rax + r15*8], 0
.label_2425:
	test	r14, r14
	je	.label_2424
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_2424
	mov	rdi, rbx
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_2422
.label_2424:
	xor	eax, eax
.label_2422:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a130

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	xor	eax, eax
	cmp	qword ptr [r14 + 0x28], 0
	jle	.label_2430
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 8], rax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2432:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r12]
	mov	r13, rbp
	shl	r13, 4
	test	byte ptr [rax + r13 + 0xa], 0x10
	je	.label_2428
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	jne	.label_2429
.label_2428:
	add	r13, qword ptr [r12]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	mov	rdx, rbx
	call	check_node_accept
	test	al, al
	je	.label_2427
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	test	rdi, rdi
	je	.label_2427
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_contains
	mov	rcx, rax
	mov	eax, 1
	test	rcx, rcx
	je	.label_2427
.label_2429:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_2431
	movsxd	rcx, eax
	add	rcx, rbx
	mov	rax, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [rax + rbp*8]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	jne	.label_2427
.label_2431:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_2430
.label_2427:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	jl	.label_2432
.label_2430:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a280

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	lea	rdi, [rsp + 4]
	mov	rsi, r15
	mov	rdx, rbx
	call	re_acquire_state
	mov	r12, rax
	mov	r13d, dword ptr [rsp + 4]
	test	r13d, r13d
	jne	.label_2435
	mov	rax, r12
	add	r12, 0x38
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_2433
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	test	eax, eax
	jne	.label_2435
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2433
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2436:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	test	eax, eax
	jne	.label_2434
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_2436
	mov	dword ptr [rsp + 4], eax
.label_2433:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	call	re_node_set_add_intersect
	mov	r13d, eax
.label_2435:
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2434:
	mov	dword ptr [rsp + 4], eax
	jmp	.label_2435
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a350

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x20], r8
	mov	r9, rcx
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 8], rdx
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x30], rdx
	mov	r11, rdi
	xor	eax, eax
	cmp	qword ptr [r9 + 8], 0
	jle	.label_2445
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2450:
	mov	rax, qword ptr [r9 + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [r8 + rax*8 + 0x10], r14
	jge	.label_2438
	cmp	qword ptr [r8 + rax*8 + 8], r14
	jl	.label_2438
	mov	rcx, qword ptr [r8 + rax*8]
	mov	rsi, qword ptr [r11]
	shl	rcx, 4
	mov	r13, qword ptr [rsi + rcx]
	mov	qword ptr [rsp], r13
	cmp	qword ptr [r8 + rax*8 + 0x18], r14
	jne	.label_2439
	cmp	qword ptr [rdx + 8], 0
	jle	.label_2438
	mov	r12, r8
	mov	r9, r14
	mov	r8, qword ptr [rdx + 8]
	mov	r10, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [r11]
	mov	r14, -1
	xor	edi, edi
	mov	rsi, -1
	nop	dword ptr [rax]
.label_2441:
	mov	rbx, qword ptr [r10 + rdi*8]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rcx + rbp + 8]
	cmp	eax, 9
	je	.label_2446
	cmp	eax, 8
	jne	.label_2448
	cmp	r13, qword ptr [rcx + rbp]
	je	.label_2449
	mov	rbx, rsi
.label_2449:
	mov	rsi, rbx
	jmp	.label_2448
	nop	dword ptr [rax + rax]
.label_2446:
	mov	rax, qword ptr [r11]
	cmp	r13, qword ptr [rax + rbp]
	je	.label_2437
	mov	rbx, r14
.label_2437:
	mov	r14, rbx
.label_2448:
	inc	rdi
	cmp	rdi, r8
	jl	.label_2441
	mov	r13, r14
	test	rsi, rsi
	mov	r14, r9
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x28]
	js	.label_2444
	mov	rdi, r11
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbx, r11
	mov	r12, r8
	mov	rbp, r9
	call	sub_epsilon_src_nodes
	mov	r9, rbp
	mov	r8, r12
	mov	r11, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	test	eax, eax
	jne	.label_2445
.label_2444:
	test	r13, r13
	js	.label_2438
	cmp	qword ptr [rdx + 8], 0
	mov	ebp, 0
	jg	.label_2442
	jmp	.label_2438
.label_2439:
	cmp	qword ptr [rdx + 8], 0
	mov	ebp, 0
	jle	.label_2438
	nop	dword ptr [rax]
.label_2452:
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11]
	mov	rcx, rsi
	shl	rcx, 4
	mov	edi, dword ptr [rax + rcx + 8]
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_2440
	cmp	r13, qword ptr [rax + rcx]
	jne	.label_2440
	mov	rdi, r11
	mov	rcx, qword ptr [rsp + 8]
	mov	r13, rdx
	mov	rbx, r11
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], r15
	mov	r15, r14
	mov	r14, r9
	call	sub_epsilon_src_nodes
	mov	r9, r14
	mov	r14, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r11, rbx
	mov	rdx, r13
	mov	r13, qword ptr [rsp]
	test	eax, eax
	jne	.label_2445
.label_2440:
	inc	rbp
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_2452
	jmp	.label_2438
.label_2451:
	mov	rdi, r12
	mov	rsi, r14
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	call	sub_epsilon_src_nodes
	mov	rdx, rbx
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r11, r12
	jne	.label_2445
	dec	rbp
	jmp	.label_2447
.label_2442:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r14, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11 + 0x38]
	lea	rbx, [r14 + r14*2]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r13
	mov	r12, r11
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2443
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_2451
.label_2443:
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r11, r12
.label_2447:
	inc	rbp
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_2442
	nop	word ptr [rax + rax]
.label_2438:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_2450
.label_2445:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a600

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x58], rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x50], rbp
	mov	rsi, rdx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	cmp	rax, -1
	je	.label_2456
	mov	qword ptr [rsp + 0x60], 0
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2456
	mov	rdx, r14
	mov	qword ptr [rsp + 0x38], rdx
	lea	rax, [rdx + 0x20]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax*8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	nop	dword ptr [rax]
.label_2460:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r15, qword ptr [rax + rcx*8]
	mov	rsi, rbp
	mov	rax, qword ptr [rsi]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [rdx + 0x10]
	jne	.label_2466
	cmp	eax, 4
	jne	.label_2455
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_2457
	jmp	.label_2455
	nop	
.label_2466:
	cmp	eax, 4
	jne	.label_2455
.label_2457:
	mov	r14, qword ptr [rsp + 0x20]
	lea	rbp, [r14 + r14*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x48]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r13, qword ptr [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_2453:
	cmp	qword ptr [rbp], r15
	jne	.label_2458
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rbx, rcx
	sub	rbx, rax
	add	rbx, qword ptr [rsp + 0x58]
	cmp	rcx, rax
	jne	.label_2461
	mov	rax, qword ptr [rsi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_2464
	nop	word ptr cs:[rax + rax]
.label_2461:
	lea	rax, [r15*8]
	add	rax, qword ptr [rsi + 0x18]
.label_2464:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_2458
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_2458
	mov	r12, qword ptr [rax]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_2462
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r8, r12
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x50]
	jne	.label_2458
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_2463
	mov	rax, qword ptr [rdx + 0x30]
	mov	qword ptr [rsp + 0x90], rax
	movups	xmm0, xmmword ptr [rdx]
	movups	xmm1, xmmword ptr [rdx + 0x10]
	movups	xmm2, xmmword ptr [rdx + 0x20]
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x70], xmm1
	movaps	xmmword ptr [rsp + 0x60], xmm0
	lea	rdi, [rsp + 0x80]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, rdx
	call	re_node_set_init_copy
	mov	rdx, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2454
.label_2463:
	mov	qword ptr [rsp + 0x70], r15
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rsp + 0x80]
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_insert
	mov	rdx, rbx
	mov	r12d, 0xc
	test	al, al
	je	.label_2454
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x60]
	mov	rbp, rdx
	call	sift_states_backward
	mov	rdx, rbp
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2454
	mov	rsi, qword ptr [rdx + 8]
	test	rsi, rsi
	je	.label_2465
	mov	rbp, rdx
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x10]
	call	merge_state_array
	mov	rdx, rbp
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_2454
.label_2465:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	qword ptr [rax + rcx*8], rbx
	lea	rbp, [rsp + 0x80]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, rbp
	call	re_node_set_remove_at
	mov	rdx, rbx
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, r13
	jmp	.label_2459
.label_2462:
	mov	rdx, qword ptr [rsp + 0x38]
.label_2459:
	mov	rsi, qword ptr [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_2458:
	inc	r14
	add	r13, 0x28
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_2453
.label_2455:
	mov	rbp, rsi
	mov	rax, qword ptr [rsp + 0x40]
	inc	rax
	mov	qword ptr [rsp + 0x40], rax
	xor	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	rax, qword ptr [rbx + 8]
	jl	.label_2460
.label_2454:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_2456
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
.label_2456:
	mov	eax, r12d
	add	rsp, 0x98
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
	#Procedure 0x41a970

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rdx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_2468
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_2468
	add	rcx, rdx
	mov	rax, qword ptr [r15 + 8]
	add	rax, rcx
	mov	rbx, qword ptr [r15]
	cmp	rax, rbx
	jle	.label_2474
	add	rbx, rcx
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2468
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
.label_2474:
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r12 + 8]
	lea	r8, [rdx + rcx]
	mov	r9, qword ptr [r14 + 8]
	add	r8, r9
	dec	rcx
.label_2483:
	dec	rdx
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, r9
.label_2482:
	lea	r9, [rdi - 1]
	mov	rsi, qword ptr [rbx + rdi*8 - 8]
	nop	dword ptr [rax + rax]
.label_2472:
	cmp	qword ptr [rax + rdx*8], rsi
	je	.label_2470
	jl	.label_2471
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_2472
	jmp	.label_2476
	nop	word ptr cs:[rax + rax]
.label_2471:
	cmp	rdi, 2
	mov	rdi, r9
	jge	.label_2482
	jmp	.label_2476
	nop	dword ptr [rax + rax]
.label_2470:
	test	rcx, rcx
	js	.label_2467
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsi + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_2477:
	cmp	qword ptr [rax + rcx*8], rsi
	jle	.label_2475
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2477
	jmp	.label_2467
.label_2475:
	test	rcx, rcx
	js	.label_2467
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rsi, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rsi + rdx*8]
	je	.label_2481
	nop	dword ptr [rax]
.label_2467:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsi + r8*8 - 8], rax
	dec	r8
.label_2481:
	test	rdx, rdx
	jle	.label_2476
	cmp	rdi, 2
	jge	.label_2483
.label_2476:
	mov	rcx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r12 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rdx, [rcx + r10]
	lea	r11, [rax + rdx - 1]
	mov	rdx, r11
	sub	rdx, r8
	lea	r9, [rdx + 1]
	lea	rsi, [rdx + rcx + 1]
	mov	qword ptr [r15 + 8], rsi
	test	rcx, rcx
	jle	.label_2473
	test	rdx, rdx
	js	.label_2473
	add	r10, rax
	add	r10, rcx
	dec	rcx
	sub	r10, r8
	xor	edx, edx
.label_2478:
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rax, [rdi + r10*8]
	nop	dword ptr [rax]
.label_2469:
	mov	rsi, qword ptr [rdi + r11*8]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	jg	.label_2480
	mov	qword ptr [rax + rcx*8], rbx
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_2469
	jmp	.label_2473
.label_2480:
	dec	r11
	dec	r10
	dec	r9
	mov	qword ptr [rax + rcx*8], rsi
	jne	.label_2478
	jmp	.label_2479
.label_2473:
	mov	rdx, r9
.label_2479:
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rdi + r8*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_2468:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rcx, [rsi + rsi*2]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2489
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdx, [rax + rcx*8]
	mov	qword ptr [rsp + 0x18], rdx
	lea	r13, [rax + rcx*8 + 8]
	lea	r15, [rax + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2484:
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax + r12*8]
	cmp	rax, qword ptr [rsp + 0x28]
	je	.label_2485
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_2485
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx*8 + 0x10]
	mov	r14, qword ptr [rax]
	mov	rbp, -1
	cmp	qword ptr [rcx + rbx*8 + 8], 2
	jl	.label_2491
	mov	rbp, qword ptr [rax + 8]
.label_2491:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r14
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2490
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2493
.label_2490:
	test	rbp, rbp
	jle	.label_2485
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2485
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	je	.label_2485
.label_2493:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + rbx*8]
	lea	rdi, [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2488
	nop	word ptr [rax + rax]
.label_2485:
	inc	r12
	mov	rax, qword ptr [r13]
	cmp	r12, rax
	jl	.label_2484
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x10]
	jle	.label_2489
	xor	ebx, ebx
	lea	r14, [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_2492:
	mov	rax, qword ptr [r15]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r14
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2486
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, r12
	call	re_node_set_remove_at
.label_2486:
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_2492
.label_2489:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	xor	ebp, ebp
.label_2487:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2488:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	jmp	.label_2487
	.section	.text
	.align	32
	#Procedure 0x41ad10

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2495
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2496:
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	al, 1
	jne	.label_2494
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_2496
	xor	eax, eax
	jmp	.label_2494
.label_2495:
	xor	eax, eax
.label_2494:
	add	rsp, 0x38
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
	#Procedure 0x41ae00

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_2497
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_2497
	cmp	r11, r8
	sete	al
	movzx	r11d, al
	cmp	r10, r8
	sete	al
	movzx	esi, al
	add	esi, esi
	xor	eax, eax
	or	esi, r11d
	je	.label_2497
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_2497:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ae50

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_2504
	lea	rdx, [rax + rcx*8 + 8]
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_2507:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r12
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	cmp	eax, 9
	je	.label_2509
	cmp	eax, 8
	je	.label_2505
	cmp	eax, 4
	jne	.label_2498
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2498
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
.label_2499:
	cmp	qword ptr [r14], r12
	jne	.label_2500
	cmp	rbx, 0x3f
	jg	.label_2508
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_2500
.label_2508:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_2502
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_2506
	mov	eax, 0xffffffff
	cmp	ecx, -1
	je	.label_2503
	cmp	rbx, 0x3f
	jg	.label_2500
	jmp	.label_2511
.label_2506:
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_2511
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	je	.label_2500
	jmp	.label_2503
.label_2511:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	dword ptr [rax]
.label_2500:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_2499
	jmp	.label_2498
	nop	word ptr cs:[rax + rax]
.label_2509:
	cmp	dword ptr [rsp + 8], 0
	je	.label_2498
	xor	eax, eax
	jmp	.label_2501
	nop	dword ptr [rax + rax]
.label_2505:
	cmp	dword ptr [rsp + 4], 0
	je	.label_2498
	mov	eax, 0xffffffff
.label_2501:
	cmp	qword ptr [rcx], rbx
	je	.label_2503
.label_2498:
	inc	r15
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_2507
.label_2504:
	shr	r13d, 1
	and	r13d, 1
	jmp	.label_2510
.label_2502:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_2510:
	mov	eax, r13d
.label_2503:
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
	.align	32
	#Procedure 0x41b060

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, r8
	mov	rbp, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rax, rdi
	mov	r15, qword ptr [rax + 0x98]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	check_node_accept_bytes
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_2513
	movsxd	rax, ebx
	add	rax, rbp
	cmp	rax, r13
	jg	.label_2513
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	je	.label_2512
	add	rdi, 8
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2513
.label_2512:
	xor	ebx, ebx
.label_2513:
	mov	eax, ebx
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
	#Procedure 0x41b0e0

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	r14, r14
	je	.label_2514
	xor	ebx, ebx
	cmp	qword ptr [r14], 0
	jle	.label_2516
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2515:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_2515
.label_2516:
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
.label_2514:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b140

	.globl update_regs
	.type update_regs, @function
update_regs:
	mov	rdi, qword ptr [rdi]
	shl	rcx, 4
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	movzx	edi, cl
	cmp	edi, 9
	je	.label_2517
	cmp	edi, 8
	jne	.label_2520
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_2520
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
.label_2517:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_2520
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_2519
	mov	qword ptr [rsi + rax + 8], r8
	shl	r9, 4
	mov	rdi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_2519:
	test	ecx, 0x80000
	je	.label_2518
	cmp	qword ptr [rdx + rax], -1
	je	.label_2518
	shl	r9, 4
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_2518:
	mov	qword ptr [rsi + rax + 8], r8
.label_2520:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b1d0

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	r15
	push	r14
	push	rbx
	mov	r14, r8
	mov	r15, rdi
	mov	rdi, qword ptr [r15]
	lea	rax, [rdi - 1]
	mov	qword ptr [r15], rax
	test	rdi, rdi
	jle	.label_2521
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rax + rbx + 0x10]
	shl	rdx, 4
	mov	rdi, rcx
	call	memcpy
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [r14 + 0x10], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbx + 8]
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_2521:
	mov	edi, OFFSET FLAT:.str.26
	mov	esi, OFFSET FLAT:.str.22_1
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b270

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, r8
	mov	rbx, rcx
	mov	rbp, rdi
	mov	r15, qword ptr [rbp + 0x98]
	mov	rax, qword ptr [r15]
	mov	r14, r13
	shl	r14, 4
	mov	ecx, dword ptr [rax + r14 + 8]
	test	cl, 8
	jne	.label_2532
	test	ecx, 0x100000
	jne	.label_2526
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x18], r9
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_2527
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rax + rdx + 0x10]
	mov	rax, qword ptr [rax + rdx + 0x18]
	mov	rbx, rax
	sub	rbx, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_2522
	cmp	rax, -1
	mov	r12, -1
	je	.label_2523
	cmp	rdi, -1
	je	.label_2523
	cmp	rax, rdi
	je	.label_2522
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	cmp	rax, rbx
	jl	.label_2523
	mov	rax, qword ptr [rbp + 8]
	add	rsi, rax
	mov	qword ptr [rsp + 8], rdi
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rax + rcx]
	mov	rdx, rbx
	call	memcmp
	mov	rdi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rax, qword ptr [rsp + 0x10]
	jne	.label_2523
.label_2522:
	cmp	rax, rdi
	jne	.label_2528
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_2523
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rcx + rax*8]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2523
	jmp	.label_2528
.label_2532:
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rdx
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, r9
	mov	qword ptr [rsp + 0x18], r9
	mov	rsi, r13
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_2523
	lea	rax, [r13 + r13*2]
	mov	r12, -1
	cmp	qword ptr [rbx + rax*8 + 8], 0
	jle	.label_2523
	add	r14, 8
	lea	r15, [rbx + rax*8 + 8]
	mov	r13, qword ptr [rbx + rax*8 + 0x10]
	mov	r12, -1
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2531:
	mov	rbx, qword ptr [r13 + rbp*8]
	mov	rdi, r14
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_2529
	cmp	r12, -1
	jne	.label_2530
	mov	r12, rbx
.label_2529:
	inc	rbp
	cmp	rbp, qword ptr [r15]
	jl	.label_2531
	jmp	.label_2523
.label_2526:
	mov	qword ptr [rsp + 0x18], r9
	mov	rcx, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbp
	call	check_node_accept_bytes
	movsxd	rbx, eax
.label_2528:
	test	rbx, rbx
	jne	.label_2533
.label_2527:
	add	r14, qword ptr [r15]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	mov	rsi, r14
	call	check_node_accept
	mov	r12, -1
	mov	ebx, 1
	test	al, al
	je	.label_2523
.label_2533:
	mov	rax, qword ptr [r15 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 0x20]
	add	rbx, qword ptr [rax]
	mov	qword ptr [rax], rbx
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_2524
	mov	r12, -1
	cmp	rbx, qword ptr [rbp + 0xa8]
	jg	.label_2523
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + rbx*8]
	test	rdi, rdi
	je	.label_2523
	add	rdi, 8
	mov	rsi, r14
	call	re_node_set_contains
	test	rax, rax
	je	.label_2523
.label_2524:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 8], 0
	mov	r12, r14
	jmp	.label_2523
.label_2530:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, rbp
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_2525
	mov	r9, rbp
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_2523
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	call	push_fail_stack
	mov	rbx, -2
	test	eax, eax
	je	.label_2523
.label_2525:
	mov	r12, rbx
.label_2523:
	mov	rax, r12
	add	rsp, 0x28
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
	#Procedure 0x41b570

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], r8
	mov	r15, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rcx, [r14 + 1]
	mov	qword ptr [rbx], rcx
	mov	rax, qword ptr [rbx + 8]
	cmp	rcx, rax
	jne	.label_2534
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	test	rax, rax
	je	.label_2535
	shl	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 0x10], rax
.label_2534:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, r14
	shl	rcx, 4
	lea	r12, [rcx + rcx*2]
	mov	qword ptr [rax + r12], rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + r12 + 8], r13
	shl	r15, 4
	mov	rdi, r15
	call	malloc
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + r12 + 0x10], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r12 + 0x10]
	test	rdi, rdi
	je	.label_2535
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [r14 + r14*2]
	shl	rcx, 4
	lea	rdi, [rax + rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_2535:
	mov	eax, 0xc
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
	.align	32
	#Procedure 0x41b650

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_2536
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_2536:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2537
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_2537
	mov	rdi, rbx
	add	rdi, 9
	mov	rsi, r14
	mov	rdx, r15
	call	extend_abbrs
.label_2537:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b6c0

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	mov	byte ptr [rbx + r14], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41b6e0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_2538
	nop	word ptr [rax + rax]
.label_2539:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_2539
.label_2538:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b710

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2543
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_2542
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_2540
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	bpl, al
	xor	bpl, 1
.label_2540:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_2541
.label_2543:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_2542:
	xor	eax, eax
.label_2541:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b7a0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	call	getenv_TZ
	mov	rbx, rax
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_2546
	test	cl, cl
	je	.label_2545
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	jne	.label_2545
	jmp	.label_2544
.label_2546:
	mov	eax, 1
	test	cl, cl
	je	.label_2544
.label_2545:
	mov	rdi, rbx
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_2544
	mov	rdi, r14
	call	change_env
	test	al, al
	je	.label_2547
	mov	rax, rbx
	jmp	.label_2544
.label_2547:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	tzfree
	mov	dword ptr [r14], ebp
	xor	eax, eax
.label_2544:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b820

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r13b, 1
	test	rbx, rbx
	je	.label_2549
	cmp	r15, rbx
	ja	.label_2548
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_2549
.label_2548:
	mov	r14d, OFFSET FLAT:.str_0
	cmp	byte ptr [rbx], 0
	je	.label_2553
	lea	r14, [r12 + 9]
	jmp	.label_2555
.label_2559:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	cmovne	r12, rax
.label_2555:
	lea	r13, [r12 + 9]
	nop	dword ptr [rax]
.label_2558:
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_2551
	cmp	byte ptr [r14], 0
	jne	.label_2556
	mov	rbp, r14
	sub	rbp, r13
	jne	.label_2554
	cmp	byte ptr [r12 + 8], 0
	je	.label_2554
.label_2556:
	mov	rdi, r14
	call	strlen
	lea	rcx, [rax + r14 + 1]
	cmp	byte ptr [rax + r14 + 1], 0
	mov	r14, rcx
	jne	.label_2558
	jmp	.label_2559
.label_2551:
	mov	r13b, 1
.label_2553:
	mov	qword ptr [r15 + 0x30], r14
.label_2549:
	mov	al, r13b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2554:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rcx, rbp
	not	rcx
	cmp	rax, rcx
	mov	r13b, 1
	jbe	.label_2552
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_2549
.label_2552:
	add	rbp, rax
	cmp	rbp, 0x76
	ja	.label_2550
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	extend_abbrs
	jmp	.label_2553
.label_2550:
	mov	rdi, rbx
	call	tzalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	test	r14, r14
	je	.label_2557
	mov	byte ptr [r14 + 8], 0
	add	r14, 9
	jmp	.label_2553
.label_2557:
	xor	r13d, r13d
	jmp	.label_2549
	nop	
	.section	.text
	.align	32
	#Procedure 0x41b940

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_2560
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	mov	rdi, r14
	call	change_env
	mov	bl, al
	test	bl, bl
	jne	.label_2561
	mov	ebp, dword ptr [r15]
.label_2561:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_2560:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41b990

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2565
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_2563
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	jne	.label_2562
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	test	rax, rax
	je	.label_2564
	lea	rsi, [rsp]
	mov	rdi, r15
	call	equal_tm
	test	eax, eax
	je	.label_2564
.label_2562:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_2564
	mov	qword ptr [rsp + 0x38], -1
.label_2564:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_2563
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_2566
.label_2563:
	mov	rax, -1
.label_2566:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_2565:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ba40

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbx
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	or	edx, eax
	or	edx, ecx
	mov	eax, dword ptr [rsi + 0x10]
	xor	eax, dword ptr [rdi + 0x10]
	mov	ebx, dword ptr [rsi + 0x14]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	or	ebx, edx
	mov	edi, dword ptr [rdi + 0x20]
	mov	esi, dword ptr [rsi + 0x20]
	call	isdst_differ
	movzx	eax, al
	or	eax, ebx
	sete	al
	movzx	eax, al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41ba90

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	mov	edi, OFFSET FLAT:.str_3
	jmp	getenv
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41baa0

	.globl change_env
	.type change_env, @function
change_env:
	cmp	byte ptr [rdi + 8], 0
	je	.label_2567
	add	rdi, 9
	jmp	.label_2569
.label_2567:
	xor	edi, edi
.label_2569:
	push	rax
	call	setenv_TZ
	test	eax, eax
	je	.label_2568
	xor	eax, eax
	pop	rcx
	ret	
.label_2568:
	call	tzset
	mov	al, 1
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bad0

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	mov	rax, rdi
	mov	edi, OFFSET FLAT:.str_3
	test	rax, rax
	je	.label_2570
	mov	edx, 1
	mov	rsi, rax
	jmp	setenv
.label_2570:
	jmp	unsetenv
	nop	
	.section	.text
	.align	32
	#Procedure 0x41baf0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	test	edi, edi
	sete	al
	test	esi, esi
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41bb10
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bb20
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bb30
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bb40
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bb50
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bb60

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bb70
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bb90
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bbb0
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bbd0
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bbf0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_2571
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_2571
.label_2572:
	ret	
.label_2571:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_2572
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bc20
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_2573
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_2573:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41bc40
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bc50
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41bc60
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_2574
.label_2575:
	ret	
.label_2574:
	cmp	edi, 0x7f
	je	.label_2575
	xor	eax, eax
	jmp	.label_2575
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bc80
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bc90
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bca0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bcb0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bcc0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_2576
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_2576
.label_2577:
	ret	
.label_2576:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_2577
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bcf0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_2578
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_2578:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41bd10

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bd20
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_2579
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_2579:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41bd40
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41bd50
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41bd60

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_2580
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2581
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_2581
.label_2580:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2581
	test	cl, cl
	jne	.label_2581
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_2581:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bdd0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bde0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_2582
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_2584
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_2584
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_2585
.label_2584:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_2583
	mov	al, 1
	test	rbx, rbx
	je	.label_2585
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_2583:
	xor	eax, eax
.label_2585:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_2582:
	mov	edi, OFFSET FLAT:.str_15
	mov	esi, OFFSET FLAT:.str.1_12
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41be60

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41be70

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_2586
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_2586:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_2589
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_2588
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2587
.label_2588:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2587:
	mov	edx, dword ptr [rax]
.label_2589:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bf50

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_2591
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2592
	cmp	byte ptr [rax + 1], 0
	je	.label_2590
.label_2592:
	mov	esi, OFFSET FLAT:.str.1_13
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_2591
.label_2590:
	xor	ebx, ebx
.label_2591:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41bf90

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_2593:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_2593
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bfb0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41bfc0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_2594
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_2594:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c000

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_2595
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_2596
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_2596:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
.label_2595:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c040

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_14
	cmp	byte ptr [rcx], 0
	je	.label_2597
	mov	rax, rcx
.label_2597:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c070
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_2598
	mov	edi, ebx
	call	iswcntrl
	test	eax, eax
	sete	al
	movzx	eax, al
.label_2598:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c090

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	lea	rsi, [rbx + 0x18]
	cmp	rax, rsi
	je	.label_2599
	mov	qword ptr [r14], rax
	jmp	.label_2600
.label_2599:
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	qword ptr [r14], r15
.label_2600:
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	al, byte ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_2601
	mov	eax, dword ptr [rbx + 0x14]
	mov	dword ptr [r14 + 0x14], eax
.label_2601:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41c0e0

	.globl is_basic
	.type is_basic, @function
is_basic:
	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41c100

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_2602
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_2602:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_2604
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_2603
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2605
.label_2603:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2605:
	mov	ecx, dword ptr [rax]
.label_2604:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41c1e0

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_2607
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_2606
	mov	dword ptr [r14], ebp
	jmp	.label_2607
.label_2606:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_2607:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41c230

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_2608
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_2609
.label_2608:
	mov	eax, ebx
.label_2609:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c280

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_2610
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_2610:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_2615
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_2611
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_2614
	test	esi, esi
	jne	.label_2615
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_2617
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2619
.label_2615:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_2612
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_2614
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_2618
.label_2611:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_2614:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_2622
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2620
.label_2622:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2620:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_2618:
	cmp	eax, 6
	jne	.label_2612
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_2613
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2616
.label_2612:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_2621
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_2623
.label_2617:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2619:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_2613:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2616:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_2621:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_2623:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c490

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c4a0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_2624
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_2626
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_2626
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_2627
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_2628
.label_2626:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2628
.label_2624:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_2628:
	test	ebx, ebx
	js	.label_2627
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_2627
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_2625
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_2627
.label_2625:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_2627:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c570

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41c590

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41c650

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x41c660

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	32
	#Procedure 0x41c670

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	32
	#Procedure 0x41c680

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
