	.section	.text
	.align	32
	#Procedure 0x4019c0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	jmp	.label_9
.label_9:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_8
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x4c], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401c10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c40

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_14:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_13
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_13:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_11
	jmp	.label_12
.label_11:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_14
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_15
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.46
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_10
	movabs	rsi, OFFSET FLAT:.str.48
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_10
	movabs	rdi, OFFSET FLAT:.str.49
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.50
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.51
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.52
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401de0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x15], 0
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.17_0
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	qword ptr [rbp - 0x48], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.17_0
	mov	qword ptr [rbp - 0x50], rax
	call	textdomain
	mov	edi, 0x7d
	mov	qword ptr [rbp - 0x58], rax
	call	initialize_exit_failure
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rbp - 0x5c], eax
	call	initialize_signals
.label_56:
	movabs	rdx, OFFSET FLAT:shortopts
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_65
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x60], eax
	mov	dword ptr [rbp - 0x64], ecx
	je	.label_66
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x68], eax
	je	.label_73
	jmp	.label_77
.label_77:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 9
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_78
	jmp	.label_64
.label_64:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x70], eax
	je	.label_78
	jmp	.label_18
.label_18:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x74], eax
	je	.label_20
	jmp	.label_25
.label_25:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x78], eax
	je	.label_26
	jmp	.label_29
.label_29:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_31
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x80], eax
	je	.label_37
	jmp	.label_43
.label_43:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x84], eax
	je	.label_24
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x88], eax
	je	.label_52
	jmp	.label_34
.label_34:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_46
	jmp	.label_79
.label_79:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x90], eax
	je	.label_63
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x94], eax
	je	.label_69
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x98], eax
	je	.label_28
	jmp	.label_49
.label_37:
	mov	byte ptr [rbp - 0x15], 1
	jmp	.label_17
.label_24:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	append_unset_var
	jmp	.label_17
.label_52:
	mov	byte ptr [byte ptr [dev_debug]],  1
	jmp	.label_17
.label_20:
	mov	byte ptr [rbp - 0x16], 1
	jmp	.label_17
.label_46:
	mov	esi, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_signal_action_params
	xor	esi, esi
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_block_signal_params
	jmp	.label_17
.label_63:
	xor	esi, esi
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_signal_action_params
	jmp	.label_17
.label_69:
	mov	esi, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_block_signal_params
	jmp	.label_17
.label_28:
	mov	byte ptr [byte ptr [report_signal_handling]],  1
	jmp	.label_17
.label_26:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_17
.label_31:
	movabs	rsi, OFFSET FLAT:optind
	lea	rdx, [rbp - 8]
	lea	rcx, [rbp - 0x10]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_split_string
	jmp	.label_17
.label_78:
	movabs	rdi, OFFSET FLAT:.str.19
	call	gettext
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x14]
	mov	edi, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x9c], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x7d
	call	usage
.label_73:
	xor	edi, edi
	call	usage
.label_66:
	movabs	rsi, OFFSET FLAT:.str.15
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.22
	movabs	r9, OFFSET FLAT:.str.23
	movabs	rax, OFFSET FLAT:.str.24
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_49:
	mov	edi, 0x7d
	call	usage
.label_17:
	jmp	.label_56
.label_65:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_59
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.25
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_59
	mov	byte ptr [rbp - 0x15], 1
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
.label_59:
	test	byte ptr [rbp - 0x15], 1
	je	.label_75
	jmp	.label_76
.label_76:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_36
	movabs	rsi, OFFSET FLAT:.str.26
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xac], eax
.label_36:
	jmp	.label_41
.label_41:
	movabs	rax, OFFSET FLAT:main.dummy_environ
	mov	qword ptr [word ptr [__environ]],  rax
	jmp	.label_23
.label_75:
	call	unset_envvars
.label_23:
	jmp	.label_30
.label_30:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	mov	byte ptr [rbp - 0xad], cl
	jge	.label_32
	mov	esi, 0x3d
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strchr
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0xad], dl
.label_32:
	mov	al, byte ptr [rbp - 0xad]
	test	al, 1
	jne	.label_53
	jmp	.label_58
.label_53:
	jmp	.label_60
.label_60:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_61
	movabs	rsi, OFFSET FLAT:.str.27
	mov	rdi,  qword ptr [word ptr [stderr]]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + rax*8]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xb4], eax
.label_61:
	jmp	.label_74
.label_74:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	putenv
	cmp	eax, 0
	je	.label_80
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.28
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xb8], esi
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0xc0], rax
	call	quote
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_80:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_30
.label_58:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x29], cl
	test	byte ptr [rbp - 0x16], 1
	je	.label_38
	test	byte ptr [rbp - 0x29], 1
	je	.label_38
	movabs	rdi, OFFSET FLAT:.str.29
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x7d
	call	usage
.label_38:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_51
	test	byte ptr [rbp - 0x29], 1
	jne	.label_51
	movabs	rdi, OFFSET FLAT:.str.30
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x7d
	call	usage
.label_51:
	test	byte ptr [rbp - 0x29], 1
	jne	.label_82
	mov	rax,  qword ptr [word ptr [__environ]]
	mov	qword ptr [rbp - 0x38], rax
.label_39:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_19
	movabs	rdi, OFFSET FLAT:.str.31
	mov	eax, 0xa
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, rdx
	add	rsi, 8
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rdx]
	mov	r8b, byte ptr [rbp - 0x16]
	test	r8b, 1
	cmovne	eax, ecx
	mov	edx, eax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_39
.label_19:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_44
.label_82:
	call	reset_signal_handlers
	test	byte ptr [byte ptr [sig_mask_changed]],  1
	je	.label_50
	call	set_signal_proc_mask
.label_50:
	test	byte ptr [byte ptr [report_signal_handling]],  1
	je	.label_54
	call	list_signal_handling
.label_54:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_40
	jmp	.label_45
.label_45:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_62
	mov	edi, 4
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_style
	movabs	rsi, OFFSET FLAT:.str.32
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xd4], eax
.label_62:
	jmp	.label_81
.label_81:
	mov	rdi, qword ptr [rbp - 0x20]
	call	chdir
	cmp	eax, 0
	je	.label_83
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.33
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xe0], rax
	call	quotearg_style
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_83:
	jmp	.label_40
.label_40:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_42
	jmp	.label_47
.label_47:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_48
	movabs	rsi, OFFSET FLAT:.str.34
	mov	rdi,  qword ptr [word ptr [stderr]]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + rax*8]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xe4], eax
.label_48:
	jmp	.label_22
.label_22:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x3c], eax
.label_55:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_67
	jmp	.label_33
.label_33:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_70
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, rcx
	mov	dword ptr [rbp - 0xf4], eax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.35
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0xf4]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xf8], eax
.label_70:
	jmp	.label_27
.label_27:
	jmp	.label_16
.label_16:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_55
.label_67:
	jmp	.label_42
