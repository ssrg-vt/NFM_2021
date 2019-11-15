	.section	.text
	.align	32
	#Procedure 0x401a80

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_10
	jmp	.label_17
.label_17:
	movabs	rdi, OFFSET FLAT:label_18
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_13
.label_10:
	movabs	rdi, OFFSET FLAT:label_16
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_26
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_20
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_28
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_21
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_11
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_22
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_27
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_24
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_25
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_19
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_15
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_23
	mov	dword ptr [rbp - 0x4c], eax
	call	emit_ancillary_info
.label_13:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401cd0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_29
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
	#Procedure 0x401d00

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
.label_40:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_39
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_39:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_33
	jmp	.label_37
.label_33:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_40
.label_37:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_42
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_42:
	movabs	rdi, OFFSET FLAT:label_32
	call	gettext
	movabs	rsi, OFFSET FLAT:label_43
	movabs	rdx, OFFSET FLAT:label_41
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
	je	.label_31
	movabs	rsi, OFFSET FLAT:label_36
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_31
	movabs	rdi, OFFSET FLAT:label_44
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_31:
	movabs	rdi, OFFSET FLAT:label_38
	call	gettext
	movabs	rsi, OFFSET FLAT:label_41
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_30
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_34
	movabs	rsi, OFFSET FLAT:label_35
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
	#Procedure 0x401ea0

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
	movabs	rsi, OFFSET FLAT:label_34
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_49
	movabs	rsi, OFFSET FLAT:label_90
	mov	qword ptr [rbp - 0x48], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_49
	mov	qword ptr [rbp - 0x50], rax
	call	textdomain
	mov	edi, 0x7d
	mov	qword ptr [rbp - 0x58], rax
	call	initialize_exit_failure
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rbp - 0x5c], eax
	call	initialize_signals
.label_68:
	movabs	rdx, OFFSET FLAT:shortopts
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_81
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x60], eax
	mov	dword ptr [rbp - 0x64], ecx
	je	.label_84
	jmp	.label_94
.label_94:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x68], eax
	je	.label_95
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 9
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_106
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x70], eax
	je	.label_106
	jmp	.label_118
.label_118:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x74], eax
	je	.label_120
	jmp	.label_127
.label_127:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x78], eax
	je	.label_128
	jmp	.label_130
.label_130:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_131
	jmp	.label_45
.label_45:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x80], eax
	je	.label_48
	jmp	.label_54
.label_54:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x84], eax
	je	.label_99
	jmp	.label_116
.label_116:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x88], eax
	je	.label_64
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_121
	jmp	.label_58
.label_58:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x90], eax
	je	.label_78
	jmp	.label_88
.label_88:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x94], eax
	je	.label_92
	jmp	.label_73
.label_73:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x98], eax
	je	.label_83
	jmp	.label_108
.label_48:
	mov	byte ptr [rbp - 0x15], 1
	jmp	.label_47
.label_99:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	append_unset_var
	jmp	.label_47
.label_64:
	mov	byte ptr [byte ptr [dev_debug]],  1
	jmp	.label_47
.label_120:
	mov	byte ptr [rbp - 0x16], 1
	jmp	.label_47
.label_121:
	mov	esi, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_signal_action_params
	xor	esi, esi
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_block_signal_params
	jmp	.label_47
.label_78:
	xor	esi, esi
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_signal_action_params
	jmp	.label_47
.label_92:
	mov	esi, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_block_signal_params
	jmp	.label_47
.label_83:
	mov	byte ptr [byte ptr [report_signal_handling]],  1
	jmp	.label_47
.label_128:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_47
.label_131:
	movabs	rsi, OFFSET FLAT:optind
	lea	rdx, [rbp - 8]
	lea	rcx, [rbp - 0x10]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	parse_split_string
	jmp	.label_47
.label_106:
	movabs	rdi, OFFSET FLAT:label_53
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
	movabs	rdi, OFFSET FLAT:label_104
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x7d
	call	usage
.label_95:
	xor	edi, edi
	call	usage
.label_84:
	movabs	rsi, OFFSET FLAT:label_23
	movabs	rdx, OFFSET FLAT:label_43
	movabs	r8, OFFSET FLAT:label_122
	movabs	r9, OFFSET FLAT:label_123
	movabs	rax, OFFSET FLAT:label_124
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
.label_108:
	mov	edi, 0x7d
	call	usage
.label_47:
	jmp	.label_68
.label_81:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_87
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_75
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_87
	mov	byte ptr [rbp - 0x15], 1
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
.label_87:
	test	byte ptr [rbp - 0x15], 1
	je	.label_98
	jmp	.label_102
.label_102:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_105
	movabs	rsi, OFFSET FLAT:label_111
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xac], eax
.label_105:
	jmp	.label_125
.label_125:
	movabs	rax, OFFSET FLAT:main.dummy_environ
	mov	qword ptr [word ptr [__environ]],  rax
	jmp	.label_126
.label_98:
	call	unset_envvars
.label_126:
	jmp	.label_51
.label_51:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	mov	byte ptr [rbp - 0xad], cl
	jge	.label_113
	mov	esi, 0x3d
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strchr
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0xad], dl
.label_113:
	mov	al, byte ptr [rbp - 0xad]
	test	al, 1
	jne	.label_66
	jmp	.label_69
.label_66:
	jmp	.label_72
.label_72:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_74
	movabs	rsi, OFFSET FLAT:label_77
	mov	rdi,  qword ptr [word ptr [stderr]]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + rax*8]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xb4], eax
.label_74:
	jmp	.label_97
.label_97:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	putenv
	cmp	eax, 0
	je	.label_109
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_82
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
.label_109:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_51
.label_69:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x29], cl
	test	byte ptr [rbp - 0x16], 1
	je	.label_57
	test	byte ptr [rbp - 0x29], 1
	je	.label_57
	movabs	rdi, OFFSET FLAT:label_70
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x7d
	call	usage
.label_57:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_86
	test	byte ptr [rbp - 0x29], 1
	jne	.label_86
	movabs	rdi, OFFSET FLAT:label_60
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 0x7d
	call	usage
.label_86:
	test	byte ptr [rbp - 0x29], 1
	jne	.label_112
	mov	rax,  qword ptr [word ptr [__environ]]
	mov	qword ptr [rbp - 0x38], rax
.label_50:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_119
	movabs	rdi, OFFSET FLAT:label_129
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
	jmp	.label_50
.label_119:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_55
.label_112:
	call	reset_signal_handlers
	test	byte ptr [byte ptr [sig_mask_changed]],  1
	je	.label_61
	call	set_signal_proc_mask
.label_61:
	test	byte ptr [byte ptr [report_signal_handling]],  1
	je	.label_67
	call	list_signal_handling
.label_67:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_52
	jmp	.label_80
