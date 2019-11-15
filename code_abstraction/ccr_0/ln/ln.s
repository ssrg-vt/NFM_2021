	.section	.text
	.align	32
	#Procedure 0x401fa0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_14
	jmp	.label_22
.label_22:
	movabs	rdi, OFFSET FLAT:label_21
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_16
.label_14:
	movabs	rdi, OFFSET FLAT:label_18
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	r8,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_17
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_11
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_19
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_20
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x30], eax
	call	emit_backup_suffix_note
	movabs	rdi, OFFSET FLAT:label_9
	call	gettext
	movabs	rsi, OFFSET FLAT:label_10
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_15
	mov	dword ptr [rbp - 0x34], eax
	call	emit_ancillary_info
.label_16:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402150

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_23
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
	#Procedure 0x402180

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_24
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_25
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
	.align	32
	#Procedure 0x4021e0

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
.label_28:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_27
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_27:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_35
	jmp	.label_40
.label_35:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_28
.label_40:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_30
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_30:
	movabs	rdi, OFFSET FLAT:label_34
	call	gettext
	movabs	rsi, OFFSET FLAT:label_36
	movabs	rdx, OFFSET FLAT:label_29
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
	movabs	rsi, OFFSET FLAT:label_39
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_31
	movabs	rdi, OFFSET FLAT:label_32
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_31:
	movabs	rdi, OFFSET FLAT:label_26
	call	gettext
	movabs	rsi, OFFSET FLAT:label_29
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_33
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_37
	movabs	rsi, OFFSET FLAT:label_38
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
	#Procedure 0x402380

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1e0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x35], 0
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_37
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_41
	movabs	rsi, OFFSET FLAT:label_113
	mov	qword ptr [rbp - 0x108], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_41
	mov	qword ptr [rbp - 0x110], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdin
	mov	qword ptr [rbp - 0x118], rax
	call	atexit
	mov	byte ptr [byte ptr [hard_dir_link]],  0
	mov	byte ptr [byte ptr [verbose]],  0
	mov	byte ptr [byte ptr [interactive]],  0
	mov	byte ptr [byte ptr [remove_existing_files]],  0
	mov	byte ptr [byte ptr [symbolic_link]],  0
	mov	dword ptr [rbp - 0x11c], eax
.label_92:
	movabs	rdx, OFFSET FLAT:label_74
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_122
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x120], eax
	mov	dword ptr [rbp - 0x124], ecx
	je	.label_90
	jmp	.label_95
.label_95:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x128], eax
	je	.label_97
	jmp	.label_106
.label_106:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x12c], eax
	je	.label_77
	jmp	.label_63
.label_63:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x130], eax
	je	.label_73
	jmp	.label_120
.label_120:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x134], eax
	je	.label_119
	jmp	.label_50
.label_50:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x138], eax
	je	.label_79
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_118
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x140], eax
	je	.label_121
	jmp	.label_76
.label_76:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x144], eax
	je	.label_77
	jmp	.label_86
.label_86:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x148], eax
	je	.label_51
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x14c], eax
	je	.label_55
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x150], eax
	je	.label_100
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x154], eax
	je	.label_108
	jmp	.label_114
.label_114:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x158], eax
	je	.label_116
	jmp	.label_123
.label_123:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_43
	jmp	.label_81
.label_81:
	mov	eax, dword ptr [rbp - 0x120]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x160], eax
	je	.label_117
	jmp	.label_61
.label_121:
	mov	byte ptr [rbp - 0x16], 1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_65
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x28], rax
.label_65:
	jmp	.label_60
.label_77:
	mov	byte ptr [byte ptr [hard_dir_link]],  1
	jmp	.label_60
.label_51:
	mov	byte ptr [byte ptr [remove_existing_files]],  1
	mov	byte ptr [byte ptr [interactive]],  0
	jmp	.label_60
.label_55:
	mov	byte ptr [byte ptr [remove_existing_files]],  0
	mov	byte ptr [byte ptr [interactive]],  1
	jmp	.label_60
.label_73:
	mov	byte ptr [byte ptr [logical]],  1
	jmp	.label_60
.label_100:
	mov	byte ptr [byte ptr [dereference_dest_dir_symlinks]],  0
	jmp	.label_60
.label_119:
	mov	byte ptr [byte ptr [logical]],  0
	jmp	.label_60
.label_108:
	mov	byte ptr [byte ptr [relative]],  1
	jmp	.label_60
.label_116:
	mov	byte ptr [byte ptr [symbolic_link]],  1
	jmp	.label_60
.label_43:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_109
	movabs	rdi, OFFSET FLAT:label_111
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_109:
	lea	rsi, [rbp - 0xe0]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	stat
	cmp	eax, 0
	je	.label_48
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_54
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x164], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x170], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x164]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_48:
	mov	eax, dword ptr [rbp - 0xc8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_80
	movabs	rdi, OFFSET FLAT:label_67
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x178], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_80:
	jmp	.label_110
.label_110:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_60
.label_118:
	mov	byte ptr [rbp - 0x35], 1
	jmp	.label_60
.label_117:
	mov	byte ptr [byte ptr [verbose]],  1
	jmp	.label_60
.label_79:
	mov	byte ptr [rbp - 0x16], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_60
.label_97:
	xor	edi, edi
	call	usage
.label_90:
	movabs	rsi, OFFSET FLAT:label_15
	movabs	rdx, OFFSET FLAT:label_36
	movabs	r8, OFFSET FLAT:label_44
	movabs	r9, OFFSET FLAT:label_45
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_61:
	mov	edi, 1
	call	usage
.label_60:
	jmp	.label_92
.label_122:
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	add	rcx, rdx
	mov	qword ptr [rbp - 0x48], rcx
	cmp	dword ptr [rbp - 0x3c], 0
	jg	.label_84
	movabs	rdi, OFFSET FLAT:label_94
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_84:
	test	byte ptr [byte ptr [relative]],  1
	je	.label_104
	test	byte ptr [byte ptr [symbolic_link]],  1
	jne	.label_104
	movabs	rdi, OFFSET FLAT:label_115
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_104:
	test	byte ptr [byte ptr [hard_dir_link]],  1
	jne	.label_42
	call	priv_set_remove_linkdir
	mov	byte ptr [byte ptr [beware_hard_dir_link]],  0
	mov	dword ptr [rbp - 0x184], eax
.label_42:
	test	byte ptr [rbp - 0x35], 1
	je	.label_58
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_62
	movabs	rdi, OFFSET FLAT:label_64
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_62:
	cmp	dword ptr [rbp - 0x3c], 2
	je	.label_75
	cmp	dword ptr [rbp - 0x3c], 2
	jge	.label_78
	movabs	rdi, OFFSET FLAT:label_82
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x190], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x194], edi
	mov	esi, dword ptr [rbp - 0x194]
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_101
.label_78:
	movabs	rdi, OFFSET FLAT:label_103
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x1a0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x1a4], edi
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_101:
	mov	edi, 1
	call	usage
.label_75:
	jmp	.label_47
.label_58:
	cmp	dword ptr [rbp - 0x3c], 2
	jge	.label_49
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_49
	movabs	rax, OFFSET FLAT:label_56
	mov	qword ptr [rbp - 0x30], rax
	mov	dword ptr [rbp - 0x34], 0xffffff9c
	jmp	.label_57
.label_49:
	cmp	dword ptr [rbp - 0x3c], 2
	jne	.label_66
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_66
	mov	esi, 0xffffff9c
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rax + 8]
	call	atomic_link
	mov	dword ptr [rbp - 0x4c], eax
.label_66:
	cmp	dword ptr [rbp - 0x4c], 0
	jl	.label_83
	cmp	dword ptr [rbp - 0x4c], 0x11
	je	.label_83
	cmp	dword ptr [rbp - 0x4c], 0x14
	jne	.label_72
.label_83:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_91
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x1b0], rax
	jmp	.label_93
.label_91:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x1b0], rcx
.label_93:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	edi, 0xffffff9c
	mov	ecx, 0x20000
	xor	edx, edx
	mov	qword ptr [rbp - 0xe8], rax
	mov	sil,  byte ptr [byte ptr [dereference_dest_dir_symlinks]]
	test	sil, 1
	cmovne	ecx, edx
	or	ecx, 0x210000
	mov	dword ptr [rbp - 0xec], ecx
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	edx, dword ptr [rbp - 0xec]
	mov	al, 0
	call	openat_safer
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x34], eax
	cmp	ecx, dword ptr [rbp - 0x34]
	jg	.label_46
	cmp	qword ptr [rbp - 0x30], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x3c]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x3c], edx
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x30], rsi
	jmp	.label_71
.label_46:
	cmp	dword ptr [rbp - 0x3c], 2
	jne	.label_88
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_69
.label_88:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_53
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1b4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x1c0], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_69:
	jmp	.label_71
.label_71:
	jmp	.label_72
.label_72:
	jmp	.label_57
.label_57:
	jmp	.label_47
.label_47:
	test	byte ptr [rbp - 0x16], 1
	je	.label_102
	movabs	rdi, OFFSET FLAT:label_105
	call	gettext
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	xget_version
	mov	dword ptr [rbp - 0x1c4], eax
	jmp	.label_112
.label_102:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c4], eax
	jmp	.label_112
.label_112:
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	dword ptr [dword ptr [backup_type]],  eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	set_simple_backup_suffix
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_70
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x3c]
	jg	.label_52
	test	byte ptr [byte ptr [remove_existing_files]],  1
	je	.label_52
	test	byte ptr [byte ptr [symbolic_link]],  1
	jne	.label_52
	cmp	dword ptr [dword ptr [backup_type]],  3
	je	.label_52
	mov	eax, 0x3d
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash
	movabs	rcx, OFFSET FLAT:triple_compare
	movabs	r8, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [word ptr [dest_set]],  rax
	cmp	qword ptr [word ptr [dest_set]],  0
	jne	.label_87
	call	xalloc_die
.label_87:
	jmp	.label_52
.label_52:
	mov	byte ptr [rbp - 0x15], 1
	mov	dword ptr [rbp - 0xf0], 0
.label_99:
	mov	eax, dword ptr [rbp - 0xf0]
	cmp	eax, dword ptr [rbp - 0x3c]
	jge	.label_96
	mov	rdi, qword ptr [rbp - 0x30]
	movsxd	rax, dword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x1d0], rdi
	mov	rdi, rax
	call	last_component
	lea	rdx, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1d0]
	mov	rsi, rax
	call	file_name_concat
	mov	qword ptr [rbp - 0x100], rax
	mov	rdi, qword ptr [rbp - 0xf8]
	call	strip_trailing_slashes
	mov	r8d, 0xffffffff
	movsxd	rcx, dword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	byte ptr [rbp - 0x1d1], al
	call	do_link
	and	al, 1
	movzx	esi, al
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	r8d, al
	and	r8d, esi
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	rdi, qword ptr [rbp - 0x100]
	call	free
	mov	eax, dword ptr [rbp - 0xf0]
	add	eax, 1
	mov	dword ptr [rbp - 0xf0], eax
	jmp	.label_99
.label_96:
	jmp	.label_85