.label_42:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	shl	rax, 3
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	execvp
	mov	dword ptr [rbp - 0xfc], eax
	call	__errno_location
	mov	edx, 0x7e
	mov	r8d, 0x7f
	cmp	dword ptr [rax], 2
	cmove	edx, r8d
	mov	dword ptr [rbp - 0x40], edx
	call	__errno_location
	mov	esi, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	dword ptr [rbp - 0x100], esi
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	al, 0
	call	error
	cmp	dword ptr [rbp - 0x40], 0x7f
	jne	.label_72
	mov	esi, 0x20
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strchr
	cmp	rax, 0
	je	.label_72
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_72:
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 4], eax
.label_44:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402730

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_84
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_84:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402750

	.globl initialize_signals
	.type initialize_signals, @function
initialize_signals:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x104
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [word ptr [signals]],  rax
	mov	dword ptr [rbp - 4], 0
.label_86:
	cmp	dword ptr [rbp - 4], 0x40
	jg	.label_85
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	mov	dword ptr [rcx + rax*4], 0
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_86
.label_85:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027b0

	.globl append_unset_var
	.type append_unset_var, @function
append_unset_var:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [usvars_used]]
	cmp	rdi,  qword ptr [word ptr [usvars_alloc]]
	jne	.label_87
	movabs	rsi, OFFSET FLAT:usvars_alloc
	mov	eax, 8
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [usvars]],  rax
.label_87:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [usvars_used]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [usvars_used]],  rdx
	mov	rdx,  qword ptr [word ptr [usvars]]
	mov	qword ptr [rdx + rcx*8], rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402830

	.globl parse_signal_action_params
	.type parse_signal_action_params, @function
parse_signal_action_params:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	cmp	qword ptr [rbp - 8], 0
	jne	.label_96
	mov	dword ptr [rbp - 0x34], 1
.label_91:
	cmp	dword ptr [rbp - 0x34], 0x40
	jg	.label_89
	lea	rsi, [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x34]
	call	sig2str
	cmp	eax, 0
	jne	.label_95
	mov	eax, 4
	mov	ecx, 2
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	eax, ecx
	movsxd	rsi, dword ptr [rbp - 0x34]
	mov	rdi,  qword ptr [word ptr [signals]]
	mov	dword ptr [rdi + rsi*4], eax
.label_95:
	jmp	.label_90
.label_90:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_91
.label_89:
	jmp	.label_93
.label_96:
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	movabs	rsi, OFFSET FLAT:.str.65
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
.label_97:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_88
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	call	operand2sig
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	jne	.label_94
	movabs	rdi, OFFSET FLAT:.str.1_0
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_94:
	cmp	dword ptr [rbp - 0x38], 0
	jg	.label_92
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	usage
.label_92:
	xor	eax, eax
	mov	edi, eax
	movabs	rsi, OFFSET FLAT:.str.65
	mov	eax, 3
	mov	ecx, 1
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	eax, ecx
	movsxd	r8, dword ptr [rbp - 0x38]
	mov	r9,  qword ptr [word ptr [signals]]
	mov	dword ptr [r9 + r8*4], eax
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_97
.label_88:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_93:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402990

	.globl parse_block_signal_params
	.type parse_block_signal_params, @function
parse_block_signal_params:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	cmp	qword ptr [rbp - 8], 0
	jne	.label_103
	movabs	rax, OFFSET FLAT:unblock_signals
	movabs	rcx, OFFSET FLAT:block_signals
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	rax, rcx
	mov	rdi, rax
	call	sigfillset
	movabs	rcx, OFFSET FLAT:block_signals
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	rcx, rdi
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x38], eax
	call	sigemptyset
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_104
.label_103:
	test	byte ptr [byte ptr [sig_mask_changed]],  1
	jne	.label_98
	movabs	rdi, OFFSET FLAT:block_signals
	call	sigemptyset
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	dword ptr [rbp - 0x40], eax
	call	sigemptyset
	mov	dword ptr [rbp - 0x44], eax
.label_98:
	jmp	.label_104
.label_104:
	mov	byte ptr [byte ptr [sig_mask_changed]],  1
	cmp	qword ptr [rbp - 8], 0
	jne	.label_106
	jmp	.label_101
.label_106:
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	movabs	rsi, OFFSET FLAT:.str.65
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
.label_100:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_105
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	call	operand2sig
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_102
	movabs	rdi, OFFSET FLAT:.str.1_0
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_102:
	cmp	dword ptr [rbp - 0x34], 0
	jg	.label_99
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	usage
.label_99:
	movabs	rax, OFFSET FLAT:unblock_signals
	movabs	rcx, OFFSET FLAT:block_signals
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	rax, rcx
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdi, rax
	call	sigaddset
	movabs	rcx, OFFSET FLAT:block_signals
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	rcx, rdi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x54], eax
	call	sigdelset
	xor	esi, esi
	mov	edi, esi
	movabs	rsi, OFFSET FLAT:.str.65
	mov	dword ptr [rbp - 0x58], eax
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_100
.label_105:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_101:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b70

	.globl parse_split_string
	.type parse_split_string, @function
parse_split_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
.label_126:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x40], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x40]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_121
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_126
.label_121:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_109
	jmp	.label_118
.label_109:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax]
	mov	esi, ecx
	call	build_argv
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_107
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_107
	jmp	.label_124
.label_124:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_125
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.67
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_125:
	jmp	.label_129
.label_129:
	jmp	.label_127
.label_127:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_113
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 8
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.68
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x5c], eax
.label_113:
	jmp	.label_117
.label_117:
	jmp	.label_115
.label_115:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_119
	jmp	.label_122
.label_122:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_123
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 8
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.69
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
.label_123:
	jmp	.label_120
.label_120:
	jmp	.label_115
.label_119:
	jmp	.label_108
.label_107:
	jmp	.label_111
.label_111:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_114
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_111
.label_114:
	jmp	.label_108
.label_108:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_112:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rcx]
	jge	.label_128
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rcx], rax
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_112
.label_128:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_110:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_116
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_110
.label_116:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx], 0
.label_118:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e20

	.globl unset_envvars
	.type unset_envvars, @function
unset_envvars:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], 0
.label_135:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [usvars_used]]
	jae	.label_134
	jmp	.label_131
.label_131:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_132
	movabs	rsi, OFFSET FLAT:.str.84
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rdx, qword ptr [rcx + rax*8]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xc], eax
.label_132:
	jmp	.label_130
.label_130:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	unsetenv
	cmp	eax, 0
	je	.label_136
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.85
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_136:
	jmp	.label_133
.label_133:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_135
.label_134:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f10

	.globl reset_signal_handlers
	.type reset_signal_handlers, @function
reset_signal_handlers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	dword ptr [rbp - 4], 1
.label_141:
	cmp	dword ptr [rbp - 4], 0x40
	jg	.label_143
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rcx + rax*4], 0
	jne	.label_146
	jmp	.label_137
.label_146:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	mov	rdx,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rdx + rcx*4], 2
	mov	byte ptr [rbp - 0xc1], al
	je	.label_138
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rcx + rax*4], 4
	sete	dl
	mov	byte ptr [rbp - 0xc1], dl