.label_80:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_76
	mov	edi, 4
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_style
	movabs	rsi, OFFSET FLAT:label_62
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xd4], eax
.label_76:
	jmp	.label_110
.label_110:
	mov	rdi, qword ptr [rbp - 0x20]
	call	chdir
	cmp	eax, 0
	je	.label_114
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_101
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
.label_114:
	jmp	.label_52
.label_52:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_46
	jmp	.label_56
.label_56:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_59
	movabs	rsi, OFFSET FLAT:label_65
	mov	rdi,  qword ptr [word ptr [stderr]]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + rax*8]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xe4], eax
.label_59:
	jmp	.label_79
.label_79:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x3c], eax
.label_115:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_85
	jmp	.label_96
.label_96:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_93
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
	movabs	rsi, OFFSET FLAT:label_117
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0xf4]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xf8], eax
.label_93:
	jmp	.label_89
.label_89:
	jmp	.label_100
.label_100:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_115
.label_85:
	jmp	.label_46
.label_46:
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
	movabs	rdx, OFFSET FLAT:label_63
	mov	esi, dword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	al, 0
	call	error
	cmp	dword ptr [rbp - 0x40], 0x7f
	jne	.label_71
	mov	esi, 0x20
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strchr
	cmp	rax, 0
	je	.label_71
	movabs	rdi, OFFSET FLAT:label_104
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_71:
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 4], eax
.label_55:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027f0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_132
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_132:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402810

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
.label_134:
	cmp	dword ptr [rbp - 4], 0x40
	jg	.label_133
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	mov	dword ptr [rcx + rax*4], 0
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_134
.label_133:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402870

	.globl append_unset_var
	.type append_unset_var, @function
append_unset_var:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [usvars_used]]
	cmp	rdi,  qword ptr [word ptr [usvars_alloc]]
	jne	.label_135
	movabs	rsi, OFFSET FLAT:usvars_alloc
	mov	eax, 8
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [usvars]],  rax
.label_135:
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
	#Procedure 0x4028f0

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
	jne	.label_145
	mov	dword ptr [rbp - 0x34], 1
.label_140:
	cmp	dword ptr [rbp - 0x34], 0x40
	jg	.label_138
	lea	rsi, [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x34]
	call	sig2str
	cmp	eax, 0
	jne	.label_144
	mov	eax, 4
	mov	ecx, 2
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	eax, ecx
	movsxd	rsi, dword ptr [rbp - 0x34]
	mov	rdi,  qword ptr [word ptr [signals]]
	mov	dword ptr [rdi + rsi*4], eax
.label_144:
	jmp	.label_139
.label_139:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_140
.label_138:
	jmp	.label_142
.label_145:
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	movabs	rsi, OFFSET FLAT:label_136
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
.label_146:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_137
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	call	operand2sig
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 0
	jne	.label_143
	movabs	rdi, OFFSET FLAT:label_147
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
.label_143:
	cmp	dword ptr [rbp - 0x38], 0
	jg	.label_141
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	usage
.label_141:
	xor	eax, eax
	mov	edi, eax
	movabs	rsi, OFFSET FLAT:label_136
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
	jmp	.label_146
.label_137:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_142:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a50

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
	jne	.label_154
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
	jmp	.label_153
.label_154:
	test	byte ptr [byte ptr [sig_mask_changed]],  1
	jne	.label_148
	movabs	rdi, OFFSET FLAT:block_signals
	call	sigemptyset
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	dword ptr [rbp - 0x40], eax
	call	sigemptyset
	mov	dword ptr [rbp - 0x44], eax
.label_148:
	jmp	.label_153
.label_153:
	mov	byte ptr [byte ptr [sig_mask_changed]],  1
	cmp	qword ptr [rbp - 8], 0
	jne	.label_156
	jmp	.label_150
.label_156:
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	movabs	rsi, OFFSET FLAT:label_136
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
.label_152:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_155
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	call	operand2sig
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_151
	movabs	rdi, OFFSET FLAT:label_147
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
.label_151:
	cmp	dword ptr [rbp - 0x34], 0
	jg	.label_149
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	usage
.label_149:
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
	movabs	rsi, OFFSET FLAT:label_136
	mov	dword ptr [rbp - 0x58], eax
	call	strtok
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_152
.label_155:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_150:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c30

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
.label_178:
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
	je	.label_168
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_178
.label_168:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_158
	jmp	.label_165
.label_158:
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
	je	.label_171
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_171
	jmp	.label_175
.label_175:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_177
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_167
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_177:
	jmp	.label_182
.label_182:
	jmp	.label_179
.label_179:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_163
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 8
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_173
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x5c], eax
.label_163:
	jmp	.label_164
.label_164:
	jmp	.label_174
.label_174:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_166
	jmp	.label_172
.label_172:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_181
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 8
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_170
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
.label_181:
	jmp	.label_169
.label_169:
	jmp	.label_174
.label_166:
	jmp	.label_157
.label_171:
	jmp	.label_160
.label_160:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_162
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_160
.label_162:
	jmp	.label_157
.label_157:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_161:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rcx]
	jge	.label_180
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
	jmp	.label_161
.label_180:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_159:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	je	.label_176
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_159
.label_176:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx], 0
.label_165:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ee0

	.globl unset_envvars
	.type unset_envvars, @function
unset_envvars:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], 0
.label_189:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [usvars_used]]
	jae	.label_188
	jmp	.label_184
.label_184:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_185
	movabs	rsi, OFFSET FLAT:label_190
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rdx, qword ptr [rcx + rax*8]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xc], eax
.label_185:
	jmp	.label_183
.label_183:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [usvars]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	unsetenv
	cmp	eax, 0
	je	.label_191
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_186
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
.label_191:
	jmp	.label_187
.label_187:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_189
.label_188:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fd0

	.globl reset_signal_handlers
	.type reset_signal_handlers, @function
reset_signal_handlers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	dword ptr [rbp - 4], 1
.label_197:
	cmp	dword ptr [rbp - 4], 0x40
	jg	.label_200
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rcx + rax*4], 0
	jne	.label_203
	jmp	.label_192
.label_203:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 4]
	mov	rdx,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rdx + rcx*4], 2
	mov	byte ptr [rbp - 0xc1], al
	je	.label_193
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rcx + rax*4], 4
	sete	dl
	mov	byte ptr [rbp - 0xc1], dl
.label_193:
	mov	al, byte ptr [rbp - 0xc1]
	mov	cl, 1
	and	al, 1
	mov	byte ptr [rbp - 0xa1], al
	movsxd	rdx, dword ptr [rbp - 4]
	mov	rsi,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rsi + rdx*4], 1
	mov	byte ptr [rbp - 0xc2], cl
	je	.label_209
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx,  qword ptr [word ptr [signals]]
	cmp	dword ptr [rcx + rax*4], 2
	sete	dl
	mov	byte ptr [rbp - 0xc2], dl