.label_70:
	mov	esi, 0xffffff9c
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 8]
	mov	r8d, dword ptr [rbp - 0x4c]
	call	do_link
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
.label_85:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x1e0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402dc0

	.globl atomic_link
	.type atomic_link, @function
atomic_link:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	test	byte ptr [byte ptr [symbolic_link]],  1
	je	.label_124
	test	byte ptr [byte ptr [relative]],  1
	je	.label_125
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_129
.label_125:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	call	symlinkat
	mov	edi, eax
	call	errnoize
	mov	dword ptr [rbp - 0x1c], eax
.label_129:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_128
.label_124:
	test	byte ptr [byte ptr [beware_hard_dir_link]],  1
	je	.label_126
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_127
.label_126:
	mov	edi, 0xffffff9c
	xor	eax, eax
	mov	ecx, 0x400
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0xc]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9b,  byte ptr [byte ptr [logical]]
	test	r9b, 1
	cmovne	eax, ecx
	mov	rcx, r8
	mov	r8d, eax
	call	linkat
	mov	edi, eax
	call	errnoize
	mov	dword ptr [rbp - 0x24], eax
.label_127:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x20], eax
.label_128:
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e90

	.globl do_link
	.type do_link, @function
do_link:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2b0
	mov	eax, 0x100
	xor	r9d, r9d
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	dword ptr [rbp - 0xc4], 1
	mov	qword ptr [rbp - 0xd0], 0
	mov	qword ptr [rbp - 0xd8], 0
	mov	r10b,  byte ptr [byte ptr [logical]]
	test	r10b, 1
	cmovne	eax, r9d
	mov	dword ptr [rbp - 0xdc], eax
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_168
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	call	atomic_link
	mov	dword ptr [rbp - 0x2c], eax
.label_168:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_131
	cmp	qword ptr [word ptr [dest_set]],  0
	je	.label_134
.label_131:
	test	byte ptr [byte ptr [symbolic_link]],  1
	jne	.label_134
	mov	edi, 0xffffff9c
	lea	rdx, [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0xdc]
	call	fstatat
	mov	dword ptr [rbp - 0xc4], eax
	cmp	dword ptr [rbp - 0xc4], 0
	je	.label_155
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_54
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1a4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1b0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_142
.label_155:
	jmp	.label_134
.label_134:
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_176
	test	byte ptr [byte ptr [symbolic_link]],  1
	jne	.label_179
	test	byte ptr [byte ptr [hard_dir_link]],  1
	jne	.label_179
	mov	eax, dword ptr [rbp - 0xa8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_179
	movabs	rdi, OFFSET FLAT:label_191
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1b8], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x1b8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_142
.label_179:
	test	byte ptr [byte ptr [relative]],  1
	je	.label_147
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	convert_abs_rel
	mov	qword ptr [rbp - 0xd8], rax
	mov	qword ptr [rbp - 0x10], rax
.label_147:
	mov	al, 1
	test	byte ptr [byte ptr [remove_existing_files]],  1
	mov	byte ptr [rbp - 0x1b9], al
	jne	.label_161
	mov	al, 1
	test	byte ptr [byte ptr [interactive]],  1
	mov	byte ptr [rbp - 0x1b9], al
	jne	.label_161
	cmp	dword ptr [dword ptr [backup_type]],  0
	setne	al
	mov	byte ptr [rbp - 0x1b9], al
.label_161:
	mov	al, byte ptr [rbp - 0x1b9]
	and	al, 1
	mov	byte ptr [rbp - 0xdd], al
	test	byte ptr [rbp - 0xdd], 1
	je	.label_170
	lea	rdx, [rbp - 0x170]
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	fstatat
	cmp	eax, 0
	je	.label_185
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_187
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_54
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c0], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x1c8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c0]
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_142
.label_187:
	mov	byte ptr [rbp - 0xdd], 0
	jmp	.label_154
.label_185:
	mov	eax, dword ptr [rbp - 0x158]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_152
	movabs	rdi, OFFSET FLAT:label_159
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x1d0], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x1d0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_142
.label_152:
	lea	rdx, [rbp - 0x170]
	mov	rdi,  qword ptr [word ptr [dest_set]]
	mov	rsi, qword ptr [rbp - 0x28]
	call	seen_file
	test	al, 1
	jne	.label_149
	jmp	.label_178
.label_149:
	movabs	rdi, OFFSET FLAT:label_180
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x1d8], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1e0], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x1d8]
	mov	rcx, qword ptr [rbp - 0x1e0]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_142
.label_178:
	cmp	dword ptr [dword ptr [backup_type]],  0
	je	.label_140
	test	byte ptr [byte ptr [symbolic_link]],  1
	jne	.label_145
	jmp	.label_167
.label_140:
	test	byte ptr [byte ptr [remove_existing_files]],  1
	je	.label_145
.label_167:
	cmp	dword ptr [rbp - 0xc4], 0
	je	.label_158
	lea	rsi, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	mov	dword ptr [rbp - 0xc4], eax
.label_158:
	cmp	dword ptr [rbp - 0xc4], 0
	jne	.label_164
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0x168]
	jne	.label_164
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0x170]
	jne	.label_164
	cmp	qword ptr [rbp - 0xb0], 1
	je	.label_162
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	same_nameat
	test	al, 1
	jne	.label_162
	jmp	.label_164
.label_162:
	movabs	rdi, OFFSET FLAT:label_143
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1e8], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x1f0], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x1e8]
	mov	rcx, qword ptr [rbp - 0x1f0]
	mov	r8, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_142
.label_164:
	jmp	.label_145
.label_145:
	cmp	dword ptr [rbp - 0x2c], 0
	jl	.label_172
	cmp	dword ptr [rbp - 0x2c], 0x11
	jne	.label_137
.label_172:
	test	byte ptr [byte ptr [interactive]],  1
	je	.label_138
	movabs	rdi, OFFSET FLAT:label_163
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x1f8], rax
	call	gettext
	mov	edi, 4
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x200], rax
	mov	qword ptr [rbp - 0x208], rdx
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x1f8]
	mov	rsi, qword ptr [rbp - 0x200]
	mov	rdx, qword ptr [rbp - 0x208]
	mov	rcx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x20c], eax
	call	yesno
	test	al, 1
	jne	.label_132
	mov	byte ptr [rbp - 1], 1
	jmp	.label_142
.label_132:
	jmp	.label_138
.label_138:
	cmp	dword ptr [dword ptr [backup_type]],  0
	je	.label_157
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx,  dword ptr [dword ptr [backup_type]]
	call	find_backup_file_name
	mov	qword ptr [rbp - 0xd0], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0xd0]
	call	renameat
	cmp	eax, 0
	je	.label_192
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x174], ecx
	mov	rdi, qword ptr [rbp - 0xd0]
	call	free
	mov	qword ptr [rbp - 0xd0], 0
	cmp	dword ptr [rbp - 0x174], 2
	je	.label_181
	movabs	rdi, OFFSET FLAT:label_153
	mov	esi, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 0x210], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x218], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x210]
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_142
.label_181:
	mov	byte ptr [rbp - 0xdd], 0
.label_192:
	jmp	.label_157
.label_157:
	jmp	.label_137
.label_137:
	jmp	.label_182
.label_182:
	jmp	.label_184
.label_184:
	jmp	.label_154
.label_154:
	jmp	.label_170
.label_170:
	test	byte ptr [byte ptr [symbolic_link]],  1
	je	.label_136
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rbp - 0xdd]
	mov	r8d, dword ptr [rbp - 0x2c]
	and	al, 1
	movzx	ecx, al
	call	force_symlinkat
	mov	dword ptr [rbp - 0x21c], eax
	jmp	.label_130
.label_136:
	mov	edi, 0xffffff9c
	xor	eax, eax
	mov	ecx, 0x400
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9b,  byte ptr [byte ptr [logical]]
	test	r9b, 1
	cmovne	eax, ecx
	mov	r9b, byte ptr [rbp - 0xdd]
	mov	ecx, dword ptr [rbp - 0x2c]
	and	r9b, 1
	mov	dword ptr [rbp - 0x220], ecx
	mov	rcx, r8
	mov	r8d, eax
	movzx	r9d, r9b
	mov	eax, dword ptr [rbp - 0x220]
	mov	dword ptr [rsp], eax
	call	force_linkat
	mov	dword ptr [rbp - 0x21c], eax
.label_130:
	mov	eax, dword ptr [rbp - 0x21c]
	mov	dword ptr [rbp - 0x2c], eax
.label_176:
	cmp	dword ptr [rbp - 0x2c], 0
	jg	.label_175
	test	byte ptr [byte ptr [symbolic_link]],  1
	jne	.label_166
	lea	rdx, [rbp - 0xc0]
	mov	rdi,  qword ptr [word ptr [dest_set]]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_166:
	test	byte ptr [byte ptr [verbose]],  1
	je	.label_171
	movabs	rax, OFFSET FLAT:label_37
	mov	qword ptr [rbp - 0x180], rax
	mov	qword ptr [rbp - 0x188], rax
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_141
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x190], rdx
	mov	qword ptr [rbp - 0x198], 0
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rdx, rsi
	mov	qword ptr [rbp - 0x1a0], rdx
	cmp	rcx, qword ptr [rbp - 0x1a0]
	jge	.label_186
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x228], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x228]
	add	rdi, rax
	add	rdi, 1
	call	xmalloc
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x230], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x230]
	mov	qword ptr [rbp - 0x190], rax
	mov	rdx, qword ptr [rbp - 0x190]
	add	rdx, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rdi, rdx
	call	strcpy
	mov	qword ptr [rbp - 0x238], rax
.label_186:
	mov	edi, 2
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x190]
	call	quotearg_n_style
	movabs	rdx, OFFSET FLAT:label_174
	mov	qword ptr [rbp - 0x180], rax
	mov	qword ptr [rbp - 0x188], rdx
	mov	rdi, qword ptr [rbp - 0x198]
	call	free
.label_141:
	xor	edi, edi
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x240], rdx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x248], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	r8d, 0x3d
	mov	r9d, 0x2d
	mov	r10b,  byte ptr [byte ptr [symbolic_link]]
	test	r10b, 1
	cmovne	r8d, r9d
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x250], rax
	mov	dword ptr [rbp - 0x254], r8d
	call	quotearg_n_style
	movabs	rdi, OFFSET FLAT:label_151
	mov	rsi, qword ptr [rbp - 0x248]
	mov	rdx, qword ptr [rbp - 0x240]
	mov	rcx, qword ptr [rbp - 0x250]
	mov	r8d, dword ptr [rbp - 0x254]
	mov	r9, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x258], eax
.label_171:
	jmp	.label_146
.label_175:
	mov	esi, dword ptr [rbp - 0x2c]
	test	byte ptr [byte ptr [symbolic_link]],  1
	mov	dword ptr [rbp - 0x25c], esi
	je	.label_189
	cmp	dword ptr [rbp - 0x2c], 0x24
	je	.label_169
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_169
	movabs	rdi, OFFSET FLAT:label_173
	call	gettext
	mov	qword ptr [rbp - 0x268], rax
	jmp	.label_177
.label_169:
	movabs	rdi, OFFSET FLAT:label_183
	call	gettext
	mov	qword ptr [rbp - 0x268], rax
