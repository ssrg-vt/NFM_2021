	.section	.text
	.align	16
	#Procedure 0x402950

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_10
	jmp	.label_16
.label_16:
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
.label_10:
	movabs	rdi, OFFSET FLAT:label_15
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_11
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_19
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_20
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x30], eax
	call	emit_backup_suffix_note
	movabs	rdi, OFFSET FLAT:label_18
	call	emit_ancillary_info
.label_12:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402ad0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_21
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b00

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_22
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_23
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b60

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
.label_26:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_25
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_25:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_33
	jmp	.label_38
.label_33:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_26
.label_38:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_28
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_28:
	movabs	rdi, OFFSET FLAT:label_32
	call	gettext
	movabs	rsi, OFFSET FLAT:label_34
	movabs	rdx, OFFSET FLAT:label_27
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
	je	.label_29
	movabs	rsi, OFFSET FLAT:label_37
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_29
	movabs	rdi, OFFSET FLAT:label_30
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_29:
	movabs	rdi, OFFSET FLAT:label_24
	call	gettext
	movabs	rsi, OFFSET FLAT:label_27
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_31
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_35
	movabs	rsi, OFFSET FLAT:label_36
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
	.align	16
	#Procedure 0x402d00

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x91], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_35
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_65
	movabs	rsi, OFFSET FLAT:label_66
	mov	qword ptr [rbp - 0x138], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_65
	mov	qword ptr [rbp - 0x140], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdin
	mov	qword ptr [rbp - 0x148], rax
	call	atexit
	lea	rdi, [rbp - 0x78]
	mov	dword ptr [rbp - 0x14c], eax
	call	cp_option_init
	call	priv_set_remove_linkdir
	mov	dword ptr [rbp - 0x150], eax
.label_109:
	movabs	rdx, OFFSET FLAT:label_95
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_112
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x154], eax
	mov	dword ptr [rbp - 0x158], ecx
	je	.label_99
	jmp	.label_50
.label_50:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_51
	jmp	.label_55
.label_55:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x160], eax
	je	.label_57
	jmp	.label_62
.label_62:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x164], eax
	je	.label_64
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x168], eax
	je	.label_74
	jmp	.label_82
.label_82:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x16c], eax
	je	.label_83
	jmp	.label_90
.label_90:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x170], eax
	je	.label_92
	jmp	.label_94
.label_94:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x174], eax
	je	.label_97
	jmp	.label_104
.label_104:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x178], eax
	je	.label_105
	jmp	.label_87
.label_87:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x17c], eax
	je	.label_69
	jmp	.label_48
.label_48:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x180], eax
	je	.label_44
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x184], eax
	je	.label_54
	jmp	.label_56
.label_56:
	mov	eax, dword ptr [rbp - 0x154]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x188], eax
	je	.label_84
	jmp	.label_58
.label_83:
	mov	byte ptr [rbp - 0x16], 1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_67
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x28], rax
.label_67:
	jmp	.label_45
.label_92:
	mov	dword ptr [rbp - 0x70], 1
	jmp	.label_45
.label_97:
	mov	dword ptr [rbp - 0x70], 3
	jmp	.label_45
.label_105:
	mov	dword ptr [rbp - 0x70], 2
	jmp	.label_45
.label_84:
	mov	byte ptr [byte ptr [remove_trailing_slashes]],  1
	jmp	.label_45
.label_69:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_107
	movabs	rdi, OFFSET FLAT:label_96
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_107:
	lea	rsi, [rbp - 0x128]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	stat
	cmp	eax, 0
	je	.label_111
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_53
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x198], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x18c]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_111:
	mov	eax, dword ptr [rbp - 0x110]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_61
	movabs	rdi, OFFSET FLAT:label_49
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1a0], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_61:
	jmp	.label_91
.label_91:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_45
.label_64:
	mov	byte ptr [rbp - 0x81], 1
	jmp	.label_45
.label_44:
	mov	byte ptr [rbp - 0x4b], 1
	jmp	.label_45
.label_54:
	mov	byte ptr [rbp - 0x4a], 1
	jmp	.label_45
.label_57:
	mov	byte ptr [rbp - 0x16], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_45
.label_74:
	test	byte ptr [rbp - 0x91], 1
	je	.label_110
	mov	byte ptr [rbp - 0x53], 0
	mov	byte ptr [rbp - 0x57], 1
.label_110:
	jmp	.label_45
.label_51:
	xor	edi, edi
	call	usage
.label_99:
	movabs	rsi, OFFSET FLAT:label_18
	movabs	rdx, OFFSET FLAT:label_34
	movabs	r8, OFFSET FLAT:label_41
	movabs	r9, OFFSET FLAT:label_42
	movabs	rax, OFFSET FLAT:label_43
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x1a8], rdi
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_58:
	mov	edi, 1
	call	usage
.label_45:
	jmp	.label_109
.label_112:
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x88], eax
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	add	rcx, rdx
	mov	qword ptr [rbp - 0x90], rcx
	mov	eax, dword ptr [rbp - 0x88]
	cmp	qword ptr [rbp - 0x80], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	edi, sil
	cmp	eax, edi
	jg	.label_81
	cmp	dword ptr [rbp - 0x88], 0
	jg	.label_103
	movabs	rdi, OFFSET FLAT:label_106
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_115
.label_103:
	movabs	rdi, OFFSET FLAT:label_117
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x1b4], edi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_115:
	mov	edi, 1
	call	usage
.label_81:
	test	byte ptr [rbp - 0x81], 1
	je	.label_63
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_68
	movabs	rdi, OFFSET FLAT:label_73
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_68:
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x88]
	jge	.label_85
	movabs	rdi, OFFSET FLAT:label_89
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x1c4], edi
	mov	esi, dword ptr [rbp - 0x1c4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_85:
	jmp	.label_75
.label_63:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_72
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x88]
	jg	.label_113
	jmp	.label_46
.label_113:
	movabs	rdi, OFFSET FLAT:label_77
	movabs	rsi, OFFSET FLAT:label_78
	mov	edx, 0x1c9
	movabs	rcx, OFFSET FLAT:label_79
	call	__assert_fail
.label_46:
	cmp	dword ptr [rbp - 0x88], 2
	jne	.label_59
	mov	eax, 0xffffff9c
	mov	r8d, 1
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rcx + 8]
	mov	edi, eax
	mov	edx, eax
	call	renameatu
	cmp	eax, 0
	je	.label_116
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c8], ecx
	jmp	.label_39
.label_116:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c8], eax
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0x1c8]
	mov	dword ptr [rbp - 0x44], eax
.label_59:
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_93
	mov	eax, dword ptr [rbp - 0x88]
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	target_directory_operand
	test	al, 1
	jne	.label_102
	jmp	.label_93
.label_102:
	mov	dword ptr [rbp - 0x44], 0xffffffff
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, -1
	mov	dword ptr [rbp - 0x88], eax
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_70
.label_93:
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x88]
	jge	.label_40
	movabs	rdi, OFFSET FLAT:label_49
	call	gettext
	mov	edi, 4
	mov	ecx, dword ptr [rbp - 0x88]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0x1d0], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x1d0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_40:
	jmp	.label_70
.label_70:
	jmp	.label_72
.label_72:
	jmp	.label_75
.label_75:
	cmp	dword ptr [rbp - 0x70], 2
	jne	.label_76
	mov	byte ptr [rbp - 0x4b], 0
.label_76:
	test	byte ptr [rbp - 0x16], 1
	je	.label_86
	cmp	dword ptr [rbp - 0x70], 2
	jne	.label_86
	movabs	rdi, OFFSET FLAT:label_88
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_86:
	test	byte ptr [rbp - 0x16], 1
	je	.label_98
	movabs	rdi, OFFSET FLAT:label_101
	call	gettext
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	xget_version
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_108
.label_98:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_108
.label_108:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	dword ptr [rbp - 0x78], eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	set_simple_backup_suffix
	call	hash_init
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_47
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x88]
	jg	.label_114
	lea	rdi, [rbp - 0x78]
	call	dest_info_init
.label_114:
	mov	byte ptr [rbp - 0x15], 1
	mov	dword ptr [rbp - 0x12c], 0
.label_80:
	mov	eax, dword ptr [rbp - 0x12c]
	cmp	eax, dword ptr [rbp - 0x88]
	jge	.label_60
	mov	edx, 1
	lea	rcx, [rbp - 0x78]
	mov	eax, dword ptr [rbp - 0x12c]
	add	eax, 1
	cmp	eax, dword ptr [rbp - 0x88]
	sete	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x47], sil
	movsxd	rdi, dword ptr [rbp - 0x12c]
	mov	r8, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [r8 + rdi*8]
	mov	rsi, qword ptr [rbp - 0x80]
	call	movefile
	and	al, 1
	movzx	edx, al
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	r9d, al
	and	r9d, edx
	cmp	r9d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	eax, dword ptr [rbp - 0x12c]
	add	eax, 1
	mov	dword ptr [rbp - 0x12c], eax
	jmp	.label_80
.label_60:
	jmp	.label_100
.label_47:
	xor	edx, edx
	lea	rcx, [rbp - 0x78]
	mov	byte ptr [rbp - 0x47], 1
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rax + 8]
	call	movefile
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
.label_100:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403610

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 0
	mov	rdi, qword ptr [rbp - 8]
	call	cp_options_default
	xor	edi, edi
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x14], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 1
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], 2
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x15], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x16], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x17], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 8], 4
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x19], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1d], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x22], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1e], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1f], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	mov	cl, byte ptr [rbp - 9]
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rax + 0x25], cl
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x21], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x29], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x24], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x26], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x27], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2a], 1
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0xc], 2
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2c], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2b], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 0
	call	isatty
	cmp	eax, 0
	setne	cl
	mov	rdx, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rdx + 0x2f], cl
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x30], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x2d], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0x2e], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x48], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403770

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rsi, [rbp - 0x98]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	stat
	cmp	eax, 0
	jne	.label_119
	xor	eax, eax
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_121
.label_119:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa4], ecx
.label_121:
	mov	eax, dword ptr [rbp - 0xa4]
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 0x9c], eax
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0xa5], dl
	jne	.label_120
	mov	eax, dword ptr [rbp - 0x80]
	and	eax, 0xf000
	cmp	eax, 0x4000
	sete	cl
	mov	byte ptr [rbp - 0xa5], cl
.label_120:
	mov	al, byte ptr [rbp - 0xa5]
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	cmp	dword ptr [rbp - 0x9c], 0
	je	.label_118
	cmp	dword ptr [rbp - 0x9c], 2
	je	.label_118
	movabs	rdi, OFFSET FLAT:label_53
	mov	esi, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0xac], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xb8], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xac]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_118:
	mov	al, byte ptr [rbp - 0x9d]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403880

	.globl movefile
	.type movefile, @function
movefile:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [byte ptr [remove_trailing_slashes]],  1
	je	.label_122
	mov	rdi, qword ptr [rbp - 8]
	call	strip_trailing_slashes
	mov	byte ptr [rbp - 0x39], al
.label_122:
	test	byte ptr [rbp - 0x11], 1
	je	.label_124
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	file_name_concat
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	strip_trailing_slashes
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x3a], al
	call	do_move
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_123
.label_124:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	do_move
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
.label_123:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403940

	.globl do_move
	.type do_move, @function
do_move:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xor	eax, eax
	lea	r8, [rbp - 0x19]
	lea	r9, [rbp - 0x1a]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, eax
	call	copy
	and	al, 1
	mov	byte ptr [rbp - 0x1b], al
	test	byte ptr [rbp - 0x1b], 1
	je	.label_132
	test	byte ptr [rbp - 0x19], 1
	je	.label_125
	mov	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x1b], 0
	jmp	.label_130
.label_125:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_136
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_129
.label_136:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_129:
	jmp	.label_130
.label_130:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_135
	lea	rdi, [rbp - 0x48]
	call	rm_option_init
	lea	rsi, [rbp - 0x48]
	lea	rdi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x2e]
	and	cl, 1
	mov	byte ptr [rbp - 0x2e], cl
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	call	rm
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 2
	je	.label_126
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_126
	cmp	dword ptr [rbp - 0x4c], 4
	jne	.label_133
.label_126:
	jmp	.label_134
.label_133:
	movabs	rdi, OFFSET FLAT:label_127
	movabs	rsi, OFFSET FLAT:label_78
	mov	edx, 0xef
	movabs	rcx, OFFSET FLAT:label_128
	call	__assert_fail
.label_134:
	cmp	dword ptr [rbp - 0x4c], 4
	jne	.label_131
	mov	byte ptr [rbp - 0x1b], 0
.label_131:
	jmp	.label_135
.label_135:
	jmp	.label_132
.label_132:
	mov	al, byte ptr [rbp - 0x1b]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a80

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:rm_option_init.dev_ino_buf
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0xa], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 9], 1
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 4], 5
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x19], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x1a], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x1b], 1
	mov	rdi, rax
	call	get_root_dev_ino
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_137
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_139
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_138
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_137:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x18], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b50

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
	je	.label_143
	mov	dword ptr [rbp - 0x18], 0x218
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 8], 1
	je	.label_154
	mov	eax, dword ptr [rbp - 0x18]
	or	eax, 0x40
	mov	dword ptr [rbp - 0x18], eax
.label_154:
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
	jne	.label_153
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_140
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_144
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
	jmp	.label_158
.label_153:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	call	rm_fts
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 2
	je	.label_146
	cmp	dword ptr [rbp - 0x2c], 3
	je	.label_146
	cmp	dword ptr [rbp - 0x2c], 4
	jne	.label_150
.label_146:
	jmp	.label_148
.label_150:
	movabs	rdi, OFFSET FLAT:label_155
	movabs	rsi, OFFSET FLAT:label_156
	mov	edx, 0x261
	movabs	rcx, OFFSET FLAT:label_157
	call	__assert_fail
.label_148:
	jmp	.label_147
.label_147:
	cmp	dword ptr [rbp - 0x2c], 4
	je	.label_149
	cmp	dword ptr [rbp - 0x2c], 3
	jne	.label_152
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_152
.label_149:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x14], eax
.label_152:
	jmp	.label_141
.label_141:
	jmp	.label_142
.label_158:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fts_close
	cmp	eax, 0
	je	.label_145
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_151
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 0x14], 4
.label_145:
	jmp	.label_143
.label_143:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403cf0

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
	ja	.label_165
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_167]]
	jmp	rcx
label_403d3a:
	mov     rax, qword ptr [rbp - 0x20]
	test    byte ptr [rax + 9], 1
	jne     .label_191
	mov     rax, qword ptr [rbp - 0x20]
	test    byte ptr [rax + 0xa], 1
	je      .label_186
	mov     rax, qword ptr [rbp - 0x10]
	mov     edi, dword ptr [rax + 0x2c]
	mov     rax, qword ptr [rbp - 0x18]
	mov     rsi, qword ptr [rax + 0x30]
	call    is_empty_dir
	test    al, 1
	jne     .label_191
.label_186:
	movabs  rdi, OFFSET FLAT:label_194
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
	jmp     .label_162
.label_191:
	mov     rax, qword ptr [rbp - 0x18]
	cmp     qword ptr [rax + 0x58], 0
	jne     .label_176
	mov     rax, qword ptr [rbp - 0x18]
	mov     rdi, qword ptr [rax + 0x30]
	call    last_component
	mov     rdi, rax
	call    dot_or_dotdot
	test    al, 1
	jne     .label_177
	jmp     .label_178
.label_177:
	movabs  rdi, OFFSET FLAT:label_179
	call    gettext
	xor     edi, edi
	mov     esi, 4
	movabs  rdx, OFFSET FLAT:label_185
	mov     qword ptr [rbp - 0xf0], rax
	call    quotearg_n_style
	mov     edi, 1
	mov     esi, 4
	movabs  rdx, OFFSET FLAT:label_181
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
	jmp     .label_162
.label_178:
	mov     rax, qword ptr [rbp - 0x20]
	cmp     qword ptr [rax + 0x10], 0
	je      .label_189
	mov     rax, qword ptr [rbp - 0x18]
	mov     rax, qword ptr [rax + 0x80]
	mov     rcx, qword ptr [rbp - 0x20]
	mov     rcx, qword ptr [rcx + 0x10]
	cmp     rax, qword ptr [rcx]
	jne     .label_189
	mov     rax, qword ptr [rbp - 0x18]
	mov     rax, qword ptr [rax + 0x78]
	mov     rcx, qword ptr [rbp - 0x20]
	mov     rcx, qword ptr [rcx + 0x10]
	cmp     rax, qword ptr [rcx + 8]
	jne     .label_189
	jmp     .label_174
.label_174:
	mov     rax, qword ptr [rbp - 0x18]
	mov     rdi, qword ptr [rax + 0x38]
	mov     ecx, OFFSET FLAT:label_138
	mov     esi, ecx
	call    strcmp
	cmp     eax, 0
	jne     .label_180
	movabs  rdi, OFFSET FLAT:label_184
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
	jmp     .label_196
.label_180:
	movabs  rdi, OFFSET FLAT:label_173
	call    gettext
	xor     edi, edi
	mov     esi, 4
	mov     rcx, qword ptr [rbp - 0x18]
	mov     rdx, qword ptr [rcx + 0x38]
	mov     qword ptr [rbp - 0x118], rax
	call    quotearg_n_style
	mov     edi, 1
	mov     esi, 4
	movabs  rdx, OFFSET FLAT:label_138
	mov     qword ptr [rbp - 0x120], rax
	call    quotearg_n_style
	xor     esi, esi
	mov     edi, esi
	mov     rdx, qword ptr [rbp - 0x118]
	mov     rcx, qword ptr [rbp - 0x120]
	mov     r8, rax
	mov     al, 0
	call    error
.label_196:
	movabs  rdi, OFFSET FLAT:label_195
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
	jmp     .label_162
.label_189:
	mov     rax, qword ptr [rbp - 0x20]
	test    byte ptr [rax + 0x18], 1
	je      .label_175
	movabs  rsi, OFFSET FLAT:label_181
	xor     eax, eax
	mov     edx, eax
	mov     byte ptr [rbp - 0x25], 0
	mov     rcx, qword ptr [rbp - 0x18]
	mov     rdi, qword ptr [rcx + 0x30]
	call    file_name_concat
	mov     qword ptr [rbp - 0x30], rax
	cmp     qword ptr [rbp - 0x30], 0
	je      .label_188
	lea     rsi, [rbp - 0xc0]
	mov     rdi, qword ptr [rbp - 0x30]
	call    lstat
	cmp     eax, 0
	je      .label_182
.label_188:
	movabs  rdi, OFFSET FLAT:label_187
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
.label_182:
	mov     rdi, qword ptr [rbp - 0x30]
	call    free
	test    byte ptr [rbp - 0x25], 1
	jne     .label_192
	mov     rax, qword ptr [rbp - 0x10]
	mov     rax, qword ptr [rax + 0x18]
	cmp     rax, qword ptr [rbp - 0xc0]
	je      .label_193
.label_192:
	test    byte ptr [rbp - 0x25], 1
	jne     .label_172
	movabs  rdi, OFFSET FLAT:label_168
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
	movabs  rdi, OFFSET FLAT:label_190
	call    gettext
	xor     esi, esi
	mov     edi, esi
	mov     rdx, rax
	mov     al, 0
	call    error
.label_172:
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	call    fts_skip_tree
	mov     dword ptr [rbp - 4], 4
	jmp     .label_162
.label_193:
	jmp     .label_175
.label_175:
	jmp     .label_176
.label_176:
	mov     edx, 1
	mov     r8d, 2
	lea     r9, [rbp - 0xc4]
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	mov     rcx, qword ptr [rbp - 0x20]
	call    prompt
	mov     dword ptr [rbp - 0xc8], eax
	cmp     dword ptr [rbp - 0xc8], 2
	jne     .label_183
	cmp     dword ptr [rbp - 0xc4], 4
	jne     .label_183
	mov     ecx, 1
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	mov     rdx, qword ptr [rbp - 0x20]
	call    excise
	mov     dword ptr [rbp - 0xc8], eax
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	call    fts_skip_tree
.label_183:
	cmp     dword ptr [rbp - 0xc8], 2
	je      .label_171
	mov     rdi, qword ptr [rbp - 0x18]
	call    mark_ancestor_dirs
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	call    fts_skip_tree
.label_171:
	mov     eax, dword ptr [rbp - 0xc8]
	mov     dword ptr [rbp - 4], eax
	jmp     .label_162
.label_2650:
	mov     rax, qword ptr [rbp - 0x18]
	movzx   ecx, word ptr [rax + 0x70]
	cmp     ecx, 6
	jne     .label_161
	mov     rax, qword ptr [rbp - 0x20]
	test    byte ptr [rax + 8], 1
	je      .label_161
	xor     eax, eax
	mov     ecx, eax
	mov     rdx, qword ptr [rbp - 0x18]
	cmp     rcx, qword ptr [rdx + 0x58]
	jge     .label_161
	mov     rax, qword ptr [rbp - 0x18]
	mov     rax, qword ptr [rax + 0x78]
	mov     rcx, qword ptr [rbp - 0x10]
	cmp     rax, qword ptr [rcx + 0x18]
	je      .label_161
	mov     rdi, qword ptr [rbp - 0x18]
	call    mark_ancestor_dirs
	movabs  rdi, OFFSET FLAT:label_168
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
	jmp     .label_162
.label_161:
	mov     al, 1
	mov     rcx, qword ptr [rbp - 0x18]
	movzx   edx, word ptr [rcx + 0x70]
	cmp     edx, 6
	mov     byte ptr [rbp - 0x14d], al
	je      .label_163
	mov     rax, qword ptr [rbp - 0x18]
	movzx   ecx, word ptr [rax + 0x70]
	cmp     ecx, 4
	sete    dl
	mov     byte ptr [rbp - 0x14d], dl
.label_163:
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
	je      .label_166
	mov     eax, dword ptr [rbp - 0xd0]
	mov     dword ptr [rbp - 4], eax
	jmp     .label_162
.label_166:
	mov     rdi, qword ptr [rbp - 0x10]
	mov     rsi, qword ptr [rbp - 0x18]
	mov     rdx, qword ptr [rbp - 0x20]
	mov     al, byte ptr [rbp - 0xc9]
	and     al, 1
	movzx   ecx, al
	call    excise
	mov     dword ptr [rbp - 4], eax
	jmp     .label_162
.label_2649:
	jmp     .label_170
.label_170:
	movabs  rdi, OFFSET FLAT:label_159
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
	jmp     .label_162
.label_2651:
	movabs  rdi, OFFSET FLAT:label_164
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
	jmp     .label_162
.label_165:
	movabs  rdi, OFFSET FLAT:label_160
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
	movabs  r9, OFFSET FLAT:label_169
	mov     edi, ecx
	mov     esi, ecx
	mov     rdx, qword ptr [rbp - 0x170]
	mov     ecx, dword ptr [rbp - 0x174]
	mov     r8, rax
	mov     al, 0
	call    error
	call    abort
.label_162:
	mov     eax, dword ptr [rbp - 4]
	add     rsp, 0x180
	pop     rbp
	ret
	.section	.text
	.align	16
	#Procedure 0x4044c0

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
	jge	.label_198
	mov	byte ptr [rbp - 1], 0
	jmp	.label_199
.label_198:
	mov	edi, dword ptr [rbp - 0x28]
	call	fdopendir
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_197
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	byte ptr [rbp - 1], 0
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_199
.label_197:
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
	je	.label_200
	mov	byte ptr [rbp - 1], 0
	jmp	.label_199
.label_200:
	xor	eax, eax
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x24], 0
	cmove	eax, ecx
	cmp	eax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_199:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404590

	.globl mark_ancestor_dirs
	.type mark_ancestor_dirs, @function
mark_ancestor_dirs:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_203:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 0x58]
	jg	.label_201
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_202
	jmp	.label_201
.label_202:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_203
.label_201:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045f0

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
	.align	16
	#Procedure 0x404630

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_204
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
	je	.label_205
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0x2f
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_205:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_206
.label_204:
	mov	byte ptr [rbp - 1], 0
.label_206:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046b0

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
	je	.label_224
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
.label_224:
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
	je	.label_219
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
.label_219:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_212
	mov	dword ptr [rbp - 4], 3
	jmp	.label_207
.label_212:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 5
	jne	.label_221
	mov	dword ptr [rbp - 4], 2
	jmp	.label_207
.label_221:
	mov	dword ptr [rbp - 0xf8], 0
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax], 1
	jne	.label_230
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 3
	je	.label_237
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x19], 1
	je	.label_230
.label_237:
	cmp	dword ptr [rbp - 0xec], 0xa
	je	.label_230
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	write_protected_non_symlink
	mov	dword ptr [rbp - 0xf0], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf8], edi
.label_230:
	cmp	dword ptr [rbp - 0xf0], 0
	jne	.label_210
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 3
	jne	.label_208
.label_210:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xf0]
	jg	.label_231
	cmp	dword ptr [rbp - 0xec], 0
	jne	.label_231
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	cache_fstatat
	cmp	eax, 0
	jne	.label_214
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_213
	mov	dword ptr [rbp - 0xec], 0xa
	jmp	.label_215
.label_213:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_223
	mov	dword ptr [rbp - 0xec], 4
.label_223:
	jmp	.label_215
.label_215:
	jmp	.label_234
.label_214:
	mov	dword ptr [rbp - 0xf0], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
.label_234:
	jmp	.label_231
.label_231:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xf0]
	jg	.label_238
	mov	eax, dword ptr [rbp - 0xec]
	mov	ecx, eax
	sub	ecx, 4
	mov	dword ptr [rbp - 0x10c], eax
	mov	dword ptr [rbp - 0x110], ecx
	je	.label_209
	jmp	.label_218
.label_218:
	mov	eax, dword ptr [rbp - 0x10c]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x114], eax
	jne	.label_216
	jmp	.label_227
.label_227:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 3
	je	.label_229
	mov	dword ptr [rbp - 4], 2
	jmp	.label_207
.label_229:
	jmp	.label_216
.label_209:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 9], 1
	jne	.label_239
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0xa], 1
	je	.label_240
	test	byte ptr [rbp - 0xf1], 1
	jne	.label_239
.label_240:
	mov	dword ptr [rbp - 0xf0], 0xffffffff
	mov	dword ptr [rbp - 0xf8], 0x15
.label_239:
	jmp	.label_216
.label_216:
	jmp	.label_238
.label_238:
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	mov	qword ptr [rbp - 0x100], rax
	cmp	dword ptr [rbp - 0xf0], 0
	jge	.label_225
	movabs	rdi, OFFSET FLAT:label_194
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
	jmp	.label_207
.label_225:
	cmp	dword ptr [rbp - 0xec], 4
	jne	.label_211
	cmp	dword ptr [rbp - 0x2c], 2
	jne	.label_211
	test	byte ptr [rbp - 0xf1], 1
	jne	.label_211
	mov	rdi,  qword ptr [word ptr [stderr]]
	cmp	dword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0x120], rdi
	je	.label_217
	movabs	rdi, OFFSET FLAT:label_228
	call	gettext
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_235
.label_217:
	movabs	rdi, OFFSET FLAT:label_233
	call	gettext
	mov	qword ptr [rbp - 0x128], rax
.label_235:
	mov	rax, qword ptr [rbp - 0x128]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rdi, qword ptr [rbp - 0x120]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x12c], eax
	jmp	.label_241
.label_211:
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	cache_fstatat
	cmp	eax, 0
	je	.label_220
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_194
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
	jmp	.label_207
.label_220:
	mov	rdi,  qword ptr [word ptr [stderr]]
	cmp	dword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0x138], rdi
	je	.label_236
	movabs	rdi, OFFSET FLAT:label_222
	call	gettext
	mov	qword ptr [rbp - 0x140], rax
	jmp	.label_226
.label_236:
	movabs	rdi, OFFSET FLAT:label_232
	call	gettext
	mov	qword ptr [rbp - 0x140], rax
.label_226:
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
.label_241:
	call	yesno
	test	al, 1
	jne	.label_242
	mov	dword ptr [rbp - 4], 3
	jmp	.label_207
.label_242:
	jmp	.label_208
.label_208:
	mov	dword ptr [rbp - 4], 2
.label_207:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bf0

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
	jne	.label_249
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x1a], 1
	je	.label_250
	test	byte ptr [rbp - 0x21], 1
	je	.label_252
	movabs	rdi, OFFSET FLAT:label_253
	call	gettext
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_255
.label_252:
	movabs	rdi, OFFSET FLAT:label_256
	call	gettext
	mov	qword ptr [rbp - 0xc0], rax
.label_255:
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
.label_250:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_245
.label_249:
	call	__errno_location
	cmp	dword ptr [rax], 0x1e
	jne	.label_247
	lea	rdx, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x30]
	call	lstatat
	cmp	eax, 0
	je	.label_257
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_243
.label_257:
	call	__errno_location
	mov	dword ptr [rax], 0x1e
.label_243:
	jmp	.label_247
.label_247:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd8], rdi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 0xd8]
	call	ignorable_missing
	test	al, 1
	jne	.label_254
	jmp	.label_251
.label_254:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_245
.label_251:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	jne	.label_246
	call	__errno_location
	cmp	dword ptr [rax], 0x27
	je	.label_244
	call	__errno_location
	cmp	dword ptr [rax], 0x15
	je	.label_244
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	je	.label_244
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	jne	.label_246
.label_244:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x40], 1
	je	.label_248
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x40], 0xd
	jne	.label_246
.label_248:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x40]
	mov	dword ptr [rbp - 0xdc], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xdc]
	mov	dword ptr [rax], ecx
.label_246:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_194
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
.label_245:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e40

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_260:
	mov	rdi, qword ptr [rbp - 8]
	call	readdir
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_259
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x13
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, 1
	jne	.label_258
.label_259:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
.label_258:
	jmp	.label_260
	.section	.text
	.align	16
	#Procedure 0x404e90

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
	.align	16
	#Procedure 0x404eb0

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
	jne	.label_264
	jmp	.label_261
.label_264:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_262
.label_261:
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	cache_fstatat
	cmp	eax, 0
	je	.label_266
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_262
.label_266:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_265
	mov	dword ptr [rbp - 4], 0
	jmp	.label_262
.label_265:
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	faccessat
	cmp	eax, 0
	jne	.label_263
	mov	dword ptr [rbp - 4], 0
	jmp	.label_262
.label_263:
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	edx, 1
	cmp	dword ptr [rax], 0xd
	cmove	ecx, edx
	mov	dword ptr [rbp - 4], ecx
.label_262:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f80

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
	jne	.label_267
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	fstatat
	cmp	eax, 0
	je	.label_267
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x30], -2
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
.label_267:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rdx + 0x30]
	jg	.label_268
	mov	dword ptr [rbp - 4], 0
	jmp	.label_269
.label_268:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x20], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
.label_269:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405030

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
	je	.label_270
	mov	edi, dword ptr [rbp - 0xc]
	call	nonexistent_file_errno
	mov	byte ptr [rbp - 0xd], al
.label_270:
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405070

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
	je	.label_271
	jmp	.label_273
.label_273:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x14
	mov	dword ptr [rbp - 0x14], eax
	je	.label_271
	jmp	.label_276
.label_276:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x16
	mov	dword ptr [rbp - 0x18], eax
	je	.label_271
	jmp	.label_275
.label_275:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_272
	jmp	.label_271
.label_271:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_274
.label_272:
	mov	byte ptr [rbp - 1], 0
.label_274:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050e0

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	mov	qword ptr [rbp - 0x28], r8
	mov	rsi, qword ptr [rbp - 0x28]
	test	byte ptr [rsi + 0x25], 1
	je	.label_292
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x23], 1
	mov	byte ptr [rbp - 0x39], al
	je	.label_281
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x26]
	mov	byte ptr [rbp - 0x39], cl
.label_281:
	mov	al, byte ptr [rbp - 0x39]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	test	byte ptr [rbp - 0x29], 1
	mov	byte ptr [rbp - 0x3a], dl
	jne	.label_287
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x3a], cl
.label_287:
	mov	al, byte ptr [rbp - 0x3a]
	lea	rsi, [rbp - 0x38]
	and	al, 1
	mov	byte ptr [rbp - 0x2a], al
	mov	rdi, qword ptr [rbp - 0x10]
	call	lgetfilecon
	xor	ecx, ecx
	cmp	ecx, eax
	jg	.label_294
	mov	rdi, qword ptr [rbp - 0x38]
	call	setfscreatecon
	cmp	eax, 0
	jge	.label_278
	test	byte ptr [rbp - 0x29], 1
	jne	.label_277
	test	byte ptr [rbp - 0x2a], 1
	je	.label_280
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_280
.label_277:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_288
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_280:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_293
	mov	rdi, qword ptr [rbp - 0x38]
	call	freecon
	mov	byte ptr [rbp - 1], 0
	jmp	.label_279
