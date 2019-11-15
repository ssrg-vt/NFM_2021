	.section	.text
	.align	32
	#Procedure 0x401b40

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_9
	jmp	.label_15
.label_15:
	movabs	rdi, OFFSET FLAT:label_17
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_12
.label_9:
	movabs	rdi, OFFSET FLAT:label_14
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_22
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_16
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_23
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_18
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_24
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_19
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_11
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_20
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_21
	mov	dword ptr [rbp - 0x40], eax
	call	emit_ancillary_info
.label_12:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401d30

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
.label_33:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_32
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_32:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_25
	jmp	.label_34
.label_25:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_33
.label_34:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_35
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_35:
	movabs	rdi, OFFSET FLAT:label_39
	call	gettext
	movabs	rsi, OFFSET FLAT:label_29
	movabs	rdx, OFFSET FLAT:label_30
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
	je	.label_36
	movabs	rsi, OFFSET FLAT:label_28
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_36
	movabs	rdi, OFFSET FLAT:label_37
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_36:
	movabs	rdi, OFFSET FLAT:label_31
	call	gettext
	movabs	rsi, OFFSET FLAT:label_30
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_38
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_26
	movabs	rsi, OFFSET FLAT:label_27
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
	#Procedure 0x401ed0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], 1
	mov	byte ptr [rbp - 0x39], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_26
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_48
	movabs	rsi, OFFSET FLAT:label_49
	mov	qword ptr [rbp - 0x68], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_48
	mov	qword ptr [rbp - 0x70], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdin
	mov	qword ptr [rbp - 0x78], rax
	call	atexit
	lea	rdi, [rbp - 0x38]
	mov	dword ptr [rbp - 0x7c], eax
	call	rm_option_init
	call	priv_set_remove_linkdir
	mov	dword ptr [rbp - 0x80], eax
.label_106:
	movabs	rdx, OFFSET FLAT:label_70
	movabs	rcx, OFFSET FLAT:long_opts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, -1
	je	.label_81
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x84], eax
	mov	dword ptr [rbp - 0x88], ecx
	je	.label_82
	jmp	.label_88
.label_88:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_90
	jmp	.label_96
.label_96:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x90], eax
	je	.label_99
	jmp	.label_109
.label_109:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x94], eax
	je	.label_63
	jmp	.label_44
.label_44:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x98], eax
	je	.label_46
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_53
	jmp	.label_65
.label_65:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_77
	jmp	.label_114
.label_114:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_63
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_73
	jmp	.label_80
.label_80:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0xac], eax
	je	.label_61
	jmp	.label_84
.label_84:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_85
	jmp	.label_91
.label_91:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_83
	jmp	.label_101
.label_101:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_104
	jmp	.label_113
.label_113:
	mov	eax, dword ptr [rbp - 0x84]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_110
	jmp	.label_76
.label_46:
	mov	byte ptr [rbp - 0x2e], 1
	jmp	.label_51
.label_53:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x39], 0
	jmp	.label_51
.label_77:
	mov	dword ptr [rbp - 0x34], 3
	mov	byte ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x39], 0
	jmp	.label_51
.label_99:
	mov	dword ptr [rbp - 0x34], 4
	mov	byte ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x39], 1
	jmp	.label_51
.label_63:
	mov	byte ptr [rbp - 0x2f], 1
	jmp	.label_51
.label_61:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_69
	movabs	rdi, OFFSET FLAT:label_74
	movabs	rdx, OFFSET FLAT:interactive_args
	movabs	rax, OFFSET FLAT:interactive_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + interactive_types]]
	mov	dword ptr [rbp - 0x44], r10d
	jmp	.label_86
.label_69:
	mov	dword ptr [rbp - 0x44], 2
.label_86:
	mov	eax, dword ptr [rbp - 0x44]
	test	eax, eax
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_94
	jmp	.label_102
.label_102:
	mov	eax, dword ptr [rbp - 0xc0]
	sub	eax, 1
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_105
	jmp	.label_93
.label_93:
	mov	eax, dword ptr [rbp - 0xc0]
	sub	eax, 2
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_107
	jmp	.label_50
.label_94:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x39], 0
	jmp	.label_50
.label_105:
	mov	dword ptr [rbp - 0x34], 4
	mov	byte ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x39], 1
	jmp	.label_50
.label_107:
	mov	dword ptr [rbp - 0x34], 3
	mov	byte ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x39], 0
.label_50:
	jmp	.label_51
.label_85:
	mov	byte ptr [rbp - 0x30], 1
	jmp	.label_51
.label_83:
	mov	eax,  dword ptr [dword ptr [optind]]
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:label_62
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_75
	movabs	rdi, OFFSET FLAT:label_78
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_75:
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_51
.label_104:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_45
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	eax, OFFSET FLAT:label_89
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_95
	mov	byte ptr [rbp - 0x20], 1
	jmp	.label_98
.label_95:
	movabs	rdi, OFFSET FLAT:label_103
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_98:
	jmp	.label_45
.label_45:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_51
.label_110:
	mov	byte ptr [rbp - 0x1f], 1
	jmp	.label_51
.label_73:
	mov	byte ptr [rbp - 0x1e], 1
	jmp	.label_51
.label_90:
	xor	edi, edi
	call	usage
.label_82:
	movabs	rsi, OFFSET FLAT:label_21
	movabs	rdx, OFFSET FLAT:label_29
	movabs	r8, OFFSET FLAT:label_57
	movabs	r9, OFFSET FLAT:label_58
	movabs	rax, OFFSET FLAT:label_59
	movabs	rcx, OFFSET FLAT:label_60
	xor	edi, edi
	mov	r10d, edi
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r11,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, r11
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], 0
	mov	al, 0
	mov	qword ptr [rbp - 0xe0], r10
	call	version_etc
	xor	edi, edi
	call	exit
.label_76:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	diagnose_leading_hyphen
	mov	edi, 1
	call	usage
.label_51:
	jmp	.label_106
.label_81:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_108
	test	byte ptr [rbp - 0x38], 1
	je	.label_115
	mov	dword ptr [rbp - 4], 0
	jmp	.label_43
.label_115:
	movabs	rdi, OFFSET FLAT:label_47
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_108:
	test	byte ptr [rbp - 0x2f], 1
	je	.label_56
	test	byte ptr [rbp - 0x11], 1
	je	.label_56
	movabs	rdi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_64
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_72
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe4], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_79
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xe4]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_64:
	jmp	.label_56
.label_56:
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	add	rcx, rdx
	mov	qword ptr [rbp - 0x58], rcx
	test	byte ptr [rbp - 0x39], 1
	je	.label_92
	test	byte ptr [rbp - 0x2f], 1
	jne	.label_112
	mov	eax, 3
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x50]
	jae	.label_92
.label_112:
	mov	rdi,  qword ptr [word ptr [stderr]]
	test	byte ptr [rbp - 0x2f], 1
	mov	qword ptr [rbp - 0xf8], rdi
	je	.label_66
	mov	rdi, qword ptr [rbp - 0x50]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_54
	movabs	rsi, OFFSET FLAT:label_55
	mov	rdx, rax
	call	ngettext
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_97
.label_66:
	mov	rdi, qword ptr [rbp - 0x50]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_67
	movabs	rsi, OFFSET FLAT:label_68
	mov	rdx, rax
	call	ngettext
	mov	qword ptr [rbp - 0x100], rax
.label_97:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x104], eax
	call	yesno
	test	al, 1
	jne	.label_87
	mov	dword ptr [rbp - 4], 0
	jmp	.label_43
.label_87:
	jmp	.label_92
.label_92:
	lea	rsi, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x58]
	call	rm
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 2
	je	.label_100
	cmp	dword ptr [rbp - 0x5c], 3
	je	.label_100
	cmp	dword ptr [rbp - 0x5c], 4
	jne	.label_111
.label_100:
	jmp	.label_116
.label_111:
	movabs	rdi, OFFSET FLAT:label_40
	movabs	rsi, OFFSET FLAT:label_41
	mov	edx, 0x173
	movabs	rcx, OFFSET FLAT:label_42
	call	__assert_fail
.label_116:
	xor	eax, eax
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x5c], 4
	cmove	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_43:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402650

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 4], 4
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0xa], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 9], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x18], 0
	mov	edi, eax
	call	isatty
	cmp	eax, 0
	setne	cl
	mov	rdx, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rdx + 0x19], cl
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x1a], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x1b], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026d0

	.globl diagnose_leading_hyphen
	.type diagnose_leading_hyphen, @function
diagnose_leading_hyphen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 1
.label_119:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_117
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	jne	.label_120
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_120
	lea	rsi, [rbp - 0xb0]
	mov	rdi, qword ptr [rbp - 0x20]
	call	lstat
	cmp	eax, 0
	jne	.label_120
	movabs	rdi, OFFSET FLAT:label_121
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0xb8], rax
	call	gettext
	mov	edi, 1
	mov	esi, 3
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0xc8], rax
	call	quotearg_n_style
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	r8, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_117
.label_120:
	jmp	.label_118
.label_118:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_119
.label_117:
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027f0

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	ja	.label_122
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_123
.label_122:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_123:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402840

	.globl rm
	.type rm, @function
rm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 2
	mov	rsi, qword ptr [rbp - 8]
	cmp	qword ptr [rsi], 0
	je	.label_124
	mov	dword ptr [rbp - 0x18], 0x218
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 8], 1
	je	.label_134
	mov	eax, dword ptr [rbp - 0x18]
	or	eax, 0x40
	mov	dword ptr [rbp - 0x18], eax
.label_134:
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x18]
	call	xfts_open
	mov	qword ptr [rbp - 0x20], rax
.label_142:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fts_read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_132
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_140
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_127
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 0x14], 4
.label_140:
	jmp	.label_139
.label_132:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	call	rm_fts
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 2
	je	.label_125
	cmp	dword ptr [rbp - 0x2c], 3
	je	.label_125
	cmp	dword ptr [rbp - 0x2c], 4
	jne	.label_130
.label_125:
	jmp	.label_133
.label_130:
	movabs	rdi, OFFSET FLAT:label_135
	movabs	rsi, OFFSET FLAT:label_136
	mov	edx, 0x261
	movabs	rcx, OFFSET FLAT:label_137
	call	__assert_fail
.label_133:
	jmp	.label_128
.label_128:
	cmp	dword ptr [rbp - 0x2c], 4
	je	.label_129
	cmp	dword ptr [rbp - 0x2c], 3
	jne	.label_138
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_138
.label_129:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x14], eax
.label_138:
	jmp	.label_141
.label_141:
	jmp	.label_142
.label_139:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fts_close
	cmp	eax, 0
	je	.label_126
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_131
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 0x14], 4
.label_126:
	jmp	.label_124
.label_124:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029e0

	.globl rm_fts
	.type rm_fts, @function
rm_fts:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	movzx	eax, word ptr [rdx + 0x70]
	dec	eax
	mov	edx, eax
	sub	eax, 0xc
	mov	qword ptr [rbp - 0xd8], rdx
	mov	dword ptr [rbp - 0xdc], eax
	ja	.label_147
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_146]]
	jmp	rcx
	.section        .text
	.align  32
	#Procedure 0x402a2a

	.globl sub_402a2a
	.type sub_402a2a, @function
sub_402a2a:
	mov     rax, qword ptr [rbp - 0x20]
	test    byte ptr [rax + 9], 1
	jne     .label_172
	mov     rax, qword ptr [rbp - 0x20]
	test    byte ptr [rax + 0xa], 1
	je      .label_166
	mov     rax, qword ptr [rbp - 0x10]
	mov     edi, dword ptr [rax + 0x2c]
	mov     rax, qword ptr [rbp - 0x18]
	mov     rsi, qword ptr [rax + 0x30]
	call    is_empty_dir
	test    al, 1
	jne     .label_172
.label_166:
	movabs  rdi, OFFSET FLAT:label_173
	mov     eax, 0x15
	mov     ecx, 0x27
	mov     rdx, qword ptr [rbp - 0x20]
	mov     sil, byte ptr [rdx + 0xa]
	test    sil, 1
	cmovne  eax, ecx
	mov     dword ptr [rbp - 0x24], eax
	mov     esi, dword ptr [rbp - 0x24]
	mov     dword ptr [rbp - 0xe0], esi
	call    gettext
	mov     edi, 4
	mov     rdx, qword ptr [rbp - 0x18]
	mov     rsi, qword ptr [rdx + 0x38]
	mov     qword ptr [rbp - 0xe8], rax
	call    quotearg_style
	xor     edi, edi
	mov     esi, dword ptr [rbp - 0xe0]
	mov     rdx, qword ptr [rbp - 0xe8]
	mov     rcx, rax
	mov     al, 0
	call    error
	mov     rdi, qword ptr [rbp - 0x18]
	call    mark_ancestor_dirs
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	call    fts_skip_tree
	mov     dword ptr [rbp - 4], 4
	jmp     .label_148
.label_172:
	mov     rax, qword ptr [rbp - 0x18]
	cmp     qword ptr [rax + 0x58], 0
	jne     .label_175
	mov     rax, qword ptr [rbp - 0x18]
	mov     rdi, qword ptr [rax + 0x30]
	call    last_component
	mov     rdi, rax
	call    dot_or_dotdot
	test    al, 1
	jne     .label_156
	jmp     .label_155
.label_156:
	movabs  rdi, OFFSET FLAT:label_158
	call    gettext
	xor     edi, edi
	mov     esi, 4
	movabs  rdx, OFFSET FLAT:label_164
	mov     qword ptr [rbp - 0xf0], rax
	call    quotearg_n_style
	mov     edi, 1
	mov     esi, 4
	movabs  rdx, OFFSET FLAT:label_160
	mov     qword ptr [rbp - 0xf8], rax
	call    quotearg_n_style
	mov     edi, 2
	mov     esi, 4
	mov     rdx, qword ptr [rbp - 0x18]
	mov     rdx, qword ptr [rdx + 0x38]
	mov     qword ptr [rbp - 0x100], rax
	call    quotearg_n_style
	xor     esi, esi
	mov     edi, esi
	mov     rdx, qword ptr [rbp - 0xf0]
	mov     rcx, qword ptr [rbp - 0xf8]
	mov     r8, qword ptr [rbp - 0x100]
	mov     r9, rax
	mov     al, 0
	call    error
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	call    fts_skip_tree
	mov     dword ptr [rbp - 4], 4
	jmp     .label_148