.label_177:
	mov	rax, qword ptr [rbp - 0x268]
	mov	qword ptr [rbp - 0x270], rax
	jmp	.label_188
.label_189:
	cmp	dword ptr [rbp - 0x2c], 0x1f
	jne	.label_190
	movabs	rdi, OFFSET FLAT:label_193
	call	gettext
	mov	qword ptr [rbp - 0x278], rax
	jmp	.label_148
.label_190:
	cmp	dword ptr [rbp - 0x2c], 0x7a
	je	.label_135
	cmp	dword ptr [rbp - 0x2c], 0x11
	je	.label_135
	cmp	dword ptr [rbp - 0x2c], 0x1c
	je	.label_135
	cmp	dword ptr [rbp - 0x2c], 0x1e
	jne	.label_144
.label_135:
	movabs	rdi, OFFSET FLAT:label_150
	call	gettext
	mov	qword ptr [rbp - 0x280], rax
	jmp	.label_156
.label_144:
	movabs	rdi, OFFSET FLAT:label_133
	call	gettext
	mov	qword ptr [rbp - 0x280], rax
.label_156:
	mov	rax, qword ptr [rbp - 0x280]
	mov	qword ptr [rbp - 0x278], rax
.label_148:
	mov	rax, qword ptr [rbp - 0x278]
	mov	qword ptr [rbp - 0x270], rax
.label_188:
	mov	rax, qword ptr [rbp - 0x270]
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x288], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x290], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x25c]
	mov	rdx, qword ptr [rbp - 0x288]
	mov	rcx, qword ptr [rbp - 0x290]
	mov	r8, rax
	mov	al, 0
	call	error
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_160
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	je	.label_139
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_165
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x294], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x2a0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x294]
	mov	rdx, qword ptr [rbp - 0x2a0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_139:
	jmp	.label_160
.label_160:
	jmp	.label_146
.label_146:
	mov	rdi, qword ptr [rbp - 0xd0]
	call	free
	mov	rdi, qword ptr [rbp - 0xd8]
	call	free
	cmp	dword ptr [rbp - 0x2c], 0
	setle	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_142:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x2b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039a0

	.globl errnoize
	.type errnoize, @function
errnoize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	jge	.label_194
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 8], ecx
	jmp	.label_195
.label_194:
	xor	eax, eax
	mov	dword ptr [rbp - 8], eax
	jmp	.label_195
.label_195:
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039e0

	.globl convert_abs_rel
	.type convert_abs_rel, @function
convert_abs_rel:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_name
	mov	esi, 2
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	canonicalize_filename_mode
	mov	esi, 2
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	call	canonicalize_filename_mode
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], 0
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_196
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_196
	mov	eax, 0x1000
	mov	edi, eax
	call	xmalloc
	mov	ecx, 0x1000
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	relpath
	test	al, 1
	jne	.label_197
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	qword ptr [rbp - 0x30], 0
.label_197:
	jmp	.label_196
.label_196:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_199
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_198
.label_199:
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x38], rax
.label_198:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ad0

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
	jge	.label_205
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	call	linkat
	cmp	eax, 0
	jne	.label_209
	xor	eax, eax
	mov	dword ptr [rbp - 0x158], eax
	jmp	.label_207
.label_209:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x158], ecx
.label_207:
	mov	eax, dword ptr [rbp - 0x158]
	mov	dword ptr [rbp - 0x2c], eax
.label_205:
	test	byte ptr [rbp - 0x25], 1
	je	.label_200
	cmp	dword ptr [rbp - 0x2c], 0x11
	je	.label_202
.label_200:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_201
.label_202:
	lea	rsi, [rbp - 0x130]
	mov	rdi, qword ptr [rbp - 0x20]
	call	samedir_template
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	jne	.label_211
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_201
.label_211:
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
	je	.label_208
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], ecx
	jmp	.label_210
.label_208:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	jne	.label_204
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x15c], eax
	jmp	.label_206
.label_204:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x15c], ecx
.label_206:
	mov	eax, dword ptr [rbp - 0x15c]
	xor	edx, edx
	mov	dword ptr [rbp - 0x154], eax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	mov	dword ptr [rbp - 0x160], eax
.label_210:
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, rax
	je	.label_203
	mov	rdi, qword ptr [rbp - 0x138]
	call	free
.label_203:
	mov	eax, dword ptr [rbp - 0x154]
	mov	dword ptr [rbp - 4], eax
.label_201:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ca0

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
	ja	.label_215
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_212
.label_215:
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_214
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_213
.label_214:
	jmp	.label_212
.label_212:
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
.label_213:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d50

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
	.align	32
	#Procedure 0x403da0

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
	jge	.label_224
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	call	symlinkat
	cmp	eax, 0
	jne	.label_223
	xor	eax, eax
	mov	dword ptr [rbp - 0x150], eax
	jmp	.label_225
.label_223:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x150], ecx
.label_225:
	mov	eax, dword ptr [rbp - 0x150]
	mov	dword ptr [rbp - 0x28], eax
.label_224:
	test	byte ptr [rbp - 0x21], 1
	je	.label_219
	cmp	dword ptr [rbp - 0x28], 0x11
	je	.label_221
.label_219:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_220
.label_221:
	lea	rsi, [rbp - 0x130]
	mov	rdi, qword ptr [rbp - 0x20]
	call	samedir_template
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	jne	.label_217
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_220
.label_217:
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
	je	.label_222
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], ecx
	jmp	.label_216
.label_222:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	je	.label_218
	call	__errno_location
	xor	edx, edx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], ecx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_227
.label_218:
	mov	dword ptr [rbp - 0x14c], 0xffffffff
.label_227:
	jmp	.label_216
.label_216:
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, rax
	je	.label_226
	mov	rdi, qword ptr [rbp - 0x138]
	call	free
.label_226:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 4], eax
.label_220:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f40

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
	.align	32
	#Procedure 0x403f80

	.globl relpath
	.type relpath, @function
relpath:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rbp - 0x29], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	path_common_prefix
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	jne	.label_238
	mov	byte ptr [rbp - 1], 0
	jmp	.label_243
.label_238:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x30]
	add	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x30]
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2f
	jne	.label_246
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_246:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_244
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_244:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	je	.label_232
	movabs	rdi, OFFSET FLAT:label_235
	lea	rsi, [rbp - 0x20]
	lea	rdx, [rbp - 0x28]
	call	buffer_or_output
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	r8d, al
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
.label_230:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	je	.label_233
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_236
	movabs	rdi, OFFSET FLAT:label_242
	lea	rsi, [rbp - 0x20]
	lea	rdx, [rbp - 0x28]
	call	buffer_or_output
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	r8d, al
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
.label_236:
	jmp	.label_237
.label_237:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_230
.label_233:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	byte ptr [rax], 0
	je	.label_245
	movabs	rdi, OFFSET FLAT:label_229
	lea	rsi, [rbp - 0x20]
	lea	rdx, [rbp - 0x28]
	call	buffer_or_output
	lea	rsi, [rbp - 0x20]
	lea	rdx, [rbp - 0x28]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	r8d, al
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdi, qword ptr [rbp - 0x40]
	call	buffer_or_output
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	r8d, al
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
.label_245:
	jmp	.label_240
.label_232:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_241
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_228
.label_241:
	movabs	rax, OFFSET FLAT:label_56
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_228
.label_228:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rbp - 0x20]
	lea	rdx, [rbp - 0x28]
	mov	rdi, rax
	call	buffer_or_output
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	r8d, al
	or	r8d, ecx
	cmp	r8d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
.label_240:
	test	byte ptr [rbp - 0x29], 1
	je	.label_231
	movabs	rdi, OFFSET FLAT:label_234
	call	gettext
	xor	edi, edi
	mov	esi, 0x24
	movabs	rdx, OFFSET FLAT:label_239
	mov	rcx, rax
	mov	al, 0
	call	error
.label_231:
	mov	al, byte ptr [rbp - 0x29]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_243:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041e0

	.globl path_common_prefix
	.type path_common_prefix, @function
path_common_prefix:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rsi + 1]
	cmp	eax, 0x2f
	sete	cl
	and	cl, 1
	movzx	eax, cl
	mov	rsi, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rsi + 1]
	cmp	edx, 0x2f
	sete	cl
	and	cl, 1
	movzx	edx, cl
	cmp	eax, edx
	je	.label_247
	mov	dword ptr [rbp - 4], 0
	jmp	.label_253
.label_247:
	jmp	.label_250
.label_250:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_258
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x21], dl
.label_258:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_248
	jmp	.label_252
.label_248:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	je	.label_256
	jmp	.label_252
.label_256:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_255
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
.label_255:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0x1c]
	add	ecx, 1
	mov	dword ptr [rbp - 0x1c], ecx
	jmp	.label_250
.label_252:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_254
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_257
.label_254:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_251
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_257
.label_251:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_249
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_249
.label_257:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x20], eax
.label_249:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
.label_253:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404340

	.globl buffer_or_output
	.type buffer_or_output, @function
buffer_or_output:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	je	.label_259
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rdi]
	jb	.label_262
	mov	byte ptr [rbp - 1], 1
	jmp	.label_260
.label_262:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rdx]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rdx]
	sub	rsi, rax
	mov	qword ptr [rdx], rsi
	jmp	.label_261
.label_259:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_261:
	mov	byte ptr [rbp - 1], 0
.label_260:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043f0

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_263
	movabs	rdi, OFFSET FLAT:label_267
	call	getenv
	mov	qword ptr [rbp - 8], rax
.label_263:
	cmp	qword ptr [rbp - 8], 0
	je	.label_266
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_266
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	call	last_component
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi, rax
	jne	.label_266
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_265
.label_266:
	movabs	rax, OFFSET FLAT:label_264
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_265
.label_265:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [simple_backup_suffix]],  rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404490

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
	jne	.label_281
	xor	eax, eax
	mov	edi, eax
	call	set_simple_backup_suffix
.label_281:
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 9
	jae	.label_270
	mov	qword ptr [rbp - 0x40], 9
.label_270:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_278
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_273
.label_278:
	mov	qword ptr [rbp - 0x58], 0
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	mov	qword ptr [rbp - 0x68], 0
.label_277:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rdx, rax
	call	memcpy
	cmp	dword ptr [rbp - 0x1c], 1
	jne	.label_272
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	memcpy
	jmp	.label_276
.label_272:
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
	ja	.label_269
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_280]]
	jmp	rcx
.label_1285:
	jmp	.label_269
.label_1286:
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_271
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	memcpy
.label_271:
	jmp	.label_274
.label_274:
	mov	edx, 0x7e
	lea	r8, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x5c]
	call	check_extension
	jmp	.label_269
.label_1287:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_273
.label_269:
	jmp	.label_276
.label_276:
	test	byte ptr [rbp - 0x1d], 1
	jne	.label_268
	jmp	.label_275
.label_268:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_282
	mov	dword ptr [rbp - 0x5c], 0xffffff9c
	mov	qword ptr [rbp - 0x28], 0
.label_282:
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
	jne	.label_283
	jmp	.label_275
.label_283:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x70], ecx
	cmp	dword ptr [rbp - 0x70], 0x11
	je	.label_284
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_285
	mov	rdi, qword ptr [rbp - 0x58]
	call	closedir
	mov	dword ptr [rbp - 0x88], eax