.label_138:
	mov	al, byte ptr [rbp - 0xc1]
	mov	cl, 1
	and	al, 1
	mov	byte ptr [rbp - 0xa1], al
	movsxd	rdx, dword ptr [rbp - 4]
	mov	rsi,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rsi + rdx*4], 1
	mov	byte ptr [rbp - 0xc2], cl
	je	.label_148
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rcx + rax*4], 2
	sete	dl
	mov	byte ptr [rbp - 0xc2], dl
.label_148:
	mov	al, byte ptr [rbp - 0xc2]
	xor	ecx, ecx
	mov	esi, ecx
	lea	rdx, [rbp - 0xa0]
	and	al, 1
	mov	byte ptr [rbp - 0xa2], al
	mov	edi, dword ptr [rbp - 4]
	call	sigaction
	mov	dword ptr [rbp - 0xa8], eax
	cmp	dword ptr [rbp - 0xa8], 0
	je	.label_144
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_144
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.86
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	mov	edi, 0x7d
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_144:
	cmp	dword ptr [rbp - 0xa8], 0
	jne	.label_139
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 1
	mov	edx, eax
	mov	dil, byte ptr [rbp - 0xa2]
	test	dil, 1
	cmovne	rdx, rcx
	mov	qword ptr [rbp - 0xa0], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rdx, rcx
	call	sigaction
	mov	dword ptr [rbp - 0xa8], eax
	cmp	eax, 0
	je	.label_145
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_145
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.87
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], esi
	call	gettext
	mov	edi, 0x7d
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0xcc]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_145:
	jmp	.label_139
.label_139:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_140
	lea	rsi, [rbp - 0xc0]
	mov	edi, dword ptr [rbp - 4]
	call	sig2str
	mov	dword ptr [rbp - 0xd0], eax
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_147
	movabs	rsi, OFFSET FLAT:.str.88
	movabs	rax, OFFSET FLAT:.str_0
	movabs	rcx, OFFSET FLAT:.str.91
	movabs	rdx, OFFSET FLAT:.str.90
	movabs	rdi, OFFSET FLAT:.str.89
	lea	r8, [rbp - 0xc0]
	mov	r9,  qword ptr [word ptr [stderr]]
	mov	r10d, dword ptr [rbp - 4]
	mov	r11b, byte ptr [rbp - 0xa2]
	test	r11b, 1
	cmovne	rdx, rdi
	cmp	dword ptr [rbp - 0xa8], 0
	cmovne	rax, rcx
	mov	rdi, r9
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rdx, r8
	mov	ecx, r10d
	mov	r8, qword ptr [rbp - 0xd8]
	mov	r9, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
.label_147:
	jmp	.label_142
.label_142:
	jmp	.label_140
.label_140:
	jmp	.label_137
.label_137:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_141
.label_143:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031b0

	.globl set_signal_proc_mask
	.type set_signal_proc_mask, @function
set_signal_proc_mask:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdi, [rbp - 0x80]
	call	sigemptyset
	xor	edi, edi
	xor	ecx, ecx
	mov	esi, ecx
	lea	rdx, [rbp - 0x80]
	mov	dword ptr [rbp - 0xa4], eax
	call	sigprocmask
	cmp	eax, 0
	je	.label_154
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.92
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xa8], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xa8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_154:
	mov	dword ptr [rbp - 0x8c], 1
.label_153:
	cmp	dword ptr [rbp - 0x8c], 0x40
	jg	.label_155
	movabs	rdi, OFFSET FLAT:block_signals
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigismember
	cmp	eax, 0
	je	.label_160
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigaddset
	movabs	rdi, OFFSET FLAT:.str.93
	mov	qword ptr [rbp - 0x88], rdi
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_151
.label_160:
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigismember
	cmp	eax, 0
	je	.label_157
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigdelset
	movabs	rdi, OFFSET FLAT:.str.94
	mov	qword ptr [rbp - 0x88], rdi
	mov	dword ptr [rbp - 0xb0], eax
	jmp	.label_156
.label_157:
	mov	qword ptr [rbp - 0x88], 0
.label_156:
	jmp	.label_151
.label_151:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_150
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_150
	lea	rsi, [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	call	sig2str
	mov	dword ptr [rbp - 0xb4], eax
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_159
	movabs	rsi, OFFSET FLAT:.str.95
	lea	rdx, [rbp - 0xa0]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	r8, qword ptr [rbp - 0x88]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xb8], eax
.label_159:
	jmp	.label_149
.label_149:
	jmp	.label_150
.label_150:
	jmp	.label_152
.label_152:
	mov	eax, dword ptr [rbp - 0x8c]
	add	eax, 1
	mov	dword ptr [rbp - 0x8c], eax
	jmp	.label_153
.label_155:
	mov	edi, 2
	lea	rsi, [rbp - 0x80]
	xor	eax, eax
	mov	edx, eax
	call	sigprocmask
	cmp	eax, 0
	je	.label_158
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.96
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xbc], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_158:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033c0

	.globl list_signal_handling
	.type list_signal_handling, @function
list_signal_handling:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	lea	rdi, [rbp - 0x80]
	call	sigemptyset
	xor	edi, edi
	xor	ecx, ecx
	mov	esi, ecx
	lea	rdx, [rbp - 0x80]
	mov	dword ptr [rbp - 0x15c], eax
	call	sigprocmask
	cmp	eax, 0
	je	.label_166
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.92
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x160], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0x160]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_166:
	mov	dword ptr [rbp - 0xa4], 1
.label_163:
	cmp	dword ptr [rbp - 0xa4], 0x40
	jg	.label_167
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0x140]
	mov	edi, dword ptr [rbp - 0xa4]
	call	sigaction
	cmp	eax, 0
	je	.label_161
	jmp	.label_162
.label_161:
	lea	rdi, [rbp - 0x80]
	mov	eax, 1
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.90
	cmp	qword ptr [rbp - 0x140], rcx
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x148], rdx
	mov	esi, dword ptr [rbp - 0xa4]
	call	sigismember
	xor	esi, esi
	mov	r8b, sil
	movabs	rcx, OFFSET FLAT:.str_0
	movabs	rdx, OFFSET FLAT:.str.93
	cmp	eax, 0
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x150], rcx
	mov	rcx, qword ptr [rbp - 0x148]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x161], r8b
	je	.label_164
	mov	rax, qword ptr [rbp - 0x150]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x161], dl
.label_164:
	mov	al, byte ptr [rbp - 0x161]
	movabs	rcx, OFFSET FLAT:.str_0
	movabs	rdx, OFFSET FLAT:.str.65
	test	al, 1
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x148]
	cmp	byte ptr [rcx], 0
	jne	.label_165
	mov	rax, qword ptr [rbp - 0x150]
	cmp	byte ptr [rax], 0
	jne	.label_165
	jmp	.label_162