.label_155:
	mov     rax, qword ptr [rbp - 0x20]
	cmp     qword ptr [rax + 0x10], 0
	je      .label_170
	mov     rax, qword ptr [rbp - 0x18]
	mov     rax, qword ptr [rax + 0x80]
	mov     rcx, qword ptr [rbp - 0x20]
	mov     rcx, qword ptr [rcx + 0x10]
	cmp     rax, qword ptr [rcx]
	jne     .label_170
	mov     rax, qword ptr [rbp - 0x18]
	mov     rax, qword ptr [rax + 0x78]
	mov     rcx, qword ptr [rbp - 0x20]
	mov     rcx, qword ptr [rcx + 0x10]
	cmp     rax, qword ptr [rcx + 8]
	jne     .label_170
	jmp     .label_162
.label_162:
	mov     rax, qword ptr [rbp - 0x18]
	mov     rdi, qword ptr [rax + 0x38]
	mov     ecx, OFFSET FLAT:label_79
	mov     esi, ecx
	call    strcmp
	cmp     eax, 0
	jne     .label_167
	movabs  rdi, OFFSET FLAT:label_177
	call    gettext
	mov     edi, 4
	mov     rcx, qword ptr [rbp - 0x18]
	mov     rsi, qword ptr [rcx + 0x38]
	mov     qword ptr [rbp - 0x108], rax
	call    quotearg_style
	xor     edi, edi
	mov     dword ptr [rbp - 0x10c], edi
	mov     esi, dword ptr [rbp - 0x10c]
	mov     rdx, qword ptr [rbp - 0x108]
	mov     rcx, rax
	mov     al, 0
	call    error
	jmp     .label_161
.label_167:
	movabs  rdi, OFFSET FLAT:label_179
	call    gettext
	xor     edi, edi
	mov     esi, 4
	mov     rcx, qword ptr [rbp - 0x18]
	mov     rdx, qword ptr [rcx + 0x38]
	mov     qword ptr [rbp - 0x118], rax
	call    quotearg_n_style
	mov     edi, 1
	mov     esi, 4
	movabs  rdx, OFFSET FLAT:label_79
	mov     qword ptr [rbp - 0x120], rax
	call    quotearg_n_style
	xor     esi, esi
	mov     edi, esi
	mov     rdx, qword ptr [rbp - 0x118]
	mov     rcx, qword ptr [rbp - 0x120]
	mov     r8, rax
	mov     al, 0
	call    error
.label_161:
	movabs  rdi, OFFSET FLAT:label_159
	call    gettext
	xor     ecx, ecx
	mov     edi, ecx
	mov     esi, ecx
	mov     rdx, rax
	mov     al, 0
	call    error
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	call    fts_skip_tree
	mov     dword ptr [rbp - 4], 4
	jmp     .label_148
.label_170:
	mov     rax, qword ptr [rbp - 0x20]
	test    byte ptr [rax + 0x18], 1
	je      .label_157
	movabs  rsi, OFFSET FLAT:label_160
	xor     eax, eax
	mov     edx, eax
	mov     byte ptr [rbp - 0x25], 0
	mov     rcx, qword ptr [rbp - 0x18]
	mov     rdi, qword ptr [rcx + 0x30]
	call    file_name_concat
	mov     qword ptr [rbp - 0x30], rax
	cmp     qword ptr [rbp - 0x30], 0
	je      .label_169
	lea     rsi, [rbp - 0xc0]
	mov     rdi, qword ptr [rbp - 0x30]
	call    lstat
	cmp     eax, 0
	je      .label_165
.label_169:
	movabs  rdi, OFFSET FLAT:label_174
	call    gettext
	xor     edi, edi
	mov     esi, 4
	mov     rdx, qword ptr [rbp - 0x30]
	mov     qword ptr [rbp - 0x128], rax
	call    quotearg_n_style
	mov     edi, 1
	mov     esi, 4
	mov     rdx, qword ptr [rbp - 0x18]
	mov     rdx, qword ptr [rdx + 0x30]
	mov     qword ptr [rbp - 0x130], rax
	call    quotearg_n_style
	xor     esi, esi
	mov     edi, esi
	mov     rdx, qword ptr [rbp - 0x128]
	mov     rcx, qword ptr [rbp - 0x130]
	mov     r8, rax
	mov     al, 0
	call    error
	mov     byte ptr [rbp - 0x25], 1
.label_165:
	mov     rdi, qword ptr [rbp - 0x30]
	call    free
	test    byte ptr [rbp - 0x25], 1
	jne     .label_171
	mov     rax, qword ptr [rbp - 0x10]
	mov     rax, qword ptr [rax + 0x18]
	cmp     rax, qword ptr [rbp - 0xc0]
	je      .label_180
.label_171:
	test    byte ptr [rbp - 0x25], 1
	jne     .label_178
	movabs  rdi, OFFSET FLAT:label_154
	call    gettext
	mov     edi, 4
	mov     rcx, qword ptr [rbp - 0x18]
	mov     rsi, qword ptr [rcx + 0x38]
	mov     qword ptr [rbp - 0x138], rax
	call    quotearg_style
	xor     edi, edi
	mov     dword ptr [rbp - 0x13c], edi
	mov     esi, dword ptr [rbp - 0x13c]
	mov     rdx, qword ptr [rbp - 0x138]
	mov     rcx, rax
	mov     al, 0
	call    error
	movabs  rdi, OFFSET FLAT:label_168
	call    gettext
	xor     esi, esi
	mov     edi, esi
	mov     rdx, rax
	mov     al, 0
	call    error
.label_178:
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	call    fts_skip_tree
	mov     dword ptr [rbp - 4], 4
	jmp     .label_148
.label_180:
	jmp     .label_157
.label_157:
	jmp     .label_175
.label_175:
	mov     edx, 1
	mov     r8d, 2
	lea     r9, [rbp - 0xc4]
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	mov     rcx, qword ptr [rbp - 0x20]
	call    prompt
	mov     dword ptr [rbp - 0xc8], eax
	cmp     dword ptr [rbp - 0xc8], 2
	jne     .label_163
	cmp     dword ptr [rbp - 0xc4], 4
	jne     .label_163
	mov     ecx, 1
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	mov     rdx, qword ptr [rbp - 0x20]
	call    excise
	mov     dword ptr [rbp - 0xc8], eax
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	call    fts_skip_tree
.label_163:
	cmp     dword ptr [rbp - 0xc8], 2
	je      .label_176
	mov     rdi, qword ptr [rbp - 0x18]
	call    mark_ancestor_dirs
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	call    fts_skip_tree
.label_176:
	mov     eax, dword ptr [rbp - 0xc8]
	mov     dword ptr [rbp - 4], eax
	jmp     .label_148
.label_1499:
	mov     rax, qword ptr [rbp - 0x18]
	movzx   ecx, word ptr [rax + 0x70]
	cmp     ecx, 6
	jne     .label_145
	mov     rax, qword ptr [rbp - 0x20]
	test    byte ptr [rax + 8], 1
	je      .label_145
	xor     eax, eax
	mov     ecx, eax
	mov     rdx, qword ptr [rbp - 0x18]
	cmp     rcx, qword ptr [rdx + 0x58]
	jge     .label_145
	mov     rax, qword ptr [rbp - 0x18]
	mov     rax, qword ptr [rax + 0x78]
	mov     rcx, qword ptr [rbp - 0x10]
	cmp     rax, qword ptr [rcx + 0x18]
	je      .label_145
	mov     rdi, qword ptr [rbp - 0x18]
	call    mark_ancestor_dirs
	movabs  rdi, OFFSET FLAT:label_154
	call    gettext
	mov     edi, 4
	mov     rcx, qword ptr [rbp - 0x18]
	mov     rsi, qword ptr [rcx + 0x38]
	mov     qword ptr [rbp - 0x148], rax
	call    quotearg_style
	xor     edi, edi
	mov     dword ptr [rbp - 0x14c], edi
	mov     esi, dword ptr [rbp - 0x14c]
	mov     rdx, qword ptr [rbp - 0x148]
	mov     rcx, rax
	mov     al, 0
	call    error
	mov     dword ptr [rbp - 4], 4
	jmp     .label_148
.label_145:
	mov     al, 1
	mov     rcx, qword ptr [rbp - 0x18]
	movzx   edx, word ptr [rcx + 0x70]
	cmp     edx, 6
	mov     byte ptr [rbp - 0x14d], al
	je      .label_143
	mov     rax, qword ptr [rbp - 0x18]
	movzx   ecx, word ptr [rax + 0x70]
	cmp     ecx, 4
	sete    dl
	mov     byte ptr [rbp - 0x14d], dl
.label_143:
	mov     al, byte ptr [rbp - 0x14d]
	mov     r8d, 3
	xor     ecx, ecx
	mov     r9d, ecx
	and     al, 1
	mov     byte ptr [rbp - 0xc9], al
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	mov     al, byte ptr [rbp - 0xc9]
	mov     rcx, qword ptr [rbp - 0x20]
	and     al, 1
	movzx   edx, al
	call    prompt
	mov     dword ptr [rbp - 0xd0], eax
	cmp     dword ptr [rbp - 0xd0], 2
	je      .label_149
	mov     eax, dword ptr [rbp - 0xd0]
	mov     dword ptr [rbp - 4], eax
	jmp     .label_148
.label_149:
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	mov     rdx, qword ptr [rbp - 0x20]
	mov     al, byte ptr [rbp - 0xc9]
	and     al, 1
	movzx   ecx, al
	call    excise
	mov     dword ptr [rbp - 4], eax
	jmp     .label_148
.label_1498:
	jmp     .label_152
.label_152:
	movabs  rdi, OFFSET FLAT:label_153
	call    gettext
	xor     edi, edi
	mov     esi, 3
	mov     rcx, qword ptr [rbp - 0x18]
	mov     rdx, qword ptr [rcx + 0x38]
	mov     qword ptr [rbp - 0x158], rax
	call    quotearg_n_style_colon
	xor     esi, esi
	mov     edi, esi
	mov     rdx, qword ptr [rbp - 0x158]
	mov     rcx, rax
	mov     al, 0
	call    error
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	call    fts_skip_tree
	mov     dword ptr [rbp - 4], 4
	jmp     .label_148
.label_1500:
	movabs  rdi, OFFSET FLAT:label_144
	mov     rax, qword ptr [rbp - 0x18]
	mov     esi, dword ptr [rax + 0x40]
	mov     dword ptr [rbp - 0x15c], esi
	call    gettext
	xor     edi, edi
	mov     esi, 3
	mov     rcx, qword ptr [rbp - 0x18]
	mov     rdx, qword ptr [rcx + 0x38]
	mov     qword ptr [rbp - 0x168], rax
	call    quotearg_n_style_colon
	xor     edi, edi
	mov     esi, dword ptr [rbp - 0x15c]
	mov     rdx, qword ptr [rbp - 0x168]
	mov     rcx, rax
	mov     al, 0
	call    error
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	call    fts_skip_tree
	mov     dword ptr [rbp - 4], 4
	jmp     .label_148
.label_147:
	movabs  rdi, OFFSET FLAT:label_150
	call    gettext
	xor     edi, edi
	mov     esi, 3
	mov     rcx, qword ptr [rbp - 0x18]
	movzx   ecx, word ptr [rcx + 0x70]
	mov     rdx, qword ptr [rbp - 0x18]
	mov     rdx, qword ptr [rdx + 0x38]
	mov     qword ptr [rbp - 0x170], rax
	mov     dword ptr [rbp - 0x174], ecx
	call    quotearg_n_style_colon
	xor     ecx, ecx
	movabs  r9, OFFSET FLAT:label_151
	mov     edi, ecx
	mov     esi, ecx
	mov     rdx, qword ptr [rbp - 0x170]
	mov     ecx, dword ptr [rbp - 0x174]
	mov     r8, rax
	mov     al, 0
	call    error
	call    abort
.label_148:
	mov     eax, dword ptr [rbp - 4]
	add     rsp, 0x180
	pop     rbp
	ret
	.section        .text
	.align  32
	#Procedure 0x4031a1
	.globl sub_4031a1
	.type sub_4031a1, @function
sub_4031a1:

	nop     word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031b0

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	edx, 0x30900
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	openat
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_183
	mov	byte ptr [rbp - 1], 0
	jmp	.label_182
.label_183:
	mov	edi, dword ptr [rbp - 0x28]
	call	fdopendir
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_181
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	byte ptr [rbp - 1], 0
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_182
.label_181:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	readdir_ignoring_dot_and_dotdot
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x18]
	call	closedir
	cmp	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x30], eax
	je	.label_184
	mov	byte ptr [rbp - 1], 0
	jmp	.label_182
.label_184:
	xor	eax, eax
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x24], 0
	cmove	eax, ecx
	cmp	eax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_182:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403280

	.globl mark_ancestor_dirs
	.type mark_ancestor_dirs, @function
mark_ancestor_dirs:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_187:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 0x58]
	jg	.label_185
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_186
	jmp	.label_185
.label_186:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_187
.label_185:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032e0

	.globl fts_skip_tree
	.type fts_skip_tree, @function
fts_skip_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edx, 4
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rpl_fts_set
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x1c], eax
	call	rpl_fts_read
	mov	qword ptr [rbp - 0x18], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403320

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_188
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdi + rcx]
	mov	byte ptr [rbp - 0x11], sil
	cmp	byte ptr [rbp - 0x11], 0
	mov	byte ptr [rbp - 0x12], al
	je	.label_189
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0x2f
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_189:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_190
.label_188:
	mov	byte ptr [rbp - 1], 0
.label_190:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033a0

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x2c]
	mov	dword ptr [rbp - 0x3c], edx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x38]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x50], rcx
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_202
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
.label_202:
	lea	rax, [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rdi, qword ptr [rbp - 0xe8]
	call	cache_stat_init
	xor	ecx, ecx
	mov	edx, 4
	mov	sil, byte ptr [rbp - 0x19]
	test	sil, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0xec], ecx
	mov	dword ptr [rbp - 0xf0], 0
	mov	byte ptr [rbp - 0xf1], 0
	cmp	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x108], rax
	je	.label_198
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x50]
	call	is_empty_dir
	mov	edi, 3
	mov	ecx, 4
	and	al, 1
	mov	byte ptr [rbp - 0xf1], al
	mov	al, byte ptr [rbp - 0xf1]
	test	al, 1
	cmovne	edi, ecx
	mov	rsi, qword ptr [rbp - 0x38]
	mov	dword ptr [rsi], edi