.label_209:
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
	je	.label_201
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_201
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_195
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	mov	edi, 0x7d
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_201:
	cmp	dword ptr [rbp - 0xa8], 0
	jne	.label_194
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
	je	.label_202
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_202
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_198
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], esi
	call	gettext
	mov	edi, 0x7d
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0xcc]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_202:
	jmp	.label_194
.label_194:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_196
	lea	rsi, [rbp - 0xc0]
	mov	edi, dword ptr [rbp - 4]
	call	sig2str
	mov	dword ptr [rbp - 0xd0], eax
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_208
	movabs	rsi, OFFSET FLAT:label_204
	movabs	rax, OFFSET FLAT:label_34
	movabs	rcx, OFFSET FLAT:label_205
	movabs	rdx, OFFSET FLAT:label_206
	movabs	rdi, OFFSET FLAT:label_207
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
.label_208:
	jmp	.label_199
.label_199:
	jmp	.label_196
.label_196:
	jmp	.label_192
.label_192:
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_197
.label_200:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403270

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
	je	.label_223
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_221
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xa8], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xa8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_223:
	mov	dword ptr [rbp - 0x8c], 1
.label_216:
	cmp	dword ptr [rbp - 0x8c], 0x40
	jg	.label_218
	movabs	rdi, OFFSET FLAT:block_signals
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigismember
	cmp	eax, 0
	je	.label_226
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigaddset
	movabs	rdi, OFFSET FLAT:label_217
	mov	qword ptr [rbp - 0x88], rdi
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_213
.label_226:
	movabs	rdi, OFFSET FLAT:unblock_signals
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigismember
	cmp	eax, 0
	je	.label_222
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x8c]
	call	sigdelset
	movabs	rdi, OFFSET FLAT:label_219
	mov	qword ptr [rbp - 0x88], rdi
	mov	dword ptr [rbp - 0xb0], eax
	jmp	.label_220
.label_222:
	mov	qword ptr [rbp - 0x88], 0
.label_220:
	jmp	.label_213
.label_213:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_212
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_212
	lea	rsi, [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	call	sig2str
	mov	dword ptr [rbp - 0xb4], eax
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_225
	movabs	rsi, OFFSET FLAT:label_215
	lea	rdx, [rbp - 0xa0]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	r8, qword ptr [rbp - 0x88]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xb8], eax
.label_225:
	jmp	.label_210
.label_210:
	jmp	.label_212
.label_212:
	jmp	.label_214
.label_214:
	mov	eax, dword ptr [rbp - 0x8c]
	add	eax, 1
	mov	dword ptr [rbp - 0x8c], eax
	jmp	.label_216
.label_218:
	mov	edi, 2
	lea	rsi, [rbp - 0x80]
	xor	eax, eax
	mov	edx, eax
	call	sigprocmask
	cmp	eax, 0
	je	.label_224
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_211
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xbc], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_224:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403480

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
	je	.label_233
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_221
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x160], esi
	call	gettext
	mov	edi, 0x7d
	mov	esi, dword ptr [rbp - 0x160]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_233:
	mov	dword ptr [rbp - 0xa4], 1
.label_230:
	cmp	dword ptr [rbp - 0xa4], 0x40
	jg	.label_234
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0x140]
	mov	edi, dword ptr [rbp - 0xa4]
	call	sigaction
	cmp	eax, 0
	je	.label_228
	jmp	.label_229
.label_228:
	lea	rdi, [rbp - 0x80]
	mov	eax, 1
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:label_34
	movabs	rsi, OFFSET FLAT:label_206
	cmp	qword ptr [rbp - 0x140], rcx
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x148], rdx
	mov	esi, dword ptr [rbp - 0xa4]
	call	sigismember
	xor	esi, esi
	mov	r8b, sil
	movabs	rcx, OFFSET FLAT:label_34
	movabs	rdx, OFFSET FLAT:label_217
	cmp	eax, 0
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x150], rcx
	mov	rcx, qword ptr [rbp - 0x148]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x161], r8b
	je	.label_231
	mov	rax, qword ptr [rbp - 0x150]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x161], dl
.label_231:
	mov	al, byte ptr [rbp - 0x161]
	movabs	rcx, OFFSET FLAT:label_34
	movabs	rdx, OFFSET FLAT:label_136
	test	al, 1
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x148]
	cmp	byte ptr [rcx], 0
	jne	.label_232
	mov	rax, qword ptr [rbp - 0x150]
	cmp	byte ptr [rax], 0
	jne	.label_232
	jmp	.label_229
.label_232:
	lea	rsi, [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0xa4]
	call	sig2str
	movabs	rsi, OFFSET FLAT:label_227
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
.label_229:
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_230
.label_234:
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403680

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
	je	.label_263
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_263
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
	jne	.label_263
	jmp	.label_285
.label_263:
	movabs	rdi, OFFSET FLAT:label_287
	movabs	rsi, OFFSET FLAT:label_288
	mov	edx, 0x18b
	movabs	rcx, OFFSET FLAT:label_289
	call	__assert_fail
.label_285:
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
	mov	ecx, OFFSET FLAT:label_260
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
.label_236:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_270
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x39], cl
	mov	rax, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rax]
	mov	esi, edx
	sub	esi, 9
	mov	dword ptr [rbp - 0x64], edx
	mov	dword ptr [rbp - 0x68], esi
	je	.label_272
	jmp	.label_279
.label_279:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_272
	jmp	.label_282
.label_282:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x22
	mov	dword ptr [rbp - 0x70], eax
	je	.label_284
	jmp	.label_286
.label_286:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x23
	mov	dword ptr [rbp - 0x74], eax
	je	.label_290
	jmp	.label_238
.label_238:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x24
	mov	dword ptr [rbp - 0x78], eax
	je	.label_241
	jmp	.label_243
.label_243:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x27
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_245
	jmp	.label_276
.label_276:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x80], eax
	je	.label_251
	jmp	.label_247
.label_245:
	test	byte ptr [rbp - 0xd], 1
	je	.label_252
	jmp	.label_247
.label_252:
	mov	al, byte ptr [rbp - 0xe]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0xe], al
	test	byte ptr [rbp - 0xf], 1
	je	.label_257
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
.label_257:
	jmp	.label_269
.label_269:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_236
.label_284:
	test	byte ptr [rbp - 0xe], 1
	je	.label_274
	jmp	.label_247
.label_274:
	mov	al, byte ptr [rbp - 0xd]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	test	byte ptr [rbp - 0xf], 1
	je	.label_275
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
.label_275:
	jmp	.label_235
.label_235:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_236
.label_272:
	test	byte ptr [rbp - 0xe], 1
	jne	.label_242
	test	byte ptr [rbp - 0xd], 1
	je	.label_244
.label_242:
	jmp	.label_247