.label_285:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x8c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_273
.label_284:
	jmp	.label_277
.label_275:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_279
	mov	rdi, qword ptr [rbp - 0x58]
	call	closedir
	mov	dword ptr [rbp - 0x90], eax
.label_279:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_273:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404780

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
	je	.label_303
	mov	rdi, qword ptr [rbp - 0x48]
	call	rewinddir
	jmp	.label_305
.label_303:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x68]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x72], cx
	mov	rdi, qword ptr [rbp - 0x68]
	mov	esi, OFFSET FLAT:label_56
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
	jne	.label_297
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_297
	mov	dword ptr [rbp - 0x3c], 3
.label_297:
	mov	rax, qword ptr [rbp - 0x68]
	mov	cx, word ptr [rbp - 0x72]
	mov	word ptr [rax], cx
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x70]
	mov	edx, OFFSET FLAT:label_302
	mov	esi, edx
	mov	rdi, rax
	call	strcpy
	cmp	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0xc0], rax
	jne	.label_286
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_290
.label_286:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
.label_305:
	jmp	.label_288
.label_288:
	mov	rdi, qword ptr [rbp - 0x48]
	call	readdir
	mov	qword ptr [rbp - 0x50], rax
	cmp	rax, 0
	je	.label_296
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x70]
	add	rdi, 4
	cmp	rax, rdi
	jae	.label_300
	jmp	.label_288
.label_300:
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
	je	.label_289
	jmp	.label_288
.label_289:
	mov	eax, 0x31
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x13
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 2
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jg	.label_294
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	jle	.label_299
.label_294:
	jmp	.label_288
.label_299:
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x89], dl
	mov	qword ptr [rbp - 0x98], 1
.label_292:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	sub	edx, 0x30
	cmp	edx, 9
	ja	.label_306
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
	jmp	.label_292
.label_306:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7e
	jne	.label_287
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	byte ptr [rcx + rax + 1], 0
	jne	.label_287
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jb	.label_293
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_287
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x20]
	add	rax, 2
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jle	.label_293
.label_287:
	jmp	.label_288
.label_293:
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
	jae	.label_291
	movabs	rax, 0x3fffffffffffffff
	cmp	rax, qword ptr [rbp - 0xa0]
	jb	.label_298
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
.label_298:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0xa0]
	call	realloc
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_304
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 3
	jmp	.label_290
.label_304:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x18], rax
.label_291:
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
.label_301:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x39
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x88]
	mov	byte ptr [rax], 0x30
	jmp	.label_301
.label_295:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	add	cl, 1
	mov	byte ptr [rax], cl
	jmp	.label_288
.label_296:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], edx
.label_290:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c40

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
	jae	.label_313
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_308
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_311
	mov	rax, qword ptr [rbp - 0x28]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x42], cx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	edx, OFFSET FLAT:label_56
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
	jmp	.label_309
.label_311:
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
.label_309:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jg	.label_307
	cmp	qword ptr [rbp - 0x40], -1
	ja	.label_307
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_312
.label_307:
	mov	rax, -1
	mov	ecx, 0xe
	mov	edx, ecx
	cmp	qword ptr [rbp - 0x40], -1
	cmovl	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
.label_312:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_308:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_313:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_310
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_314
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_314:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx + 1], 0
.label_310:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e10

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
	jne	.label_315
	call	xalloc_die
.label_315:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e60

	.globl get_version
	.type get_version, @function
get_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_316
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_318
.label_316:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_317
.label_318:
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
.label_317:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ee0

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_319
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_319
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	get_version
	mov	dword ptr [rbp - 4], eax
	jmp	.label_321
.label_319:
	movabs	rdi, OFFSET FLAT:label_320
	call	getenv
	movabs	rdi, OFFSET FLAT:label_322
	mov	rsi, rax
	call	get_version
	mov	dword ptr [rbp - 4], eax
.label_321:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f50

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0xfffffffc
	mov	dword ptr [rbp - 0x60], esi
	mov	esi, dword ptr [rbp - 0x60]
	and	esi, 4
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 3
	mov	dword ptr [rbp - 0x14], esi
	mov	esi, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x14]
	sub	ecx, 1
	and	esi, ecx
	cmp	esi, 0
	je	.label_352
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_323
.label_352:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_379
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_323
.label_379:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_393
	call	__errno_location
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 8], 0
	jmp	.label_323
.label_393:
	mov	qword ptr [rbp - 0x70], 0
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_330
	call	xgetcwd
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_341
	mov	qword ptr [rbp - 8], 0
	jmp	.label_323
.label_341:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x20]
	call	strchr
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rax, rdi
	cmp	rax, 0x1000
	jge	.label_356
	mov	eax, 0x1000
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	xrealloc
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rsi, rdi
	add	rax, rsi
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_366
.label_356:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
.label_366:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x70], 0
	jmp	.label_382
.label_330:
	mov	eax, 0x1000
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_391
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x70]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x70]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_391:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
.label_382:
	jmp	.label_339
.label_339:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	je	.label_349
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_329
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_353
.label_329:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
.label_385:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x139], cl
	je	.label_365
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x139], dl
.label_365:
	mov	al, byte ptr [rbp - 0x139]
	test	al, 1
	jne	.label_375
	jmp	.label_381
.label_375:
	jmp	.label_383
.label_383:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_385
.label_381:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 0
	jne	.label_387
	jmp	.label_349
.label_387:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 1
	jne	.label_326
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_326
	jmp	.label_333
.label_326:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 2
	jne	.label_336
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_336
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2e
	jne	.label_336
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_354
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_369:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x13a], cl
	jbe	.label_363
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x13a], dl
.label_363:
	mov	al, byte ptr [rbp - 0x13a]
	test	al, 1
	jne	.label_371
	jmp	.label_348
.label_371:
	jmp	.label_380
.label_380:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_369
.label_348:
	jmp	.label_354
.label_354:
	jmp	.label_374
.label_336:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	je	.label_388
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
.label_388:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x48]
	jb	.label_394
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	add	rax, 1
	cmp	rax, 0x1000
	jle	.label_334
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	add	rax, 1
	add	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rax
	jmp	.label_357
.label_334:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x118], rax
.label_357:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x118]
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x28], rax
.label_394:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x148], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x61], 1
	je	.label_331
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_331
	mov	dword ptr [rbp - 0xf0], 0
	jmp	.label_337
.label_331:
	test	byte ptr [rbp - 0x61], 1
	je	.label_340
	lea	rsi, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x20]
	call	stat
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_350
.label_340:
	lea	rsi, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x20]
	call	lstat
	mov	dword ptr [rbp - 0x14c], eax
.label_350:
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, 0
	je	.label_362
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_364
	jmp	.label_324
.label_364:
	cmp	dword ptr [rbp - 0x14], 1
	jne	.label_358
	movabs	rsi, OFFSET FLAT:label_229
	mov	rdi, qword ptr [rbp - 0x40]
	call	strspn
	mov	rsi, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rsi + rax]
	cmp	ecx, 0
	jne	.label_373
	cmp	dword ptr [rbp - 0x5c], 2
	je	.label_355
.label_373:
	jmp	.label_324
.label_355:
	jmp	.label_338
.label_358:
	mov	dword ptr [rbp - 0xf0], 0
.label_362:
	jmp	.label_337
.label_337:
	mov	eax, dword ptr [rbp - 0xf0]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_392
	lea	rdi, [rbp - 0x58]
	lea	rdx, [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x10]
	call	seen_triple
	test	al, 1
	jne	.label_327
	jmp	.label_344
.label_327:
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_368
	jmp	.label_338
.label_368:
	mov	dword ptr [rbp - 0x5c], 0x28
	jmp	.label_324
.label_344:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x120], rax
	cmp	qword ptr [rbp - 0x120], 0
	jne	.label_347
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_361
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_361
	jmp	.label_338
.label_361:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	jmp	.label_324
.label_347:
	mov	rdi, qword ptr [rbp - 0x120]
	call	strlen
	mov	qword ptr [rbp - 0x128], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	strlen
	mov	qword ptr [rbp - 0x130], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_384
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	cmp	rax, 0x1000
	jbe	.label_377
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_342
.label_377:
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_342
.label_342:
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_332
.label_384:
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x50]
	jbe	.label_351
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x50]
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
.label_351:
	jmp	.label_332
.label_332:
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x130]
	add	rcx, 1
	mov	rdi, rax
	mov	rdx, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x160], rax
	mov	qword ptr [rbp - 0x168], rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x120]
	movsx	r8d, byte ptr [rcx]
	cmp	r8d, 0x2f
	jne	.label_378
	mov	qword ptr [rbp - 0x138], 0
	cmp	qword ptr [rbp - 0x138], 0
	je	.label_386
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memcpy
.label_386:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_325
.label_378:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_346
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_389:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x169], cl
	jbe	.label_345
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x169], dl
.label_345:
	mov	al, byte ptr [rbp - 0x169]
	test	al, 1
	jne	.label_367
	jmp	.label_376
.label_367:
	jmp	.label_370
.label_370:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_389
.label_376:
	jmp	.label_346
.label_346:
	jmp	.label_325
.label_325:
	mov	rdi, qword ptr [rbp - 0x120]
	call	free
	jmp	.label_328
.label_392:
	mov	eax, dword ptr [rbp - 0xf0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_360
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_360
	cmp	dword ptr [rbp - 0x14], 2
	je	.label_360
	mov	dword ptr [rbp - 0x5c], 0x14
	jmp	.label_324
.label_360:
	jmp	.label_328
.label_328:
	jmp	.label_374
.label_374:
	jmp	.label_333
.label_333:
	jmp	.label_335
.label_335:
	jmp	.label_338
.label_338:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_339
.label_349:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_343
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	jne	.label_343
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_343:
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	cmp	rax, rcx
	je	.label_359
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
.label_359:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_372
	mov	rdi, qword ptr [rbp - 0x58]
	call	hash_free
.label_372:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_323
.label_324:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_390
	mov	rdi, qword ptr [rbp - 0x58]
	call	hash_free
.label_390:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x170], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x170]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_323:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405920

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdx], 0
	jne	.label_395
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash
	movabs	rcx, OFFSET FLAT:triple_compare_ino_str
	movabs	r8, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 0x28], 7
	mov	rdi, qword ptr [rbp - 0x28]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	jne	.label_398
	call	xalloc_die
.label_398:
	jmp	.label_395
.label_395:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	seen_file
	test	al, 1
	jne	.label_396
	jmp	.label_397
.label_396:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_399
.label_397:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	record_file
	mov	byte ptr [rbp - 1], 0
.label_399:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059f0
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
	#Procedure 0x405a10

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
	jbe	.label_406
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fseeko
	cmp	eax, 0
	jne	.label_401
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_401
	mov	byte ptr [rbp - 1], 1
.label_401:
	jmp	.label_406
.label_406:
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	close_stream
	cmp	eax, 0
	je	.label_408
	mov	byte ptr [rbp - 1], 1
.label_408:
	test	byte ptr [rbp - 1], 1
	je	.label_400
	movabs	rdi, OFFSET FLAT:label_403
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_405
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0x14], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_402
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_407
.label_405:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_239
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	error
.label_407:
	jmp	.label_400
