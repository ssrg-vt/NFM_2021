	.section	.text
	.align	32
	#Procedure 0x401c40

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
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d70

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401da0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dd0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_28
	nop	
.label_27:
	mov	edi, OFFSET FLAT:label_19
	call	strcmp
	test	eax, eax
	je	.label_25
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_27
.label_25:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_19
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_20
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_19
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_32
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
	#Procedure 0x401ef0

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
	mov	r13, rsi
	mov	dword ptr [rsp + 0x10], edi
	mov	qword ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x38], 0
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_32
	call	setlocale
	mov	edi, OFFSET FLAT:label_49
	mov	esi, OFFSET FLAT:label_50
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_49
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rbp, -1
	mov	byte ptr [rsp + 0xb], 0xa
	xor	ecx, ecx
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x30], rax
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x20], -1
	xor	r14d, r14d
	xor	r15d, r15d
.label_809:
	mov	eax, ecx
	mov	byte ptr [rsp + 0xc], al
	mov	al, byte ptr [rsp + 0xb]
	mov	bl, al
.label_810:
	mov	eax, ebx
	mov	byte ptr [rsp + 0xb], al
	jmp	.label_39
.label_83:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x30], rax
	nop	word ptr cs:[rax + rax]
.label_39:
	mov	cl, r15b
.label_805:
	mov	r15b, cl
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_80
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0x10]
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x64
	jle	.label_89
	add	eax, -0x65
	cmp	eax, 0x1b
	ja	.label_58
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_93]]
.label_806:
	mov	r12, r14
	mov	r14, rbp
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 0x2d
	mov	rdi, rbp
	call	strchr
	mov	rbx, rax
	test	r12b, r12b
	jne	.label_37
	test	rbx, rbx
	je	.label_41
	mov	byte ptr [rbx], 0
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_32
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x20], rax
	mov	byte ptr [rbx], 0x2d
	lea	rbp, [rbx + 1]
.label_41:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_32
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	rcx, r12
	sub	rcx, qword ptr [rsp + 0x20]
	setae	al
	cmp	rcx, -1
	sete	cl
	test	rbx, rbx
	mov	rbp, r14
	je	.label_55
	xor	al, cl
	mov	r14b, 1
	jne	.label_39
	jmp	.label_55
.label_808:
	mov	rdi, qword ptr [rsp + 0x30]
	test	rdi, rdi
	je	.label_83
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	je	.label_83
	jmp	.label_92
.label_807:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	xor	r8d, r8d
	lea	rcx, [rsp + 0x50]
	call	xstrtoul
	cmp	eax, 1
	je	.label_39
	test	eax, eax
	jne	.label_36
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbp, rax
	cmovae	rbp, rax
	jmp	.label_39
.label_811:
	mov	rdi, qword ptr [rsp + 0x28]
	test	rdi, rdi
	je	.label_45
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	jne	.label_51
.label_45:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_39
.label_89:
	cmp	eax, -1
	jne	.label_59
	mov	rbx, r12
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	test	r15b, r15b
	sete	al
	test	r14b, r14b
	je	.label_60
	test	al, al
	je	.label_64
.label_60:
	movsxd	r12, dword ptr [rsp + 0x10]
	sub	r12, rcx
	lea	rsi, [r13 + rcx*8]
	test	r14b, r14b
	je	.label_67
	test	r12d, r12d
	mov	r13b, byte ptr [rsp + 0xb]
	jle	.label_47
	jmp	.label_73
.label_67:
	cmp	r12d, 1
	setg	cl
	and	cl, al
	cmp	cl, 1
	mov	r13b, byte ptr [rsp + 0xb]
	je	.label_73
.label_47:
	test	r15b, r15b
	mov	qword ptr [rsp + 0x48], rbx
	je	.label_78
	movsx	edx, r13b
	mov	rax, rsi
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rsi
	mov	esi, r12d
	call	input_from_argv
	jmp	.label_88
.label_78:
	test	r14b, r14b
	je	.label_90
	lea	r12, [rbx + 1]
	sub	r12, qword ptr [rsp + 0x20]
	xor	eax, eax
	jmp	.label_91
.label_90:
	cmp	r12d, 1
	jne	.label_34
	mov	rcx, qword ptr [rsi]
	movzx	edx, byte ptr [rcx]
	mov	eax, 0x2d
	sub	eax, edx
	jne	.label_95
	movzx	eax, byte ptr [rcx + 1]
	neg	eax
.label_95:
	test	rbp, rbp
	je	.label_34
	test	eax, eax
	je	.label_34
	mov	r12, rsi
	mov	rdi, qword ptr [r12]
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:label_38
	call	freopen_safer
	test	rax, rax
	je	.label_46
.label_34:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	esi, 2
	call	fadvise
	cmp	byte ptr [rsp + 0xc], 0
	jne	.label_52
	cmp	rbp, -1
	je	.label_52
	test	rbp, rbp
	je	.label_57
	call	input_size
	cmp	rax, 0x800000
	jle	.label_52
.label_57:
	mov	qword ptr [rsp + 0x10], rbp
	cmp	byte ptr [rsp + 0xc], 0
	setne	al
	mov	dword ptr [rsp + 0xc], eax
	mov	r12, -1
	mov	bl, 1
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, -1
	jmp	.label_62
.label_52:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	movsx	esi, r13b
	lea	rdx, [rsp + 0x40]
	call	read_input
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x40]
.label_91:
	mov	qword ptr [rsp + 0x18], rax
.label_88:
	cmp	rbp, r12
	mov	rax, r12
	cmovb	rax, rbp
	cmp	byte ptr [rsp + 0xc], 0
	cmove	rbp, rax
	mov	qword ptr [rsp + 0x10], rbp
	je	.label_77
	xor	ebx, ebx
	mov	rsi, -1
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_62
.label_77:
	mov	rdi, rbp
	mov	rsi, r12
	call	randperm_bound
	mov	rsi, rax
	mov	dword ptr [rsp + 0xc], 0
	xor	ebx, ebx
.label_62:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, rbp
	call	randint_all_new
	mov	r13, rax
	test	r13, r13
	je	.label_72
	test	bl, bl
	je	.label_35
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	movsx	esi, byte ptr [rsp + 0xb]
	lea	r8, [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, r13
	call	read_input_reservoir_sampling
	mov	r12, rax
	mov	qword ptr [rsp + 0x10], r12
.label_35:
	mov	dword ptr [rsp + 0x28], ebx
	mov	rax, r14
	or	r15b, al
	jne	.label_69
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	eax, eax
	jne	.label_56
.label_69:
	xor	r15d, r15d
	mov	ebx, dword ptr [rsp + 0xc]
	test	bl, bl
	mov	rbp, qword ptr [rsp + 0x30]
	jne	.label_75
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	randperm_new
	mov	r15, rax
.label_75:
	test	rbp, rbp
	je	.label_66
	mov	rdx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, OFFSET FLAT:label_68
	mov	rdi, rbp
	call	freopen_safer
	test	rax, rax
	je	.label_72
.label_66:
	test	bl, bl
	je	.label_74
	mov	rsi, qword ptr [rsp + 0x10]
	test	rsi, rsi
	je	.label_71
	test	r12, r12
	je	.label_76
	test	r14b, r14b
	mov	al, byte ptr [rsp + 0xb]
	je	.label_79
	movsx	r8d, al
	mov	rdi, r13
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x48]
	call	write_random_numbers
	jmp	.label_42
.label_74:
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_63
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, r12
	mov	rdx, r15
	call	write_permuted_output_reservoir
	jmp	.label_42
.label_63:
	test	r14b, r14b
	je	.label_94
	movsx	ecx, byte ptr [rsp + 0xb]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r15
	call	write_permuted_numbers
	jmp	.label_42