.label_293:
	jmp	.label_278
.label_278:
	mov	rdi, qword ptr [rbp - 0x38]
	call	freecon
	jmp	.label_282
.label_294:
	test	byte ptr [rbp - 0x29], 1
	jne	.label_283
	test	byte ptr [rbp - 0x2a], 1
	je	.label_286
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_286
.label_283:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_290
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_286:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_295
	mov	byte ptr [rbp - 1], 0
	jmp	.label_279
.label_295:
	jmp	.label_282
.label_282:
	jmp	.label_284
.label_292:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	je	.label_285
	test	byte ptr [rbp - 0x1d], 1
	je	.label_289
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	defaultcon
	cmp	eax, 0
	jge	.label_289
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable_ctx_err
	test	al, 1
	jne	.label_289
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_291
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_289:
	jmp	.label_285
.label_285:
	jmp	.label_284
.label_284:
	mov	byte ptr [rbp - 1], 1
.label_279:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405340

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_296
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	byte ptr [rbp - 5], al
.label_296:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405370

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053a0

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_297
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	byte ptr [rbp - 5], al
.label_297:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053d0

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	r8b, sil
	mov	r9b, 1
	mov	qword ptr [rbp - 0x10], rdi
	and	r8b, 1
	mov	byte ptr [rbp - 0x11], r8b
	and	al, 1
	mov	byte ptr [rbp - 0x12], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	test	byte ptr [rcx + 0x23], 1
	mov	byte ptr [rbp - 0x23], r9b
	je	.label_301
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x26]
	mov	byte ptr [rbp - 0x23], cl
.label_301:
	mov	al, byte ptr [rbp - 0x23]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	test	byte ptr [rbp - 0x21], 1
	mov	byte ptr [rbp - 0x24], dl
	jne	.label_302
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x24], cl
.label_302:
	mov	al, byte ptr [rbp - 0x24]
	and	al, 1
	mov	byte ptr [rbp - 0x22], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rbp - 0x12]
	mov	cl, byte ptr [rbp - 0x11]
	and	al, 1
	and	cl, 1
	movzx	esi, al
	movzx	edx, cl
	call	restorecon
	test	al, 1
	jne	.label_303
	test	byte ptr [rbp - 0x21], 1
	jne	.label_298
	test	byte ptr [rbp - 0x22], 1
	je	.label_299
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_299
.label_298:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_300
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], esi
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_299:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_304
.label_303:
	mov	byte ptr [rbp - 1], 1
.label_304:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054f0

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dl
	mov	cl, sil
	mov	qword ptr [rbp - 8], rdi
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
	and	al, 1
	mov	byte ptr [rbp - 0xa], al
	call	__errno_location
	xor	edx, edx
	mov	cl, dl
	mov	dword ptr [rax], 0x5f
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405530

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x3d
	mov	ecx, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash
	movabs	r8, OFFSET FLAT:triple_compare
	movabs	r9, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rcx, r8
	mov	r8, r9
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x40], rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405590
	.globl src_info_init
	.type src_info_init, @function
src_info_init:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x3d
	mov	ecx, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash_no_name
	movabs	r8, OFFSET FLAT:triple_compare
	movabs	r9, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rcx, r8
	mov	r8, r9
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055f0

	.globl copy
	.type copy, @function
copy:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x70
	mov	al, dl
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	rdi, qword ptr [rbp - 0x30]
	call	valid_options
	test	al, 1
	jne	.label_310
	jmp	.label_308
.label_310:
	jmp	.label_309
.label_308:
	movabs	rdi, OFFSET FLAT:label_305
	movabs	rsi, OFFSET FLAT:label_306
	mov	edx, 0xb9f
	movabs	rcx, OFFSET FLAT:label_307
	call	__assert_fail
.label_309:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 1
	lea	rdx, [rbp - 0x41]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [top_level_src_name]],  rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [top_level_dst_name]],  rsi
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	r8b, byte ptr [rbp - 0x21]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [rbp - 0x40]
	and	r8b, 1
	movzx	ebx, r8b
	mov	qword ptr [rbp - 0x50], rdx
	mov	edx, ebx
	mov	qword ptr [rbp - 0x58], rcx
	mov	r8, qword ptr [rbp - 0x58]
	mov	dword ptr [rsp], 1
	mov	r14, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	dword ptr [rbp - 0x5c], eax
	call	copy_internal
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056e0

	.globl valid_options
	.type valid_options, @function
valid_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_323
	jmp	.label_331
.label_323:
	movabs	rdi, OFFSET FLAT:label_333
	movabs	rsi, OFFSET FLAT:label_306
	mov	edx, 0xb86
	movabs	rcx, OFFSET FLAT:label_313
	call	__assert_fail
.label_331:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 3
	ja	.label_325
	jmp	.label_329
.label_325:
	movabs	rdi, OFFSET FLAT:label_330
	movabs	rsi, OFFSET FLAT:label_306
	mov	edx, 0xb87
	movabs	rcx, OFFSET FLAT:label_313
	call	__assert_fail
.label_329:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 1
	je	.label_321
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 2
	je	.label_321
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_332
.label_321:
	jmp	.label_314
.label_332:
	movabs	rdi, OFFSET FLAT:label_316
	movabs	rsi, OFFSET FLAT:label_306
	mov	edx, 0xb88
	movabs	rcx, OFFSET FLAT:label_313
	call	__assert_fail
.label_314:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_311
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 1
	je	.label_311
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_317
.label_311:
	jmp	.label_322
.label_317:
	movabs	rdi, OFFSET FLAT:label_319
	movabs	rsi, OFFSET FLAT:label_306
	mov	edx, 0xb89
	movabs	rcx, OFFSET FLAT:label_313
	call	__assert_fail
.label_322:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x17], 1
	je	.label_315
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x2c], 1
	jne	.label_320
.label_315:
	jmp	.label_327
.label_320:
	movabs	rdi, OFFSET FLAT:label_328
	movabs	rsi, OFFSET FLAT:label_306
	mov	edx, 0xb8a
	movabs	rcx, OFFSET FLAT:label_313
	call	__assert_fail
.label_327:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_318
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 2
	jne	.label_324
.label_318:
	jmp	.label_326
.label_324:
	movabs	rdi, OFFSET FLAT:label_312
	movabs	rsi, OFFSET FLAT:label_306
	mov	edx, 0xb8d
	movabs	rcx, OFFSET FLAT:label_313
	call	__assert_fail
.label_326:
	mov	al, 1
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058b0

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x7b0
	mov	al, dl
	mov	r10, qword ptr [rbp + 0x28]
	mov	r11, qword ptr [rbp + 0x20]
	mov	rbx, qword ptr [rbp + 0x18]
	mov	r14b, byte ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x48], r9
	and	r14b, 1
	mov	byte ptr [rbp - 0x49], r14b
	mov	qword ptr [rbp - 0x58], rbx
	mov	qword ptr [rbp - 0x60], r11
	mov	qword ptr [rbp - 0x68], r10
	mov	byte ptr [rbp - 0x199], 0
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x1b0], 0
	mov	byte ptr [rbp - 0x1b2], 0
	mov	byte ptr [rbp - 0x1b3], 0
	mov	byte ptr [rbp - 0x1b4], 0
	mov	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rcx], 0
	mov	rcx, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rcx + 0x34]
	mov	dword ptr [rbp - 0x1b8], edx
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x18], 1
	je	.label_366
	cmp	dword ptr [rbp - 0x1b8], 0
	jge	.label_394
	mov	eax, 0xffffff9c
	mov	r8d, 1
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edi, eax
	mov	edx, eax
	call	renameatu
	cmp	eax, 0
	je	.label_377
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x4d8], ecx
	jmp	.label_403
.label_377:
	xor	eax, eax
	mov	dword ptr [rbp - 0x4d8], eax
	jmp	.label_403
.label_403:
	mov	eax, dword ptr [rbp - 0x4d8]
	mov	dword ptr [rbp - 0x1b8], eax
.label_394:
	cmp	dword ptr [rbp - 0x1b8], 0
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_410
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x68]
	and	al, 1
	mov	byte ptr [rcx], al
.label_410:
	jmp	.label_366
.label_366:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_416
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x31], 1
	jne	.label_418
	jmp	.label_420
.label_416:
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_420
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_418
.label_420:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_424
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x4e0], rax
	jmp	.label_442
.label_424:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x4e0], rax
.label_442:
	mov	rax, qword ptr [rbp - 0x4e0]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 2
	jne	.label_429
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1c0]
	call	lstat
	mov	dword ptr [rbp - 0x4e4], eax
	jmp	.label_566
.label_429:
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1c0]
	call	stat
	mov	dword ptr [rbp - 0x4e4], eax
.label_566:
	mov	eax, dword ptr [rbp - 0x4e4]
	cmp	eax, 0
	je	.label_440
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_411
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4e8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x4f0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4e8]
	mov	rdx, qword ptr [rbp - 0x4f0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_440:
	mov	eax, dword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x18c], eax
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_453
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2a], 1
	jne	.label_453
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x19], 1
	jne	.label_458
	movabs	rdi, OFFSET FLAT:label_463
	call	gettext
	mov	qword ptr [rbp - 0x4f8], rax
	jmp	.label_466
.label_458:
	movabs	rdi, OFFSET FLAT:label_468
	call	gettext
	mov	qword ptr [rbp - 0x4f8], rax
.label_466:
	mov	rax, qword ptr [rbp - 0x4f8]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x500], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x504], edi
	mov	esi, dword ptr [rbp - 0x504]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_453:
	jmp	.label_418
.label_418:
	test	byte ptr [rbp - 0x49], 1
	je	.label_553
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x48], 0
	je	.label_553
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_482
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	jne	.label_482
	lea	rdx, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	call	seen_file
	test	al, 1
	jne	.label_551
	jmp	.label_482
.label_551:
	movabs	rdi, OFFSET FLAT:label_493
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x510], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x514], edi
	mov	esi, dword ptr [rbp - 0x514]
	mov	rdx, qword ptr [rbp - 0x510]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_368
.label_482:
	lea	rdx, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	call	record_file
.label_553:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	esi, al
	call	should_dereference
	and	al, 1
	mov	byte ptr [rbp - 0x1c1], al
	test	byte ptr [rbp - 0x29], 1
	jne	.label_509
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_513
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_515
.label_513:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_517
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x14], 1
	mov	byte ptr [rbp - 0x515], al
	je	.label_520
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	byte ptr [rbp - 0x515], al
	je	.label_520
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	byte ptr [rbp - 0x515], al
	je	.label_520
.label_517:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x18], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_520
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x2c], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_520
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x17], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_520
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	dword ptr [rcx], 0
	mov	byte ptr [rbp - 0x515], al
	jne	.label_520
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x15]
	mov	byte ptr [rbp - 0x515], cl
.label_520:
	mov	al, byte ptr [rbp - 0x515]
	mov	edi, 0xffffff9c
	lea	rdx, [rbp - 0x188]
	xor	ecx, ecx
	mov	esi, 0x100
	and	al, 1
	mov	byte ptr [rbp - 0x1c2], al
	mov	al, byte ptr [rbp - 0x1c2]
	test	al, 1
	cmovne	ecx, esi
	mov	dword ptr [rbp - 0x1c8], ecx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x1c8]
	call	fstatat
	cmp	eax, 0
	jne	.label_437
	mov	al, byte ptr [rbp - 0x1c2]
	and	al, 1
	mov	byte ptr [rbp - 0x1b4], al
	mov	dword ptr [rbp - 0x1b8], 0x11
	jmp	.label_544
.label_437:
	call	__errno_location
	cmp	dword ptr [rax], 0x28
	jne	.label_475
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x16], 1
	je	.label_475
	jmp	.label_552
.label_475:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_501
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_411
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x51c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x528], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x51c]
	mov	rdx, qword ptr [rbp - 0x528]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_501:
	mov	byte ptr [rbp - 0x29], 1
	jmp	.label_552
.label_552:
	jmp	.label_544
.label_544:
	jmp	.label_515
.label_515:
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_565
	mov	byte ptr [rbp - 0x1c9], 0
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_567
	lea	rsi, [rbp - 0xf8]
	lea	rcx, [rbp - 0x188]
	lea	r9, [rbp - 0x1c9]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	call	same_file_ok
	test	al, 1
	jne	.label_567
	movabs	rdi, OFFSET FLAT:label_568
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x530], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x538], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x530]
	mov	rcx, qword ptr [rbp - 0x538]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_567:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2d], 1
	je	.label_354
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_354
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x1f], 1
	mov	byte ptr [rbp - 0x539], cl
	je	.label_581
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x18], 1
	mov	byte ptr [rbp - 0x53a], cl
	je	.label_586
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0xf8]
	sete	cl
	mov	byte ptr [rbp - 0x53a], cl
.label_586:
	mov	al, byte ptr [rbp - 0x53a]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x539], al
.label_581:
	mov	al, byte ptr [rbp - 0x539]
	lea	rsi, [rbp - 0x188]
	lea	rdx, [rbp - 0xf8]
	xor	ecx, ecx
	mov	edi, 1
	test	al, 1
	cmovne	ecx, edi
	mov	dword ptr [rbp - 0x1d0], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x1d0]
	call	utimecmp
	xor	ecx, ecx
	cmp	ecx, eax
	jg	.label_596
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_598
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_598:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_335
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x2e]
	mov	r8b, byte ptr [rbp - 0x1c1]
	and	cl, 1
	and	r8b, 1
	movzx	ecx, cl
	movzx	r8d, r8b
	call	create_hard_link
	test	al, 1
	jne	.label_346
	jmp	.label_349
.label_346:
	jmp	.label_335
.label_335:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_368
.label_596:
	jmp	.label_354
.label_354:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_355
	lea	rdx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	call	abandon_move
	test	al, 1
	jne	.label_358
	jmp	.label_359
.label_358:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_362
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_362:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_368
.label_359:
	jmp	.label_372
.label_355:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_379
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_376
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 3
	jne	.label_379
	lea	rdx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	call	overwrite_ok
	test	al, 1
	jne	.label_379
.label_376:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_368
.label_379:
	jmp	.label_372
.label_372:
	test	byte ptr [rbp - 0x1c9], 1
	je	.label_571
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_368
.label_571:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_390
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_393
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_396
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_396
	jmp	.label_401
.label_396:
	movabs	rdi, OFFSET FLAT:label_476
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x548], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x550], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x548]
	mov	rcx, qword ptr [rbp - 0x550]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_401:
	jmp	.label_393
.label_393:
	test	byte ptr [rbp - 0x49], 1
	je	.label_419
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 3
	je	.label_419
	lea	rdx, [rbp - 0x188]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	seen_file
	test	al, 1
	jne	.label_426
	jmp	.label_419
.label_426:
	movabs	rdi, OFFSET FLAT:label_427
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x558], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x560], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x558]
	mov	rcx, qword ptr [rbp - 0x560]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_419:
	jmp	.label_390
.label_390:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_441
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_445
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_446
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_446
	jmp	.label_451
.label_446:
	movabs	rdi, OFFSET FLAT:label_452
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x568], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x56c], edi
	mov	esi, dword ptr [rbp - 0x56c]
	mov	rdx, qword ptr [rbp - 0x568]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_451:
	jmp	.label_445
.label_445:
	jmp	.label_441
.label_441:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_464
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_467
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_467
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	jne	.label_467
	movabs	rdi, OFFSET FLAT:label_474
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x578], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x580], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x578]
	mov	rcx, qword ptr [rbp - 0x580]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_467:
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_491
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rdi, rax
	call	dot_or_dotdot_0
	test	al, 1
	jne	.label_491
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_495
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_491
.label_495:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 3
	je	.label_498
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1d8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	source_is_dst_backup
	test	al, 1
	jne	.label_423
	jmp	.label_498
.label_423:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_434
	movabs	rdi, OFFSET FLAT:label_507
	call	gettext
	mov	qword ptr [rbp - 0x588], rax
	jmp	.label_510
.label_434:
	movabs	rdi, OFFSET FLAT:label_512
	call	gettext
	mov	qword ptr [rbp - 0x588], rax
.label_510:
	mov	rax, qword ptr [rbp - 0x588]
	xor	edi, edi
	mov	esi, 4
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x590], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x598], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rcx, qword ptr [rbp - 0x598]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_498:
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rax]
	call	backup_file_rename
	mov	qword ptr [rbp - 0x1e8], rax
	cmp	qword ptr [rbp - 0x1e8], 0
	je	.label_531
	jmp	.label_534
.label_534:
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rdi, rax
	call	strlen
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0x1f8], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	qword ptr [rbp - 0x200], rdi
	mov	rax, qword ptr [rbp - 0x200]
	mov	rsi, qword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x1f8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x5a0], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x5a0]
	mov	qword ptr [rbp - 0x208], rax
	mov	rdx, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x1b0], rdx
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	free
	jmp	.label_543
.label_531:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_545
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_547
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5a4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x5b0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5a4]
	mov	rdx, qword ptr [rbp - 0x5b0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_545:
	jmp	.label_543
.label_543:
	mov	byte ptr [rbp - 0x29], 1
	jmp	.label_556
.label_491:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_558
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_558
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x15], 1
	jne	.label_561
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x22], 1
	je	.label_563
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x178]
	jb	.label_561
.label_563:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 2
	jne	.label_558
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_558
.label_561:
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlink
	cmp	eax, 0
	je	.label_570
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_570
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_194
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5b4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x5c0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5b4]
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_570:
	mov	byte ptr [rbp - 0x29], 1
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_579
	movabs	rdi, OFFSET FLAT:label_256
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x5c8], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x5c8]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x5cc], eax
.label_579:
	jmp	.label_558
.label_558:
	jmp	.label_556
.label_556:
	jmp	.label_565
.label_565:
	jmp	.label_509
.label_509:
	test	byte ptr [rbp - 0x49], 1
	je	.label_373
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_373
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_373
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	jne	.label_373
	mov	byte ptr [rbp - 0x209], 1
	test	byte ptr [rbp - 0x1b4], 1
	je	.label_593
	lea	rax, [rbp - 0x188]
	mov	qword ptr [rbp - 0x2a8], rax
	jmp	.label_336
.label_593:
	lea	rsi, [rbp - 0x2a0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	lstat
	cmp	eax, 0
	jne	.label_599
	lea	rax, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x2a8], rax
	jmp	.label_601
.label_599:
	mov	byte ptr [rbp - 0x209], 0
.label_601:
	jmp	.label_336
.label_336:
	test	byte ptr [rbp - 0x209], 1
	je	.label_338
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_338
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x2a8]
	call	seen_file
	test	al, 1
	jne	.label_348
	jmp	.label_338
.label_348:
	movabs	rdi, OFFSET FLAT:label_352
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x5d8], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x5e0], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x5d8]
	mov	rcx, qword ptr [rbp - 0x5e0]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_338:
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_375
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_375
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_375
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	call	emit_verbose
.label_375:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_385
	mov	qword ptr [rbp - 0x1a8], 0
	jmp	.label_433
.label_385:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2a], 1
	je	.label_389
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_389
	test	byte ptr [rbp - 0x49], 1
	je	.label_337
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
	jmp	.label_399
.label_337:
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	src_to_dest_lookup
	mov	qword ptr [rbp - 0x1a8], rax
.label_399:
	jmp	.label_408
.label_389:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_409
	cmp	qword ptr [rbp - 0xe8], 1
	jne	.label_409
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	src_to_dest_lookup
	mov	qword ptr [rbp - 0x1a8], rax
	jmp	.label_414
.label_409:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x22], 1
	je	.label_417
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	jne	.label_417
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xe8]
	jb	.label_421
	test	byte ptr [rbp - 0x49], 1
	je	.label_422
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 3
	je	.label_421
.label_422:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 4
	jne	.label_417
.label_421:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
.label_417:
	jmp	.label_414
.label_414:
	jmp	.label_408
.label_408:
	jmp	.label_433
.label_433:
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_435
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_436
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	same_name
	test	al, 1
	jne	.label_589
	jmp	.label_443
.label_589:
	movabs	rdi, OFFSET FLAT:label_444
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx,  qword ptr [word ptr [top_level_src_name]]
	mov	qword ptr [rbp - 0x5e8], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx,  qword ptr [word ptr [top_level_dst_name]]
	mov	qword ptr [rbp - 0x5f0], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x5e8]
	mov	rcx, qword ptr [rbp - 0x5f0]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rcx], 1
	jmp	.label_349
.label_443:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	same_name
	test	al, 1
	jne	.label_406
	jmp	.label_462
.label_406:
	movabs	rdi, OFFSET FLAT:label_460
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [top_level_src_name]]
	mov	qword ptr [rbp - 0x5f8], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x5fc], edi
	mov	esi, dword ptr [rbp - 0x5fc]
	mov	rdx, qword ptr [rbp - 0x5f8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x18], 1
	je	.label_380
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_380
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_380:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_368
.label_462:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 4
	je	.label_478
	test	byte ptr [rbp - 0x49], 1
	je	.label_480
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 3
	jne	.label_480
.label_478:
	jmp	.label_483
.label_480:
	movabs	rdi, OFFSET FLAT:label_484
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x608], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x610], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x608]
	mov	rcx, qword ptr [rbp - 0x610]
	mov	r8, rax
	mov	al, 0
	call	error
	jmp	.label_349
.label_483:
	jmp	.label_387
.label_387:
	jmp	.label_499
.label_499:
	jmp	.label_500
.label_436:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x2e]
	mov	r8b, byte ptr [rbp - 0x1c1]
	and	cl, 1
	and	r8b, 1
	movzx	ecx, cl
	movzx	r8d, r8b
	call	create_hard_link
	test	al, 1
	jne	.label_356
	jmp	.label_349
.label_356:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_368
.label_500:
	jmp	.label_435
.label_435:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_511
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_514
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rename
	cmp	eax, 0
	jne	.label_518
	xor	eax, eax
	mov	dword ptr [rbp - 0x614], eax
	jmp	.label_519
.label_518:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x614], ecx
.label_519:
	mov	eax, dword ptr [rbp - 0x614]
	mov	dword ptr [rbp - 0x1b8], eax
.label_514:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_525
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_527
	movabs	rdi, OFFSET FLAT:label_528
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	dword ptr [rbp - 0x618], eax
	call	emit_verbose
.label_527:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	je	.label_533
	xor	esi, esi
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	call	set_file_security_ctx
	mov	byte ptr [rbp - 0x619], al
.label_533:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_536
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_536:
	test	byte ptr [rbp - 0x49], 1
	je	.label_537
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x31], 1
	jne	.label_537
	lea	rdx, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_537:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_368
.label_525:
	cmp	dword ptr [rbp - 0x1b8], 0x16
	jne	.label_540
	movabs	rdi, OFFSET FLAT:label_542
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx,  qword ptr [word ptr [top_level_src_name]]
	mov	qword ptr [rbp - 0x628], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx,  qword ptr [word ptr [top_level_dst_name]]
	mov	qword ptr [rbp - 0x630], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x628]
	mov	rcx, qword ptr [rbp - 0x630]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rcx], 1
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_368
.label_540:
	cmp	dword ptr [rbp - 0x1b8], 0x12
	je	.label_522
	movabs	rdi, OFFSET FLAT:label_555
	mov	esi, dword ptr [rbp - 0x1b8]
	mov	dword ptr [rbp - 0x634], esi
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x640], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x648], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x634]
	mov	rdx, qword ptr [rbp - 0x640]
	mov	rcx, qword ptr [rbp - 0x648]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	forget_created
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_522:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_569
	mov	rdi, qword ptr [rbp - 0x28]
	call	rmdir
	mov	dword ptr [rbp - 0x64c], eax
	jmp	.label_384
.label_569:
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlink
	mov	dword ptr [rbp - 0x64c], eax
.label_384:
	mov	eax, dword ptr [rbp - 0x64c]
	cmp	eax, 0
	je	.label_576
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_576
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_577
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x650], esi
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x658], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x660], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x650]
	mov	rdx, qword ptr [rbp - 0x658]
	mov	rcx, qword ptr [rbp - 0x660]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	forget_created
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_576:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_591
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_591
	movabs	rdi, OFFSET FLAT:label_594
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	dword ptr [rbp - 0x664], eax
	call	emit_verbose
.label_591:
	mov	byte ptr [rbp - 0x29], 1
.label_511:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2b], 1
	je	.label_592
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x668], ecx
	jmp	.label_334
.label_592:
	mov	eax, dword ptr [rbp - 0x18c]
	mov	dword ptr [rbp - 0x668], eax
.label_334:
	mov	eax, dword ptr [rbp - 0x668]
	and	eax, 0xfff
	mov	dword ptr [rbp - 0x194], eax
	mov	eax, dword ptr [rbp - 0x194]
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x1d], 1
	mov	dword ptr [rbp - 0x66c], eax
	je	.label_340
	mov	eax, 0x3f
	mov	dword ptr [rbp - 0x670], eax
	jmp	.label_345
.label_340:
	xor	eax, eax
	mov	ecx, 0x12
	mov	edx, dword ptr [rbp - 0x18c]
	and	edx, 0xf000
	cmp	edx, 0x4000
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x670], eax
.label_345:
	mov	eax, dword ptr [rbp - 0x670]
	mov	ecx, dword ptr [rbp - 0x66c]
	and	ecx, eax
	mov	dword ptr [rbp - 0x198], ecx
	mov	byte ptr [rbp - 0x1b1], 1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x18c]
	mov	r8b, byte ptr [rbp - 0x29]
	mov	r9, qword ptr [rbp - 0x48]
	and	r8b, 1
	movzx	ecx, r8b
	mov	r8, r9
	call	set_process_security_ctx
	test	al, 1
	jne	.label_370
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_370:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_374
	lea	rdi, [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0x40]
	call	is_ancestor
	test	al, 1
	jne	.label_381
	jmp	.label_382
.label_381:
	movabs	rdi, OFFSET FLAT:label_383
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x678], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x67c], edi
	mov	esi, dword ptr [rbp - 0x67c]
	mov	rdx, qword ptr [rbp - 0x678]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_349
.label_382:
	mov	rax, rsp
	add	rax, -0x20
	mov	rsp, rax
	mov	qword ptr [rbp - 0x2b0], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rcx + 0x10], rax
	test	byte ptr [rbp - 0x29], 1
	jne	.label_391
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_405
.label_391:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	esi, eax
	call	mkdir
	cmp	eax, 0
	je	.label_412
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_415
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x680], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x688], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x680]
	mov	rdx, qword ptr [rbp - 0x688]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_349
.label_412:
	lea	rsi, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x28]
	call	lstat
	cmp	eax, 0
	je	.label_530
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_411
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x68c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x698], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x68c]
	mov	rdx, qword ptr [rbp - 0x698]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_349
.label_530:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_457
	mov	eax, dword ptr [rbp - 0x170]
	mov	dword ptr [rbp - 0x190], eax
	mov	byte ptr [rbp - 0x199], 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x190]
	or	eax, 0x1c0
	mov	esi, eax
	call	chmod
	cmp	eax, 0
	je	.label_448
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_449
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x69c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x6a8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x69c]
	mov	rdx, qword ptr [rbp - 0x6a8]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_349
.label_448:
	jmp	.label_457
.label_457:
	jmp	.label_459
.label_459:
	mov	rax, qword ptr [rbp - 0x58]
	test	byte ptr [rax], 1
	jne	.label_461
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x188]
	call	remember_copied
	mov	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rdx], 1
	mov	qword ptr [rbp - 0x6b0], rax
.label_461:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_470
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_472
	movabs	rdi, OFFSET FLAT:label_473
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x6b8], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x6bc], eax
	jmp	.label_479
.label_472:
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	emit_verbose
.label_479:
	jmp	.label_470
.label_470:
	jmp	.label_485
.label_405:
	mov	dword ptr [rbp - 0x198], 0
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	jne	.label_486
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_488
.label_486:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x48]
	and	cl, 1
	movzx	esi, cl
	mov	rcx, rax
	call	set_file_security_ctx
	test	al, 1
	jne	.label_496
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x26], 1
	je	.label_497
	jmp	.label_349
.label_497:
	jmp	.label_496
.label_496:
	jmp	.label_488
.label_488:
	jmp	.label_485
.label_485:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1c], 1
	je	.label_402
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_402
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xf8]
	je	.label_402
	jmp	.label_505
.label_402:
	lea	rcx, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x29]
	mov	r8, qword ptr [rbp - 0x2b0]
	mov	r9, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [rbp - 0x60]
	and	al, 1
	sub	rsp, 0x10
	movzx	r11d, al
	mov	qword ptr [rbp - 0x6c8], rdx
	mov	edx, r11d
	mov	rbx, qword ptr [rbp - 0x6c8]
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 8], r10
	call	copy_dir
	add	rsp, 0x10
	and	al, 1
	mov	byte ptr [rbp - 0x1b1], al
.label_505:
	jmp	.label_506
.label_374:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2c], 1
	je	.label_521
	mov	byte ptr [rbp - 0x1b3], 1
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_524
	mov	rdi, qword ptr [rbp - 0x28]
	call	dir_name
	mov	cl, 1
	mov	qword ptr [rbp - 0x3d8], rax
	mov	rsi, qword ptr [rbp - 0x3d8]
	mov	edx, OFFSET FLAT:label_185
	mov	edi, edx
	mov	byte ptr [rbp - 0x6c9], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0x6c9]
	mov	byte ptr [rbp - 0x6ca], cl
	je	.label_364
	movabs	rdi, OFFSET FLAT:label_185
	lea	rsi, [rbp - 0x340]
	call	stat
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x6ca], cl
	jne	.label_364
	lea	rsi, [rbp - 0x3d0]
	mov	rdi, qword ptr [rbp - 0x3d8]
	call	stat
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x6ca], cl
	jne	.label_364
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x338]
	cmp	rdx, qword ptr [rbp - 0x3c8]
	mov	byte ptr [rbp - 0x6cb], cl
	jne	.label_538
	mov	rax, qword ptr [rbp - 0x340]
	cmp	rax, qword ptr [rbp - 0x3d0]
	sete	cl
	mov	byte ptr [rbp - 0x6cb], cl
.label_538:
	mov	al, byte ptr [rbp - 0x6cb]
	mov	byte ptr [rbp - 0x6ca], al
.label_364:
	mov	al, byte ptr [rbp - 0x6ca]
	and	al, 1
	mov	byte ptr [rbp - 0x3d9], al
	mov	rdi, qword ptr [rbp - 0x3d8]
	call	free
	test	byte ptr [rbp - 0x3d9], 1
	jne	.label_546
	movabs	rdi, OFFSET FLAT:label_548
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x6d8], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x6d8]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_349
.label_546:
	jmp	.label_524
.label_524:
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x16]
	and	cl, 1
	movzx	ecx, cl
	call	force_symlinkat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x3e0], eax
	cmp	ecx, dword ptr [rbp - 0x3e0]
	jge	.label_550
	movabs	rdi, OFFSET FLAT:label_562
	mov	esi, dword ptr [rbp - 0x3e0]
	mov	dword ptr [rbp - 0x6dc], esi
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x6e8], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x6f0], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x6dc]
	mov	rdx, qword ptr [rbp - 0x6e8]
	mov	rcx, qword ptr [rbp - 0x6f0]
	mov	r8, rax
	mov	al, 0
	call	error
	jmp	.label_349
.label_550:
	jmp	.label_504
.label_521:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	je	.label_573
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x16], 1
	mov	byte ptr [rbp - 0x6f1], al
	jne	.label_574
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 3
	sete	cl
	mov	byte ptr [rbp - 0x6f1], cl
.label_574:
	mov	al, byte ptr [rbp - 0x6f1]
	xor	ecx, ecx
	and	al, 1
	mov	byte ptr [rbp - 0x3e1], al
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x3e1]
	mov	dl, byte ptr [rbp - 0x1c1]
	and	al, 1
	and	dl, 1
	movzx	r8d, al
	mov	byte ptr [rbp - 0x6f2], dl
	mov	edx, r8d
	mov	al, byte ptr [rbp - 0x6f2]
	movzx	r8d, al
	call	create_hard_link
	test	al, 1
	jne	.label_582
	jmp	.label_349