.label_400:
	call	close_stdout
	test	byte ptr [rbp - 1], 1
	je	.label_404
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_404:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b40
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
	#Procedure 0x405b60
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
	#Procedure 0x405b80

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_412
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_414
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_412
.label_414:
	movabs	rdi, OFFSET FLAT:label_413
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name_0]],  0
	je	.label_410
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name_0]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_402
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_409
.label_410:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_239
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_409:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_412:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_411
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_411:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c70

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
	jne	.label_415
	call	xalloc_die
.label_415:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405cb0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_416
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_421
.label_416:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_421:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_419:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_417
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_418
	jmp	.label_417
.label_418:
	jmp	.label_420
.label_420:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_419
.label_417:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d60

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
	je	.label_422
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_422
.label_422:
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
	jne	.label_424
	mov	qword ptr [rbp - 8], 0
	jmp	.label_423
.label_424:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_425
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_425:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_423:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e30

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_431:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_426
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_431
.label_426:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_432:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_428
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_433
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_427
.label_433:
	test	byte ptr [rbp - 0x19], 1
	je	.label_430
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_430:
	jmp	.label_427
.label_427:
	jmp	.label_429
.label_429:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_432
.label_428:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ed0

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
.label_437:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_434
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_434:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_435
	jmp	.label_438
.label_435:
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_437
.label_438:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f60

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
	jne	.label_439
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_439:
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
	.align	32
	#Procedure 0x405fe0

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
	jne	.label_440
	jmp	.label_442
.label_440:
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
	jne	.label_441
	call	xalloc_die
.label_441:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_442
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	triple_free
.label_442:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406090

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
	jne	.label_443
	mov	byte ptr [rbp - 1], 0
	jmp	.label_444
.label_443:
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
.label_444:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406110

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
	jne	.label_445
	call	xalloc_die
.label_445:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406160

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
	je	.label_452
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_448
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_448
	mov	byte ptr [rbp - 0x41], 0x2f
.label_448:
	jmp	.label_447
.label_452:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_451
	mov	byte ptr [rbp - 0x41], 0x2e
.label_451:
	jmp	.label_447
.label_447:
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
	jne	.label_449
	mov	qword ptr [rbp - 8], 0
	jmp	.label_446
.label_449:
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
	je	.label_450
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_450:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_446:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062e0

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
	#Procedure 0x406300

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
	#Procedure 0x406320

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
	#Procedure 0x406340

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
.label_459:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_454
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_455
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_453:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_456
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_453
.label_456:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_458
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_458:
	jmp	.label_455
.label_455:
	jmp	.label_457
.label_457:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_459
.label_454:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4063f0
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
.label_467:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_460
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_463
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_465:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_462
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_465
.label_462:
	jmp	.label_463
.label_463:
	jmp	.label_461
.label_461:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_467
.label_460:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_464
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_464
	mov	byte ptr [rbp - 1], 1
	jmp	.label_466
.label_464:
	mov	byte ptr [rbp - 1], 0
.label_466:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064e0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_468
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
	mov	ecx, OFFSET FLAT:label_471
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:label_469
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_472]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_473]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_474]]
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
	movabs	rsi, OFFSET FLAT:label_470
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
	#Procedure 0x406600

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
	jne	.label_480
	mov	qword ptr [rbp - 8], 0
	jmp	.label_475
.label_480:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_479:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_476
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_477
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_477
	jmp	.label_481
.label_477:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_475
.label_481:
	jmp	.label_478
.label_478:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_479
.label_476:
	mov	qword ptr [rbp - 8], 0
.label_475:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066c0

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
	jb	.label_482
	call	abort
.label_482:
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
	#Procedure 0x406730
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_483
	mov	qword ptr [rbp - 8], 0
	jmp	.label_485
.label_483:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_489:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_484
	call	abort
.label_484:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_487
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_485
.label_487:
	jmp	.label_486
.label_486:
	jmp	.label_488
.label_488:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_489
.label_485:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4067c0
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
.label_491:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_494
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_494
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_490
.label_494:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_491
	jmp	.label_492
.label_492:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_495
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_493
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_490
.label_493:
	jmp	.label_492
.label_495:
	mov	qword ptr [rbp - 8], 0
.label_490:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406890
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
.label_502:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_499
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_496
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_498:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_503
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_497
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_500
.label_497:
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
	jmp	.label_498
.label_503:
	jmp	.label_496
.label_496:
	jmp	.label_501
.label_501:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_502
.label_499:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_500:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406960
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
.label_507:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_506
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_511
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_510:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_508
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_505
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_509
.label_505:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_510
.label_508:
	jmp	.label_511
.label_511:
	jmp	.label_504
.label_504:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_507
.label_506:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_509:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a30
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_513:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_512
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
	jmp	.label_513
.label_512:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a90
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_514]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_515]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ac0

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
	jne	.label_516
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_516:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_522
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_522:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_519
	mov	qword ptr [rbp - 8], 0
	jmp	.label_518
.label_519:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_523
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_523:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_520
	jmp	.label_517
.label_520:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_524
	jmp	.label_517
.label_524:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_521
	jmp	.label_517
.label_521:
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
	jmp	.label_518
.label_517:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_518:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c60

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
	#Procedure 0x406ca0

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
	#Procedure 0x406cc0

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
	jne	.label_525
	mov	byte ptr [rbp - 1], 1
	jmp	.label_528
.label_525:
	movss	xmm0,  dword ptr [dword ptr [rip + label_529]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_527
	movss	xmm0,  dword ptr [dword ptr [rip + label_526]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_527
	movss	xmm0,  dword ptr [dword ptr [rip + label_526]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_527
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_527
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_527
	movss	xmm0,  dword ptr [dword ptr [rip + label_526]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_527
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_527
	mov	byte ptr [rbp - 1], 1
	jmp	.label_528
.label_527:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_528:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406df0

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
	jne	.label_530
	movss	xmm0,  dword ptr [dword ptr [rip + label_535]]
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
	js	.label_536
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_536:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_532
	mov	qword ptr [rbp - 8], 0
	jmp	.label_531
.label_532:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_534]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_530:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_533
	mov	qword ptr [rbp - 8], 0
	jmp	.label_531
.label_533:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_531:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f10
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
.label_542:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_538
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_541
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_537:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_539
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_543
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_543:
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
	jmp	.label_537
.label_539:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_544
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_544:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_541:
	jmp	.label_540
.label_540:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_542
.label_538:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407030

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_547
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_547
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_546:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_557
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_558
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_554:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_548
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_554
.label_548:
	jmp	.label_558
.label_558:
	jmp	.label_555
.label_555:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_546
.label_557:
	jmp	.label_547
.label_547:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_549:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_552
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_553:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_545
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_553
.label_545:
	jmp	.label_556
.label_556:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_549
.label_552:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_551:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_550
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_551
.label_550:
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
	#Procedure 0x4071b0

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
	jne	.label_560
	mov	byte ptr [rbp - 1], 0
	jmp	.label_564
.label_560:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_565
	mov	byte ptr [rbp - 1], 1
	jmp	.label_564
.label_565:
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
	jne	.label_562
	mov	byte ptr [rbp - 1], 0
	jmp	.label_564
.label_562:
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
	jne	.label_561
	jmp	.label_563
.label_561:
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
	jmp	.label_564
.label_563:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_566
	jmp	.label_567
.label_566:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_559
.label_567:
	call	abort
.label_559:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_564:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4073c0

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
.label_580:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_575
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_579
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_577:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_570
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
	je	.label_578
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_571
.label_578:
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
.label_571:
	jmp	.label_572
.label_572:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_577
.label_570:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_576
	jmp	.label_569
.label_576:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_573
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_581
	mov	byte ptr [rbp - 1], 0
	jmp	.label_568
.label_581:
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
	jmp	.label_574
.label_573:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_574:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_579:
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_580
.label_575:
	mov	byte ptr [rbp - 1], 1
.label_568:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4075a0

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
	jne	.label_593
	call	abort
.label_593:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_592
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_597
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_597:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_586
.label_592:
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
	js	.label_587
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_587:
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
	js	.label_590
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_590:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_599
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
	js	.label_591
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_591:
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
	js	.label_600
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_600:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_585
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_595
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
	js	.label_596
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_596:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_584
.label_595:
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
	js	.label_594
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_594:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_584:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_535]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_588
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_586
.label_588:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_534]]
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
	jne	.label_583
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_586
.label_583:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_598
	call	abort
.label_598:
	jmp	.label_585
.label_585:
	jmp	.label_599
.label_599:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_582
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_589
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_586
.label_589:
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
	jmp	.label_586
.label_582:
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
.label_586:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a40

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
	jne	.label_613
	mov	qword ptr [rbp - 8], 0
	jmp	.label_603
.label_613:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_608
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_608
	jmp	.label_601
.label_608:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_606
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_610
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
	jmp	.label_609
.label_610:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_609:
	jmp	.label_606
.label_606:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_603
.label_601:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_612:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_602
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_607
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_607
	jmp	.label_604
.label_607:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_605
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
.label_605:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_603
.label_604:
	jmp	.label_611
.label_611:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_612
.label_602:
	mov	qword ptr [rbp - 8], 0
.label_603:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c10

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_614
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_615
.label_614:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_615:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c70

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
	jne	.label_616
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_619
.label_616:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_618
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_617
.label_618:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_617:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_619:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ce0
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
	jne	.label_621
	mov	qword ptr [rbp - 8], 0
	jmp	.label_625
.label_621:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_629
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
	js	.label_620
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_620:
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
	js	.label_628
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_628:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_634
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
	js	.label_623
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_623:
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
	js	.label_631
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_631:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_632
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_627
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
	js	.label_635
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_635:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_622
.label_627:
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
	js	.label_630
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_630:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_622:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_534]]
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
	jne	.label_626
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_624:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_633
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_624
.label_633:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_626:
	jmp	.label_632
.label_632:
	jmp	.label_634
.label_634:
	jmp	.label_629
.label_629:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_625:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4080e0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_636
	mov	qword ptr [rbp - 8], 0xa
.label_636:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_640:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_639
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_639:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_637
	jmp	.label_638
.label_637:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_640
.label_638:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408160

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
.label_644:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_643
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_643:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_642
	jmp	.label_641
.label_642:
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
	jmp	.label_644
.label_641:
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
	#Procedure 0x408220

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
	#Procedure 0x408260

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
	.align	32
	#Procedure 0x4082b0
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
	.align	32
	#Procedure 0x4082e0

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
	jne	.label_645
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_645
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	byte ptr [rbp - 0x21], al
.label_645:
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
	.align	32
	#Procedure 0x408370

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
	jne	.label_646
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_646
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x21], cl
.label_646:
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
	.align	32
	#Procedure 0x408410

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
	.align	32
	#Procedure 0x408440

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
	je	.label_647
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
.label_647:
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
	je	.label_648
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
	ja	.label_649
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_650
.label_649:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_650:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_648:
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
	#Procedure 0x408640

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
	jge	.label_653
	mov	qword ptr [rbp - 8], 0
	jmp	.label_651
.label_653:
	mov	edi, dword ptr [rbp - 0x30]
	call	fdopendir
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_654
	mov	eax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_652