.label_198:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_191
	mov	dword ptr [rbp - 4], 3
	jmp	.label_195
.label_191:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 5
	jne	.label_206
	mov	dword ptr [rbp - 4], 2
	jmp	.label_195
.label_206:
	mov	dword ptr [rbp - 0xf8], 0
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax], 1
	jne	.label_211
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 3
	je	.label_218
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x19], 1
	je	.label_211
.label_218:
	cmp	dword ptr [rbp - 0xec], 0xa
	je	.label_211
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	write_protected_non_symlink
	mov	dword ptr [rbp - 0xf0], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf8], edi
.label_211:
	cmp	dword ptr [rbp - 0xf0], 0
	jne	.label_200
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 3
	jne	.label_220
.label_200:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xf0]
	jg	.label_212
	cmp	dword ptr [rbp - 0xec], 0
	jne	.label_212
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	cache_fstatat
	cmp	eax, 0
	jne	.label_221
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_223
	mov	dword ptr [rbp - 0xec], 0xa
	jmp	.label_194
.label_223:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_201
	mov	dword ptr [rbp - 0xec], 4
.label_201:
	jmp	.label_194
.label_194:
	jmp	.label_216
.label_221:
	mov	dword ptr [rbp - 0xf0], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
.label_216:
	jmp	.label_212
.label_212:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xf0]
	jg	.label_203
	mov	eax, dword ptr [rbp - 0xec]
	mov	ecx, eax
	sub	ecx, 4
	mov	dword ptr [rbp - 0x10c], eax
	mov	dword ptr [rbp - 0x110], ecx
	je	.label_224
	jmp	.label_197
.label_197:
	mov	eax, dword ptr [rbp - 0x10c]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x114], eax
	jne	.label_199
	jmp	.label_209
.label_209:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 3
	je	.label_210
	mov	dword ptr [rbp - 4], 2
	jmp	.label_195
.label_210:
	jmp	.label_199
.label_224:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 9], 1
	jne	.label_219
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0xa], 1
	je	.label_215
	test	byte ptr [rbp - 0xf1], 1
	jne	.label_219
.label_215:
	mov	dword ptr [rbp - 0xf0], 0xffffffff
	mov	dword ptr [rbp - 0xf8], 0x15
.label_219:
	jmp	.label_199
.label_199:
	jmp	.label_203
.label_203:
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	mov	qword ptr [rbp - 0x100], rax
	cmp	dword ptr [rbp - 0xf0], 0
	jge	.label_205
	movabs	rdi, OFFSET FLAT:label_173
	mov	esi, dword ptr [rbp - 0xf8]
	mov	dword ptr [rbp - 0x118], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x118]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 4], 4
	jmp	.label_195
.label_205:
	cmp	dword ptr [rbp - 0xec], 4
	jne	.label_196
	cmp	dword ptr [rbp - 0x2c], 2
	jne	.label_196
	test	byte ptr [rbp - 0xf1], 1
	jne	.label_196
	mov	rdi,  qword ptr [word ptr [stderr]]
	cmp	dword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0x120], rdi
	je	.label_208
	movabs	rdi, OFFSET FLAT:label_222
	call	gettext
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_214
.label_208:
	movabs	rdi, OFFSET FLAT:label_193
	call	gettext
	mov	qword ptr [rbp - 0x128], rax
.label_214:
	mov	rax, qword ptr [rbp - 0x128]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rdi, qword ptr [rbp - 0x120]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x12c], eax
	jmp	.label_225
.label_196:
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	cache_fstatat
	cmp	eax, 0
	je	.label_217
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_173
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x130], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x100]
	mov	esi, dword ptr [rbp - 0x130]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 4], 4
	jmp	.label_195
.label_217:
	mov	rdi,  qword ptr [word ptr [stderr]]
	cmp	dword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0x138], rdi
	je	.label_192
	movabs	rdi, OFFSET FLAT:label_207
	call	gettext
	mov	qword ptr [rbp - 0x140], rax
	jmp	.label_204
.label_192:
	movabs	rdi, OFFSET FLAT:label_213
	call	gettext
	mov	qword ptr [rbp - 0x140], rax
.label_204:
	mov	rax, qword ptr [rbp - 0x140]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x148], rax
	mov	qword ptr [rbp - 0x150], rdx
	call	file_type
	mov	r8, qword ptr [rbp - 0x100]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x154], eax
.label_225:
	call	yesno
	test	al, 1
	jne	.label_226
	mov	dword ptr [rbp - 4], 3
	jmp	.label_195
.label_226:
	jmp	.label_220
.label_220:
	mov	dword ptr [rbp - 4], 2
.label_195:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038e0

	.globl excise
	.type excise, @function
excise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	al, cl
	xor	ecx, ecx
	mov	r8d, 0x200
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	cmovne	ecx, r8d
	mov	dword ptr [rbp - 0x28], ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rdx + 0x2c]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x30]
	mov	edx, dword ptr [rbp - 0x28]
	call	unlinkat
	cmp	eax, 0
	jne	.label_229
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x1a], 1
	je	.label_232
	test	byte ptr [rbp - 0x21], 1
	je	.label_234
	movabs	rdi, OFFSET FLAT:label_235
	call	gettext
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_237
.label_234:
	movabs	rdi, OFFSET FLAT:label_239
	call	gettext
	mov	qword ptr [rbp - 0xc0], rax
.label_237:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	qword ptr [rbp - 0xc8], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xcc], eax
.label_232:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_231
.label_229:
	call	__errno_location
	cmp	dword ptr [rax], 0x1e
	jne	.label_228
	lea	rdx, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x30]
	call	lstatat
	cmp	eax, 0
	je	.label_240
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_241
.label_240:
	call	__errno_location
	mov	dword ptr [rax], 0x1e
.label_241:
	jmp	.label_228
.label_228:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd8], rdi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 0xd8]
	call	ignorable_missing
	test	al, 1
	jne	.label_230
	jmp	.label_233
.label_230:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_231
.label_233:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	jne	.label_227
	call	__errno_location
	cmp	dword ptr [rax], 0x27
	je	.label_238
	call	__errno_location
	cmp	dword ptr [rax], 0x15
	je	.label_238
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	je	.label_238
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	jne	.label_227
.label_238:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x40], 1
	je	.label_236
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x40], 0xd
	jne	.label_227
.label_236:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x40]
	mov	dword ptr [rbp - 0xdc], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rax], ecx
.label_227:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_173
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	qword ptr [rbp - 0xe8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x18]
	call	mark_ancestor_dirs
	mov	dword ptr [rbp - 4], 4
.label_231:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_243:
	mov	rdi, qword ptr [rbp - 8]
	call	readdir
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_242
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x13
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, 1
	jne	.label_244
.label_242:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
.label_244:
	jmp	.label_243
	.section	.text
	.align	32
	#Procedure 0x403b80

	.globl cache_stat_init
	.type cache_stat_init, @function
cache_stat_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x30], -1
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ba0

	.globl write_protected_non_symlink
	.type write_protected_non_symlink, @function
write_protected_non_symlink:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	call	can_write_any_file
	test	al, 1
	jne	.label_249
	jmp	.label_245
.label_249:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_246
.label_245:
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	cache_fstatat
	cmp	eax, 0
	je	.label_247
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_246
.label_247:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_250
	mov	dword ptr [rbp - 4], 0
	jmp	.label_246
.label_250:
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	faccessat
	cmp	eax, 0
	jne	.label_248
	mov	dword ptr [rbp - 4], 0
	jmp	.label_246
.label_248:
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	edx, 1
	cmp	dword ptr [rax], 0xd
	cmove	ecx, edx
	mov	dword ptr [rbp - 4], ecx
.label_246:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c70

	.globl cache_fstatat
	.type cache_fstatat, @function
cache_fstatat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 0x30], -1
	jne	.label_251
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	fstatat
	cmp	eax, 0
	je	.label_251
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x30], -2
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
.label_251:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rdx + 0x30]
	jg	.label_252
	mov	dword ptr [rbp - 4], 0
	jmp	.label_253
.label_252:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x20], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
.label_253:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d20

	.globl ignorable_missing
	.type ignorable_missing, @function
ignorable_missing:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi], 1
	mov	byte ptr [rbp - 0xd], cl
	je	.label_254
	mov	edi, dword ptr [rbp - 0xc]
	call	nonexistent_file_errno
	mov	byte ptr [rbp - 0xd], al
.label_254:
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d60

	.globl nonexistent_file_errno
	.type nonexistent_file_errno, @function
nonexistent_file_errno:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 2
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	je	.label_255
	jmp	.label_258
.label_258:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x14
	mov	dword ptr [rbp - 0x14], eax
	je	.label_255
	jmp	.label_260
.label_260:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x16
	mov	dword ptr [rbp - 0x18], eax
	je	.label_255
	jmp	.label_256
.label_256:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_257
	jmp	.label_255
.label_255:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_259
.label_257:
	mov	byte ptr [rbp - 1], 0
.label_259:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403dd0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x403de0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_271:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_266
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_263
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_268
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_262
.label_268:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_270
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_261
.label_270:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_265
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_264
.label_265:
	mov	byte ptr [rbp - 0x41], 1
.label_264:
	jmp	.label_261
.label_261:
	jmp	.label_267
.label_267:
	jmp	.label_263
.label_263:
	jmp	.label_269
.label_269:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_271
.label_266:
	test	byte ptr [rbp - 0x41], 1
	je	.label_272
	mov	qword ptr [rbp - 8], -2
	jmp	.label_262
.label_272:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_262:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f30

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_273
	movabs	rdi, OFFSET FLAT:label_276
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_275
.label_273:
	movabs	rdi, OFFSET FLAT:label_274
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_275:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fd0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_283
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_279:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_285
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_281
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_280
.label_281:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_277
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_284
.label_280:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_278
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_284:
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_279
.label_285:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404120

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_287
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_286
.label_287:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_286:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041b0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_291:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_288
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_290
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_292
.label_290:
	jmp	.label_289
.label_289:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_291
.label_288:
	mov	qword ptr [rbp - 8], 0
.label_292:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404250
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404270

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	byte ptr [rbp - 1], 0
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	freadahead
	cmp	rax, 0
	jbe	.label_295
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fseeko
	cmp	eax, 0
	jne	.label_299
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_299
	mov	byte ptr [rbp - 1], 1
.label_299:
	jmp	.label_295
.label_295:
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	close_stream
	cmp	eax, 0
	je	.label_298
	mov	byte ptr [rbp - 1], 1
.label_298:
	test	byte ptr [rbp - 1], 1
	je	.label_294
	movabs	rdi, OFFSET FLAT:label_301
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_293
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0x14], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_300
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_296
.label_293:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_297
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	error
.label_296:
	jmp	.label_294
.label_294:
	call	close_stdout
	test	byte ptr [rbp - 1], 1
	je	.label_302
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_302:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name_0]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043c0
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
	#Procedure 0x4043e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_305
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_308
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_305
.label_308:
	movabs	rdi, OFFSET FLAT:label_307
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name_0]],  0
	je	.label_303
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name_0]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_300
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_304
.label_303:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_297
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_304:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_305:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_306
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_306:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044d0

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_314:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_309
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_314
.label_309:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_315:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_311
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_316
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_310
.label_316:
	test	byte ptr [rbp - 0x19], 1
	je	.label_313
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_313:
	jmp	.label_310
.label_310:
	jmp	.label_312
.label_312:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_315
.label_311:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404570

	.globl base_len
	.type base_len, @function
base_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
.label_319:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_317
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_317:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_318
	jmp	.label_321
.label_318:
	jmp	.label_320
.label_320:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_319
.label_321:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404600

	.globl file_type
	.type file_type, @function
file_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_322
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_335
	movabs	rdi, OFFSET FLAT:label_338
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_323
.label_335:
	movabs	rdi, OFFSET FLAT:label_328
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_323:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_330
.label_322:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_336
	movabs	rdi, OFFSET FLAT:label_324
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_330
.label_336:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_334
	movabs	rdi, OFFSET FLAT:label_342
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_330
.label_334:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_329
	movabs	rdi, OFFSET FLAT:label_332
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_330
.label_329:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_345
	movabs	rdi, OFFSET FLAT:label_333
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_330
.label_345:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_346
	movabs	rdi, OFFSET FLAT:label_327
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_330
.label_346:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	jne	.label_339
	movabs	rdi, OFFSET FLAT:label_343
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_330
.label_339:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	jne	.label_344
	movabs	rdi, OFFSET FLAT:label_326
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_330
.label_344:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x1000
	jne	.label_341
	movabs	rdi, OFFSET FLAT:label_331
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_330
.label_341:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xc000
	jne	.label_337
	movabs	rdi, OFFSET FLAT:label_325
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_330
.label_337:
	movabs	rdi, OFFSET FLAT:label_340
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_330:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404840

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	mfile_name_concat
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_347
	call	xalloc_die
.label_347:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404890

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x41], 0
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_351
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_349
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_349
	mov	byte ptr [rbp - 0x41], 0x2f
.label_349:
	jmp	.label_352
.label_351:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_354
	mov	byte ptr [rbp - 0x41], 0x2e
.label_354:
	jmp	.label_352
.label_352:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rbp - 0x41]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_348
	mov	qword ptr [rbp - 8], 0
	jmp	.label_350
.label_348:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	cl, byte ptr [rbp - 0x41]
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x41]
	cmp	r8d, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	mov	rax, qword ptr [rbp - 0x58]
	movsxd	rdx, r8d
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_353
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_353:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_350:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a10

	.globl priv_set_remove_linkdir
	.type priv_set_remove_linkdir, @function
priv_set_remove_linkdir:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffffff
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a20
	.globl priv_set_restore_linkdir
	.type priv_set_restore_linkdir, @function
priv_set_restore_linkdir:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffffff
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a30

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_358
	movabs	rdi, OFFSET FLAT:label_357
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_358:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_360
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_355
.label_360:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_355:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_362
	movabs	rsi, OFFSET FLAT:label_361
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_362
	movabs	rsi, OFFSET FLAT:label_359
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_356
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_356:
	jmp	.label_362