.label_582:
	jmp	.label_503
.label_573:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_585
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x14], 1
	je	.label_588
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_588
.label_585:
	lea	r9, [rbp - 0x29]
	lea	rax, [rbp - 0xf8]
	mov	byte ptr [rbp - 0x1b2], 1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0x194]
	and	ecx, 0x1ff
	mov	r8d, dword ptr [rbp - 0x198]
	sub	rsp, 0x10
	mov	qword ptr [rsp], rax
	call	copy_reg
	add	rsp, 0x10
	test	al, 1
	jne	.label_597
	jmp	.label_349
.label_597:
	jmp	.label_430
.label_588:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_600
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	esi, eax
	call	mknod
	cmp	eax, 0
	je	.label_341
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xffffefff
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	esi, eax
	call	mkfifo
	cmp	eax, 0
	je	.label_347
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_350
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x6f8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x700], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x6f8]
	mov	rdx, qword ptr [rbp - 0x700]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_349
.label_347:
	jmp	.label_341
.label_341:
	jmp	.label_367
.label_600:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x6000
	je	.label_369
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_369
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_378
.label_369:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	esi, eax
	call	mknod
	cmp	eax, 0
	je	.label_386
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_388
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x704], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x710], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x704]
	mov	rdx, qword ptr [rbp - 0x710]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_349
.label_386:
	jmp	.label_398
.label_378:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_400
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x3f0], rax
	mov	byte ptr [rbp - 0x1b3], 1
	cmp	qword ptr [rbp - 0x3f0], 0
	jne	.label_413
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_365
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x714], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x720], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x714]
	mov	rdx, qword ptr [rbp - 0x720]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_349
.label_413:
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x3f0]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x16]
	and	cl, 1
	movzx	ecx, cl
	call	force_symlinkat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x3f4], eax
	cmp	ecx, dword ptr [rbp - 0x3f4]
	jge	.label_428
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2d], 1
	je	.label_428
	test	byte ptr [rbp - 0x29], 1
	jne	.label_428
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_428
	mov	rax, qword ptr [rbp - 0x158]
	mov	rdi, qword ptr [rbp - 0x3f0]
	mov	qword ptr [rbp - 0x728], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x728]
	cmp	rdi, rax
	jne	.label_428
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x158]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x400], rax
	cmp	qword ptr [rbp - 0x400], 0
	je	.label_578
	mov	rdi, qword ptr [rbp - 0x400]
	mov	rsi, qword ptr [rbp - 0x3f0]
	call	strcmp
	cmp	eax, 0
	jne	.label_450
	mov	dword ptr [rbp - 0x3f4], 0
.label_450:
	mov	rdi, qword ptr [rbp - 0x400]
	call	free
.label_578:
	jmp	.label_428
.label_428:
	mov	rdi, qword ptr [rbp - 0x3f0]
	call	free
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x3f4]
	jge	.label_455
	movabs	rdi, OFFSET FLAT:label_456
	mov	esi, dword ptr [rbp - 0x3f4]
	mov	dword ptr [rbp - 0x72c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x738], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x72c]
	mov	rdx, qword ptr [rbp - 0x738]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_349
.label_455:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_471
	call	restore_default_fscreatecon_or_die
.label_471:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1d], 1
	je	.label_490
	mov	rdi, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0xdc]
	mov	edx, dword ptr [rbp - 0xd8]
	call	lchown
	cmp	eax, 0
	je	.label_477
	mov	rdi, qword ptr [rbp - 0x48]
	call	chown_failure_ok
	test	al, 1
	jne	.label_477
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_481
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x73c], esi
	call	gettext
	xor	edi, edi
	mov	rcx, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0x73c]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x24], 1
	je	.label_487
	jmp	.label_349
.label_487:
	jmp	.label_489
.label_477:
	jmp	.label_489
.label_489:
	jmp	.label_490
.label_490:
	jmp	.label_492
.label_400:
	movabs	rdi, OFFSET FLAT:label_494
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x748], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x74c], edi
	mov	esi, dword ptr [rbp - 0x74c]
	mov	rdx, qword ptr [rbp - 0x748]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_349
.label_492:
	jmp	.label_398
.label_398:
	jmp	.label_367
.label_367:
	jmp	.label_430
.label_430:
	jmp	.label_503
.label_503:
	jmp	.label_504
.label_504:
	jmp	.label_506
.label_506:
	test	byte ptr [rbp - 0x29], 1
	jne	.label_508
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x14], 1
	jne	.label_508
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_508
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	jne	.label_516
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_508
.label_516:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x48]
	and	cl, 1
	movzx	esi, cl
	mov	rcx, rax
	call	set_file_security_ctx
	test	al, 1
	jne	.label_523
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x26], 1
	je	.label_526
	jmp	.label_349
.label_526:
	jmp	.label_523
.label_523:
	jmp	.label_508
.label_508:
	test	byte ptr [rbp - 0x49], 1
	je	.label_529
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_529
	lea	rsi, [rbp - 0x490]
	mov	rdi, qword ptr [rbp - 0x28]
	call	lstat
	cmp	eax, 0
	jne	.label_532
	lea	rdx, [rbp - 0x490]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_532:
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	je	.label_535
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_535
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_368
.label_535:
	test	byte ptr [rbp - 0x1b2], 1
	je	.label_539
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_368
.label_539:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1f], 1
	je	.label_343
	lea	rdi, [rbp - 0xf8]
	call	get_stat_atime
	lea	rdi, [rbp - 0xf8]
	mov	qword ptr [rbp - 0x4c0], rax
	mov	qword ptr [rbp - 0x4b8], rdx
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	qword ptr [rbp - 0x4b0], rax
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	qword ptr [rbp - 0x4a8], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x4d0], rax
	mov	qword ptr [rbp - 0x4c8], rdx
	mov	rax, qword ptr [rbp - 0x4d0]
	mov	qword ptr [rbp - 0x4a0], rax
	mov	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x498], rax
	test	byte ptr [rbp - 0x1b3], 1
	je	.label_549
	lea	rsi, [rbp - 0x4b0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	utimens_symlink
	mov	dword ptr [rbp - 0x750], eax
	jmp	.label_557
.label_549:
	lea	rsi, [rbp - 0x4b0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	utimens
	mov	dword ptr [rbp - 0x750], eax
.label_557:
	mov	eax, dword ptr [rbp - 0x750]
	cmp	eax, 0
	je	.label_559
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_564
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x754], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x760], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x754]
	mov	rdx, qword ptr [rbp - 0x760]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x24], 1
	je	.label_342
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_342:
	jmp	.label_559
.label_559:
	jmp	.label_343
.label_343:
	test	byte ptr [rbp - 0x1b3], 1
	jne	.label_572
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1d], 1
	je	.label_572
	test	byte ptr [rbp - 0x29], 1
	jne	.label_575
	mov	eax, dword ptr [rbp - 0xdc]
	cmp	eax, dword ptr [rbp - 0x16c]
	jne	.label_575
	mov	eax, dword ptr [rbp - 0xd8]
	cmp	eax, dword ptr [rbp - 0x168]
	je	.label_572
.label_575:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	movzx	eax, byte ptr [rbp - 0x29]
	and	eax, 1
	mov	edx, 0xffffffff
	lea	rcx, [rbp - 0xf8]
	lea	r9, [rbp - 0x188]
	mov	r8d, eax
	call	set_owner
	mov	edx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x764], edx
	mov	dword ptr [rbp - 0x768], eax
	je	.label_580
	jmp	.label_583
.label_583:
	mov	eax, dword ptr [rbp - 0x764]
	test	eax, eax
	je	.label_584
	jmp	.label_587
.label_580:
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_584:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xfffff1ff
	mov	dword ptr [rbp - 0x18c], eax
.label_587:
	jmp	.label_572
.label_572:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x27], 1
	je	.label_590
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, eax
	mov	ecx, eax
	call	copy_attr
	test	al, 1
	jne	.label_590
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x28], 1
	je	.label_590
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_590:
	test	byte ptr [rbp - 0x1b3], 1
	je	.label_595
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_368
.label_595:
	mov	esi, 0xffffffff
	lea	rdx, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_author
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x1e], 1
	jne	.label_541
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_339
.label_541:
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rbp - 0x18c]
	mov	esi, eax
	mov	ecx, eax
	call	copy_acl
	cmp	eax, 0
	je	.label_344
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x24], 1
	je	.label_344
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_344:
	jmp	.label_351
.label_339:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2b], 1
	je	.label_353
	mov	esi, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rax + 0x10]
	call	set_acl
	cmp	eax, 0
	je	.label_357
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_357:
	jmp	.label_360
.label_353:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x20], 1
	je	.label_363
	test	byte ptr [rbp - 0x29], 1
	je	.label_363
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	byte ptr [rbp - 0x769], al
	je	.label_371
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xc000
	sete	cl
	mov	byte ptr [rbp - 0x769], cl
.label_371:
	mov	al, byte ptr [rbp - 0x769]
	mov	ecx, 0x1b6
	mov	edx, 0x1ff
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x4d4], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x4d4]
	mov	qword ptr [rbp - 0x778], rdi
	mov	dword ptr [rbp - 0x77c], ecx
	call	cached_umask
	mov	esi, 0xffffffff
	xor	eax, 0xffffffff
	mov	ecx, dword ptr [rbp - 0x77c]
	and	ecx, eax
	mov	rdi, qword ptr [rbp - 0x778]
	mov	edx, ecx
	call	set_acl
	cmp	eax, 0
	je	.label_392
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_392:
	jmp	.label_395
.label_363:
	cmp	dword ptr [rbp - 0x198], 0
	je	.label_431
	call	cached_umask
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x198]
	mov	dword ptr [rbp - 0x198], eax
	cmp	dword ptr [rbp - 0x198], 0
	je	.label_397
	test	byte ptr [rbp - 0x199], 1
	jne	.label_397
	test	byte ptr [rbp - 0x29], 1
	je	.label_407
	lea	rsi, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x28]
	call	lstat
	cmp	eax, 0
	je	.label_407
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_411
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x780], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x788], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x780]
	mov	rdx, qword ptr [rbp - 0x788]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_407:
	mov	eax, dword ptr [rbp - 0x170]
	mov	dword ptr [rbp - 0x190], eax
	mov	eax, dword ptr [rbp - 0x198]
	mov	ecx, dword ptr [rbp - 0x190]
	xor	ecx, 0xffffffff
	and	eax, ecx
	cmp	eax, 0
	je	.label_425
	mov	byte ptr [rbp - 0x199], 1
.label_425:
	jmp	.label_397
.label_397:
	jmp	.label_431
.label_431:
	test	byte ptr [rbp - 0x199], 1
	je	.label_432
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x190]
	or	eax, dword ptr [rbp - 0x198]
	mov	esi, eax
	call	chmod
	cmp	eax, 0
	je	.label_404
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_438
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x78c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x798], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x78c]
	mov	rdx, qword ptr [rbp - 0x798]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x24], 1
	je	.label_447
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_368
.label_447:
	jmp	.label_404
.label_404:
	jmp	.label_432
.label_432:
	jmp	.label_395
.label_395:
	jmp	.label_360
.label_360:
	jmp	.label_351
.label_351:
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_368
.label_349:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_454
	call	restore_default_fscreatecon_or_die
.label_454:
	cmp	qword ptr [rbp - 0x1a8], 0
	jne	.label_439
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	forget_created
.label_439:
	cmp	qword ptr [rbp - 0x1b0], 0
	je	.label_465
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rename
	cmp	eax, 0
	je	.label_469
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_502
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x79c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x7a8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x79c]
	mov	rdx, qword ptr [rbp - 0x7a8]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_361
.label_469:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_554
	movabs	rdi, OFFSET FLAT:label_560
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	qword ptr [rbp - 0x7b0], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x7b8], rax
	call	quotearg_n_style
	mov	rdi, qword ptr [rbp - 0x7b0]
	mov	rsi, qword ptr [rbp - 0x7b8]
	mov	rdx, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x7bc], eax
.label_554:
	jmp	.label_361
.label_361:
	jmp	.label_465
.label_465:
	mov	byte ptr [rbp - 0x11], 0
.label_368:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	lea	rsp, [rbp - 0x10]
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408440

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	eax, 0x50
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	call	geteuid
	cmp	eax, 0
	sete	cl
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, cl
	and	r8b, 1
	mov	byte ptr [rdx + 0x1b], r8b
	mov	rdx, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rdx + 0x1a], cl
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x34], 0xffffffff
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084a0

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_602
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	mov	byte ptr [rbp - 9], dl
	jne	.label_603
.label_602:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x1a]
	xor	cl, 0xff
	mov	byte ptr [rbp - 9], cl
.label_603:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084f0

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [cached_umask.mask]],  -1
	jne	.label_604
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [cached_umask.mask]],  eax
	mov	edi,  dword ptr [dword ptr [cached_umask.mask]]
	call	umask
	mov	dword ptr [rbp - 4], eax
.label_604:
	mov	eax,  dword ptr [dword ptr [cached_umask.mask]]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408530

	.globl should_dereference
	.type should_dereference, @function
should_dereference:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	cl, 1
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 4], 4
	mov	byte ptr [rbp - 0xa], cl
	je	.label_605
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 4], 3
	mov	byte ptr [rbp - 0xb], cl
	jne	.label_606
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0xb], al
.label_606:
	mov	al, byte ptr [rbp - 0xb]
	mov	byte ptr [rbp - 0xa], al
.label_605:
	mov	al, byte ptr [rbp - 0xa]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408580

	.globl same_file_ok
	.type same_file_ok, @function
same_file_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	xor	eax, eax
	mov	r10b, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rdx + 8]
	mov	byte ptr [rbp - 0x17a], r10b
	jne	.label_628
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x17a], dl
.label_628:
	mov	al, byte ptr [rbp - 0x17a]
	and	al, 1
	mov	byte ptr [rbp - 0x16a], al
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x16a], 1
	je	.label_640
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_640
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_640:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	jne	.label_614
	mov	al, byte ptr [rbp - 0x16a]
	and	al, 1
	mov	byte ptr [rbp - 0x169], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	jne	.label_616
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_616
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	and	al, 1
	mov	byte ptr [rbp - 0x16b], al
	test	byte ptr [rbp - 0x16b], 1
	jne	.label_626
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	je	.label_631
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_631:
	test	byte ptr [rbp - 0x169], 1
	je	.label_636
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_608
.label_636:
	jmp	.label_626
.label_626:
	mov	al, byte ptr [rbp - 0x16b]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_608
.label_616:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_642
.label_614:
	test	byte ptr [rbp - 0x16a], 1
	jne	.label_643
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_643:
	lea	rsi, [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	lstat
	cmp	eax, 0
	jne	.label_615
	lea	rsi, [rbp - 0x168]
	mov	rdi, qword ptr [rbp - 0x10]
	call	lstat
	cmp	eax, 0
	je	.label_619
.label_615:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_619:
	xor	eax, eax
	mov	cl, al
	lea	rdx, [rbp - 0xd8]
	lea	rsi, [rbp - 0x168]
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x17b], cl
	jne	.label_621
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x17b], dl
.label_621:
	mov	al, byte ptr [rbp - 0x17b]
	and	al, 1
	mov	byte ptr [rbp - 0x169], al
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	jne	.label_633
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_633
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x15], 1
	je	.label_633
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_633:
	jmp	.label_642
.label_642:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	je	.label_637
	test	byte ptr [rbp - 0x169], 1
	jne	.label_644
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	jne	.label_610
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	je	.label_610
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_610
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_610
	mov	byte ptr [rbp - 1], 0
	jmp	.label_608
.label_610:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_644:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_608
.label_637:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	jne	.label_630
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x15], 1
	je	.label_611
.label_630:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_634
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_634:
	test	byte ptr [rbp - 0x169], 1
	je	.label_632
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_632
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	test	al, 1
	jne	.label_632
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_608
.label_632:
	jmp	.label_611
.label_611:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_612
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_612
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_620
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	je	.label_622
.label_620:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_622:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_627
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_627:
	jmp	.label_612
.label_612:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	je	.label_617
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_617
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_617
	mov	rdi, qword ptr [rbp - 0x10]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x178], rax
	cmp	qword ptr [rbp - 0x178], 0
	je	.label_641
	mov	rdi, qword ptr [rbp - 0x178]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x179], al
	mov	rdi, qword ptr [rbp - 0x178]
	call	free
	mov	al, byte ptr [rbp - 0x179]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_608
.label_641:
	jmp	.label_617
.label_617:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x2c], 1
	je	.label_618
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_618
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_618:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	jne	.label_624
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_625
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0x168]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_635
.label_625:
	lea	rsi, [rbp - 0x168]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	je	.label_638
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_638:
	jmp	.label_635
.label_635:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_639
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_607
.label_639:
	lea	rsi, [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	stat
	cmp	eax, 0
	je	.label_613
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_613:
	jmp	.label_607
.label_607:
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0xd0]
	jne	.label_609
	mov	rax, qword ptr [rbp - 0x168]
	cmp	rax, qword ptr [rbp - 0xd8]
	je	.label_629
.label_609:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_629:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_623
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	sete	dl
	xor	dl, 0xff
	mov	rax, qword ptr [rbp - 0x38]
	and	dl, 1
	mov	byte ptr [rax], dl
	mov	byte ptr [rbp - 1], 1
	jmp	.label_608
.label_623:
	jmp	.label_624
.label_624:
	mov	byte ptr [rbp - 1], 0
.label_608:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408bb0

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, r8b
	mov	r9b, cl
	mov	r10b, dl
	mov	ecx, 0xffffff9c
	mov	edx, 0xffffffff
	xor	r8d, r8d
	mov	r11d, 0x400
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	r10b, 1
	mov	byte ptr [rbp - 0x19], r10b
	and	r9b, 1
	mov	byte ptr [rbp - 0x1a], r9b
	and	al, 1
	mov	byte ptr [rbp - 0x1b], al
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x1b]
	test	al, 1
	cmovne	r8d, r11d
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	dword ptr [rbp - 0x2c], edx
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	r9d, al
	mov	dword ptr [rsp], 0xffffffff
	call	force_linkat
	xor	edx, edx
	mov	dword ptr [rbp - 0x20], eax
	cmp	edx, dword ptr [rbp - 0x20]
	jge	.label_645
	movabs	rdi, OFFSET FLAT:label_648
	mov	esi, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x30], esi
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_646
.label_645:
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_647
	test	byte ptr [rbp - 0x1a], 1
	je	.label_647
	movabs	rdi, OFFSET FLAT:label_256
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x4c], eax
.label_647:
	mov	byte ptr [rbp - 1], 1
.label_646:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408cf0

	.globl abandon_move
	.type abandon_move, @function
abandon_move:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x18], 1
	je	.label_651
	jmp	.label_652
.label_651:
	movabs	rdi, OFFSET FLAT:label_653
	movabs	rsi, OFFSET FLAT:label_306
	mov	edx, 0x6d2
	movabs	rcx, OFFSET FLAT:label_654
	call	__assert_fail
.label_652:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	dword ptr [rcx + 8], 2
	mov	byte ptr [rbp - 0x19], al
	je	.label_655
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 8], 3
	je	.label_650
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 8], 4
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_649
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x2f], 1
	mov	byte ptr [rbp - 0x1a], cl
	je	.label_649
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	writable_destination
	xor	esi, esi
	mov	cl, sil
	test	al, 1
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_649
.label_650:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	overwrite_ok
	xor	al, 0xff
	mov	byte ptr [rbp - 0x1a], al
.label_649:
	mov	al, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 0x19], al
.label_655:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408de0

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rdx + 0x18]
	call	writable_destination
	test	al, 1
	jne	.label_656
	lea	rsi, [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x18]
	call	strmode
	mov	byte ptr [rbp - 0x1a], 0
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x18], 1
	mov	qword ptr [rbp - 0x30], rdi
	jne	.label_662
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x15], 1
	jne	.label_662
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x16], 1
	je	.label_659
.label_662:
	movabs	rdi, OFFSET FLAT:label_661
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_657
.label_659:
	movabs	rdi, OFFSET FLAT:label_660
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_657:
	mov	rax, qword ptr [rbp - 0x38]
	mov	edi, 4
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], rdx
	call	quotearg_style
	lea	rdx, [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rsi + 0x18]
	and	edi, 0xfff
	mov	edi, edi
	mov	r8d, edi
	add	rdx, 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, rcx
	mov	rcx, rax
	mov	r9, qword ptr [rbp - 0x50]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_663
.label_656:
	movabs	rdi, OFFSET FLAT:label_658
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x60], rax
	call	gettext
	mov	edi, 4
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
.label_663:
	call	yesno
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f50

	.globl dot_or_dotdot_0
	.type dot_or_dotdot_0, @function
dot_or_dotdot_0:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_664
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
	je	.label_665
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0x2f
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_665:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_666
.label_664:
	mov	byte ptr [rbp - 1], 0
.label_666:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408fd0

	.globl source_is_dst_backup
	.type source_is_dst_backup, @function
source_is_dst_backup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, qword ptr [rbp - 0x40]
	cmp	rax, rdx
	jne	.label_667
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcmp
	cmp	eax, 0
	jne	.label_667
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_669
.label_667:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_670
.label_669:
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	call	mempcpy
	lea	rsi, [rbp - 0xe0]
	mov	rdx,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xf0], rsi
	mov	rsi, rdx
	call	strcpy
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf8], rax
	call	stat
	mov	dword ptr [rbp - 0xe4], eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0xe4], 0
	mov	byte ptr [rbp - 0xf9], cl
	jne	.label_671
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	cmp	rdx, qword ptr [rbp - 0xd8]
	mov	byte ptr [rbp - 0xfa], cl
	jne	.label_668
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xe0]
	sete	cl
	mov	byte ptr [rbp - 0xfa], cl
.label_668:
	mov	al, byte ptr [rbp - 0xfa]
	mov	byte ptr [rbp - 0xf9], al
.label_671:
	mov	al, byte ptr [rbp - 0xf9]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_670:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409170

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	xor	eax, eax
	mov	ecx, 4
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	esi, ecx
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_n_style
	movabs	rdi, OFFSET FLAT:label_674
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	al, 0
	call	printf
	cmp	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x24], eax
	je	.label_673
	movabs	rdi, OFFSET FLAT:label_672
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x34], eax
.label_673:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409220

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_676:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_678
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_677
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jne	.label_677
	mov	byte ptr [rbp - 1], 1
	jmp	.label_675
.label_677:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_676
.label_678:
	mov	byte ptr [rbp - 1], 0
.label_675:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409290

	.globl copy_dir
	.type copy_dir, @function
copy_dir:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x118
	mov	al, dl
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	edx, 2
	mov	ebx, 0x50
	mov	r14d, ebx
	lea	r15, [rbp - 0xc0]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], r8
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdi, r15
	mov	rsi, rcx
	mov	dword ptr [rbp - 0xe0], edx
	mov	rdx, r14
	call	memcpy
	mov	byte ptr [rbp - 0xc1], 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0xe0]
	call	savedir
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_682
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_680
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe4]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_683
.label_682:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	dword ptr [rax + 4], 3
	jne	.label_685
	mov	dword ptr [rbp - 0xbc], 2
.label_685:
	mov	byte ptr [rbp - 0xc2], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
.label_684:
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_679
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x70]
	call	file_name_concat
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0xd0], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x70]
	call	file_name_concat
	lea	r9, [rbp - 0xc0]
	xor	ecx, ecx
	lea	rdx, [rbp - 0xd9]
	lea	rsi, [rbp - 0xc3]
	xor	r8d, r8d
	mov	edi, r8d
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	r10b, byte ptr [rax]
	and	r10b, 1
	mov	byte ptr [rbp - 0xd9], r10b
	mov	rax, qword ptr [rbp - 0xd0]
	mov	r11, qword ptr [rbp - 0xd8]
	mov	r10b, byte ptr [rbp - 0x31]
	mov	rbx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x48]
	and	r10b, 1
	mov	qword ptr [rbp - 0xf8], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x100], rsi
	mov	rsi, r11
	movzx	r14d, r10b
	mov	qword ptr [rbp - 0x108], rdx
	mov	edx, r14d
	mov	dword ptr [rbp - 0x10c], ecx
	mov	rcx, rbx
	mov	dword ptr [rsp], 0
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	r11, qword ptr [rbp - 0x100]
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x18], 0
	call	copy_internal
	and	al, 1
	movzx	edx, al
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	movzx	r14d, al
	and	r14d, edx
	cmp	r14d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xc1], al
	mov	al, byte ptr [rbp - 0xc3]
	and	al, 1
	movzx	edx, al
	mov	rcx, qword ptr [rbp - 0x60]
	mov	al, byte ptr [rcx]
	and	al, 1
	movzx	r14d, al
	or	r14d, edx
	cmp	r14d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rcx], al
	mov	rdi, qword ptr [rbp - 0xd8]
	call	free
	mov	rdi, qword ptr [rbp - 0xd0]
	call	free
	test	byte ptr [rbp - 0xc3], 1
	je	.label_681
	jmp	.label_679
.label_681:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xc2]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xc2], al
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_684
.label_679:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	mov	al, byte ptr [rbp - 0xc2]
	mov	rdi, qword ptr [rbp - 0x58]
	and	al, 1
	mov	byte ptr [rdi], al
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
.label_683:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x118
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409570

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x4d8
	mov	rax, qword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, 0x20000
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	dword ptr [rbp - 0x2c], ecx
	mov	dword ptr [rbp - 0x30], r8d
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x68], ecx
	mov	byte ptr [rbp - 0x189], 1
	mov	rax, qword ptr [rbp - 0x28]
	mov	bl, byte ptr [rax + 0x23]
	and	bl, 1
	mov	byte ptr [rbp - 0x18a], bl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 4], 2
	cmove	r10d, r11d
	or	r10d, 0
	mov	esi, r10d
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_764
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_686
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x2d0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c8]
	mov	rdx, qword ptr [rbp - 0x2d0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 9], 0
	jmp	.label_702
.label_764:
	lea	rsi, [rbp - 0x188]
	mov	edi, dword ptr [rbp - 0x64]
	call	fstat
	cmp	eax, 0
	je	.label_707
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_750
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2d4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x2e0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2d4]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_697
.label_707:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x180]
	jne	.label_720
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x188]
	je	.label_724
.label_720:
	movabs	rdi, OFFSET FLAT:label_730
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x2e8], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x2ec], edi
	mov	esi, dword ptr [rbp - 0x2ec]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_697
.label_724:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	jne	.label_737
	xor	eax, eax
	mov	ecx, 0x200
	mov	rdx, qword ptr [rbp - 0x28]
	mov	sil, byte ptr [rdx + 0x23]
	test	sil, 1
	cmovne	eax, ecx
	or	eax, 1
	mov	dword ptr [rbp - 0x190], eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x190]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x5c], eax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	jne	.label_758
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x25], 1
	je	.label_762
.label_758:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5c]
	jg	.label_762
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x28]
	and	cl, 1
	movzx	esi, cl
	mov	rcx, rax
	call	set_file_security_ctx
	test	al, 1
	jne	.label_769
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_770
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_704
.label_770:
	jmp	.label_769
.label_769:
	jmp	.label_762
.label_762:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_736
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x16], 1
	je	.label_736
	mov	rdi, qword ptr [rbp - 0x20]
	call	unlink
	cmp	eax, 0
	je	.label_690
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_194
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2f0], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x2f8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2f0]
	mov	rdx, qword ptr [rbp - 0x2f8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_697
.label_690:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x2e], 1
	je	.label_710
	movabs	rdi, OFFSET FLAT:label_256
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x300], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x300]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x304], eax
.label_710:
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	je	.label_719
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax]
	mov	r8, qword ptr [rbp - 0x28]
	and	cl, 1
	movzx	ecx, cl
	call	set_process_security_ctx
	test	al, 1
	jne	.label_732
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_697
.label_732:
	jmp	.label_719
.label_719:
	jmp	.label_736
.label_736:
	jmp	.label_737
.label_737:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	je	.label_738
	jmp	.label_728
.label_728:
	mov	dword ptr [rbp - 0x194], 0x41
	mov	rdi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x194]
	or	eax, 0x80
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	edx, dword ptr [rbp - 0x30]
	xor	edx, 0xffffffff
	and	ecx, edx
	mov	esi, eax
	mov	edx, ecx
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x5c], eax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_701
	cmp	dword ptr [rbp - 0x60], 0x11
	jne	.label_701
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	jne	.label_701
	lea	rsi, [rbp - 0x228]
	mov	rdi, qword ptr [rbp - 0x20]
	call	lstat
	cmp	eax, 0
	jne	.label_699
	mov	eax, dword ptr [rbp - 0x210]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_699
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x30], 1
	je	.label_765
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x194]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, dword ptr [rbp - 0x30]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	edx, eax
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x5c], eax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_691
.label_765:
	movabs	rdi, OFFSET FLAT:label_773
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x310], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x314], edi
	mov	esi, dword ptr [rbp - 0x314]
	mov	rdx, qword ptr [rbp - 0x310]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_697
.label_691:
	jmp	.label_699
.label_699:
	jmp	.label_701
.label_701:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_703
	cmp	dword ptr [rbp - 0x60], 0x15
	jne	.label_703
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_703
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rdi + rax]
	cmp	ecx, 0x2f
	jne	.label_703
	mov	dword ptr [rbp - 0x60], 0x14
.label_703:
	jmp	.label_713
.label_738:
	mov	dword ptr [rbp - 0x30], 0
.label_713:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_716
	cmp	dword ptr [rbp - 0x60], 2
	jne	.label_718
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	jne	.label_718
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	jne	.label_718
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_728
.label_718:
	movabs	rdi, OFFSET FLAT:label_726
	mov	esi, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x318], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x320], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x318]
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_697
.label_716:
	lea	rsi, [rbp - 0xf8]
	mov	edi, dword ptr [rbp - 0x5c]
	call	fstat
	cmp	eax, 0
	je	.label_746
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_750
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x324], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x330], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x324]
	mov	rdx, qword ptr [rbp - 0x330]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_704
.label_746:
	test	byte ptr [rbp - 0x18a], 1
	je	.label_725
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_725
	mov	edi, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0x64]
	call	clone_file
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x229], cl
	test	byte ptr [rbp - 0x229], 1
	jne	.label_768
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_743
.label_768:
	test	byte ptr [rbp - 0x229], 1
	jne	.label_772
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_775
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x334], esi
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x340], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x348], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x334]
	mov	rdx, qword ptr [rbp - 0x340]
	mov	rcx, qword ptr [rbp - 0x348]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_704
.label_772:
	mov	byte ptr [rbp - 0x18a], 0
.label_743:
	jmp	.label_725
.label_725:
	test	byte ptr [rbp - 0x18a], 1
	je	.label_712
	call	getpagesize
	lea	rcx, [rbp - 0xf8]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x238], rdx
	mov	rdx, rsp
	mov	eax, 0x12
	mov	esi, eax
	lea	rdi, [rbp - 0xf8]
	mov	qword ptr [rbp - 0x350], rcx
	mov	rcx, rsi
	mov	qword ptr [rbp - 0x358], rdi
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x358]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	xor	r8d, r8d
	mov	ecx, r8d
	mov	qword ptr [rbp - 0x240], rax
	cmp	rcx, qword ptr [rbp - 0xc0]
	jge	.label_731
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0xc0], rax
	ja	.label_731
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x360], rax
	jmp	.label_734
.label_731:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x360], rcx
	jmp	.label_734
.label_734:
	mov	rax, qword ptr [rbp - 0x360]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 2
	mov	qword ptr [rbp - 0x248], rax
	mov	edi, dword ptr [rbp - 0x64]
	mov	rsi, rdx
	call	fdadvise
	lea	rdi, [rbp - 0x188]
	mov	byte ptr [rbp - 0x249], 0
	call	is_probably_sparse
	and	al, 1
	mov	byte ptr [rbp - 0x24a], al
	mov	ecx, dword ptr [rbp - 0xe0]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_754
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_759
	mov	byte ptr [rbp - 0x249], 1
.label_759:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0xc], 2
	jne	.label_693
	test	byte ptr [rbp - 0x24a], 1
	je	.label_693
	mov	byte ptr [rbp - 0x249], 1
.label_693:
	jmp	.label_754