.label_79:
	mov	rdi, r13
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, r12
	call	write_random_lines
	jmp	.label_42
.label_94:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r15
	call	write_permuted_lines
.label_42:
	test	eax, eax
	jne	.label_48
.label_71:
	xor	eax, eax
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_59:
	cmp	eax, 0xffffff7d
	je	.label_54
	cmp	eax, 0xffffff7e
	jne	.label_58
	xor	edi, edi
	call	usage
.label_54:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_19
	mov	edx, OFFSET FLAT:label_23
	mov	r8d, OFFSET FLAT:label_61
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_58:
	mov	edi, 1
	call	usage
.label_72:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_70
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	jmp	.label_85
.label_55:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rbx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_96
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
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
.label_73:
	mov	rbp, rsi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movzx	eax, r14b
	xor	rax, 1
	mov	rdi, qword ptr [rbp + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_48:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	jmp	.label_82
.label_92:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	jmp	.label_85
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	jmp	.label_85
.label_56:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
.label_82:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
.label_85:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_46:
	mov	rbx, r12
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [rbx]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_70
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402660

	.globl input_from_argv
	.type input_from_argv, @function
input_from_argv:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15d, edx
	mov	r14d, esi
	mov	r12, rdi
	movsxd	rax, r14d
	mov	r13d, eax
	test	eax, eax
	mov	qword ptr [rsp], rax
	jle	.label_97
	xor	ebp, ebp
	mov	rbx, rax
	nop	word ptr [rax + rax]
.label_100:
	mov	rdi, qword ptr [r12 + rbp*8]
	call	strlen
	add	rbx, rax
	inc	rbp
	cmp	r13d, ebp
	jne	.label_100
	mov	rdi, rbx
	call	xmalloc
	mov	rbx, rax
	test	r13d, r13d
	jle	.label_98
	mov	rbp, r12
	nop	word ptr [rax + rax]
.label_101:
	mov	rsi, qword ptr [rbp]
	mov	rdi, rbx
	call	stpcpy
	mov	qword ptr [rbp], rbx
	mov	byte ptr [rax], r15b
	inc	rax
	add	rbp, 8
	dec	r14d
	mov	rbx, rax
	jne	.label_101
	jmp	.label_99
.label_97:
	mov	rdi, rax
	call	xmalloc
	jmp	.label_99
.label_98:
	mov	rax, rbx
.label_99:
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [r12 + rcx*8], rax
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
	#Procedure 0x402710

	.globl input_size
	.type input_size, @function
input_size:
	push	r14
	push	rbx
	sub	rsp, 0x98
	movabs	rbx, 0x7fffffffffffffff
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	fstat
	test	eax, eax
	jne	.label_102
	lea	rdi, [rsp + 8]
	call	usable_st_size
	test	al, al
	je	.label_102
	mov	r14, qword ptr [rsp + 0x38]
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	sub	r14, rax
	test	rax, rax
	cmovns	rbx, r14
.label_102:
	mov	rax, rbx
	add	rsp, 0x98
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402770

	.globl read_input
	.type read_input, @function
read_input:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	r15d, esi
	lea	rsi, [rsp]
	call	fread_file
	mov	r14, rax
	test	r14, r14
	je	.label_105
	mov	rbx, r14
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_108
	cmp	byte ptr [rbx + rax - 1], r15b
	je	.label_103
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp], rcx
	mov	byte ptr [rbx + rax], r15b
.label_103:
	mov	rax, qword ptr [rsp]
	add	r14, rax
	mov	edi, 1
	xor	ebp, ebp
	test	rax, rax
	jle	.label_106
	xor	ebp, ebp
	movsx	r13d, r15b
	mov	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_109:
	mov	rdx, r14
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r13d
	call	next_line
	inc	rbp
	cmp	rax, r14
	jb	.label_109
	lea	rdi, [rbp + 1]
	jmp	.label_106
.label_108:
	add	r14, rax
	mov	edi, 1
	xor	ebp, ebp
.label_106:
	mov	esi, 8
	call	xnmalloc
	mov	r13, rax
	mov	qword ptr [r12], r13
	mov	qword ptr [r13], rbx
	test	rbp, rbp
	je	.label_107
	mov	r12d, 1
	movsx	r15d, r15b
	nop	dword ptr [rax]
.label_104:
	mov	rdx, r14
	sub	rdx, rbx
	mov	rdi, rbx
	mov	esi, r15d
	call	next_line
	mov	rbx, rax
	mov	qword ptr [r13 + r12*8], rbx
	inc	r12
	cmp	r12, rbp
	jbe	.label_104
.label_107:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_105:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x402890

	.globl read_input_reservoir_sampling
	.type read_input_reservoir_sampling, @function
read_input_reservoir_sampling:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r12, rdx
	mov	dword ptr [rsp + 4], esi
	mov	qword ptr [rsp + 8], rdi
	cmp	r12, 0x400
	mov	r13d, 0x400
	cmovb	r13, r12
	mov	esi, 0x18
	mov	rdi, r13
	call	xcalloc
	mov	r14, rax
	xor	r15d, r15d
	xor	ebp, ebp
	jmp	.label_114
	nop	dword ptr [rax]
.label_112:
	add	r13, 0x400
	mov	edx, 0x18
	mov	rdi, r14
	mov	rsi, r13
	call	xnrealloc
	mov	r14, rax
	add	rbx, r14
	xor	esi, esi
	mov	edx, 0x6000
	mov	rdi, rbx
	call	memset
.label_114:
	lea	rax, [rbp*8]
	lea	rbx, [rax + rax*2]
	nop	dword ptr [rax + rax]
.label_111:
	cmp	rbp, r12
	jae	.label_118
	lea	rdi, [r14 + rbx]
	mov	eax, dword ptr [rsp + 4]
	movsx	edx, al
	mov	rsi, qword ptr [rsp + 8]
	call	readlinebuffer_delim
	mov	r15, rax
	test	r15, r15
	je	.label_113
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, r13
	jb	.label_111
	jmp	.label_112
.label_118:
	test	r15, r15
	je	.label_113
	lea	r15, [rsp + 0x20]
	mov	rdi, r15
	call	initbuffer
	mov	eax, dword ptr [rsp + 4]
	movsx	r13d, al
	nop	word ptr [rax + rax]
.label_117:
	mov	rbx, rbp
	lea	rbp, [rbx + 1]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	randint_choose
	cmp	rax, r12
	lea	rax, [rax + rax*2]
	lea	rdi, [r14 + rax*8]
	cmovae	rdi, r15
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, r13d
	call	readlinebuffer_delim
	test	rax, rax
	je	.label_115
	cmp	rbp, 1
	mov	rbx, rbp
	jne	.label_117
.label_115:
	test	rbx, rbx
	je	.label_119
	lea	rdi, [rsp + 0x20]
	call	freebuffer
	jmp	.label_120
.label_113:
	mov	rbx, rbp
.label_120:
	mov	rdi, qword ptr [rsp + 8]
	call	ferror_unlocked
	test	eax, eax
	jne	.label_110
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r14
	cmp	rbx, r12
	cmova	rbx, r12
	mov	rax, rbx
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_110:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_119:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x4b
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a50

	.globl write_random_numbers
	.type write_random_numbers, @function
write_random_numbers:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	ebx, 1
	xor	eax, eax
	test	r12, r12
	je	.label_121
	sub	rbx, r14
	add	rbx, rcx
	movsx	r13d, r8b
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_123:
	mov	rdi, r15
	mov	rsi, rbx
	call	randint_choose
	lea	rdx, [rax + r14]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_122
	xor	eax, eax
	mov	ecx, r13d
	call	__printf_chk
	test	eax, eax
	mov	eax, 0xffffffff
	js	.label_121
	inc	rbp
	xor	eax, eax
	cmp	rbp, r12
	jb	.label_123