.label_165:
	lea	rsi, [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0xa4]
	call	sig2str
	movabs	rsi, OFFSET FLAT:.str.97
	lea	rdx, [rbp - 0xa0]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	ecx, dword ptr [rbp - 0xa4]
	mov	r8, qword ptr [rbp - 0x150]
	mov	r9, qword ptr [rbp - 0x158]
	mov	r10, qword ptr [rbp - 0x148]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rbp - 0x168], eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x16c], eax
.label_162:
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_163
.label_167:
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035c0

	.globl build_argv
	.type build_argv, @function
build_argv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	byte ptr [rbp - 0xd], 0
	mov	byte ptr [rbp - 0xe], 0
	mov	byte ptr [rbp - 0xf], 1
	mov	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x38], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_175
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_175
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x58], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x58]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	jne	.label_175
	jmp	.label_182
.label_175:
	movabs	rdi, OFFSET FLAT:.str.70
	movabs	rsi, OFFSET FLAT:.str.71
	mov	edx, 0x18b
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.build_argv
	call	__assert_fail
.label_182:
	lea	rsi, [rbp - 0x38]
	lea	rdx, [rbp - 0x2c]
	mov	rdi, qword ptr [rbp - 8]
	call	validate_split_str
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 6
	add	rdx, 1
	mov	rdi, rdx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0x2c]
	add	ecx, dword ptr [rbp - 0xc]
	add	ecx, 2
	movsxd	rax, ecx
	shl	rax, 3
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:.str.72
	mov	esi, ecx
	call	strcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rsi
	add	rdi, 8
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 6
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x60], rax
.label_180:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_214
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x39], cl
	mov	rax, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rax]
	mov	esi, edx
	sub	esi, 9
	mov	dword ptr [rbp - 0x64], edx
	mov	dword ptr [rbp - 0x68], esi
	je	.label_201
	jmp	.label_171
.label_171:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_201
	jmp	.label_177
.label_177:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x22
	mov	dword ptr [rbp - 0x70], eax
	je	.label_179
	jmp	.label_183
.label_183:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x23
	mov	dword ptr [rbp - 0x74], eax
	je	.label_185
	jmp	.label_189
.label_189:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x24
	mov	dword ptr [rbp - 0x78], eax
	je	.label_191
	jmp	.label_193
.label_193:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x27
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_195
	jmp	.label_198
.label_198:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x80], eax
	je	.label_200
	jmp	.label_181
.label_195:
	test	byte ptr [rbp - 0xd], 1
	je	.label_202
	jmp	.label_181
.label_202:
	mov	al, byte ptr [rbp - 0xe]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0xe], al
	test	byte ptr [rbp - 0xf], 1
	je	.label_207
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0xf], 0
.label_207:
	jmp	.label_213
.label_213:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_180
.label_179:
	test	byte ptr [rbp - 0xe], 1
	je	.label_217
	jmp	.label_181
.label_217:
	mov	al, byte ptr [rbp - 0xd]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	test	byte ptr [rbp - 0xf], 1
	je	.label_168
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0xf], 0
.label_168:
	jmp	.label_187
.label_187:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_180
.label_201:
	test	byte ptr [rbp - 0xe], 1
	jne	.label_192
	test	byte ptr [rbp - 0xd], 1
	je	.label_194
.label_192:
	jmp	.label_181
.label_194:
	movabs	rsi, OFFSET FLAT:.str.73
	mov	byte ptr [rbp - 0xf], 1
	mov	rdi, qword ptr [rbp - 8]
	call	strspn
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_180
.label_185:
	test	byte ptr [rbp - 0xf], 1
	jne	.label_205
	jmp	.label_181
.label_205:
	jmp	.label_190
.label_200:
	test	byte ptr [rbp - 0xe], 1
	je	.label_209
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x5c
	je	.label_209
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x27
	je	.label_209
	jmp	.label_181
.label_209:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x39], dl
	movsx	esi, byte ptr [rbp - 0x39]
	cmp	esi, 0x5c
	je	.label_176
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x27
	je	.label_176
	test	byte ptr [rbp - 0xe], 1
	jne	.label_169
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x23
	je	.label_176
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x24
	je	.label_176
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x22
	jne	.label_169
.label_176:
	jmp	.label_184
.label_169:
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x5f
	jne	.label_186
	test	byte ptr [rbp - 0xd], 1
	jne	.label_188
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0xf], 1
	jmp	.label_180
.label_188:
	mov	byte ptr [rbp - 0x39], 0x20
	jmp	.label_196
.label_186:
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x63
	jne	.label_197
	jmp	.label_190
.label_197:
	movsx	edi, byte ptr [rbp - 0x39]
	call	escape_char
	mov	byte ptr [rbp - 0x39], al
	jmp	.label_196
.label_196:
	jmp	.label_184
.label_184:
	jmp	.label_181
.label_191:
	test	byte ptr [rbp - 0xe], 1
	je	.label_208
	jmp	.label_181
.label_208:
	mov	rdi, qword ptr [rbp - 8]
	call	extract_varname
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	getenv
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_210
	jmp	.label_212
.label_212:
	test	byte ptr [rbp - 0xf], 1
	je	.label_172
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0xf], 0
.label_172:
	jmp	.label_170
.label_170:
	jmp	.label_173
.label_173:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_174
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x90], rdx
	call	quote
	movabs	rsi, OFFSET FLAT:.str.74
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
.label_174:
	jmp	.label_199
.label_199:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x50]
	call	stpcpy
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_203
.label_210:
	jmp	.label_204
.label_204:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_206
	movabs	rsi, OFFSET FLAT:.str.75
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x98], eax
.label_206:
	jmp	.label_211
.label_211:
	jmp	.label_203
.label_203:
	mov	esi, 0x7d
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_180
.label_181:
	jmp	.label_215
.label_215:
	test	byte ptr [rbp - 0xf], 1
	je	.label_216
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	byte ptr [rbp - 0xf], 0
.label_216:
	jmp	.label_178
.label_178:
	mov	al, byte ptr [rbp - 0x39]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_180
.label_214:
	jmp	.label_190
.label_190:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b80

	.globl validate_split_str
	.type validate_split_str, @function
validate_split_str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x34], 1
	cmp	qword ptr [rbp - 8], 0
	je	.label_218
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_218
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x40], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x40]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	jne	.label_218
	jmp	.label_243