.label_754:
	test	byte ptr [rbp - 0x249], 1
	jne	.label_709
	lea	rax, [rbp - 0x188]
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x238]
	mov	qword ptr [rbp - 0x258], rcx
	mov	rcx, rsp
	mov	edx, 0x12
	mov	esi, edx
	lea	rdi, [rbp - 0x188]
	mov	qword ptr [rbp - 0x368], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x368]
	mov	qword ptr [rbp - 0x370], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x370]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	qword ptr [rbp - 0x378], rax
	call	io_blksize
	mov	rsi, qword ptr [rbp - 0x240]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdi, rax
	call	buffer_lcm
	mov	qword ptr [rbp - 0x260], rax
	mov	r8d, dword ptr [rbp - 0x170]
	and	r8d, 0xf000
	cmp	r8d, 0x8000
	jne	.label_689
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_689
	mov	rax, qword ptr [rbp - 0x158]
	add	rax, 1
	mov	qword ptr [rbp - 0x240], rax
.label_689:
	mov	rax, qword ptr [rbp - 0x260]
	sub	rax, 1
	add	rax, qword ptr [rbp - 0x240]
	mov	qword ptr [rbp - 0x240], rax
	mov	rax, qword ptr [rbp - 0x240]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x260]
	mov	rsi, qword ptr [rbp - 0x240]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x240], rsi
	cmp	qword ptr [rbp - 0x240], 0
	je	.label_735
	mov	rax, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_766
.label_735:
	mov	rax, qword ptr [rbp - 0x260]
	mov	qword ptr [rbp - 0x240], rax
.label_766:
	jmp	.label_709
.label_709:
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, qword ptr [rbp - 0x238]
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x238]
	call	ptr_align
	mov	qword ptr [rbp - 0x48], rax
	test	byte ptr [rbp - 0x24a], 1
	je	.label_688
	mov	edi, dword ptr [rbp - 0x64]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x240]
	mov	r8, qword ptr [rbp - 0x248]
	mov	r9, qword ptr [rbp - 0x158]
	test	byte ptr [rbp - 0x249], 1
	mov	dword ptr [rbp - 0x37c], edi
	mov	dword ptr [rbp - 0x380], esi
	mov	qword ptr [rbp - 0x388], rdx
	mov	qword ptr [rbp - 0x390], rcx
	mov	qword ptr [rbp - 0x398], r8
	mov	qword ptr [rbp - 0x3a0], r9
	je	.label_747
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x3a4], ecx
	jmp	.label_744
.label_747:
	mov	eax, 1
	mov	dword ptr [rbp - 0x3a4], eax
	jmp	.label_744
.label_744:
	mov	eax, dword ptr [rbp - 0x3a4]
	lea	rcx, [rbp - 0x261]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x37c]
	mov	r8d, dword ptr [rbp - 0x380]
	mov	qword ptr [rbp - 0x3b0], rsi
	mov	esi, r8d
	mov	r9, qword ptr [rbp - 0x388]
	mov	qword ptr [rbp - 0x3b8], rdx
	mov	rdx, r9
	mov	r10, qword ptr [rbp - 0x390]
	mov	qword ptr [rbp - 0x3c0], rcx
	mov	rcx, r10
	mov	r8, qword ptr [rbp - 0x398]
	mov	r9, qword ptr [rbp - 0x3a0]
	mov	dword ptr [rsp], eax
	mov	r11, qword ptr [rbp - 0x3b8]
	mov	qword ptr [rsp + 8], r11
	mov	r11, qword ptr [rbp - 0x3b0]
	mov	qword ptr [rsp + 0x10], r11
	mov	r11, qword ptr [rbp - 0x3c0]
	mov	qword ptr [rsp + 0x18], r11
	call	extent_copy
	test	al, 1
	jne	.label_695
	jmp	.label_755
.label_695:
	jmp	.label_698
.label_755:
	test	byte ptr [rbp - 0x261], 1
	jne	.label_700
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_704
.label_700:
	jmp	.label_688
.label_688:
	mov	edi, dword ptr [rbp - 0x64]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x240]
	test	byte ptr [rbp - 0x249], 1
	mov	dword ptr [rbp - 0x3c4], edi
	mov	dword ptr [rbp - 0x3c8], esi
	mov	qword ptr [rbp - 0x3d0], rdx
	mov	qword ptr [rbp - 0x3d8], rcx
	je	.label_717
	mov	rax, qword ptr [rbp - 0x248]
	mov	qword ptr [rbp - 0x3e0], rax
	jmp	.label_714
.label_717:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x3e0], rcx
	jmp	.label_714
.label_714:
	mov	rax, qword ptr [rbp - 0x3e0]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	dword ptr [rcx + 0xc], 3
	sete	dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rsp
	lea	r8, [rbp - 0x271]
	mov	qword ptr [rdi + 0x20], r8
	lea	r8, [rbp - 0x270]
	mov	qword ptr [rdi + 0x18], r8
	mov	qword ptr [rdi + 8], rsi
	mov	qword ptr [rdi], rcx
	mov	qword ptr [rdi + 0x10], -1
	and	dl, 1
	movzx	r9d, dl
	mov	edi, dword ptr [rbp - 0x3c4]
	mov	esi, dword ptr [rbp - 0x3c8]
	mov	rdx, qword ptr [rbp - 0x3d0]
	mov	rcx, qword ptr [rbp - 0x3d8]
	mov	r8, rax
	call	sparse_copy
	test	al, 1
	jne	.label_739
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_704
.label_739:
	test	byte ptr [rbp - 0x271], 1
	je	.label_741
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x270]
	call	ftruncate
	cmp	eax, 0
	jge	.label_741
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_756
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3e4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x3f0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3e4]
	mov	rdx, qword ptr [rbp - 0x3f0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_704
.label_741:
	jmp	.label_752
.label_752:
	jmp	.label_712
.label_712:
	jmp	.label_698
.label_698:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1f], 1
	je	.label_723
	mov	rdi, qword ptr [rbp - 0x40]
	call	get_stat_atime
	mov	qword ptr [rbp - 0x2b0], rax
	mov	qword ptr [rbp - 0x2a8], rdx
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rbp - 0x2a0], rax
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	qword ptr [rbp - 0x298], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	get_stat_mtime
	lea	rdi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x2c0], rax
	mov	qword ptr [rbp - 0x2b8], rdx
	mov	rax, qword ptr [rbp - 0x2c0]
	mov	qword ptr [rbp - 0x290], rax
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	qword ptr [rbp - 0x288], rax
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x3f8], rdi
	mov	edi, ecx
	mov	rdx, qword ptr [rbp - 0x3f8]
	call	fdutimens
	cmp	eax, 0
	je	.label_706
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_564
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3fc], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x408], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3fc]
	mov	rdx, qword ptr [rbp - 0x408]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x24], 1
	je	.label_692
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_704
.label_692:
	jmp	.label_706
.label_706:
	jmp	.label_723
.label_723:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1d], 1
	je	.label_721
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x1c]
	cmp	ecx, dword ptr [rbp - 0xdc]
	jne	.label_729
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x20]
	cmp	ecx, dword ptr [rbp - 0xd8]
	je	.label_721
.label_729:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x38]
	movzx	r8d, byte ptr [rax]
	and	r8d, 1
	lea	r9, [rbp - 0xf8]
	call	set_owner
	mov	edx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x40c], edx
	mov	dword ptr [rbp - 0x410], eax
	je	.label_740
	jmp	.label_748
.label_748:
	mov	eax, dword ptr [rbp - 0x40c]
	test	eax, eax
	je	.label_751
	jmp	.label_753
.label_740:
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_704
.label_751:
	mov	eax, dword ptr [rbp - 0x68]
	and	eax, 0xfffff1ff
	mov	dword ptr [rbp - 0x68], eax
.label_753:
	jmp	.label_721
.label_721:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x27], 1
	je	.label_694
	mov	byte ptr [rbp - 0x2c1], 0
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0x80
	cmp	eax, 0
	jne	.label_760
	call	geteuid
	cmp	eax, 0
	je	.label_760
	mov	edx, 0x180
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	call	fchmod_or_lchmod
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2c1], cl
.label_760:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	r8, qword ptr [rbp - 0x28]
	call	copy_attr
	test	al, 1
	jne	.label_771
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x28], 1
	je	.label_771
	mov	byte ptr [rbp - 0x189], 0
.label_771:
	test	byte ptr [rbp - 0x2c1], 1
	je	.label_687
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, dword ptr [rbp - 0x30]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	edx, eax
	call	fchmod_or_lchmod
	mov	dword ptr [rbp - 0x414], eax
.label_687:
	jmp	.label_694
.label_694:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x40]
	call	set_author
	mov	rdx, qword ptr [rbp - 0x28]
	test	byte ptr [rdx + 0x1e], 1
	jne	.label_763
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	je	.label_705
.label_763:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	r8d, dword ptr [rbp - 0x68]
	call	copy_acl
	cmp	eax, 0
	je	.label_711
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x24], 1
	je	.label_711
	mov	byte ptr [rbp - 0x189], 0
.label_711:
	jmp	.label_733
.label_705:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x2b], 1
	je	.label_715
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax + 0x10]
	call	set_acl
	cmp	eax, 0
	je	.label_757
	mov	byte ptr [rbp - 0x189], 0
.label_757:
	jmp	.label_722
.label_715:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x20], 1
	je	.label_761
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	je	.label_761
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x420], rdi
	mov	dword ptr [rbp - 0x424], esi
	call	cached_umask
	xor	eax, 0xffffffff
	and	eax, 0x1b6
	mov	rdi, qword ptr [rbp - 0x420]
	mov	esi, dword ptr [rbp - 0x424]
	mov	edx, eax
	call	set_acl
	cmp	eax, 0
	je	.label_749
	mov	byte ptr [rbp - 0x189], 0
.label_749:
	jmp	.label_742
.label_761:
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_745
	call	cached_umask
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_727
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x2c]
	call	fchmod_or_lchmod
	cmp	eax, 0
	je	.label_727
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_438
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x428], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x430], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x428]
	mov	rdx, qword ptr [rbp - 0x430]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x24], 1
	je	.label_767
	mov	byte ptr [rbp - 0x189], 0
.label_767:
	jmp	.label_727
.label_727:
	jmp	.label_745
.label_745:
	jmp	.label_742
.label_742:
	jmp	.label_722
.label_722:
	jmp	.label_733
.label_733:
	jmp	.label_704
.label_704:
	mov	edi, dword ptr [rbp - 0x5c]
	call	close
	cmp	eax, 0
	jge	.label_774
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_708
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x434], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x440], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x434]
	mov	rdx, qword ptr [rbp - 0x440]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
.label_774:
	jmp	.label_697
.label_697:
	mov	edi, dword ptr [rbp - 0x64]
	call	close
	cmp	eax, 0
	jge	.label_696
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_708
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x444], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x450], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x444]
	mov	rdx, qword ptr [rbp - 0x450]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x189], 0
.label_696:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	mov	al, byte ptr [rbp - 0x189]
	and	al, 1
	mov	byte ptr [rbp - 9], al
.label_702:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x4d8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a6f0

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	edi, eax
	call	setfscreatecon
	cmp	eax, 0
	je	.label_776
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_777
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_776:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a740

	.globl utimens_symlink
	.type utimens_symlink, @function
utimens_symlink:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	lutimens
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_778
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_778
	mov	dword ptr [rbp - 0x14], 0
.label_778:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a790

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	dword ptr [rbp - 0x3c], edx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 0x20]
	mov	dword ptr [rbp - 0x40], edx
	test	byte ptr [rbp - 0x29], 1
	jne	.label_782
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_793
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x18], 1
	jne	.label_793
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x2b], 1
	je	.label_782
.label_793:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_797
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x18], 1
	je	.label_784
.label_797:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_788
.label_784:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x60], ecx
.label_788:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x48], eax
	mov	eax, dword ptr [rbp - 0x44]
	and	eax, dword ptr [rbp - 0x48]
	and	eax, 0x1c0
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x44]
	and	eax, 0xfff
	mov	ecx, dword ptr [rbp - 0x48]
	xor	ecx, 0xffffffff
	or	ecx, 0x800
	or	ecx, 0x400
	or	ecx, 0x200
	and	eax, ecx
	cmp	eax, 0
	je	.label_783
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	edx, dword ptr [rbp - 0x4c]
	call	qset_acl
	cmp	eax, 0
	je	.label_783
	mov	rdi, qword ptr [rbp - 0x10]
	call	owner_failure_ok
	test	al, 1
	jne	.label_786
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_789
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x64], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_786:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + 0x24]
	and	dl, 1
	movzx	esi, dl
	sub	eax, esi
	mov	dword ptr [rbp - 4], eax
	jmp	.label_787
.label_783:
	jmp	.label_782
.label_782:
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_779
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	call	fchown
	cmp	eax, 0
	jne	.label_785
	mov	dword ptr [rbp - 4], 1
	jmp	.label_787
.label_785:
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_790
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_780
.label_790:
	call	__errno_location
	mov	esi, 0xffffffff
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x50], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	edx, dword ptr [rbp - 0x40]
	call	fchown
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x74], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x74]
	mov	dword ptr [rax], ecx
.label_780:
	jmp	.label_796
.label_779:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	call	lchown
	cmp	eax, 0
	jne	.label_781
	mov	dword ptr [rbp - 4], 1
	jmp	.label_787
.label_781:
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_795
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_792
.label_795:
	call	__errno_location
	mov	esi, 0xffffffff
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], ecx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x40]
	call	lchown
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x78], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x78]
	mov	dword ptr [rax], ecx
.label_792:
	jmp	.label_796
.label_796:
	mov	rdi, qword ptr [rbp - 0x10]
	call	chown_failure_ok
	test	al, 1
	jne	.label_794
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_481
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x88], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x7c]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + 0x24], 1
	je	.label_791
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_787
.label_791:
	jmp	.label_794
.label_794:
	mov	dword ptr [rbp - 4], 0
.label_787:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa80

	.globl copy_attr
	.type copy_attr, @function
copy_attr:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	qword ptr [rbp - 0x28], r8
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aaa0

	.globl set_author
	.type set_author, @function
set_author:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aac0

	.globl writable_destination
	.type writable_destination, @function
writable_destination:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	and	esi, 0xf000
	cmp	esi, 0xa000
	mov	byte ptr [rbp - 0xd], al
	je	.label_798
	call	can_write_any_file
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0xd], cl
	jne	.label_798
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 8]
	call	euidaccess
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0xd], cl
.label_798:
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab20

	.globl clone_file
	.type clone_file, @function
clone_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x40049409
	mov	ecx, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	rsi, rcx
	mov	al, 0
	call	ioctl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab50

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	push	rbp
	mov	rbp, rsp
	lea	rax, [rbp + 0x10]
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 8], rax
	jge	.label_802
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_802
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_799
.label_802:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_799
.label_799:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x20000
	mov	edx, ecx
	cmp	rdx, rax
	jle	.label_800
	mov	eax, 0x20000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_804
.label_800:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x38]
	jge	.label_801
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_801
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_803
.label_801:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_803
.label_803:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_804:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ac20

	.globl is_probably_sparse
	.type is_probably_sparse, @function
is_probably_sparse:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	byte ptr [rbp - 9], cl
	jne	.label_805
	mov	eax, 0x200
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x40]
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rsi + 0x30]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, rax
	setl	dil
	mov	byte ptr [rbp - 9], dil
.label_805:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ac80

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x10]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	qword ptr [rbp - 0x10]
	sub	rcx, rdx
	add	rsi, rcx
	mov	rax, rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40acd0

	.globl extent_copy
	.type extent_copy, @function
extent_copy:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x198
	mov	rax, qword ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	lea	r14, [rbp - 0x98]
	mov	dword ptr [rbp - 0x20], edi
	mov	dword ptr [rbp - 0x24], esi
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x48], r9
	mov	dword ptr [rbp - 0x4c], ebx
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xa0], 0
	mov	qword ptr [rbp - 0xa8], 0
	mov	qword ptr [rbp - 0xb0], 0
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, r14
	call	extent_scan_init
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 0
	mov	byte ptr [rbp - 0xb1], 1
.label_843:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_read
	and	al, 1
	mov	byte ptr [rbp - 0xb2], al
	test	byte ptr [rbp - 0xb2], 1
	jne	.label_828
	test	byte ptr [rbp - 0x77], 1
	je	.label_831
	jmp	.label_833
.label_831:
	test	byte ptr [rbp - 0x78], 1
	je	.label_834
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_814
.label_834:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_838
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe8], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_814
.label_828:
	mov	byte ptr [rbp - 0xb3], 0
	mov	dword ptr [rbp - 0xb8], 0
.label_829:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0xb8]
	mov	edx, ecx
	cmp	rdx, qword ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0xf1], al
	jb	.label_807
	mov	al, byte ptr [rbp - 0xb3]
	mov	byte ptr [rbp - 0xf1], al
.label_807:
	mov	al, byte ptr [rbp - 0xf1]
	test	al, 1
	jne	.label_816
	jmp	.label_819
.label_816:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x80]
	jae	.label_821
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0xc8], rcx
	jmp	.label_823
.label_821:
	mov	eax, dword ptr [rbp - 0xb8]
	add	eax, -1
	mov	dword ptr [rbp - 0xb8], eax
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	eax, dword ptr [rbp - 0xb8]
	mov	edx, eax
	imul	rdx, rdx, 0x18
	add	rdx, qword ptr [rbp - 0x70]
	add	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	qword ptr [rbp - 0xc8], 0
.label_823:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xc0]
	add	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, rcx
	jge	.label_840
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xc0]
	jge	.label_845
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_845:
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rax
.label_840:
	mov	rax, qword ptr [rbp - 0xc0]
	sub	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xd0], rax
	mov	byte ptr [rbp - 0xb1], 0
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_806
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc0]
	call	lseek
	cmp	rax, 0
	jge	.label_824
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_827
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xf8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x100], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_809:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_free
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_814
.label_824:
	test	byte ptr [rbp - 0xb3], 1
	je	.label_839
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_841
.label_839:
	test	byte ptr [rbp - 0xb3], 1
	jne	.label_842
	cmp	dword ptr [rbp - 0x4c], 1
	je	.label_842
.label_841:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x60]
	cmp	dword ptr [rbp - 0x4c], 3
	sete	al
	mov	rcx, qword ptr [rbp - 0xd0]
	and	al, 1
	movzx	edx, al
	call	create_hole
	test	al, 1
	jne	.label_808
	jmp	.label_809
.label_808:
	mov	byte ptr [rbp - 0xb1], 1
	jmp	.label_810
.label_842:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd8], rax
	test	byte ptr [rbp - 0xb3], 1
	je	.label_812
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xd0]
	jge	.label_820
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_825
.label_820:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x108], rax
.label_825:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0xd8], rax
.label_812:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	write_zeros
	test	al, 1
	jne	.label_832
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_837
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_809
.label_832:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xc0]
	jge	.label_847
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_848
.label_847:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x120], rax
.label_848:
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0xb0], rax
.label_810:
	jmp	.label_806
.label_806:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	byte ptr [rbp - 0xb3], 0
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	edi, dword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x4c], 3
	mov	dword ptr [rbp - 0x124], edi
	mov	dword ptr [rbp - 0x128], esi
	mov	qword ptr [rbp - 0x130], rdx
	mov	qword ptr [rbp - 0x138], rcx
	jne	.label_817
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x140], rax
	jmp	.label_815
.label_817:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	jmp	.label_815
.label_815:
	mov	rax, qword ptr [rbp - 0x140]
	mov	r9d, 1
	lea	rcx, [rbp - 0xe0]
	lea	rdx, [rbp - 0xe1]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	r8, qword ptr [rbp - 0xc8]
	mov	r10d, dword ptr [rbp - 0x124]
	mov	qword ptr [rbp - 0x148], rdi
	mov	edi, r10d
	mov	r11d, dword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x150], rsi
	mov	esi, r11d
	mov	rbx, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x158], rdx
	mov	rdx, rbx
	mov	r14, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x160], rcx
	mov	rcx, r14
	mov	qword ptr [rbp - 0x168], r8
	mov	r8, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 0x20], r15
	call	sparse_copy
	test	al, 1
	jne	.label_826
	jmp	.label_809
.label_826:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	je	.label_830
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	mov	byte ptr [rbp - 0xb1], al
.label_830:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_836
	mov	byte ptr [rbp - 0x77], 1
	jmp	.label_819
.label_836:
	jmp	.label_822
.label_822:
	mov	eax, dword ptr [rbp - 0xb8]
	add	eax, 1
	mov	dword ptr [rbp - 0xb8], eax
	jmp	.label_829
.label_819:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_free
	mov	al, byte ptr [rbp - 0x77]
	xor	al, 0xff
	test	al, 1
	jne	.label_843
.label_833:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jl	.label_846
	test	byte ptr [rbp - 0xb1], 1
	je	.label_813
.label_846:
	cmp	dword ptr [rbp - 0x4c], 1
	je	.label_818
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x48]
	call	ftruncate
	cmp	eax, 0
	jne	.label_811
	jmp	.label_813
.label_818:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	rsi, rax
	call	write_zeros
	test	al, 1
	jne	.label_813
.label_811:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_756
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x16c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x178], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x16c]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_814
.label_813:
	cmp	dword ptr [rbp - 0x4c], 3
	jne	.label_835
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_835
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	call	punch_hole
	cmp	eax, 0
	jge	.label_835
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_844
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x17c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x188], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x17c]
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_814
.label_835:
	mov	byte ptr [rbp - 0x19], 1
.label_814:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x198
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b450

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xe8
	mov	al, r9b
	mov	r10, qword ptr [rbp + 0x30]
	mov	r11, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rbp + 0x20]
	mov	r14, qword ptr [rbp + 0x18]
	mov	r15, qword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 0x20], edi
	mov	dword ptr [rbp - 0x24], esi
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	qword ptr [rbp - 0x50], r15
	mov	qword ptr [rbp - 0x58], r14
	mov	qword ptr [rbp - 0x60], rbx
	mov	qword ptr [rbp - 0x68], r11
	mov	qword ptr [rbp - 0x70], r10
	mov	rcx, qword ptr [rbp - 0x70]
	mov	byte ptr [rcx], 0
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], 0
	mov	byte ptr [rbp - 0x71], 0
	mov	qword ptr [rbp - 0x80], 0
.label_871:
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_855
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0xa8], edi
	mov	qword ptr [rbp - 0xb0], rsi
	jae	.label_875
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_883
.label_875:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb8], rax
.label_883:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	edi, dword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jge	.label_860
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_870
	jmp	.label_871
.label_870:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_878
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xbc], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_854
.label_860:
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_868
	jmp	.label_855
.label_868:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_866
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_880
.label_866:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd0], rax
.label_880:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa0], rax
.label_853:
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_858
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	byte ptr [rbp - 0xa1], al
	mov	rcx, qword ptr [rbp - 0x90]
	cmp	rcx, qword ptr [rbp - 0x88]
	jae	.label_864
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_876
.label_864:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xd8], rax
.label_876:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_861
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_861
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x90]
	call	is_nul
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
.label_861:
	xor	eax, eax
	mov	cl, al
	mov	dl, byte ptr [rbp - 0x71]
	and	dl, 1
	movzx	eax, dl
	mov	dl, byte ptr [rbp - 0xa1]
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	byte ptr [rbp - 0xd9], cl
	je	.label_863
	cmp	qword ptr [rbp - 0x80], 0
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_863:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	mov	byte ptr [rbp - 0xa2], al
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rcx, qword ptr [rbp - 0x90]
	jne	.label_881
	mov	al, 1
	test	byte ptr [rbp - 0x71], 1
	mov	byte ptr [rbp - 0xda], al
	je	.label_850
.label_881:
	cmp	qword ptr [rbp - 0x90], 0
	setne	al
	xor	al, 0xff
	mov	byte ptr [rbp - 0xda], al
.label_850:
	mov	al, byte ptr [rbp - 0xda]
	and	al, 1
	mov	byte ptr [rbp - 0xa3], al
	test	byte ptr [rbp - 0xa2], 1
	jne	.label_862
	test	byte ptr [rbp - 0xa3], 1
	je	.label_873
.label_862:
	test	byte ptr [rbp - 0xa2], 1
	jne	.label_859
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_859:
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_882
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x80]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x80]
	je	.label_852
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_857
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xe8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_854
.label_852:
	jmp	.label_856
.label_882:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x80]
	and	al, 1
	movzx	edx, al
	call	create_hole
	test	al, 1
	jne	.label_884
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_854
.label_884:
	jmp	.label_856
.label_856:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x80], rax
	test	byte ptr [rbp - 0xa3], 1
	je	.label_849
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_872
	mov	qword ptr [rbp - 0x88], 0
.label_872:
	test	byte ptr [rbp - 0xa2], 1
	je	.label_879
	mov	qword ptr [rbp - 0x90], 0
	jmp	.label_874
.label_879:
	mov	qword ptr [rbp - 0x80], 0
.label_874:
	jmp	.label_849
.label_849:
	jmp	.label_865
.label_873:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rbp - 0x90]
	cmp	rcx, rax
	ja	.label_851
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_867
.label_851:
	movabs	rdi, OFFSET FLAT:label_869
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0xf4], edi
	mov	esi, dword ptr [rbp - 0xf4]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_854
.label_867:
	jmp	.label_865
.label_865:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x88], rcx
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_853
.label_858:
	mov	al, byte ptr [rbp - 0x71]
	mov	rcx, qword ptr [rbp - 0x70]
	and	al, 1
	mov	byte ptr [rcx], al
	jmp	.label_871
.label_855:
	test	byte ptr [rbp - 0x71], 1
	je	.label_877
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x80]
	and	al, 1
	movzx	edx, al
	call	create_hole
	test	al, 1
	jne	.label_877
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_854
.label_877:
	mov	byte ptr [rbp - 0x19], 1
.label_854:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xe8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b9a0

	.globl fchmod_or_lchmod
	.type fchmod_or_lchmod, @function
fchmod_or_lchmod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_885
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x14]
	call	fchmod
	mov	dword ptr [rbp - 4], eax
	jmp	.label_886
.label_885:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	chmod
	mov	dword ptr [rbp - 4], eax
.label_886:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b9f0

	.globl extent_scan_free
	.type extent_scan_free, @function
extent_scan_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x28]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x18], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba30

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	edx, 1
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_889
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_827
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_887
.label_889:
	test	byte ptr [rbp - 0x11], 1
	je	.label_888
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	punch_hole
	cmp	eax, 0
	jge	.label_888
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_844
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_887
.label_888:
	mov	byte ptr [rbp - 1], 1
.label_887:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb40

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	jne	.label_890
	mov	eax, 1
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [write_zeros.nz]]
	call	calloc
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	jne	.label_896
	movabs	rax, OFFSET FLAT:write_zeros.fallback
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	mov	qword ptr [word ptr [write_zeros.nz]],  0x400
.label_896:
	jmp	.label_890
.label_890:
	jmp	.label_892
.label_892:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_895
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_897
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_894
.label_897:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_894:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [write_zeros.zeros]]
	mov	rdx, qword ptr [rbp - 0x18]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_891
	mov	byte ptr [rbp - 1], 0
	jmp	.label_893
.label_891:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_892
.label_895:
	mov	byte ptr [rbp - 1], 1
.label_893:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc40

	.globl punch_hole
	.type punch_hole, @function
punch_hole:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], 0
	mov	edi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	esi, eax
	call	fallocate
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_898
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	is_ENOTSUP
	test	al, 1
	jne	.label_899
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_898
.label_899:
	mov	dword ptr [rbp - 0x1c], 0
.label_898:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bcb0

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_900
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 5], cl
	jmp	.label_900
.label_900:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bce0

	.globl is_nul
	.type is_nul, @function
is_nul:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_901
	mov	byte ptr [rbp - 1], 1
	jmp	.label_902
.label_901:
	jmp	.label_903
.label_903:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0
	cmp	rax, 0
	je	.label_908
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_909
	mov	byte ptr [rbp - 1], 0
	jmp	.label_902
.label_909:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_911
	mov	byte ptr [rbp - 1], 1
	jmp	.label_902
.label_911:
	jmp	.label_903
.label_908:
	jmp	.label_905
.label_905:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
	cmp	byte ptr [rbp - 0x21], 0
	je	.label_907
	mov	byte ptr [rbp - 1], 0
	jmp	.label_902
.label_907:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_906
	mov	byte ptr [rbp - 1], 1
	jmp	.label_902
.label_906:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0xf
	cmp	rax, 0
	jne	.label_910
	jmp	.label_904
.label_910:
	jmp	.label_905
.label_904:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_902:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40be00

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_912
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	mov	byte ptr [rbp - 9], dl
	jne	.label_913
.label_912:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x1b]
	xor	cl, 0xff
	mov	byte ptr [rbp - 9], cl
.label_913:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40be50

	.globl forget_created
	.type forget_created, @function
forget_created:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rsi, rax
	call	hash_delete
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_914
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	src_to_dest_free
.label_914:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40beb0

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bee0

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_916
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_915
.label_916:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_915
.label_915:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf50

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_918
	call	xalloc_die
.label_918:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_917
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	src_to_dest_free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_919
.label_917:
	mov	qword ptr [rbp - 8], 0
.label_919:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c010

	.globl hash_init
	.type hash_init, @function
hash_init:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x67
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:src_to_dest_hash
	movabs	rcx, OFFSET FLAT:src_to_dest_compare
	movabs	r8, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [word ptr [src_to_dest]],  rax
	cmp	qword ptr [word ptr [src_to_dest]],  0
	jne	.label_920
	call	xalloc_die
.label_920:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c060

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c090

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
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
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_921
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	sete	dl
	mov	byte ptr [rbp - 0x21], dl
.label_921:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c100
	.globl forget_all
	.type forget_all, @function
forget_all:

	push	rbp
	mov	rbp, rsp
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	call	hash_free
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c120

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], edi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x18], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 0x20], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 0x21], 0
	call	extent_need_sync
	xor	edi, edi
	mov	ecx, 1
	test	al, 1
	cmovne	edi, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x10], edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c190

	.globl extent_need_sync
	.type extent_need_sync, @function
extent_need_sync:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c1a0

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1060
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x20], rdi
.label_945:
	mov	eax, 0xc020660b
	mov	esi, eax
	mov	rcx, -1
	xor	eax, eax
	mov	edx, 0x1000
	lea	rdi, [rbp - 0x1020]
	mov	r8, rdi
	mov	qword ptr [rbp - 0x1028], r8
	mov	r8, qword ptr [rbp - 0x1028]
	add	r8, 0x20
	mov	qword ptr [rbp - 0x1030], r8
	mov	qword ptr [rbp - 0x1058], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x1060], rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	dword ptr [rcx + 0x10], eax
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	dword ptr [rcx + 0x18], 0x48
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x1060]
	sub	rdx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x1028]
	mov	qword ptr [rcx + 8], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	rsi, qword ptr [rbp - 0x1058]
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	jge	.label_939
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_951
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x20], 1
.label_951:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_927
.label_939:
	mov	rax, qword ptr [rbp - 0x1028]
	cmp	dword ptr [rax + 0x14], 0
	jne	.label_929
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x21], 1
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_927
.label_929:
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	esi, dword ptr [rdx + 0x14]
	mov	edx, esi
	sub	rax, rdx
	cmp	rcx, rax
	ja	.label_942
	jmp	.label_948
.label_942:
	movabs	rdi, OFFSET FLAT:label_949
	movabs	rsi, OFFSET FLAT:label_925
	mov	edx, 0x7e
	movabs	rcx, OFFSET FLAT:label_926
	call	__assert_fail
.label_948:
	mov	eax, 0x18
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	eax, dword ptr [rdx + 0x14]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rsi + 0x18]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	sub	rdx, rsi
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x1038], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, rax
	mov	rdx, rcx
	call	xnrealloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x1038], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	dword ptr [rbp - 0x103c], 0
	mov	dword ptr [rbp - 0x103c], 0
.label_933:
	mov	eax, dword ptr [rbp - 0x103c]
	mov	rcx, qword ptr [rbp - 0x1028]
	cmp	eax, dword ptr [rcx + 0x14]
	jae	.label_934
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	mov	rdx, qword ptr [rdx]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	esi, ecx
	imul	rsi, rsi, 0x38
	add	rsi, qword ptr [rbp - 0x1030]
	sub	rax, qword ptr [rsi + 0x10]
	cmp	rdx, rax
	ja	.label_941
	jmp	.label_923
.label_941:
	movabs	rdi, OFFSET FLAT:label_924
	movabs	rsi, OFFSET FLAT:label_925
	mov	edx, 0x8d
	movabs	rcx, OFFSET FLAT:label_926
	call	__assert_fail