.label_121:
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
	#Procedure 0x402ad0

	.globl write_random_lines
	.type write_random_lines, @function
write_random_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r13, rdx
	mov	r15, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r15, r15
	je	.label_124
	xor	ebp, ebp
.label_125:
	mov	rdi, r12
	mov	rsi, r14
	call	randint_choose
	mov	rbx, qword ptr [r13 + rax*8 + 8]
	mov	rdi, qword ptr [r13 + rax*8]
	sub	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	mov	eax, 0xffffffff
	jne	.label_124
	inc	rbp
	xor	eax, eax
	cmp	rbp, r15
	jb	.label_125
.label_124:
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
	#Procedure 0x402b40

	.globl write_permuted_output_reservoir
	.type write_permuted_output_reservoir, @function
write_permuted_output_reservoir:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	test	r15, r15
	je	.label_126
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_127:
	mov	rax, qword ptr [r14 + rbx*8]
	lea	r13, [rax + rax*2]
	mov	rdi, qword ptr [r12 + r13*8 + 0x10]
	mov	rdx, qword ptr [r12 + r13*8 + 8]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	cmp	rax, qword ptr [r12 + r13*8 + 8]
	mov	eax, 0xffffffff
	jne	.label_126
	inc	rbx
	xor	eax, eax
	cmp	rbx, r15
	jb	.label_127
.label_126:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bb0

	.globl write_permuted_numbers
	.type write_permuted_numbers, @function
write_permuted_numbers:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r12, r12
	je	.label_128
	movsx	ebp, cl
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_129:
	mov	rdx, qword ptr [r14 + rbx*8]
	add	rdx, r15
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_122
	xor	eax, eax
	mov	ecx, ebp
	call	__printf_chk
	test	eax, eax
	mov	eax, 0xffffffff
	js	.label_128
	inc	rbx
	xor	eax, eax
	cmp	rbx, r12
	jb	.label_129
.label_128:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c10

	.globl write_permuted_lines
	.type write_permuted_lines, @function
write_permuted_lines:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	test	r15, r15
	je	.label_130
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_131:
	mov	rax, qword ptr [r14 + r13*8]
	mov	rbx, qword ptr [r12 + rax*8 + 8]
	mov	rdi, qword ptr [r12 + rax*8]
	sub	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	mov	eax, 0xffffffff
	jne	.label_130
	inc	r13
	xor	eax, eax
	cmp	r13, r15
	jb	.label_131
.label_130:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c80

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	movzx	eax, word ptr [rdi + 0x18]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_132
	mov	al, 1
	ret	
.label_132:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ca0

	.globl next_line
	.type next_line, @function
next_line:
	push	rax
	call	memchr
	inc	rax
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cb0

	.globl randint_choose
	.type randint_choose, @function
randint_choose:
	dec	rsi
	jmp	randint_genmax
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cc0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cd0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ce0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_135
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_133
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_133
.label_135:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_136
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_133:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_134
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_70
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_136:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_134:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_96
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402da0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402db0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_137
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_137:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dd0

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
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, r12
	call	fileno
	xor	r14d, r14d
	test	eax, eax
	mov	qword ptr [rsp], rbp
	je	.label_146
	cmp	eax, 1
	je	.label_149
	cmp	eax, 2
	je	.label_150
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_150:
	mov	bpl, r14b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r14b
	jmp	.label_145
.label_146:
	xor	ebp, ebp
	xor	r15d, r15d
	jmp	.label_147
.label_149:
	xor	ebp, ebp
.label_145:
	xor	r15d, r15d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_139
	xor	r13d, r13d
	xor	edi, edi
	call	protect_fd
	mov	r15b, 1
	test	al, al
	je	.label_141
.label_139:
	test	r14b, r14b
	je	.label_143
	mov	edi, 1
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_138
.label_143:
	test	bpl, bpl
	je	.label_147
	mov	edi, 2
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_141
.label_147:
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
	jmp	.label_141
.label_138:
	mov	r14b, 1
.label_141:
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	test	bpl, bpl
	je	.label_144
	mov	edi, 2
	call	close
.label_144:
	test	r14b, r14b
	je	.label_142
	mov	edi, 1
	call	close
.label_142:
	test	r15b, r15b
	je	.label_148
	xor	edi, edi
	call	close
.label_148:
	test	r13, r13
	jne	.label_140
	mov	dword ptr [rbx], r12d
.label_140:
	mov	rax, r13
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
	#Procedure 0x402ef0

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:label_151
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ecx, eax
	mov	al, 1
	cmp	ecx, ebx
	je	.label_152
	test	ecx, ecx
	js	.label_153
	mov	edi, ecx
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
.label_153:
	xor	eax, eax
.label_152:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f30

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402f40
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f50

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], edx
	mov	r13, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	mov	r15, qword ptr [r14 + 0x10]
	mov	rdi, r13
	call	feof_unlocked
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	eax, eax
	jne	.label_158
	add	rbx, r15
	mov	eax, dword ptr [rsp + 8]
	movsx	eax, al
	mov	dword ptr [rsp + 0xc], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, r15
	nop	
.label_157:
	mov	rdi, r13
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_155
	cmp	r12, r15
	je	.label_158
	mov	rdi, r13
	call	ferror_unlocked
	test	eax, eax
	jne	.label_158
	mov	eax, dword ptr [rsp + 8]
	cmp	byte ptr [r12 - 1], al
	mov	ebp, dword ptr [rsp + 0xc]
	je	.label_154
.label_155:
	cmp	r12, rbx
	jne	.label_156
	mov	r12, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	r12, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	rbx, r15
	add	rbx, qword ptr [r14]
.label_156:
	mov	byte ptr [r12], bpl
	inc	r12
	cmp	ebp, dword ptr [rsp + 0xc]
	jne	.label_157
.label_154:
	sub	r12, r15
	mov	qword ptr [r14 + 8], r12
	mov	qword ptr [rsp + 0x10], r14
.label_158:
	mov	rax, qword ptr [rsp + 0x10]
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
	#Procedure 0x403020

	.globl freebuffer
	.type freebuffer, @function
freebuffer:
	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403030

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_161
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_160
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_160
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_164
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_164:
	mov	rbx, r14
.label_160:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_161:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_162
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030e0
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
	#Procedure 0x403120
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
	#Procedure 0x403130
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
	#Procedure 0x403140

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
	#Procedure 0x403180
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
	#Procedure 0x4031a0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_165
	test	rdx, rdx
	je	.label_165
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_165:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031d0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
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
	#Procedure 0x403250

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb0], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_225:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_229
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_233]]
.label_720:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_239
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_173
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_721:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_247
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_247
	xor	r14d, r14d
.label_259:
	cmp	r14, r11
	jae	.label_255
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_255:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_259
.label_247:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_174
.label_713:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_174
.label_716:
	mov	al, 1
.label_714:
	mov	r12b, 1
.label_717:
	test	r12b, 1
	mov	cl, 1
	je	.label_273
	mov	ecx, eax
.label_273:
	mov	al, cl
.label_715:
	test	r12b, 1
	jne	.label_275
	test	r11, r11
	je	.label_279
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_279:
	mov	r14d, 1
	jmp	.label_169
.label_275:
	xor	r14d, r14d
.label_169:
	mov	ecx, OFFSET FLAT:label_173
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_174
.label_718:
	test	r12b, 1
	jne	.label_185
	test	r11, r11
	je	.label_187
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_187:
	mov	r14d, 1
	jmp	.label_278
.label_719:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_195
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_174
.label_185:
	xor	r14d, r14d