.label_244:
	movabs	rsi, OFFSET FLAT:label_248
	mov	byte ptr [rbp - 0xf], 1
	mov	rdi, qword ptr [rbp - 8]
	call	strspn
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_236
.label_290:
	test	byte ptr [rbp - 0xf], 1
	jne	.label_254
	jmp	.label_247
.label_254:
	jmp	.label_240
.label_251:
	test	byte ptr [rbp - 0xe], 1
	je	.label_261
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x5c
	je	.label_261
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x27
	je	.label_261
	jmp	.label_247
.label_261:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x39], dl
	movsx	esi, byte ptr [rbp - 0x39]
	cmp	esi, 0x5c
	je	.label_268
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x27
	je	.label_268
	test	byte ptr [rbp - 0xe], 1
	jne	.label_277
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x23
	je	.label_268
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x24
	je	.label_268
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x22
	jne	.label_277
.label_268:
	jmp	.label_256
.label_277:
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x5f
	jne	.label_291
	test	byte ptr [rbp - 0xd], 1
	jne	.label_237
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0xf], 1
	jmp	.label_236
.label_237:
	mov	byte ptr [rbp - 0x39], 0x20
	jmp	.label_246
.label_291:
	movsx	eax, byte ptr [rbp - 0x39]
	cmp	eax, 0x63
	jne	.label_249
	jmp	.label_240
.label_249:
	movsx	edi, byte ptr [rbp - 0x39]
	call	escape_char
	mov	byte ptr [rbp - 0x39], al
	jmp	.label_246
.label_246:
	jmp	.label_256
.label_256:
	jmp	.label_247
.label_241:
	test	byte ptr [rbp - 0xe], 1
	je	.label_258
	jmp	.label_247
.label_258:
	mov	rdi, qword ptr [rbp - 8]
	call	extract_varname
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	getenv
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_264
	jmp	.label_262
.label_262:
	test	byte ptr [rbp - 0xf], 1
	je	.label_267
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
.label_267:
	jmp	.label_278
.label_278:
	jmp	.label_280
.label_280:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_281
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x90], rdx
	call	quote
	movabs	rsi, OFFSET FLAT:label_239
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
.label_281:
	jmp	.label_250
.label_250:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x50]
	call	stpcpy
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_266
.label_264:
	jmp	.label_253
.label_253:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_255
	movabs	rsi, OFFSET FLAT:label_259
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x98], eax
.label_255:
	jmp	.label_265
.label_265:
	jmp	.label_266
.label_266:
	mov	esi, 0x7d
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_236
.label_247:
	jmp	.label_271
.label_271:
	test	byte ptr [rbp - 0xf], 1
	je	.label_273
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
.label_273:
	jmp	.label_283
.label_283:
	mov	al, byte ptr [rbp - 0x39]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_236
.label_270:
	jmp	.label_240
.label_240:
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
	#Procedure 0x403c40

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
	je	.label_294
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_294
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
	jne	.label_294
	jmp	.label_302
.label_294:
	movabs	rdi, OFFSET FLAT:label_287
	movabs	rsi, OFFSET FLAT:label_288
	mov	edx, 0x118
	movabs	rcx, OFFSET FLAT:label_304
	call	__assert_fail
.label_302:
	mov	byte ptr [rbp - 0x1b], 0
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [rbp - 0x19], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_309:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_326
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
	je	.label_299
	test	byte ptr [rbp - 0x19], 1
	jne	.label_299
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_299
	mov	byte ptr [rbp - 0x1b], 1
	jmp	.label_310
.label_299:
	test	byte ptr [rbp - 0x1b], 1
	je	.label_314
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_314:
	mov	byte ptr [rbp - 0x1b], 0
.label_310:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x22
	mov	dword ptr [rbp - 0x4c], ecx
	mov	dword ptr [rbp - 0x50], edx
	je	.label_323
	jmp	.label_330
.label_330:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 0x24
	mov	dword ptr [rbp - 0x54], eax
	je	.label_292
	jmp	.label_296
.label_296:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 0x27
	mov	dword ptr [rbp - 0x58], eax
	je	.label_298
	jmp	.label_312
.label_312:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_305
	jmp	.label_300
.label_298:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_308
	test	byte ptr [rbp - 0x19], 1
	jne	.label_311
.label_308:
	jmp	.label_315
.label_311:
	movabs	rdi, OFFSET FLAT:label_319
	movabs	rsi, OFFSET FLAT:label_288
	mov	edx, 0x12f
	movabs	rcx, OFFSET FLAT:label_304
	call	__assert_fail
.label_315:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x1a], 1
	mov	byte ptr [rbp - 0x5d], cl
	jne	.label_329
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x5d], al
.label_329:
	mov	al, byte ptr [rbp - 0x5d]
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	jmp	.label_300
.label_323:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_303
	test	byte ptr [rbp - 0x19], 1
	jne	.label_306
.label_303:
	jmp	.label_307
.label_306:
	movabs	rdi, OFFSET FLAT:label_319
	movabs	rsi, OFFSET FLAT:label_288
	mov	edx, 0x134
	movabs	rcx, OFFSET FLAT:label_304
	call	__assert_fail
.label_307:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x1a], 1
	mov	byte ptr [rbp - 0x5e], cl
	jne	.label_324
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x5e], al
.label_324:
	mov	al, byte ptr [rbp - 0x5e]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	jmp	.label_300
.label_305:
	test	byte ptr [rbp - 0x19], 1
	je	.label_295
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0x63
	jne	.label_295
	movabs	rdi, OFFSET FLAT:label_316
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_295:
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0
	jne	.label_297
	movabs	rdi, OFFSET FLAT:label_320
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_297:
	movsx	edi, byte ptr [rbp - 0x35]
	call	valid_escape_sequence
	test	al, 1
	jne	.label_328
	movabs	rdi, OFFSET FLAT:label_293
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	movsx	ecx, byte ptr [rbp - 0x35]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_328:
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0x5f
	jne	.label_318
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_318:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_300
.label_292:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_313
	jmp	.label_300
.label_313:
	mov	rdi, qword ptr [rbp - 8]
	call	extract_varname
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_322
	movabs	rdi, OFFSET FLAT:label_327
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_322:
	mov	rdi, qword ptr [rbp - 0x28]
	call	getenv
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_301
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
.label_301:
	jmp	.label_300
.label_300:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_309
.label_326:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_317
	test	byte ptr [rbp - 0x1a], 1
	je	.label_321
.label_317:
	movabs	rdi, OFFSET FLAT:label_325
	call	gettext
	mov	edi, 0x7d
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_321:
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
	#Procedure 0x404030

	.globl escape_char
	.type escape_char, @function
escape_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 2], al
	movsx	edi, byte ptr [rbp - 2]
	add	edi, -0x66
	mov	ecx, edi
	sub	edi, 0x10
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_331
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_335]]
	jmp	rcx