.label_923:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_935
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	eax, edx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x1030]
	mov	edx, dword ptr [rax + 0x28]
	and	edx, 0xfffffffe
	cmp	ecx, edx
	jne	.label_935
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	ecx, edx
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rcx]
	jne	.label_935
	mov	eax, dword ptr [rbp - 0x103c]
	mov	ecx, eax
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + 8], rcx
	mov	eax, dword ptr [rbp - 0x103c]
	mov	ecx, eax
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	mov	eax, dword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx + 0x10], eax
	jmp	.label_931
.label_935:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_943
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rdx]
	ja	.label_932
.label_943:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_922
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	ecx, edx
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rcx]
	jbe	.label_922
.label_932:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_937
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x1048], rax
	jmp	.label_940
.label_937:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x1048], rax
.label_940:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	sub	rax, qword ptr [rdx]
	mov	qword ptr [rbp - 0x1050], rax
	mov	rax, qword ptr [rbp - 0x1050]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rdx + 0x10]
	jae	.label_946
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_947
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x20], 1
.label_947:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_927
.label_946:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x1050]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	mov	rsi, qword ptr [rdx + 0x10]
	sub	rsi, rax
	mov	qword ptr [rdx + 0x10], rsi
	mov	ecx, dword ptr [rbp - 0x103c]
	add	ecx, -1
	mov	dword ptr [rbp - 0x103c], ecx
	jmp	.label_930
.label_922:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	edx, ecx
	imul	rdx, rdx, 0x18
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	eax, ecx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x1030]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	eax, ecx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x1030]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], rax
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	eax, ecx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x1030]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x10], ecx
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, 1
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_931
.label_931:
	jmp	.label_930
.label_930:
	mov	eax, dword ptr [rbp - 0x103c]
	add	eax, 1
	mov	dword ptr [rbp - 0x103c], eax
	jmp	.label_933
.label_934:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	and	ecx, 1
	cmp	ecx, 0
	je	.label_950
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x21], 1
.label_950:
	cmp	dword ptr [rbp - 0x14], 0x48
	jbe	.label_944
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x21], 1
	jne	.label_944
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x14]
	add	ecx, -1
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, ecx
	mov	edx, ecx
	imul	rdx, rdx, 0x18
	add	rax, rdx
	add	rax, -0x18
	mov	qword ptr [rbp - 0x20], rax
.label_944:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + 0x21], 1
	je	.label_928
	jmp	.label_936
.label_928:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	cmp	dword ptr [rbp - 0x14], 0x48
	jb	.label_938
	jmp	.label_936
.label_938:
	jmp	.label_945
.label_936:
	mov	byte ptr [rbp - 1], 1
.label_927:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x1060
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c780

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	al, r9b
	mov	r9d, dword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	and	al, 1
	mov	byte ptr [rbp - 0x25], al
	mov	dword ptr [rbp - 0x2c], r9d
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_952
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	call	linkat
	cmp	eax, 0
	jne	.label_956
	xor	eax, eax
	mov	dword ptr [rbp - 0x158], eax
	jmp	.label_958
.label_956:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x158], ecx
.label_958:
	mov	eax, dword ptr [rbp - 0x158]
	mov	dword ptr [rbp - 0x2c], eax
.label_952:
	test	byte ptr [rbp - 0x25], 1
	je	.label_963
	cmp	dword ptr [rbp - 0x2c], 0x11
	je	.label_954
.label_963:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_953
.label_954:
	lea	rsi, [rbp - 0x130]
	mov	rdi, qword ptr [rbp - 0x20]
	call	samedir_template
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	jne	.label_960
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_953
.label_960:
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_link
	mov	eax, 6
	mov	r8d, eax
	lea	rdx, [rbp - 0x150]
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x150], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rdi
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x140], eax
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rdi, qword ptr [rbp - 0x138]
	call	try_tempname_len
	cmp	eax, 0
	je	.label_959
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], ecx
	jmp	.label_961
.label_959:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	jne	.label_955
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x15c], eax
	jmp	.label_957
.label_955:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x15c], ecx
.label_957:
	mov	eax, dword ptr [rbp - 0x15c]
	xor	edx, edx
	mov	dword ptr [rbp - 0x154], eax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	mov	dword ptr [rbp - 0x160], eax
.label_961:
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, rax
	je	.label_962
	mov	rdi, qword ptr [rbp - 0x138]
	call	free
.label_962:
	mov	eax, dword ptr [rbp - 0x154]
	mov	dword ptr [rbp - 4], eax
.label_953:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c950

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x10]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0x100
	ja	.label_967
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_964
.label_967:
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_966
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_965
.label_966:
	jmp	.label_964
.label_964:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	mempcpy
	mov	ecx, OFFSET FLAT:simple_pattern
	mov	esi, ecx
	mov	rdi, rax
	call	strcpy
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x38], rax
.label_965:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ca00

	.globl try_link
	.type try_link, @function
try_link:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rax + 0x14]
	call	linkat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ca50

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	dword ptr [rbp - 0x28], r8d
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_972
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	call	symlinkat
	cmp	eax, 0
	jne	.label_971
	xor	eax, eax
	mov	dword ptr [rbp - 0x150], eax
	jmp	.label_974
.label_971:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x150], ecx
.label_974:
	mov	eax, dword ptr [rbp - 0x150]
	mov	dword ptr [rbp - 0x28], eax
.label_972:
	test	byte ptr [rbp - 0x21], 1
	je	.label_979
	cmp	dword ptr [rbp - 0x28], 0x11
	je	.label_969
.label_979:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_968
.label_969:
	lea	rsi, [rbp - 0x130]
	mov	rdi, qword ptr [rbp - 0x20]
	call	samedir_template
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	jne	.label_977
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_968
.label_977:
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_symlink
	mov	eax, 6
	mov	r8d, eax
	lea	rdx, [rbp - 0x148]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rdi
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x140], eax
	mov	rdi, qword ptr [rbp - 0x138]
	call	try_tempname_len
	cmp	eax, 0
	je	.label_970
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], ecx
	jmp	.label_973
.label_970:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	je	.label_978
	call	__errno_location
	xor	edx, edx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], ecx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_976
.label_978:
	mov	dword ptr [rbp - 0x14c], 0xffffffff
.label_976:
	jmp	.label_973
.label_973:
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, rax
	je	.label_975
	mov	rdi, qword ptr [rbp - 0x138]
	call	free
.label_975:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 4], eax
.label_968:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cbf0

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, qword ptr [rbp - 8]
	call	symlinkat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc30

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	dword ptr [rbp - 0x20], r8d
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	qcopy_acl
	mov	dword ptr [rbp - 0x24], eax
	mov	ecx, eax
	sub	eax, -2
	mov	dword ptr [rbp - 0x28], ecx
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_982
	jmp	.label_983
.label_983:
	mov	eax, dword ptr [rbp - 0x28]
	sub	eax, -1
	mov	dword ptr [rbp - 0x30], eax
	je	.label_984
	jmp	.label_980
.label_982:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x34], esi
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_985
	mov	esi, dword ptr [rbp - 0x34]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_981
.label_984:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_438
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x38], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_981
.label_980:
	jmp	.label_981
.label_981:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cd10

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	call	qset_acl
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_986
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_449
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_986:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cd80

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0x400
	mov	qword ptr [rbp - 0x28], 0x2000
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jae	.label_987
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_996
.label_987:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
.label_996:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_988
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_993
.label_988:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_993:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x38], rax
.label_994:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_995
	mov	qword ptr [rbp - 8], 0
	jmp	.label_990
.label_995:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	call	readlink
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_992
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_992
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_990
.label_992:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_989
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_990
.label_989:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	movabs	rdi, 0x3fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_999
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_991
.label_999:
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_998
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_997
.label_998:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_990
.label_997:
	jmp	.label_991
.label_991:
	jmp	.label_994
.label_990:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cf40

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1000
	movabs	rdi, OFFSET FLAT:label_1004
	call	getenv
	mov	qword ptr [rbp - 8], rax
.label_1000:
	cmp	qword ptr [rbp - 8], 0
	je	.label_1003
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1003
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	call	last_component
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi, rax
	jne	.label_1003
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1002
.label_1003:
	movabs	rax, OFFSET FLAT:label_1001
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1002
.label_1002:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [simple_backup_suffix]],  rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cfe0

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, cl
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rsi
	mov	qword ptr [rbp - 0x78], rax
	call	strlen
	mov	rsi, qword ptr [rbp - 0x78]
	add	rsi, rax
	mov	qword ptr [rbp - 0x30], rsi
	cmp	qword ptr [word ptr [simple_backup_suffix]],  0
	jne	.label_1013
	xor	eax, eax
	mov	edi, eax
	call	set_simple_backup_suffix
.label_1013:
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 9
	jae	.label_1019
	mov	qword ptr [rbp - 0x40], 9
.label_1019:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1008
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1012
.label_1008:
	mov	qword ptr [rbp - 0x58], 0
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	mov	qword ptr [rbp - 0x68], 0
.label_1007:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rdx, rax
	call	memcpy
	cmp	dword ptr [rbp - 0x1c], 1
	jne	.label_1021
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	memcpy
	jmp	.label_1005
.label_1021:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rax, rsp
	lea	rsi, [rbp - 0x5c]
	mov	qword ptr [rax], rsi
	lea	rsi, [rbp - 0x50]
	lea	r9, [rbp - 0x58]
	call	numbered_backup
	mov	edi, eax
	mov	ecx, edi
	sub	eax, 3
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x84], eax
	ja	.label_1011
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1022]]
	jmp	rcx
.label_2654:
	jmp	.label_1011
.label_2655:
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_1020
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	memcpy
.label_1020:
	jmp	.label_1006
.label_1006:
	mov	edx, 0x7e
	lea	r8, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x5c]
	call	check_extension
	jmp	.label_1011
.label_2656:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1012
.label_1011:
	jmp	.label_1005
.label_1005:
	test	byte ptr [rbp - 0x1d], 1
	jne	.label_1018
	jmp	.label_1010
.label_1018:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_1015
	mov	dword ptr [rbp - 0x5c], 0xffffff9c
	mov	qword ptr [rbp - 0x28], 0
.label_1015:
	mov	edi, 0xffffff9c
	mov	eax, 1
	xor	ecx, ecx
	cmp	dword ptr [rbp - 0x1c], 1
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x5c]
	mov	r8, qword ptr [rbp - 0x50]
	add	r8, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rcx, r8
	mov	r8d, eax
	call	renameatu
	cmp	eax, 0
	jne	.label_1014
	jmp	.label_1010
.label_1014:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x70], ecx
	cmp	dword ptr [rbp - 0x70], 0x11
	je	.label_1016
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1017
	mov	rdi, qword ptr [rbp - 0x58]
	call	closedir
	mov	dword ptr [rbp - 0x88], eax
.label_1017:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x8c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1012
.label_1016:
	jmp	.label_1007
.label_1010:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1009
	mov	rdi, qword ptr [rbp - 0x58]
	call	closedir
	mov	dword ptr [rbp - 0x90], eax
.label_1009:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_1012:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d2d0

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	rax, qword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], 1
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	base_len
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1033
	mov	rdi, qword ptr [rbp - 0x48]
	call	rewinddir
	jmp	.label_1034
.label_1033:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x68]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x72], cx
	mov	rdi, qword ptr [rbp - 0x68]
	mov	esi, OFFSET FLAT:label_185
	mov	dword ptr [rbp - 0xac], edx
	call	strcpy
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0xac]
	mov	qword ptr [rbp - 0xb8], rax
	call	opendirat
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1025
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1025
	mov	dword ptr [rbp - 0x3c], 3
.label_1025:
	mov	rax, qword ptr [rbp - 0x68]
	mov	cx, word ptr [rbp - 0x72]
	mov	word ptr [rax], cx
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x70]
	mov	edx, OFFSET FLAT:label_1032
	mov	esi, edx
	mov	rdi, rax
	call	strcpy
	cmp	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0xc0], rax
	jne	.label_1036
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1039
.label_1036:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
.label_1034:
	jmp	.label_1029
.label_1029:
	mov	rdi, qword ptr [rbp - 0x48]
	call	readdir
	mov	qword ptr [rbp - 0x50], rax
	cmp	rax, 0
	je	.label_1024
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x70]
	add	rdi, 4
	cmp	rax, rdi
	jae	.label_1030
	jmp	.label_1029
.label_1030:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x13
	mov	rdx, qword ptr [rbp - 0x70]
	add	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_1038
	jmp	.label_1029
.label_1038:
	mov	eax, 0x31
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x13
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 2
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jg	.label_1042
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	jle	.label_1027
.label_1042:
	jmp	.label_1029
.label_1027:
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x89], dl
	mov	qword ptr [rbp - 0x98], 1
.label_1041:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	sub	edx, 0x30
	cmp	edx, 9
	ja	.label_1035
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x39
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	sil, byte ptr [rbp - 0x89]
	and	sil, 1
	movzx	edi, sil
	and	edi, edx
	cmp	edi, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x89], sil
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1041
.label_1035:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7e
	jne	.label_1023
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	byte ptr [rcx + rax + 1], 0
	jne	.label_1023
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jb	.label_1031
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_1023
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x20]
	add	rax, 2
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jle	.label_1031
.label_1023:
	jmp	.label_1029
.label_1031:
	xor	eax, eax
	mov	ecx, 1
	mov	dl, byte ptr [rbp - 0x89]
	and	dl, 1
	movzx	esi, dl
	mov	edi, esi
	add	rdi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x60], rdi
	mov	dl, byte ptr [rbp - 0x89]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 2
	add	rdi, qword ptr [rbp - 0x60]
	add	rdi, 2
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rdi, qword ptr [rbp - 0xa0]
	jae	.label_1043
	movabs	rax, 0x3fffffffffffffff
	cmp	rax, qword ptr [rbp - 0xa0]
	jb	.label_1026
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
.label_1026:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0xa0]
	call	realloc
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_1037
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1039
.label_1037:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x18], rax
.label_1043:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	mov	byte ptr [rax], 0x2e
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	mov	byte ptr [rax], 0x7e
	mov	rax, qword ptr [rbp - 0x88]
	mov	byte ptr [rax], 0x30
	mov	dl, byte ptr [rbp - 0x89]
	and	dl, 1
	movzx	esi, dl
	mov	rax, qword ptr [rbp - 0x88]
	movsxd	rcx, esi
	add	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 2
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
.label_1040:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x39
	jne	.label_1028
	mov	rax, qword ptr [rbp - 0x88]
	mov	byte ptr [rax], 0x30
	jmp	.label_1040
.label_1028:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	add	cl, 1
	mov	byte ptr [rax], cl
	jmp	.label_1029
.label_1024:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], edx
.label_1039:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d790

	.globl check_extension
	.type check_extension, @function
check_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	dword ptr [rbp - 0x18], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	ecx, 0xe
	mov	esi, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0xff
	cmp	rsi, qword ptr [rbp - 0x30]
	jae	.label_1045
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_1047
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_1049
	mov	rax, qword ptr [rbp - 0x28]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x42], cx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	edx, OFFSET FLAT:label_185
	mov	esi, edx
	call	strcpy
	mov	qword ptr [rbp - 0x50], rax
	call	__errno_location
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	call	pathconf
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	setne	r8b
	xor	r8b, 0xff
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	mov	rdi, qword ptr [rbp - 0x40]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x40], rdi
	mov	rax, qword ptr [rbp - 0x28]
	mov	cx, word ptr [rbp - 0x42]
	mov	word ptr [rax], cx
	jmp	.label_1050
.label_1049:
	call	__errno_location
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	edi, dword ptr [rbp - 0x18]
	call	fpathconf
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	setne	cl
	xor	cl, 0xff
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x40], rdx
.label_1050:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jg	.label_1048
	cmp	qword ptr [rbp - 0x40], -1
	ja	.label_1048
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1044
.label_1048:
	mov	rax, -1
	mov	ecx, 0xe
	mov	edx, ecx
	cmp	qword ptr [rbp - 0x40], -1
	cmovl	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
.label_1044:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1047:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_1045:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1051
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_1046
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_1046:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx + 1], 0
.label_1051:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d960

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ecx, 1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	backupfile_internal
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d990
	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	ecx, ecx
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	backupfile_internal
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1052
	call	xalloc_die
.label_1052:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d9e0

	.globl get_version
	.type get_version, @function
get_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1053
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1055
.label_1053:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_1054
.label_1055:
	movabs	rdx, OFFSET FLAT:backup_args
	movabs	rax, OFFSET FLAT:backup_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	mov	dword ptr [rbp - 4], r10d
.label_1054:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da60

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1056
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1056
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	get_version
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1058
.label_1056:
	movabs	rdi, OFFSET FLAT:label_1057
	call	getenv
	movabs	rdi, OFFSET FLAT:label_1059
	mov	rsi, rax
	call	get_version
	mov	dword ptr [rbp - 4], eax
.label_1058:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dad0

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1067
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1063
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1062
.label_1063:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_1062
.label_1062:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1068
.label_1067:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1060
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_1065:
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rdx
	cmp	rdx, 0
	je	.label_1071
	jmp	.label_1069
.label_1069:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1065
.label_1071:
	mov	rax, qword ptr [rbp - 0x10]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	imul	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1066
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1066
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1061
.label_1066:
	jmp	.label_1060
.label_1060:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1068:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1064
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1070
.label_1064:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
.label_1070:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 8], rax
.label_1061:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc00
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
	.align	16
	#Procedure 0x40dc20

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
	jbe	.label_1079
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fseeko
	cmp	eax, 0
	jne	.label_1073
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1073
	mov	byte ptr [rbp - 1], 1
.label_1073:
	jmp	.label_1079
.label_1079:
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	close_stream
	cmp	eax, 0
	je	.label_1072
	mov	byte ptr [rbp - 1], 1
.label_1072:
	test	byte ptr [rbp - 1], 1
	je	.label_1074
	movabs	rdi, OFFSET FLAT:label_1076
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1078
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0x14], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_1075
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1080
.label_1078:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_985
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	error
.label_1080:
	jmp	.label_1074
.label_1074:
	call	close_stdout
	test	byte ptr [rbp - 1], 1
	je	.label_1077
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1077:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd50
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
	.align	16
	#Procedure 0x40dd70
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
	.align	16
	#Procedure 0x40dd90

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1082
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1085
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1082
.label_1085:
	movabs	rdi, OFFSET FLAT:label_1084
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name_0]],  0
	je	.label_1086
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name_0]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_1075
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1081
.label_1086:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_985
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1081:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1082:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1083
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1083:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de80

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1087
	call	xalloc_die
.label_1087:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dec0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1088
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1093
.label_1088:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_1093:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_1091:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1089
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_1090
	jmp	.label_1089
.label_1090:
	jmp	.label_1092
.label_1092:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1091
.label_1089:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df70

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	cl, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1094
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_1094
.label_1094:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edx, al
	mov	esi, edx
	add	rcx, rsi
	add	rcx, 1
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1096
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1095
.label_1096:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_1097
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_1097:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1095:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e040

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_1099:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1105
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1099
.label_1105:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1101:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_1103
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1100
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1102
.label_1100:
	test	byte ptr [rbp - 0x19], 1
	je	.label_1098
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_1098:
	jmp	.label_1102
.label_1102:
	jmp	.label_1104
.label_1104:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1101
.label_1103:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0e0

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
.label_1108:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1106
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1106:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1107
	jmp	.label_1110
.label_1107:
	jmp	.label_1109
.label_1109:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1108
.label_1110:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e170

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_1111
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_1111:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	base_len
	mov	rdi, qword ptr [rbp - 0x28]
	add	rdi, rax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x19], dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	mov	dl, byte ptr [rbp - 0x19]
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e1f0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e230
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1112
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_1112:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e280

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
	je	.label_1113
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
.label_1113:
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
	je	.label_1114
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
	ja	.label_1115
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_1116
.label_1115:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_1116:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1114:
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
	.align	16
	#Procedure 0x40e480

	.globl record_file
	.type record_file, @function
record_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1117
	jmp	.label_1119
.label_1117:
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1118
	call	xalloc_die
.label_1118:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_1119
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	triple_free
.label_1119:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e530

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1120
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1121
.label_1120:
	lea	rax, [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_lookup
	cmp	rax, 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1121:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e5b0

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
	jne	.label_1138
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1128
	movabs	rdi, OFFSET FLAT:label_1133
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1135
.label_1128:
	movabs	rdi, OFFSET FLAT:label_1144
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_1135:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1122
.label_1138:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_1132
	movabs	rdi, OFFSET FLAT:label_1140
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1122
.label_1132:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_1125
	movabs	rdi, OFFSET FLAT:label_1134
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1122
.label_1125:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1146
	movabs	rdi, OFFSET FLAT:label_1141
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1122
.label_1146:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1137
	movabs	rdi, OFFSET FLAT:label_1143
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1122
.label_1137:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1130
	movabs	rdi, OFFSET FLAT:label_1139
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1122
.label_1130:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	jne	.label_1126
	movabs	rdi, OFFSET FLAT:label_1145
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1122
.label_1126:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	jne	.label_1129
	movabs	rdi, OFFSET FLAT:label_1131
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1122
.label_1129:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x1000
	jne	.label_1123
	movabs	rdi, OFFSET FLAT:label_1124
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1122
.label_1123:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xc000
	jne	.label_1136
	movabs	rdi, OFFSET FLAT:label_1142
	call	gettext
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1122
.label_1136:
	movabs	rdi, OFFSET FLAT:label_1127
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_1122:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e7f0

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	mov	edx, 0x72
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi], al
	mov	r8d, dword ptr [rbp - 4]
	and	r8d, 0x100
	cmp	r8d, 0
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 1], al
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x80
	cmp	edx, 0
	cmovne	edi, ecx
	mov	al, dil
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 2], al
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 0x800
	cmp	ecx, 0
	je	.label_1150
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1149
.label_1150:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_1149:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 3], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x20
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x10
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_1152
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_1151
.label_1152:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_1151:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 6], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 4
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 7], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_1148
	mov	eax, 0x54
	mov	ecx, 0x74
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1147
.label_1148:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_1147:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xb], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e9f0

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	cmp	edi, 0x8000
	jne	.label_1158
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_1153
.label_1158:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_1160
	mov	byte ptr [rbp - 1], 0x64
	jmp	.label_1153
.label_1160:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_1159
	mov	byte ptr [rbp - 1], 0x62
	jmp	.label_1153
.label_1159:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1157
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_1153
.label_1157:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_1156
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_1153
.label_1156:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_1154
	mov	byte ptr [rbp - 1], 0x70
	jmp	.label_1153
.label_1154:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_1155
	mov	byte ptr [rbp - 1], 0x73
	jmp	.label_1153
.label_1155:
	mov	byte ptr [rbp - 1], 0x3f
.label_1153:
	movsx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ead0
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strmode
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	sub	edi, dword ptr [rsi + 0x18]
	cmp	edi, 0
	je	.label_1161
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_1164
.label_1161:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1162
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x51
	jmp	.label_1166
.label_1162:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1163
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x53
	jmp	.label_1165
.label_1163:
	jmp	.label_1165
.label_1165:
	jmp	.label_1166
.label_1166:
	jmp	.label_1164
.label_1164:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eb70

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
	jne	.label_1167
	call	xalloc_die
.label_1167:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ebc0

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
	je	.label_1170
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_1171
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_1171
	mov	byte ptr [rbp - 0x41], 0x2f
.label_1171:
	jmp	.label_1169
.label_1170:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1174
	mov	byte ptr [rbp - 0x41], 0x2e
.label_1174:
	jmp	.label_1169
.label_1169:
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
	jne	.label_1172
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1168
.label_1172:
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
	je	.label_1173
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1173:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_1168:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ed40

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_1175:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_1177
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1178
	jmp	.label_1177
.label_1178:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1176
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_1177
.label_1176:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1175
.label_1177:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40edf0

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
	.align	16
	#Procedure 0x40ee10

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
	.align	16
	#Procedure 0x40ee30

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
	.align	16
	#Procedure 0x40ee50

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
.label_1181:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1183
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1182
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_1180:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1184
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1180
.label_1184:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1179
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1179:
	jmp	.label_1182
.label_1182:
	jmp	.label_1185
.label_1185:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1181
.label_1183:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ef00
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
.label_1193:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1186
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1189
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1192:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1191
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1192
.label_1191:
	jmp	.label_1189
.label_1189:
	jmp	.label_1190
.label_1190:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1193
.label_1186:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_1187
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1187
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1188
.label_1187:
	mov	byte ptr [rbp - 1], 0
.label_1188:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eff0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1194
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
	mov	ecx, OFFSET FLAT:label_1200
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:label_1195
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1197]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1198]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1199]]
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
	movabs	rsi, OFFSET FLAT:label_1196
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
	.align	16
	#Procedure 0x40f110

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
	jne	.label_1204
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1206
.label_1204:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1203:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1207
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1202
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1202
	jmp	.label_1205
.label_1202:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1206
.label_1205:
	jmp	.label_1201
.label_1201:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1203
.label_1207:
	mov	qword ptr [rbp - 8], 0
.label_1206:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f1d0

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
	jb	.label_1208
	call	abort
.label_1208:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f240
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1209
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1210
.label_1209:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1211:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_1212
	call	abort
.label_1212:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1214
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1210
.label_1214:
	jmp	.label_1213
.label_1213:
	jmp	.label_1215
.label_1215:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1211
.label_1210:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f2d0
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
.label_1220:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1219
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1219
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1221
.label_1219:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1220
	jmp	.label_1216
.label_1216:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1218
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1217
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1221
.label_1217:
	jmp	.label_1216
.label_1218:
	mov	qword ptr [rbp - 8], 0
.label_1221:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f3a0
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
.label_1226:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1223
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1222
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1228:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1227
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1229
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1224
.label_1229:
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
	jmp	.label_1228
.label_1227:
	jmp	.label_1222
.label_1222:
	jmp	.label_1225
.label_1225:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1226
.label_1223:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1224:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f470
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
.label_1230:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1233
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1232
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1236:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1237
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_1235
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1231
.label_1235:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1236
.label_1237:
	jmp	.label_1232
.label_1232:
	jmp	.label_1234
.label_1234:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1230
.label_1233:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1231:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f540
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1239:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_1238
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
	jmp	.label_1239
.label_1238:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f5a0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_1240]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_1241]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f5d0

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
	jne	.label_1247
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1247:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1242
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_1242:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1248
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1246
.label_1248:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1243
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1243:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_1249
	jmp	.label_1245
.label_1249:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1244
	jmp	.label_1245
.label_1244:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_1250
	jmp	.label_1245
.label_1250:
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
	jmp	.label_1246
.label_1245:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1246:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f770

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
	.align	16
	#Procedure 0x40f7b0

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
	.align	16
	#Procedure 0x40f7d0

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
	jne	.label_1255
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1254
.label_1255:
	movss	xmm0,  dword ptr [dword ptr [rip + label_1251]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1252
	movss	xmm0,  dword ptr [dword ptr [rip + label_1253]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1252
	movss	xmm0,  dword ptr [dword ptr [rip + label_1253]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_1252
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_1252
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1252
	movss	xmm0,  dword ptr [dword ptr [rip + label_1253]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1252
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1252
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1254
.label_1252:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1254:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f900

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
	jne	.label_1256
	movss	xmm0,  dword ptr [dword ptr [rip + label_1261]]
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
	js	.label_1262
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1262:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_1258
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1257
.label_1258:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1260]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_1256:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_1259
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1257
.label_1259:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1257:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fa20
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
.label_1266:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1267
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1265
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1269:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1263
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1268
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1268:
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
	jmp	.label_1269
.label_1263:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1270
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1270:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1265:
	jmp	.label_1264
.label_1264:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1266
.label_1267:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fb40

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_1271
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_1271
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1277:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1278
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1273
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1284:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1279
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1284
.label_1279:
	jmp	.label_1273
.label_1273:
	jmp	.label_1275
.label_1275:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1277
.label_1278:
	jmp	.label_1271
.label_1271:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1274:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1282
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1283:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1276
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1283
.label_1276:
	jmp	.label_1272
.label_1272:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1274
.label_1282:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_1281:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1280
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1281
.label_1280:
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
	.align	16
	#Procedure 0x40fcc0

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
	jne	.label_1288
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1285
.label_1288:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1292
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1285
.label_1292:
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
	jne	.label_1290
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1285
.label_1290:
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
	jne	.label_1289
	jmp	.label_1291
.label_1289:
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
	jmp	.label_1285
.label_1291:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1293
	jmp	.label_1286
.label_1293:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1287
.label_1286:
	call	abort
.label_1287:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_1285:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fed0

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
.label_1297:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1306
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1296
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1299:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1301
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
	je	.label_1294
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1302
.label_1294:
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
.label_1302:
	jmp	.label_1304
.label_1304:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1299
.label_1301:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_1307
	jmp	.label_1295
.label_1307:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1305
	mov	rdi, qword ptr [rbp - 0x10]
.label_2713:
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1298
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1300
.label_1298:
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
	jmp	.label_1303
.label_1305:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1303:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_1296:
	jmp	.label_1295
.label_1295:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1297
.label_1306:
	mov	byte ptr [rbp - 1], 1
.label_1300:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4100b0

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
	jne	.label_1323
	call	abort
.label_1323:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_1326
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1325
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1325:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1308
.label_1326:
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
	js	.label_1314
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1314:
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
	js	.label_1321
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1321:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1310
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
	js	.label_1322
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1322:
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
	js	.label_1311
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1311:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_1319
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_1309
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
	js	.label_1316
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1316:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1313
.label_1309:
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
	js	.label_1324
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1324:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1313:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1261]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_1318
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1308
.label_1318:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1260]]
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
	jne	.label_1317
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1308
.label_1317:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_1315
	call	abort
.label_1315:
	jmp	.label_1319
.label_1319:
	jmp	.label_1310
.label_1310:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1312
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1320
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1308
.label_1320:
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
	jmp	.label_1308
.label_1312:
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
.label_1308:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410550

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
	jne	.label_1330
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1332
.label_1330:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1328
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1328
	jmp	.label_1329
.label_1328:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1339
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1336
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
	jmp	.label_1335
.label_1336:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1335:
	jmp	.label_1339
.label_1339:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1332
.label_1329:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1338:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_1331
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_1327
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1327
	jmp	.label_1333
.label_1327:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1334
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
.label_1334:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1332
.label_1333:
	jmp	.label_1337
.label_1337:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1338
.label_1331:
	mov	qword ptr [rbp - 8], 0
.label_1332:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410720

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1340
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1341
.label_1340:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_1341:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410780

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
	jne	.label_1342
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1345
.label_1342:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_1344
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1343
.label_1344:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1343:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1345:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4107f0

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
	jne	.label_1352
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1360
.label_1352:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1347
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
	js	.label_1350
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1350:
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
	js	.label_1355
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1355:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1346
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
	js	.label_1359
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1359:
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
	js	.label_1351
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1351:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_1349
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1358
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
	js	.label_1348
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1348:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1353
.label_1358:
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
	js	.label_1361
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1361:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1353:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1260]]
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
	jne	.label_1357
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1354:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1356
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1354
.label_1356:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1357:
	jmp	.label_1349
.label_1349:
	jmp	.label_1346
.label_1346:
	jmp	.label_1347
.label_1347:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1360:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410bf0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1362
	mov	qword ptr [rbp - 8], 0xa
.label_1362:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1364:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_1366
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_1366:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_1363
	jmp	.label_1365
.label_1363:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1364
.label_1365:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c70

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
.label_1368:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1370
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1370:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1369
	jmp	.label_1367
.label_1369:
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
	jmp	.label_1368
.label_1367:
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
	.align	16
	#Procedure 0x410d30

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
	.align	16
	#Procedure 0x410d70

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410dc0

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
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
	.align	16
	#Procedure 0x410df0

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
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
	jne	.label_1371
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1371
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	byte ptr [rbp - 0x21], al
.label_1371:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410e80
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
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
	jne	.label_1372
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1372
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x21], cl
.label_1372:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f20

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410f50

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
	jge	.label_1374
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1373
.label_1374:
	mov	edi, dword ptr [rbp - 0x30]
	call	fdopendir
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1375
	mov	eax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1376
.label_1375:
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
.label_1376:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1373:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411000

	.globl priv_set_remove_linkdir
	.type priv_set_remove_linkdir, @function