.label_278:
	mov	eax, OFFSET FLAT:label_195
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_174:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_269
	nop	dword ptr [rax]
.label_257:
	inc	rsi
.label_269:
	cmp	rbp, -1
	je	.label_241
	cmp	rsi, rbp
	jne	.label_243
	jmp	.label_245
	nop	word ptr cs:[rax + rax]
.label_241:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_245
.label_243:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_250
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_251
	cmp	rbp, -1
	jne	.label_251
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_251:
	cmp	rbx, rbp
	jbe	.label_262
.label_250:
	xor	r8d, r8d
.label_171:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_264
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_268]]
.label_737:
	test	rsi, rsi
	jne	.label_170
	jmp	.label_200
	nop	
.label_262:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_167
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_171
	jmp	.label_186
.label_167:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_171
.label_741:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_196
	test	rsi, rsi
	jne	.label_197
	cmp	rbp, 1
	je	.label_200
	xor	r13d, r13d
	jmp	.label_188
.label_730:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_204
	cmp	byte ptr [rsp + 7], 0
	jne	.label_178
	cmp	r12d, 2
	jne	.label_201
	mov	eax, r9d
	and	al, 1
	jne	.label_201
	cmp	r14, r11
	jae	.label_208
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_208:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_212
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_212:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_218
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_218:
	add	r14, 3
	mov	r9b, 1
.label_201:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_224
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_224:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_227
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_227
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_227
	cmp	r14, r11
	jae	.label_217
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_217:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_234
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_234:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_188
.label_731:
	mov	bl, 0x62
	jmp	.label_246
.label_732:
	mov	cl, 0x74
	jmp	.label_249
.label_733:
	mov	bl, 0x76
	jmp	.label_246
.label_734:
	mov	bl, 0x66
	jmp	.label_246
.label_735:
	mov	cl, 0x72
	jmp	.label_249
.label_738:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_254
	cmp	byte ptr [rsp + 7], 0
	jne	.label_178
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_260
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_260:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_270
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_270:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_271
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	add	r14, 3
	xor	r9d, r9d
.label_254:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_188
.label_739:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_280
	cmp	r12d, 2
	jne	.label_170
	cmp	byte ptr [rsp + 7], 0
	je	.label_170
	jmp	.label_178
.label_740:
	cmp	r12d, 2
	jne	.label_182
	cmp	byte ptr [rsp + 7], 0
	jne	.label_178
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_181
.label_264:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_193
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_172:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_205
	test	r8b, r8b
	je	.label_205
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_188
.label_196:
	test	rsi, rsi
	jne	.label_183
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_183
.label_200:
	mov	dl, 1
.label_736:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_178
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_188:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_235
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_237
	jmp	.label_240
	nop	word ptr cs:[rax + rax]
.label_235:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_240
.label_237:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_242
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_181
	jmp	.label_206
	nop	dword ptr [rax]
.label_240:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_206
	jmp	.label_181
.label_242:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_206
.label_204:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_257
	xor	r15d, r15d
	jmp	.label_170
.label_182:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_249
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_181
.label_249:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_178
.label_246:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_188
	nop	word ptr cs:[rax + rax]
.label_206:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_178
	cmp	r12d, 2
	jne	.label_256
	mov	eax, r9d
	and	al, 1
	jne	.label_256
	cmp	r14, r11
	jae	.label_276
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_276:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_209
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_209:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_176
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_176:
	add	r14, 3
	mov	r9b, 1
.label_256:
	cmp	r14, r11
	jae	.label_184
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_184:
	inc	r14
	jmp	.label_189
.label_193:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_194
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_194:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_277:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_211
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_215
	cmp	rbp, -2
	je	.label_220
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_222
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_226:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_216
	bt	rsi, rdx
	jb	.label_186
.label_216:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_226
.label_222:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_244
	xor	r13d, r13d
.label_244:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_277
	jmp	.label_172
.label_227:
	xor	r13d, r13d
	jmp	.label_188
.label_183:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_188
.label_280:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_170
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_170
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_170
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_265
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_253
	cmp	byte ptr [rsp + 7], 0
	jne	.label_178
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_190
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_190:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_266
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_266:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_168
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_168:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_175
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_175:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_188
.label_170:
	xor	eax, eax
.label_197:
	xor	r13d, r13d
	jmp	.label_188
.label_205:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_191
	nop	word ptr cs:[rax + rax]
.label_258:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_191:
	test	r8b, r8b
	je	.label_198
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_199
	cmp	r14, r11
	jae	.label_202
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_202:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_199
	nop	dword ptr [rax]
.label_198:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_186
	cmp	r12d, 2
	jne	.label_210
	mov	eax, r9d
	and	al, 1
	jne	.label_210
	cmp	r14, r11
	jae	.label_214
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_214:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_192
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_192:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_223
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_223:
	add	r14, 3
	mov	r9b, 1
.label_210:
	cmp	r14, r11
	jae	.label_263
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_263:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_231
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_231:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_207
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_207:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_199:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_181
	test	r9b, 1
	je	.label_180
	mov	ebx, eax
	and	bl, 1
	jne	.label_180
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_228
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_228:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_236
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_236:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_180:
	cmp	r14, r11
	jae	.label_258
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_258
	nop	word ptr cs:[rax + rax]
.label_181:
	test	r9b, 1
	je	.label_179
	and	al, 1
	jne	.label_179
	cmp	r14, r11
	jae	.label_267
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_267:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_213
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_213:
	add	r14, 2
	xor	r9d, r9d
.label_179:
	mov	ebx, r15d
.label_189:
	cmp	r14, r11
	jae	.label_272
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_272:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_257
.label_215:
	xor	r13d, r13d
.label_211:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_172
.label_220:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_177
	mov	rsi, qword ptr [rsp + 0x50]
.label_252:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_238
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_252
	xor	r13d, r13d
	jmp	.label_172
.label_177:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_172
.label_238:
	xor	r13d, r13d
	jmp	.label_172
.label_265:
	xor	r13d, r13d
	jmp	.label_188
.label_253:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_188
	nop	dword ptr [rax + rax]
.label_245:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_203
	or	dl, al
	je	.label_186
.label_203:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_219
	or	dl, al
	jne	.label_219
	test	r10b, 1
	jne	.label_221
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_219
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_225
.label_219:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_230
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_232
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_232
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_248:
	cmp	r14, r11
	jae	.label_261
	mov	byte ptr [rcx + r14], al
.label_261:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_248
	jmp	.label_232
.label_178:
	mov	qword ptr [rsp + 0x20], rbp
.label_186:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_274:
	mov	r14, rax
.label_166:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_221:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_274
.label_230:
	mov	rcx, qword ptr [rsp + 8]
.label_232:
	cmp	r14, r11
	jae	.label_166
	mov	byte ptr [rcx + r14], 0
	jmp	.label_166
.label_229:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404010
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
	#Procedure 0x404020

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
	call	xcharalloc
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
	je	.label_281
	mov	qword ptr [rax], rbx
.label_281:
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
	#Procedure 0x404110
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_282
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_284:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_284
.label_282:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_286
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_285]], OFFSET FLAT:slot0
.label_286:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_283
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_283:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041b0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4041c0

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
	js	.label_287
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_290
	cmp	r12d, 0x7fffffff
	je	.label_292
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_288
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_288:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_290:
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
	jbe	.label_293
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_289
.label_293:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_291
	mov	rdi, r14
	call	free
.label_291:
	mov	rdi, r15
	call	xcharalloc
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
.label_289:
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
.label_287:
	call	abort