.label_917:
	mov	byte ptr [rbp - 1], 0xa
	jmp	.label_332
.label_918:
	mov	byte ptr [rbp - 1], 0xd
	jmp	.label_332
.label_919:
	mov	byte ptr [rbp - 1], 9
	jmp	.label_332
.label_920:
	mov	byte ptr [rbp - 1], 0xb
	jmp	.label_332
.label_331:
	movabs	rdi, OFFSET FLAT:label_333
	movabs	rsi, OFFSET FLAT:label_288
	mov	edx, 0xd2
	movabs	rcx, OFFSET FLAT:label_334
	call	__assert_fail
.label_332:
	movsx	eax, byte ptr [rbp - 1]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040d0

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
	jne	.label_338
	mov	qword ptr [rbp - 8], 0
	jmp	.label_337
.label_338:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	sub	rax, 2
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [vnlen]]
	jb	.label_336
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [word ptr [vnlen]],  rax
	mov	rdi,  qword ptr [word ptr [varname]]
	mov	rsi,  qword ptr [word ptr [vnlen]]
	call	xrealloc
	mov	qword ptr [word ptr [varname]],  rax
.label_336:
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
.label_337:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041a0

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
	je	.label_339
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x66
	mov	byte ptr [rbp - 2], al
	je	.label_339
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x6e
	mov	byte ptr [rbp - 2], al
	je	.label_339
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x72
	mov	byte ptr [rbp - 2], al
	je	.label_339
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x74
	mov	byte ptr [rbp - 2], al
	je	.label_339
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x76
	mov	byte ptr [rbp - 2], al
	je	.label_339
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x23
	mov	byte ptr [rbp - 2], al
	je	.label_339
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x24
	mov	byte ptr [rbp - 2], al
	je	.label_339
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x5f
	mov	byte ptr [rbp - 2], al
	je	.label_339
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x22
	mov	byte ptr [rbp - 2], al
	je	.label_339
	mov	al, 1
	movsx	ecx, byte ptr [rbp - 1]
	cmp	ecx, 0x27
	mov	byte ptr [rbp - 2], al
	je	.label_339
	movsx	eax, byte ptr [rbp - 1]
	cmp	eax, 0x5c
	sete	cl
	mov	byte ptr [rbp - 2], cl
.label_339:
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404290

	.globl scan_varname
	.type scan_varname, @function
scan_varname:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_344
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x24
	jne	.label_344
	jmp	.label_347
.label_344:
	movabs	rdi, OFFSET FLAT:label_349
	movabs	rsi, OFFSET FLAT:label_288
	mov	edx, 0xdd
	movabs	rcx, OFFSET FLAT:label_350
	call	__assert_fail
.label_347:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x7b
	jne	.label_342
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax + 2]
	call	c_isalpha
	test	al, 1
	jne	.label_341
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x5f
	jne	.label_342
.label_341:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 3
	mov	qword ptr [rbp - 0x18], rax
.label_346:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	c_isalnum
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_348
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5f
	sete	dl
	mov	byte ptr [rbp - 0x19], dl
.label_348:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_340
	jmp	.label_343
.label_340:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_346
.label_343:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x7d
	jne	.label_345
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_351
.label_345:
	jmp	.label_342
.label_342:
	mov	qword ptr [rbp - 8], 0
.label_351:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043b0

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
	ja	.label_360
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
	je	.label_352
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_352
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_352
	movsxd	rax, dword ptr [rbp - 0x34]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_363
.label_352:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_367
.label_363:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], eax
.label_367:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_355
	mov	eax, 0x7f
	mov	ecx, 0xff
	cmp	dword ptr [rbp - 0x1c], 0xff
	cmovge	eax, ecx
	and	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], eax
.label_355:
	jmp	.label_366
.label_360:
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_359:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	byte ptr [rax], 0
	je	.label_357
	movabs	rdi, OFFSET FLAT:label_361
	mov	rax, qword ptr [rbp - 0x48]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_365
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	dl, cl
	mov	byte ptr [rax], dl
.label_365:
	jmp	.label_354
.label_354:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_359
.label_357:
	lea	rsi, [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x40]
	call	str2sig
	cmp	eax, 0
	je	.label_356
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x53
	jne	.label_353
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x49
	jne	.label_353
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x47
	jne	.label_353
	lea	rsi, [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 3
	mov	rdi, rax
	call	str2sig
	cmp	eax, 0
	je	.label_356
.label_353:
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_356:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_366:
	cmp	dword ptr [rbp - 0x1c], 0
	jl	.label_358
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	call	sig2str
	cmp	eax, 0
	je	.label_364
.label_358:
	movabs	rdi, OFFSET FLAT:label_147
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
	jmp	.label_362
.label_364:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_362:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045c0

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
	jb	.label_368
	jmp	.label_370
.label_370:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_368
	jmp	.label_369
.label_369:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_371
	jmp	.label_368
.label_368:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_372
.label_371:
	mov	byte ptr [rbp - 1], 0
.label_372:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404630

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
	jb	.label_373
	jmp	.label_376
.label_376:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_374
	jmp	.label_373
.label_373:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_375
.label_374:
	mov	byte ptr [rbp - 1], 0
.label_375:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404680
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_377
	jmp	.label_379
.label_379:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_378
.label_377:
	mov	byte ptr [rbp - 1], 0
.label_378:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046b0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_380
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_380:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046e0
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
	jb	.label_381
	jmp	.label_383
.label_383:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_384
	jmp	.label_381
.label_381:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_382
.label_384:
	mov	byte ptr [rbp - 1], 0
.label_382:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404730
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_385
	jmp	.label_387
.label_387:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_386
.label_385:
	mov	byte ptr [rbp - 1], 0
.label_386:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404770
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_388
	jmp	.label_390
.label_390:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_389
.label_388:
	mov	byte ptr [rbp - 1], 0
.label_389:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047b0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_391
	jmp	.label_393
.label_393:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_392
.label_391:
	mov	byte ptr [rbp - 1], 0
.label_392:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047f0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_394
	jmp	.label_396
.label_396:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_395
.label_394:
	mov	byte ptr [rbp - 1], 0
.label_395:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404830
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_397
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_399]]
	jmp	rcx
.label_875:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_398
.label_397:
	mov	byte ptr [rbp - 1], 0
.label_398:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404880
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
	jb	.label_400
	jmp	.label_401
.label_401:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_403
	jmp	.label_400
.label_400:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_402
.label_403:
	mov	byte ptr [rbp - 1], 0
.label_402:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048d0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_404
	jmp	.label_406
.label_406:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_405
.label_404:
	mov	byte ptr [rbp - 1], 0
.label_405:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404910
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
	jb	.label_407
	jmp	.label_409
.label_409:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_407
	jmp	.label_408
.label_408:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_410
	jmp	.label_407
.label_407:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_411
.label_410:
	mov	byte ptr [rbp - 1], 0