priv_set_remove_linkdir:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffffff
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411010
	.globl priv_set_restore_linkdir
	.type priv_set_restore_linkdir, @function
priv_set_restore_linkdir:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffffff
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411020

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1377
	movabs	rdi, OFFSET FLAT:label_1384
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1377:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1378
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1382
.label_1378:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1382:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1379
	movabs	rsi, OFFSET FLAT:label_1381
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1379
	movabs	rsi, OFFSET FLAT:label_1380
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1383
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_1383:
	jmp	.label_1379
.label_1379:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411140

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	dword ptr [rbp - 0x28], r8d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	edx, dword ptr [rbp - 0x28]
	mov	rcx, rax
	call	get_permissions
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_1385
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1386
.label_1385:
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	call	set_permissions
	lea	rdi, [rbp - 0x30]
	mov	dword ptr [rbp - 0x34], eax
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
.label_1386:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4111c0

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x18]
	xor	ecx, ecx
	mov	r8d, 4
	mov	r9d, r8d
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	rdi, rax
	mov	esi, ecx
	mov	rdx, r9
	mov	qword ptr [rbp - 0x28], rax
	call	memset
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_permissions
	lea	rdi, [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], eax
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411220
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
	je	.label_1387
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1388
.label_1387:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1388
.label_1388:
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
	.align	16
	#Procedure 0x4112a0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1389
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1390
.label_1389:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1390
.label_1390:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4112e0
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
	je	.label_1391
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1392
.label_1391:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1392
.label_1392:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411330

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
	je	.label_1393
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1394
.label_1393:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1394
.label_1394:
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
	.align	16
	#Procedure 0x4113e0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1395
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1395:
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
	.align	16
	#Procedure 0x411420

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
	jne	.label_1396
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1396:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1398
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1397
.label_1398:
	call	abort
.label_1397:
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
	.align	16
	#Procedure 0x411490
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
	je	.label_1399
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1400
.label_1399:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1400
.label_1400:
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
	.align	16
	#Procedure 0x411560

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
.label_1597:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1505
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1510]]
	jmp	rcx
.label_2560:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2559:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1518
	jmp	.label_1520
.label_1520:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1521
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1521:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1518
.label_1518:
	movabs	rax, OFFSET FLAT:label_1529
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1530
.label_2561:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1530
.label_2562:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1541
	movabs	rdi, OFFSET FLAT:label_1595
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_1548
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1541:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1554
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1573:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1558
	jmp	.label_1561
.label_1561:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1563
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1563:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1568
.label_1568:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1573
.label_1558:
	jmp	.label_1554
.label_1554:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1530
.label_2557:
	mov	byte ptr [rbp - 0x79], 1
.label_2556:
	mov	byte ptr [rbp - 0x7b], 1
.label_2558:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1583
	mov	byte ptr [rbp - 0x79], 1
.label_1583:
	jmp	.label_1433
.label_1433:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1585
	jmp	.label_1458
.label_1458:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1590
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1590:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1585
.label_1585:
	movabs	rax, OFFSET FLAT:label_1548
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1530
.label_2555:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1530
.label_1505:
	call	abort
.label_1530:
	mov	qword ptr [rbp - 0x58], 0
.label_1570:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1601
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1603
.label_1601:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_1603:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1410
	jmp	.label_1420
.label_1410:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_1421
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1421
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1421
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_1434
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1434
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1464
.label_1434:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1464:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_1421
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1421
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1460
	jmp	.label_1416
.label_1460:
	mov	byte ptr [rbp - 0x81], 1
.label_1421:
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
	ja	.label_1537
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1473]]
	jmp	rcx
.label_2669:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1474
	jmp	.label_1478
.label_1478:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1479
	jmp	.label_1416
.label_1479:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1450
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1450
	jmp	.label_1486
.label_1486:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1487
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1487:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1490
.label_1490:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1495
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1495:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1571
.label_1571:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1502
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1502:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1450:
	jmp	.label_1511
.label_1511:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1513
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1513:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1470
.label_1470:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1523
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1523
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1523
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_1523
	jmp	.label_1539
.label_1539:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1588
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1588:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1547
.label_1547:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1551
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1551:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1523
.label_1523:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1562
.label_1474:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1565
	jmp	.label_1567
.label_1565:
	jmp	.label_1562
.label_1562:
	jmp	.label_1459
.label_2680:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1569
	jmp	.label_1575
.label_1575:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1577
	jmp	.label_1580
.label_1569:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1596
	jmp	.label_1416
.label_1596:
	jmp	.label_1463
.label_1577:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1440
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1440
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1440
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1455
	jmp	.label_1594
.label_1594:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1455
	jmp	.label_1599
.label_1599:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1455
	jmp	.label_1604
.label_1604:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1455
	jmp	.label_1404
.label_1404:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1406
	jmp	.label_1455
.label_1455:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1412
	jmp	.label_1416
.label_1412:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1419
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1419:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1431
.label_1431:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1436
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1436:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1443
.label_1443:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1448
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1448:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1452
.label_1452:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1586
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1586:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1456
.label_1406:
	jmp	.label_1456
.label_1456:
	jmp	.label_1440
.label_1440:
	jmp	.label_1463
.label_1580:
	jmp	.label_1463
.label_1463:
	jmp	.label_1459
.label_2670:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1467
.label_2671:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1467
.label_2675:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1467
.label_2673:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_1471
.label_2676:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_1471
.label_2672:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1471
.label_2674:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1467
.label_2681:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1476
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1481
	jmp	.label_1416
.label_1481:
	jmp	.label_1428
.label_1476:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1483
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1483
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1483
	jmp	.label_1428
.label_1483:
	jmp	.label_1471
.label_1471:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1489
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1489
	jmp	.label_1416
.label_1489:
	jmp	.label_1467
.label_1467:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1496
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1480
.label_1496:
	jmp	.label_1459
.label_2682:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1500
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1503
	jmp	.label_1507
.label_1500:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1503
.label_1507:
	jmp	.label_1459
.label_1503:
	jmp	.label_1509
.label_1509:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1512
	jmp	.label_1459
.label_1512:
	jmp	.label_1515
.label_1515:
	mov	byte ptr [rbp - 0x83], 1
.label_2677:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1519
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1519
	jmp	.label_1416
.label_1519:
	jmp	.label_1459
.label_2679:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1525
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1528
	jmp	.label_1416
.label_1528:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1532
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1532
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1532:
	jmp	.label_1543
.label_1543:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1545
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1545:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1550
.label_1550:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1553
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1553:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1560
.label_1560:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1566
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1566:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1525:
	jmp	.label_1459
.label_2678:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1459
.label_1537:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1576
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
	jmp	.label_1403
.label_1576:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1592
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1592:
	jmp	.label_1504
.label_1504:
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
	jne	.label_1401
	jmp	.label_1408
.label_1401:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1409
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1408
.label_1409:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1414
	mov	byte ptr [rbp - 0x91], 0
.label_1444:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1423
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1423:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1439
	jmp	.label_1441
.label_1439:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1444
.label_1441:
	jmp	.label_1408
.label_1414:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1451
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1451
	mov	qword ptr [rbp - 0xb8], 1
.label_1485:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1454
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
	jb	.label_1446
	jmp	.label_1468
.label_1468:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1446
	jmp	.label_1589
.label_1589:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1446
	jmp	.label_1475
.label_1475:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1477
	jmp	.label_1446
.label_1446:
	jmp	.label_1416
.label_1477:
	jmp	.label_1457
.label_1457:
	jmp	.label_1465
.label_1465:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1485
.label_1454:
	jmp	.label_1451
.label_1451:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1491
	mov	byte ptr [rbp - 0x91], 0
.label_1491:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1535
.label_1535:
	jmp	.label_1498
.label_1498:
	jmp	.label_1499
.label_1499:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1504
.label_1408:
	jmp	.label_1403
.label_1403:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_1508
	test	byte ptr [rbp - 0x79], 1
	je	.label_1517
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1517
.label_1508:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1453:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1526
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1526
	jmp	.label_1533
.label_1533:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1531
	jmp	.label_1416
.label_1531:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1536
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1536
	jmp	.label_1542
.label_1542:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1544
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1544:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1549
.label_1549:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1552
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1552:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1559
.label_1559:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1564
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1564:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1536:
	jmp	.label_1572
.label_1572:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1574
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1574:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1578
.label_1578:
	jmp	.label_1581
.label_1581:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1582
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1582:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1587
.label_1587:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1469
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1469:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1405
.label_1526:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1598
	jmp	.label_1600
.label_1600:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1602
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1602:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_1598:
	jmp	.label_1405
.label_1405:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1407
	jmp	.label_1411
.label_1407:
	jmp	.label_1413
.label_1413:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1415
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1415
	jmp	.label_1424
.label_1424:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1425
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1425:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1430
.label_1430:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1435
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1435:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1415:
	jmp	.label_1445
.label_1445:
	jmp	.label_1447
.label_1447:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1449
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1449:
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
	jmp	.label_1453
.label_1411:
	jmp	.label_1428
.label_1517:
	jmp	.label_1459
.label_1459:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1461
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1462
.label_1461:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1466
.label_1462:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1466
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
	jne	.label_1417
.label_1466:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1417
	jmp	.label_1428
.label_1417:
	jmp	.label_1480
.label_1480:
	jmp	.label_1442
.label_1442:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1482
	jmp	.label_1416
.label_1482:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1484
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1484
	jmp	.label_1492
.label_1492:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1488
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1488:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1494
.label_1494:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1497
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1497:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1501
.label_1501:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1506
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1506:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1484:
	jmp	.label_1514
.label_1514:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1516
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1516:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1522
.label_1522:
	jmp	.label_1428
.label_1428:
	jmp	.label_1591
.label_1591:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1527
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1527
	jmp	.label_1556
.label_1556:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1534
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1534:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1540
.label_1540:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1546
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1546:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1527:
	jmp	.label_1555
.label_1555:
	jmp	.label_1557
.label_1557:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1538
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1538:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1493
	mov	byte ptr [rbp - 0x7e], 0
.label_1493:
	jmp	.label_1567
.label_1567:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1570
.label_1420:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1524
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1524
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1524
	jmp	.label_1416
.label_1524:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1418
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1418
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1418
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1584
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
	jmp	.label_1432
.label_1584:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1593
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1593
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1597
.label_1593:
	jmp	.label_1579
.label_1579:
	jmp	.label_1418
.label_1418:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1426
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1426
	jmp	.label_1422
.label_1422:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1402
	jmp	.label_1429
.label_1429:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1438
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1438:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1472
.label_1472:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1422
.label_1402:
	jmp	.label_1426
.label_1426:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1427
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1427:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1432
.label_1416:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1437
	test	byte ptr [rbp - 0x79], 1
	je	.label_1437
	mov	dword ptr [rbp - 0x34], 4
.label_1437:
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
.label_1432:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412900
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
	.align	16
	#Procedure 0x412940

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
	je	.label_1605
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1606
.label_1605:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1606
.label_1606:
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
	je	.label_1607
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1607:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412aa0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1611:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1609
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1611
.label_1609:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1612
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_1610]],  rax
.label_1612:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1608
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1608:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412b80

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
	.align	16
	#Procedure 0x412bc0

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
	jge	.label_1615
	call	abort
.label_1615:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1620
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_1614
	call	xalloc_die
.label_1614:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1619
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1613
.label_1619:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1613:
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
	je	.label_1618
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1610]]
	mov	qword ptr [rax + 8], rcx
.label_1618:
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
.label_1620:
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
	ja	.label_1616
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_1617
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1617:
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
.label_1616:
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
	.align	16
	#Procedure 0x412e40

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
	.align	16
	#Procedure 0x412e80
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
	.align	16
	#Procedure 0x412ea0
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
	.align	16
	#Procedure 0x412ed0

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
	.align	16
	#Procedure 0x412f10

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
	jne	.label_1621
	call	abort
.label_1621:
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
	.align	16
	#Procedure 0x412f80

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
	.align	16
	#Procedure 0x412fc0

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
	.align	16
	#Procedure 0x412ff0
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
	.align	16
	#Procedure 0x413020

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
	.align	16
	#Procedure 0x4130a0

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
	.align	16
	#Procedure 0x4130d0

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
	.align	16
	#Procedure 0x4130f0
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
	.align	16
	#Procedure 0x413120

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
	.align	16
	#Procedure 0x4131d0

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
	.align	16
	#Procedure 0x413210

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
	.align	16
	#Procedure 0x413290
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
	.align	16
	#Procedure 0x4132c0
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
	.align	16
	#Procedure 0x413300

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
	.align	16
	#Procedure 0x413340
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
	.align	16
	#Procedure 0x413370

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
	.align	16
	#Procedure 0x4133a0

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
	.align	16
	#Procedure 0x4133c0

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
	je	.label_1628
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1624
.label_1628:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_1626
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1627
	movabs	rax, OFFSET FLAT:label_1630
	movabs	rcx, OFFSET FLAT:label_1631
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1624
.label_1627:
	movabs	rsi, OFFSET FLAT:label_1625
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1629
	movabs	rax, OFFSET FLAT:label_1622
	movabs	rcx, OFFSET FLAT:label_1623
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1624
.label_1629:
	movabs	rax, OFFSET FLAT:label_1548
	movabs	rcx, OFFSET FLAT:label_1529
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1624:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4134c0

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	mov	eax, 0x13c
	mov	r9d, eax
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], 0xffffffff
	mov	dword ptr [rbp - 0x2c], 0x16
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rdi, r9
	mov	r9d, eax
	mov	al, 0
	call	syscall
	mov	ecx, eax
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_1635
	cmp	dword ptr [rbp - 0x2c], 0x16
	je	.label_1637
	cmp	dword ptr [rbp - 0x2c], 0x26
	je	.label_1637
	cmp	dword ptr [rbp - 0x2c], 0x5f
	je	.label_1637
.label_1635:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1632
.label_1637:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x58], 0x14
	mov	byte ptr [rbp - 0x179], 0
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_1644
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0xfffffffe
	cmp	eax, 0
	je	.label_1655
	mov	edi, 0x5f
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1632
.label_1655:
	lea	rdx, [rbp - 0x178]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	cmp	eax, 0
	je	.label_1639
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1641
.label_1639:
	mov	edi, 0x11
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1632
.label_1641:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_1647
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1632
.label_1647:
	mov	byte ptr [rbp - 0x179], 1
	jmp	.label_1644
.label_1644:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1654
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1636
.label_1654:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1632
.label_1636:
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x51], sil
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x52], sil
	test	byte ptr [rbp - 0x51], 1
	jne	.label_1643
	test	byte ptr [rbp - 0x52], 1
	jne	.label_1643
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1632
.label_1643:
	lea	rdx, [rbp - 0xe8]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	lstatat
	cmp	eax, 0
	je	.label_1640
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1632
.label_1640:
	test	byte ptr [rbp - 0x179], 1
	je	.label_1648
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1652
	mov	edi, 2
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1632
.label_1652:
	jmp	.label_1634
.label_1648:
	lea	rdx, [rbp - 0x178]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	cmp	eax, 0
	je	.label_1638
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_1645
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1642
.label_1645:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1632
.label_1642:
	jmp	.label_1646
.label_1638:
	mov	eax, dword ptr [rbp - 0x160]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1651
	mov	edi, 0x14
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1632
.label_1651:
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1633
	mov	edi, 0x15
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1632
.label_1633:
	jmp	.label_1653
.label_1653:
	jmp	.label_1646
.label_1646:
	jmp	.label_1634
.label_1634:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x50]
	call	renameat
	mov	dword ptr [rbp - 0x28], eax
	call	__errno_location
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], edx
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1649
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1649:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_1650
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
.label_1650:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x180], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x180]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
.label_1632:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413840

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], edi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rax], ecx
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413870

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	movabs	rax, OFFSET FLAT:label_138
	lea	rsi, [rbp - 0xa0]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	lstat
	cmp	eax, 0
	je	.label_1656
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1657
.label_1656:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1657:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4138e0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1664:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	write
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_1659
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1658
.label_1659:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_1660
	jmp	.label_1664
.label_1660:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1661
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_1661
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_1665
.label_1661:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1658
.label_1665:
	jmp	.label_1663
.label_1663:
	jmp	.label_1662
.label_1662:
	jmp	.label_1664
.label_1658:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413990

	.globl same_name
	.type same_name, @function
same_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffff9c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	edx, eax
	call	same_nameat
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4139d0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x181], r8b
	jne	.label_1668
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x181], cl
.label_1668:
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0x42], al
	mov	byte ptr [rbp - 0x43], 0
	test	byte ptr [rbp - 0x42], 1
	je	.label_1667
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_name
	lea	rdx, [rbp - 0xd8]
	mov	qword ptr [rbp - 0x170], rax
	mov	dword ptr [rbp - 0x174], 0x100
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	je	.label_1669
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_985
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	al, 0
	call	error
.label_1669:
	mov	rdi, qword ptr [rbp - 0x170]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_name
	lea	rdx, [rbp - 0x168]
	mov	qword ptr [rbp - 0x180], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	je	.label_1666
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_985
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	al, 0
	call	error
.label_1666:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rbp - 0x160]
	mov	byte ptr [rbp - 0x182], cl
	jne	.label_1670
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x168]
	sete	cl
	mov	byte ptr [rbp - 0x182], cl
.label_1670:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [rbp - 0x43], al
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
.label_1667:
	mov	al, byte ptr [rbp - 0x43]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413ba0

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	esi, dword ptr [rbp - 0x14]
	mov	edi, esi
	mov	rdi,  qword ptr [word ptr [+ (rdi * 8) + comparison_function_table]]
	mov	qword ptr [rbp - 0x58], rdi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1675
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1674
.label_1675:
	jmp	.label_1672
.label_1672:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	readdir
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1676
	jmp	.label_1680
.label_1676:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x13
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1681
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1685
.label_1681:
	mov	eax, 2
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x68]
	movsx	esi, byte ptr [rdx + 1]
	cmp	esi, 0x2e
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x94], eax
.label_1685:
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x68]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0
	je	.label_1690
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1677
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_1682
	lea	rsi, [rbp - 0x78]
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x38], rax
.label_1682:
	mov	rdi, qword ptr [rbp - 0x68]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x40]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x40]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1689
.label_1677:
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x70]
	ja	.label_1683
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1678
	call	xalloc_die
.label_1678:
	lea	rsi, [rbp - 0x80]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x28], rax
.label_1683:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	memcpy
.label_1689:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
.label_1690:
	jmp	.label_1672
.label_1680:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], ecx
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1679
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x98], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1674
.label_1679:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1688
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1671
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0xa0]
	call	qsort
.label_1671:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x88], 0
.label_1684:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1686
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax]
	call	stpcpy
	mov	rsi, qword ptr [rbp - 0x90]
	sub	rax, rsi
	add	rax, 1
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	call	free
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1684
.label_1686:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	jmp	.label_1673
.label_1688:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1687
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
.label_1687:
	jmp	.label_1673
.label_1673:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1674:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413f40

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	opendir_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1693
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1691
.label_1693:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	call	streamsavedir
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	cmp	eax, 0
	je	.label_1692
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x30], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1691
.label_1692:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1691:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413fe0

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414020

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	push	rbp
	mov	rbp, rsp
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
	jae	.label_1694
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1695
.label_1694:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x24], esi
.label_1695:
	mov	eax, dword ptr [rbp - 0x24]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414080
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4140b0

	.globl freecon
	.type freecon, @function
freecon:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4140c0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4140f0

	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414120
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414150
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414180

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4141b0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4141e0
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414210
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414240
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414270
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4142a0
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4142d0
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414300
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ax, dx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414340
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dx, cx
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414370
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4143a0

	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4143c0

	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4143e0

	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x60]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414400
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414410

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414430
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414450

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x58]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414470
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4144a0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4144b0
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
	.align	16
	#Procedure 0x4144e0

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
	.align	16
	#Procedure 0x414510

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x48], 0xffffffff
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], esi
	mov	dword ptr [rbp - 0x5c], 0x3a2f8
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	movsxd	rdx, dword ptr [rbp - 0x14]
	add	rcx, rdx
	cmp	rax, rcx
	jb	.label_1701
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x14]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	check_x_suffix
	test	al, 1
	jne	.label_1698
.label_1701:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1703
.label_1698:
	xor	eax, eax
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, qword ptr [rbp - 0x30]
	movsxd	rdx, dword ptr [rbp - 0x14]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsi, qword ptr [rbp - 0x30]
	call	randint_all_new
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_1699
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1703
.label_1699:
	mov	dword ptr [rbp - 0x44], 0
.label_1704:
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x5c]
	jae	.label_1707
	mov	qword ptr [rbp - 0x68], 0
.label_1705:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1697
	mov	eax, 0x3d
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_genmax
	mov	cl,  byte ptr [byte ptr [+ (rax * 1) + letters]]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	byte ptr [rsi + rax], cl
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1705
.label_1697:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], 0
	jl	.label_1706
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x70], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x70]
	mov	dword ptr [rax], ecx
	jmp	.label_1696
.label_1706:
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	je	.label_1708
	mov	dword ptr [rbp - 0x48], 0xffffffff
	jmp	.label_1696
.label_1708:
	jmp	.label_1700
.label_1700:
	jmp	.label_1702
.label_1702:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1704
.label_1707:
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_free
	mov	dword ptr [rbp - 0x74], eax
	call	__errno_location
	mov	dword ptr [rax], 0x11
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1703
.label_1696:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_free
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 0x78], eax
	mov	dword ptr [rbp - 0x7c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 4], ecx
.label_1703:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414710

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:label_1709
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rax
	call	strspn
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, rax
	setbe	cl
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414760

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	ecx, dword ptr [rbp - 0x14]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x2c], ecx
	je	.label_1710
	jmp	.label_1712
.label_1712:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x30], eax
	je	.label_1714
	jmp	.label_1719
.label_1719:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x34], eax
	je	.label_1711
	jmp	.label_1718
.label_1710:
	movabs	rax, OFFSET FLAT:try_file
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1713
.label_1714:
	movabs	rax, OFFSET FLAT:try_dir
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1713
.label_1711:
	movabs	rax, OFFSET FLAT:try_nocreate
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1713
.label_1718:
	movabs	rdi, OFFSET FLAT:label_1715
	movabs	rsi, OFFSET FLAT:label_1716
	mov	edx, 0x147
	movabs	rcx, OFFSET FLAT:label_1717
	call	__assert_fail
.label_1713:
	lea	rax, [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rdx, rax
	call	try_tempname_len
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414840

	.globl try_file
	.type try_file, @function
try_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	edx, 0x180
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi]
	and	eax, 0xfffffffc
	or	eax, 2
	or	eax, 0x40
	or	eax, 0x80
	mov	esi, eax
	mov	al, 0
	call	open
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414890

	.globl try_dir
	.type try_dir, @function
try_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x1c0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	mkdir
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4148c0

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	call	lstat
	cmp	eax, 0
	je	.label_1721
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1720
.label_1721:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_1720:
	call	__errno_location
	mov	ecx, 0xffffffff
	xor	edx, edx
	cmp	dword ptr [rax], 2
	cmove	ecx, edx
	mov	eax, ecx
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414930
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 6
	mov	r8d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	call	gen_tempname_len
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414970
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 6
	mov	r8d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	try_tempname_len
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4149b0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1722
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1722
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
.label_1722:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414a10

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0xffffff9c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	utimecmpat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414a50

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1d0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	get_stat_mtime_ns
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rdi, qword ptr [rbp - 0x20]
	call	get_stat_mtime_ns
	mov	r8d, eax
	mov	dword ptr [rbp - 0x40], r8d
	mov	r8d, dword ptr [rbp - 0x24]
	and	r8d, 1
	cmp	r8d, 0
	je	.label_1753
	mov	qword ptr [rbp - 0x48], 0
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1759
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	jne	.label_1759
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1730
.label_1759:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 2
	cmp	rax, rcx
	jg	.label_1763
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1730
.label_1763:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 2
	cmp	rax, rcx
	jg	.label_1726
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1730
.label_1726:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	jne	.label_1732
	mov	eax, 0x10
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_info_hash
	movabs	rcx, OFFSET FLAT:dev_info_compare
	movabs	r8, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [word ptr [utimecmpat.ht]],  rax
.label_1732:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1741
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1764
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  rax
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1751
	jmp	.label_1734
.label_1751:
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1764:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	qword ptr [rcx], rax
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1765
	jmp	.label_1734
.label_1765:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	jne	.label_1727
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
.label_1727:
	jmp	.label_1733
.label_1741:
	jmp	.label_1734
.label_1734:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1735
	lea	rax, [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x48], rax
.label_1735:
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1739
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax, qword ptr [rbp - 0x48]
	mov	byte ptr [rax + 0xc], 0
.label_1739:
	jmp	.label_1733
.label_1733:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x5c], ecx
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0xc], 1
	jne	.label_1750
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x68]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	get_stat_atime_ns
	mov	ecx, eax
	mov	dword ptr [rbp - 0x7c], ecx
	mov	rdi, qword ptr [rbp - 0x18]
	call	get_stat_ctime_ns
	mov	ecx, eax
	mov	dword ptr [rbp - 0x80], ecx
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x84], ecx
	mov	rax, qword ptr [rbp - 0x68]
	or	rax, qword ptr [rbp - 0x70]
	or	rax, qword ptr [rbp - 0x78]
	and	rax, 1
	cmp	rax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x85], dl
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x8c], ecx
	mov	ecx, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x90], ecx
	mov	ecx, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x94], ecx
	mov	dword ptr [rbp - 0x98], 1
	imul	ecx, dword ptr [rbp - 0x98], 0xa
	mov	dword ptr [rbp - 0x98], ecx
	mov	eax, dword ptr [rbp - 0x8c]
	cdq	
	idiv	dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x90]
	mov	eax, ecx
	mov	dword ptr [rbp - 0x168], edx
	cdq	
	idiv	dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x168]
	or	ecx, edx
	mov	edx, dword ptr [rbp - 0x94]
	mov	eax, edx
	cdq	
	idiv	dword ptr [rbp - 0x98]
	or	ecx, edx
	cmp	ecx, 0
	je	.label_1737
	mov	dword ptr [rbp - 0x5c], 1
	jmp	.label_1747
.label_1737:
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x16c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x16c]
	idiv	ecx
	mov	dword ptr [rbp - 0x8c], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x90]
	mov	dword ptr [rbp - 0x170], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x170]
	idiv	esi
	mov	dword ptr [rbp - 0x90], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	edi, dword ptr [rbp - 0x94]
	mov	dword ptr [rbp - 0x174], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x174]
	idiv	edi
	mov	dword ptr [rbp - 0x94], eax
.label_1757:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rdx + 8]
	mov	byte ptr [rbp - 0x175], cl
	jge	.label_1725
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x17c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x17c]
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x90]
	mov	eax, esi
	mov	dword ptr [rbp - 0x180], edx
	cdq	
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x180]
	or	esi, edx
	mov	edx, dword ptr [rbp - 0x94]
	mov	eax, edx
	cdq	
	idiv	ecx
	or	esi, edx
	cmp	esi, 0
	sete	dil
	mov	byte ptr [rbp - 0x175], dil
.label_1725:
	mov	al, byte ptr [rbp - 0x175]
	test	al, 1
	jne	.label_1743
	jmp	.label_1755
.label_1743:
	cmp	dword ptr [rbp - 0x5c], 0x3b9aca00
	jne	.label_1746
	test	byte ptr [rbp - 0x85], 1
	jne	.label_1738
	mov	eax, dword ptr [rbp - 0x5c]
	shl	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
.label_1738:
	jmp	.label_1755
.label_1746:
	jmp	.label_1766
.label_1766:
	mov	eax, 0xa
	imul	ecx, dword ptr [rbp - 0x5c], 0xa
	mov	dword ptr [rbp - 0x5c], ecx
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x184], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x184]
	idiv	ecx
	mov	dword ptr [rbp - 0x8c], eax
	mov	eax, dword ptr [rbp - 0x90]
	cdq	
	idiv	ecx
	mov	dword ptr [rbp - 0x90], eax
	mov	eax, dword ptr [rbp - 0x94]
	cdq	
	idiv	ecx
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1757
.label_1755:
	jmp	.label_1747
.label_1747:
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rdx + 8], ecx
	cmp	eax, dword ptr [rbp - 0x5c]
	jge	.label_1723
	xor	eax, eax
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x188], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x40]
	sub	esi, edx
	mov	dword ptr [rbp - 0x40], esi
	mov	rdi, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x5c], 0x77359400
	mov	edx, dword ptr [rbp - 0x188]
	cmove	edx, ecx
	xor	edx, 0xffffffff
	movsxd	r8, edx
	and	rdi, r8
	mov	qword ptr [rbp - 0x158], rdi
	mov	rdi, qword ptr [rbp - 0x38]
	cmp	rdi, qword ptr [rbp - 0x30]
	jl	.label_1728
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1740
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x3c]
	jg	.label_1740
.label_1728:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1730
.label_1740:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x158]
	jl	.label_1749
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x158]
	jne	.label_1729
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x18c], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [rbp - 0x5c]
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0x18c]
	cmp	edx, ecx
	jge	.label_1729
.label_1749:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1730
.label_1729:
	mov	ecx, 0x100
	lea	rdx, [rbp - 0xc0]
	mov	eax, 9
	mov	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc0], rsi
	movsxd	rsi, dword ptr [rbp - 0x7c]
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rsi, qword ptr [rbp - 0x78]
	cmp	dword ptr [rbp - 0x5c], 0x77359400
	sete	dil
	and	dil, 1
	movzx	r8d, dil
	movsxd	r9, r8d
	or	rsi, r9
	mov	qword ptr [rbp - 0xb0], rsi
	mov	r8d, dword ptr [rbp - 0x84]
	mov	r10d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x190], eax
	mov	eax, r10d
	mov	qword ptr [rbp - 0x198], rdx
	cdq	
	mov	r10d, dword ptr [rbp - 0x190]
	idiv	r10d
	add	r8d, eax
	movsxd	rsi, r8d
	mov	qword ptr [rbp - 0xa8], rsi
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x198]
	mov	rdx, r9
	call	utimensat
	cmp	eax, 0
	je	.label_1744
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1730
.label_1744:
	lea	rdx, [rbp - 0x150]
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	fstatat
	lea	rdi, [rbp - 0x150]
	mov	dword ptr [rbp - 0x15c], eax
	movsxd	rdx, dword ptr [rbp - 0x15c]
	mov	rsi, qword ptr [rbp - 0xf8]
	xor	rsi, qword ptr [rbp - 0x78]
	or	rdx, rsi
	mov	qword ptr [rbp - 0x1a0], rdx
	call	get_stat_mtime_ns
	movsxd	rdx, dword ptr [rbp - 0x84]
	xor	rax, rdx
	mov	rdx, qword ptr [rbp - 0x1a0]
	or	rdx, rax
	cmp	rdx, 0
	je	.label_1761
	mov	ecx, 0x100
	lea	rdx, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb0], rax
	movsxd	rax, dword ptr [rbp - 0x84]
	mov	qword ptr [rbp - 0xa8], rax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	utimensat
	mov	dword ptr [rbp - 0x1a4], eax
.label_1761:
	cmp	dword ptr [rbp - 0x15c], 0
	je	.label_1731
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1730
.label_1731:
	lea	rdi, [rbp - 0x150]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x160], eax
	mov	rcx, qword ptr [rbp - 0xf8]
	and	rcx, 1
	imul	rcx, rcx, 0x3b9aca00
	mov	qword ptr [rbp - 0x1b0], rcx
	call	get_stat_mtime_ns
	mov	rcx, qword ptr [rbp - 0x1b0]
	add	rcx, rax
	mov	edx, ecx
	mov	dword ptr [rbp - 0x164], edx
	mov	dword ptr [rbp - 0x5c], 1
	mov	edx, dword ptr [rbp - 0x5c]
	mov	eax, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 0x1b4], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x1b4]
	idiv	esi
	mov	dword ptr [rbp - 0x164], eax
.label_1724:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 0x1b8], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x1b8]
	idiv	ecx
	cmp	edx, 0
	jne	.label_1754
	cmp	dword ptr [rbp - 0x5c], 0x3b9aca00
	jne	.label_1760
	mov	eax, dword ptr [rbp - 0x5c]
	shl	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1754
.label_1760:
	imul	eax, dword ptr [rbp - 0x5c], 0xa
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, dword ptr [rbp - 0x5c]
	cmp	eax, dword ptr [rbp - 0x160]
	jne	.label_1762
	jmp	.label_1754