.label_292:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404380

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404390
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
	#Procedure 0x4043a0
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
	#Procedure 0x4043b0

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
	#Procedure 0x4043f0

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
	je	.label_294
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
.label_294:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404450

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
	#Procedure 0x404490
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
	#Procedure 0x4044b0
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
	#Procedure 0x4044d0

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
	mov	rcx,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
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
	#Procedure 0x404540

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
	#Procedure 0x404550

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404560
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404570

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
	#Procedure 0x4045c0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4045d0

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
	mov	rax,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
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
	#Procedure 0x404640
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
	#Procedure 0x404660
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
	#Procedure 0x404680

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404690
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
	#Procedure 0x4046a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4046b0

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
	#Procedure 0x4046c0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_305
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_302
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_303
	mov	eax, OFFSET FLAT:label_304
	jmp	.label_300
.label_302:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_301
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_298
	mov	eax, OFFSET FLAT:label_299
	jmp	.label_300
.label_301:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_195
	mov	eax, OFFSET FLAT:label_173
.label_300:
	cmove	rax, rcx
.label_305:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404780

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
	je	.label_306
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_308
	jmp	.label_307
.label_306:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_307
.label_308:
	mov	eax, 1
	test	bpl, bpl
	je	.label_307
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
.label_307:
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
	#Procedure 0x404800

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
	je	.label_311
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_309
	jmp	.label_310
.label_311:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_310
.label_309:
	mov	eax, 1
	test	bpl, bpl
	je	.label_310
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
.label_310:
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
	#Procedure 0x404890

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
	je	.label_312
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_314
	jmp	.label_313
.label_312:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_313
.label_314:
	mov	eax, 1
	test	bpl, bpl
	je	.label_313
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
.label_313:
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
	#Procedure 0x404910

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
	je	.label_317
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_316
	jmp	.label_315
.label_317:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_315
.label_316:
	mov	eax, 1
	test	bpl, bpl
	je	.label_315
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
.label_315:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404980

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
	je	.label_320
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_318
	jmp	.label_319
.label_320:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_319
.label_318:
	mov	eax, 1
	test	bpl, bpl
	je	.label_319
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_319:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4049e0

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
	je	.label_321
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_323
	jmp	.label_322
.label_321:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_322
.label_323:
	mov	eax, 1
	test	bpl, bpl
	je	.label_322
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_322:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a30

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
	je	.label_326
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_325
	jmp	.label_324
.label_326:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_324
.label_325:
	mov	eax, 1
	test	bpl, bpl
	je	.label_324
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_324:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a80

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_329
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_328
	jmp	.label_327
.label_329:
	mov	eax, 1
	test	cl, cl
	je	.label_327
.label_328:
	xor	eax, eax
.label_327:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404ab0

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ad0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_330
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_330:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404af0
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b00

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rsi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbx, qword ptr [rdi + 0x10]
	lea	r12, [r13 + 1]
	nop	word ptr cs:[rax + rax]
.label_334:
	cmp	rbx, r13
	jae	.label_331
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_335:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_335
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r14
	call	randread
	nop	dword ptr [rax + rax]
.label_333:
	mov	rdi, r15
	call	shift_left
	movzx	r15d, byte ptr [rbp]
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	inc	rbp
	cmp	rbx, r13
	jb	.label_333
.label_331:
	mov	rcx, r15
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_332
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_334
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_336
.label_332:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp + 8]
	movups	xmmword ptr [rax], xmm0
.label_336:
	mov	rax, rcx
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
	#Procedure 0x404c20

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c50
	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c90

	.globl randperm_bound
	.type randperm_bound, @function
randperm_bound:
	push	rbx
	mov	rbx, rdi
	mov	rdi, rsi
	call	ceil_lg
	imul	rax, rbx
	add	rax, 7
	shr	rax, 3
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cb0

	.globl ceil_lg
	.type ceil_lg, @function
ceil_lg:
	xor	eax, eax
	dec	rdi
	je	.label_337
	xor	eax, eax
	nop	dword ptr [rax]
.label_338:
	inc	rax
	shr	rdi, 1
	jne	.label_338
.label_337:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl randperm_new
	.type randperm_new, @function
randperm_new:
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
	xor	r12d, r12d
	test	r14, r14
	je	.label_342
	cmp	r14, 1
	jne	.label_348
	mov	edi, 8
	call	xmalloc
	mov	r12, rax
	mov	rdi, r15
	mov	rsi, rbx
	call	randint_choose_0
	mov	qword ptr [r12], rax
	jmp	.label_342
.label_348:
	cmp	rbx, 0x20000
	jb	.label_344
	xor	edx, edx
	mov	rax, rbx
	div	r14
	cmp	rax, 0x1f
	jbe	.label_345
	lea	rdi, [r14 + r14]
	call	sparse_new
	mov	rcx, rax
	mov	qword ptr [rsp], rcx
	test	rax, rax
	je	.label_350
	mov	esi, 8
	mov	rdi, r14
	call	xnmalloc
	mov	r12, rax
	mov	r13b, 1
	jmp	.label_343
.label_344:
	mov	esi, 8
	mov	rdi, rbx
	call	xnmalloc
	mov	r12, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	mov	r13d, 0
	jne	.label_347
	jmp	.label_343
.label_345:
	mov	esi, 8
	mov	rdi, rbx
	call	xnmalloc
	mov	r12, rax
.label_347:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_339:
	mov	qword ptr [r12 + rax*8], rax
	inc	rax
	cmp	rbx, rax
	jne	.label_339
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	r14, r14
	mov	r13d, 0
	je	.label_340
.label_343:
	xor	ebp, ebp
	nop	
.label_349:
	mov	rdi, r15
	mov	rsi, rbx
	call	randint_choose_0
	add	rax, rbp
	test	r13b, r13b
	je	.label_341
	mov	rdi, qword ptr [rsp]
	mov	rsi, r12
	mov	rdx, rbp
	mov	rcx, rax
	call	sparse_swap
	jmp	.label_346
	nop	word ptr [rax + rax]
.label_341:
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rax
	call	swap
.label_346:
	inc	rbp
	dec	rbx
	cmp	r14, rbp
	jne	.label_349
	test	r13b, r13b
	je	.label_340
	mov	rdi, qword ptr [rsp]
	call	sparse_free
	jmp	.label_342
.label_340:
	mov	edx, 8
	mov	rdi, r12
	mov	rsi, r14
	call	xnrealloc
	mov	r12, rax
.label_342:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_350:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e50

	.globl randint_choose_0
	.type randint_choose_0, @function
randint_choose_0:
	dec	rsi
	jmp	randint_genmax
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e60

	.globl sparse_new
	.type sparse_new, @function
sparse_new:
	xor	esi, esi
	mov	edx, OFFSET FLAT:sparse_hash_
	mov	ecx, OFFSET FLAT:sparse_cmp_
	mov	r8d, OFFSET FLAT:free
	jmp	hash_initialize
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e80

	.globl sparse_swap
	.type sparse_swap, @function
sparse_swap:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r15, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x18], r15
	mov	qword ptr [rsp + 0x20], 0
	lea	rsi, [rsp + 0x18]
	call	hash_delete
	mov	rbx, rax
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp + 0x10], 0
	lea	rsi, [rsp + 8]
	mov	rdi, r12
	call	hash_delete
	mov	rbp, rax
	test	rbx, rbx
	jne	.label_353
	mov	edi, 0x10
	call	xmalloc
	mov	rbx, rax
	mov	qword ptr [rbx + 8], r15
	mov	qword ptr [rbx], r15
.label_353:
	test	rbp, rbp
	jne	.label_352
	mov	edi, 0x10
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rbp + 8], r13
	mov	qword ptr [rbp], r13
.label_352:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbp + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r12
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_351
	mov	rdi, r12
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_351
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + r15*8], rax
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_351:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f60

	.globl swap
	.type swap, @function