.label_654:
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
.label_652:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_651:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086f0

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
	#Procedure 0x408700
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
	#Procedure 0x408710

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_658
	movabs	rdi, OFFSET FLAT:label_657
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_658:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_660
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_655
.label_660:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_655:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_662
	movabs	rsi, OFFSET FLAT:label_661
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_662
	movabs	rsi, OFFSET FLAT:label_659
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_656
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_656:
	jmp	.label_662
.label_662:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408830
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
	je	.label_663
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_664
.label_663:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_664
.label_664:
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
	#Procedure 0x4088b0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_665
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_666
.label_665:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_666
.label_666:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088f0
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
	je	.label_667
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_668
.label_667:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_668
.label_668:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408940

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
	je	.label_669
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_670
.label_669:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_670
.label_670:
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
	#Procedure 0x4089f0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_671
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_671:
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
	#Procedure 0x408a30

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
	jne	.label_672
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_672:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_674
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_673
.label_674:
	call	abort
.label_673:
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
	#Procedure 0x408aa0
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
	je	.label_675
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_676
.label_675:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_676
.label_676:
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
	#Procedure 0x408b70

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
.label_787:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_677
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_686]]
	jmp	rcx
.label_1432:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1431:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_694
	jmp	.label_697
.label_697:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_698
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_698:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_694
.label_694:
	movabs	rax, OFFSET FLAT:label_708
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_709
.label_1433:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_709
.label_1434:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_719
	movabs	rdi, OFFSET FLAT:label_683
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_727
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_719:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_734
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_757:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_739
	jmp	.label_743
.label_743:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_745
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_745:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_752
.label_752:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_757
.label_739:
	jmp	.label_734
.label_734:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_709
.label_1429:
	mov	byte ptr [rbp - 0x79], 1
.label_1428:
	mov	byte ptr [rbp - 0x7b], 1
.label_1430:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_771
	mov	byte ptr [rbp - 0x79], 1
.label_771:
	jmp	.label_772
.label_772:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_773
	jmp	.label_775
.label_775:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_776
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_776:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_773
.label_773:
	movabs	rax, OFFSET FLAT:label_727
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_709
.label_1427:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_709
.label_677:
	call	abort
.label_709:
	mov	qword ptr [rbp - 0x58], 0
.label_755:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_861
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_795
.label_861:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_795:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_807
	jmp	.label_813
.label_807:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_814
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_814
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_814
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_822
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_822
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_832
.label_822:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_832:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_814
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_814
	test	byte ptr [rbp - 0x7b], 1
	je	.label_841
	jmp	.label_678
.label_841:
	mov	byte ptr [rbp - 0x81], 1
.label_814:
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
	ja	.label_844
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_848]]
	jmp	rcx
.label_1303:
	test	byte ptr [rbp - 0x79], 1
	je	.label_849
	jmp	.label_853
.label_853:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_726
	jmp	.label_678
.label_726:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_751
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_751
	jmp	.label_860
.label_860:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_862
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_862:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_866
.label_866:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_837
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_837:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_854
.label_854:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_879
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_879:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_751:
	jmp	.label_687
.label_687:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_689
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_689:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_696
.label_696:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_700
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_700
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_700
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_700
	jmp	.label_717
.label_717:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_873
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_873:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_710
.label_710:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_730
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_730:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_700
.label_700:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_750
.label_849:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_800
	jmp	.label_753
.label_800:
	jmp	.label_750
.label_750:
	jmp	.label_684
.label_1314:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_754
	jmp	.label_760
.label_760:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_762
	jmp	.label_766
.label_754:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_767
	jmp	.label_678
.label_767:
	jmp	.label_770
.label_762:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_742
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_742
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_742
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_764
	jmp	.label_784
.label_784:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_764
	jmp	.label_790
.label_790:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_764
	jmp	.label_796
.label_796:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_764
	jmp	.label_801
.label_801:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_802
	jmp	.label_764
.label_764:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_809
	jmp	.label_678
.label_809:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_812
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_812:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_821
.label_821:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_824
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_824:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_828
.label_828:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_706
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_706:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_749
.label_749:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_868
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_868:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_840
.label_802:
	jmp	.label_840
.label_840:
	jmp	.label_742
.label_742:
	jmp	.label_770
.label_766:
	jmp	.label_770
.label_770:
	jmp	.label_684
.label_1304:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_845
.label_1305:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_845
.label_1309:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_845
.label_1307:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_806
.label_1310:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_806
.label_1306:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_806
.label_1308:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_845
.label_1315:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_851
	test	byte ptr [rbp - 0x7b], 1
	je	.label_856
	jmp	.label_678
.label_856:
	jmp	.label_703
.label_851:
	test	byte ptr [rbp - 0x79], 1
	je	.label_858
	test	byte ptr [rbp - 0x7b], 1
	je	.label_858
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_858
	jmp	.label_703
.label_858:
	jmp	.label_806
.label_806:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_865
	test	byte ptr [rbp - 0x7b], 1
	je	.label_865
	jmp	.label_678
.label_865:
	jmp	.label_845
.label_845:
	test	byte ptr [rbp - 0x79], 1
	je	.label_871
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_855
.label_871:
	jmp	.label_684
.label_1316:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_877
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_681
	jmp	.label_680
.label_877:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_681
.label_680:
	jmp	.label_684
.label_681:
	jmp	.label_685
.label_685:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_688
	jmp	.label_684
.label_688:
	jmp	.label_691
.label_691:
	mov	byte ptr [rbp - 0x83], 1
.label_1311:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_695
	test	byte ptr [rbp - 0x7b], 1
	je	.label_695
	jmp	.label_678
.label_695:
	jmp	.label_684
.label_1313:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_701
	test	byte ptr [rbp - 0x7b], 1
	je	.label_707
	jmp	.label_678
.label_707:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_715
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_715
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_715:
	jmp	.label_721
.label_721:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_723
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_723:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_729
.label_729:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_733
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_733:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_741
.label_741:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_748
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_748:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_701:
	jmp	.label_684
.label_1312:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_684
.label_844:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_761
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
	jmp	.label_704
.label_761:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_779
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_779:
	jmp	.label_785
.label_785:
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
	jne	.label_798
	jmp	.label_804
.label_798:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_805
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_804
.label_805:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_811
	mov	byte ptr [rbp - 0x91], 0
.label_829:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_815
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_815:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_826
	jmp	.label_827
.label_826:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_829
.label_827:
	jmp	.label_804
.label_811:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_835
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_835
	mov	qword ptr [rbp - 0xb8], 1
.label_859:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_839
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
	jb	.label_725
	jmp	.label_846
.label_846:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_725
	jmp	.label_874
.label_874:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_725
	jmp	.label_850
.label_850:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_852
	jmp	.label_725
.label_725:
	jmp	.label_678
.label_852:
	jmp	.label_765
.label_765:
	jmp	.label_880
.label_880:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_859
.label_839:
	jmp	.label_835
.label_835:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_867
	mov	byte ptr [rbp - 0x91], 0
.label_867:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_870
.label_870:
	jmp	.label_875
.label_875:
	jmp	.label_876
.label_876:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_785
.label_804:
	jmp	.label_704
.label_704:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_682
	test	byte ptr [rbp - 0x79], 1
	je	.label_693
	test	byte ptr [rbp - 0x91], 1
	jne	.label_693
.label_682:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_834:
	test	byte ptr [rbp - 0x79], 1
	je	.label_702
	test	byte ptr [rbp - 0x91], 1
	jne	.label_702
	jmp	.label_836
.label_836:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_711
	jmp	.label_678
.label_711:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_714
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_714
	jmp	.label_720
.label_720:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_722
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_722:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_728
.label_728:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_732
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_732:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_740
.label_740:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_746
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_746:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_714:
	jmp	.label_756
.label_756:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_758
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_758:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_763
.label_763:
	jmp	.label_768
.label_768:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_769
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_769:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_774
.label_774:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_777
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_777:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_781
.label_702:
	test	byte ptr [rbp - 0x81], 1
	je	.label_788
	jmp	.label_791
.label_791:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_793
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_793:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_788:
	jmp	.label_781
.label_781:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_803
	jmp	.label_808
.label_803:
	jmp	.label_810
.label_810:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_789
	test	byte ptr [rbp - 0x82], 1
	jne	.label_789
	jmp	.label_816
.label_816:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_817
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_817:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_820
.label_820:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_823
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_823:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_789:
	jmp	.label_830
.label_830:
	jmp	.label_831
.label_831:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_833
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_833:
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
	jmp	.label_834
.label_808:
	jmp	.label_703
.label_693:
	jmp	.label_684
.label_684:
	test	byte ptr [rbp - 0x79], 1
	je	.label_842
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_843
.label_842:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_838
.label_843:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_838
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
	jne	.label_847
.label_838:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_847
	jmp	.label_703
.label_847:
	jmp	.label_855
.label_855:
	jmp	.label_744
.label_744:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_857
	jmp	.label_678
.label_857:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_786
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_786
	jmp	.label_863
.label_863:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_864
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_864:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_869
.label_869:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_872
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_872:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_878
.label_878:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_679
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_679:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_786:
	jmp	.label_690
.label_690:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_692
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_692:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_699
.label_699:
	jmp	.label_703
.label_703:
	jmp	.label_819
.label_819:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_705
	test	byte ptr [rbp - 0x82], 1
	jne	.label_705
	jmp	.label_712
.label_712:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_713
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_713:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_718
.label_718:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_724
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_724:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_705:
	jmp	.label_735
.label_735:
	jmp	.label_736
.label_736:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_738
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_738:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_747
	mov	byte ptr [rbp - 0x7e], 0
.label_747:
	jmp	.label_753
.label_753:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_755
.label_813:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_759
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_759
	test	byte ptr [rbp - 0x7b], 1
	je	.label_759
	jmp	.label_678
.label_759:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_716
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_716
	test	byte ptr [rbp - 0x7d], 1
	je	.label_716
	test	byte ptr [rbp - 0x7e], 1
	je	.label_782
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
	jmp	.label_780
.label_782:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_783
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_783
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_787
.label_783:
	jmp	.label_792
.label_792:
	jmp	.label_716
.label_716:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_794
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_794
	jmp	.label_797
.label_797:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_799
	jmp	.label_731
.label_731:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_737
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_737:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_778
.label_778:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_797
.label_799:
	jmp	.label_794
.label_794:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_818
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_818:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_780
.label_678:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_825
	test	byte ptr [rbp - 0x79], 1
	je	.label_825
	mov	dword ptr [rbp - 0x34], 4
.label_825:
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
.label_780:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f10
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
	#Procedure 0x409f50

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
	je	.label_881
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_882
.label_881:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_882
.label_882:
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
	je	.label_883
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_883:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_887:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_886
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_887
.label_886:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_888
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_885]],  rax
.label_888:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_884
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_884:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a190

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
	#Procedure 0x40a1d0

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
	jge	.label_893
	call	abort
.label_893:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_891
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_896
	call	xalloc_die
.label_896:
	test	byte ptr [rbp - 0x31], 1
	je	.label_890
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_892
.label_890:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_892:
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
	je	.label_895
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_885]]
	mov	qword ptr [rax + 8], rcx