.label_218:
	movabs	rdi, OFFSET FLAT:.str.70
	movabs	rsi, OFFSET FLAT:.str.71
	mov	edx, 0x118
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	call	__assert_fail
.label_243:
	mov	byte ptr [rbp - 0x1b], 0
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [rbp - 0x19], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_219:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_233
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x35], cl
	mov	rax, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rax]
	movsxd	rax, edx
	mov	qword ptr [rbp - 0x48], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x48]
	movzx	edx, word ptr [rax + rsi*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_241
	test	byte ptr [rbp - 0x19], 1
	jne	.label_241
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_241
	mov	byte ptr [rbp - 0x1b], 1
	jmp	.label_220
.label_241:
	test	byte ptr [rbp - 0x1b], 1
	je	.label_223
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_223:
	mov	byte ptr [rbp - 0x1b], 0
.label_220:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x22
	mov	dword ptr [rbp - 0x4c], ecx
	mov	dword ptr [rbp - 0x50], edx
	je	.label_231
	jmp	.label_224
.label_224:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 0x24
	mov	dword ptr [rbp - 0x54], eax
	je	.label_237
	jmp	.label_239
.label_239:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 0x27
	mov	dword ptr [rbp - 0x58], eax
	je	.label_240
	jmp	.label_242
.label_242:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_246
	jmp	.label_228
.label_240:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_249
	test	byte ptr [rbp - 0x19], 1
	jne	.label_221
.label_249:
	jmp	.label_225
.label_221:
	movabs	rdi, OFFSET FLAT:.str.76
	movabs	rsi, OFFSET FLAT:.str.71
	mov	edx, 0x12f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	call	__assert_fail
.label_225:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x1a], 1
	mov	byte ptr [rbp - 0x5d], cl
	jne	.label_232
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x5d], al
.label_232:
	mov	al, byte ptr [rbp - 0x5d]
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	jmp	.label_228
.label_231:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_244
	test	byte ptr [rbp - 0x19], 1
	jne	.label_247
.label_244:
	jmp	.label_248
.label_247:
	movabs	rdi, OFFSET FLAT:.str.76
	movabs	rsi, OFFSET FLAT:.str.71
	mov	edx, 0x134
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.validate_split_str
	call	__assert_fail
.label_248:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x1a], 1
	mov	byte ptr [rbp - 0x5e], cl
	jne	.label_245
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x5e], al
.label_245:
	mov	al, byte ptr [rbp - 0x5e]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_228
.label_246:
	test	byte ptr [rbp - 0x19], 1
	je	.label_234
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0x63
	jne	.label_234
	movabs	rdi, OFFSET FLAT:.str.77
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_234:
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0
	jne	.label_226
	movabs	rdi, OFFSET FLAT:.str.78
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_226:
	movsx	edi, byte ptr [rbp - 0x35]
	call	valid_escape_sequence
	test	al, 1
	jne	.label_235
	movabs	rdi, OFFSET FLAT:.str.79
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	movsx	ecx, byte ptr [rbp - 0x35]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_235:
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0x5f
	jne	.label_238
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_238:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_228
.label_237:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_222
	jmp	.label_228
.label_222:
	mov	rdi, qword ptr [rbp - 8]
	call	extract_varname
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_230
	movabs	rdi, OFFSET FLAT:.str.80
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_230:
	mov	rdi, qword ptr [rbp - 0x28]
	call	getenv
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_236
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
.label_236:
	jmp	.label_228
.label_228:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_219
.label_233:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_227
	test	byte ptr [rbp - 0x1a], 1
	je	.label_229
.label_227:
	movabs	rdi, OFFSET FLAT:.str.81
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_229:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rcx
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f70

	.globl escape_char
	.type escape_char, @function
escape_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 2], al
	movsx	edi, byte ptr [rbp - 2]
	mov	ecx, edi
	sub	ecx, 0x66
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0xc], ecx
	je	.label_255
	jmp	.label_256
.label_256:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x10], eax
	je	.label_258
	jmp	.label_252
.label_252:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x14], eax
	je	.label_253
	jmp	.label_259
.label_259:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x18], eax
	je	.label_250
	jmp	.label_254
.label_254:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_257
	jmp	.label_260
.label_255:
	mov	byte ptr [rbp - 1], 0xc
	jmp	.label_251
.label_258:
	mov	byte ptr [rbp - 1], 0xa
	jmp	.label_251
.label_253:
	mov	byte ptr [rbp - 1], 0xd
	jmp	.label_251
.label_250:
	mov	byte ptr [rbp - 1], 9
	jmp	.label_251
.label_257:
	mov	byte ptr [rbp - 1], 0xb
	jmp	.label_251
.label_260:
	movabs	rdi, OFFSET FLAT:.str.82
	movabs	rsi, OFFSET FLAT:.str.71
	mov	edx, 0xd2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.escape_char
	call	__assert_fail
.label_251:
	movsx	eax, byte ptr [rbp - 1]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404050

	.globl extract_varname
	.type extract_varname, @function
extract_varname:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	scan_varname
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_263
	mov	qword ptr [rbp - 8], 0
	jmp	.label_262
.label_263:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	sub	rax, 2
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [vnlen]]
	jb	.label_261
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [word ptr [vnlen]],  rax
	mov	rdi,  qword ptr [word ptr [varname]]
	mov	rsi,  qword ptr [word ptr [vnlen]]
	call	xrealloc
	mov	qword ptr [word ptr [varname]],  rax
.label_261:
	mov	rdi,  qword ptr [word ptr [varname]]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx,  qword ptr [word ptr [varname]]
	mov	byte ptr [rdx + rax], 0
	mov	rax,  qword ptr [word ptr [varname]]
	mov	qword ptr [rbp - 8], rax
.label_262:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404120

	.globl valid_escape_sequence
	.type valid_escape_sequence, @function
valid_escape_sequence:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	cl, 1
	mov	byte ptr [rbp - 1], al
	movsx	edi, byte ptr [rbp - 1]
	cmp	edi, 0x63
	mov	byte ptr [rbp - 2], cl
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x66
	mov	byte ptr [rbp - 2], al
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x6e
	mov	byte ptr [rbp - 2], al
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x72
	mov	byte ptr [rbp - 2], al
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x74
	mov	byte ptr [rbp - 2], al
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x76
	mov	byte ptr [rbp - 2], al
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x23
	mov	byte ptr [rbp - 2], al
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x24
	mov	byte ptr [rbp - 2], al
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x5f
	mov	byte ptr [rbp - 2], al
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x22
	mov	byte ptr [rbp - 2], al
	je	.label_264
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x27
	mov	byte ptr [rbp - 2], al
	je	.label_264
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 0x5c
	sete	cl
	mov	byte ptr [rbp - 2], cl
.label_264:
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404210

	.globl scan_varname
	.type scan_varname, @function
scan_varname:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_269
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x24
	jne	.label_269
	jmp	.label_272
.label_269:
	movabs	rdi, OFFSET FLAT:.str.83
	movabs	rsi, OFFSET FLAT:.str.71
	mov	edx, 0xdd
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.scan_varname
	call	__assert_fail
.label_272:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x7b
	jne	.label_267
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax + 2]
	call	c_isalpha
	test	al, 1
	jne	.label_266
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x5f
	jne	.label_267
.label_266:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 3
	mov	qword ptr [rbp - 0x18], rax
.label_274:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	c_isalnum
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_273
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5f
	sete	dl
	mov	byte ptr [rbp - 0x19], dl
.label_273:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_265
	jmp	.label_268
.label_265:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_274
.label_268:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x7d
	jne	.label_270
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_271
.label_270:
	jmp	.label_267