swap:
	mov	rax, qword ptr [rdi + rsi*8]
	mov	rcx, qword ptr [rdi + rdx*8]
	mov	qword ptr [rdi + rsi*8], rcx
	mov	qword ptr [rdi + rdx*8], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f80

	.globl sparse_free
	.type sparse_free, @function
sparse_free:
	jmp	hash_free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f90

	.globl sparse_hash_
	.type sparse_hash_, @function
sparse_hash_:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404fa0

	.globl sparse_cmp_
	.type sparse_cmp_, @function
sparse_cmp_:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fb0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_357
	test	rbx, rbx
	je	.label_354
	mov	esi, OFFSET FLAT:label_355
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_356
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_356
.label_357:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_354:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_356:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405060

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405090

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:label_359
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_360
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_360
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_358
.label_360:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_358
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_358
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_358
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_358
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_358:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405230
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405240
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_361
	jmp	readsource
.label_361:
	add	rdi, 0x18
	jmp	readisaac
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405270

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_363
	nop	
.label_362:
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
.label_363:
	sub	r13, rbx
	jne	.label_362
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_366
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_367:
	cmp	r15, 0x800
	jb	.label_364
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_367
	jmp	.label_365
.label_364:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_366:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_365:
	mov	qword ptr [r14], r12
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
	#Procedure 0x4053a0

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_368
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_368:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_369
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_372
	mov	esi, OFFSET FLAT:label_370
	jmp	.label_371
.label_372:
	mov	esi, OFFSET FLAT:label_373
.label_371:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_369:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405440

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rcx, [r14 + 0x400]
	lea	rax, [r14 + 0x20]
	cmp	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	cmova	rax, rcx
	mov	rcx, r14
	not	rcx
	add	rcx, rax
	shr	rcx, 5
	lea	rax, [rcx*4]
	mov	qword ptr [rsp + 0x18], rax
	shl	rcx, 5
	lea	rax, [rbp + rcx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	r15, qword ptr [rsp + 8]
	nop	
.label_374:
	mov	qword ptr [rsp], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r14 + 0x400]
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r14], rax
	shr	rax, 8
	mov	rdi, r15
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r14 + 0x408]
	mov	r12, qword ptr [r14 + 8]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r14 + 8], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r14 + 0x410]
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, r15
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r14 + 0x418]
	mov	r12, qword ptr [r14 + 0x18]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r14 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r14, 0x20
	add	rbp, 0x20
	cmp	r14, qword ptr [rsp + 0x20]
	jb	.label_374
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 0x800]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	r13, [rcx + rax*8 + 0x38]
	mov	r14, qword ptr [rsp + 8]
	nop	
.label_375:
	mov	r15, rbx
	shl	r15, 0x15
	xor	r15, rbx
	not	r15
	add	r15, qword ptr [r13 - 0x418]
	mov	rbx, qword ptr [r13 - 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r15
	mov	qword ptr [r13 - 0x18], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r12, rax
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x410]
	mov	r15, qword ptr [r13 - 0x10]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13 - 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 8], rbp
	mov	qword ptr [rsp + 0x10], r12
	mov	r15, rbx
	shl	r15, 0xc
	xor	r15, rbx
	add	r15, qword ptr [r13 - 0x408]
	mov	rbx, qword ptr [r13 - 8]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r15
	add	rbp, rax
	mov	qword ptr [r13 - 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 0x10], rbp
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x400]
	mov	r15, qword ptr [r13]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 0x18], r12
	lea	rax, [r13 + 0x20]
	add	r13, 8
	add	rcx, 0x20
	mov	qword ptr [rsp + 0x10], rcx
	cmp	r13, qword ptr [rsp]
	mov	r13, rax
	jb	.label_375
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x800], rbx
	mov	qword ptr [rax + 0x808], r12
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
	#Procedure 0x4057e0

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057f0

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405800

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rdi
	nop	word ptr cs:[rax + rax]
.label_377:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp + 0x30], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x18]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp + 0x30]
	add	rbx, r13
	mov	qword ptr [rsp + 0x18], rbx
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	r13, qword ptr [rsp + 8]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 0x10]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_377
	xor	ecx, ecx
	nop	
.label_376:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 8], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_376
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
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
	.align	32
	#Procedure 0x405b20

	.globl fread_file
	.type fread_file, @function
fread_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	r15, rdi
	call	fileno
	lea	rsi, [rsp + 8]
	mov	edi, eax
	call	fstat
	mov	r13d, 0x2000
	test	eax, eax
	js	.label_378
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	mov	r13d, 0x2000
	cmp	eax, 0x8000
	jne	.label_378
	mov	rdi, r15
	call	ftello
	mov	r13d, 0x2000
	test	rax, rax
	js	.label_378
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r13d, 0x2000
	sub	rcx, rax
	jle	.label_378
	cmp	rcx, -1
	je	.label_380
	inc	rcx
	mov	r13, rcx
.label_378:
	mov	rdi, r13
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_385
	mov	qword ptr [rsp], rbx
	xor	ebp, ebp
	mov	r14, -1
	nop	dword ptr [rax]
.label_381:
	mov	r12, rax
	mov	rbx, r13
	sub	rbx, rbp
	lea	rdi, [r12 + rbp]
	mov	esi, 1
	mov	rdx, rbx
	mov	rcx, r15
	call	fread
	add	rbp, rax
	cmp	rax, rbx
	jne	.label_383
	mov	ebx, 0xc
	cmp	r13, -1
	je	.label_384
	mov	rbx, r13
	shr	rbx, 1
	mov	rax, rbx
	not	rax
	add	rbx, r13
	cmp	r13, rax
	cmovae	rbx, r14
	mov	rdi, r12
	mov	rsi, rbx
	call	realloc
	test	rax, rax
	mov	r13, rbx
	jne	.label_381
	call	__errno_location
	mov	ebx, dword ptr [rax]
	jmp	.label_384
.label_383:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdi, r15
	call	ferror
	test	eax, eax
	je	.label_386
.label_384:
	mov	rdi, r12
	call	free
	call	__errno_location
	mov	dword ptr [rax], ebx
.label_379:
	xor	r12d, r12d
.label_385:
	mov	rax, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_386:
	dec	r13
	cmp	rbp, r13
	jae	.label_382
	lea	rsi, [rbp + 1]
	mov	rdi, r12
	call	realloc
	test	rax, rax
	cmovne	r12, rax
.label_382:
	mov	rax, qword ptr [rsp]
	mov	byte ptr [r12 + rbp], 0
	mov	qword ptr [rax], rbp
	jmp	.label_385
.label_380:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_379
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ca0
	.globl read_file
	.type read_file, @function
read_file:

	mov	edx, OFFSET FLAT:label_38
	jmp	internal_read_file
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cb0

	.globl internal_read_file
	.type internal_read_file, @function
internal_read_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rsi, rdx
	call	fopen
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_387
	mov	rdi, rbx
	mov	rsi, r14
	call	fread_file
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	je	.label_387
	test	r15, r15
	je	.label_388
	mov	ebp, dword ptr [r14]
	mov	rdi, r15
	call	free
.label_388:
	mov	dword ptr [r14], ebp
	xor	r15d, r15d
.label_387:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d20
	.globl read_binary_file
	.type read_binary_file, @function
read_binary_file:

	mov	edx, OFFSET FLAT:label_355
	jmp	internal_read_file
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d30

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
	je	.label_405
	mov	edx, OFFSET FLAT:label_394
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_402
.label_405:
	mov	edx, OFFSET FLAT:label_403
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
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
	mov	esi, OFFSET FLAT:label_404
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_390
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_391]]
.label_663:
	add	rsp, 8
	jmp	.label_389
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
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
	jmp	.label_389