.label_362:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b50
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
	je	.label_363
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_364
.label_363:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_364
.label_364:
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
	#Procedure 0x404bd0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_365
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_366
.label_365:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c10
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
	je	.label_367
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_368
.label_367:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c60

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
	je	.label_369
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_370
.label_369:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_370
.label_370:
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
	#Procedure 0x404d10
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_371
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_371:
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
	#Procedure 0x404d50

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
	jne	.label_372
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_372:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_374
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_373
.label_374:
	call	abort
.label_373:
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
	#Procedure 0x404dc0
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
	je	.label_375
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_376
.label_375:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_376
.label_376:
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
	#Procedure 0x404e90

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
.label_433:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_532
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_555]]
	jmp	rcx
.label_1506:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1505:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_405
	jmp	.label_547
.label_547:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_548
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_548:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_405
.label_405:
	movabs	rax, OFFSET FLAT:label_464
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_408
.label_1507:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_408
.label_1508:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_558
	movabs	rdi, OFFSET FLAT:label_570
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_427
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_558:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_403
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_397:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_380
	jmp	.label_385
.label_385:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_387
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_387:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_393
.label_393:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_397
.label_380:
	jmp	.label_403
.label_403:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_408
.label_1503:
	mov	byte ptr [rbp - 0x79], 1
.label_1502:
	mov	byte ptr [rbp - 0x7b], 1
.label_1504:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_414
	mov	byte ptr [rbp - 0x79], 1
.label_414:
	jmp	.label_407
.label_407:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_423
	jmp	.label_419
.label_419:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_420
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_420:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_423
.label_423:
	movabs	rax, OFFSET FLAT:label_427
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_408
.label_1501:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_408
.label_532:
	call	abort
.label_408:
	mov	qword ptr [rbp - 0x58], 0
.label_395:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_437
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_440
.label_437:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_440:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_451
	jmp	.label_458
.label_451:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_459
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_459
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_459
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_469
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_469
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_500
.label_469:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_500:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_459
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_459
	test	byte ptr [rbp - 0x7b], 1
	je	.label_489
	jmp	.label_406
.label_489:
	mov	byte ptr [rbp - 0x81], 1
.label_459:
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
	ja	.label_494
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_499]]
	jmp	rcx
.label_1510:
	test	byte ptr [rbp - 0x79], 1
	je	.label_501
	jmp	.label_544
.label_544:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_550
	jmp	.label_406
.label_550:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_512
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_512
	jmp	.label_514
.label_514:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_515
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_515:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_519
.label_519:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_465
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_465:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_526
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_530
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_530:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_512:
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_540
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_540:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_546
.label_546:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_379
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_379
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_379
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_379
	jmp	.label_564
.label_564:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_566
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_566:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_573
.label_573:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_577
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_577:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_379
.label_379:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_386
.label_501:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_389
	jmp	.label_391
.label_389:
	jmp	.label_386
.label_386:
	jmp	.label_392
.label_1521:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_394
	jmp	.label_401
.label_401:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_404
	jmp	.label_516
.label_394:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_521
	jmp	.label_406
.label_521:
	jmp	.label_413
.label_404:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_415
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_415
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_415
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_381
	jmp	.label_430
.label_430:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_381
	jmp	.label_435
.label_435:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_381
	jmp	.label_441
.label_441:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_381
	jmp	.label_445
.label_445:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_446
	jmp	.label_381
.label_381:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_454
	jmp	.label_406
.label_454:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_457
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_457:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_467
.label_467:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_471
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_471:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_475
.label_475:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_535
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_535:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_483
.label_483:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_561
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_561:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_486
.label_446:
	jmp	.label_486
.label_486:
	jmp	.label_415
.label_415:
	jmp	.label_413
.label_516:
	jmp	.label_413
.label_413:
	jmp	.label_392
.label_1511:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_495
.label_1512:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_495
.label_1516:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_495
.label_1514:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_498
.label_1517:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_498
.label_1513:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_498
.label_1515:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_495
.label_1522:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_504
	test	byte ptr [rbp - 0x7b], 1
	je	.label_507
	jmp	.label_406
.label_507:
	jmp	.label_488
.label_504:
	test	byte ptr [rbp - 0x79], 1
	je	.label_511
	test	byte ptr [rbp - 0x7b], 1
	je	.label_511
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_511
	jmp	.label_488
.label_511:
	jmp	.label_498
.label_498:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_517
	test	byte ptr [rbp - 0x7b], 1
	je	.label_517
	jmp	.label_406
.label_517:
	jmp	.label_495
.label_495:
	test	byte ptr [rbp - 0x79], 1
	je	.label_524
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_506
.label_524:
	jmp	.label_392
.label_1523:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_528
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_531
	jmp	.label_534
.label_528:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_531
.label_534:
	jmp	.label_392
.label_531:
	jmp	.label_537
.label_537:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_539
	jmp	.label_392
.label_539:
	jmp	.label_542
.label_542:
	mov	byte ptr [rbp - 0x83], 1
.label_1518:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_545
	test	byte ptr [rbp - 0x7b], 1
	je	.label_545
	jmp	.label_406
.label_545:
	jmp	.label_392
.label_1520:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_551
	test	byte ptr [rbp - 0x7b], 1
	je	.label_556
	jmp	.label_406
.label_556:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_478
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_478
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_478:
	jmp	.label_568
.label_568:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_518
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_518:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_575
.label_575:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_579
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_579:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_383
.label_383:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_390
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_390:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_551:
	jmp	.label_392
.label_1519:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_392
.label_494:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_493
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
	jmp	.label_412
.label_493:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_422
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_422:
	jmp	.label_432
.label_432:
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
	jne	.label_443
	jmp	.label_452
.label_443:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_450
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_452
.label_450:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_402
	mov	byte ptr [rbp - 0x91], 0
.label_476:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_460
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_460:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_473
	jmp	.label_474
.label_473:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_476
.label_474:
	jmp	.label_452
.label_402:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_481
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_481
	mov	qword ptr [rbp - 0xb8], 1
.label_513:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_484
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
	jb	.label_485
	jmp	.label_496
.label_496:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_485
	jmp	.label_509
.label_509:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_485
	jmp	.label_503
.label_503:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_505
	jmp	.label_485
.label_485:
	jmp	.label_406
.label_505:
	jmp	.label_384
.label_384:
	jmp	.label_572
.label_572:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_513
.label_484:
	jmp	.label_481
.label_481:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_520
	mov	byte ptr [rbp - 0x91], 0
.label_520:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_523
.label_523:
	jmp	.label_491
.label_491:
	jmp	.label_527
.label_527:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_432
.label_452:
	jmp	.label_412
.label_412:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_536
	test	byte ptr [rbp - 0x79], 1
	je	.label_399
	test	byte ptr [rbp - 0x91], 1
	jne	.label_399
.label_536:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_576:
	test	byte ptr [rbp - 0x79], 1
	je	.label_552
	test	byte ptr [rbp - 0x91], 1
	jne	.label_552
	jmp	.label_557
.label_557:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_559
	jmp	.label_406
.label_559:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_563
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_563
	jmp	.label_567
.label_567:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_569
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_569:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_574
.label_574:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_578
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_578:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_382
.label_382:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_388
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_388:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_563:
	jmp	.label_396
.label_396:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_398
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_398:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_502
.label_502:
	jmp	.label_410
.label_410:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_411
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_411:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_418
.label_418:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_421
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_421:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_428
.label_552:
	test	byte ptr [rbp - 0x81], 1
	je	.label_434
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_438
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_438:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_434:
	jmp	.label_428
.label_428:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_448
	jmp	.label_453
.label_448:
	jmp	.label_455
.label_455:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_417
	test	byte ptr [rbp - 0x82], 1
	jne	.label_417
	jmp	.label_461
.label_461:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_462
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_462:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_466
.label_466:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_470
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_470:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_417:
	jmp	.label_477
.label_477:
	jmp	.label_479
.label_479:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_480
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_480:
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
	jmp	.label_576
.label_453:
	jmp	.label_488
.label_399:
	jmp	.label_392
.label_392:
	test	byte ptr [rbp - 0x79], 1
	je	.label_490
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_492
.label_490:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_468
.label_492:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_468
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
	jne	.label_487
.label_468:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_487
	jmp	.label_488
.label_487:
	jmp	.label_506
.label_506:
	jmp	.label_508
.label_508:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_510
	jmp	.label_406
.label_510:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_482
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_482
	jmp	.label_424
.label_424:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_431
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_431:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_522
.label_522:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_525
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_525:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_533
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_533:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_482:
	jmp	.label_541
.label_541:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_543
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_543:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_549
.label_549:
	jmp	.label_488
.label_488:
	jmp	.label_553
.label_553:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_554
	test	byte ptr [rbp - 0x82], 1
	jne	.label_554
	jmp	.label_560
.label_560:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_562
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_562:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_571
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_571:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_554:
	jmp	.label_580
.label_580:
	jmp	.label_377
.label_377:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_378
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_378:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_425
	mov	byte ptr [rbp - 0x7e], 0
.label_425:
	jmp	.label_391
.label_391:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_395
.label_458:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_400
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_400
	test	byte ptr [rbp - 0x7b], 1
	je	.label_400
	jmp	.label_406
.label_400:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_409
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_409
	test	byte ptr [rbp - 0x7d], 1
	je	.label_409
	test	byte ptr [rbp - 0x7e], 1
	je	.label_416
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
	jmp	.label_426
.label_416:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_429
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_429
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_433
.label_429:
	jmp	.label_497
.label_497:
	jmp	.label_409
.label_409:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_439
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_439
	jmp	.label_442
.label_442:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_444
	jmp	.label_447
.label_447:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_449
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_449:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_456
.label_456:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_442
.label_444:
	jmp	.label_439
.label_439:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_463
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_463:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_426
.label_406:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_472
	test	byte ptr [rbp - 0x79], 1
	je	.label_472
	mov	dword ptr [rbp - 0x34], 4
.label_472:
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
.label_426:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406230
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
	#Procedure 0x406270

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
	je	.label_581
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_582
.label_581:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_582
.label_582:
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
	je	.label_583
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_583:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4063d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_586:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_587
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_586
.label_587:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_588
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_585]],  rax
.label_588:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_584
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_584:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064b0

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
	#Procedure 0x4064f0

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
	jge	.label_589
	call	abort
.label_589:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_593
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_596
	call	xalloc_die
.label_596:
	test	byte ptr [rbp - 0x31], 1
	je	.label_592
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_595
.label_592:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_595:
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
	je	.label_594
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_585]]
	mov	qword ptr [rax + 8], rcx
.label_594:
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
.label_593:
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
	ja	.label_590
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_591
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_591:
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
.label_590:
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
	#Procedure 0x406770

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
	#Procedure 0x4067b0
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
	#Procedure 0x4067d0
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
	#Procedure 0x406800

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
	#Procedure 0x406840

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
	jne	.label_597
	call	abort
.label_597:
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
	#Procedure 0x4068b0

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
	#Procedure 0x4068f0

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
	#Procedure 0x406920
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
	#Procedure 0x406950

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
	#Procedure 0x4069d0

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
	#Procedure 0x406a00

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
	#Procedure 0x406a20
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
	#Procedure 0x406a50

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
	#Procedure 0x406b00

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
	#Procedure 0x406b40

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
	#Procedure 0x406bc0
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
	#Procedure 0x406bf0
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
	#Procedure 0x406c30

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
	#Procedure 0x406c70
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
	#Procedure 0x406ca0

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
	#Procedure 0x406cd0

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
	#Procedure 0x406cf0

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
	je	.label_599
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_604
.label_599:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_600
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_598
	movabs	rax, OFFSET FLAT:label_602
	movabs	rcx, OFFSET FLAT:label_603
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_604
.label_598:
	movabs	rsi, OFFSET FLAT:label_607
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_601
	movabs	rax, OFFSET FLAT:label_605
	movabs	rcx, OFFSET FLAT:label_606
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_604
.label_601:
	movabs	rax, OFFSET FLAT:label_427
	movabs	rcx, OFFSET FLAT:label_464
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_604:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406df0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	movabs	rax, OFFSET FLAT:label_79
	lea	rsi, [rbp - 0xa0]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	lstat
	cmp	eax, 0
	je	.label_608
	mov	qword ptr [rbp - 8], 0
	jmp	.label_609
.label_608:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_609:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e60
	.globl statat
	.type statat, @function
statat:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	ecx, ecx
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fstatat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e90

	.globl lstatat
	.type lstatat, @function
lstatat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ecx, 0x100
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fstatat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ec0

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
	je	.label_610
	movabs	rsi, OFFSET FLAT:label_626
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_617
.label_610:
	movabs	rsi, OFFSET FLAT:label_618
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_617:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_627
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
	mov	ecx, OFFSET FLAT:label_621
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
	ja	.label_614
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_622]]
	jmp	rcx
.label_1447:
	jmp	.label_613
.label_1448:
	movabs	rdi, OFFSET FLAT:label_628
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
	jmp	.label_613
.label_1449:
	movabs	rdi, OFFSET FLAT:label_625
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
	jmp	.label_613
.label_1450:
	movabs	rdi, OFFSET FLAT:label_624
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
	jmp	.label_613
.label_1451:
	movabs	rdi, OFFSET FLAT:label_620
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
	jmp	.label_613
.label_1452:
	movabs	rdi, OFFSET FLAT:label_616
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
	jmp	.label_613
.label_1453:
	movabs	rdi, OFFSET FLAT:label_611
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
	jmp	.label_613
.label_1454:
	movabs	rdi, OFFSET FLAT:label_615
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
	jmp	.label_613
.label_1455:
	movabs	rdi, OFFSET FLAT:label_623
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
	jmp	.label_613
.label_1456:
	movabs	rdi, OFFSET FLAT:label_619
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
	jmp	.label_613
.label_614:
	movabs	rdi, OFFSET FLAT:label_612
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
.label_613:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407480
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
.label_631:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_629
	jmp	.label_630
.label_630:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_631
.label_629:
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
	#Procedure 0x4074f0

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
.label_632:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_637
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_635
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_633
.label_635:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_633:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_637:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_634
	jmp	.label_638