.label_267:
	mov	qword ptr [rbp - 8], 0
.label_271:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404330

	.globl operand2sig
	.type operand2sig, @function
operand2sig:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rsi]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_282
	call	__errno_location
	lea	rsi, [rbp - 0x28]
	mov	edx, 0xa
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, eax
	mov	dword ptr [rbp - 0x34], edx
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_278
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_278
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_278
	movsxd	rax, dword ptr [rbp - 0x34]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_284
.label_278:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_288
.label_284:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], eax
.label_288:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_277
	mov	eax, 0x7f
	mov	ecx, 0xff
	cmp	dword ptr [rbp - 0x1c], 0xff
	cmovge	eax, ecx
	and	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], eax
.label_277:
	jmp	.label_287
.label_282:
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_281:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	byte ptr [rax], 0
	je	.label_279
	movabs	rdi, OFFSET FLAT:.str_2
	mov	rax, qword ptr [rbp - 0x48]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_286
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	dl, cl
	mov	byte ptr [rax], dl
.label_286:
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_281
.label_279:
	lea	rsi, [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x40]
	call	str2sig
	cmp	eax, 0
	je	.label_283
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x53
	jne	.label_275
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x49
	jne	.label_275
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x47
	jne	.label_275
	lea	rsi, [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 3
	mov	rdi, rax
	call	str2sig
	cmp	eax, 0
	je	.label_283
.label_275:
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_283:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_287:
	cmp	dword ptr [rbp - 0x1c], 0
	jl	.label_280
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	call	sig2str
	cmp	eax, 0
	je	.label_285
.label_280:
	movabs	rdi, OFFSET FLAT:.str.1_0
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_289
.label_285:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_289:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404540

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_290
	jmp	.label_293
.label_293:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_290
	jmp	.label_291
.label_291:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_292
	jmp	.label_290
.label_290:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_294
.label_292:
	mov	byte ptr [rbp - 1], 0
.label_294:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045b0

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_295
	jmp	.label_298
.label_298:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_296
	jmp	.label_295
.label_295:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_297
.label_296:
	mov	byte ptr [rbp - 1], 0
.label_297:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404600
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_299
	jmp	.label_300
.label_300:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_301
.label_299:
	mov	byte ptr [rbp - 1], 0
.label_301:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404630
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_302
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_302:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404660
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_303
	jmp	.label_305
.label_305:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_306
	jmp	.label_303
.label_303:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_304
.label_306:
	mov	byte ptr [rbp - 1], 0
.label_304:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046b0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_307
	jmp	.label_309
.label_309:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_308
.label_307:
	mov	byte ptr [rbp - 1], 0
.label_308:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046f0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_310
	jmp	.label_312
.label_312:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_311
.label_310:
	mov	byte ptr [rbp - 1], 0
.label_311:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404730
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_313
	jmp	.label_315
.label_315:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_314
.label_313:
	mov	byte ptr [rbp - 1], 0
.label_314:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404770
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_316
	jmp	.label_318
.label_318:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_317
.label_316:
	mov	byte ptr [rbp - 1], 0
.label_317:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047b0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x21
	sub	eax, 0xf
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_319
	jmp	.label_322
.label_322:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_319
	jmp	.label_323
.label_323:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_319
	jmp	.label_321
.label_321:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_324
	jmp	.label_319
.label_319:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_320
.label_324:
	mov	byte ptr [rbp - 1], 0
.label_320:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404830
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_325
	jmp	.label_328
.label_328:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_327
	jmp	.label_325
.label_325:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_326
.label_327:
	mov	byte ptr [rbp - 1], 0
.label_326:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404880
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_329
	jmp	.label_331
.label_331:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_330
.label_329:
	mov	byte ptr [rbp - 1], 0
.label_330:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048c0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_332
	jmp	.label_335
.label_335:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_332
	jmp	.label_333
.label_333:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_334
	jmp	.label_332
.label_332:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_336
.label_334:
	mov	byte ptr [rbp - 1], 0
.label_336:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404930

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_337
	jmp	.label_339
.label_339:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_338
.label_337:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_338:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404970
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_340
	jmp	.label_342
.label_342:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_341
.label_340:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_341:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_344
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_346
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_344
.label_346:
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_347
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_1
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_343
.label_347:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_343:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_344:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_345
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_345:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ae0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_348
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_348:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_349
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_351
.label_349:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_351:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_350
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_350
	movabs	rsi, OFFSET FLAT:.str.2_0
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_352
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_352:
	jmp	.label_350
.label_350:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c00
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_353
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_354
.label_353:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_354
.label_354:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c80
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_355
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_356
.label_355:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_356
.label_356:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cc0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_357
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_358
.label_357:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_358
.label_358:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d10

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_359
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_360
.label_359:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_360
.label_360:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404dc0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_361
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_361:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e00

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_362
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_362:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_364
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_363
.label_364:
	call	abort
.label_363:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e70
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_365
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_366
.label_365:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f40

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_459:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_560
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_552]]
	jmp	rcx
.label_745:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_744:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_372
	jmp	.label_374
.label_374:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_375
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_375:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_372
.label_372:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_387
.label_746:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_387
.label_747:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_514
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_514:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_410
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_430:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_414
	jmp	.label_418
.label_418:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_420
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_420:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_425
.label_425:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_430
.label_414:
	jmp	.label_410
.label_410:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_387
.label_742:
	mov	byte ptr [rbp - 0x79], 1
.label_741:
	mov	byte ptr [rbp - 0x7b], 1
.label_743:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_443
	mov	byte ptr [rbp - 0x79], 1
.label_443:
	jmp	.label_445
.label_445:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_446
	jmp	.label_449
.label_449:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_451
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_451:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_446
.label_446:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_387
.label_740:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_387
.label_560:
	call	abort
.label_387:
	mov	qword ptr [rbp - 0x58], 0
.label_427:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_465
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_468
.label_465:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_468:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_480
	jmp	.label_486
.label_480:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_487
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_487
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_487
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_497
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_497
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_536
.label_497:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_536:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_487
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_487
	test	byte ptr [rbp - 0x7b], 1
	je	.label_517
	jmp	.label_378
.label_517:
	mov	byte ptr [rbp - 0x81], 1
.label_487:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_521
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_526]]
	jmp	rcx
.label_726:
	test	byte ptr [rbp - 0x79], 1
	je	.label_527
	jmp	.label_530
.label_530:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_532
	jmp	.label_378
.label_532:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_395
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_395
	jmp	.label_540
.label_540:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_541
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_541:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_546
.label_546:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_549
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_549:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_554
.label_554:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_559
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_559:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_395:
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_567
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_567:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_397
.label_397:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_377
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_377
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_377
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_377
	jmp	.label_396
.label_396:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_398
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_398:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_404
.label_404:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_407
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_407:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_377
.label_377:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_419
.label_527:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_422
	jmp	.label_424
.label_422:
	jmp	.label_419
.label_419:
	jmp	.label_367