.label_664:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
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
.label_665:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
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
.label_666:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
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
.label_667:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
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
	jmp	.label_389
.label_668:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
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
	jmp	.label_389
.label_669:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
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
	jmp	.label_389
.label_670:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
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
	jmp	.label_389
.label_672:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
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
	jmp	.label_389
.label_671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
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
.label_389:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406090
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_408:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_408
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_410:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_409
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_411
	nop	dword ptr [rax]
.label_409:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_411:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_412
	inc	r9
	cmp	r9, 0xa
	jb	.label_410
.label_412:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406120

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_413
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_413:
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
	#Procedure 0x4061b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_415
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406230

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_418
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_418:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406260

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_419
	test	rax, rax
	je	.label_420
.label_419:
	pop	rbx
	ret	
.label_420:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406280

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_421
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_421:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_422
	test	rbx, rbx
	jne	.label_422
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_422:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_424
	test	rax, rax
	je	.label_423
.label_424:
	pop	rbx
	ret	
.label_423:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4062e0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_425
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_428
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_426
.label_425:
	test	rcx, rcx
	jne	.label_429
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_429:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_427
.label_426:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_428:
	call	xalloc_die
.label_427:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406360

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406370

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406380
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
	#Procedure 0x4063b0

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_430
	call	rpl_calloc
	test	rax, rax
	je	.label_430
	pop	rcx
	ret	
.label_430:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063e0

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
	#Procedure 0x406410
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
	.section	.text
	.align	32
	#Procedure 0x406430

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_431
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_70
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406460

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_433
	cmp	eax, 1
	je	.label_435
	test	eax, eax
	jne	.label_432
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_437
	cmp	rbx, r15
	jbe	.label_436
.label_437:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_434
	mov	dword ptr [rax], 0x4b
	jmp	.label_432
.label_433:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_432
.label_435:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_432
.label_434:
	mov	dword ptr [rax], 0x22
.label_432:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_96
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_436:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x406530

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406560

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
	jae	.label_449
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_445:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_445
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_438
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_450
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_446
	cmp	eax, 0x22
	jne	.label_438
	mov	r12d, 1
.label_446:
	test	rbp, rbp
	jne	.label_442
	jmp	.label_447
.label_450:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_438
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_438
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_438
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_442:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_447
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_451
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_440
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_440
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_444
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_443
	cmp	ecx, 0x44
	je	.label_443
	cmp	ecx, 0x69
	jne	.label_444
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_444
.label_443:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_444
.label_440:
	mov	rsi, r14
.label_444:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_451
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_455]]
.label_761:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_439
.label_451:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_441
.label_762:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_439
.label_763:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_439
.label_765:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_439
.label_759:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_448
.label_760:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_439
.label_764:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_439
.label_766:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_439
.label_767:
	lea	rdi, [rsp]
	mov	edx, 7
.label_439:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_448:
	mov	rsi, r14
.label_769:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_447:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_441:
	mov	r15d, r12d
.label_438:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_768:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_448
.label_770:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_448
.label_449:
	mov	edi, OFFSET FLAT:label_452
	mov	esi, OFFSET FLAT:label_453
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_454
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406810

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
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
	#Procedure 0x406840

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_456
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_457:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_457
.label_456:
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
	#Procedure 0x406880

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
	jae	.label_458
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_472:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_472
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_467
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_460
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_465
	cmp	eax, 0x22
	jne	.label_467
	mov	r12d, 1
.label_465:
	test	rbp, rbp
	jne	.label_470
	jmp	.label_468
.label_460:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_467
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_467
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_467
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_470:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_468
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_463
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_464
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_464
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_471
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_473
	cmp	ecx, 0x44
	je	.label_473
	cmp	ecx, 0x69
	jne	.label_471
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_471
.label_473:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_471
.label_464:
	mov	rsi, r14
.label_471:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_463
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_466]]
.label_691:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_459
.label_463:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_469
.label_692:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_459
.label_693:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_459
.label_695:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_459
.label_689:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale_0
	jmp	.label_461
.label_690:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_459
.label_694:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_459
.label_696:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_459
.label_697:
	lea	rdi, [rsp]
	mov	edx, 7
.label_459:
	mov	esi, r15d
	call	bkm_scale_by_power_0
.label_461:
	mov	rsi, r14
.label_699:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_468:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_469:
	mov	r15d, r12d
.label_467:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_698:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale_0
	jmp	.label_461
.label_700:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale_0
	jmp	.label_461
.label_458:
	mov	edi, OFFSET FLAT:label_452
	mov	esi, OFFSET FLAT:label_453
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_462
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b30

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
	#Procedure 0x406b60

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_474
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_475:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebp, eax
	dec	ebx
	jne	.label_475
.label_474:
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
	#Procedure 0x406ba0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_476
	test	rsi, rsi
	mov	ecx, 1
	je	.label_477
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_477
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_476:
	mov	ecx, 1
.label_477:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bf0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c00

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_478
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_480
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_478
.label_480:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_478
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_479
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_479:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_478:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c80

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_481
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_481
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_481:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cb0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_482
	ret	
.label_482:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cd0

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
	je	.label_484
	test	rbx, rbx
	je	.label_484
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_484
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_484
	mov	edi, OFFSET FLAT:label_151
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_483
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_484
.label_483:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_484:
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
	#Procedure 0x406d70

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d80

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
	jne	.label_485
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_485
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_486
.label_485:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_486:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_487
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_487:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406df0

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
	je	.label_488
	cmp	r15, -2
	jb	.label_488
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_488
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_488:
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
	#Procedure 0x406e50
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_489
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_489
.label_490:
	ret	
.label_489:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_490
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e80
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_491
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_491:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ea0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406eb0
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
	#Procedure 0x406ec0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_492
.label_493:
	ret	
.label_492:
	cmp	edi, 0x7f
	je	.label_493
	xor	eax, eax
	jmp	.label_493
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ee0
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
	#Procedure 0x406ef0
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
	#Procedure 0x406f00
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
	#Procedure 0x406f10
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
	#Procedure 0x406f20
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_494
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_495]]
.label_496:
	ret	
.label_494:
	xor	eax, eax
	jmp	.label_496
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f40
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_497
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_497:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f60

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
	#Procedure 0x406f70
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_498
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_498:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406f90
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
	#Procedure 0x406fa0
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
	#Procedure 0x406fb0

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
	je	.label_500
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_499
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_499
.label_500:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_499
	test	cl, cl
	jne	.label_499
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_499:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407020

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_501
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_505
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_502
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_503
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_501
.label_503:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_504
.label_505:
	mov	rax, rbx
	jmp	.label_501
.label_502:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_504:
	xor	eax, eax
.label_501:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_507
	cmp	byte ptr [rax], 0x43
	jne	.label_509
	cmp	byte ptr [rax + 1], 0
	je	.label_506
.label_509:
	mov	esi, OFFSET FLAT:label_508
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_507
.label_506:
	xor	ebx, ebx
.label_507:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070f0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407100

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407110

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407120

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_510
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_512:
	cmp	qword ptr [rcx], 0
	je	.label_511
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_513:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_513
	cmp	rsi, rax
	cmova	rax, rsi
.label_511:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_512
.label_510:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407170
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_514
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_519:
	cmp	qword ptr [rsi], 0
	je	.label_515
	mov	rax, rsi
	nop	dword ptr [rax]
.label_516:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_516
	inc	rdx
.label_515:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_519
.label_514:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_517
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_518
.label_517:
	xor	eax, eax