.label_634:
	jmp	.label_636
.label_636:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_632
.label_638:
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
	#Procedure 0x407600

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
	je	.label_639
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
.label_639:
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
	#Procedure 0x407770
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_640
	call	gettext
	movabs	rsi, OFFSET FLAT:label_151
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_642
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_29
	movabs	rdx, OFFSET FLAT:label_30
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_641
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
	#Procedure 0x407800

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [can_write_any_file.initialized]],  1
	jne	.label_643
	mov	byte ptr [rbp - 1], 0
	call	geteuid
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	mov	cl, byte ptr [rbp - 1]
	and	cl, 1
	mov	byte ptr [byte ptr [can_write_any_file.can_write]],  cl
	mov	byte ptr [byte ptr [can_write_any_file.initialized]],  1
.label_643:
	mov	al,  byte ptr [byte ptr [can_write_any_file.can_write]]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407860
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
	jae	.label_644
	call	xalloc_die
.label_644:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078b0

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
	jne	.label_645
	cmp	qword ptr [rbp - 8], 0
	je	.label_645
	call	xalloc_die
.label_645:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078f0
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
	jae	.label_646
	call	xalloc_die
.label_646:
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
	#Procedure 0x407940

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_647
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_647
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_649
.label_647:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_648
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_648
	call	xalloc_die
.label_648:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_649:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079c0

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
	jne	.label_650
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_653
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
.label_653:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_651
	call	xalloc_die
.label_651:
	jmp	.label_652
.label_650:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_654
	call	xalloc_die
.label_654:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_652:
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
	#Procedure 0x407ab0

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
	#Procedure 0x407ad0
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
	#Procedure 0x407b00
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
	#Procedure 0x407b40
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
	jb	.label_655
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_656
.label_655:
	call	xalloc_die
.label_656:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ba0

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
	#Procedure 0x407be0
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
	#Procedure 0x407c20

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_657
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_297
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407c60

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	or	esi, 0x200
	mov	rdx, qword ptr [rbp - 0x18]
	call	rpl_fts_open
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_659
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_663
	jmp	.label_658
.label_663:
	movabs	rdi, OFFSET FLAT:label_660
	movabs	rsi, OFFSET FLAT:label_661
	mov	edx, 0x29
	movabs	rcx, OFFSET FLAT:label_662
	call	__assert_fail
.label_658:
	call	xalloc_die
.label_659:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407cf0
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_664
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x48]
	and	edx, 1
	cmp	edx, 0
	mov	byte ptr [rbp - 0x11], al
	je	.label_666
.label_664:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0x12], cl
	je	.label_665
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x12], cl
	je	.label_665
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x58], 0
	setne	cl
	mov	byte ptr [rbp - 0x12], cl
.label_665:
	mov	al, byte ptr [rbp - 0x12]
	mov	byte ptr [rbp - 0x11], al
.label_666:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d80

	.globl yesno
	.type yesno, @function
yesno:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x18], 0
	mov	rdx,  qword ptr [word ptr [stdin]]
	call	getline
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jg	.label_669
	mov	byte ptr [rbp - 1], 0
	jmp	.label_668
.label_669:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	jne	.label_667
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
.label_667:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpmatch
	xor	ecx, ecx
	cmp	ecx, eax
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_668:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e20

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_670
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_671
.label_670:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_672
.label_671:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_672:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e80

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
	je	.label_673
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_673:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ec0

	.globl freadahead
	.type freadahead, @function
freadahead:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rax + 0x20]
	jbe	.label_674
	mov	qword ptr [rbp - 8], 0
	jmp	.label_677
.label_674:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx]
	and	edx, 0x100
	cmp	edx, 0
	mov	qword ptr [rbp - 0x18], rax
	je	.label_676
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_675
.label_676:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_675
.label_675:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, rax
	mov	qword ptr [rbp - 8], rcx
.label_677:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f60

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
	jne	.label_678
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_678
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_678
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_680
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_679
.label_680:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_679
.label_678:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_679:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408030

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0xfffff000
	cmp	esi, 0
	je	.label_691
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_702
.label_691:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	cmp	eax, 0
	je	.label_705
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_705
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_702
.label_705:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x12
	cmp	eax, 0
	jne	.label_712
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_702
.label_712:
	mov	eax, 0x80
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_717
	mov	qword ptr [rbp - 8], 0
	jmp	.label_702
.label_717:
	xor	esi, esi
	mov	eax, 0x80
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x40], rcx
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx + 0x48], eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 0x48]
	and	eax, 2
	cmp	eax, 0
	je	.label_684
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	dword ptr [rax + 0x48], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xfffffdff
	mov	dword ptr [rax + 0x48], ecx
.label_684:
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x2c], 0xffffff9c
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_694
	mov	al, 1
	test	al, 1
	jne	.label_694
	jmp	.label_706
.label_706:
	movabs	rdi, OFFSET FLAT:label_164
	xor	esi, esi
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	jge	.label_709
	jmp	.label_710
.label_709:
	mov	edi, dword ptr [rbp - 0x58]
	call	close
	mov	dword ptr [rbp - 0x74], eax
.label_710:
	jmp	.label_694
.label_694:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_maxarglen
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	qword ptr [rbp - 0x60], 0x1000
	mov	qword ptr [rbp - 0x80], rdi
	jbe	.label_715
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_716
.label_715:
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_716
.label_716:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	call	fts_palloc
	test	al, 1
	jne	.label_685
	jmp	.label_686
.label_685:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_688
	movabs	rsi, OFFSET FLAT:label_26
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_alloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	jne	.label_696
	jmp	.label_699
.label_696:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 0x58], -1
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 0x68], -1
.label_688:
	mov	al, 1
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x89], al
	je	.label_704
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x89], dl
.label_704:
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
.label_708:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_714
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x800
	cmp	ecx, 0
	jne	.label_698
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x70], rdx
	cmp	rcx, qword ptr [rbp - 0x68]
	jae	.label_682
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	jne	.label_682
	jmp	.label_687
.label_687:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x8a], cl
	jae	.label_689
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 2
	mov	rcx, qword ptr [rbp - 0x70]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x8a], sil
.label_689:
	mov	al, byte ptr [rbp - 0x8a]
	test	al, 1
	jne	.label_700
	jmp	.label_703
.label_700:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_687
.label_703:
	jmp	.label_682
.label_682:
	jmp	.label_698
.label_698:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x68]
	call	fts_alloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	jne	.label_718
	jmp	.label_681
.label_718:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x58], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x30], rax
	test	byte ptr [rbp - 0x51], 1
	je	.label_713
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_713
	mov	esi, 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	word ptr [rax + 0x70], 0xb
	mov	rdi, qword ptr [rbp - 0x30]
	call	fts_set_stat_required
	jmp	.label_683
.label_713:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x30]
	mov	word ptr [rsi + 0x70], ax
.label_683:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_690
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_692
.label_690:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_697
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_701
.label_697:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
.label_701:
	jmp	.label_692
.label_692:
	jmp	.label_707
.label_707:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_708
.label_714:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_711
	cmp	qword ptr [rbp - 0x40], 1
	jbe	.label_711
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	call	fts_sort
	mov	qword ptr [rbp - 0x38], rax
.label_711:
	movabs	rsi, OFFSET FLAT:label_26
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_alloc
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx], rax
	cmp	rax, 0
	jne	.label_719
	jmp	.label_681
.label_719:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, qword ptr [rbp - 0x28]
	call	setup_dir
	test	al, 1
	jne	.label_693
	jmp	.label_681
.label_693:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_695
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	jne	.label_695
	movabs	rsi, OFFSET FLAT:label_164
	mov	rdi, qword ptr [rbp - 0x28]
	call	diropen
	mov	rsi, qword ptr [rbp - 0x28]
	mov	dword ptr [rsi + 0x28], eax
	cmp	eax, 0
	jge	.label_695
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	dword ptr [rax + 0x48], ecx
.label_695:
	mov	esi, 0xffffffff
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_init
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_702
.label_681:
	mov	rdi, qword ptr [rbp - 0x38]
	call	fts_lfree
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_699:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
.label_686:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_702:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408610

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
.label_721:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_720
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_723
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_723:
	jmp	.label_722
.label_722:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	qword ptr [rbp - 8], rax
	jmp	.label_721
.label_720:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408680

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x30]
	add	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x100
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x30]
	jae	.label_724
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	byte ptr [rbp - 1], 0
	jmp	.label_725
.label_724:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x30]
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_726
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	mov	byte ptr [rbp - 1], 0
	jmp	.label_725
.label_726:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	byte ptr [rbp - 1], 1
.label_725:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408760

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 1
	add	rdx, 0x10f
	and	rdx, 0xfffffffffffffff8
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdi, qword ptr [rbp - 0x30]
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_728
	mov	qword ptr [rbp - 8], 0
	jmp	.label_727
.label_728:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x108
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rax + 0x108], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x40], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	word ptr [rax + 0x72], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	word ptr [rax + 0x74], 3
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_727:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408860

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xb
	je	.label_729
	call	abort
.label_729:
	jmp	.label_730
.label_730:
	mov	eax, 1
	mov	ecx, 2
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	cmovne	eax, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0xa8], rsi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088c0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x78
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 0x58], 0
	jne	.label_731
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 1
	cmp	ecx, 0
	je	.label_731
	mov	byte ptr [rbp - 0x19], 1
.label_731:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	jne	.label_735
	test	byte ptr [rbp - 0x19], 1
	je	.label_740
.label_735:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	call	stat
	cmp	eax, 0
	je	.label_746
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_741
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	call	lstat
	cmp	eax, 0
	jne	.label_741
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	word ptr [rbp - 2], 0xd
	jmp	.label_736
.label_741:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	jmp	.label_732
.label_746:
	jmp	.label_738
.label_740:
	mov	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	call	fstatat
	cmp	eax, 0
	je	.label_745
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
.label_732:
	xor	esi, esi
	mov	eax, 0x90
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	call	memset
	mov	word ptr [rbp - 2], 0xa
	jmp	.label_736
.label_745:
	jmp	.label_738
.label_738:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_744
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 2
	jb	.label_734
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jg	.label_739
.label_734:
	mov	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_743
.label_739:
	mov	eax, 2
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi + 0x48]
	and	edi, 0x20
	cmp	edi, 0
	cmovne	eax, ecx
	movsxd	rsi, eax
	sub	rdx, rsi
	mov	qword ptr [rbp - 0x30], rdx
.label_743:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax + 0x108]
	cmp	edx, 0x2e
	jne	.label_737
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax + 0x109], 0
	je	.label_747
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x109]
	cmp	ecx, 0x2e
	jne	.label_737
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax + 0x10a], 0
	jne	.label_737
.label_747:
	mov	eax, 5
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 0x58], 0
	cmove	eax, ecx
	mov	si, ax
	mov	word ptr [rbp - 2], si
	jmp	.label_736
.label_737:
	mov	word ptr [rbp - 2], 1
	jmp	.label_736
.label_744:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_742
	mov	word ptr [rbp - 2], 0xc
	jmp	.label_736
.label_742:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_733
	mov	word ptr [rbp - 2], 8
	jmp	.label_736
.label_733:
	mov	word ptr [rbp - 2], 3
.label_736:
	movzx	eax, word ptr [rbp - 2]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b40

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rax
	cmp	rax, rdx
	jne	.label_748
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_750
.label_748:
	movabs	rax, OFFSET FLAT:fts_compar
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_750
.label_750:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	jbe	.label_752
	movabs	rax, 0x1fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x28
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	jb	.label_749
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	jne	.label_753
.label_749:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_751
.label_753:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_752:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_754:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_755
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_754
.label_755:
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x58]
	call	qsort
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x18], rcx
.label_756:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	je	.label_757
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_756
.label_757:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_751:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d20

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_758
	mov	eax, 0x1f
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:AD_hash
	movabs	rcx, OFFSET FLAT:AD_compare
	movabs	r8, OFFSET FLAT:free
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_762
	mov	byte ptr [rbp - 1], 0
	jmp	.label_760
.label_762:
	jmp	.label_761
.label_758:
	mov	eax, 0x20
	mov	edi, eax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_759
	mov	byte ptr [rbp - 1], 0
	jmp	.label_760
.label_759:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x58]
	call	cycle_check_init
.label_761:
	mov	byte ptr [rbp - 1], 1
.label_760:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408de0

	.globl diropen
	.type diropen, @function
diropen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, 0x20000
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rsi + 0x48]
	and	edx, 0x10
	cmp	edx, 0
	cmovne	eax, ecx
	or	eax, 0x90900
	mov	dword ptr [rbp - 0x14], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_763
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	al, 0
	call	openat_safer
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_764
.label_763:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x1c], eax
.label_764:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e70

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
.label_765:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	je	.label_766
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_767
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	dword ptr [rbp - 0x14], eax
.label_767:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	free
	jmp	.label_765
.label_766:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ed0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x24], 0
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi], 0
	je	.label_778
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
.label_779:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_784
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_769
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_772
.label_769:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_772:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	jmp	.label_779
.label_784:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
.label_778:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_781
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_781:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_771
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x2c]
	jg	.label_780
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	call	close
	cmp	eax, 0
	je	.label_777
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_777:
	jmp	.label_780
.label_780:
	jmp	.label_783
.label_771:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_776
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x28]
	call	fchdir
	cmp	eax, 0
	je	.label_768
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_768:
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x28]
	call	close
	cmp	eax, 0
	je	.label_774
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_775
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_775:
	jmp	.label_774
.label_774:
	jmp	.label_776
.label_776:
	jmp	.label_783
.label_783:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x60
	mov	rdi, rax
	call	fd_ring_clear
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x50], 0
	je	.label_782
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x50]
	call	hash_free
.label_782:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_770
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_773
.label_770:
	mov	dword ptr [rbp - 4], 0
.label_773:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090d0

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_786:
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_empty
	xor	al, 0xff
	test	al, 1
	jne	.label_785
	jmp	.label_788
.label_785:
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xc], eax
	cmp	ecx, dword ptr [rbp - 0xc]
	jg	.label_787
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	dword ptr [rbp - 0x10], eax
.label_787:
	jmp	.label_786
.label_788:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409130

	.globl free_dir
	.type free_dir, @function
free_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_789
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_790
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x58]
	call	hash_free