.label_411:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404980

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_412
	jmp	.label_414
.label_414:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_413
.label_412:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_413:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049c0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_415
	jmp	.label_417
.label_417:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_416
.label_415:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_416:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a00
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
	#Procedure 0x404a20
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
	#Procedure 0x404a40

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_422
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_424
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_422
.label_424:
	movabs	rdi, OFFSET FLAT:label_423
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_419
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_420
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_421
.label_419:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_63
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_421:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_422:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_418
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_418:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b30

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_428
	movabs	rdi, OFFSET FLAT:label_427
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_428:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_430
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_425
.label_430:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_425:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_432
	movabs	rsi, OFFSET FLAT:label_431
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_432
	movabs	rsi, OFFSET FLAT:label_429
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_426
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_426:
	jmp	.label_432
.label_432:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c50
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
	je	.label_433
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_434
.label_433:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_434
.label_434:
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
	#Procedure 0x404cd0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_435
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_436
.label_435:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d10
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
	je	.label_437
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_438
.label_437:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_438
.label_438:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d60

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
	je	.label_439
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_440
.label_439:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_440
.label_440:
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
	#Procedure 0x404e10
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_441
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_441:
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
	#Procedure 0x404e50

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
	jne	.label_442
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_442:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_444
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_443
.label_444:
	call	abort
.label_443:
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
	#Procedure 0x404ec0
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
	je	.label_445
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_446
.label_445:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_446
.label_446:
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
	#Procedure 0x404f90

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
.label_566:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_457
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_463]]
	jmp	rcx
.label_885:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_884:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_472
	jmp	.label_476
.label_476:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_477
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_477:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_472
.label_472:
	movabs	rax, OFFSET FLAT:label_487
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_488
.label_886:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_488
.label_887:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_499
	movabs	rdi, OFFSET FLAT:label_505
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_507
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_499:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_514
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_535:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_518
	jmp	.label_522
.label_522:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_524
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_524:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_535
.label_518:
	jmp	.label_514
.label_514:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_488
.label_882:
	mov	byte ptr [rbp - 0x79], 1
.label_881:
	mov	byte ptr [rbp - 0x7b], 1
.label_883:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_548
	mov	byte ptr [rbp - 0x79], 1
.label_548:
	jmp	.label_549
.label_549:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_551
	jmp	.label_555
.label_555:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_556
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_556:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_551
.label_551:
	movabs	rax, OFFSET FLAT:label_507
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_488
.label_880:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_488
.label_457:
	call	abort
.label_488:
	mov	qword ptr [rbp - 0x58], 0
.label_532:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_570
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_573
.label_570:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_573:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_585
	jmp	.label_600
.label_585:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_593
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_593
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_593
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_601
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_601
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_528
.label_601:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_528:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_593
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_593
	test	byte ptr [rbp - 0x7b], 1
	je	.label_619
	jmp	.label_466
.label_619:
	mov	byte ptr [rbp - 0x81], 1
.label_593:
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
	ja	.label_622
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_627]]
	jmp	rcx
.label_824:
	test	byte ptr [rbp - 0x79], 1
	je	.label_628
	jmp	.label_633
.label_633:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_544
	jmp	.label_466
.label_544:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_561
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_561
	jmp	.label_638
.label_638:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_639
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_639:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_645
.label_645:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_493
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_493:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_448
.label_448:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_454
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_454:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_561:
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_467
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_467:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_475
.label_475:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_479
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_479
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_479
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_479
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_558
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_558:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_506
.label_506:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_511
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_511:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_479
.label_479:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_523
.label_628:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_612
	jmp	.label_530
.label_612:
	jmp	.label_523
.label_523:
	jmp	.label_449
.label_835:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_531
	jmp	.label_538
.label_538:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_539
	jmp	.label_597
.label_531:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_541
	jmp	.label_466
.label_541:
	jmp	.label_547
.label_539:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_537
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_537
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_537
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_559
	jmp	.label_565
.label_565:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_559
	jmp	.label_568
.label_568:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_559
	jmp	.label_574
.label_574:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_559
	jmp	.label_579
.label_579:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_580
	jmp	.label_559
.label_559:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_587
	jmp	.label_466
.label_587:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_592
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_592:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_640
.label_640:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_603
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_603:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_608
.label_608:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_614
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_614:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_617
.label_617:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_554
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_554:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_605
.label_580:
	jmp	.label_605
.label_605:
	jmp	.label_537
.label_537:
	jmp	.label_547
.label_597:
	jmp	.label_547
.label_547:
	jmp	.label_449
.label_825:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_623
.label_826:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_623
.label_830:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_623
.label_828:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_543
.label_831:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_543
.label_827:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_543
.label_829:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_623
.label_836:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_629
	test	byte ptr [rbp - 0x7b], 1
	je	.label_632
	jmp	.label_466
.label_632:
	jmp	.label_482
.label_629:
	test	byte ptr [rbp - 0x79], 1
	je	.label_635
	test	byte ptr [rbp - 0x7b], 1
	je	.label_635
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_635
	jmp	.label_482
.label_635:
	jmp	.label_543
.label_543:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_643
	test	byte ptr [rbp - 0x7b], 1
	je	.label_643
	jmp	.label_466
.label_643:
	jmp	.label_623
.label_623:
	test	byte ptr [rbp - 0x79], 1
	je	.label_649
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_447
.label_649:
	jmp	.label_449
.label_837:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_451
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_455
	jmp	.label_459
.label_451:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_455
.label_459:
	jmp	.label_449
.label_455:
	jmp	.label_452
.label_452:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_465
	jmp	.label_449
.label_465:
	jmp	.label_469
.label_469:
	mov	byte ptr [rbp - 0x83], 1
.label_832:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_474
	test	byte ptr [rbp - 0x7b], 1
	je	.label_474
	jmp	.label_466
.label_474:
	jmp	.label_449
.label_834:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_480
	test	byte ptr [rbp - 0x7b], 1
	je	.label_486
	jmp	.label_466
.label_486:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_492
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_492
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_492:
	jmp	.label_501
.label_501:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_503
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_503:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_510
.label_510:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_513
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_513:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_521
.label_521:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_526
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_480:
	jmp	.label_449
.label_833:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_449
.label_622:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_462
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
	jmp	.label_527
.label_462:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_560
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_560:
	jmp	.label_456
.label_456:
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
	jne	.label_576
	jmp	.label_582
.label_576:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_583
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_582
.label_583:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_590
	mov	byte ptr [rbp - 0x91], 0
.label_609:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_594
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_594:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_606
	jmp	.label_607
.label_606:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_609
.label_607:
	jmp	.label_582
.label_590:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_616
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_616
	mov	qword ptr [rbp - 0xb8], 1
.label_637:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_618
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
	jb	.label_496
	jmp	.label_625
.label_625:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_496
	jmp	.label_490