.label_1762:
	jmp	.label_1736
.label_1736:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 0x1bc], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x1bc]
	idiv	ecx
	mov	dword ptr [rbp - 0x164], eax
	jmp	.label_1724
.label_1754:
	jmp	.label_1723
.label_1723:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + 8], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	byte ptr [rcx + 0xc], 1
.label_1750:
	xor	eax, eax
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x5c], 0x77359400
	cmove	eax, ecx
	xor	eax, 0xffffffff
	movsxd	rdx, eax
	and	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rdx
	mov	eax, dword ptr [rbp - 0x40]
	cdq	
	idiv	dword ptr [rbp - 0x5c]
	mov	ecx, dword ptr [rbp - 0x40]
	sub	ecx, edx
	mov	dword ptr [rbp - 0x40], ecx
.label_1753:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1742
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c0], eax
	jmp	.label_1745
.label_1742:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jle	.label_1748
	mov	eax, 1
	mov	dword ptr [rbp - 0x1c4], eax
	jmp	.label_1752
.label_1748:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	jge	.label_1756
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c8], eax
	jmp	.label_1758
.label_1756:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	setg	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1c8], eax
.label_1758:
	mov	eax, dword ptr [rbp - 0x1c8]
	mov	dword ptr [rbp - 0x1c4], eax
.label_1752:
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	dword ptr [rbp - 0x1c0], eax
.label_1745:
	mov	eax, dword ptr [rbp - 0x1c0]
	mov	dword ptr [rbp - 4], eax
.label_1730:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1d0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415310

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415340

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
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
	.align	16
	#Procedure 0x415380
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

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
	call	utimensat
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4153b0

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1794
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x188], rax
	jmp	.label_1800
.label_1794:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x188], rcx
	jmp	.label_1800
.label_1800:
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1805
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	validate_timespec
	mov	dword ptr [rbp - 0x4c], eax
.label_1805:
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1782
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1776
.label_1782:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1786
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1786
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1776
.label_1786:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [utimensat_works_really]]
	jg	.label_1789
	cmp	dword ptr [rbp - 0x4c], 2
	jne	.label_1790
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1791
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	jne	.label_1783
	jmp	.label_1796
.label_1791:
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	fstat
	cmp	eax, 0
	je	.label_1796
.label_1783:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1776
.label_1796:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1802
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x190], rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_1768
.label_1802:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1781
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x198], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0x100], rdx
	mov	rax, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rdx + 0x18], rax
.label_1781:
	jmp	.label_1768
.label_1768:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
.label_1790:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1770
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	utimensat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xe4], eax
	cmp	ecx, dword ptr [rbp - 0xe4]
	jge	.label_1797
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1797:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1801
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1792
.label_1801:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1776
.label_1792:
	jmp	.label_1770
.label_1770:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_1772
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	futimens
	xor	edi, edi
	mov	dword ptr [rbp - 0xe4], eax
	cmp	edi, dword ptr [rbp - 0xe4]
	jge	.label_1777
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1777:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1785
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1788
.label_1785:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1776
.label_1788:
	jmp	.label_1772
.label_1772:
	jmp	.label_1789
.label_1789:
	mov	dword ptr [dword ptr [utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1778
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_1771
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1795
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	jne	.label_1799
	jmp	.label_1771
.label_1795:
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	fstat
	cmp	eax, 0
	je	.label_1771
.label_1799:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1776
.label_1771:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1767
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rbp - 0x48]
	call	update_timespec
	test	al, 1
	jne	.label_1773
	jmp	.label_1767
.label_1773:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1776
.label_1767:
	jmp	.label_1778
.label_1778:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1780
	lea	rax, [rbp - 0x130]
	mov	ecx, 0x3e8
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x130], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rax, rsi
	mov	qword ptr [rbp - 0x1a8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x1a8]
	idiv	rsi
	mov	qword ptr [rbp - 0x128], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x120], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x18]
	cqo	
	idiv	rsi
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_1784
.label_1780:
	mov	qword ptr [rbp - 0x138], 0
.label_1784:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1798
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x138]
	call	futimesat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1776
.label_1798:
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x138]
	call	futimesat
	cmp	eax, 0
	jne	.label_1779
	cmp	qword ptr [rbp - 0x138], 0
	je	.label_1769
	mov	eax, 0x7a120
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rdx + 8]
	setle	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x139], sil
	mov	rdx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rdx + 0x18]
	setle	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x13a], sil
	mov	sil, byte ptr [rbp - 0x139]
	and	sil, 1
	movzx	eax, sil
	mov	sil, byte ptr [rbp - 0x13a]
	and	sil, 1
	movzx	edi, sil
	or	eax, edi
	cmp	eax, 0
	je	.label_1775
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	fstat
	cmp	eax, 0
	jne	.label_1775
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x138]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x138]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x150], rax
	mov	qword ptr [rbp - 0x158], 0
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x178], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x170], rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x168], rax
	test	byte ptr [rbp - 0x139], 1
	je	.label_1774
	cmp	qword ptr [rbp - 0x148], 1
	jne	.label_1774
	lea	rdi, [rbp - 0xe0]
	call	get_stat_atime_ns
	cmp	rax, 0
	jne	.label_1774
	lea	rax, [rbp - 0x180]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rax + 8], 0
.label_1774:
	test	byte ptr [rbp - 0x13a], 1
	je	.label_1787
	cmp	qword ptr [rbp - 0x150], 1
	jne	.label_1787
	lea	rdi, [rbp - 0xe0]
	call	get_stat_mtime_ns
	cmp	rax, 0
	jne	.label_1787
	lea	rax, [rbp - 0x180]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rax + 0x18], 0
.label_1787:
	cmp	qword ptr [rbp - 0x158], 0
	je	.label_1793
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x158]
	call	futimesat
	mov	dword ptr [rbp - 0x1ac], eax
.label_1793:
	jmp	.label_1775
.label_1775:
	jmp	.label_1769
.label_1769:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1776
.label_1779:
	jmp	.label_1803
.label_1803:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1804
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1776
.label_1804:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x138]
	call	utimes
	mov	dword ptr [rbp - 4], eax
.label_1776:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415a30

	.globl validate_timespec
	.type validate_timespec, @function
validate_timespec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 8], 0x3fffffff
	je	.label_1812
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	je	.label_1812
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_1806
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3b9aca00
	jge	.label_1806
.label_1812:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	je	.label_1809
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	je	.label_1809
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 0x18]
	jg	.label_1806
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3b9aca00
	jl	.label_1809
.label_1806:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1813
.label_1809:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3fffffff
	je	.label_1815
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1807
.label_1815:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1810
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1810:
	jmp	.label_1807
.label_1807:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	je	.label_1808
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1811
.label_1808:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1814
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1814:
	jmp	.label_1811
.label_1811:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	dword ptr [rbp - 0x18], 1
	sete	cl
	and	cl, 1
	movzx	edx, cl
	add	eax, edx
	mov	dword ptr [rbp - 4], eax
.label_1813:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415bc0

	.globl update_timespec
	.type update_timespec, @function
update_timespec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	qword ptr [rsi + 8], 0x3ffffffe
	jne	.label_1816
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1816
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1823
.label_1816:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3fffffff
	jne	.label_1822
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	jne	.label_1822
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1823
.label_1822:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1817
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_1824
.label_1817:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3fffffff
	jne	.label_1818
	mov	rdi, qword ptr [rbp - 0x20]
	call	gettime
.label_1818:
	jmp	.label_1824
.label_1824:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1819
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x18], rax
	jmp	.label_1820
.label_1819:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	jne	.label_1821
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	rdi, rax
	call	gettime
.label_1821:
	jmp	.label_1820
.label_1820:
	mov	byte ptr [rbp - 1], 0
.label_1823:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415d20

	.globl utimens
	.type utimens, @function
utimens:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	fdutimens
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415d50

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1840
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1844
.label_1840:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x110], rcx
	jmp	.label_1844
.label_1844:
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1829
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	validate_timespec
	mov	dword ptr [rbp - 0x4c], eax
.label_1829:
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1841
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1827
.label_1841:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [lutimensat_works_really]]
	jg	.label_1842
	cmp	dword ptr [rbp - 0x4c], 2
	jne	.label_1826
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	lstat
	cmp	eax, 0
	je	.label_1833
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1827
.label_1833:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1836
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x118], rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0xf8], rax
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rdx + 8], rax
	jmp	.label_1825
.label_1836:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1828
	lea	rdi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x120], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0x100], rdx
	mov	rax, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x120]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rdx + 0x18], rax
.label_1828:
	jmp	.label_1825
.label_1825:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
.label_1826:
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	utimensat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xe4], eax
	cmp	ecx, dword ptr [rbp - 0xe4]
	jge	.label_1831
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1831:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1834
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1837
.label_1834:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	dword ptr [dword ptr [lutimensat_works_really]],  1
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1827
.label_1837:
	jmp	.label_1842
.label_1842:
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1838
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_1832
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	lstat
	cmp	eax, 0
	je	.label_1832
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1827
.label_1832:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1835
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rbp - 0x48]
	call	update_timespec
	test	al, 1
	jne	.label_1839
	jmp	.label_1835
.label_1839:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1827
.label_1835:
	jmp	.label_1838
.label_1838:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_1843
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	lstat
	cmp	eax, 0
	je	.label_1843
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1827
.label_1843:
	mov	eax, dword ptr [rbp - 0xc8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_1830
	mov	edi, 0xffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	fdutimens
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1827
.label_1830:
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1827:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416060

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
	je	.label_1853
	movabs	rsi, OFFSET FLAT:label_1850
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1862
.label_1853:
	movabs	rsi, OFFSET FLAT:label_1863
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1862:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_1851
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
	mov	ecx, OFFSET FLAT:label_1858
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
	ja	.label_1859
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1846]]
	jmp	rcx
.label_2594:
	jmp	.label_1845
.label_2595:
	movabs	rdi, OFFSET FLAT:label_1856
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
	jmp	.label_1845
.label_2596:
	movabs	rdi, OFFSET FLAT:label_1849
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
	jmp	.label_1845
.label_2597:
	movabs	rdi, OFFSET FLAT:label_1848
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
	jmp	.label_1845
.label_2598:
	movabs	rdi, OFFSET FLAT:label_1852
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
	jmp	.label_1845
.label_2599:
	movabs	rdi, OFFSET FLAT:label_1861
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
	jmp	.label_1845
.label_2600:
	movabs	rdi, OFFSET FLAT:label_1855
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
	jmp	.label_1845
.label_2601:
	movabs	rdi, OFFSET FLAT:label_1860
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
	jmp	.label_1845
.label_2602:
	movabs	rdi, OFFSET FLAT:label_1847
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
	jmp	.label_1845
.label_2603:
	movabs	rdi, OFFSET FLAT:label_1854
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
	jmp	.label_1845
.label_1859:
	movabs	rdi, OFFSET FLAT:label_1857
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
.label_1845:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416620
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
.label_1866:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1864
	jmp	.label_1865
.label_1865:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1866
.label_1864:
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
	.align	16
	#Procedure 0x416690

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
.label_1867:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1872
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1870
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1868
.label_1870:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1868:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1872:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1869
	jmp	.label_1873
.label_1869:
	jmp	.label_1871
.label_1871:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1867
.label_1873:
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
	.align	16
	#Procedure 0x4167a0

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
	je	.label_1874
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
.label_1874:
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
	.align	16
	#Procedure 0x416910
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1875
	call	gettext
	movabs	rsi, OFFSET FLAT:label_169
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1876
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_34
	movabs	rdx, OFFSET FLAT:label_27
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1877
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
	.align	16
	#Procedure 0x4169a0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [can_write_any_file.initialized]],  1
	jne	.label_1878
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
.label_1878:
	mov	al,  byte ptr [byte ptr [can_write_any_file.can_write]]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416a00
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
	jae	.label_1879
	call	xalloc_die
.label_1879:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416a50

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
	jne	.label_1880
	cmp	qword ptr [rbp - 8], 0
	je	.label_1880
	call	xalloc_die
.label_1880:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416a90

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
	jae	.label_1881
	call	xalloc_die
.label_1881:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416ae0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1882
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1882
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1884
.label_1882:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1883
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1883
	call	xalloc_die
.label_1883:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1884:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416b60

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
	jne	.label_1885
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1888
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
.label_1888:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1886
	call	xalloc_die
.label_1886:
	jmp	.label_1887
.label_1885:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1889
	call	xalloc_die
.label_1889:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1887:
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
	.align	16
	#Procedure 0x416c50

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
	.align	16
	#Procedure 0x416c70
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
	.align	16
	#Procedure 0x416ca0
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
	.align	16
	#Procedure 0x416ce0
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
	jb	.label_1890
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1891
.label_1890:
	call	xalloc_die
.label_1891:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416d40

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
	.align	16
	#Procedure 0x416d80

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
	.align	16
	#Procedure 0x416dc0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1892
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_985
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x416e00

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
	jne	.label_1894
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1898
	jmp	.label_1893
.label_1898:
	movabs	rdi, OFFSET FLAT:label_1895
	movabs	rsi, OFFSET FLAT:label_1896
	mov	edx, 0x29
	movabs	rcx, OFFSET FLAT:label_1897
	call	__assert_fail
.label_1893:
	call	xalloc_die
.label_1894:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416e90
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
	je	.label_1899
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x48]
	and	edx, 1
	cmp	edx, 0
	mov	byte ptr [rbp - 0x11], al
	je	.label_1901
.label_1899:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0x12], cl
	je	.label_1900
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x12], cl
	je	.label_1900
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x58], 0
	setne	cl
	mov	byte ptr [rbp - 0x12], cl
.label_1900:
	mov	al, byte ptr [rbp - 0x12]
	mov	byte ptr [rbp - 0x11], al
.label_1901:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416f20

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
	jg	.label_1904
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1903
.label_1904:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	jne	.label_1902
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
.label_1902:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpmatch
	xor	ecx, ecx
	cmp	ecx, eax
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1903:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416fc0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1905
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1906
.label_1905:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1907
.label_1906:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1907:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417020

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
	je	.label_1908
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1908:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417060

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
	jbe	.label_1909
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1912
.label_1909:
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
	je	.label_1911
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1910
.label_1911:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1910
.label_1910:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, rax
	mov	qword ptr [rbp - 8], rcx
.label_1912:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417100

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
	jne	.label_1913
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1913
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1913
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1915
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1914
.label_1915:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1914
.label_1913:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1914:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4171d0

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
	je	.label_1950
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1920
.label_1950:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	cmp	eax, 0
	je	.label_1923
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_1923
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1920
.label_1923:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x12
	cmp	eax, 0
	jne	.label_1934
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1920
.label_1934:
	mov	eax, 0x80
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_1940
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1920
.label_1940:
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
	je	.label_1944
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	dword ptr [rax + 0x48], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xfffffdff
	mov	dword ptr [rax + 0x48], ecx
.label_1944:
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x2c], 0xffffff9c
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1916
	mov	al, 1
	test	al, 1
	jne	.label_1916
	jmp	.label_1925
.label_1925:
	movabs	rdi, OFFSET FLAT:label_185
	xor	esi, esi
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	jge	.label_1929
	jmp	.label_1930
.label_1929:
	mov	edi, dword ptr [rbp - 0x58]
	call	close
	mov	dword ptr [rbp - 0x74], eax
.label_1930:
	jmp	.label_1916
.label_1916:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_maxarglen
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	qword ptr [rbp - 0x60], 0x1000
	mov	qword ptr [rbp - 0x80], rdi
	jbe	.label_1937
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1939
.label_1937:
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1939
.label_1939:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	call	fts_palloc
	test	al, 1
	jne	.label_1945
	jmp	.label_1946
.label_1945:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1947
	movabs	rsi, OFFSET FLAT:label_35
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_alloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	jne	.label_1952
	jmp	.label_1954
.label_1952:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 0x58], -1
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 0x68], -1
.label_1947:
	mov	al, 1
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x89], al
	je	.label_1924
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x89], dl
.label_1924:
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
.label_1928:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1936
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x800
	cmp	ecx, 0
	jne	.label_1931
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x70], rdx
	cmp	rcx, qword ptr [rbp - 0x68]
	jae	.label_1941
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	jne	.label_1941
	jmp	.label_1922
.label_1922:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x8a], cl
	jae	.label_1948
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 2
	mov	rcx, qword ptr [rbp - 0x70]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x8a], sil
.label_1948:
	mov	al, byte ptr [rbp - 0x8a]
	test	al, 1
	jne	.label_1917
	jmp	.label_1921
.label_1917:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1922
.label_1921:
	jmp	.label_1941
.label_1941:
	jmp	.label_1931
.label_1931:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x68]
	call	fts_alloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	jne	.label_1942
	jmp	.label_1933
.label_1942:
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
	je	.label_1935
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1935
	mov	esi, 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	word ptr [rax + 0x70], 0xb
	mov	rdi, qword ptr [rbp - 0x30]
	call	fts_set_stat_required
	jmp	.label_1943
.label_1935:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x30]
	mov	word ptr [rsi + 0x70], ax
.label_1943:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1949
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1926
.label_1949:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1953
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1919
.label_1953:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
.label_1919:
	jmp	.label_1926
.label_1926:
	jmp	.label_1927
.label_1927:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1928
.label_1936:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1932
	cmp	qword ptr [rbp - 0x40], 1
	jbe	.label_1932
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	call	fts_sort
	mov	qword ptr [rbp - 0x38], rax
.label_1932:
	movabs	rsi, OFFSET FLAT:label_35
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_alloc
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx], rax
	cmp	rax, 0
	jne	.label_1938
	jmp	.label_1933
.label_1938:
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
	jne	.label_1951
	jmp	.label_1933
.label_1951:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1918
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	jne	.label_1918
	movabs	rsi, OFFSET FLAT:label_185
	mov	rdi, qword ptr [rbp - 0x28]
	call	diropen
	mov	rsi, qword ptr [rbp - 0x28]
	mov	dword ptr [rsi + 0x28], eax
	cmp	eax, 0
	jge	.label_1918
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	dword ptr [rax + 0x48], ecx
.label_1918:
	mov	esi, 0xffffffff
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_init
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1920
.label_1933:
	mov	rdi, qword ptr [rbp - 0x38]
	call	fts_lfree
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1954:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
.label_1946:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1920:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4177b0

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
.label_1956:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_1955
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1958
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1958:
	jmp	.label_1957
.label_1957:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1956
.label_1955:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417820

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
	jae	.label_1959
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1960
.label_1959:
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
	jne	.label_1961
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1960
.label_1961:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	byte ptr [rbp - 1], 1
.label_1960:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417900

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
	jne	.label_1963
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1962
.label_1963:
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
.label_1962:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417a00

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
	je	.label_1964
	call	abort
.label_1964:
	jmp	.label_1965
.label_1965:
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
	.align	16
	#Procedure 0x417a60

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
	jne	.label_1971
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 1
	cmp	ecx, 0
	je	.label_1971
	mov	byte ptr [rbp - 0x19], 1
.label_1971:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	jne	.label_1979
	test	byte ptr [rbp - 0x19], 1
	je	.label_1982
.label_1979:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	call	stat
	cmp	eax, 0
	je	.label_1973
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_1975
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	call	lstat
	cmp	eax, 0
	jne	.label_1975
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	word ptr [rbp - 2], 0xd
	jmp	.label_1967
.label_1975:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	jmp	.label_1976
.label_1973:
	jmp	.label_1969
.label_1982:
	mov	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	call	fstatat
	cmp	eax, 0
	je	.label_1972
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
.label_1976:
	xor	esi, esi
	mov	eax, 0x90
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	call	memset
	mov	word ptr [rbp - 2], 0xa
	jmp	.label_1967
.label_1972:
	jmp	.label_1969
.label_1969:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_1970
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 2
	jb	.label_1978
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jg	.label_1981
.label_1978:
	mov	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1974
.label_1981:
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
.label_1974:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax + 0x108]
	cmp	edx, 0x2e
	jne	.label_1968
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax + 0x109], 0
	je	.label_1980
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x109]
	cmp	ecx, 0x2e
	jne	.label_1968
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax + 0x10a], 0
	jne	.label_1968
.label_1980:
	mov	eax, 5
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 0x58], 0
	cmove	eax, ecx
	mov	si, ax
	mov	word ptr [rbp - 2], si
	jmp	.label_1967
.label_1968:
	mov	word ptr [rbp - 2], 1
	jmp	.label_1967
.label_1970:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_1966
	mov	word ptr [rbp - 2], 0xc
	jmp	.label_1967
.label_1966:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_1977
	mov	word ptr [rbp - 2], 8
	jmp	.label_1967
.label_1977:
	mov	word ptr [rbp - 2], 3
.label_1967:
	movzx	eax, word ptr [rbp - 2]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417ce0

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
	jne	.label_1983
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1985
.label_1983:
	movabs	rax, OFFSET FLAT:fts_compar
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1985
.label_1985:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	jbe	.label_1987
	movabs	rax, 0x1fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x28
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	jb	.label_1984
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
	jne	.label_1988
.label_1984:
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
	jmp	.label_1986
.label_1988:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_1987:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_1989:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1990
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1989
.label_1990:
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
.label_1991:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	je	.label_1992
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1991
.label_1992:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_1986:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417ec0

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
	je	.label_1993
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
	jne	.label_1997
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1995
.label_1997:
	jmp	.label_1996
.label_1993:
	mov	eax, 0x20
	mov	edi, eax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1994
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1995
.label_1994:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x58]
	call	cycle_check_init
.label_1996:
	mov	byte ptr [rbp - 1], 1
.label_1995:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417f80

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
	je	.label_1998
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	al, 0
	call	openat_safer
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1999
.label_1998:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x1c], eax
.label_1999:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418010

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
.label_2000:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	je	.label_2001
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_2002
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	dword ptr [rbp - 0x14], eax
.label_2002:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	free
	jmp	.label_2000
.label_2001:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418070

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
	je	.label_2018
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
.label_2007:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_2009
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2010
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2012
.label_2010:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_2012:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	jmp	.label_2007
.label_2009:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
.label_2018:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2004
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_2004:
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
	je	.label_2016
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0x2c]
	jg	.label_2003
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x2c]
	call	close
	cmp	eax, 0
	je	.label_2017
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_2017:
	jmp	.label_2003
.label_2003:
	jmp	.label_2006
.label_2016:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_2008
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x28]
	call	fchdir
	cmp	eax, 0
	je	.label_2019
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_2019:
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 0x28]
	call	close
	cmp	eax, 0
	je	.label_2014
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_2015
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
.label_2015:
	jmp	.label_2014
.label_2014:
	jmp	.label_2008
.label_2008:
	jmp	.label_2006
.label_2006:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x60
	mov	rdi, rax
	call	fd_ring_clear
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x50], 0
	je	.label_2005
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x50]
	call	hash_free
.label_2005:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_2011
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2013
.label_2011:
	mov	dword ptr [rbp - 4], 0
.label_2013:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418270

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_2021:
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_empty
	xor	al, 0xff
	test	al, 1
	jne	.label_2020
	jmp	.label_2023
.label_2020:
	mov	rdi, qword ptr [rbp - 8]
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xc], eax
	cmp	ecx, dword ptr [rbp - 0xc]
	jg	.label_2022
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	dword ptr [rbp - 0x10], eax
.label_2022:
	jmp	.label_2021
.label_2023:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4182d0

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
	je	.label_2024
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_2025
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x58]
	call	hash_free
.label_2025:
	jmp	.label_2026
.label_2024:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rdi, rax
	call	free
.label_2026:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418330

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi], 0
	je	.label_2075
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_2080
.label_2075:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2047
.label_2080:
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
	jne	.label_2070
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	jmp	.label_2047
.label_2070:
	movzx	eax, word ptr [rbp - 0x22]
	cmp	eax, 2
	jne	.label_2091
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xc
	je	.label_2093
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xd
	jne	.label_2091
.label_2093:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	movzx	edx, word ptr [rsi + 0x70]
	cmp	edx, 1
	jne	.label_2027
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_2027
	movabs	rsi, OFFSET FLAT:label_185
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	jge	.label_2042
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
	jmp	.label_2045
.label_2042:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_2045:
	jmp	.label_2027
.label_2027:
	jmp	.label_2031
.label_2091:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_2050
	movzx	eax, word ptr [rbp - 0x22]
	cmp	eax, 4
	je	.label_2056
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x40
	cmp	ecx, 0
	je	.label_2058
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	je	.label_2058
.label_2056:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_2067
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x3c], eax
.label_2067:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2071
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_2071:
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 6
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2047
.label_2058:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2077
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x1000
	cmp	ecx, 0
	je	.label_2077
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xffffefff
	mov	dword ptr [rax + 0x48], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_2077:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2085
	mov	edx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x30]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_2034
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
.label_2096:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2095
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2096
.label_2095:
	jmp	.label_2034
.label_2034:
	jmp	.label_2036
.label_2085:
	mov	esi, 3
	mov	rdi, qword ptr [rbp - 0x10]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	cmp	rax, 0
	jne	.label_2041
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_2043
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2047
.label_2043:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x40], 0
	je	.label_2048
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_2048
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
.label_2048:
	jmp	.label_2054
.label_2054:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2047
.label_2041:
	jmp	.label_2036
.label_2036:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	jmp	.label_2063
.label_2050:
	jmp	.label_2038
.label_2038:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2068
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_2068
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
	jne	.label_2076
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_2079
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2047
.label_2079:
	jmp	.label_2074
.label_2076:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	jmp	.label_2063
.label_2068:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	je	.label_2078
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_2089
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_2092
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2047
.label_2092:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_load
	mov	rdi, qword ptr [rbp - 0x10]
	call	setup_dir
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_2031
.label_2089:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x74]
	cmp	ecx, 4
	jne	.label_2033
	jmp	.label_2038
.label_2033:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x74]
	cmp	ecx, 2
	jne	.label_2039
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x18]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x18]
	movzx	edx, word ptr [rsi + 0x70]
	cmp	edx, 1
	jne	.label_2044
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_2044
	movabs	rsi, OFFSET FLAT:label_185
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	jge	.label_2051
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 7
	jmp	.label_2057
.label_2051:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_2057:
	jmp	.label_2044
.label_2044:
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x74], 3
.label_2039:
	jmp	.label_2063
.label_2063:
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
	jne	.label_2069
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2049
.label_2069:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x50], rax
.label_2049:
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
.label_2031:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	movzx	edx, word ptr [rax + 0x70]
	cmp	edx, 0xb
	jne	.label_2064
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xa8], 2
	jne	.label_2088
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], 0
	jne	.label_2029
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_2029
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_2029
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x2c]
	call	leaf_optimization
	cmp	eax, 2
	jne	.label_2029
	jmp	.label_2032
.label_2029:
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
	jne	.label_2037
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_2037
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rdx + 0x68]
	jae	.label_2037
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], -1
	je	.label_2037
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x68]
	add	rcx, -1
	mov	qword ptr [rax + 0x68], rcx
.label_2037:
	jmp	.label_2032
.label_2032:
	jmp	.label_2061
.label_2088:
	jmp	.label_2053
.label_2053:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xa8], 1
	je	.label_2055
	call	abort
.label_2055:
	jmp	.label_2060
.label_2060:
	jmp	.label_2061
.label_2061:
	jmp	.label_2064
.label_2064:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_2065
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_2066
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_2066:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	enter_dir
	test	al, 1
	jne	.label_2072
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2047
.label_2072:
	jmp	.label_2065
.label_2065:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2047
.label_2078:
	jmp	.label_2074
.label_2074:
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
	jne	.label_2081
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2047
.label_2081:
	jmp	.label_2086
.label_2086:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xb
	jne	.label_2087
	call	abort
.label_2087:
	jmp	.label_2097
.label_2097:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_2090
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_2094
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_2094:
	jmp	.label_2028
.label_2090:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_2030
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_2035
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_2040
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x44]
	call	cwd_advance_fd
	xor	edx, edx
	mov	cl, dl
	test	cl, 1
	jne	.label_2046
	jmp	.label_2035
.label_2040:
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	fchdir
	cmp	eax, 0
	je	.label_2035
.label_2046:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_2035:
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2059
.label_2030:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_2062
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:label_181
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 8]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_2062
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_2062:
	jmp	.label_2059
.label_2059:
	jmp	.label_2028
.label_2028:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 2
	je	.label_2052
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
	jne	.label_2073
	jmp	.label_2082
.label_2082:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	leave_dir
	jmp	.label_2073
.label_2073:
	jmp	.label_2052
.label_2052:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_2083
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_2084
.label_2083:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x68], rax
.label_2084:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 8], rax
.label_2047:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418db0

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
	je	.label_2103
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
	jne	.label_2101
	call	abort
.label_2101:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_2100
.label_2103:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2098
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x58]
	jg	.label_2098
	jmp	.label_2104
.label_2104:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2105
	call	abort
.label_2105:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2102
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jne	.label_2102
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
.label_2102:
	jmp	.label_2099
.label_2099:
	jmp	.label_2098
.label_2098:
	jmp	.label_2100
.label_2100:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418ef0

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
	je	.label_2121
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, OFFSET FLAT:label_181
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0xcd], cl
.label_2121:
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	mov	byte ptr [rbp - 0x2d], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x48]
	and	edx, 4
	cmp	edx, 0
	je	.label_2115
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_2118
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2118
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	dword ptr [rbp - 0xd4], eax
.label_2118:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2108
.label_2115:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_2106
	test	byte ptr [rbp - 0x2d], 1
	je	.label_2106
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_2106
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_empty
	test	al, 1
	jne	.label_2107
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	mov	byte ptr [rbp - 0x2d], 1
	cmp	ecx, dword ptr [rbp - 0x38]
	jg	.label_2119
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x1c], eax
	mov	qword ptr [rbp - 0x28], 0
.label_2119:
	jmp	.label_2107
.label_2107:
	jmp	.label_2106
.label_2106:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_2110
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	diropen
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, 0
	jge	.label_2110
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2108
.label_2110:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	jne	.label_2116
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2117
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, OFFSET FLAT:label_181
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2117
.label_2116:
	lea	rsi, [rbp - 0xc8]
	mov	edi, dword ptr [rbp - 0x34]
	call	fstat
	cmp	eax, 0
	je	.label_2109
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	jmp	.label_2111
.label_2109:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x78]
	cmp	rax, qword ptr [rbp - 0xc8]
	jne	.label_2112
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x80]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_2114
.label_2112:
	call	__errno_location
	mov	dword ptr [rax], 2
	mov	dword ptr [rbp - 0x2c], 0xffffffff
	jmp	.label_2111
.label_2114:
	jmp	.label_2117
.label_2117:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_2120
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x34]
	mov	al, byte ptr [rbp - 0x2d]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	call	cwd_advance_fd
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2108
.label_2120:
	mov	edi, dword ptr [rbp - 0x34]
	call	fchdir
	mov	dword ptr [rbp - 0x2c], eax
.label_2111:
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_2113
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
.label_2113:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_2108:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419180

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
	je	.label_2180
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x98]
	call	dirfd
	mov	dword ptr [rbp - 0x74], eax
	cmp	dword ptr [rbp - 0x74], 0
	jge	.label_2189
	jmp	.label_2192
.label_2192:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xb0], eax
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_2122
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 4
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_2122:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2134
.label_2189:
	jmp	.label_2129
.label_2180:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_2137
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_2137
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x2c]
	mov	dword ptr [rbp - 0xb4], ecx
	jmp	.label_2144
.label_2137:
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_2144
.label_2144:
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
	je	.label_2179
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc2], cl
	je	.label_2158
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	mov	byte ptr [rbp - 0xc2], cl
.label_2158:
	mov	al, byte ptr [rbp - 0xc2]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc1], al
.label_2179:
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
	jne	.label_2166
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_2169
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 4
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_2169:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2134
.label_2166:
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xb
	jne	.label_2177
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x80]
	mov	word ptr [rsi + 0x70], ax
	jmp	.label_2126
.label_2177:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x100
	cmp	ecx, 0
	je	.label_2124
	jmp	.label_2183
.label_2183:
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
	jne	.label_2190
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2134
.label_2190:
	jmp	.label_2124
.label_2124:
	jmp	.label_2126
.label_2126:
	jmp	.label_2129