.label_790:
	jmp	.label_791
.label_789:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rdi, rax
	call	free
.label_791:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409190

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi], 0
	je	.label_850
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_854
.label_850:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_802
.label_854:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	cx, word ptr [rax + 0x74]
	mov	word ptr [rbp - 0x22], cx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x74], 3
	movzx	edx, word ptr [rbp - 0x22]
	cmp	edx, 1
	jne	.label_823
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	jmp	.label_802
.label_823:
	movzx	eax, word ptr [rbp - 0x22]
	cmp	eax, 2
	jne	.label_799
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xc
	je	.label_801
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xd
	jne	.label_799
.label_801:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	movzx	edx, word ptr [rsi + 0x70]
	cmp	edx, 1
	jne	.label_807
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_807
	movabs	rsi, OFFSET FLAT:label_164
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	jge	.label_819
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
	jmp	.label_803
.label_819:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_803:
	jmp	.label_807
.label_807:
	jmp	.label_810
.label_799:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_826
	movzx	eax, word ptr [rbp - 0x22]
	cmp	eax, 4
	je	.label_831
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x40
	cmp	ecx, 0
	je	.label_800
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	je	.label_800
.label_831:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_841
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x3c], eax
.label_841:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_845
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_845:
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 6
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_802
.label_800:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_852
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x1000
	cmp	ecx, 0
	je	.label_852
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xffffefff
	mov	dword ptr [rax + 0x48], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_852:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_860
	mov	edx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x30]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_798
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 1
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_806:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_805
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_806
.label_805:
	jmp	.label_798
.label_798:
	jmp	.label_832
.label_860:
	mov	esi, 3
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	cmp	rax, 0
	jne	.label_818
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_858
	mov	qword ptr [rbp - 8], 0
	jmp	.label_802
.label_858:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x40], 0
	je	.label_822
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_822
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
.label_822:
	jmp	.label_829
.label_829:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_802
.label_818:
	jmp	.label_832
.label_832:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	jmp	.label_838
.label_826:
	jmp	.label_814
.label_814:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_842
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_842
	mov	esi, 3
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_build
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_851
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_853
	mov	qword ptr [rbp - 8], 0
	jmp	.label_802
.label_853:
	jmp	.label_849
.label_851:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	jmp	.label_838
.label_842:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	je	.label_844
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_794
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_825
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_802
.label_825:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_load
	mov	rdi, qword ptr [rbp - 0x10]
	call	setup_dir
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_810
.label_794:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x74]
	cmp	ecx, 4
	jne	.label_817
	jmp	.label_814
.label_817:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x74]
	cmp	ecx, 2
	jne	.label_815
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	movzx	edx, word ptr [rsi + 0x70]
	cmp	edx, 1
	jne	.label_820
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_820
	movabs	rsi, OFFSET FLAT:label_164
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	jge	.label_827
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
	jmp	.label_833
.label_827:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_833:
	jmp	.label_820
.label_820:
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x74], 3
.label_815:
	jmp	.label_838
.label_838:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	rdx, qword ptr [rdx + 0x38]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x2f
	mov	qword ptr [rbp - 0x48], rax
	jne	.label_843
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_847
.label_843:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x50], rax
.label_847:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rax], 0x2f
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x60]
	add	rcx, 1
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	mov	qword ptr [rbp - 0x58], rax
.label_810:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	movzx	edx, word ptr [rax + 0x70]
	cmp	edx, 0xb
	jne	.label_812
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xa8], 2
	jne	.label_792
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], 0
	jne	.label_797
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_797
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_797
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x2c]
	call	leaf_optimization
	cmp	eax, 2
	jne	.label_797
	jmp	.label_811
.label_797:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rsi + 0x90]
	and	edx, 0xf000
	cmp	edx, 0x4000
	jne	.label_813
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_813
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rdx + 0x68]
	jae	.label_813
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], -1
	je	.label_813
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x68]
	add	rcx, -1
	mov	qword ptr [rax + 0x68], rcx
.label_813:
	jmp	.label_811
.label_811:
	jmp	.label_836
.label_792:
	jmp	.label_828
.label_828:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xa8], 1
	je	.label_830
	call	abort
.label_830:
	jmp	.label_835
.label_835:
	jmp	.label_836
.label_836:
	jmp	.label_812
.label_812:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_839
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_840
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_840:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	enter_dir
	test	al, 1
	jne	.label_846
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_802
.label_846:
	jmp	.label_839
.label_839:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_802
.label_844:
	jmp	.label_849
.label_849:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], -1
	jne	.label_855
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_802
.label_855:
	jmp	.label_861
.label_861:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xb
	jne	.label_862
	call	abort
.label_862:
	jmp	.label_793
.label_793:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_795
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_804
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_804:
	jmp	.label_808
.label_795:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_809
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_796
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_816
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x44]
	call	cwd_advance_fd
	xor	edx, edx
	mov	cl, dl
	test	cl, 1
	jne	.label_821
	jmp	.label_796
.label_816:
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	fchdir
	cmp	eax, 0
	je	.label_796
.label_821:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_796:
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_834
.label_809:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_837
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:label_160
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 8]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_837
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_837:
	jmp	.label_834
.label_834:
	jmp	.label_808
.label_808:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 2
	je	.label_824
	mov	eax, 6
	mov	ecx, 7
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	dword ptr [rdx + 0x40], 0
	cmovne	eax, ecx
	mov	si, ax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	word ptr [rdx + 0x70], si
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	dword ptr [rdx + 0x40], 0
	jne	.label_848
	jmp	.label_856
.label_856:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	jmp	.label_848
.label_848:
	jmp	.label_824
.label_824:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_857
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_859
.label_857:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x68], rax
.label_859:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 8], rax
.label_802:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c10

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x78
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_867
	lea	rax, [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x58]
	mov	rsi, rax
	call	hash_delete
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_865
	call	abort
.label_865:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_864
.label_867:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_863
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x58]
	jg	.label_863
	jmp	.label_869
.label_869:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_870
	call	abort
.label_870:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_866
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jne	.label_866
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx], rax
.label_866:
	jmp	.label_868
.label_868:
	jmp	.label_863
.label_863:
	jmp	.label_864
.label_864:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d50

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	xor	eax, eax
	mov	r8b, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0xcd], r8b
	je	.label_885
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, OFFSET FLAT:label_160
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0xcd], cl
.label_885:
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	mov	byte ptr [rbp - 0x2d], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x48]
	and	edx, 4
	cmp	edx, 0
	je	.label_877
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_882
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_882
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	dword ptr [rbp - 0xd4], eax
.label_882:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_876
.label_877:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_871
	test	byte ptr [rbp - 0x2d], 1
	je	.label_871
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_871
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_empty
	test	al, 1
	jne	.label_879
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	mov	byte ptr [rbp - 0x2d], 1
	cmp	ecx, dword ptr [rbp - 0x38]
	jg	.label_883
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x1c], eax
	mov	qword ptr [rbp - 0x28], 0
.label_883:
	jmp	.label_879
.label_879:
	jmp	.label_871
.label_871:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_874
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	diropen
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, 0
	jge	.label_874
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_876
.label_874:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	jne	.label_878
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_881
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, OFFSET FLAT:label_160
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_881
.label_878:
	lea	rsi, [rbp - 0xc8]
	mov	edi, dword ptr [rbp - 0x34]
	call	fstat
	cmp	eax, 0
	je	.label_886
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	jmp	.label_880
.label_886:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	cmp	rax, qword ptr [rbp - 0xc8]
	jne	.label_872
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x80]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_875
.label_872:
	call	__errno_location
	mov	dword ptr [rax], 2
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	jmp	.label_880
.label_875:
	jmp	.label_881
.label_881:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_884
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x34]
	mov	al, byte ptr [rbp - 0x2d]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	call	cwd_advance_fd
	mov	dword ptr [rbp - 4], 0
	jmp	.label_876
.label_884:
	mov	edi, dword ptr [rbp - 0x34]
	call	fchdir
	mov	dword ptr [rbp - 0x2c], eax
.label_880:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_873
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], ecx
	mov	edi, dword ptr [rbp - 0x34]
	call	close
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0xd8], eax
	mov	dword ptr [rbp - 0xdc], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rax], ecx
.label_873:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_876:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409fe0

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x80], rdi
	mov	rdi, qword ptr [rbp - 0x80]
	cmp	qword ptr [rdi + 0x18], 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x81], al
	mov	byte ptr [rbp - 0x82], 0
	test	byte ptr [rbp - 0x81], 1
	je	.label_957
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x98]
	call	dirfd
	mov	dword ptr [rbp - 0x74], eax
	cmp	dword ptr [rbp - 0x74], 0
	jge	.label_895
	jmp	.label_910
.label_910:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xb0], eax
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_900
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 4
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_900:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_891
.label_895:
	jmp	.label_907
.label_957:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_919
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_919
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x2c]
	mov	dword ptr [rbp - 0xb4], ecx
	jmp	.label_928
.label_919:
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_928
.label_928:
	mov	eax, dword ptr [rbp - 0xb4]
	xor	ecx, ecx
	mov	dl, cl
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	mov	dword ptr [rbp - 0xb8], eax
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rbp - 0xc1], dl
	je	.label_934
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc2], cl
	je	.label_938
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	mov	byte ptr [rbp - 0xc2], cl
.label_938:
	mov	al, byte ptr [rbp - 0xc2]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc1], al
.label_934:
	mov	al, byte ptr [rbp - 0xc1]
	lea	rcx, [rbp - 0x74]
	xor	edx, edx
	mov	esi, 0x20000
	test	al, 1
	cmovne	edx, esi
	mov	edi, dword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xc0]
	call	opendirat
	mov	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + 0x18], rax
	cmp	rax, 0
	jne	.label_946
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_949
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 4
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_949:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_891
.label_946:
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xb
	jne	.label_956
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x80]
	mov	word ptr [rsi + 0x70], ax
	jmp	.label_905
.label_956:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x100
	cmp	ecx, 0
	je	.label_903
	jmp	.label_889
.label_889:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	call	leave_dir
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fts_stat
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	word ptr [rbp - 0xc4], ax
	call	enter_dir
	test	al, 1
	jne	.label_896
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_891
.label_896:
	jmp	.label_903
.label_903:
	jmp	.label_905
.label_905:
	jmp	.label_907
.label_907:
	mov	eax, 0x186a0
	mov	ecx, eax
	mov	rdx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 0x40], 0
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x90], rcx
	test	byte ptr [rbp - 0x81], 1
	je	.label_909
	mov	byte ptr [rbp - 0x45], 1
	jmp	.label_918
.label_909:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x14], 2
	mov	byte ptr [rbp - 0xc5], cl
	je	.label_920
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 8
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	je	.label_925
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	je	.label_925
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x20
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	jne	.label_925
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rdx + 0x88], 2
	mov	byte ptr [rbp - 0xc6], cl
	jne	.label_925
	mov	rdi, qword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x74]
	call	leaf_optimization
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xc6], cl
.label_925:
	mov	al, byte ptr [rbp - 0xc6]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc5], al
.label_920:
	mov	al, byte ptr [rbp - 0xc5]
	and	al, 1
	mov	byte ptr [rbp - 0x45], al
	test	byte ptr [rbp - 0x45], 1
	jne	.label_941
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_904
.label_941:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_945
	mov	esi, 0x406
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x74]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x74], eax
.label_945:
	cmp	dword ptr [rbp - 0x74], 0
	jl	.label_951
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x74]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_912
.label_951:
	test	byte ptr [rbp - 0x45], 1
	je	.label_955
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_955
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_955:
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 1
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	byte ptr [rbp - 0x45], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xcc], eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_890
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x74]
	jg	.label_890
	mov	edi, dword ptr [rbp - 0x74]
	call	close
	mov	dword ptr [rbp - 0xd0], eax
.label_890:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rax + 0x18], 0
	jmp	.label_898
.label_912:
	mov	byte ptr [rbp - 0x45], 1
.label_898:
	jmp	.label_904
.label_904:
	jmp	.label_918
.label_918:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x38]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	jne	.label_908
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_913
.label_908:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xd8], rax
.label_913:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_924
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rax], 0x2f
	jmp	.label_931
.label_924:
	mov	qword ptr [rbp - 0x70], 0
.label_931:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x46], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x30], 0
.label_897:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_940
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	readdir
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_944
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_947
	call	__errno_location
	mov	cl, 1
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], edx
	test	byte ptr [rbp - 0x81], 1
	mov	byte ptr [rbp - 0xd9], cl
	jne	.label_948
	cmp	qword ptr [rbp - 0x30], 0
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_948:
	mov	al, byte ptr [rbp - 0xd9]
	mov	ecx, 4
	mov	edx, 7
	test	al, 1
	cmovne	ecx, edx
	mov	si, cx
	mov	rdi, qword ptr [rbp - 0x80]
	mov	word ptr [rdi + 0x70], si
.label_947:
	jmp	.label_940
.label_944:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x20
	cmp	ecx, 0
	jne	.label_887
	mov	rax, qword ptr [rbp - 0xa8]
	movsx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_887
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	byte ptr [rax + 0x14], 0
	je	.label_915
	mov	rax, qword ptr [rbp - 0xa8]
	movsx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	jne	.label_887
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	byte ptr [rax + 0x15], 0
	jne	.label_887
.label_915:
	jmp	.label_897
.label_887:
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, 0x13
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	call	fts_alloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_911
	jmp	.label_914
.label_911:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_916
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rsi, rax
	call	fts_palloc
	test	al, 1
	jne	.label_930
	jmp	.label_914
.label_914:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xe0], eax
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0xe4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xe4]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_891
.label_930:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	je	.label_942
	mov	byte ptr [rbp - 0x46], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_921
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x70], rax
.label_921:
	jmp	.label_942
.label_942:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_916:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_952
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xe8], eax
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	qword ptr [rbp - 8], 0
	jmp	.label_891