.label_518:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4071d0
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
	mov	edx, OFFSET FLAT:label_521
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_520
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_522]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_523]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_524]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_525
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_526
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
	#Procedure 0x4072c0
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
	je	.label_527
	test	rbx, rbx
	je	.label_527
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_528:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_529
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_529
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_528
	jmp	.label_527
.label_529:
	mov	r15, qword ptr [rbx]
.label_527:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407320

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
	jae	.label_530
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_530:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407350
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_531
	mov	rcx, qword ptr [rdi]
	jmp	.label_533
	nop	
.label_534:
	add	rcx, 0x10
.label_533:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_532
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_534
.label_531:
	ret	
.label_532:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407380
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
.label_539:
	cmp	qword ptr [rcx], rbx
	jne	.label_535
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_537
.label_535:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_539
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_538:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_536
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_538
	jmp	.label_536
.label_537:
	mov	rcx, qword ptr [rdx]
.label_536:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073f0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_540
	xor	eax, eax
.label_543:
	cmp	qword ptr [r8], 0
	je	.label_541
	test	r8, r8
	je	.label_541
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_542:
	cmp	rax, rdx
	jae	.label_540
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_542
.label_541:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_543
.label_540:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407440
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
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_544
	xor	ebx, ebx
.label_546:
	cmp	qword ptr [r13], 0
	je	.label_545
	test	r13, r13
	je	.label_545
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_547:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_544
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_547
.label_545:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_546
.label_544:
	mov	rax, rbx
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
	#Procedure 0x4074c0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_548
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_549:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_549
.label_548:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407500
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_550]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407520

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
	je	.label_552
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_551
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_551
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_551
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
	jmp	.label_552
.label_551:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_552:
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
	#Procedure 0x407600

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
	#Procedure 0x407620

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407630

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_553
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_554]]
	jbe	.label_555
	movss	xmm1,  dword ptr [dword ptr [rip + label_558]]
	ucomiss	xmm1, xmm0
	jbe	.label_555
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_557]]
	jbe	.label_555
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_555
	addss	xmm1,  dword ptr [dword ptr [rip + label_554]]
	ucomiss	xmm0, xmm1
	jbe	.label_555
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_556]]
	ucomiss	xmm2, xmm0
	jb	.label_555
	ucomiss	xmm0, xmm1
	ja	.label_553
.label_555:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_553:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076b0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_559
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_564
	cvtsi2ss	xmm0, rdi
	jmp	.label_560
.label_564:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_560:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_561]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_562]]
	jae	.label_563
.label_559:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_563:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407730
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_569
	nop	dword ptr [rax]
.label_568:
	add	r14, 0x10
.label_569:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_566
	cmp	qword ptr [r14], 0
	je	.label_568
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_565
	nop	word ptr cs:[rax + rax]
.label_571:
	test	cl, 1
	je	.label_567
	mov	rdi, qword ptr [rbx]
	call	rax
.label_567:
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
	jne	.label_571
.label_565:
	test	cl, cl
	je	.label_570
	mov	rdi, qword ptr [r14]
	call	rax
.label_570:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_568
.label_566:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077d0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_576
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_576
	mov	r14, qword ptr [r15]
	jmp	.label_579
	nop	dword ptr [rax + rax]
.label_572:
	add	r14, 0x10
.label_579:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_576
	cmp	qword ptr [r14], 0
	je	.label_572
	test	r14, r14
	je	.label_572
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_574:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_574
	jmp	.label_572
.label_576:
	mov	r14, qword ptr [r15]
	jmp	.label_577
	nop	word ptr [rax + rax]
.label_573:
	add	r14, 0x10
.label_577:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_580
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_573
	nop	word ptr cs:[rax + rax]
.label_575:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_575
	jmp	.label_573
.label_580:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_578
	nop	dword ptr [rax]
.label_581:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_581
.label_578:
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
	#Procedure 0x4078a0

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
	je	.label_582
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_584
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_582
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
	je	.label_583
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
	jmp	.label_584
.label_583:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_585
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_585
	mov	rdi, qword ptr [rsp]
	call	free
.label_582:
	xor	r14d, r14d
.label_584:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_585:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079d0

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
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_588
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_587:
	cmp	qword ptr [r15], 0
	je	.label_586
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_590
	nop	word ptr cs:[rax + rax]
.label_593:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_594
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_595
	nop	word ptr cs:[rax + rax]
.label_594:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_595:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_593
.label_590:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_586
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_589
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_591
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_592
.label_589:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_592:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_586:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_587
	mov	al, 1
.label_588:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_591:
	xor	eax, eax
	jmp	.label_588
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407af0

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
	je	.label_604
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_603
	test	rbx, rbx
	je	.label_598
	mov	qword ptr [rbx], rax
	jmp	.label_598
.label_603:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_608
	cvtsi2ss	xmm0, rcx
	jmp	.label_597
.label_608:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_597:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_602
	cvtsi2ss	xmm1, rax
	jmp	.label_607
.label_602:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_607:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_599
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_601
	cvtsi2ss	xmm2, rcx
	jmp	.label_605
.label_601:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_605:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_610
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_600
.label_610:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_600:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_599
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_609
	mulss	xmm0, xmm1
.label_609:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_562]]
	jae	.label_598
	movss	xmm1,  dword ptr [dword ptr [rip + label_561]]
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
	je	.label_598
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_604
.label_599:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_606
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_598
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_596
.label_606:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_596:
	mov	ebp, 1
.label_598:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_604:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cd0

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
	je	.label_614
	cmp	rsi, r13
	je	.label_612
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_615
.label_612:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_614
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_617
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_613
.label_615:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_614
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_616:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_611
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_611
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_616
	jmp	.label_614
.label_617:
	mov	qword ptr [rbx], 0
	jmp	.label_614
.label_611:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_614
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_613:
	mov	rdi, r14
	call	free_entry
.label_614:
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
	#Procedure 0x407da0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_618
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_618:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dd0

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
	je	.label_619
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_619:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e00

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
	je	.label_625
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_621
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_632
	cvtsi2ss	xmm0, rax
	jmp	.label_622
.label_632:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_622:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_628
	cvtsi2ss	xmm1, rcx
	jmp	.label_624
.label_628:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_624:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_621
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_627
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_630
.label_627:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_630:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_623
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_626
.label_623:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_626:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_621
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_620
	mulss	xmm0, dword ptr [rcx + 8]
.label_620:
	movss	xmm1,  dword ptr [dword ptr [rip + label_561]]
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
	jne	.label_621
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_629
	nop	dword ptr [rax + rax]
.label_631:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_631
.label_629:
	mov	qword ptr [r15 + 0x48], 0
.label_621:
	mov	rax, r14
.label_625:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f90

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
	jmp	.label_633
	nop	
.label_634:
	add	rbx, 2
.label_633:
	cmp	rbx, -1
	je	.label_635
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_634
	mov	r14, rbx
.label_635:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fe0

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_636
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_637:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_636
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_637
.label_636:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408030

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408050

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_32
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_638
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408080

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x408090

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_648
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_648:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_649
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_644
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_645
	test	esi, esi
	jne	.label_649
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_651
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_642
.label_649:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_641
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_645
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_647
.label_644:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_645:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_652
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_640
.label_652:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_640:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_647:
	cmp	eax, 6
	jne	.label_641
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_650
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_639
.label_641:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_643
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_646
.label_651:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_642:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_650:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_639:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_643:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_646:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408250

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
	#Procedure 0x408260

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_653
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_655
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_655
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_656
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_657
.label_655:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_657
.label_653:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_657:
	test	ebx, ebx
	js	.label_656
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_656
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_654
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_656
.label_654:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_656:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408330

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
	#Procedure 0x408350
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408360
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408370
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408380
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408390
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4083a0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4083b0
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083d0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083f0
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408410
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x4084e0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