.label_2129:
	mov	eax, 0x186a0
	mov	ecx, eax
	mov	rdx, -1
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 0x40], 0
	cmovne	rcx, rdx
	mov	qword ptr [rbp - 0x90], rcx
	test	byte ptr [rbp - 0x81], 1
	je	.label_2131
	mov	byte ptr [rbp - 0x45], 1
	jmp	.label_2127
.label_2131:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x14], 2
	mov	byte ptr [rbp - 0xc5], cl
	je	.label_2138
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 8
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	je	.label_2141
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	je	.label_2141
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x20
	cmp	eax, 0
	mov	byte ptr [rbp - 0xc6], cl
	jne	.label_2141
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	qword ptr [rdx + 0x88], 2
	mov	byte ptr [rbp - 0xc6], cl
	jne	.label_2141
	mov	rdi, qword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x74]
	call	leaf_optimization
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xc6], cl
.label_2141:
	mov	al, byte ptr [rbp - 0xc6]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xc5], al
.label_2138:
	mov	al, byte ptr [rbp - 0xc5]
	and	al, 1
	mov	byte ptr [rbp - 0x45], al
	test	byte ptr [rbp - 0x45], 1
	jne	.label_2162
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_2125
.label_2162:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_2165
	mov	esi, 0x406
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x74]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x74], eax
.label_2165:
	cmp	dword ptr [rbp - 0x74], 0
	jl	.label_2171
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x74]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_2143
.label_2171:
	test	byte ptr [rbp - 0x45], 1
	je	.label_2176
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_2176
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], ecx
.label_2176:
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
	je	.label_2184
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x74]
	jg	.label_2184
	mov	edi, dword ptr [rbp - 0x74]
	call	close
	mov	dword ptr [rbp - 0xd0], eax
.label_2184:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rax + 0x18], 0
	jmp	.label_2153
.label_2143:
	mov	byte ptr [rbp - 0x45], 1
.label_2153:
	jmp	.label_2125
.label_2125:
	jmp	.label_2127
.label_2127:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x38]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	jne	.label_2130
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_2172
.label_2130:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xd8], rax
.label_2172:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_2133
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rax], 0x2f
	jmp	.label_2147
.label_2133:
	mov	qword ptr [rbp - 0x70], 0
.label_2147:
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
.label_2191:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_2161
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	readdir
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_2164
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2167
	call	__errno_location
	mov	cl, 1
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	dword ptr [rax + 0x40], edx
	test	byte ptr [rbp - 0x81], 1
	mov	byte ptr [rbp - 0xd9], cl
	jne	.label_2168
	cmp	qword ptr [rbp - 0x30], 0
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_2168:
	mov	al, byte ptr [rbp - 0xd9]
	mov	ecx, 4
	mov	edx, 7
	test	al, 1
	cmovne	ecx, edx
	mov	si, cx
	mov	rdi, qword ptr [rbp - 0x80]
	mov	word ptr [rdi + 0x70], si
.label_2167:
	jmp	.label_2161
.label_2164:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x20
	cmp	ecx, 0
	jne	.label_2178
	mov	rax, qword ptr [rbp - 0xa8]
	movsx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_2178
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	byte ptr [rax + 0x14], 0
	je	.label_2185
	mov	rax, qword ptr [rbp - 0xa8]
	movsx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	jne	.label_2178
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	byte ptr [rax + 0x15], 0
	jne	.label_2178
.label_2185:
	jmp	.label_2191
.label_2178:
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
	jne	.label_2132
	jmp	.label_2149
.label_2132:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_2181
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
	jne	.label_2159
	jmp	.label_2149
.label_2149:
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
	jmp	.label_2134
.label_2159:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	je	.label_2163
	mov	byte ptr [rbp - 0x46], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_2145
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x70], rax
.label_2145:
	jmp	.label_2163
.label_2163:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_2181:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_2173
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
	jmp	.label_2134
.label_2173:
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
	je	.label_2187
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
	jmp	.label_2139
.label_2187:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
.label_2139:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_2146
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	je	.label_2150
.label_2146:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_2151
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 8
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_2151
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa8]
	movzx	eax, byte ptr [rdx + 0x12]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_2151
	mov	rax, qword ptr [rbp - 0xa8]
	movzx	ecx, byte ptr [rax + 0x12]
	cmp	ecx, 4
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0xf1], dl
.label_2151:
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
	jmp	.label_2193
.label_2150:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x20]
	mov	word ptr [rsi + 0x70], ax
.label_2193:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2175
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2155
.label_2175:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_2155:
	cmp	qword ptr [rbp - 0x30], 0x2710
	jne	.label_2154
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_2154
	mov	rdi, qword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x74]
	call	dirent_inode_sort_may_be_useful
	and	al, 1
	mov	byte ptr [rbp - 0x82], al
.label_2154:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_2157
	jmp	.label_2135
.label_2157:
	jmp	.label_2191
.label_2161:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_2123
	jmp	.label_2128
.label_2128:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xf8], eax
	jmp	.label_2123
.label_2123:
	jmp	.label_2135
.label_2135:
	test	byte ptr [rbp - 0x46], 1
	je	.label_2136
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	fts_padjust
.label_2136:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_2140
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_2142
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2148
.label_2142:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, -1
	mov	qword ptr [rbp - 0x70], rax
.label_2148:
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0
.label_2140:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_2152
	test	byte ptr [rbp - 0x45], 1
	je	.label_2152
	cmp	dword ptr [rbp - 0x14], 1
	je	.label_2186
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2152
.label_2186:
	mov	rax, qword ptr [rbp - 0x80]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_2156
	mov	rdi, qword ptr [rbp - 0x10]
	call	restore_initial_cwd
	cmp	eax, 0
	jne	.label_2160
	jmp	.label_2152
.label_2156:
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:label_181
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rax + 8]
	call	fts_safe_changedir
	cmp	eax, 0
	je	.label_2152
.label_2160:
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2134
.label_2152:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2170
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_2174
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_2174
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 7
	je	.label_2174
	mov	rax, qword ptr [rbp - 0x80]
	mov	word ptr [rax + 0x70], 6
.label_2174:
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_lfree
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2134
.label_2170:
	test	byte ptr [rbp - 0x82], 1
	je	.label_2182
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
.label_2182:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_2188
	cmp	qword ptr [rbp - 0x30], 1
	jbe	.label_2188
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fts_sort
	mov	qword ptr [rbp - 0x28], rax
.label_2188:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_2134:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419e30

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
	jne	.label_2196
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_2198
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	mov	qword ptr [rbp - 0x18], rdi
	je	.label_2195
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_2194
.label_2195:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x1c], ecx
.label_2194:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, eax
	call	cwd_advance_fd
	xor	eax, eax
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_2199
.label_2198:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_2200
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2197
.label_2200:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x24], ecx
.label_2197:
	mov	eax, dword ptr [rbp - 0x24]
	mov	edi, eax
	call	fchdir
	mov	dword ptr [rbp - 0x20], eax
.label_2199:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xd], cl
.label_2196:
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
	.align	16
	#Procedure 0x419f30

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
	je	.label_2202
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x108
	cmp	rax, rcx
	jne	.label_2201
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_2202
.label_2201:
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
.label_2202:
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
	.align	16
	#Procedure 0x41a040

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
	je	.label_2213
	jmp	.label_2215
.label_2215:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	mov	qword ptr [rbp - 0x28], rax
	je	.label_2212
	jmp	.label_2203
.label_2203:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa0
	mov	qword ptr [rbp - 0x30], rax
	je	.label_2205
	jmp	.label_2211
.label_2211:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 0x38], rax
	je	.label_2208
	jmp	.label_2216
.label_2216:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x40], rax
	je	.label_2209
	jmp	.label_2207
.label_2207:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x48], rax
	je	.label_2208
	jmp	.label_2214
.label_2214:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x50], rdx
	je	.label_2210
	jmp	.label_2204
.label_2208:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_2206
.label_2213:
	jmp	.label_2209
.label_2209:
	jmp	.label_2210
.label_2210:
	jmp	.label_2212
.label_2212:
	jmp	.label_2205
.label_2205:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2206
.label_2204:
	mov	dword ptr [rbp - 4], 1
.label_2206:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a150

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
	je	.label_2223
	mov	eax, 0x18
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x78
	mov	qword ptr [rbp - 0x20], rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2221
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2219
.label_2221:
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
	je	.label_2218
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2217
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2219
.label_2217:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 2
.label_2218:
	jmp	.label_2222
.label_2223:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x78
	mov	rsi, rax
	call	cycle_check
	test	al, 1
	jne	.label_2220
	jmp	.label_2224
.label_2220:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	word ptr [rax + 0x70], 2
.label_2224:
	jmp	.label_2222
.label_2222:
	mov	byte ptr [rbp - 1], 1
.label_2219:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a290

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
	jne	.label_2230
	cmp	dword ptr [rbp - 0x14], -0x64
	je	.label_2230
	call	abort
.label_2230:
	jmp	.label_2226
.label_2226:
	test	byte ptr [rbp - 0xd], 1
	je	.label_2225
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x60
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdi, rax
	call	i_ring_push
	xor	esi, esi
	mov	dword ptr [rbp - 0x18], eax
	cmp	esi, dword ptr [rbp - 0x18]
	jg	.label_2229
	mov	edi, dword ptr [rbp - 0x18]
	call	close
	mov	dword ptr [rbp - 0x1c], eax
.label_2229:
	jmp	.label_2227
.label_2225:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_2228
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x14]
	jg	.label_2231
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	dword ptr [rbp - 0x20], eax
.label_2231:
	jmp	.label_2228
.label_2228:
	jmp	.label_2227
.label_2227:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x2c], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a350

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
	je	.label_2232
	cmp	dword ptr [rbp - 0x1c], 1
	je	.label_2232
	cmp	dword ptr [rbp - 0x1c], 2
	je	.label_2232
	cmp	dword ptr [rbp - 0x1c], 3
	je	.label_2232
	cmp	dword ptr [rbp - 0x1c], 4
	je	.label_2232
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2233
.label_2232:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cx, ax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	word ptr [rdx + 0x74], cx
	mov	dword ptr [rbp - 4], 0
.label_2233:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a3d0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2236
	cmp	dword ptr [rbp - 0x14], 0x1000
	je	.label_2236
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2235
.label_2236:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_2239
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2235
.label_2239:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 9
	jne	.label_2234
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2235
.label_2234:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	je	.label_2246
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2235
.label_2246:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2243
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_2243:
	cmp	dword ptr [rbp - 0x14], 0x1000
	jne	.label_2240
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x1000
	mov	dword ptr [rax + 0x48], ecx
	mov	dword ptr [rbp - 0x14], 2
	jmp	.label_2244
.label_2240:
	mov	dword ptr [rbp - 0x14], 1
.label_2244:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_2237
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_2237
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_2245
.label_2237:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2235
.label_2245:
	movabs	rsi, OFFSET FLAT:label_185
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	jge	.label_2247
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2235
.label_2247:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x48]
	and	esi, 0x200
	cmp	esi, 0
	je	.label_2242
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x24]
	call	cwd_advance_fd
	jmp	.label_2238
.label_2242:
	mov	edi, dword ptr [rbp - 0x24]
	call	fchdir
	cmp	eax, 0
	je	.label_2241
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
	jmp	.label_2235
.label_2241:
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	mov	dword ptr [rbp - 0x34], eax
.label_2238:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
.label_2235:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a610

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
	.align	16
	#Procedure 0x41a640

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
	jne	.label_2248
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x21], dl
.label_2248:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a6a0

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
	jne	.label_2257
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2250
.label_2257:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2259
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
.label_2259:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2260
	lea	rax, [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2261
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2250
.label_2261:
	jmp	.label_2260
.label_2260:
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_2251
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x14]
	call	fstatfs
	cmp	eax, 0
	je	.label_2255
.label_2251:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2250
.label_2255:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2256
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], 0
	je	.label_2253
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
	je	.label_2254
	jmp	.label_2262
.label_2262:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0xc0]
	je	.label_2258
	call	abort
.label_2258:
	jmp	.label_2249
.label_2249:
	jmp	.label_2252
.label_2254:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, rax
	call	free
.label_2252:
	jmp	.label_2253
.label_2253:
	jmp	.label_2256
.label_2256:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 8], rax
.label_2250:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a880

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
	.align	16
	#Procedure 0x41a8b0

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
	.align	16
	#Procedure 0x41a8f0

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
	ja	.label_2263
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2265]]
	jmp	rcx
.label_2582:
	mov	dword ptr [rbp - 0x10], 0x6000
	jmp	.label_2264
.label_2580:
	mov	dword ptr [rbp - 0x10], 0x2000
	jmp	.label_2264
.label_2581:
	mov	dword ptr [rbp - 0x10], 0x4000
	jmp	.label_2264
.label_2579:
	mov	dword ptr [rbp - 0x10], 0x1000
	jmp	.label_2264
.label_2584:
	mov	dword ptr [rbp - 0x10], 0xa000
	jmp	.label_2264
.label_2583:
	mov	dword ptr [rbp - 0x10], 0x8000
	jmp	.label_2264
.label_2585:
	mov	dword ptr [rbp - 0x10], 0xc000
	jmp	.label_2264
.label_2263:
	mov	dword ptr [rbp - 0x10], 0
.label_2264:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a990

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
	je	.label_2267
	jmp	.label_2270
.label_2270:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x1021994
	mov	qword ptr [rbp - 0x30], rax
	je	.label_2267
	jmp	.label_2266
.label_2266:
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x38], rdx
	jne	.label_2269
	jmp	.label_2267
.label_2267:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2268
.label_2269:
	mov	byte ptr [rbp - 1], 1
.label_2268:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41aa20

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
.label_2272:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2273
	jmp	.label_2278
.label_2278:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_2280
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x38]
	sub	rcx, rdx
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
.label_2280:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_2279
.label_2279:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2272
.label_2273:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_2274:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_2281
	jmp	.label_2276
.label_2276:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_2271
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x38]
	sub	rcx, rdx
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
.label_2271:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2277
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2275
.label_2277:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
.label_2275:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2274
.label_2281:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ab60

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
	jae	.label_2282
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2283
.label_2282:
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
.label_2283:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41abd0

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
	.align	16
	#Procedure 0x41ac20

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
	jne	.label_2284
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_2284:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_2285
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2285
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_2285
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2286
.label_2285:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2286:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41acd0

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ace0

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	r8d, 4
	mov	r9d, r8d
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	mov	esi, eax
	mov	rdx, r9
	mov	dword ptr [rbp - 0x1c], eax
	call	memset
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ad30

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0x18], edx
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_2287
	mov	edi, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 0x18]
	call	fchmod
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2288
.label_2287:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	call	chmod
	mov	dword ptr [rbp - 4], eax
.label_2288:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ad80

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	byte ptr [rbp - 0x1d], 0
	mov	byte ptr [rbp - 0x1f], 0
	mov	dword ptr [rbp - 0x24], 0
	mov	byte ptr [rbp - 0x1e], 1
	test	byte ptr [rbp - 0x1e], 1
	je	.label_2289
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax]
	call	chmod_or_fchmod
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_2291
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2293
.label_2291:
	jmp	.label_2289
.label_2289:
	test	byte ptr [rbp - 0x1f], 1
	je	.label_2290
	test	byte ptr [rbp - 0x1e], 1
	jne	.label_2290
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_2294
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	jmp	.label_2292
.label_2294:
	xor	eax, eax
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_2292
.label_2292:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x28], eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx]
	call	chmod_or_fchmod
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_2295
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x30], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x24], 0xffffffff
.label_2295:
	jmp	.label_2290
.label_2290:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
.label_2293:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ae70

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x41ae80

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
.label_2304:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2305
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_2302
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_2307
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2297
.label_2307:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_2299
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2301
.label_2299:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2298
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
	je	.label_2303
.label_2298:
	mov	byte ptr [rbp - 0x41], 1
.label_2303:
	jmp	.label_2301
.label_2301:
	jmp	.label_2306
.label_2306:
	jmp	.label_2302
.label_2302:
	jmp	.label_2296
.label_2296:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2304
.label_2305:
	test	byte ptr [rbp - 0x41], 1
	je	.label_2300
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2297
.label_2300:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_2297:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41afd0

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
	jne	.label_2308
	movabs	rdi, OFFSET FLAT:label_2311
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2310
.label_2308:
	movabs	rdi, OFFSET FLAT:label_2309
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_2310:
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
	.align	16
	#Procedure 0x41b070

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_2318
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
.label_2314:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2320
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2316
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_2315
.label_2316:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_2312
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
	jmp	.label_2319
.label_2315:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_2313
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_2319:
	jmp	.label_2317
.label_2317:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2314
.label_2320:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b1c0

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
	jl	.label_2322
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2321
.label_2322:
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
.label_2321:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b250
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
.label_2325:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2323
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_2324
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2327
.label_2324:
	jmp	.label_2326
.label_2326:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2325
.label_2323:
	mov	qword ptr [rbp - 8], 0
.label_2327:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b2f0
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
	.align	16
	#Procedure 0x41b330
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
	.align	16
	#Procedure 0x41b370
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
	.align	16
	#Procedure 0x41b3a0
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
	.align	16
	#Procedure 0x41b3d0
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
	.align	16
	#Procedure 0x41b420

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
	.align	16
	#Procedure 0x41b470
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
	.align	16
	#Procedure 0x41b4b0
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
	.align	16
	#Procedure 0x41b4f0
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
	.align	16
	#Procedure 0x41b530
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
	.align	16
	#Procedure 0x41b570

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
	jne	.label_2328
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2332
.label_2328:
	jmp	.label_2329
.label_2329:
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
	jne	.label_2331
	jmp	.label_2330
.label_2331:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_2329
.label_2330:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2332:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b630

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
	jne	.label_2333
	test	byte ptr [rbp - 0x13], 1
	je	.label_2334
	test	byte ptr [rbp - 0x11], 1
	jne	.label_2333
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_2334
.label_2333:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_2335
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2335:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2336
.label_2334:
	mov	dword ptr [rbp - 4], 0
.label_2336:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b6e0

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
	.align	16
	#Procedure 0x41b710

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
	jne	.label_2340
	jmp	.label_2341
.label_2340:
	movabs	rdi, OFFSET FLAT:label_2343
	movabs	rsi, OFFSET FLAT:label_2344
	mov	edx, 0x3c
	movabs	rcx, OFFSET FLAT:label_2345
	call	__assert_fail
.label_2341:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2338
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jne	.label_2338
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2338
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2342
.label_2338:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, 1
	mov	qword ptr [rax + 0x10], rcx
	mov	rdi, rcx
	call	is_zero_or_power_of_two
	test	al, 1
	jne	.label_2346
	jmp	.label_2337
.label_2346:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2339
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2342
.label_2339:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_2337:
	mov	byte ptr [rbp - 1], 0
.label_2342:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b810

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
	.align	16
	#Procedure 0x41b840

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	opendir
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2350
	mov	rdi, qword ptr [rbp - 0x10]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x14], eax
	cmp	ecx, dword ptr [rbp - 0x14]
	jg	.label_2348
	cmp	dword ptr [rbp - 0x14], 2
	jg	.label_2348
	mov	esi, 0x406
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x14]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_2351
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_2347
.label_2351:
	mov	edi, dword ptr [rbp - 0x28]
	call	fdopendir
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2349
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	dword ptr [rbp - 0x2c], eax
.label_2349:
	jmp	.label_2347
.label_2347:
	mov	rdi, qword ptr [rbp - 0x10]
	call	closedir
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x30], eax
	mov	dword ptr [rbp - 0x34], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_2348:
	jmp	.label_2350
.label_2350:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b930

	.globl gettime
	.type gettime, @function
gettime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b960
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x20]
	call	gettime
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b990

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
	je	.label_2352
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_2354
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_2355
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_2353
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2356
.label_2355:
	mov	byte ptr [rbp - 5], 0
.label_2356:
	jmp	.label_2352
.label_2352:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ba10

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2358:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_2357
	mov	rax, qword ptr [rbp - 0x18]
	movsx	rax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 9
	mov	rdx, qword ptr [rbp - 0x20]
	shr	rdx, 0x37
	or	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2358
.label_2357:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ba80

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
.label_2360:
	cmp	dword ptr [rbp - 0x10], 4
	jge	.label_2359
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_2360
.label_2359:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x10], eax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41baf0

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
	.align	16
	#Procedure 0x41bb10

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
	jne	.label_2361
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
.label_2361:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 0
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bba0

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
	jne	.label_2362
	jmp	.label_2364
.label_2362:
	call	abort
.label_2364:
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
	jne	.label_2363
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 1
	jmp	.label_2365
.label_2363:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	add	ecx, 4
	sub	ecx, 1
	and	ecx, 3
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_2365:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bc40

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
	jne	.label_2366
	movabs	rax, OFFSET FLAT:label_35
	mov	qword ptr [rbp - 8], rax
.label_2366:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2367
	movabs	rax, OFFSET FLAT:label_2368
	mov	qword ptr [rbp - 8], rax
.label_2367:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bca0

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
	je	.label_2369
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
.label_2369:
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
	je	.label_2370
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
	ja	.label_2372
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_2371
.label_2372:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_2371:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_2370:
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
	.align	16
	#Procedure 0x41bea0

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bef0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	randread_new
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2374
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_new
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2373
.label_2374:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_2373
.label_2373:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bf50
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bf70

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 1
	mov	qword ptr [rbp - 0x38], rsi
.label_2378:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_2377
	mov	qword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_2380:
	mov	rdi, qword ptr [rbp - 0x48]
	call	shift_left
	add	rax, 0xff
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_2380
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	call	randread
	mov	qword ptr [rbp - 0x40], 0
.label_2381:
	mov	rdi, qword ptr [rbp - 0x28]
	call	shift_left
	mov	rdi, qword ptr [rbp - 0x40]
	movzx	ecx, byte ptr [rbp + rdi - 0x50]
	mov	edi, ecx
	add	rax, rdi
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	shift_left
	add	rax, 0xff
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_2381
	jmp	.label_2377
.label_2377:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2375
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2376
.label_2375:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	sub	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x68]
	ja	.label_2379
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x58]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2376
.label_2379:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2378
.label_2376:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c140

	.globl shift_left
	.type shift_left, @function
shift_left:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	shl	rdi, 8
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c160

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x18
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c190

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	randread_free
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	randint_free
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c1e0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2382
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2385
.label_2382:
	mov	qword ptr [rbp - 0x20], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2387
	movabs	rsi, OFFSET FLAT:label_2383
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_2389
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2385
.label_2389:
	jmp	.label_2387
.label_2387:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2384
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rdi
	jae	.label_2388
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_2390
.label_2388:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_2390:
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2386
.label_2384:
	mov	eax, 0x800
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	add	rcx, 8
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	call	get_nonce
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	add	rcx, 8
	mov	rdi, rcx
	call	isaac_seed
.label_2386:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_2385:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c330

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rcx
	call	xmalloc
	movabs	rcx, OFFSET FLAT:randread_error
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c390

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:label_2395
	xor	ecx, ecx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	mov	esi, ecx
	mov	al, 0
	call	open
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x2c], eax
	cmp	ecx, dword ptr [rbp - 0x2c]
	jg	.label_2402
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	jae	.label_2404
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_2410
.label_2404:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_2410:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_2400
	mov	qword ptr [rbp - 0x28], 0
.label_2400:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_2402:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2403
	mov	eax, 0x10
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2407
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_2392
.label_2407:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xb0], rax
.label_2392:
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rbp - 0x40]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x48], rax
	call	gettimeofday
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0xb4], eax
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x48]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_2403:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2406
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2408
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_2394
.label_2408:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
.label_2394:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x58], rax
	call	getpid
	lea	rcx, [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xc8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_2406:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2409
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2391
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_2397
.label_2391:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_2397:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	call	getppid
	lea	rcx, [rbp - 0x5c]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_2409:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2393
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2405
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_2399
.label_2405:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xe0], rax
.label_2399:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x78], rax
	call	getuid
	lea	rcx, [rbp - 0x6c]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xe8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xe8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_2393:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2396
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2398
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_2401
.label_2398:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_2401:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x88], rax
	call	getgid
	lea	rcx, [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xf8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_2396:
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c740
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c760
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c780

	.globl randread
	.type randread, @function
randread:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx], 0
	je	.label_2411
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	readsource
	jmp	.label_2412
.label_2411:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	readisaac
.label_2412:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c7e0

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_2417:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], r8d
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2415
	jmp	.label_2413
.label_2415:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_2414
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2416
.label_2414:
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_2416
.label_2416:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x10]
	call	rax
	jmp	.label_2417
.label_2413:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c8b0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
.label_2424:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2420
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	jmp	.label_2422
.label_2420:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, 7
	cmp	rcx, 0
	jne	.label_2423
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_2418:
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	ja	.label_2419
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	isaac_refill
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x800
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x800
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2421
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	jmp	.label_2422
.label_2421:
	jmp	.label_2418
.label_2419:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_2423:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x820
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_2424
.label_2422:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ca30

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2425
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2426
.label_2425:
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2426
.label_2426:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41caa0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2427
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], edi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_2428
	movabs	rdi, OFFSET FLAT:label_2430
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2429
.label_2428:
	movabs	rdi, OFFSET FLAT:label_2431
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_2429:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	mov	edi, dword ptr [rbp - 0xc]
	mov	esi, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2427:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x41cb30

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x800]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x808]
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x810]
	add	rax, 1
	mov	qword ptr [rdi + 0x810], rax
	add	rsi, rax
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_2433:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x400]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb8], rax
	call	just
	shr	rax, 5
	mov	rcx, qword ptr [rbp - 0xb8]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x408]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x50]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0xc
	xor	rax, rcx
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x410]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x58]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x60]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc0], rax
	call	just
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xc0]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x418]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x70]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x400
	cmp	rax, rcx
	jb	.label_2433
	jmp	.label_2432
.label_2432:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x400]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x78]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x80]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	just
	shr	rax, 5
	mov	rcx, qword ptr [rbp - 0xc8]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3f8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x90], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x90]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0xc
	xor	rax, rcx
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x3f0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x98]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xa0]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rax
	call	just
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xd0]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3e8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xb0]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x800
	cmp	rax, rcx
	jb	.label_2432
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x800], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x808], rax
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d070

	.globl ind
	.type ind, @function
ind:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	and	rdi, 0x7f8
	add	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d0c0

	.globl just
	.type just, @function
just:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], -1
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, qword ptr [rbp - 0x10]
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d0e0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, 0x98f5704f6c44c0ab
	movabs	rcx, 0xae985bf2cbfc89ed
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rsi, 0x82f053db8355e0ce
	movabs	r8, 0xb29b2e824a595524
	movabs	r9, 0x8c0ea5053d4712a0
	movabs	r10, 0xb9f8b322c73ac862
	movabs	r11, 0x647c4677a2884b7c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], r11
	mov	qword ptr [rbp - 0x18], r10
	mov	qword ptr [rbp - 0x20], r9
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_2437:
	cmp	dword ptr [rbp - 0x4c], 0x100
	jge	.label_2434
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 1
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 6
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 7
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 8
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2437
.label_2434:
	mov	dword ptr [rbp - 0x50], 0
.label_2436:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_2435
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 1
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 6
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 8
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_2436
.label_2435:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x810], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x808], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x800], 0
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d780

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
	.align	16
	#Procedure 0x41d7b0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, eax
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d7e0

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
	jge	.label_2438
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2441
.label_2438:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_2439
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2440
.label_2439:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_2440
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2440:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2442
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_2442:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2441:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d8b0

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
	je	.label_2458
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
.label_2458:
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
	je	.label_2445
	jmp	.label_2465
.label_2465:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_2449
	jmp	.label_2454
.label_2445:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_2457
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_2466
.label_2457:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_2466:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2451
.label_2449:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_2444
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_2464
.label_2444:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_2464:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2451
.label_2454:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_2448
	jmp	.label_2461
.label_2461:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_2450
	jmp	.label_2468
.label_2468:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_2448
	jmp	.label_2471
.label_2471:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_2450
	jmp	.label_2446
.label_2446:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_2448
	jmp	.label_2452
.label_2452:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_2448
	jmp	.label_2462
.label_2462:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2450
	jmp	.label_2469
.label_2469:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_2448
	jmp	.label_2472
.label_2472:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_2450
	jmp	.label_2447
.label_2447:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_2448
	jmp	.label_2453
.label_2453:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_2450
	jmp	.label_2463
.label_2463:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_2448
	jmp	.label_2470
.label_2470:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_2448
	jmp	.label_2473
.label_2473:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_2443
	jmp	.label_2450
.label_2450:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2456
.label_2448:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_2459
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_2467
.label_2459:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_2467:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2456
.label_2443:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_2460
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_2455
.label_2460:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_2455:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_2456:
	jmp	.label_2451
.label_2451:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ddd0

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
	.align	16
	#Procedure 0x41de00

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
	jg	.label_2474
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_2482
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2475
.label_2482:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2477
.label_2475:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_2480
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2480:
	jmp	.label_2477
.label_2477:
	jmp	.label_2476
.label_2474:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_2476:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_2478
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_2478
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_2481
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2479
.label_2481:
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
.label_2479:
	jmp	.label_2478
.label_2478:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41df30

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
	ja	.label_2483
	jmp	.label_2485
.label_2485:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2484
.label_2483:
	jmp	.label_2484
.label_2484:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41df80
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
	jb	.label_2486
	jmp	.label_2488
.label_2488:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2486
	jmp	.label_2487
.label_2487:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2489
	jmp	.label_2486
.label_2486:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2490
.label_2489:
	mov	byte ptr [rbp - 1], 0
.label_2490:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41dff0
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
	jb	.label_2491
	jmp	.label_2494
.label_2494:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_2492
	jmp	.label_2491
.label_2491:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2493
.label_2492:
	mov	byte ptr [rbp - 1], 0
.label_2493:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e040
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2495
	jmp	.label_2497
.label_2497:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2496
.label_2495:
	mov	byte ptr [rbp - 1], 0
.label_2496:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e070
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_2498
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2498:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e0a0
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
	jb	.label_2499
	jmp	.label_2501
.label_2501:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2502
	jmp	.label_2499
.label_2499:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2500
.label_2502:
	mov	byte ptr [rbp - 1], 0
.label_2500:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e0f0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2503
	jmp	.label_2505
.label_2505:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2504
.label_2503:
	mov	byte ptr [rbp - 1], 0
.label_2504:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e130
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2506
	jmp	.label_2508
.label_2508:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2507
.label_2506:
	mov	byte ptr [rbp - 1], 0
.label_2507:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e170
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2509
	jmp	.label_2511
.label_2511:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2510
.label_2509:
	mov	byte ptr [rbp - 1], 0
.label_2510:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e1b0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2512
	jmp	.label_2514
.label_2514:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2513
.label_2512:
	mov	byte ptr [rbp - 1], 0
.label_2513:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e1f0
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
	ja	.label_2515
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2517]]
	jmp	rcx
.label_2551:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2516
.label_2515:
	mov	byte ptr [rbp - 1], 0
.label_2516:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e240
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
	jb	.label_2518
	jmp	.label_2521
.label_2521:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2520
	jmp	.label_2518
.label_2518:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2519
.label_2520:
	mov	byte ptr [rbp - 1], 0
.label_2519:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e290
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2522
	jmp	.label_2524
.label_2524:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2523
.label_2522:
	mov	byte ptr [rbp - 1], 0
.label_2523:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e2d0
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
	jb	.label_2525
	jmp	.label_2527
.label_2527:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2525
	jmp	.label_2526
.label_2526:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2528
	jmp	.label_2525
.label_2525:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2529
.label_2528:
	mov	byte ptr [rbp - 1], 0
.label_2529:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e340

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2530
	jmp	.label_2532
.label_2532:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2531
.label_2530:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2531:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e380
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2533
	jmp	.label_2535
.label_2535:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2534
.label_2533:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2534:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e3c0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2539
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_2536
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_2536
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_2538
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2537
.label_2538:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_2540
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_2541
.label_2540:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2537
.label_2541:
	jmp	.label_2536
.label_2536:
	jmp	.label_2539
.label_2539:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2537:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e580

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x41e590

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	16
	#Procedure 0x41e5a0

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x41e5b0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
	.section	.text
	.align	16
	#Procedure 0x41e5d0

	.globl mknod
	.type mknod, @function
mknod:
	sub	rsp, 0x18
	lea	rcx, [rsp + 8]
	mov	qword ptr [rsp + 8], rdx
	mov	edx, esi
	mov	rsi, rdi
	xor	edi, edi
	call	__xmknod
	add	rsp, 0x18
	ret	