.label_952:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x80], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0x48]
	and	edx, 4
	cmp	edx, 0
	je	.label_892
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x60]
	add	rcx, 1
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_922
.label_892:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
.label_922:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_929
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	je	.label_933
.label_929:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_935
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 8
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_935
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa8]
	movzx	eax, byte ptr [rdx + 0x12]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_935
	mov	rax, qword ptr [rbp - 0xa8]
	movzx	ecx, byte ptr [rax + 0x12]
	cmp	ecx, 4
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0xf1], dl
.label_935:
	mov	al, byte ptr [rbp - 0xf1]
	and	al, 1
	mov	byte ptr [rbp - 0xa9], al
	mov	rcx, qword ptr [rbp - 0x20]
	mov	word ptr [rcx + 0x70], 0xb
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x78
	mov	rdx, qword ptr [rbp - 0xa8]
	movzx	esi, byte ptr [rdx + 0x12]
	mov	rdi, rcx
	call	set_stat_type
	mov	rdi, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rbp - 0xa9]
	xor	al, 0xff
	and	al, 1
	movzx	esi, al
	call	fts_set_stat_required
	jmp	.label_893
.label_933:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x20]
	mov	word ptr [rsi + 0x70], ax
.label_893:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_954
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_902
.label_954:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_902:
	cmp	qword ptr [rbp - 0x30], 0x2710
	jne	.label_888
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_888
	mov	rdi, qword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x74]
	call	dirent_inode_sort_may_be_useful
	and	al, 1
	mov	byte ptr [rbp - 0x82], al
.label_888:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_943
	jmp	.label_899
.label_943:
	jmp	.label_897
.label_940:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_901
	jmp	.label_906
.label_906:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xf8], eax
	jmp	.label_901
.label_901:
	jmp	.label_899
.label_899:
	test	byte ptr [rbp - 0x46], 1
	je	.label_953
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	fts_padjust
.label_953:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_923
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_927
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_932
.label_927:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, -1
	mov	qword ptr [rbp - 0x70], rax
.label_932:
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0
.label_923:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_917
	test	byte ptr [rbp - 0x45], 1
	je	.label_917
	cmp	dword ptr [rbp - 0x14], 1
	je	.label_936
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_917
.label_936:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_937
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	jne	.label_939
	jmp	.label_917
.label_937:
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:label_160
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rax + 8]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_917
.label_939:
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	qword ptr [rbp - 8], 0
	jmp	.label_891
.label_917:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_950
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_926
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_926
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 7
	je	.label_926
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 6
.label_926:
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	qword ptr [rbp - 8], 0
	jmp	.label_891
.label_950:
	test	byte ptr [rbp - 0x82], 1
	je	.label_958
	movabs	rax, OFFSET FLAT:fts_compare_ino
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fts_sort
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x40], 0
.label_958:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_894
	cmp	qword ptr [rbp - 0x30], 1
	jbe	.label_894
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fts_sort
	mov	qword ptr [rbp - 0x28], rax
.label_894:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_891:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac90

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x48]
	and	eax, 4
	cmp	eax, 0
	mov	byte ptr [rbp - 0xd], cl
	jne	.label_961
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_963
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	mov	qword ptr [rbp - 0x18], rdi
	je	.label_960
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_959
.label_960:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x1c], ecx
.label_959:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, eax
	call	cwd_advance_fd
	xor	eax, eax
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_964
.label_963:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_965
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_962
.label_965:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x24], ecx
.label_962:
	mov	eax, dword ptr [rbp - 0x24]
	mov	edi, eax
	call	fchdir
	mov	dword ptr [rbp - 0x20], eax
.label_964:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xd], cl
.label_961:
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0xc], ecx
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x60
	mov	rdi, rdx
	call	fd_ring_clear
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad90

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0x2f
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x60]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rsi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x108
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	rdx, rcx
	mov	dword ptr [rbp - 0x24], eax
	call	memmove
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x108
	mov	rdi, rcx
	mov	esi, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x30], rax
	call	strrchr
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	je	.label_967
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x108
	cmp	rax, rcx
	jne	.label_966
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_967
.label_966:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x108
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, 1
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rdx, qword ptr [rbp - 0x38]
	call	memmove
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x60], rdx
	mov	qword ptr [rbp - 0x40], rax
.label_967:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aea0

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	filesystem_type
	mov	rdi, rax
	test	rax, rax
	mov	qword ptr [rbp - 0x20], rdi
	je	.label_980
	jmp	.label_971
.label_971:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0x28], rax
	je	.label_973
	jmp	.label_976
.label_976:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa0
	mov	qword ptr [rbp - 0x30], rax
	je	.label_968
	jmp	.label_981
.label_981:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0x38], rax
	je	.label_979
	jmp	.label_974
.label_974:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x40], rax
	je	.label_975
	jmp	.label_978
.label_978:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x48], rax
	je	.label_979
	jmp	.label_969
.label_969:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x50], rdx
	je	.label_972
	jmp	.label_977
.label_979:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_970
.label_980:
	jmp	.label_975
.label_975:
	jmp	.label_972
.label_972:
	jmp	.label_973
.label_973:
	jmp	.label_968
.label_968:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_970
.label_977:
	mov	dword ptr [rbp - 4], 1
.label_970:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40afb0

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_989
	mov	eax, 0x18
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x78
	mov	qword ptr [rbp - 0x20], rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_987
	mov	byte ptr [rbp - 1], 0
	jmp	.label_986
.label_987:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_983
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_982
	mov	byte ptr [rbp - 1], 0
	jmp	.label_986
.label_982:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 2
.label_983:
	jmp	.label_988
.label_989:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x78
	mov	rsi, rax
	call	cycle_check
	test	al, 1
	jne	.label_985
	jmp	.label_984
.label_985:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 2
.label_984:
	jmp	.label_988
.label_988:
	mov	byte ptr [rbp - 1], 1
.label_986:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b0f0

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	mov	rdi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rdi + 0x2c]
	mov	dword ptr [rbp - 0x14], edx
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0xc]
	jne	.label_995
	cmp	dword ptr [rbp - 0x14], -0x64
	je	.label_995
	call	abort
.label_995:
	jmp	.label_991
.label_991:
	test	byte ptr [rbp - 0xd], 1
	je	.label_990
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x60
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdi, rax
	call	i_ring_push
	xor	esi, esi
	mov	dword ptr [rbp - 0x18], eax
	cmp	esi, dword ptr [rbp - 0x18]
	jg	.label_994
	mov	edi, dword ptr [rbp - 0x18]
	call	close
	mov	dword ptr [rbp - 0x1c], eax
.label_994:
	jmp	.label_992
.label_990:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_993
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x14]
	jg	.label_996
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	dword ptr [rbp - 0x20], eax
.label_996:
	jmp	.label_993
.label_993:
	jmp	.label_992
.label_992:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x2c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b1b0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_997
	cmp	dword ptr [rbp - 0x1c], 1
	je	.label_997
	cmp	dword ptr [rbp - 0x1c], 2
	je	.label_997
	cmp	dword ptr [rbp - 0x1c], 3
	je	.label_997
	cmp	dword ptr [rbp - 0x1c], 4
	je	.label_997
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 1
	jmp	.label_998
.label_997:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cx, ax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	word ptr [rdx + 0x74], cx
	mov	dword ptr [rbp - 4], 0
.label_998:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b230
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1001
	cmp	dword ptr [rbp - 0x14], 0x1000
	je	.label_1001
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1006
.label_1001:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1011
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1006
.label_1011:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 9
	jne	.label_1007
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1006
.label_1007:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	je	.label_1009
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1006
.label_1009:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1008
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_1008:
	cmp	dword ptr [rbp - 0x14], 0x1000
	jne	.label_1000
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x1000
	mov	dword ptr [rax + 0x48], ecx
	mov	dword ptr [rbp - 0x14], 2
	jmp	.label_1003
.label_1000:
	mov	dword ptr [rbp - 0x14], 1
.label_1003:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_999
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_999
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_1004
.label_999:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1006
.label_1004:
	movabs	rsi, OFFSET FLAT:label_164
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	jge	.label_1005
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1006
.label_1005:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x48]
	and	esi, 0x200
	cmp	esi, 0
	je	.label_1002
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x24]
	call	cwd_advance_fd
	jmp	.label_1010
.label_1002:
	mov	edi, dword ptr [rbp - 0x24]
	call	fchdir
	cmp	eax, 0
	je	.label_1012
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	mov	dword ptr [rbp - 0x30], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1006
.label_1012:
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	mov	dword ptr [rbp - 0x34], eax
.label_1010:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
.label_1006:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b470

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b4a0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1013
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x21], dl
.label_1013:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b500

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rdi + 0x48]
	and	esi, 0x200
	cmp	esi, 0
	jne	.label_1014
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1015
.label_1014:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1018
	mov	eax, 0xd
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_type_hash
	movabs	rcx, OFFSET FLAT:dev_type_compare
	movabs	r8, OFFSET FLAT:free
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x50], rax
	mov	qword ptr [rbp - 0x28], rax
.label_1018:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1020
	lea	rax, [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1026
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1015
.label_1026:
	jmp	.label_1020
.label_1020:
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_1023
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x14]
	call	fstatfs
	cmp	eax, 0
	je	.label_1027
.label_1023:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1015
.label_1027:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1021
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	je	.label_1024
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1025
	jmp	.label_1016
.label_1016:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_1017
	call	abort
.label_1017:
	jmp	.label_1022
.label_1022:
	jmp	.label_1019
.label_1025:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, rax
	call	free
.label_1019:
	jmp	.label_1024
.label_1024:
	jmp	.label_1021
.label_1021:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 8], rax
.label_1015:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b6e0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b710

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b750

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	dec	esi
	mov	edi, esi
	sub	esi, 0xb
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0x1c], esi
	ja	.label_1028
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1030]]
	jmp	rcx
.label_1483:
	mov	dword ptr [rbp - 0x10], 0x6000
	jmp	.label_1029
.label_1481:
	mov	dword ptr [rbp - 0x10], 0x2000
	jmp	.label_1029
.label_1482:
	mov	dword ptr [rbp - 0x10], 0x4000
	jmp	.label_1029
.label_1480:
	mov	dword ptr [rbp - 0x10], 0x1000
	jmp	.label_1029
.label_1485:
	mov	dword ptr [rbp - 0x10], 0xa000
	jmp	.label_1029
.label_1484:
	mov	dword ptr [rbp - 0x10], 0x8000
	jmp	.label_1029
.label_1486:
	mov	dword ptr [rbp - 0x10], 0xc000
	jmp	.label_1029
.label_1028:
	mov	dword ptr [rbp - 0x10], 0
.label_1029:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], eax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b7f0

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	filesystem_type
	mov	rdi, rax
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rax
	je	.label_1032
	jmp	.label_1035
.label_1035:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1021994
	mov	qword ptr [rbp - 0x30], rax
	je	.label_1032
	jmp	.label_1031
.label_1031:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x38], rdx
	jne	.label_1034
	jmp	.label_1032
.label_1032:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1033
.label_1034:
	mov	byte ptr [rbp - 1], 1
.label_1033:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b880

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_1037:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1038
	jmp	.label_1043
.label_1043:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_1045
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x38]
	sub	rcx, rdx
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
.label_1045:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_1044
.label_1044:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1037
.label_1038:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1039:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_1046
	jmp	.label_1041
.label_1041:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_1036
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x38]
	sub	rcx, rdx
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
.label_1036:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1042
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1040
.label_1042:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1040:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1039
.label_1046:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b9c0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	rsi, qword ptr [rsi + 0x80]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	cmp	rsi, qword ptr [rdi + 0x80]
	jae	.label_1047
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1048
.label_1047:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x80]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	cmp	rdx, qword ptr [rsi + 0x80]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_1048:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba30

	.globl fts_compar
	.type fts_compar, @function
fts_compar:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rsi, qword ptr [rsi + 0x50]
	mov	rsi, qword ptr [rsi + 0x40]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x28]
	call	rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba80

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
	jne	.label_1049
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1049:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1050
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1050
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1050
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1051
.label_1050:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1051:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb30

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
	jne	.label_1052
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1056
.label_1052:
	jmp	.label_1053
.label_1053:
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
	jne	.label_1055
	jmp	.label_1054
.label_1055:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1053
.label_1054:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1056:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bbf0

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
	jne	.label_1057
	test	byte ptr [rbp - 0x13], 1
	je	.label_1058
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1057
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1058
.label_1057:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1059
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1059:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1060
.label_1058:
	mov	dword ptr [rbp - 4], 0
.label_1060:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bca0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x18], 0x95f616
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bcd0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x18], 0x95f616
	jne	.label_1064
	jmp	.label_1065
.label_1064:
	movabs	rdi, OFFSET FLAT:label_1067
	movabs	rsi, OFFSET FLAT:label_1068
	mov	edx, 0x3c
	movabs	rcx, OFFSET FLAT:label_1069
	call	__assert_fail
.label_1065:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1062
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jne	.label_1062
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1062
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1066
.label_1062:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, 1
	mov	qword ptr [rax + 0x10], rcx
	mov	rdi, rcx
	call	is_zero_or_power_of_two
	test	al, 1
	jne	.label_1070
	jmp	.label_1061
.label_1070:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1063
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1066
.label_1063:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_1061:
	mov	byte ptr [rbp - 1], 0
.label_1066:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bdd0

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	and	rdi, rax
	cmp	rdi, 0
	sete	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40be00

	.globl open_safer
	.type open_safer, @function
open_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_1071
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_1071:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], 0
	mov	edi, dword ptr [rbp - 0xc]
	and	edi, 0x40
	cmp	edi, 0
	je	.label_1072
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x10
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	ja	.label_1073
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_1074
.label_1073:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_1074:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1072:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c000

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
	je	.label_1075
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1078
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1079
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1077
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1076
.label_1079:
	mov	byte ptr [rbp - 5], 0
.label_1076:
	jmp	.label_1075
.label_1075:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c080

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c0a0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c0c0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c0e0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1086:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1081
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1082
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_1080:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1084
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1080
.label_1084:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1083
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1083:
	jmp	.label_1082
.label_1082:
	jmp	.label_1085
.label_1085:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1086
.label_1081:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c190
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1094:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1092
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1088
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1090:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1091
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1090
.label_1091:
	jmp	.label_1088
.label_1088:
	jmp	.label_1087
.label_1087:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1094
.label_1092:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_1089
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1089
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1093
.label_1089:
	mov	byte ptr [rbp - 1], 0
.label_1093:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c280
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1095
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_max_bucket_length
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_1101
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:label_1096
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1097]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1098]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1099]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x20]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	mov	al, 1
	call	fprintf
	movabs	rsi, OFFSET FLAT:label_1100
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c3a0

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_1108
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1102
.label_1108:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1107:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1103
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1105
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1105
	jmp	.label_1104