.label_895:
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
.label_891:
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
	ja	.label_894
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_889
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_889:
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
.label_894:
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
	#Procedure 0x40a450

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
	#Procedure 0x40a490
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
	#Procedure 0x40a4b0
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
	#Procedure 0x40a4e0

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
	#Procedure 0x40a520

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
	jne	.label_897
	call	abort
.label_897:
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
	#Procedure 0x40a590

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
	#Procedure 0x40a5d0

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
	#Procedure 0x40a600
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
	#Procedure 0x40a630

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
	#Procedure 0x40a6b0

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
	#Procedure 0x40a6e0

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
	#Procedure 0x40a700
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
	#Procedure 0x40a730

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
	#Procedure 0x40a7e0

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
	#Procedure 0x40a820

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
	#Procedure 0x40a8a0
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
	#Procedure 0x40a8d0
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
	#Procedure 0x40a910

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
	#Procedure 0x40a950
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
	#Procedure 0x40a980

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
	#Procedure 0x40a9b0

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
	#Procedure 0x40a9d0

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
	je	.label_899
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_904
.label_899:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_900
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_898
	movabs	rax, OFFSET FLAT:label_902
	movabs	rcx, OFFSET FLAT:label_903
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_904
.label_898:
	movabs	rsi, OFFSET FLAT:label_907
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_901
	movabs	rax, OFFSET FLAT:label_905
	movabs	rcx, OFFSET FLAT:label_906
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_904
.label_901:
	movabs	rax, OFFSET FLAT:label_727
	movabs	rcx, OFFSET FLAT:label_708
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_904:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aad0

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
	jge	.label_909
	cmp	dword ptr [rbp - 0x2c], 0x16
	je	.label_916
	cmp	dword ptr [rbp - 0x2c], 0x26
	je	.label_916
	cmp	dword ptr [rbp - 0x2c], 0x5f
	je	.label_916
.label_909:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_910
.label_916:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x58], 0x14
	mov	byte ptr [rbp - 0x179], 0
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_908
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0xfffffffe
	cmp	eax, 0
	je	.label_911
	mov	edi, 0x5f
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_910
.label_911:
	lea	rdx, [rbp - 0x178]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	cmp	eax, 0
	je	.label_918
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_921
.label_918:
	mov	edi, 0x11
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_910
.label_921:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_927
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_910
.label_927:
	mov	byte ptr [rbp - 0x179], 1
	jmp	.label_908
.label_908:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_924
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_914
.label_924:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_910
.label_914:
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
	jne	.label_912
	test	byte ptr [rbp - 0x52], 1
	jne	.label_912
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_910
.label_912:
	lea	rdx, [rbp - 0xe8]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	lstatat
	cmp	eax, 0
	je	.label_925
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_910
.label_925:
	test	byte ptr [rbp - 0x179], 1
	je	.label_928
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_931
	mov	edi, 2
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_910
.label_931:
	jmp	.label_913
.label_928:
	lea	rdx, [rbp - 0x178]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	cmp	eax, 0
	je	.label_917
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_920
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_922
.label_920:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_910
.label_922:
	jmp	.label_923
.label_917:
	mov	eax, dword ptr [rbp - 0x160]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_930
	mov	edi, 0x14
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_910
.label_930:
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_919
	mov	edi, 0x15
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_910
.label_919:
	jmp	.label_915
.label_915:
	jmp	.label_923
.label_923:
	jmp	.label_913
.label_913:
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
	je	.label_929
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_929:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_926
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
.label_926:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x180], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x180]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
.label_910:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae50

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
	.align	32
	#Procedure 0x40ae80

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
	.align	32
	#Procedure 0x40aec0

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
	jne	.label_934
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x181], cl
.label_934:
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0x42], al
	mov	byte ptr [rbp - 0x43], 0
	test	byte ptr [rbp - 0x42], 1
	je	.label_933
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
	je	.label_935
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_239
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	al, 0
	call	error
.label_935:
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
	je	.label_932
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_239
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	al, 0
	call	error
.label_932:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rbp - 0x160]
	mov	byte ptr [rbp - 0x182], cl
	jne	.label_936
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x168]
	sete	cl
	mov	byte ptr [rbp - 0x182], cl
.label_936:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [rbp - 0x43], al
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
.label_933:
	mov	al, byte ptr [rbp - 0x43]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b090
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
	#Procedure 0x40b0c0

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
	#Procedure 0x40b0f0

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
	jb	.label_947
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x14]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	check_x_suffix
	test	al, 1
	jne	.label_944
.label_947:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_941
.label_944:
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
	jne	.label_945
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_941
.label_945:
	mov	dword ptr [rbp - 0x44], 0
.label_949:
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x5c]
	jae	.label_940
	mov	qword ptr [rbp - 0x68], 0
.label_937:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_943
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
	jmp	.label_937
.label_943:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], 0
	jl	.label_948
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x70], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x70]
	mov	dword ptr [rax], ecx
	jmp	.label_938
.label_948:
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	je	.label_942
	mov	dword ptr [rbp - 0x48], 0xffffffff
	jmp	.label_938
.label_942:
	jmp	.label_946
.label_946:
	jmp	.label_939
.label_939:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_949
.label_940:
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_free
	mov	dword ptr [rbp - 0x74], eax
	call	__errno_location
	mov	dword ptr [rax], 0x11
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_941
.label_938:
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
.label_941:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b2f0

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:label_950
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
	.align	32
	#Procedure 0x40b340

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
	je	.label_951
	jmp	.label_953
.label_953:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x30], eax
	je	.label_955
	jmp	.label_960
.label_960:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x34], eax
	je	.label_952
	jmp	.label_959
.label_951:
	movabs	rax, OFFSET FLAT:try_file
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_954
.label_955:
	movabs	rax, OFFSET FLAT:try_dir
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_954
.label_952:
	movabs	rax, OFFSET FLAT:try_nocreate
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_954
.label_959:
	movabs	rdi, OFFSET FLAT:label_956
	movabs	rsi, OFFSET FLAT:label_957
	mov	edx, 0x147
	movabs	rcx, OFFSET FLAT:label_958
	call	__assert_fail
.label_954:
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
	.align	32
	#Procedure 0x40b420

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
	.align	32
	#Procedure 0x40b470

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
	.align	32
	#Procedure 0x40b4a0

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
	je	.label_962
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_961
.label_962:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_961:
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
	.align	32
	#Procedure 0x40b510
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
	.align	32
	#Procedure 0x40b550
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
	.align	32
	#Procedure 0x40b590

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_963
	cmp	dword ptr [rbp - 4], 2
	jg	.label_963
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
.label_963:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b5f0

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
	je	.label_978
	movabs	rsi, OFFSET FLAT:label_975
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_965
.label_978:
	movabs	rsi, OFFSET FLAT:label_969
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_965:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_976
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
	mov	ecx, OFFSET FLAT:label_968
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
	ja	.label_981
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_971]]
	jmp	rcx
.label_1367:
	jmp	.label_970
.label_1368:
	movabs	rdi, OFFSET FLAT:label_966
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
	jmp	.label_970
.label_1369:
	movabs	rdi, OFFSET FLAT:label_974
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
	jmp	.label_970
.label_1370:
	movabs	rdi, OFFSET FLAT:label_973
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
	jmp	.label_970
.label_1371:
	movabs	rdi, OFFSET FLAT:label_977
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
	jmp	.label_970
.label_1372:
	movabs	rdi, OFFSET FLAT:label_967
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
	jmp	.label_970
.label_1373:
	movabs	rdi, OFFSET FLAT:label_979
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
	jmp	.label_970
.label_1374:
	movabs	rdi, OFFSET FLAT:label_982
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
	jmp	.label_970
.label_1375:
	movabs	rdi, OFFSET FLAT:label_972
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
	jmp	.label_970
.label_1376:
	movabs	rdi, OFFSET FLAT:label_964
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
	jmp	.label_970
.label_981:
	movabs	rdi, OFFSET FLAT:label_980
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
.label_970:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bbb0
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
.label_985:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_983
	jmp	.label_984
.label_984:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_985
.label_983:
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
	#Procedure 0x40bc20

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
.label_989:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_986
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_991
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_990
.label_991:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_990:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_986:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_992
	jmp	.label_987
.label_992:
	jmp	.label_988
.label_988:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_989
.label_987:
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
	#Procedure 0x40bd30

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
	je	.label_993
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
.label_993:
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
	#Procedure 0x40bea0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_994
	call	gettext
	movabs	rsi, OFFSET FLAT:label_996
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_995
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_36
	movabs	rdx, OFFSET FLAT:label_29
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_997
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
	#Procedure 0x40bf30
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
	jae	.label_998
	call	xalloc_die
.label_998:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf80

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
	jne	.label_999
	cmp	qword ptr [rbp - 8], 0
	je	.label_999
	call	xalloc_die
.label_999:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bfc0
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
	jae	.label_1000
	call	xalloc_die
.label_1000:
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
	#Procedure 0x40c010

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1001
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1001
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1003
.label_1001:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1002
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1002
	call	xalloc_die
.label_1002:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1003:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c090

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
	jne	.label_1004
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1007
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
.label_1007:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1005
	call	xalloc_die
.label_1005:
	jmp	.label_1006
.label_1004:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1008
	call	xalloc_die
.label_1008:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1006:
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
	#Procedure 0x40c180

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
	#Procedure 0x40c1a0
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
	#Procedure 0x40c1d0
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
	#Procedure 0x40c210
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
	jb	.label_1009
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1010
.label_1009:
	call	xalloc_die
.label_1010:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c270

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
	#Procedure 0x40c2b0

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
	#Procedure 0x40c2f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1011
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_239
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c330

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1012
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1012
	call	xalloc_die
.label_1012:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c380

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
	jg	.label_1015
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1014
.label_1015:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	jne	.label_1013
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
.label_1013:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpmatch
	xor	ecx, ecx
	cmp	ecx, eax
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1014:
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
	#Procedure 0x40c420

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1016
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1017
.label_1016:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1018
.label_1017:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1018:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c480

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
	je	.label_1019
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1019:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c4c0

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
	jbe	.label_1020
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1023
.label_1020:
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
	je	.label_1022
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1021
.label_1022:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1021
.label_1021:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, rax
	mov	qword ptr [rbp - 8], rcx
.label_1023:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c560

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
	jne	.label_1024
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1024
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1024
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1026
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1025
.label_1026:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1025
.label_1024:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1025:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c630

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
	jne	.label_1027
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1027:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1028
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1028
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1028
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1029
.label_1028:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1029:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c6e0

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
	jae	.label_1036
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1031
.label_1036:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
.label_1031:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1037
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1042
.label_1037:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_1042:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x38], rax
.label_1030:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1039
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1034
.label_1039:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	call	readlink
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_1033
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1033
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
	jmp	.label_1034
.label_1033:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_1038
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1034
.label_1038:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	movabs	rdi, 0x3fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_1035
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1040
.label_1035:
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_1041
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1032
.label_1041:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1034
.label_1032:
	jmp	.label_1040
.label_1040:
	jmp	.label_1030
.label_1034:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c8a0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40c8b0

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
.label_1048:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1054
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_1047
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1052
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1046
.label_1052:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1043
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1045
.label_1043:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1050
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
	je	.label_1049