.label_490:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_496
	jmp	.label_519
.label_519:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_630
	jmp	.label_496
.label_496:
	jmp	.label_466
.label_630:
	jmp	.label_533
.label_533:
	jmp	.label_577
.label_577:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_637
.label_618:
	jmp	.label_616
.label_616:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_646
	mov	byte ptr [rbp - 0x91], 0
.label_646:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_648
.label_648:
	jmp	.label_461
.label_461:
	jmp	.label_450
.label_450:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_456
.label_582:
	jmp	.label_527
.label_527:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_460
	test	byte ptr [rbp - 0x79], 1
	je	.label_471
	test	byte ptr [rbp - 0x91], 1
	jne	.label_471
.label_460:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_491:
	test	byte ptr [rbp - 0x79], 1
	je	.label_481
	test	byte ptr [rbp - 0x91], 1
	jne	.label_481
	jmp	.label_631
.label_631:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_489
	jmp	.label_466
.label_489:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_495
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_495
	jmp	.label_500
.label_500:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_502
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_502:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_509
.label_509:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_512
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_512:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_520
.label_520:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_610
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_610:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_495:
	jmp	.label_534
.label_534:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_536
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_536:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_540
.label_540:
	jmp	.label_542
.label_542:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_545
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_545:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_553
.label_553:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_557
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_557:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_563
.label_481:
	test	byte ptr [rbp - 0x81], 1
	je	.label_567
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_571
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_571:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_567:
	jmp	.label_563
.label_563:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_581
	jmp	.label_586
.label_581:
	jmp	.label_589
.label_589:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_591
	test	byte ptr [rbp - 0x82], 1
	jne	.label_591
	jmp	.label_595
.label_595:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_596
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_596:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_599
.label_599:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_602
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_602:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_591:
	jmp	.label_611
.label_611:
	jmp	.label_613
.label_613:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_615
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_615:
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
	jmp	.label_491
.label_586:
	jmp	.label_482
.label_471:
	jmp	.label_449
.label_449:
	test	byte ptr [rbp - 0x79], 1
	je	.label_620
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_621
.label_620:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_624
.label_621:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_624
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
	jne	.label_626
.label_624:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_626
	jmp	.label_482
.label_626:
	jmp	.label_447
.label_447:
	jmp	.label_584
.label_584:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_634
	jmp	.label_466
.label_634:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_636
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_636
	jmp	.label_641
.label_641:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_642
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_642:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_647
.label_647:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_650
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_650:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_453
.label_453:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_458
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_458:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_636:
	jmp	.label_468
.label_468:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_470
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_470:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_478
.label_478:
	jmp	.label_482
.label_482:
	jmp	.label_483
.label_483:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_485
	test	byte ptr [rbp - 0x82], 1
	jne	.label_485
	jmp	.label_644
.label_644:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_494
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_494:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_498
.label_498:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_504
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_504:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_485:
	jmp	.label_515
.label_515:
	jmp	.label_516
.label_516:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_517
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_517:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_525
	mov	byte ptr [rbp - 0x7e], 0
.label_525:
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_532
.label_600:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_484
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_484
	test	byte ptr [rbp - 0x7b], 1
	je	.label_484
	jmp	.label_466
.label_484:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_508
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_508
	test	byte ptr [rbp - 0x7d], 1
	je	.label_508
	test	byte ptr [rbp - 0x7e], 1
	je	.label_550
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
	jmp	.label_562
.label_550:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_564
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_564
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_566
.label_564:
	jmp	.label_473
.label_473:
	jmp	.label_508
.label_508:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_572
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_572
	jmp	.label_575
.label_575:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_578
	jmp	.label_546
.label_546:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_552
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_552:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_588
.label_588:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_575
.label_578:
	jmp	.label_572
.label_572:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_598
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_598:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_562
.label_466:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_604
	test	byte ptr [rbp - 0x79], 1
	je	.label_604
	mov	dword ptr [rbp - 0x34], 4
.label_604:
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
.label_562:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406330
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
	#Procedure 0x406370

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
	je	.label_651
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_652
.label_651:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_652
.label_652:
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
	je	.label_653
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_653:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_655:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_656
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_655
.label_656:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_658
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_657]],  rax
.label_658:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_654
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_654:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065b0

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
	#Procedure 0x4065f0

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
	jge	.label_659
	call	abort
.label_659:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_663
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_666
	call	xalloc_die
.label_666:
	test	byte ptr [rbp - 0x31], 1
	je	.label_662
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_665
.label_662:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_665:
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
	je	.label_664
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_657]]
	mov	qword ptr [rax + 8], rcx
.label_664:
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
.label_663:
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
	ja	.label_660
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_661
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_661:
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
.label_660:
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
	#Procedure 0x406870

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
	#Procedure 0x4068b0
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
	#Procedure 0x4068d0
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
	#Procedure 0x406900

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
	#Procedure 0x406940

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
	jne	.label_667
	call	abort
.label_667:
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
	#Procedure 0x4069b0

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
	#Procedure 0x4069f0

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
	#Procedure 0x406a20
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
	#Procedure 0x406a50

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
	#Procedure 0x406ad0

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
	#Procedure 0x406b00

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
	#Procedure 0x406b20
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
	#Procedure 0x406b50
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
	#Procedure 0x406c00

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
	#Procedure 0x406c40

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
	#Procedure 0x406cc0
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
	#Procedure 0x406cf0
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
	#Procedure 0x406d30

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
	#Procedure 0x406d70
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
	#Procedure 0x406da0

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
	#Procedure 0x406dd0

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
	#Procedure 0x406df0

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
	je	.label_669
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_674
.label_669:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_670
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_668
	movabs	rax, OFFSET FLAT:label_672
	movabs	rcx, OFFSET FLAT:label_673
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_674
.label_668:
	movabs	rsi, OFFSET FLAT:label_677
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_671
	movabs	rax, OFFSET FLAT:label_675
	movabs	rcx, OFFSET FLAT:label_676
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_674
.label_671:
	movabs	rax, OFFSET FLAT:label_507
	movabs	rcx, OFFSET FLAT:label_487
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_674:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ef0

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
	je	.label_686
	movabs	rsi, OFFSET FLAT:label_689
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_679
.label_686:
	movabs	rsi, OFFSET FLAT:label_683
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_679:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_691
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
	mov	ecx, OFFSET FLAT:label_682
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
	ja	.label_695
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_684]]
	jmp	rcx
.label_801:
	jmp	.label_681
.label_802:
	movabs	rdi, OFFSET FLAT:label_692
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
	jmp	.label_681
.label_803:
	movabs	rdi, OFFSET FLAT:label_688
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
	jmp	.label_681
.label_804:
	movabs	rdi, OFFSET FLAT:label_687
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
	jmp	.label_681
.label_805:
	movabs	rdi, OFFSET FLAT:label_680
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
	jmp	.label_681