.label_737:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_426
	jmp	.label_433
.label_433:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_435
	jmp	.label_519
.label_426:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_438
	jmp	.label_378
.label_438:
	jmp	.label_442
.label_435:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_450
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_450
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_450
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_380
	jmp	.label_457
.label_457:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_380
	jmp	.label_462
.label_462:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_380
	jmp	.label_469
.label_469:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_380
	jmp	.label_473
.label_473:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_474
	jmp	.label_380
.label_380:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_482
	jmp	.label_378
.label_482:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_485
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_485:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_495
.label_495:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_499
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_499:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_503
.label_503:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_508
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_508:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_388
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_388:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_516
.label_474:
	jmp	.label_516
.label_516:
	jmp	.label_450
.label_450:
	jmp	.label_442
.label_519:
	jmp	.label_442
.label_442:
	jmp	.label_367
.label_727:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_523
.label_728:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_523
.label_732:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_523
.label_730:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_436
.label_733:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_436
.label_729:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_436
.label_731:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_523
.label_738:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_529
	test	byte ptr [rbp - 0x7b], 1
	je	.label_535
	jmp	.label_378
.label_535:
	jmp	.label_382
.label_529:
	test	byte ptr [rbp - 0x79], 1
	je	.label_538
	test	byte ptr [rbp - 0x7b], 1
	je	.label_538
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_538
	jmp	.label_382
.label_538:
	jmp	.label_436
.label_436:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_545
	test	byte ptr [rbp - 0x7b], 1
	je	.label_545
	jmp	.label_378
.label_545:
	jmp	.label_523
.label_523:
	test	byte ptr [rbp - 0x79], 1
	je	.label_550
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_534
.label_550:
	jmp	.label_367
.label_739:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_556
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_533
	jmp	.label_562
.label_556:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_533
.label_562:
	jmp	.label_367
.label_533:
	jmp	.label_564
.label_564:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_566
	jmp	.label_367
.label_566:
	jmp	.label_369
.label_369:
	mov	byte ptr [rbp - 0x83], 1
.label_734:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_373
	test	byte ptr [rbp - 0x7b], 1
	je	.label_373
	jmp	.label_378
.label_373:
	jmp	.label_367
.label_736:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_379
	test	byte ptr [rbp - 0x7b], 1
	je	.label_386
	jmp	.label_378
.label_386:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_392
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_392
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_392:
	jmp	.label_400
.label_400:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_522
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_522:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_406
.label_406:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_409
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_409:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_417
.label_417:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_423
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_423:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_379:
	jmp	.label_367
.label_735:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_367
.label_521:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_434
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_441
.label_434:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_453
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_453:
	jmp	.label_458
.label_458:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_471
	jmp	.label_477
.label_471:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_479
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_477
.label_479:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_484
	mov	byte ptr [rbp - 0x91], 0
.label_504:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_488
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_488:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_501
	jmp	.label_502
.label_501:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_504
.label_502:
	jmp	.label_477
.label_484:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_510
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_510
	mov	qword ptr [rbp - 0xb8], 1
.label_539:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_513
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_460
	jmp	.label_525
.label_525:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_460
	jmp	.label_515
.label_515:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_460
	jmp	.label_528
.label_528:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_385
	jmp	.label_460
.label_460:
	jmp	.label_378
.label_385:
	jmp	.label_383
.label_383:
	jmp	.label_391
.label_391:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_539
.label_513:
	jmp	.label_510
.label_510:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_547
	mov	byte ptr [rbp - 0x91], 0
.label_547:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_463
.label_463:
	jmp	.label_496
.label_496:
	jmp	.label_555
.label_555:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_458
.label_477:
	jmp	.label_441
.label_441:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_563
	test	byte ptr [rbp - 0x79], 1
	je	.label_371
	test	byte ptr [rbp - 0x91], 1
	jne	.label_371
.label_563:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_531:
	test	byte ptr [rbp - 0x79], 1
	je	.label_381
	test	byte ptr [rbp - 0x91], 1
	jne	.label_381
	jmp	.label_542
.label_542:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_389
	jmp	.label_378
.label_389:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_394
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_394
	jmp	.label_399
.label_399:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_401
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_401:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_405
.label_405:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_408
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_408:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_416
.label_416:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_421
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_421:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_394:
	jmp	.label_429
.label_429:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_431
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_431:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_437
.label_437:
	jmp	.label_439
.label_439:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_440
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_440:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_448
.label_448:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_452
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_452:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_455
.label_381:
	test	byte ptr [rbp - 0x81], 1
	je	.label_461
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_466
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_466:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_461:
	jmp	.label_455
.label_455:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_476
	jmp	.label_481
.label_476:
	jmp	.label_483
.label_483:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_415
	test	byte ptr [rbp - 0x82], 1
	jne	.label_415
	jmp	.label_489
.label_489:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_490
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_490:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_494
.label_494:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_498
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_498:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_415:
	jmp	.label_506
.label_506:
	jmp	.label_507
.label_507:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_509
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_509:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_531
.label_481:
	jmp	.label_382
.label_371:
	jmp	.label_367
.label_367:
	test	byte ptr [rbp - 0x79], 1
	je	.label_518
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_520
.label_518:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_524
.label_520:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_524
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_493
.label_524:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_493
	jmp	.label_382
.label_493:
	jmp	.label_534
.label_534:
	jmp	.label_492
.label_492:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_537
	jmp	.label_378
.label_537:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_413
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_413
	jmp	.label_543
.label_543:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_544
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_544:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_548
.label_548:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_551
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_551:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_558
.label_558:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_561
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_561:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_413:
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_370
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_370:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_376
.label_376:
	jmp	.label_382
.label_382:
	jmp	.label_447
.label_447:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_384
	test	byte ptr [rbp - 0x82], 1
	jne	.label_384
	jmp	.label_478
.label_478:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_393
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_393:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_512
.label_512:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_403
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_403:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_384:
	jmp	.label_411
.label_411:
	jmp	.label_412
.label_412:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_390
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_390:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_428
	mov	byte ptr [rbp - 0x7e], 0
.label_428:
	jmp	.label_424
.label_424:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_427
.label_486:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_432
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_432
	test	byte ptr [rbp - 0x7b], 1
	je	.label_432
	jmp	.label_378
.label_432:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_444
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_444
	test	byte ptr [rbp - 0x7d], 1
	je	.label_444
	test	byte ptr [rbp - 0x7e], 1
	je	.label_553
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_454
.label_553:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_456
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_456
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_459
.label_456:
	jmp	.label_505
.label_505:
	jmp	.label_444
.label_444:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_467
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_467
	jmp	.label_470
.label_470:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_472
	jmp	.label_475
.label_475:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_557
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_557:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_402
.label_402:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_470
.label_472:
	jmp	.label_467
.label_467:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_491
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_491:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_454
.label_378:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_500
	test	byte ptr [rbp - 0x79], 1
	je	.label_500
	mov	dword ptr [rbp - 0x34], 4