.label_1050:
	mov	byte ptr [rbp - 0x41], 1
.label_1049:
	jmp	.label_1045
.label_1045:
	jmp	.label_1051
.label_1051:
	jmp	.label_1047
.label_1047:
	jmp	.label_1053
.label_1053:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1048
.label_1054:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1044
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1046
.label_1044:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1046:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca00

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
	jne	.label_1055
	movabs	rdi, OFFSET FLAT:label_1058
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1057
.label_1055:
	movabs	rdi, OFFSET FLAT:label_1056
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1057:
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
	#Procedure 0x40caa0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1059
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
.label_1066:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1062
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1065
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_1063
.label_1065:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1060
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
	jmp	.label_1061
.label_1063:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1064
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_1061:
	jmp	.label_1067
.label_1067:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1066
.label_1062:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cbf0

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
	jl	.label_1069
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1068
.label_1069:
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
.label_1068:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cc80
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
.label_1071:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1070
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1072
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1074
.label_1072:
	jmp	.label_1073
.label_1073:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1071
.label_1070:
	mov	qword ptr [rbp - 8], 0
.label_1074:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cd20
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
	#Procedure 0x40cd60
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
	#Procedure 0x40cda0
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
	#Procedure 0x40cdd0
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
	#Procedure 0x40ce00
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
	#Procedure 0x40ce50

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
	#Procedure 0x40cea0
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
	#Procedure 0x40cee0
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
	#Procedure 0x40cf20
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
	#Procedure 0x40cf60
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
	#Procedure 0x40cfa0

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
	jne	.label_1075
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1079
.label_1075:
	jmp	.label_1076
.label_1076:
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
	jne	.label_1078
	jmp	.label_1077
.label_1078:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1076
.label_1077:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1079:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d060

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
	jne	.label_1080
	test	byte ptr [rbp - 0x13], 1
	je	.label_1082
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1080
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1082
.label_1080:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1083
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1083:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1081
.label_1082:
	mov	dword ptr [rbp - 4], 0
.label_1081:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d110

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
	je	.label_1084
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1086
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1087
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1085
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1088
.label_1087:
	mov	byte ptr [rbp - 5], 0
.label_1088:
	jmp	.label_1084
.label_1084:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d190

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
.label_1090:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_1089
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
	jmp	.label_1090
.label_1089:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d200

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
	jne	.label_1091
	movabs	rax, OFFSET FLAT:label_37
	mov	qword ptr [rbp - 8], rax
.label_1091:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1092
	movabs	rax, OFFSET FLAT:label_1093
	mov	qword ptr [rbp - 8], rax
.label_1092:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d260

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
	.align	32
	#Procedure 0x40d2b0

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
	je	.label_1095
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_new
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1094
.label_1095:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1094
.label_1094:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d310
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
	.align	32
	#Procedure 0x40d330

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
.label_1099:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1098
	mov	qword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_1101:
	mov	rdi, qword ptr [rbp - 0x48]
	call	shift_left
	add	rax, 0xff
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_1101
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	call	randread
	mov	qword ptr [rbp - 0x40], 0
.label_1102:
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
	jb	.label_1102
	jmp	.label_1098
.label_1098:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1096
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1097
.label_1096:
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
	ja	.label_1100
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
	jmp	.label_1097
.label_1100:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1099
.label_1097:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d500

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
	.align	32
	#Procedure 0x40d520

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
	.align	32
	#Procedure 0x40d550

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
	.align	32
	#Procedure 0x40d5a0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1103
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1106
.label_1103:
	mov	qword ptr [rbp - 0x20], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1108
	movabs	rsi, OFFSET FLAT:label_1104
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1110
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1106
.label_1110:
	jmp	.label_1108
.label_1108:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1105
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rdi
	jae	.label_1109
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1111
.label_1109:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_1111:
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1107
.label_1105:
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
.label_1107:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1106:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6f0

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
	.align	32
	#Procedure 0x40d750

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:label_1124
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
	jg	.label_1112
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	jae	.label_1114
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1116
.label_1114:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_1116:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_1130
	mov	qword ptr [rbp - 0x28], 0
.label_1130:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_1112:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1113
	mov	eax, 0x10
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1117
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_1121
.label_1117:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xb0], rax
.label_1121:
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
.label_1113:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1115
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1118
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_1123
.label_1118:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
.label_1123:
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
.label_1115:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1119
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1120
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_1126
.label_1120:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_1126:
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
.label_1119:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1122
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1128
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_1129
.label_1128:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xe0], rax
.label_1129:
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
.label_1122:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1125
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1127
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_1131
.label_1127:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_1131:
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
.label_1125:
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db00
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
	.align	32
	#Procedure 0x40db20
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
	.align	32
	#Procedure 0x40db40

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
	je	.label_1132
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	readsource
	jmp	.label_1133
.label_1132:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	readisaac
.label_1133:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dba0

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1137:
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
	jne	.label_1136
	jmp	.label_1134
.label_1136:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_1135
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1138
.label_1135:
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1138
.label_1138:
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
	jmp	.label_1137
.label_1134:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dc70

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
.label_1145:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1141
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
	jmp	.label_1143
.label_1141:
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
	jne	.label_1144
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1139:
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	ja	.label_1140
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
	jne	.label_1142
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	jmp	.label_1143
.label_1142:
	jmp	.label_1139
.label_1140:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_1144:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x820
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_1145
.label_1143:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ddf0

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
	je	.label_1146
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1147
.label_1146:
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1147
.label_1147:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de60

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1148
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], edi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_1149
	movabs	rdi, OFFSET FLAT:label_1151
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1152
.label_1149:
	movabs	rdi, OFFSET FLAT:label_1150
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_1152:
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
.label_1148:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40def0

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
.label_1154:
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
	jb	.label_1154
	jmp	.label_1153
.label_1153:
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
	jb	.label_1153
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
	.align	32
	#Procedure 0x40e430

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
	.align	32
	#Procedure 0x40e480

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
	.align	32
	#Procedure 0x40e4a0

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
.label_1158:
	cmp	dword ptr [rbp - 0x4c], 0x100
	jge	.label_1155
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
	jmp	.label_1158
.label_1155:
	mov	dword ptr [rbp - 0x50], 0
.label_1156:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_1157
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
	jmp	.label_1156
.label_1157:
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
	.align	32
	#Procedure 0x40eb40

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
	#Procedure 0x40eb70

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
	.align	32
	#Procedure 0x40eba0

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
	jge	.label_1159
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1162
.label_1159:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1160
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1161
.label_1160:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1161
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1161:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1163
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1163:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1162:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec70

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
	je	.label_1190
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
.label_1190:
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
	je	.label_1178
	jmp	.label_1180
.label_1180:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1182
	jmp	.label_1186
.label_1178:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1188
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_1169
.label_1188:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1169:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1183
.label_1182:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_1166
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_1168
.label_1166:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1168:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1183
.label_1186:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_1167
	jmp	.label_1193
.label_1193:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_1164
	jmp	.label_1172
.label_1172:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_1167
	jmp	.label_1175
.label_1175:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_1164
	jmp	.label_1179
.label_1179:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_1167
	jmp	.label_1184
.label_1184:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_1167
	jmp	.label_1194
.label_1194:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1164
	jmp	.label_1173
.label_1173:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1167
	jmp	.label_1176
.label_1176:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1164
	jmp	.label_1181
.label_1181:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_1167
	jmp	.label_1185
.label_1185:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1164
	jmp	.label_1165
.label_1165:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_1167
	jmp	.label_1174
.label_1174:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1167
	jmp	.label_1189
.label_1189:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_1177
	jmp	.label_1164
.label_1164:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1187
.label_1167:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_1191
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_1170
.label_1191:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_1170:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1187
.label_1177:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_1192
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1171
.label_1192:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_1171:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1187:
	jmp	.label_1183
.label_1183:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f190

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
	#Procedure 0x40f1c0

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
	jg	.label_1195
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_1200
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1196
.label_1200:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1198
.label_1196:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_1202
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1202:
	jmp	.label_1198
.label_1198:
	jmp	.label_1197
.label_1195:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_1197:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1199
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1199
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1203
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_1201
.label_1203:
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
.label_1201:
	jmp	.label_1199
.label_1199:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f2f0

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
	ja	.label_1204
	jmp	.label_1206
.label_1206:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1205
.label_1204:
	jmp	.label_1205
.label_1205:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f340
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
	jb	.label_1207
	jmp	.label_1210
.label_1210:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1207
	jmp	.label_1208
.label_1208:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1209
	jmp	.label_1207
.label_1207:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1211
.label_1209:
	mov	byte ptr [rbp - 1], 0
.label_1211:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f3b0
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
	jb	.label_1212
	jmp	.label_1215
.label_1215:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1213
	jmp	.label_1212
.label_1212:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1214
.label_1213:
	mov	byte ptr [rbp - 1], 0
.label_1214:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f400
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1216
	jmp	.label_1217
.label_1217:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1218
.label_1216:
	mov	byte ptr [rbp - 1], 0
.label_1218:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f430
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1219
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1219:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f460
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
	jb	.label_1220
	jmp	.label_1222
.label_1222:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1223
	jmp	.label_1220
.label_1220:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1221
.label_1223:
	mov	byte ptr [rbp - 1], 0
.label_1221:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f4b0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1224
	jmp	.label_1226
.label_1226:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1225
.label_1224:
	mov	byte ptr [rbp - 1], 0
.label_1225:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f4f0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1227
	jmp	.label_1229
.label_1229:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1228
.label_1227:
	mov	byte ptr [rbp - 1], 0
.label_1228:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f530
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1230
	jmp	.label_1232
.label_1232:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1231
.label_1230:
	mov	byte ptr [rbp - 1], 0
.label_1231:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f570
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1233
	jmp	.label_1235
.label_1235:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1234
.label_1233:
	mov	byte ptr [rbp - 1], 0
.label_1234:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f5b0
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
	ja	.label_1236
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1238]]
	jmp	rcx
.label_1384:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1237
.label_1236:
	mov	byte ptr [rbp - 1], 0
.label_1237:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f600
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
	jb	.label_1239
	jmp	.label_1242
.label_1242:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1241
	jmp	.label_1239
.label_1239:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1240
.label_1241:
	mov	byte ptr [rbp - 1], 0
.label_1240:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f650
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1243
	jmp	.label_1245
.label_1245:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1244
.label_1243:
	mov	byte ptr [rbp - 1], 0
.label_1244:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f690
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
	jb	.label_1246
	jmp	.label_1249
.label_1249:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1246
	jmp	.label_1247
.label_1247:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1248
	jmp	.label_1246
.label_1246:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1250
.label_1248:
	mov	byte ptr [rbp - 1], 0
.label_1250:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f700

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1251
	jmp	.label_1253
.label_1253:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1252
.label_1251:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1252:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f740
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1254
	jmp	.label_1256
.label_1256:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1255
.label_1254:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1255:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f780

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
	je	.label_1261
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_1257
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_1257
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_1260
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
	jmp	.label_1259
.label_1260:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_1262
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1258
.label_1262:
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
	jmp	.label_1259
.label_1258:
	jmp	.label_1257
.label_1257:
	jmp	.label_1261
.label_1261:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1259:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f940

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40f950

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x40f960

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