.label_806:
	movabs	rdi, OFFSET FLAT:label_690
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
	jmp	.label_681
.label_807:
	movabs	rdi, OFFSET FLAT:label_693
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
	jmp	.label_681
.label_808:
	movabs	rdi, OFFSET FLAT:label_696
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
	jmp	.label_681
.label_809:
	movabs	rdi, OFFSET FLAT:label_685
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
	jmp	.label_681
.label_810:
	movabs	rdi, OFFSET FLAT:label_678
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
	jmp	.label_681
.label_695:
	movabs	rdi, OFFSET FLAT:label_694
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
.label_681:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074b0
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
.label_699:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_697
	jmp	.label_698
.label_698:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_699
.label_697:
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
	#Procedure 0x407520

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
.label_703:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_700
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_705
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_704
.label_705:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_704:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_700:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_706
	jmp	.label_701
.label_706:
	jmp	.label_702
.label_702:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_703
.label_701:
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
	#Procedure 0x407630

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
	je	.label_707
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
.label_707:
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
	#Procedure 0x4077a0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_708
	call	gettext
	movabs	rsi, OFFSET FLAT:label_710
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_709
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_43
	movabs	rdx, OFFSET FLAT:label_41
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_711
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
	#Procedure 0x407830
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
	jae	.label_712
	call	xalloc_die
.label_712:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407880

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
	jne	.label_713
	cmp	qword ptr [rbp - 8], 0
	je	.label_713
	call	xalloc_die
.label_713:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078c0
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
	jae	.label_714
	call	xalloc_die
.label_714:
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
	#Procedure 0x407910

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_715
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_715
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_717
.label_715:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_716
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_716
	call	xalloc_die
.label_716:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_717:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407990

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
	jne	.label_718
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_721
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
.label_721:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_719
	call	xalloc_die
.label_719:
	jmp	.label_720
.label_718:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_722
	call	xalloc_die
.label_722:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_720:
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
	#Procedure 0x407a80

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
	#Procedure 0x407aa0
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
	#Procedure 0x407ad0
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
	#Procedure 0x407b10
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
	jb	.label_723
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_724
.label_723:
	call	xalloc_die
.label_724:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b70

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
	#Procedure 0x407bb0

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
	#Procedure 0x407bf0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_725
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_63
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407c30

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
	jne	.label_726
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_726:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_727
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_727
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_727
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_728
.label_727:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_728:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ce0

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
	#Procedure 0x407d20

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
	ja	.label_738
	lea	rsi, [rbp - 0x18]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_735
	cmp	qword ptr [rbp - 0x20], 0x40
	jg	.label_735
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_730
.label_735:
	jmp	.label_737
.label_738:
	mov	dword ptr [rbp - 0x24], 0
.label_741:
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	cmp	rcx, 0x23
	jae	.label_732
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
	jne	.label_743
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x24]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_730
.label_743:
	jmp	.label_739
.label_739:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_741
.label_732:
	call	__libc_current_sigrtmin
	mov	dword ptr [rbp - 0x34], eax
	call	__libc_current_sigrtmax
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	cmp	ecx, dword ptr [rbp - 0x34]
	jge	.label_734
	movabs	rsi, OFFSET FLAT:label_736
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_734
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_742
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jg	.label_742
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x38]
	sub	ecx, dword ptr [rbp - 0x34]
	movsxd	rdx, ecx
	cmp	rax, rdx
	jg	.label_742
	movsxd	rax, dword ptr [rbp - 0x34]
	add	rax, qword ptr [rbp - 0x40]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_730
.label_742:
	jmp	.label_733
.label_734:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x38]
	jge	.label_729
	movabs	rsi, OFFSET FLAT:label_740
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	jne	.label_729
	lea	rsi, [rbp - 0x30]
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	rdi, rax
	call	strtol
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	jne	.label_731
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, dword ptr [rbp - 0x38]
	movsxd	rcx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	jg	.label_731
	cmp	qword ptr [rbp - 0x48], 0
	jg	.label_731
	movsxd	rax, dword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x48]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_730
.label_731:
	jmp	.label_729
.label_729:
	jmp	.label_733
.label_733:
	jmp	.label_737
.label_737:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_730:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f50

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_748:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	cmp	rcx, 0x23
	jae	.label_750
	movabs	rax, OFFSET FLAT:numname_table
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0xc
	add	rax, rdx
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 8]
	jne	.label_752
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
	jmp	.label_744
.label_752:
	jmp	.label_746
.label_746:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_748
.label_750:
	call	__libc_current_sigrtmin
	mov	dword ptr [rbp - 0x18], eax
	call	__libc_current_sigrtmax
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_751
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 0x1c]
	jle	.label_754
.label_751:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_744
.label_754:
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
	jg	.label_749
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_736
	mov	esi, eax
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_747
.label_749:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_740
	mov	esi, eax
	call	strcpy
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], ecx
	mov	qword ptr [rbp - 0x48], rax
.label_747:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_753
	movabs	rsi, OFFSET FLAT:label_745
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 5
	mov	edx, dword ptr [rbp - 0x24]
	mov	rdi, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_753:
	mov	dword ptr [rbp - 4], 0
.label_744:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4080c0

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
	jne	.label_755
	mov	dword ptr [rbp - 4], 0
	jmp	.label_759
.label_755:
	jmp	.label_756
.label_756:
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
	jne	.label_758
	jmp	.label_757
.label_758:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_756
.label_757:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_759:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408180

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
	jne	.label_760
	test	byte ptr [rbp - 0x13], 1
	je	.label_762
	test	byte ptr [rbp - 0x11], 1
	jne	.label_760
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_762
.label_760:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_763
	call	__errno_location
	mov	dword ptr [rax], 0
.label_763:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_761
.label_762:
	mov	dword ptr [rbp - 4], 0
.label_761:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408230

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
	je	.label_764
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_767
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_768
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_765
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_766
.label_768:
	mov	byte ptr [rbp - 5], 0
.label_766:
	jmp	.label_764
.label_764:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082b0

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
	jne	.label_769
	movabs	rax, OFFSET FLAT:label_34
	mov	qword ptr [rbp - 8], rax
.label_769:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_770
	movabs	rax, OFFSET FLAT:label_771
	mov	qword ptr [rbp - 8], rax
.label_770:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408310

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
	jge	.label_775
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_772
.label_775:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_776
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_774
.label_776:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_774
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_774:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_773
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_773:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_772:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_777
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_778
.label_777:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_779
.label_778:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_779:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408440

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
	je	.label_780
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_780:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408480

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
	jne	.label_781
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_781
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_781
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_783
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_782
.label_783:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_782
.label_781:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_782:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408550

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
	ja	.label_784
	jmp	.label_786
.label_786:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_785
.label_784:
	jmp	.label_785
.label_785:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