.label_1105:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1102
.label_1104:
	jmp	.label_1106
.label_1106:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1107
.label_1103:
	mov	qword ptr [rbp - 8], 0
.label_1102:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c460

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x20]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_1109
	call	abort
.label_1109:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c4d0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1110
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1111
.label_1110:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1112:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_1114
	call	abort
.label_1114:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1115
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1111
.label_1115:
	jmp	.label_1116
.label_1116:
	jmp	.label_1113
.label_1113:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1112
.label_1111:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c560
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1118:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1121
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1121
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1117
.label_1121:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1118
	jmp	.label_1119
.label_1119:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1122
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1120
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1117
.label_1120:
	jmp	.label_1119
.label_1122:
	mov	qword ptr [rbp - 8], 0
.label_1117:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c630
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1129:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1126
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1123
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1125:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1130
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1124
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1127
.label_1124:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1125
.label_1130:
	jmp	.label_1123
.label_1123:
	jmp	.label_1128
.label_1128:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1129
.label_1126:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1127:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c700
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1133:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1135
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1137
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1138:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1134
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_1132
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1136
.label_1132:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1138
.label_1134:
	jmp	.label_1137
.label_1137:
	jmp	.label_1131
.label_1131:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1133
.label_1135:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1136:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c7d0
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1140:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_1139
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1140
.label_1139:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c830
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_1141]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_1142]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c860

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1150
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1150:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1147
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_1147:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1151
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1144
.label_1151:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1148
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1148:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_1143
	jmp	.label_1145
.label_1143:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1149
	jmp	.label_1145
.label_1149:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_1146
	jmp	.label_1145
.label_1146:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1144
.label_1145:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1144:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca00

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca40

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca60

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_1152
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1155
.label_1152:
	movss	xmm0,  dword ptr [dword ptr [rip + label_1156]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1154
	movss	xmm0,  dword ptr [dword ptr [rip + label_1153]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1154
	movss	xmm0,  dword ptr [dword ptr [rip + label_1153]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_1154
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_1154
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1154
	movss	xmm0,  dword ptr [dword ptr [rip + label_1153]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1154
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1154
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1155
.label_1154:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1155:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cb90

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rsi + 0x10], 1
	jne	.label_1157
	movss	xmm0,  dword ptr [dword ptr [rip + label_1162]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm1, rsi
	addss	xmm1, xmm1
	cvtsi2ss	xmm2, rax
	test	rax, rax
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	movss	dword ptr [rbp - 0x28], xmm1
	js	.label_1163
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1163:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_1159
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1158
.label_1159:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1161]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_1157:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_1160
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1158
.label_1160:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1158:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ccb0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1169:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1164
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1168
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1165:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1166
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1170
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1170:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1165
.label_1166:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1167
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1167:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1168:
	jmp	.label_1171
.label_1171:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1169
.label_1164:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cdd0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_1175
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_1175
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1182:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1180
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1178
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1174:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1183
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1174
.label_1183:
	jmp	.label_1178
.label_1178:
	jmp	.label_1185
.label_1185:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1182
.label_1180:
	jmp	.label_1175
.label_1175:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1179:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1172
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1173:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1181
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1173
.label_1181:
	jmp	.label_1177
.label_1177:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1179
.label_1172:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_1176:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1184
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1176
.label_1184:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cf50

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_1192
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1187
.label_1192:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1188
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1187
.label_1188:
	mov	eax, 0x10
	mov	esi, eax
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rdi, qword ptr [rbp - 0x78]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax], 0
	jne	.label_1194
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1187
.label_1194:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	jne	.label_1193
	jmp	.label_1186
.label_1193:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1187
.label_1186:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1189
	jmp	.label_1190
.label_1189:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1191
.label_1190:
	call	abort
.label_1191:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_1187:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d160

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
.label_1200:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1195
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1199
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1203:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1205
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1197
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1206
.label_1197:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	free_entry
.label_1206:
	jmp	.label_1207
.label_1207:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1203
.label_1205:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_1196
	jmp	.label_1198
.label_1196:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1208
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1201
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1204
.label_1201:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1202
.label_1208:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1202:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_1199:
	jmp	.label_1198
.label_1198:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1200
.label_1195:
	mov	byte ptr [rbp - 1], 1
.label_1204:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d340

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1209
	call	abort
.label_1209:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_1215
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1212
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1212:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1213
.label_1215:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1220
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1220:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1224
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1224:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1214
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1225
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1225:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1216
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1216:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_1211
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_1218
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1227
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1227:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1219
.label_1218:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1210
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1210:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1219:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1162]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_1222
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1213
.label_1222:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1161]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1226
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1213
.label_1226:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_1221
	call	abort
.label_1221:
	jmp	.label_1211
.label_1211:
	jmp	.label_1214
.label_1214:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1217
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1223
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1213
.label_1223:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1213
.label_1217:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1213:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d7e0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_1230
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1231
.label_1230:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1232
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1232
	jmp	.label_1229
.label_1232:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1233
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1240
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	call	free_entry
	jmp	.label_1239
.label_1240:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1239:
	jmp	.label_1233
.label_1233:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1231
.label_1229:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1228:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_1234
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_1238
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1238
	jmp	.label_1236
.label_1238:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1237
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	call	free_entry
.label_1237:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1231
.label_1236:
	jmp	.label_1235
.label_1235:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1228
.label_1234:
	mov	qword ptr [rbp - 8], 0
.label_1231:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d9b0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1241
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1242
.label_1241:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_1242:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da10

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_1243
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1246
.label_1243:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_1245
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1244
.label_1245:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1244:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1246:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da80

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	mov	ecx, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1257
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1261
.label_1257:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1249
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1255
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1255:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1248
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1248:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1253
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1251
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1251:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1256
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1256:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_1252
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1247
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1254
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1254:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1258
.label_1247:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1250
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1250:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1258:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1161]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	hash_rehash
	test	al, 1
	jne	.label_1262
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1260:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1259
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1260
.label_1259:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1262:
	jmp	.label_1252
.label_1252:
	jmp	.label_1253
.label_1253:
	jmp	.label_1249
.label_1249:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1261:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de80

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1263
	mov	qword ptr [rbp - 8], 0xa
.label_1263:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1267:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_1266
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_1266:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_1264
	jmp	.label_1265
.label_1264:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1267
.label_1265:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df00

	.globl is_prime
	.type is_prime, @function
is_prime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_1270:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1271
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1271:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1269
	jmp	.label_1268
.label_1269:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1270
.label_1268:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dfc0

	.globl free_entry
	.type free_entry, @function
free_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e000

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x1c], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0x10], 0
.label_1273:
	cmp	dword ptr [rbp - 0x10], 4
	jge	.label_1272
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_1273
.label_1272:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x10], eax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e070

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x1c]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e090

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 0x14]
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	add	esi, ecx
	and	esi, 3
	mov	dword ptr [rbp - 0x10], esi
	mov	ecx, dword ptr [rbp - 0x10]
	mov	edi, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdx + rdi*4]
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	esi, dword ptr [rbp - 0x10]
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x14], ecx
	mov	ecx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	cmp	ecx, dword ptr [rdx + 0x18]
	jne	.label_1274
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	mov	dl, byte ptr [rax + 0x1c]
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	add	ecx, esi
	and	ecx, 3
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x18], ecx
.label_1274:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 0
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e120

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_empty
	test	al, 1
	jne	.label_1275
	jmp	.label_1277
.label_1275:
	call	abort
.label_1277:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdx + rax*4]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x14]
	mov	eax, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	cmp	ecx, dword ptr [rax + 0x18]
	jne	.label_1276
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 1
	jmp	.label_1278
.label_1276:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	add	ecx, 4
	sub	ecx, 1
	and	ecx, 3
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_1278:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e1c0

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
	jne	.label_1279
	movabs	rax, OFFSET FLAT:label_26
	mov	qword ptr [rbp - 8], rax
.label_1279:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1280
	movabs	rax, OFFSET FLAT:label_1281
	mov	qword ptr [rbp - 8], rax
.label_1280:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e220

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	dword ptr [rbp - 0x164], edi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	dword ptr [rbp - 0x184], edx
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_1282
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_1282:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	esi, dword ptr [rbp - 0x184]
	mov	rdi, qword ptr [rbp - 0x190]
	mov	r8d, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0x18], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0x40
	cmp	esi, 0
	je	.label_1285
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x18
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	ja	.label_1283
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_1284
.label_1283:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_1284:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1285:
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	xor	eax, eax
	mov	r8b, al
	mov	al, r8b
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e420

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	edx, dword ptr [rbp - 0x1c]
	or	edx, 0x90900
	mov	dword ptr [rbp - 0x2c], edx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	al, 0
	call	openat_safer
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	jge	.label_1288
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1286
.label_1288:
	mov	edi, dword ptr [rbp - 0x30]
	call	fdopendir
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1289
	mov	eax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1287
.label_1289:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x40], eax
	mov	dword ptr [rbp - 0x44], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rax], ecx
.label_1287:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1286:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e4d0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1290
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1290
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	dword ptr [rbp - 0x14], edi
	call	__errno_location
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], edi
.label_1290:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e530

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
	jge	.label_1294
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1291
.label_1294:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1295
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1293
.label_1295:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1293
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1293:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1292
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1292:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1291:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e600

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	dword ptr [rbp - 0x19c], esi
	je	.label_1296
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
.label_1296:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	dword ptr [rbp - 0x1a0], edi
	je	.label_1316
	jmp	.label_1319
.label_1319:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1320
	jmp	.label_1324
.label_1316:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1326
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_1306
.label_1326:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1306:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1299
.label_1320:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_1321
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_1305
.label_1321:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1305:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1299
.label_1324:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_1304
	jmp	.label_1300
.label_1300:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_1302
	jmp	.label_1309
.label_1309:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_1304
	jmp	.label_1312
.label_1312:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_1302
	jmp	.label_1317
.label_1317:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_1304
	jmp	.label_1322
.label_1322:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_1304
	jmp	.label_1301
.label_1301:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1302
	jmp	.label_1310
.label_1310:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1304
	jmp	.label_1313
.label_1313:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1302
	jmp	.label_1318
.label_1318:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_1304
	jmp	.label_1323
.label_1323:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1302
	jmp	.label_1303
.label_1303:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_1304
	jmp	.label_1311
.label_1311:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1304
	jmp	.label_1314
.label_1314:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_1315
	jmp	.label_1302
.label_1302:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1325
.label_1304:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_1297
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_1307
.label_1297:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_1307:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1325
.label_1315:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_1298
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1308
.label_1298:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_1308:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1325:
	jmp	.label_1299
.label_1299:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb20

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eb50

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_1330
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_1327
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1331
.label_1327:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1328
.label_1331:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_1335
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1335:
	jmp	.label_1328
.label_1328:
	jmp	.label_1332
.label_1330:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_1332:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1333
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1333
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1329
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_1334
.label_1329:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_1334:
	jmp	.label_1333
.label_1333:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec80

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
	ja	.label_1336
	jmp	.label_1338
.label_1338:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1337
.label_1336:
	jmp	.label_1337
.label_1337:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ecd0
	.globl rotl64
	.type rotl64, @function
rotl64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed10
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed50
	.globl rotl32
	.type rotl32, @function
rotl32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shr	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed80
	.globl rotr32
	.type rotr32, @function
rotr32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40edb0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ee00

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ee50
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ee90
	.globl rotr16
	.type rotr16, @function
rotr16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eed0
	.globl rotl8
	.type rotl8, @function
rotl8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ef10
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ef50
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
	jb	.label_1339
	jmp	.label_1342
.label_1342:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1339
	jmp	.label_1340
.label_1340:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1341
	jmp	.label_1339
.label_1339:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1343
.label_1341:
	mov	byte ptr [rbp - 1], 0
.label_1343:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40efc0
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
	jb	.label_1344
	jmp	.label_1347
.label_1347:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1345
	jmp	.label_1344
.label_1344:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1346
.label_1345:
	mov	byte ptr [rbp - 1], 0
.label_1346:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f010
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1348
	jmp	.label_1349
.label_1349:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1350
.label_1348:
	mov	byte ptr [rbp - 1], 0
.label_1350:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f040
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1351
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1351:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f070
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
	jb	.label_1352
	jmp	.label_1354
.label_1354:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1355
	jmp	.label_1352
.label_1352:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1353
.label_1355:
	mov	byte ptr [rbp - 1], 0
.label_1353:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f0c0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1356
	jmp	.label_1358
.label_1358:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1357
.label_1356:
	mov	byte ptr [rbp - 1], 0
.label_1357:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f100
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1359
	jmp	.label_1361
.label_1361:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1360
.label_1359:
	mov	byte ptr [rbp - 1], 0
.label_1360:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f140
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1362
	jmp	.label_1364
.label_1364:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1363
.label_1362:
	mov	byte ptr [rbp - 1], 0
.label_1363:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f180
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1365
	jmp	.label_1367
.label_1367:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1366
.label_1365:
	mov	byte ptr [rbp - 1], 0
.label_1366:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f1c0
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
	ja	.label_1368
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1370]]
	jmp	rcx
.label_1408:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1369
.label_1368:
	mov	byte ptr [rbp - 1], 0
.label_1369:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f210
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
	jb	.label_1371
	jmp	.label_1374
.label_1374:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1373
	jmp	.label_1371
.label_1371:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1372
.label_1373:
	mov	byte ptr [rbp - 1], 0
.label_1372:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f260
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1375
	jmp	.label_1377
.label_1377:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1376
.label_1375:
	mov	byte ptr [rbp - 1], 0
.label_1376:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f2a0
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
	jb	.label_1378
	jmp	.label_1381
.label_1381:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1378
	jmp	.label_1379
.label_1379:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1380
	jmp	.label_1378
.label_1378:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1382
.label_1380:
	mov	byte ptr [rbp - 1], 0
.label_1382:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f310

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1383
	jmp	.label_1385
.label_1385:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1384
.label_1383:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1384:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f350
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1386
	jmp	.label_1388
.label_1388:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1387
.label_1386:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1387:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f390

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	edx, 3
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f470

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40f480

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x40f490

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x40f4a0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