.label_500:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_454:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062e0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406320

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_568
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_569
.label_568:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_570
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_570:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406480
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_574:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_573
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_574
.label_573:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_575
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_572]],  rax
.label_575:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_571
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_571:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406560

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065a0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_583
	call	abort
.label_583:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_581
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_579
	call	xalloc_die
.label_579:
	test	byte ptr [rbp - 0x31], 1
	je	.label_580
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_582
.label_580:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_582:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_578
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_572]]
	mov	qword ptr [rax + 8], rcx
.label_578:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_581:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_576
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_577
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_577:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_576:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406820

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406860
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406880
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068b0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068f0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_584
	call	abort
.label_584:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406960

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069a0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069d0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a00

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a80

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ab0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ad0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b00
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bb0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bf0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c70
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ca0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ce0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d20
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d50

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d80

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406da0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_587
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_585
.label_587:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_586
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_585
.label_586:
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_588
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_585
.label_588:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_585:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ea0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_591
	movabs	rsi, OFFSET FLAT:.str_5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_593
.label_591:
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_593:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_1
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:.str.3_0
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_592
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_590]]
	jmp	rcx
.label_697:
	jmp	.label_589
.label_698:
	movabs	rdi, OFFSET FLAT:.str.4_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_589
.label_699:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_589
.label_700:
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_589
.label_701:
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_589
.label_702:
	movabs	rdi, OFFSET FLAT:.str.8_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_589
.label_703:
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_589
.label_704:
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_589
.label_705:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_589
.label_706:
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_589
.label_592:
	movabs	rdi, OFFSET FLAT:.str.13_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_589:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407460
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_596:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_594
	jmp	.label_595
.label_595:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_596
.label_594:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_597:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_601
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_599
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_598
.label_599:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_598:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_601:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_603
	jmp	.label_602
.label_603:
	jmp	.label_600
.label_600:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_597
.label_602:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4075e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_604
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_604:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407750
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_1
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_0
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_605
	call	xalloc_die
.label_605:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407830

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_606
	cmp	qword ptr [rbp - 8], 0
	je	.label_606
	call	xalloc_die
.label_606:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407870
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_607
	call	xalloc_die
.label_607:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_608
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_608
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_610
.label_608:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_609
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_609
	call	xalloc_die
.label_609:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_610:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407940

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_611
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_614
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_614:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_612
	call	xalloc_die
.label_612:
	jmp	.label_613
.label_611:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_615
	call	xalloc_die
.label_615:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_613:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a30

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a50
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a80
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ac0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_616
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_617
.label_616:
	call	xalloc_die
.label_617:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b20

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b60

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ba0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_4
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407be0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_618
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_618:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_619
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_619
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_619
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_620
.label_619:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_620:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c90

	.globl str2sig
	.type str2sig, @function
str2sig:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	str2signum
	xor	ecx, ecx
	mov	edx, 0xffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	cmovl	ecx, edx
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407cd0

	.globl str2signum
	.type str2signum, @function
str2signum:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_627
	lea	rsi, [rbp - 0x18]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_621
	cmp	qword ptr [rbp - 0x20], 0x40
	jg	.label_621
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_625
.label_621:
	jmp	.label_623
.label_627:
	mov	dword ptr [rbp - 0x24], 0
.label_630:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	cmp	rcx, 0x23
	jae	.label_633
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	add	rax, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_632
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_625
.label_632:
	jmp	.label_628
.label_628:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_630
.label_633:
	call	__libc_current_sigrtmin
	mov	dword ptr [rbp - 0x34], eax
	call	__libc_current_sigrtmax
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	cmp	ecx, dword ptr [rbp - 0x34]
	jge	.label_631
	movabs	rsi, OFFSET FLAT:.str_6
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_631
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_622
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jg	.label_622
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x38]
	sub	ecx, dword ptr [rbp - 0x34]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jg	.label_622
	movsxd	rax, dword ptr [rbp - 0x34]
	add	rax, qword ptr [rbp - 0x40]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_625
.label_622:
	jmp	.label_629
.label_631:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x38]
	jge	.label_624
	movabs	rsi, OFFSET FLAT:.str.1_5
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_624
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_626
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, dword ptr [rbp - 0x38]
	movsxd	rcx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	jg	.label_626
	cmp	qword ptr [rbp - 0x48], 0
	jg	.label_626
	movsxd	rax, dword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x48]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_625
.label_626:
	jmp	.label_624
.label_624:
	jmp	.label_629
.label_629:
	jmp	.label_623
.label_623:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_625:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f00

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_634:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	cmp	rcx, 0x23
	jae	.label_636
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 8]
	jne	.label_638
	movabs	rax, OFFSET FLAT:numname_table
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	add	rax, 4
	mov	rsi, rax
	call	strcpy
	mov	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_641
.label_638:
	jmp	.label_642
.label_642:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_634
.label_636:
	call	__libc_current_sigrtmin
	mov	dword ptr [rbp - 0x18], eax
	call	__libc_current_sigrtmax
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_637
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x1c]
	jle	.label_640
.label_637:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_641
.label_640:
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	sub	esi, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x34], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0x38], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x34]
	idiv	esi
	mov	edi, dword ptr [rbp - 0x38]
	add	edi, eax
	cmp	ecx, edi
	jg	.label_635
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_6
	mov	esi, eax
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_643
.label_635:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_5
	mov	esi, eax
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x48], rax
.label_643:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_639
	movabs	rsi, OFFSET FLAT:.str.2_2
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	edx, dword ptr [rbp - 0x24]
	mov	rdi, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_639:
	mov	dword ptr [rbp - 4], 0
.label_641:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408070

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_644
	mov	dword ptr [rbp - 4], 0
	jmp	.label_648
.label_644:
	jmp	.label_645
.label_645:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_647
	jmp	.label_646
.label_647:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_645
.label_646:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_648:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408130

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_649
	test	byte ptr [rbp - 0x13], 1
	je	.label_650
	test	byte ptr [rbp - 0x11], 1
	jne	.label_649
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_650
.label_649:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_651
	call	__errno_location
	mov	dword ptr [rax], 0
.label_651:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_652
.label_650:
	mov	dword ptr [rbp - 4], 0
.label_652:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_653
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_7
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_655
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_6
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_654
.label_655:
	mov	byte ptr [rbp - 5], 0
.label_654:
	jmp	.label_653
.label_653:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408260

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_656
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_656:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_657
	movabs	rax, OFFSET FLAT:.str.1_7
	mov	qword ptr [rbp - 8], rax
.label_657:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082c0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_658
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_661
.label_658:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_659
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_660
.label_659:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_660
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_660:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_662
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_662:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_661:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408390

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_663
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_664
.label_663:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_665
.label_664:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_665:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083f0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_666
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_666:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408430

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_667
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_667
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_667
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_669
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_668
.label_669:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_668
.label_667:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_668:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408500

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_670
	jmp	.label_672
.label_672:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_671
.label_670:
	jmp	.label_671
.label_671:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
