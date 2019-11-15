	.section	.text
	.align	32
	#Procedure 0x402760

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_8
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
	jmp	.label_7
.label_8:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
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
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.16
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x58], eax
	call	emit_backup_suffix_note
	movabs	rdi, OFFSET FLAT:.str.18
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x5c], eax
	call	emit_ancillary_info
.label_7:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402a50

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.42
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
	#Procedure 0x402a80

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.44
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
	#Procedure 0x402ae0

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
.label_11:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_10
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_10:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_14
	jmp	.label_15
.label_14:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_11
.label_15:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_12
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.53
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
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
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.55
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_13
	movabs	rdi, OFFSET FLAT:.str.56
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.57
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.58
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.59
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
	#Procedure 0x402c80

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x210
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x79], 0
	mov	qword ptr [rbp - 0x88], 0
	mov	byte ptr [rbp - 0x89], 0
	mov	qword ptr [rbp - 0x98], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.21
	movabs	rsi, OFFSET FLAT:.str.22
	mov	qword ptr [rbp - 0x130], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.21
	mov	qword ptr [rbp - 0x138], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdin
	mov	qword ptr [rbp - 0x140], rax
	call	atexit
	lea	rdi, [rbp - 0x78]
	mov	byte ptr [byte ptr [selinux_enabled]],  0
	mov	dword ptr [rbp - 0x144], eax
	call	cp_option_init
.label_82:
	movabs	rdx, OFFSET FLAT:.str.23
	movabs	rcx, OFFSET FLAT:long_opts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_90
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x148], eax
	mov	dword ptr [rbp - 0x14c], ecx
	je	.label_92
	jmp	.label_19
.label_19:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x150], eax
	je	.label_98
	jmp	.label_38
.label_38:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x154], eax
	je	.label_46
	jmp	.label_105
.label_105:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x4c
	mov	dword ptr [rbp - 0x158], eax
	je	.label_107
	jmp	.label_111
.label_111:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_32
	jmp	.label_17
.label_17:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x160], eax
	je	.label_34
	jmp	.label_22
.label_22:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x164], eax
	je	.label_24
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x168], eax
	je	.label_30
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x16c], eax
	je	.label_37
	jmp	.label_42
.label_42:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x170], eax
	je	.label_43
	jmp	.label_51
.label_51:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x174], eax
	je	.label_53
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x178], eax
	je	.label_61
	jmp	.label_64
.label_64:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x17c], eax
	je	.label_66
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x180], eax
	je	.label_70
	jmp	.label_102
.label_102:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x184], eax
	je	.label_73
	jmp	.label_78
.label_78:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x188], eax
	je	.label_79
	jmp	.label_80
.label_80:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x18c], eax
	je	.label_62
	jmp	.label_85
.label_85:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x190], eax
	je	.label_34
	jmp	.label_87
.label_87:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x194], eax
	je	.label_29
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x198], eax
	je	.label_69
	jmp	.label_94
.label_94:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x19c], eax
	je	.label_95
	jmp	.label_99
.label_99:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1a0], eax
	je	.label_100
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_72
	jmp	.label_108
.label_108:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x1a8], eax
	je	.label_109
	jmp	.label_106
.label_106:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x1ac], eax
	je	.label_113
	jmp	.label_20
.label_20:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0x1b0], eax
	je	.label_54
	jmp	.label_25
.label_25:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x1b4], eax
	je	.label_27
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x1b8], eax
	je	.label_110
	jmp	.label_44
.label_44:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x1bc], eax
	je	.label_40
	jmp	.label_48
.label_48:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x1c0], eax
	je	.label_50
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x87
	mov	dword ptr [rbp - 0x1c4], eax
	je	.label_60
	jmp	.label_63
.label_63:
	mov	eax, dword ptr [rbp - 0x148]
	sub	eax, 0x88
	mov	dword ptr [rbp - 0x1c8], eax
	je	.label_65
	jmp	.label_71
.label_50:
	movabs	rdi, OFFSET FLAT:.str.24
	movabs	rdx, OFFSET FLAT:sparse_type_string
	movabs	rax, OFFSET FLAT:sparse_type
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + sparse_type]]
	mov	dword ptr [rbp - 0x6c], r10d
	jmp	.label_18
.label_40:
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_81
	mov	dword ptr [rbp - 0x40], 2
	jmp	.label_83
.label_81:
	movabs	rdi, OFFSET FLAT:.str.25
	movabs	rdx, OFFSET FLAT:reflink_type_string
	movabs	rax, OFFSET FLAT:reflink_type
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + reflink_type]]
	mov	dword ptr [rbp - 0x40], r10d
.label_83:
	jmp	.label_18
.label_43:
	mov	dword ptr [rbp - 0x74], 2
	mov	byte ptr [rbp - 0x56], 1
	mov	byte ptr [rbp - 0x5b], 1
	mov	byte ptr [rbp - 0x5a], 1
	mov	byte ptr [rbp - 0x59], 1
	mov	byte ptr [rbp - 0x54], 1
	test	byte ptr [byte ptr [selinux_enabled]],  1
	je	.label_96
	mov	byte ptr [rbp - 0x53], 1
.label_96:
	mov	byte ptr [rbp - 0x51], 1
	mov	byte ptr [rbp - 0x4f], 1
	mov	byte ptr [rbp - 0x4e], 1
	jmp	.label_18
.label_53:
	mov	byte ptr [rbp - 0x16], 1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_74
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x28], rax
.label_74:
	jmp	.label_18
.label_109:
	mov	byte ptr [rbp - 0x55], 0
	jmp	.label_18
.label_113:
	mov	byte ptr [rbp - 0x79], 1
	jmp	.label_18
.label_61:
	mov	byte ptr [rbp - 0x56], 1
	mov	dword ptr [rbp - 0x74], 2
	jmp	.label_18
.label_66:
	mov	byte ptr [rbp - 0x62], 1
	jmp	.label_18
.label_46:
	mov	dword ptr [rbp - 0x74], 3
	jmp	.label_18
.label_70:
	mov	dword ptr [rbp - 0x70], 3
	jmp	.label_18
.label_73:
	mov	byte ptr [rbp - 0x61], 1
	jmp	.label_18
.label_107:
	mov	dword ptr [rbp - 0x74], 4
	jmp	.label_18
.label_79:
	mov	dword ptr [rbp - 0x70], 2
	jmp	.label_18
.label_32:
	mov	dword ptr [rbp - 0x74], 2
	jmp	.label_18
.label_54:
	lea	rsi, [rbp - 0x78]
	xor	edx, edx
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_preserve_arg
	jmp	.label_18
.label_110:
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_77
	jmp	.label_88
.label_77:
	lea	rsi, [rbp - 0x78]
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_preserve_arg
	mov	byte ptr [rbp - 0x54], 1
	jmp	.label_18
.label_88:
	jmp	.label_62
.label_62:
	mov	byte ptr [rbp - 0x5b], 1
	mov	byte ptr [rbp - 0x5a], 1
	mov	byte ptr [rbp - 0x59], 1
	mov	byte ptr [rbp - 0x54], 1
	jmp	.label_18
.label_27:
	mov	byte ptr [byte ptr [parents_option]],  1
	jmp	.label_18
.label_34:
	mov	byte ptr [rbp - 0x4e], 1
	jmp	.label_18
.label_65:
	mov	byte ptr [rbp - 0x63], 1
	jmp	.label_18
.label_60:
	mov	byte ptr [byte ptr [remove_trailing_slashes]],  1
	jmp	.label_18
.label_29:
	mov	byte ptr [rbp - 0x4c], 1
	jmp	.label_18
.label_69:
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_76
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_76:
	lea	rsi, [rbp - 0x128]
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	stat
	cmp	eax, 0
	je	.label_86
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.27
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1cc], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1d8], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1cc]
	mov	rdx, qword ptr [rbp - 0x1d8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_86:
	mov	eax, dword ptr [rbp - 0x110]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_97
	movabs	rdi, OFFSET FLAT:.str.28
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x1e0], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_97:
	jmp	.label_112
.label_112:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_18
.label_30:
	mov	byte ptr [rbp - 0x89], 1
	jmp	.label_18
.label_95:
	mov	byte ptr [rbp - 0x4b], 1
	jmp	.label_18
.label_100:
	mov	byte ptr [rbp - 0x4a], 1
	jmp	.label_18
.label_72:
	mov	byte ptr [rbp - 0x5c], 1
	jmp	.label_18
.label_37:
	test	byte ptr [byte ptr [selinux_enabled]],  1
	je	.label_26
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_31
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_33
.label_31:
	mov	byte ptr [rbp - 0x57], 1
.label_33:
	jmp	.label_45
.label_26:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_56
	movabs	rdi, OFFSET FLAT:.str.29
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_56:
	jmp	.label_45
.label_45:
	jmp	.label_18
.label_24:
	mov	byte ptr [rbp - 0x16], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_18
.label_98:
	xor	edi, edi
	call	usage
.label_92:
	movabs	rsi, OFFSET FLAT:.str.19
	movabs	rdx, OFFSET FLAT:.str.17_0
	movabs	r8, OFFSET FLAT:.str.31
	movabs	r9, OFFSET FLAT:.str.32
	movabs	rax, OFFSET FLAT:.str.33
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x1e8], rdi
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_71:
	mov	edi, 1
	call	usage
.label_18:
	jmp	.label_82
.label_90:
	test	byte ptr [rbp - 0x61], 1
	je	.label_84
	test	byte ptr [rbp - 0x4c], 1
	je	.label_84
	movabs	rdi, OFFSET FLAT:.str.34
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
	cmp	dword ptr [rbp - 0x70], 2
	jne	.label_91
	mov	byte ptr [rbp - 0x4b], 0
.label_91:
	test	byte ptr [rbp - 0x16], 1
	je	.label_93
	cmp	dword ptr [rbp - 0x70], 2
	jne	.label_93
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_93:
	cmp	dword ptr [rbp - 0x40], 2
	jne	.label_104
	cmp	dword ptr [rbp - 0x6c], 2
	je	.label_104
	movabs	rdi, OFFSET FLAT:.str.36
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_104:
	test	byte ptr [rbp - 0x16], 1
	je	.label_16
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	xget_version
	mov	dword ptr [rbp - 0x1ec], eax
	jmp	.label_23
.label_16:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1ec], eax
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0x1ec]
	mov	dword ptr [rbp - 0x78], eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	set_simple_backup_suffix
	cmp	dword ptr [rbp - 0x74], 1
	jne	.label_47
	test	byte ptr [rbp - 0x4e], 1
	je	.label_36
	test	byte ptr [rbp - 0x61], 1
	jne	.label_36
	mov	dword ptr [rbp - 0x74], 2
	jmp	.label_41
.label_36:
	mov	dword ptr [rbp - 0x74], 4
.label_41:
	jmp	.label_47
.label_47:
	test	byte ptr [rbp - 0x4e], 1
	je	.label_49
	mov	al, byte ptr [rbp - 0x79]
	and	al, 1
	mov	byte ptr [rbp - 0x64], al
.label_49:
	test	byte ptr [rbp - 0x57], 1
	jne	.label_55
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_58
.label_55:
	test	byte ptr [rbp - 0x52], 1
	jne	.label_58
	mov	byte ptr [rbp - 0x53], 0
.label_58:
	test	byte ptr [rbp - 0x53], 1
	je	.label_21
	test	byte ptr [rbp - 0x57], 1
	jne	.label_67
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_21
.label_67:
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_21:
	test	byte ptr [rbp - 0x52], 1
	je	.label_75
	test	byte ptr [byte ptr [selinux_enabled]],  1
	jne	.label_75
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_75:
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_39
	mov	rdi, qword ptr [rbp - 0x98]
	call	se_const
	mov	rdi, rax
	call	setfscreatecon
	cmp	eax, 0
	jge	.label_39
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1f0], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x1f8], rax
	call	quote
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x1f8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_39:
	test	byte ptr [rbp - 0x50], 1
	je	.label_101
	movabs	rdi, OFFSET FLAT:.str.41
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_101:
	call	hash_init
	lea	r8, [rbp - 0x78]
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x88]
	mov	sil, byte ptr [rbp - 0x89]
	and	sil, 1
	mov	edi, eax
	mov	byte ptr [rbp - 0x1f9], sil
	mov	rsi, rcx
	mov	r9b, byte ptr [rbp - 0x1f9]
	movzx	ecx, r9b
	call	do_copy
	mov	ecx, 1
	xor	edi, edi
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	al, byte ptr [rbp - 0x15]
	test	al, 1
	cmovne	ecx, edi
	mov	eax, ecx
	add	rsp, 0x210
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403850

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	cp_options_default
	movabs	rdi, OFFSET FLAT:.str.60
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x14], 1
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x15], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x16], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x17], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 8], 4
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x19], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1d], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x22], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1e], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1f], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x25], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x26], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x21], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x27], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x29], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x23], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x24], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2a], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0xc], 2
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2c], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2b], 0
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2f], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2d], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x2e], 0
	call	getenv
	cmp	rax, 0
	setne	cl
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rax + 0x30], cl
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x40], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x48], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039b0

	.globl decode_preserve_arg
	.type decode_preserve_arg, @function
decode_preserve_arg:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_114:
	mov	esi, 0x2c
	mov	rdi, qword ptr [rbp - 0x28]
	call	strchr
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_116
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rax], 0
.label_116:
	mov	al, byte ptr [rbp - 0x11]
	mov	ecx, OFFSET FLAT:.str.99
	mov	edx, ecx
	mov	ecx, OFFSET FLAT:.str.100
	mov	esi, ecx
	test	al, 1
	cmovne	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_args
	mov	edi, ecx
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_vals
	mov	r8d, 4
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x40]
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + decode_preserve_arg.preserve_vals]]
	mov	dword ptr [rbp - 0x34], r10d
	mov	r10d, dword ptr [rbp - 0x34]
	mov	eax, r10d
	mov	rcx, rax
	sub	rcx, 6
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rcx
	ja	.label_117
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_119]]
	jmp	rcx
.label_2020:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x1e], al
	mov	al, byte ptr [rbp - 0x11]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x20], al
	jmp	.label_115
.label_2021:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x1f], al
	jmp	.label_115
.label_2022:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x1d], al
	jmp	.label_115
.label_2023:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x22], al
	jmp	.label_115
.label_2024:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x26], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x25], al
	jmp	.label_115
.label_2025:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x27], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x28], al
	jmp	.label_115
.label_2026:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x1e], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x1f], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x1d], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x22], al
	mov	al, byte ptr [rbp - 0x11]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x20], al
	test	byte ptr [byte ptr [selinux_enabled]],  1
	je	.label_118
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x25], al
.label_118:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x27], al
	jmp	.label_115
.label_117:
	call	abort
.label_115:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_114
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bb0

	.globl se_const
	.type se_const, @function
se_const:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bc0

	.globl do_copy
	.type do_copy, @function
do_copy:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1d0
	mov	al, cl
	mov	r9b, 1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	qword ptr [rbp - 0x28], r8
	mov	byte ptr [rbp - 0xb9], 0
	mov	byte ptr [rbp - 0xba], 1
	mov	rdx, qword ptr [rbp - 0x28]
	test	byte ptr [rdx + 0x15], 1
	mov	byte ptr [rbp - 0x162], r9b
	jne	.label_148
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x16]
	mov	byte ptr [rbp - 0x162], cl
.label_148:
	mov	al, byte ptr [rbp - 0x162]
	and	al, 1
	mov	byte ptr [rbp - 0xbb], al
	mov	ecx, dword ptr [rbp - 4]
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	cmp	ecx, edx
	jg	.label_123
	cmp	dword ptr [rbp - 4], 0
	jg	.label_127
	movabs	rdi, OFFSET FLAT:.str.101
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_133
.label_127:
	movabs	rdi, OFFSET FLAT:.str.102
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x170], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x174], edi
	mov	esi, dword ptr [rbp - 0x174]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_133:
	mov	edi, 1
	call	usage
.label_123:
	test	byte ptr [rbp - 0x19], 1
	je	.label_146
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_149
	movabs	rdi, OFFSET FLAT:.str.103
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_149:
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_142
	movabs	rdi, OFFSET FLAT:.str.104
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x180], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x184], edi
	mov	esi, dword ptr [rbp - 0x184]
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_142:
	lea	rsi, [rbp - 0xb8]
	lea	rdx, [rbp - 0xb9]
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + rcx*8]
	mov	r8b, byte ptr [rbp - 0xbb]
	and	r8b, 1
	movzx	ecx, r8b
	call	target_directory_operand
	and	al, 1
	mov	byte ptr [rbp - 0xbc], al
	jmp	.label_136
.label_146:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_134
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_141
	lea	rsi, [rbp - 0xb8]
	lea	rdx, [rbp - 0xb9]
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + rcx*8]
	mov	r8b, byte ptr [rbp - 0xbb]
	and	r8b, 1
	movzx	ecx, r8b
	call	target_directory_operand
	test	al, 1
	jne	.label_151
	jmp	.label_141
.label_151:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_130
.label_141:
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_120
	movabs	rdi, OFFSET FLAT:.str.28
	call	gettext
	mov	edi, 4
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0x190], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_120:
	jmp	.label_130
.label_130:
	jmp	.label_134
.label_134:
	jmp	.label_136
.label_136:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_138
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_139
	mov	rdi, qword ptr [rbp - 0x28]
	call	dest_info_init
	mov	rdi, qword ptr [rbp - 0x28]
	call	src_info_init
.label_139:
	mov	dword ptr [rbp - 0xc0], 0
.label_128:
	mov	eax, dword ptr [rbp - 0xc0]
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_143
	mov	byte ptr [rbp - 0xc9], 1
	mov	qword ptr [rbp - 0xe0], 0
	movsxd	rax, dword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xe8], rax
	test	byte ptr [byte ptr [remove_trailing_slashes]],  1
	je	.label_144
	mov	rdi, qword ptr [rbp - 0xe8]
	call	strip_trailing_slashes
	mov	byte ptr [rbp - 0x191], al
.label_144:
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_153
	jmp	.label_140
.label_140:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rdi, rax
	call	strlen
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0x100], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	qword ptr [rbp - 0x108], rdi
	mov	rax, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1a0], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x110], rax
	mov	rdx, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rdi, qword ptr [rbp - 0xf0]
	call	strip_trailing_slashes
	lea	rdx, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	byte ptr [rbp - 0x1a1], al
	call	file_name_concat
	lea	rcx, [rbp - 0xd8]
	lea	r8, [rbp - 0xb9]
	xor	r9d, r9d
	mov	edx, r9d
	movabs	rsi, OFFSET FLAT:.str.105
	mov	qword ptr [rbp - 0xc8], rax
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	r10, qword ptr [rbp - 0xc8]
	sub	rax, r10
	mov	r10, qword ptr [rbp - 0x28]
	mov	r11b, byte ptr [r10 + 0x2e]
	test	r11b, 1
	cmovne	rdx, rsi
	mov	r9, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	make_dir_parents_private
	and	al, 1
	mov	byte ptr [rbp - 0xc9], al
	jmp	.label_121
.label_153:
	jmp	.label_122
.label_122:
	mov	rdi, qword ptr [rbp - 0xe8]
	call	last_component
	mov	qword ptr [rbp - 0x120], rax
	mov	rdi, rax
	call	strlen
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0x128], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	qword ptr [rbp - 0x130], rdi
	mov	rax, qword ptr [rbp - 0x130]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1b0], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	qword ptr [rbp - 0x138], rax
	mov	rdx, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x118], rdx
	mov	rdi, qword ptr [rbp - 0x118]
	call	strip_trailing_slashes
	mov	rdi, qword ptr [rbp - 0x118]
	mov	ecx, OFFSET FLAT:.str.106
	mov	esi, ecx
	mov	byte ptr [rbp - 0x1b1], al
	call	strcmp
	cmp	eax, 0
	jne	.label_147
	mov	rdi, qword ptr [rbp - 0x18]
	call	xstrdup
	mov	qword ptr [rbp - 0x1c0], rax
	jmp	.label_150
.label_147:
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x118]
	call	file_name_concat
	mov	qword ptr [rbp - 0x1c0], rax
.label_150:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0xc8], rax
.label_121:
	test	byte ptr [rbp - 0xc9], 1
	jne	.label_125
	mov	byte ptr [rbp - 0xba], 0
	jmp	.label_137
.label_125:
	lea	r8, [rbp - 0x139]
	xor	eax, eax
	mov	r9d, eax
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	cl, byte ptr [rbp - 0xb9]
	mov	rdx, qword ptr [rbp - 0x28]
	and	cl, 1
	movzx	eax, cl
	mov	qword ptr [rbp - 0x1c8], rdx
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x1c8]
	call	copy
	and	al, 1
	movzx	edx, al
	mov	al, byte ptr [rbp - 0xba]
	and	al, 1
	movzx	r10d, al
	and	r10d, edx
	cmp	r10d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xba], al
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_131
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0xc8]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	re_protect
	and	al, 1
	movzx	r8d, al
	mov	al, byte ptr [rbp - 0xba]
	and	al, 1
	movzx	r9d, al
	and	r9d, r8d
	cmp	r9d, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xba], al
.label_131:
	jmp	.label_137
.label_137:
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_126
	jmp	.label_124
.label_124:
	cmp	qword ptr [rbp - 0xd8], 0
	je	.label_152
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax + 0xa0]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	rdi, rax
	call	free
	jmp	.label_124
.label_152:
	jmp	.label_126
.label_126:
	mov	rdi, qword ptr [rbp - 0xc8]
	call	free
	mov	eax, dword ptr [rbp - 0xc0]
	add	eax, 1
	mov	dword ptr [rbp - 0xc0], eax
	jmp	.label_128
.label_143:
	jmp	.label_132
.label_138:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x160], rax
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_135
	movabs	rdi, OFFSET FLAT:.str.107
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_135:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x16], 1
	je	.label_145
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0
	je	.label_145
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rsi, qword ptr [rbp - 0x160]
	call	strcmp
	cmp	eax, 0
	jne	.label_145
	test	byte ptr [rbp - 0xb9], 1
	jne	.label_145
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_145
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x160]
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax]
	call	find_backup_file_name
	movabs	rsi, OFFSET FLAT:do_copy.x_tmp
	mov	rcx, rsi
	mov	edx, 0x50
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x1d0], rsi
	mov	rsi, rax
	call	memcpy
	mov	dword ptr [dword ptr [do_copy.x_tmp]],  0
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_129
.label_145:
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x150], rax
.label_129:
	xor	edx, edx
	lea	r8, [rbp - 0x161]
	xor	eax, eax
	mov	r9d, eax
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rsi, qword ptr [rbp - 0x150]
	mov	rcx, qword ptr [rbp - 0x28]
	call	copy
	and	al, 1
	mov	byte ptr [rbp - 0xba], al
.label_132:
	mov	al, byte ptr [rbp - 0xba]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043c0

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, cl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	jne	.label_157
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_159
.label_157:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
.label_159:
	mov	eax, dword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x29], dl
	jne	.label_154
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	sete	dl
	mov	byte ptr [rbp - 0x29], dl
.label_154:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	cmp	dword ptr [rbp - 0x20], 0
	je	.label_160
	cmp	dword ptr [rbp - 0x20], 2
	jne	.label_156
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 1
	jmp	.label_155
.label_156:
	test	byte ptr [rbp - 0x19], 1
	je	.label_161
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x18], 0
	jmp	.label_158
.label_161:
	movabs	rdi, OFFSET FLAT:.str.27
	mov	esi, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x30], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_158:
	jmp	.label_155
.label_155:
	jmp	.label_160
.label_160:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044d0

	.globl make_dir_parents_private
	.type make_dir_parents_private, @function
make_dir_parents_private:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x260
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rdi, rax
	call	strlen
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0xf8], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	qword ptr [rbp - 0x100], rdi
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x1c8], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x108], rax
	mov	rdx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0xd0], rdx
	lea	rsi, [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, rcx
	mov	qword ptr [rbp - 0xd8], rax
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x1d0], rsi
	call	dir_len
	mov	qword ptr [rbp - 0xe8], rax
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	memcpy
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x1d0]
	call	stat
	cmp	eax, 0
	je	.label_162
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x110], rax
.label_166:
	mov	rax, qword ptr [rbp - 0x110]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_170
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_166
.label_170:
	jmp	.label_180
.label_180:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x110]
	call	strchr
	mov	qword ptr [rbp - 0x110], rax
	cmp	rax, 0
	je	.label_183
	lea	rsi, [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x110]
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0xd0]
	call	stat
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x119], cl
	test	byte ptr [rbp - 0x119], 1
	jne	.label_186
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x1d], 1
	jne	.label_186
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_186
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x1f], 1
	je	.label_195
.label_186:
	lea	rsi, [rbp - 0x1b0]
	mov	rdi, qword ptr [rbp - 0xd8]
	call	stat
	cmp	eax, 0
	je	.label_182
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], ecx
	jmp	.label_188
.label_182:
	mov	eax, 0x14
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x198]
	and	edx, 0xf000
	cmp	edx, 0x4000
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1d4], eax
.label_188:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	dword ptr [rbp - 0x1b4], eax
	cmp	dword ptr [rbp - 0x1b4], 0
	je	.label_172
	movabs	rdi, OFFSET FLAT:.str.108
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	dword ptr [rbp - 0x1d8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x1e0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1d8]
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_177
.label_172:
	mov	eax, 0xa8
	mov	edi, eax
	call	xmalloc
	mov	ecx, 0x90
	mov	edx, ecx
	lea	rdi, [rbp - 0x1b0]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x1e8], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x1e8]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x110]
	mov	rdx, qword ptr [rbp - 0xd0]
	sub	rax, rdx
	mov	rdx, qword ptr [rbp - 0x118]
	mov	qword ptr [rdx + 0x98], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	byte ptr [rax + 0x90], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	qword ptr [rdx + 0xa0], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx], rax
.label_195:
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0xd0]
	test	byte ptr [rbp - 0x119], 1
	mov	qword ptr [rbp - 0x1f0], rdi
	mov	qword ptr [rbp - 0x1f8], rsi
	je	.label_189
	mov	rax, qword ptr [rbp - 0x118]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x1fc], ecx
	jmp	.label_179
.label_189:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1fc], eax
	jmp	.label_179
.label_179:
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	cl, byte ptr [rbp - 0x119]
	mov	r8, qword ptr [rbp - 0x38]
	and	cl, 1
	mov	rdi, qword ptr [rbp - 0x1f0]
	mov	rsi, qword ptr [rbp - 0x1f8]
	mov	edx, eax
	movzx	ecx, cl
	call	set_process_security_ctx
	test	al, 1
	jne	.label_187
	mov	byte ptr [rbp - 1], 0
	jmp	.label_177
.label_187:
	test	byte ptr [rbp - 0x119], 1
	je	.label_190
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x118]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x1b8], ecx
	mov	ecx, dword ptr [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x1d], 1
	mov	dword ptr [rbp - 0x200], ecx
	je	.label_192
	mov	eax, 0x3f
	mov	dword ptr [rbp - 0x204], eax
	jmp	.label_198
.label_192:
	xor	eax, eax
	mov	ecx, 0x12
	mov	rdx, qword ptr [rbp - 0x38]
	mov	sil, byte ptr [rdx + 0x1e]
	test	sil, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x204], eax
.label_198:
	mov	eax, dword ptr [rbp - 0x204]
	mov	ecx, dword ptr [rbp - 0x200]
	and	ecx, eax
	mov	dword ptr [rbp - 0x1bc], ecx
	mov	rdx, qword ptr [rbp - 0x38]
	test	byte ptr [rdx + 0x20], 1
	je	.label_165
	mov	eax, 0x1ff
	mov	dword ptr [rbp - 0x208], eax
	jmp	.label_176
.label_165:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	dword ptr [rbp - 0x208], eax
.label_176:
	mov	eax, dword ptr [rbp - 0x208]
	mov	dword ptr [rbp - 0x1c0], eax
	mov	eax, dword ptr [rbp - 0x1bc]
	xor	eax, 0xffffffff
	and	eax, 0xfff
	and	eax, dword ptr [rbp - 0x1c0]
	mov	dword ptr [rbp - 0x1c0], eax
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	esi, dword ptr [rbp - 0x1c0]
	call	mkdir
	cmp	eax, 0
	je	.label_185
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.109
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x20c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x218], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x20c]
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_177
.label_185:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_199
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x21c], eax
.label_199:
	jmp	.label_164
.label_164:
	lea	rsi, [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0xd0]
	call	__lstat
	cmp	eax, 0
	je	.label_174
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.108
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x220], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x228], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x220]
	mov	rdx, qword ptr [rbp - 0x228]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_177
.label_174:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_163
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	ecx, dword ptr [rbp - 0xb0]
	xor	ecx, 0xffffffff
	and	eax, ecx
	cmp	eax, 0
	je	.label_171
	call	cached_umask
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x1bc]
	mov	dword ptr [rbp - 0x1bc], eax
.label_171:
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	ecx, dword ptr [rbp - 0xb0]
	xor	ecx, 0xffffffff
	and	eax, ecx
	cmp	eax, 0
	jne	.label_194
	mov	eax, dword ptr [rbp - 0xb0]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_196
.label_194:
	mov	eax, dword ptr [rbp - 0xb0]
	or	eax, dword ptr [rbp - 0x1bc]
	mov	rcx, qword ptr [rbp - 0x118]
	mov	dword ptr [rcx + 0x18], eax
	mov	rcx, qword ptr [rbp - 0x118]
	mov	byte ptr [rcx + 0x90], 1
.label_196:
	jmp	.label_163
.label_163:
	mov	eax, dword ptr [rbp - 0xb0]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_168
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	eax, dword ptr [rbp - 0xb0]
	or	eax, 0x1c0
	mov	esi, eax
	call	chmod
	cmp	eax, 0
	je	.label_181
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x22c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x238], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x22c]
	mov	rdx, qword ptr [rbp - 0x238]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_177
.label_181:
	jmp	.label_168
.label_168:
	jmp	.label_167
.label_190:
	mov	eax, dword ptr [rbp - 0xb0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_169
	movabs	rdi, OFFSET FLAT:.str.111
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x240], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x244], edi
	mov	esi, dword ptr [rbp - 0x244]
	mov	rdx, qword ptr [rbp - 0x240]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_177
.label_169:
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	jmp	.label_167
.label_167:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax], 1
	jne	.label_173
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x21], 1
	jne	.label_175
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x25], 1
	je	.label_173
.label_175:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x38]
	and	cl, 1
	movzx	esi, cl
	mov	rcx, rax
	call	set_file_security_ctx
	test	al, 1
	jne	.label_184
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x26], 1
	je	.label_184
	mov	byte ptr [rbp - 1], 0
	jmp	.label_177
.label_184:
	jmp	.label_173
.label_173:
	mov	rax, qword ptr [rbp - 0x110]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x110], rcx
	mov	byte ptr [rax], 0x2f
.label_193:
	mov	rax, qword ptr [rbp - 0x110]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_191
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_193
.label_191:
	jmp	.label_180
.label_183:
	jmp	.label_178
.label_162:
	mov	eax, dword ptr [rbp - 0xb0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_197
	movabs	rdi, OFFSET FLAT:.str.111
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x250], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x254], edi
	mov	esi, dword ptr [rbp - 0x254]
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_177
.label_197:
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	jmp	.label_178
.label_178:
	mov	byte ptr [rbp - 1], 1
.label_177:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d60

	.globl re_protect
	.type re_protect, @function
re_protect:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, rax
	call	strlen
	mov	rdi, rax
	inc	rdi
	mov	qword ptr [rbp - 0x50], rdi
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	qword ptr [rbp - 0x58], rdi
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xb0], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_209:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_210
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x98]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1f], 1
	je	.label_208
	mov	rdi, qword ptr [rbp - 0x30]
	call	get_stat_atime
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x88], rdx
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	get_stat_mtime
	lea	rsi, [rbp - 0x80]
	mov	qword ptr [rbp - 0xa0], rax
	mov	qword ptr [rbp - 0x98], rdx
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	utimens
	cmp	eax, 0
	je	.label_212
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.112
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xb4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xc0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_205
.label_212:
	jmp	.label_208
.label_208:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1d], 1
	je	.label_201
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rax + 0x1c]
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x20]
	call	lchown
	cmp	eax, 0
	je	.label_200
	mov	rdi, qword ptr [rbp - 0x28]
	call	chown_failure_ok
	test	al, 1
	jne	.label_203
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.46
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_205
.label_203:
	mov	esi, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x20]
	call	lchown
	mov	dword ptr [rbp - 0xa4], eax
.label_200:
	jmp	.label_201
.label_201:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1e], 1
	je	.label_202
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rcx + 0x18]
	mov	esi, eax
	mov	ecx, eax
	call	copy_acl
	cmp	eax, 0
	je	.label_204
	mov	byte ptr [rbp - 1], 0
	jmp	.label_205
.label_204:
	jmp	.label_206
.label_202:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x90], 1
	je	.label_207
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rax + 0x18]
	call	chmod
	cmp	eax, 0
	je	.label_211
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.114
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xe0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xd4]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_205
.label_211:
	jmp	.label_207
.label_207:
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x98]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx + rax], 0x2f
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0xa0]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_209
.label_210:
	mov	byte ptr [rbp - 1], 1
.label_205:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050a0

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
	je	.label_214
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x23], 1
	mov	byte ptr [rbp - 0x39], al
	je	.label_223
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x26]
	mov	byte ptr [rbp - 0x39], cl
.label_223:
	mov	al, byte ptr [rbp - 0x39]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	test	byte ptr [rbp - 0x29], 1
	mov	byte ptr [rbp - 0x3a], dl
	jne	.label_228
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x3a], cl
.label_228:
	mov	al, byte ptr [rbp - 0x3a]
	lea	rsi, [rbp - 0x38]
	and	al, 1
	mov	byte ptr [rbp - 0x2a], al
	mov	rdi, qword ptr [rbp - 0x10]
	call	lgetfilecon
	xor	ecx, ecx
	cmp	ecx, eax
	jg	.label_215
	mov	rdi, qword ptr [rbp - 0x38]
	call	setfscreatecon
	cmp	eax, 0
	jge	.label_216
	test	byte ptr [rbp - 0x29], 1
	jne	.label_220
	test	byte ptr [rbp - 0x2a], 1
	je	.label_222
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_222
.label_220:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
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
.label_222:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_221
	mov	rdi, qword ptr [rbp - 0x38]
	call	freecon
	mov	byte ptr [rbp - 1], 0
	jmp	.label_217
.label_221:
	jmp	.label_216
.label_216:
	mov	rdi, qword ptr [rbp - 0x38]
	call	freecon
	jmp	.label_224
.label_215:
	test	byte ptr [rbp - 0x29], 1
	jne	.label_225
	test	byte ptr [rbp - 0x2a], 1
	je	.label_227
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_227
.label_225:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_0
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
.label_227:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_218
	mov	byte ptr [rbp - 1], 0
	jmp	.label_217
.label_218:
	jmp	.label_224
.label_224:
	jmp	.label_219
.label_214:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	je	.label_226
	test	byte ptr [rbp - 0x1d], 1
	je	.label_213
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	defaultcon
	cmp	eax, 0
	jge	.label_213
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable_ctx_err
	test	al, 1
	jne	.label_213
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.2_0
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
.label_213:
	jmp	.label_226
.label_226:
	jmp	.label_219
.label_219:
	mov	byte ptr [rbp - 1], 1
.label_217:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405300

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_229
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	byte ptr [rbp - 5], al
.label_229:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405330

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
	.align	32
	#Procedure 0x405360

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_230
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	byte ptr [rbp - 5], al
.label_230:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405390

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
	je	.label_233
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x26]
	mov	byte ptr [rbp - 0x23], cl
.label_233:
	mov	al, byte ptr [rbp - 0x23]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	test	byte ptr [rbp - 0x21], 1
	mov	byte ptr [rbp - 0x24], dl
	jne	.label_234
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x24], cl
.label_234:
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
	jne	.label_236
	test	byte ptr [rbp - 0x21], 1
	jne	.label_231
	test	byte ptr [rbp - 0x22], 1
	je	.label_232
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_232
.label_231:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.3_0
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
.label_232:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_235
.label_236:
	mov	byte ptr [rbp - 1], 1
.label_235:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054b0

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
	.align	32
	#Procedure 0x4054f0

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
	.align	32
	#Procedure 0x405550

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
	.align	32
	#Procedure 0x4055b0

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
	jne	.label_239
	jmp	.label_237
.label_239:
	jmp	.label_238
.label_237:
	movabs	rdi, OFFSET FLAT:.str.4_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb9f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.copy
	call	__assert_fail
.label_238:
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
	.align	32
	#Procedure 0x4056a0

	.globl valid_options
	.type valid_options, @function
valid_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_248
	jmp	.label_254
.label_248:
	movabs	rdi, OFFSET FLAT:.str.6_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb86
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_254:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 3
	ja	.label_250
	jmp	.label_253
.label_250:
	movabs	rdi, OFFSET FLAT:.str.7_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb87
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_253:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 1
	je	.label_246
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 2
	je	.label_246
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_255
.label_246:
	jmp	.label_241
.label_255:
	movabs	rdi, OFFSET FLAT:.str.8_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb88
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_241:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_240
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 1
	je	.label_240
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_243
.label_240:
	jmp	.label_247
.label_243:
	movabs	rdi, OFFSET FLAT:.str.9_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb89
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_247:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x17], 1
	je	.label_242
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x2c], 1
	jne	.label_245
.label_242:
	jmp	.label_252
.label_245:
	movabs	rdi, OFFSET FLAT:.str.10_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb8a
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_252:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_244
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 2
	jne	.label_249
.label_244:
	jmp	.label_251
.label_249:
	movabs	rdi, OFFSET FLAT:.str.11_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb8d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_251:
	mov	al, 1
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405870

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
	je	.label_274
	cmp	dword ptr [rbp - 0x1b8], 0
	jge	.label_299
	mov	eax, 0xffffff9c
	mov	r8d, 1
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edi, eax
	mov	edx, eax
	call	renameatu
	cmp	eax, 0
	je	.label_472
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x4d8], ecx
	jmp	.label_307
.label_472:
	xor	eax, eax
	mov	dword ptr [rbp - 0x4d8], eax
	jmp	.label_307
.label_307:
	mov	eax, dword ptr [rbp - 0x4d8]
	mov	dword ptr [rbp - 0x1b8], eax
.label_299:
	cmp	dword ptr [rbp - 0x1b8], 0
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_314
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x68]
	and	al, 1
	mov	byte ptr [rcx], al
.label_314:
	jmp	.label_274
.label_274:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_317
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x31], 1
	jne	.label_319
	jmp	.label_320
.label_317:
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_320
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_319
.label_320:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_324
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x4e0], rax
	jmp	.label_327
.label_324:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x4e0], rax
.label_327:
	mov	rax, qword ptr [rbp - 0x4e0]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 2
	jne	.label_329
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1c0]
	call	__lstat
	mov	dword ptr [rbp - 0x4e4], eax
	jmp	.label_422
.label_329:
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1c0]
	call	stat
	mov	dword ptr [rbp - 0x4e4], eax
.label_422:
	mov	eax, dword ptr [rbp - 0x4e4]
	cmp	eax, 0
	je	.label_439
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_0
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
	jmp	.label_276
.label_439:
	mov	eax, dword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x18c], eax
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2a], 1
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x19], 1
	jne	.label_308
	movabs	rdi, OFFSET FLAT:.str.13_0
	call	gettext
	mov	qword ptr [rbp - 0x4f8], rax
	jmp	.label_357
.label_308:
	movabs	rdi, OFFSET FLAT:.str.14_0
	call	gettext
	mov	qword ptr [rbp - 0x4f8], rax
.label_357:
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
	jmp	.label_276
.label_295:
	jmp	.label_319
.label_319:
	test	byte ptr [rbp - 0x49], 1
	je	.label_370
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x48], 0
	je	.label_370
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_373
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	jne	.label_373
	lea	rdx, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	call	seen_file
	test	al, 1
	jne	.label_451
	jmp	.label_373
.label_451:
	movabs	rdi, OFFSET FLAT:.str.15_0
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
	jmp	.label_276
.label_373:
	lea	rdx, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	call	record_file
.label_370:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	esi, al
	call	should_dereference
	and	al, 1
	mov	byte ptr [rbp - 0x1c1], al
	test	byte ptr [rbp - 0x29], 1
	jne	.label_398
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_401
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_403
.label_401:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_406
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x14], 1
	mov	byte ptr [rbp - 0x515], al
	je	.label_409
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	byte ptr [rbp - 0x515], al
	je	.label_409
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	byte ptr [rbp - 0x515], al
	je	.label_409
.label_406:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x18], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_409
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x2c], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_409
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x17], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_409
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	dword ptr [rcx], 0
	mov	byte ptr [rbp - 0x515], al
	jne	.label_409
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x15]
	mov	byte ptr [rbp - 0x515], cl
.label_409:
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
	jne	.label_429
	mov	al, byte ptr [rbp - 0x1c2]
	and	al, 1
	mov	byte ptr [rbp - 0x1b4], al
	mov	dword ptr [rbp - 0x1b8], 0x11
	jmp	.label_431
.label_429:
	call	__errno_location
	cmp	dword ptr [rax], 0x28
	jne	.label_436
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x16], 1
	je	.label_436
	jmp	.label_438
.label_436:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_350
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_0
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
	jmp	.label_276
.label_350:
	mov	byte ptr [rbp - 0x29], 1
	jmp	.label_438
.label_438:
	jmp	.label_431
.label_431:
	jmp	.label_403
.label_403:
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_372
	mov	byte ptr [rbp - 0x1c9], 0
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_449
	lea	rsi, [rbp - 0xf8]
	lea	rcx, [rbp - 0x188]
	lea	r9, [rbp - 0x1c9]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	call	same_file_ok
	test	al, 1
	jne	.label_449
	movabs	rdi, OFFSET FLAT:.str.16_0
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
	jmp	.label_276
.label_449:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2d], 1
	je	.label_266
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_266
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x1f], 1
	mov	byte ptr [rbp - 0x539], cl
	je	.label_461
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x18], 1
	mov	byte ptr [rbp - 0x53a], cl
	je	.label_467
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0xf8]
	sete	cl
	mov	byte ptr [rbp - 0x53a], cl
.label_467:
	mov	al, byte ptr [rbp - 0x53a]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x539], al
.label_461:
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
	jg	.label_478
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_480
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_480:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_464
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
	jne	.label_259
	jmp	.label_262
.label_259:
	jmp	.label_464
.label_464:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_276
.label_478:
	jmp	.label_266
.label_266:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_267
	lea	rdx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	call	abandon_move
	test	al, 1
	jne	.label_269
	jmp	.label_270
.label_269:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_272
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_272:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_276
.label_270:
	jmp	.label_280
.label_267:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_281
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_286
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 3
	jne	.label_281
	lea	rdx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	call	overwrite_ok
	test	al, 1
	jne	.label_281
.label_286:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_276
.label_281:
	jmp	.label_280
.label_280:
	test	byte ptr [rbp - 0x1c9], 1
	je	.label_291
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_276
.label_291:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_294
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_298
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_301
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_301
	jmp	.label_306
.label_301:
	movabs	rdi, OFFSET FLAT:.str.17_1
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
	jmp	.label_276
.label_306:
	jmp	.label_298
.label_298:
	test	byte ptr [rbp - 0x49], 1
	je	.label_321
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 3
	je	.label_321
	lea	rdx, [rbp - 0x188]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	seen_file
	test	al, 1
	jne	.label_326
	jmp	.label_321
.label_326:
	movabs	rdi, OFFSET FLAT:.str.18_1
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
	jmp	.label_276
.label_321:
	jmp	.label_294
.label_294:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_337
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_340
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_342
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_342
	jmp	.label_347
.label_342:
	movabs	rdi, OFFSET FLAT:.str.19_0
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
	jmp	.label_276
.label_347:
	jmp	.label_340
.label_340:
	jmp	.label_337
.label_337:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_356
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_358
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_358
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	jne	.label_358
	movabs	rdi, OFFSET FLAT:.str.20
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
	jmp	.label_276
.label_358:
	jmp	.label_356
.label_356:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_382
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, 1
	jne	.label_382
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_384
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_382
.label_384:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 3
	je	.label_389
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1d8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	source_is_dst_backup
	test	al, 1
	jne	.label_284
	jmp	.label_389
.label_284:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_432
	movabs	rdi, OFFSET FLAT:.str.21_0
	call	gettext
	mov	qword ptr [rbp - 0x588], rax
	jmp	.label_399
.label_432:
	movabs	rdi, OFFSET FLAT:.str.22_0
	call	gettext
	mov	qword ptr [rbp - 0x588], rax
.label_399:
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
	jmp	.label_276
.label_389:
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rax]
	call	backup_file_rename
	mov	qword ptr [rbp - 0x1e8], rax
	cmp	qword ptr [rbp - 0x1e8], 0
	je	.label_419
	jmp	.label_421
.label_421:
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
	jmp	.label_430
.label_419:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_433
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.23_0
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
	jmp	.label_276
.label_433:
	jmp	.label_430
.label_430:
	mov	byte ptr [rbp - 0x29], 1
	jmp	.label_440
.label_382:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_442
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_442
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x15], 1
	jne	.label_446
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x22], 1
	je	.label_447
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x178]
	jb	.label_446
.label_447:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 2
	jne	.label_442
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_442
.label_446:
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlink
	cmp	eax, 0
	je	.label_452
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_452
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24_0
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
	jmp	.label_276
.label_452:
	mov	byte ptr [rbp - 0x29], 1
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_360
	movabs	rdi, OFFSET FLAT:.str.25_0
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
.label_360:
	jmp	.label_442
.label_442:
	jmp	.label_440
.label_440:
	jmp	.label_372
.label_372:
	jmp	.label_398
.label_398:
	test	byte ptr [rbp - 0x49], 1
	je	.label_282
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_282
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_282
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	jne	.label_282
	mov	byte ptr [rbp - 0x209], 1
	test	byte ptr [rbp - 0x1b4], 1
	je	.label_473
	lea	rax, [rbp - 0x188]
	mov	qword ptr [rbp - 0x2a8], rax
	jmp	.label_475
.label_473:
	lea	rsi, [rbp - 0x2a0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	__lstat
	cmp	eax, 0
	jne	.label_481
	lea	rax, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x2a8], rax
	jmp	.label_483
.label_481:
	mov	byte ptr [rbp - 0x209], 0
.label_483:
	jmp	.label_475
.label_475:
	test	byte ptr [rbp - 0x209], 1
	je	.label_263
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_263
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x2a8]
	call	seen_file
	test	al, 1
	jne	.label_261
	jmp	.label_263
.label_261:
	movabs	rdi, OFFSET FLAT:.str.26_0
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
	jmp	.label_276
.label_263:
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_285
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_285
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_285
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	call	emit_verbose
.label_285:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_289
	mov	qword ptr [rbp - 0x1a8], 0
	jmp	.label_292
.label_289:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2a], 1
	je	.label_293
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_293
	test	byte ptr [rbp - 0x49], 1
	je	.label_300
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
	jmp	.label_304
.label_300:
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	src_to_dest_lookup
	mov	qword ptr [rbp - 0x1a8], rax
.label_304:
	jmp	.label_311
.label_293:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_313
	cmp	qword ptr [rbp - 0xe8], 1
	jne	.label_313
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	src_to_dest_lookup
	mov	qword ptr [rbp - 0x1a8], rax
	jmp	.label_316
.label_313:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x22], 1
	je	.label_318
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	jne	.label_318
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xe8]
	jb	.label_322
	test	byte ptr [rbp - 0x49], 1
	je	.label_323
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 3
	je	.label_322
.label_323:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 4
	jne	.label_318
.label_322:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
.label_318:
	jmp	.label_316
.label_316:
	jmp	.label_311
.label_311:
	jmp	.label_292
.label_292:
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_333
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_335
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	same_name
	test	al, 1
	jne	.label_338
	jmp	.label_339
.label_338:
	movabs	rdi, OFFSET FLAT:.str.27_0
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
	jmp	.label_262
.label_339:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	same_name
	test	al, 1
	jne	.label_344
	jmp	.label_355
.label_344:
	movabs	rdi, OFFSET FLAT:.str.28_0
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
	je	.label_378
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_378
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_378:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_276
.label_355:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 4
	je	.label_368
	test	byte ptr [rbp - 0x49], 1
	je	.label_411
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 3
	jne	.label_411
.label_368:
	jmp	.label_374
.label_411:
	movabs	rdi, OFFSET FLAT:.str.29_0
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
	jmp	.label_262
.label_374:
	jmp	.label_388
.label_388:
	jmp	.label_390
.label_390:
	jmp	.label_391
.label_335:
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
	jne	.label_396
	jmp	.label_262
.label_396:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_276
.label_391:
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_400
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_402
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rename
	cmp	eax, 0
	jne	.label_407
	xor	eax, eax
	mov	dword ptr [rbp - 0x614], eax
	jmp	.label_408
.label_407:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x614], ecx
.label_408:
	mov	eax, dword ptr [rbp - 0x614]
	mov	dword ptr [rbp - 0x1b8], eax
.label_402:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_414
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_416
	movabs	rdi, OFFSET FLAT:.str.30
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	dword ptr [rbp - 0x618], eax
	call	emit_verbose
.label_416:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	je	.label_435
	xor	esi, esi
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	call	set_file_security_ctx
	mov	byte ptr [rbp - 0x619], al
.label_435:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_424
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_424:
	test	byte ptr [rbp - 0x49], 1
	je	.label_425
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x31], 1
	jne	.label_425
	lea	rdx, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_425:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_276
.label_414:
	cmp	dword ptr [rbp - 0x1b8], 0x16
	jne	.label_428
	movabs	rdi, OFFSET FLAT:.str.31_0
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
	jmp	.label_276
.label_428:
	cmp	dword ptr [rbp - 0x1b8], 0x12
	je	.label_366
	movabs	rdi, OFFSET FLAT:.str.32_0
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
	jmp	.label_276
.label_366:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_450
	mov	rdi, qword ptr [rbp - 0x28]
	call	rmdir
	mov	dword ptr [rbp - 0x64c], eax
	jmp	.label_476
.label_450:
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlink
	mov	dword ptr [rbp - 0x64c], eax
.label_476:
	mov	eax, dword ptr [rbp - 0x64c]
	cmp	eax, 0
	je	.label_457
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_457
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.33_0
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
	jmp	.label_276
.label_457:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_471
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_471
	movabs	rdi, OFFSET FLAT:.str.34_0
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	dword ptr [rbp - 0x664], eax
	call	emit_verbose
.label_471:
	mov	byte ptr [rbp - 0x29], 1
.label_400:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2b], 1
	je	.label_448
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x668], ecx
	jmp	.label_484
.label_448:
	mov	eax, dword ptr [rbp - 0x18c]
	mov	dword ptr [rbp - 0x668], eax
.label_484:
	mov	eax, dword ptr [rbp - 0x668]
	and	eax, 0xfff
	mov	dword ptr [rbp - 0x194], eax
	mov	eax, dword ptr [rbp - 0x194]
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x1d], 1
	mov	dword ptr [rbp - 0x66c], eax
	je	.label_486
	mov	eax, 0x3f
	mov	dword ptr [rbp - 0x670], eax
	jmp	.label_257
.label_486:
	xor	eax, eax
	mov	ecx, 0x12
	mov	edx, dword ptr [rbp - 0x18c]
	and	edx, 0xf000
	cmp	edx, 0x4000
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x670], eax
.label_257:
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
	jne	.label_278
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_276
.label_278:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_283
	lea	rdi, [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0x40]
	call	is_ancestor
	test	al, 1
	jne	.label_288
	jmp	.label_405
.label_288:
	movabs	rdi, OFFSET FLAT:.str.35_0
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
	jmp	.label_262
.label_405:
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
	jne	.label_296
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_309
.label_296:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	esi, eax
	call	mkdir
	cmp	eax, 0
	je	.label_315
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.36_0
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
	jmp	.label_262
.label_315:
	lea	rsi, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x28]
	call	__lstat
	cmp	eax, 0
	je	.label_377
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_0
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
	jmp	.label_262
.label_377:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_336
	mov	eax, dword ptr [rbp - 0x170]
	mov	dword ptr [rbp - 0x190], eax
	mov	byte ptr [rbp - 0x199], 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x190]
	or	eax, 0x1c0
	mov	esi, eax
	call	chmod
	cmp	eax, 0
	je	.label_345
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
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
	jmp	.label_262
.label_345:
	jmp	.label_336
.label_336:
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x58]
	test	byte ptr [rax], 1
	jne	.label_354
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x188]
	call	remember_copied
	mov	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rdx], 1
	mov	qword ptr [rbp - 0x6b0], rax
.label_354:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_362
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_364
	movabs	rdi, OFFSET FLAT:.str.38_0
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
	jmp	.label_371
.label_364:
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	emit_verbose
.label_371:
	jmp	.label_362
.label_362:
	jmp	.label_375
.label_309:
	mov	dword ptr [rbp - 0x198], 0
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	jne	.label_376
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_380
.label_376:
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
	jne	.label_385
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x26], 1
	je	.label_386
	jmp	.label_262
.label_386:
	jmp	.label_385
.label_385:
	jmp	.label_380
.label_380:
	jmp	.label_375
.label_375:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1c], 1
	je	.label_256
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_256
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xf8]
	je	.label_256
	jmp	.label_394
.label_256:
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
.label_394:
	jmp	.label_395
.label_283:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2c], 1
	je	.label_410
	mov	byte ptr [rbp - 0x1b3], 1
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_413
	mov	rdi, qword ptr [rbp - 0x28]
	call	dir_name
	mov	cl, 1
	mov	qword ptr [rbp - 0x3d8], rax
	mov	rsi, qword ptr [rbp - 0x3d8]
	mov	edx, OFFSET FLAT:.str.2_1
	mov	edi, edx
	mov	byte ptr [rbp - 0x6c9], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0x6c9]
	mov	byte ptr [rbp - 0x6ca], cl
	je	.label_418
	movabs	rdi, OFFSET FLAT:.str.2_1
	lea	rsi, [rbp - 0x340]
	call	stat
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x6ca], cl
	jne	.label_418
	lea	rsi, [rbp - 0x3d0]
	mov	rdi, qword ptr [rbp - 0x3d8]
	call	stat
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x6ca], cl
	jne	.label_418
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x338]
	cmp	rdx, qword ptr [rbp - 0x3c8]
	mov	byte ptr [rbp - 0x6cb], cl
	jne	.label_474
	mov	rax, qword ptr [rbp - 0x340]
	cmp	rax, qword ptr [rbp - 0x3d0]
	sete	cl
	mov	byte ptr [rbp - 0x6cb], cl
.label_474:
	mov	al, byte ptr [rbp - 0x6cb]
	mov	byte ptr [rbp - 0x6ca], al
.label_418:
	mov	al, byte ptr [rbp - 0x6ca]
	and	al, 1
	mov	byte ptr [rbp - 0x3d9], al
	mov	rdi, qword ptr [rbp - 0x3d8]
	call	free
	test	byte ptr [rbp - 0x3d9], 1
	jne	.label_434
	movabs	rdi, OFFSET FLAT:.str.40
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
	jmp	.label_262
.label_434:
	jmp	.label_413
.label_413:
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
	jge	.label_444
	movabs	rdi, OFFSET FLAT:.str.41_0
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
	jmp	.label_262
.label_444:
	jmp	.label_393
.label_410:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	je	.label_453
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x16], 1
	mov	byte ptr [rbp - 0x6f1], al
	jne	.label_455
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 3
	sete	cl
	mov	byte ptr [rbp - 0x6f1], cl
.label_455:
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
	jne	.label_462
	jmp	.label_262
.label_462:
	jmp	.label_392
.label_453:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_466
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x14], 1
	je	.label_469
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_469
.label_466:
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
	jne	.label_479
	jmp	.label_262
.label_479:
	jmp	.label_359
.label_469:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_482
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	esi, eax
	call	__mknod
	cmp	eax, 0
	je	.label_348
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xffffefff
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	esi, eax
	call	mkfifo
	cmp	eax, 0
	je	.label_260
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.42_0
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
	jmp	.label_262
.label_260:
	jmp	.label_348
.label_348:
	jmp	.label_275
.label_482:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x6000
	je	.label_277
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_277
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_287
.label_277:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	esi, eax
	call	__mknod
	cmp	eax, 0
	je	.label_290
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.43_0
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
	jmp	.label_262
.label_290:
	jmp	.label_303
.label_287:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_305
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x3f0], rax
	mov	byte ptr [rbp - 0x1b3], 1
	cmp	qword ptr [rbp - 0x3f0], 0
	jne	.label_312
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.44_0
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
	jmp	.label_262
.label_312:
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
	jge	.label_328
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2d], 1
	je	.label_328
	test	byte ptr [rbp - 0x29], 1
	jne	.label_328
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_328
	mov	rax, qword ptr [rbp - 0x158]
	mov	rdi, qword ptr [rbp - 0x3f0]
	mov	qword ptr [rbp - 0x728], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x728]
	cmp	rdi, rax
	jne	.label_328
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x158]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x400], rax
	cmp	qword ptr [rbp - 0x400], 0
	je	.label_341
	mov	rdi, qword ptr [rbp - 0x400]
	mov	rsi, qword ptr [rbp - 0x3f0]
	call	strcmp
	cmp	eax, 0
	jne	.label_346
	mov	dword ptr [rbp - 0x3f4], 0
.label_346:
	mov	rdi, qword ptr [rbp - 0x400]
	call	free
.label_341:
	jmp	.label_328
.label_328:
	mov	rdi, qword ptr [rbp - 0x3f0]
	call	free
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x3f4]
	jge	.label_351
	movabs	rdi, OFFSET FLAT:.str.45
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
	jmp	.label_262
.label_351:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_363
	call	restore_default_fscreatecon_or_die
.label_363:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1d], 1
	je	.label_365
	mov	rdi, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0xdc]
	mov	edx, dword ptr [rbp - 0xd8]
	call	lchown
	cmp	eax, 0
	je	.label_367
	mov	rdi, qword ptr [rbp - 0x48]
	call	chown_failure_ok
	test	al, 1
	jne	.label_367
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.46
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
	je	.label_379
	jmp	.label_262
.label_379:
	jmp	.label_381
.label_367:
	jmp	.label_381
.label_381:
	jmp	.label_365
.label_365:
	jmp	.label_383
.label_305:
	movabs	rdi, OFFSET FLAT:.str.47
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
	jmp	.label_262
.label_383:
	jmp	.label_303
.label_303:
	jmp	.label_275
.label_275:
	jmp	.label_359
.label_359:
	jmp	.label_392
.label_392:
	jmp	.label_393
.label_393:
	jmp	.label_395
.label_395:
	test	byte ptr [rbp - 0x29], 1
	jne	.label_397
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x14], 1
	jne	.label_397
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_397
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	jne	.label_404
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_397
.label_404:
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
	jne	.label_412
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x26], 1
	je	.label_415
	jmp	.label_262
.label_415:
	jmp	.label_412
.label_412:
	jmp	.label_397
.label_397:
	test	byte ptr [rbp - 0x49], 1
	je	.label_417
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_417
	lea	rsi, [rbp - 0x490]
	mov	rdi, qword ptr [rbp - 0x28]
	call	__lstat
	cmp	eax, 0
	jne	.label_420
	lea	rdx, [rbp - 0x490]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_420:
	jmp	.label_417
.label_417:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	je	.label_423
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_423
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_276
.label_423:
	test	byte ptr [rbp - 0x1b2], 1
	je	.label_426
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_276
.label_426:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1f], 1
	je	.label_427
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
	je	.label_437
	lea	rsi, [rbp - 0x4b0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	utimens_symlink
	mov	dword ptr [rbp - 0x750], eax
	jmp	.label_441
.label_437:
	lea	rsi, [rbp - 0x4b0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	utimens
	mov	dword ptr [rbp - 0x750], eax
.label_441:
	mov	eax, dword ptr [rbp - 0x750]
	cmp	eax, 0
	je	.label_445
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.48
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
	je	.label_458
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_276
.label_458:
	jmp	.label_445
.label_445:
	jmp	.label_427
.label_427:
	test	byte ptr [rbp - 0x1b3], 1
	jne	.label_454
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1d], 1
	je	.label_454
	test	byte ptr [rbp - 0x29], 1
	jne	.label_456
	mov	eax, dword ptr [rbp - 0xdc]
	cmp	eax, dword ptr [rbp - 0x16c]
	jne	.label_456
	mov	eax, dword ptr [rbp - 0xd8]
	cmp	eax, dword ptr [rbp - 0x168]
	je	.label_454
.label_456:
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
	je	.label_334
	jmp	.label_463
.label_463:
	mov	eax, dword ptr [rbp - 0x764]
	test	eax, eax
	je	.label_465
	jmp	.label_468
.label_334:
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_276
.label_465:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xfffff1ff
	mov	dword ptr [rbp - 0x18c], eax
.label_468:
	jmp	.label_454
.label_454:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x27], 1
	je	.label_470
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, eax
	mov	ecx, eax
	call	copy_attr
	test	al, 1
	jne	.label_470
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x28], 1
	je	.label_470
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_276
.label_470:
	test	byte ptr [rbp - 0x1b3], 1
	je	.label_477
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_276
.label_477:
	mov	esi, 0xffffffff
	lea	rdx, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_author
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x1e], 1
	jne	.label_460
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_485
.label_460:
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rbp - 0x18c]
	mov	esi, eax
	mov	ecx, eax
	call	copy_acl
	cmp	eax, 0
	je	.label_258
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x24], 1
	je	.label_258
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_276
.label_258:
	jmp	.label_264
.label_485:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2b], 1
	je	.label_265
	mov	esi, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rax + 0x10]
	call	set_acl
	cmp	eax, 0
	je	.label_268
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_276
.label_268:
	jmp	.label_271
.label_265:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x20], 1
	je	.label_273
	test	byte ptr [rbp - 0x29], 1
	je	.label_273
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	byte ptr [rbp - 0x769], al
	je	.label_279
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xc000
	sete	cl
	mov	byte ptr [rbp - 0x769], cl
.label_279:
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
	je	.label_297
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_276
.label_297:
	jmp	.label_459
.label_273:
	cmp	dword ptr [rbp - 0x198], 0
	je	.label_330
	call	cached_umask
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x198]
	mov	dword ptr [rbp - 0x198], eax
	cmp	dword ptr [rbp - 0x198], 0
	je	.label_302
	test	byte ptr [rbp - 0x199], 1
	jne	.label_302
	test	byte ptr [rbp - 0x29], 1
	je	.label_310
	lea	rsi, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x28]
	call	__lstat
	cmp	eax, 0
	je	.label_310
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_0
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
	jmp	.label_276
.label_310:
	mov	eax, dword ptr [rbp - 0x170]
	mov	dword ptr [rbp - 0x190], eax
	mov	eax, dword ptr [rbp - 0x198]
	mov	ecx, dword ptr [rbp - 0x190]
	xor	ecx, 0xffffffff
	and	eax, ecx
	cmp	eax, 0
	je	.label_325
	mov	byte ptr [rbp - 0x199], 1
.label_325:
	jmp	.label_302
.label_302:
	jmp	.label_330
.label_330:
	test	byte ptr [rbp - 0x199], 1
	je	.label_332
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x190]
	or	eax, dword ptr [rbp - 0x198]
	mov	esi, eax
	call	chmod
	cmp	eax, 0
	je	.label_331
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_1
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
	je	.label_343
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_276
.label_343:
	jmp	.label_331
.label_331:
	jmp	.label_332
.label_332:
	jmp	.label_459
.label_459:
	jmp	.label_271
.label_271:
	jmp	.label_264
.label_264:
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_276
.label_262:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_349
	call	restore_default_fscreatecon_or_die
.label_349:
	cmp	qword ptr [rbp - 0x1a8], 0
	jne	.label_352
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	forget_created
.label_352:
	cmp	qword ptr [rbp - 0x1b0], 0
	je	.label_387
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rename
	cmp	eax, 0
	je	.label_361
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.50
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
	jmp	.label_369
.label_361:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_443
	movabs	rdi, OFFSET FLAT:.str.51
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
.label_443:
	jmp	.label_369
.label_369:
	jmp	.label_387
.label_387:
	mov	byte ptr [rbp - 0x11], 0
.label_276:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	lea	rsp, [rbp - 0x10]
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408400

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
	.align	32
	#Procedure 0x408460

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_487
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	mov	byte ptr [rbp - 9], dl
	jne	.label_488
.label_487:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x1a]
	xor	cl, 0xff
	mov	byte ptr [rbp - 9], cl
.label_488:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084b0

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [cached_umask.mask]],  -1
	jne	.label_489
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [cached_umask.mask]],  eax
	mov	edi,  dword ptr [dword ptr [cached_umask.mask]]
	call	umask
	mov	dword ptr [rbp - 4], eax
.label_489:
	mov	eax,  dword ptr [dword ptr [cached_umask.mask]]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084f0

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
	je	.label_490
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 4], 3
	mov	byte ptr [rbp - 0xb], cl
	jne	.label_491
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0xb], al
.label_491:
	mov	al, byte ptr [rbp - 0xb]
	mov	byte ptr [rbp - 0xa], al
.label_490:
	mov	al, byte ptr [rbp - 0xa]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408540

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
	jne	.label_505
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x17a], dl
.label_505:
	mov	al, byte ptr [rbp - 0x17a]
	and	al, 1
	mov	byte ptr [rbp - 0x16a], al
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x16a], 1
	je	.label_516
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_516
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_516:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	jne	.label_526
	mov	al, byte ptr [rbp - 0x16a]
	and	al, 1
	mov	byte ptr [rbp - 0x169], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	jne	.label_498
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_498
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	and	al, 1
	mov	byte ptr [rbp - 0x16b], al
	test	byte ptr [rbp - 0x16b], 1
	jne	.label_504
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	je	.label_507
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_507:
	test	byte ptr [rbp - 0x169], 1
	je	.label_514
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_494
.label_514:
	jmp	.label_504
.label_504:
	mov	al, byte ptr [rbp - 0x16b]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_494
.label_498:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_522
.label_526:
	test	byte ptr [rbp - 0x16a], 1
	jne	.label_523
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_523:
	lea	rsi, [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	__lstat
	cmp	eax, 0
	jne	.label_527
	lea	rsi, [rbp - 0x168]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	cmp	eax, 0
	je	.label_529
.label_527:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_529:
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
	jne	.label_496
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x17b], dl
.label_496:
	mov	al, byte ptr [rbp - 0x17b]
	and	al, 1
	mov	byte ptr [rbp - 0x169], al
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	jne	.label_510
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_510
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x15], 1
	je	.label_510
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_510:
	jmp	.label_522
.label_522:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	je	.label_502
	test	byte ptr [rbp - 0x169], 1
	jne	.label_524
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	jne	.label_492
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	je	.label_492
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_492
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_492
	mov	byte ptr [rbp - 1], 0
	jmp	.label_494
.label_492:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_524:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_494
.label_502:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	jne	.label_506
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x15], 1
	je	.label_509
.label_506:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_512
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_512:
	test	byte ptr [rbp - 0x169], 1
	je	.label_518
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_518
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	test	al, 1
	jne	.label_518
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_494
.label_518:
	jmp	.label_509
.label_509:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_511
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_511
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_495
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	je	.label_499
.label_495:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_499:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_508
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_508:
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	je	.label_497
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_497
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_497
	mov	rdi, qword ptr [rbp - 0x10]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x178], rax
	cmp	qword ptr [rbp - 0x178], 0
	je	.label_521
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
	jmp	.label_494
.label_521:
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x2c], 1
	je	.label_528
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_528
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_528:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	jne	.label_501
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_503
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0x168]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_513
.label_503:
	lea	rsi, [rbp - 0x168]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	je	.label_517
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_517:
	jmp	.label_513
.label_513:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_520
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_515
.label_520:
	lea	rsi, [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	stat
	cmp	eax, 0
	je	.label_525
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_525:
	jmp	.label_515
.label_515:
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0xd0]
	jne	.label_519
	mov	rax, qword ptr [rbp - 0x168]
	cmp	rax, qword ptr [rbp - 0xd8]
	je	.label_493
.label_519:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_494
.label_493:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_500
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
	jmp	.label_494
.label_500:
	jmp	.label_501
.label_501:
	mov	byte ptr [rbp - 1], 0
.label_494:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b70

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
	jge	.label_530
	movabs	rdi, OFFSET FLAT:.str.52
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
	jmp	.label_531
.label_530:
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_532
	test	byte ptr [rbp - 0x1a], 1
	je	.label_532
	movabs	rdi, OFFSET FLAT:.str.25_0
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
.label_532:
	mov	byte ptr [rbp - 1], 1
.label_531:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408cb0

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
	je	.label_535
	jmp	.label_536
.label_535:
	movabs	rdi, OFFSET FLAT:.str.53_0
	movabs	rsi, OFFSET FLAT:.str.5_0
	mov	edx, 0x6d2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.abandon_move
	call	__assert_fail
.label_536:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	dword ptr [rcx + 8], 2
	mov	byte ptr [rbp - 0x19], al
	je	.label_537
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 8], 3
	je	.label_534
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 8], 4
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_533
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x2f], 1
	mov	byte ptr [rbp - 0x1a], cl
	je	.label_533
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	writable_destination
	xor	esi, esi
	mov	cl, sil
	test	al, 1
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_533
.label_534:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	overwrite_ok
	xor	al, 0xff
	mov	byte ptr [rbp - 0x1a], al
.label_533:
	mov	al, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 0x19], al
.label_537:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408da0

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
	jne	.label_538
	lea	rsi, [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x18]
	call	strmode
	mov	byte ptr [rbp - 0x1a], 0
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x18], 1
	mov	qword ptr [rbp - 0x30], rdi
	jne	.label_542
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x15], 1
	jne	.label_542
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x16], 1
	je	.label_540
.label_542:
	movabs	rdi, OFFSET FLAT:.str.54
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_539
.label_540:
	movabs	rdi, OFFSET FLAT:.str.55_0
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_539:
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
	jmp	.label_541
.label_538:
	movabs	rdi, OFFSET FLAT:.str.56_0
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
.label_541:
	call	yesno
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f10

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_543
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
	je	.label_544
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0x2f
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_544:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_545
.label_543:
	mov	byte ptr [rbp - 1], 0
.label_545:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f90

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
	jne	.label_546
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcmp
	cmp	eax, 0
	jne	.label_546
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_548
.label_546:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_549
.label_548:
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
	jne	.label_550
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	cmp	rdx, qword ptr [rbp - 0xd8]
	mov	byte ptr [rbp - 0xfa], cl
	jne	.label_547
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xe0]
	sete	cl
	mov	byte ptr [rbp - 0xfa], cl
.label_547:
	mov	al, byte ptr [rbp - 0xfa]
	mov	byte ptr [rbp - 0xf9], al
.label_550:
	mov	al, byte ptr [rbp - 0xf9]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_549:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409130

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
	movabs	rdi, OFFSET FLAT:.str.57_0
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	al, 0
	call	printf
	cmp	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x24], eax
	je	.label_551
	movabs	rdi, OFFSET FLAT:.str.58_0
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
.label_551:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091e0

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_553:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_555
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_554
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jne	.label_554
	mov	byte ptr [rbp - 1], 1
	jmp	.label_552
.label_554:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_553
.label_555:
	mov	byte ptr [rbp - 1], 0
.label_552:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409250

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
	jne	.label_558
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.59_0
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
	jmp	.label_559
.label_558:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	dword ptr [rax + 4], 3
	jne	.label_561
	mov	dword ptr [rbp - 0xbc], 2
.label_561:
	mov	byte ptr [rbp - 0xc2], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
.label_560:
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_556
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
	je	.label_557
	jmp	.label_556
.label_557:
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
	jmp	.label_560
.label_556:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	mov	al, byte ptr [rbp - 0xc2]
	mov	rdi, qword ptr [rbp - 0x58]
	and	al, 1
	mov	byte ptr [rdi], al
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
.label_559:
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
	.align	32
	#Procedure 0x409530

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
	jge	.label_575
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.60_0
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
	jmp	.label_567
.label_575:
	lea	rsi, [rbp - 0x188]
	mov	edi, dword ptr [rbp - 0x64]
	call	__fstat
	cmp	eax, 0
	je	.label_574
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.61
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
	jmp	.label_569
.label_574:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x180]
	jne	.label_614
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x188]
	je	.label_593
.label_614:
	movabs	rdi, OFFSET FLAT:.str.62
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
	jmp	.label_569
.label_593:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	jne	.label_602
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
	jne	.label_620
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x25], 1
	je	.label_579
.label_620:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5c]
	jg	.label_579
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
	jne	.label_630
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_631
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_570
.label_631:
	jmp	.label_630
.label_630:
	jmp	.label_579
.label_579:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_600
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x16], 1
	je	.label_600
	mov	rdi, qword ptr [rbp - 0x20]
	call	unlink
	cmp	eax, 0
	je	.label_639
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24_0
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
	jmp	.label_569
.label_639:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x2e], 1
	je	.label_577
	movabs	rdi, OFFSET FLAT:.str.25_0
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
.label_577:
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	je	.label_589
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
	jne	.label_597
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_569
.label_597:
	jmp	.label_589
.label_589:
	jmp	.label_600
.label_600:
	jmp	.label_602
.label_602:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	je	.label_604
	jmp	.label_607
.label_607:
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
	jge	.label_566
	cmp	dword ptr [rbp - 0x60], 0x11
	jne	.label_566
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	jne	.label_566
	lea	rsi, [rbp - 0x228]
	mov	rdi, qword ptr [rbp - 0x20]
	call	__lstat
	cmp	eax, 0
	jne	.label_564
	mov	eax, dword ptr [rbp - 0x210]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_564
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x30], 1
	je	.label_626
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
	jmp	.label_633
.label_626:
	movabs	rdi, OFFSET FLAT:.str.63
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
	jmp	.label_569
.label_633:
	jmp	.label_564
.label_564:
	jmp	.label_566
.label_566:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_568
	cmp	dword ptr [rbp - 0x60], 0x15
	jne	.label_568
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_568
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rdi + rax]
	cmp	ecx, 0x2f
	jne	.label_568
	mov	dword ptr [rbp - 0x60], 0x14
.label_568:
	jmp	.label_583
.label_604:
	mov	dword ptr [rbp - 0x30], 0
.label_583:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_586
	cmp	dword ptr [rbp - 0x60], 2
	jne	.label_587
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	jne	.label_587
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	jne	.label_587
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_607
.label_587:
	movabs	rdi, OFFSET FLAT:.str.64
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
	jmp	.label_569
.label_586:
	lea	rsi, [rbp - 0xf8]
	mov	edi, dword ptr [rbp - 0x5c]
	call	__fstat
	cmp	eax, 0
	je	.label_612
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.61
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
	jmp	.label_570
.label_612:
	test	byte ptr [rbp - 0x18a], 1
	je	.label_624
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_624
	mov	edi, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0x64]
	call	clone_file
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x229], cl
	test	byte ptr [rbp - 0x229], 1
	jne	.label_616
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_632
.label_616:
	test	byte ptr [rbp - 0x229], 1
	jne	.label_634
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.65
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
	jmp	.label_570
.label_634:
	mov	byte ptr [rbp - 0x18a], 0
.label_632:
	jmp	.label_624
.label_624:
	test	byte ptr [rbp - 0x18a], 1
	je	.label_580
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
	jge	.label_592
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0xc0], rax
	ja	.label_592
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x360], rax
	jmp	.label_599
.label_592:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x360], rcx
	jmp	.label_599
.label_599:
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
	jne	.label_601
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_621
	mov	byte ptr [rbp - 0x249], 1
.label_621:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0xc], 2
	jne	.label_565
	test	byte ptr [rbp - 0x24a], 1
	je	.label_565
	mov	byte ptr [rbp - 0x249], 1
.label_565:
	jmp	.label_601
.label_601:
	test	byte ptr [rbp - 0x249], 1
	jne	.label_581
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
	jne	.label_563
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_563
	mov	rax, qword ptr [rbp - 0x158]
	add	rax, 1
	mov	qword ptr [rbp - 0x240], rax
.label_563:
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
	je	.label_582
	mov	rax, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_576
.label_582:
	mov	rax, qword ptr [rbp - 0x260]
	mov	qword ptr [rbp - 0x240], rax
.label_576:
	jmp	.label_581
.label_581:
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
	je	.label_605
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
	je	.label_606
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x3a4], ecx
	jmp	.label_625
.label_606:
	mov	eax, 1
	mov	dword ptr [rbp - 0x3a4], eax
	jmp	.label_625
.label_625:
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
	jne	.label_642
	jmp	.label_640
.label_642:
	jmp	.label_622
.label_640:
	test	byte ptr [rbp - 0x261], 1
	jne	.label_573
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_570
.label_573:
	jmp	.label_605
.label_605:
	mov	edi, dword ptr [rbp - 0x64]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x240]
	test	byte ptr [rbp - 0x249], 1
	mov	dword ptr [rbp - 0x3c4], edi
	mov	dword ptr [rbp - 0x3c8], esi
	mov	qword ptr [rbp - 0x3d0], rdx
	mov	qword ptr [rbp - 0x3d8], rcx
	je	.label_603
	mov	rax, qword ptr [rbp - 0x248]
	mov	qword ptr [rbp - 0x3e0], rax
	jmp	.label_584
.label_603:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x3e0], rcx
	jmp	.label_584
.label_584:
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
	jne	.label_613
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_570
.label_613:
	test	byte ptr [rbp - 0x271], 1
	je	.label_617
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x270]
	call	ftruncate
	cmp	eax, 0
	jge	.label_617
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.66
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
	jmp	.label_570
.label_617:
	jmp	.label_638
.label_638:
	jmp	.label_580
.label_580:
	jmp	.label_622
.label_622:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1f], 1
	je	.label_629
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
	je	.label_590
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.48
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
	je	.label_596
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_570
.label_596:
	jmp	.label_590
.label_590:
	jmp	.label_629
.label_629:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1d], 1
	je	.label_598
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x1c]
	cmp	ecx, dword ptr [rbp - 0xdc]
	jne	.label_595
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x20]
	cmp	ecx, dword ptr [rbp - 0xd8]
	je	.label_598
.label_595:
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
	je	.label_608
	jmp	.label_641
.label_641:
	mov	eax, dword ptr [rbp - 0x40c]
	test	eax, eax
	je	.label_615
	jmp	.label_618
.label_608:
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_570
.label_615:
	mov	eax, dword ptr [rbp - 0x68]
	and	eax, 0xfffff1ff
	mov	dword ptr [rbp - 0x68], eax
.label_618:
	jmp	.label_598
.label_598:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x27], 1
	je	.label_619
	mov	byte ptr [rbp - 0x2c1], 0
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0x80
	cmp	eax, 0
	jne	.label_588
	call	geteuid
	cmp	eax, 0
	je	.label_588
	mov	edx, 0x180
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	call	fchmod_or_lchmod
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2c1], cl
.label_588:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	r8, qword ptr [rbp - 0x28]
	call	copy_attr
	test	al, 1
	jne	.label_635
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x28], 1
	je	.label_635
	mov	byte ptr [rbp - 0x189], 0
.label_635:
	test	byte ptr [rbp - 0x2c1], 1
	je	.label_637
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, dword ptr [rbp - 0x30]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	edx, eax
	call	fchmod_or_lchmod
	mov	dword ptr [rbp - 0x414], eax
.label_637:
	jmp	.label_619
.label_619:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x40]
	call	set_author
	mov	rdx, qword ptr [rbp - 0x28]
	test	byte ptr [rdx + 0x1e], 1
	jne	.label_643
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	je	.label_571
.label_643:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	r8d, dword ptr [rbp - 0x68]
	call	copy_acl
	cmp	eax, 0
	je	.label_578
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x24], 1
	je	.label_578
	mov	byte ptr [rbp - 0x189], 0
.label_578:
	jmp	.label_627
.label_571:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x2b], 1
	je	.label_585
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax + 0x10]
	call	set_acl
	cmp	eax, 0
	je	.label_610
	mov	byte ptr [rbp - 0x189], 0
.label_610:
	jmp	.label_591
.label_585:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x20], 1
	je	.label_594
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	je	.label_594
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
	je	.label_623
	mov	byte ptr [rbp - 0x189], 0
.label_623:
	jmp	.label_609
.label_594:
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_611
	call	cached_umask
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_562
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x2c]
	call	fchmod_or_lchmod
	cmp	eax, 0
	je	.label_562
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_1
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
	je	.label_628
	mov	byte ptr [rbp - 0x189], 0
.label_628:
	jmp	.label_562
.label_562:
	jmp	.label_611
.label_611:
	jmp	.label_609
.label_609:
	jmp	.label_591
.label_591:
	jmp	.label_627
.label_627:
	jmp	.label_570
.label_570:
	mov	edi, dword ptr [rbp - 0x5c]
	call	close
	cmp	eax, 0
	jge	.label_636
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.67
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
.label_636:
	jmp	.label_569
.label_569:
	mov	edi, dword ptr [rbp - 0x64]
	call	close
	cmp	eax, 0
	jge	.label_572
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.67
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
.label_572:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	mov	al, byte ptr [rbp - 0x189]
	and	al, 1
	mov	byte ptr [rbp - 9], al
.label_567:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x4d8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6b0

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
	je	.label_644
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.75
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_644:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a700

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
	je	.label_645
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_645
	mov	dword ptr [rbp - 0x14], 0
.label_645:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a750

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
	jne	.label_652
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_649
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x18], 1
	jne	.label_649
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x2b], 1
	je	.label_652
.label_649:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_655
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x18], 1
	je	.label_658
.label_655:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_662
.label_658:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x60], ecx
.label_662:
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
	je	.label_648
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	edx, dword ptr [rbp - 0x4c]
	call	qset_acl
	cmp	eax, 0
	je	.label_648
	mov	rdi, qword ptr [rbp - 0x10]
	call	owner_failure_ok
	test	al, 1
	jne	.label_660
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.76
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
.label_660:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + 0x24]
	and	dl, 1
	movzx	esi, dl
	sub	eax, esi
	mov	dword ptr [rbp - 4], eax
	jmp	.label_651
.label_648:
	jmp	.label_652
.label_652:
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_656
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	call	fchown
	cmp	eax, 0
	jne	.label_659
	mov	dword ptr [rbp - 4], 1
	jmp	.label_651
.label_659:
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_663
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_647
.label_663:
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
.label_647:
	jmp	.label_654
.label_656:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	call	lchown
	cmp	eax, 0
	jne	.label_657
	mov	dword ptr [rbp - 4], 1
	jmp	.label_651
.label_657:
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_661
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_653
.label_661:
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
.label_653:
	jmp	.label_654
.label_654:
	mov	rdi, qword ptr [rbp - 0x10]
	call	chown_failure_ok
	test	al, 1
	jne	.label_650
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.46
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
	je	.label_646
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_651
.label_646:
	jmp	.label_650
.label_650:
	mov	dword ptr [rbp - 4], 0
.label_651:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa40

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
	.align	32
	#Procedure 0x40aa60

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
	.align	32
	#Procedure 0x40aa80

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
	je	.label_664
	call	can_write_any_file
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0xd], cl
	jne	.label_664
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 8]
	call	euidaccess
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0xd], cl
.label_664:
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aae0

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
	.align	32
	#Procedure 0x40ab10

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
	jge	.label_668
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_668
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_665
.label_668:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_665
.label_665:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x20000
	mov	edx, ecx
	cmp	rdx, rax
	jle	.label_666
	mov	eax, 0x20000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_670
.label_666:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x38]
	jge	.label_667
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_667
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_669
.label_667:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_669
.label_669:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_670:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40abe0

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
	jne	.label_671
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
.label_671:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac40

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
	.align	32
	#Procedure 0x40ac90

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
.label_694:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_read
	and	al, 1
	mov	byte ptr [rbp - 0xb2], al
	test	byte ptr [rbp - 0xb2], 1
	jne	.label_676
	test	byte ptr [rbp - 0x77], 1
	je	.label_679
	jmp	.label_680
.label_679:
	test	byte ptr [rbp - 0x78], 1
	je	.label_701
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_682
.label_701:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.68
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
	jmp	.label_682
.label_676:
	mov	byte ptr [rbp - 0xb3], 0
	mov	dword ptr [rbp - 0xb8], 0
.label_704:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0xb8]
	mov	edx, ecx
	cmp	rdx, qword ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0xf1], al
	jb	.label_695
	mov	al, byte ptr [rbp - 0xb3]
	mov	byte ptr [rbp - 0xf1], al
.label_695:
	mov	al, byte ptr [rbp - 0xf1]
	test	al, 1
	jne	.label_706
	jmp	.label_686
.label_706:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x80]
	jae	.label_710
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
	jmp	.label_672
.label_710:
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
.label_672:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xc0]
	add	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, rcx
	jge	.label_691
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xc0]
	jge	.label_696
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_696:
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rax
.label_691:
	mov	rax, qword ptr [rbp - 0xc0]
	sub	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xd0], rax
	mov	byte ptr [rbp - 0xb1], 0
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_690
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc0]
	call	lseek
	cmp	rax, 0
	jge	.label_673
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.69
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
.label_677:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_free
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_682
.label_673:
	test	byte ptr [rbp - 0xb3], 1
	je	.label_688
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_692
.label_688:
	test	byte ptr [rbp - 0xb3], 1
	jne	.label_693
	cmp	dword ptr [rbp - 0x4c], 1
	je	.label_693
.label_692:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x60]
	cmp	dword ptr [rbp - 0x4c], 3
	sete	al
	mov	rcx, qword ptr [rbp - 0xd0]
	and	al, 1
	movzx	edx, al
	call	create_hole
	test	al, 1
	jne	.label_700
	jmp	.label_677
.label_700:
	mov	byte ptr [rbp - 0xb1], 1
	jmp	.label_702
.label_693:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd8], rax
	test	byte ptr [rbp - 0xb3], 1
	je	.label_705
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xd0]
	jge	.label_709
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_674
.label_709:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x108], rax
.label_674:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0xd8], rax
.label_705:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	write_zeros
	test	al, 1
	jne	.label_683
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.70
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
	jmp	.label_677
.label_683:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xc0]
	jge	.label_698
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_707
.label_698:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x120], rax
.label_707:
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0xb0], rax
.label_702:
	jmp	.label_690
.label_690:
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
	jne	.label_708
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x140], rax
	jmp	.label_681
.label_708:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	jmp	.label_681
.label_681:
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
	jne	.label_675
	jmp	.label_677
.label_675:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	je	.label_678
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	mov	byte ptr [rbp - 0xb1], al
.label_678:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_685
	mov	byte ptr [rbp - 0x77], 1
	jmp	.label_686
.label_685:
	jmp	.label_687
.label_687:
	mov	eax, dword ptr [rbp - 0xb8]
	add	eax, 1
	mov	dword ptr [rbp - 0xb8], eax
	jmp	.label_704
.label_686:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_free
	mov	al, byte ptr [rbp - 0x77]
	xor	al, 0xff
	test	al, 1
	jne	.label_694
.label_680:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jl	.label_697
	test	byte ptr [rbp - 0xb1], 1
	je	.label_689
.label_697:
	cmp	dword ptr [rbp - 0x4c], 1
	je	.label_699
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x48]
	call	ftruncate
	cmp	eax, 0
	jne	.label_703
	jmp	.label_689
.label_699:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	rsi, rax
	call	write_zeros
	test	al, 1
	jne	.label_689
.label_703:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.66
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
	jmp	.label_682
.label_689:
	cmp	dword ptr [rbp - 0x4c], 3
	jne	.label_684
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_684
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	call	punch_hole
	cmp	eax, 0
	jge	.label_684
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.71
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
	jmp	.label_682
.label_684:
	mov	byte ptr [rbp - 0x19], 1
.label_682:
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
	.align	32
	#Procedure 0x40b410

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
.label_714:
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_711
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0xa8], edi
	mov	qword ptr [rbp - 0xb0], rsi
	jae	.label_715
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_724
.label_715:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb8], rax
.label_724:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	edi, dword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jge	.label_736
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_743
	jmp	.label_714
.label_743:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.72
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
	jmp	.label_725
.label_736:
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_727
	jmp	.label_711
.label_727:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_741
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_719
.label_741:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd0], rax
.label_719:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa0], rax
.label_733:
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_734
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	byte ptr [rbp - 0xa1], al
	mov	rcx, qword ptr [rbp - 0x90]
	cmp	rcx, qword ptr [rbp - 0x88]
	jae	.label_739
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_716
.label_739:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xd8], rax
.label_716:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_721
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_721
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x90]
	call	is_nul
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
.label_721:
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
	je	.label_738
	cmp	qword ptr [rbp - 0x80], 0
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_738:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	mov	byte ptr [rbp - 0xa2], al
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rcx, qword ptr [rbp - 0x90]
	jne	.label_720
	mov	al, 1
	test	byte ptr [rbp - 0x71], 1
	mov	byte ptr [rbp - 0xda], al
	je	.label_730
.label_720:
	cmp	qword ptr [rbp - 0x90], 0
	setne	al
	xor	al, 0xff
	mov	byte ptr [rbp - 0xda], al
.label_730:
	mov	al, byte ptr [rbp - 0xda]
	and	al, 1
	mov	byte ptr [rbp - 0xa3], al
	test	byte ptr [rbp - 0xa2], 1
	jne	.label_737
	test	byte ptr [rbp - 0xa3], 1
	je	.label_713
.label_737:
	test	byte ptr [rbp - 0xa2], 1
	jne	.label_735
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_735:
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_723
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x80]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x80]
	je	.label_732
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.73
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
	jmp	.label_725
.label_732:
	jmp	.label_722
.label_723:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x80]
	and	al, 1
	movzx	edx, al
	call	create_hole
	test	al, 1
	jne	.label_742
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_725
.label_742:
	jmp	.label_722
.label_722:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x80], rax
	test	byte ptr [rbp - 0xa3], 1
	je	.label_729
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_712
	mov	qword ptr [rbp - 0x88], 0
.label_712:
	test	byte ptr [rbp - 0xa2], 1
	je	.label_718
	mov	qword ptr [rbp - 0x90], 0
	jmp	.label_726
.label_718:
	mov	qword ptr [rbp - 0x80], 0
.label_726:
	jmp	.label_729
.label_729:
	jmp	.label_728
.label_713:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rbp - 0x90]
	cmp	rcx, rax
	ja	.label_731
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_740
.label_731:
	movabs	rdi, OFFSET FLAT:.str.74
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
	jmp	.label_725
.label_740:
	jmp	.label_728
.label_728:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x88], rcx
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_733
.label_734:
	mov	al, byte ptr [rbp - 0x71]
	mov	rcx, qword ptr [rbp - 0x70]
	and	al, 1
	mov	byte ptr [rcx], al
	jmp	.label_714
.label_711:
	test	byte ptr [rbp - 0x71], 1
	je	.label_717
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x80]
	and	al, 1
	movzx	edx, al
	call	create_hole
	test	al, 1
	jne	.label_717
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_725
.label_717:
	mov	byte ptr [rbp - 0x19], 1
.label_725:
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
	.align	32
	#Procedure 0x40b960

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
	jg	.label_744
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x14]
	call	fchmod
	mov	dword ptr [rbp - 4], eax
	jmp	.label_745
.label_744:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	chmod
	mov	dword ptr [rbp - 4], eax
.label_745:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b9b0

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
	.align	32
	#Procedure 0x40b9f0

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
	jge	.label_746
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.69
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
	jmp	.label_747
.label_746:
	test	byte ptr [rbp - 0x11], 1
	je	.label_748
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	punch_hole
	cmp	eax, 0
	jge	.label_748
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.71
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
	jmp	.label_747
.label_748:
	mov	byte ptr [rbp - 1], 1
.label_747:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb00

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	jne	.label_749
	mov	eax, 1
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [write_zeros.nz]]
	call	calloc
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	jne	.label_755
	movabs	rax, OFFSET FLAT:write_zeros.fallback
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	mov	qword ptr [word ptr [write_zeros.nz]],  0x400
.label_755:
	jmp	.label_749
.label_749:
	jmp	.label_751
.label_751:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_754
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_756
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_753
.label_756:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_753:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [write_zeros.zeros]]
	mov	rdx, qword ptr [rbp - 0x18]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_750
	mov	byte ptr [rbp - 1], 0
	jmp	.label_752
.label_750:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_751
.label_754:
	mov	byte ptr [rbp - 1], 1
.label_752:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc00

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
	jge	.label_757
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	is_ENOTSUP
	test	al, 1
	jne	.label_758
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_757
.label_758:
	mov	dword ptr [rbp - 0x1c], 0
.label_757:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc70

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_759
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 5], cl
	jmp	.label_759
.label_759:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bca0

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
	jne	.label_760
	mov	byte ptr [rbp - 1], 1
	jmp	.label_761
.label_760:
	jmp	.label_762
.label_762:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0
	cmp	rax, 0
	je	.label_767
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_768
	mov	byte ptr [rbp - 1], 0
	jmp	.label_761
.label_768:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_770
	mov	byte ptr [rbp - 1], 1
	jmp	.label_761
.label_770:
	jmp	.label_762
.label_767:
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
	cmp	byte ptr [rbp - 0x21], 0
	je	.label_766
	mov	byte ptr [rbp - 1], 0
	jmp	.label_761
.label_766:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_765
	mov	byte ptr [rbp - 1], 1
	jmp	.label_761
.label_765:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0xf
	cmp	rax, 0
	jne	.label_769
	jmp	.label_763
.label_769:
	jmp	.label_764
.label_763:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_761:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bdc0

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_771
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	mov	byte ptr [rbp - 9], dl
	jne	.label_772
.label_771:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x1b]
	xor	cl, 0xff
	mov	byte ptr [rbp - 9], cl
.label_772:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40be10

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
	je	.label_773
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	src_to_dest_free
.label_773:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40be70

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
	.align	32
	#Procedure 0x40bea0

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
	je	.label_775
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_774
.label_775:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_774
.label_774:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf10

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
	jne	.label_777
	call	xalloc_die
.label_777:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_776
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	src_to_dest_free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_778
.label_776:
	mov	qword ptr [rbp - 8], 0
.label_778:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bfd0

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
	jne	.label_779
	call	xalloc_die
.label_779:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c020

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
	.align	32
	#Procedure 0x40c050

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
	jne	.label_780
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	sete	dl
	mov	byte ptr [rbp - 0x21], dl
.label_780:
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
	.align	32
	#Procedure 0x40c0c0
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
	.align	32
	#Procedure 0x40c0e0

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
	.align	32
	#Procedure 0x40c150

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
	.align	32
	#Procedure 0x40c160

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
.label_789:
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
	jge	.label_794
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_795
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x20], 1
.label_795:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_782
.label_794:
	mov	rax, qword ptr [rbp - 0x1028]
	cmp	dword ptr [rax + 0x14], 0
	jne	.label_800
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x21], 1
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_782
.label_800:
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	esi, dword ptr [rdx + 0x14]
	mov	edx, esi
	sub	rax, rdx
	cmp	rcx, rax
	ja	.label_783
	jmp	.label_796
.label_783:
	movabs	rdi, OFFSET FLAT:.str_3
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	edx, 0x7e
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_796:
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
.label_801:
	mov	eax, dword ptr [rbp - 0x103c]
	mov	rcx, qword ptr [rbp - 0x1028]
	cmp	eax, dword ptr [rcx + 0x14]
	jae	.label_784
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
	ja	.label_781
	jmp	.label_798
.label_781:
	movabs	rdi, OFFSET FLAT:.str.2_2
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	edx, 0x8d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_798:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_790
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	eax, edx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x1030]
	mov	edx, dword ptr [rax + 0x28]
	and	edx, 0xfffffffe
	cmp	ecx, edx
	jne	.label_790
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	ecx, edx
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rcx]
	jne	.label_790
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
	jmp	.label_793
.label_790:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_786
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rdx]
	ja	.label_792
.label_786:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_797
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	ecx, edx
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rcx]
	jbe	.label_797
.label_792:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_802
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x1048], rax
	jmp	.label_806
.label_802:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x1048], rax
.label_806:
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
	jae	.label_804
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_791
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x20], 1
.label_791:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_782
.label_804:
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
	jmp	.label_785
.label_797:
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
	jmp	.label_793
.label_793:
	jmp	.label_785
.label_785:
	mov	eax, dword ptr [rbp - 0x103c]
	add	eax, 1
	mov	dword ptr [rbp - 0x103c], eax
	jmp	.label_801
.label_784:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	and	ecx, 1
	cmp	ecx, 0
	je	.label_805
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x21], 1
.label_805:
	cmp	dword ptr [rbp - 0x14], 0x48
	jbe	.label_788
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x21], 1
	jne	.label_788
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
.label_788:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + 0x21], 1
	je	.label_799
	jmp	.label_787
.label_799:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	cmp	dword ptr [rbp - 0x14], 0x48
	jb	.label_803
	jmp	.label_787
.label_803:
	jmp	.label_789
.label_787:
	mov	byte ptr [rbp - 1], 1
.label_782:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x1060
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c740

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
	jge	.label_807
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	call	linkat
	cmp	eax, 0
	jne	.label_811
	xor	eax, eax
	mov	dword ptr [rbp - 0x158], eax
	jmp	.label_813
.label_811:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x158], ecx
.label_813:
	mov	eax, dword ptr [rbp - 0x158]
	mov	dword ptr [rbp - 0x2c], eax
.label_807:
	test	byte ptr [rbp - 0x25], 1
	je	.label_818
	cmp	dword ptr [rbp - 0x2c], 0x11
	je	.label_809
.label_818:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_808
.label_809:
	lea	rsi, [rbp - 0x130]
	mov	rdi, qword ptr [rbp - 0x20]
	call	samedir_template
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	jne	.label_816
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_808
.label_816:
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
	je	.label_814
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], ecx
	jmp	.label_815
.label_814:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	jne	.label_810
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x15c], eax
	jmp	.label_812
.label_810:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x15c], ecx
.label_812:
	mov	eax, dword ptr [rbp - 0x15c]
	xor	edx, edx
	mov	dword ptr [rbp - 0x154], eax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	mov	dword ptr [rbp - 0x160], eax
.label_815:
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, rax
	je	.label_817
	mov	rdi, qword ptr [rbp - 0x138]
	call	free
.label_817:
	mov	eax, dword ptr [rbp - 0x154]
	mov	dword ptr [rbp - 4], eax
.label_808:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c910

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
	ja	.label_822
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_819
.label_822:
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_821
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_820
.label_821:
	jmp	.label_819
.label_819:
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
.label_820:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c9c0

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
	#Procedure 0x40ca10

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
	jge	.label_827
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	call	symlinkat
	cmp	eax, 0
	jne	.label_825
	xor	eax, eax
	mov	dword ptr [rbp - 0x150], eax
	jmp	.label_830
.label_825:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x150], ecx
.label_830:
	mov	eax, dword ptr [rbp - 0x150]
	mov	dword ptr [rbp - 0x28], eax
.label_827:
	test	byte ptr [rbp - 0x21], 1
	je	.label_834
	cmp	dword ptr [rbp - 0x28], 0x11
	je	.label_824
.label_834:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_823
.label_824:
	lea	rsi, [rbp - 0x130]
	mov	rdi, qword ptr [rbp - 0x20]
	call	samedir_template
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	jne	.label_832
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_823
.label_832:
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
	je	.label_826
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], ecx
	jmp	.label_829
.label_826:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	je	.label_833
	call	__errno_location
	xor	edx, edx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], ecx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_831
.label_833:
	mov	dword ptr [rbp - 0x14c], 0xffffffff
.label_831:
	jmp	.label_829
.label_829:
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, rax
	je	.label_828
	mov	rdi, qword ptr [rbp - 0x138]
	call	free
.label_828:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 4], eax
.label_823:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cbb0

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
	#Procedure 0x40cbf0

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
	je	.label_837
	jmp	.label_838
.label_838:
	mov	eax, dword ptr [rbp - 0x28]
	sub	eax, -1
	mov	dword ptr [rbp - 0x30], eax
	je	.label_839
	jmp	.label_836
.label_837:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x34], esi
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rbp - 0x34]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_835
.label_839:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_1
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
	jmp	.label_835
.label_836:
	jmp	.label_835
.label_835:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ccd0

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
	je	.label_840
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
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
.label_840:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cd40

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
	jae	.label_841
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_850
.label_841:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
.label_850:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_842
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_847
.label_842:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_847:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x38], rax
.label_848:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_849
	mov	qword ptr [rbp - 8], 0
	jmp	.label_844
.label_849:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	call	readlink
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_846
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_846
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
	jmp	.label_844
.label_846:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_843
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_844
.label_843:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	movabs	rdi, 0x3fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_853
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_845
.label_853:
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_852
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_851
.label_852:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_844
.label_851:
	jmp	.label_845
.label_845:
	jmp	.label_848
.label_844:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cf00

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40cf10

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
.label_858:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_855
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_860
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_856
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_859
.label_856:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_862
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_861
.label_862:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_865
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
	je	.label_864
.label_865:
	mov	byte ptr [rbp - 0x41], 1
.label_864:
	jmp	.label_861
.label_861:
	jmp	.label_854
.label_854:
	jmp	.label_860
.label_860:
	jmp	.label_857
.label_857:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_858
.label_855:
	test	byte ptr [rbp - 0x41], 1
	je	.label_863
	mov	qword ptr [rbp - 8], -2
	jmp	.label_859
.label_863:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_859:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d060

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
	jne	.label_866
	movabs	rdi, OFFSET FLAT:.str_5
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_867
.label_866:
	movabs	rdi, OFFSET FLAT:.str.1_3
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_867:
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
	#Procedure 0x40d100

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_3
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
.label_871:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_870
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_872
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_868
.label_872:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_1
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
	jmp	.label_869
.label_868:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_1
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_869:
	jmp	.label_873
.label_873:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_871
.label_870:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d250

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
	jl	.label_875
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_874
.label_875:
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
.label_874:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d2e0
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
.label_877:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_876
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_878
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_879
.label_878:
	jmp	.label_880
.label_880:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_877
.label_876:
	mov	qword ptr [rbp - 8], 0
.label_879:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d380

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_881
	movabs	rdi, OFFSET FLAT:.str_6
	call	getenv
	mov	qword ptr [rbp - 8], rax
.label_881:
	cmp	qword ptr [rbp - 8], 0
	je	.label_883
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_883
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	call	last_component
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi, rax
	jne	.label_883
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_882
.label_883:
	movabs	rax, OFFSET FLAT:.str.1_4
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_882
.label_882:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [simple_backup_suffix]],  rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d420

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
	jne	.label_898
	xor	eax, eax
	mov	edi, eax
	call	set_simple_backup_suffix
.label_898:
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 9
	jae	.label_889
	mov	qword ptr [rbp - 0x40], 9
.label_889:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_896
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_894
.label_896:
	mov	qword ptr [rbp - 0x58], 0
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	mov	qword ptr [rbp - 0x68], 0
.label_900:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rdx, rax
	call	memcpy
	cmp	dword ptr [rbp - 0x1c], 1
	jne	.label_892
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	memcpy
	jmp	.label_885
.label_892:
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
	ja	.label_888
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_884]]
	jmp	rcx
.label_1994:
	jmp	.label_888
.label_1995:
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_890
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	memcpy
.label_890:
	jmp	.label_895
.label_895:
	mov	edx, 0x7e
	lea	r8, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x5c]
	call	check_extension
	jmp	.label_888
.label_1996:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_894
.label_888:
	jmp	.label_885
.label_885:
	test	byte ptr [rbp - 0x1d], 1
	jne	.label_887
	jmp	.label_891
.label_887:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_893
	mov	dword ptr [rbp - 0x5c], 0xffffff9c
	mov	qword ptr [rbp - 0x28], 0
.label_893:
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
	jne	.label_899
	jmp	.label_891
.label_899:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x70], ecx
	cmp	dword ptr [rbp - 0x70], 0x11
	je	.label_901
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_886
	mov	rdi, qword ptr [rbp - 0x58]
	call	closedir
	mov	dword ptr [rbp - 0x88], eax
.label_886:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x8c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_894
.label_901:
	jmp	.label_900
.label_891:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_897
	mov	rdi, qword ptr [rbp - 0x58]
	call	closedir
	mov	dword ptr [rbp - 0x90], eax
.label_897:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_894:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d710

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
	je	.label_920
	mov	rdi, qword ptr [rbp - 0x48]
	call	rewinddir
	jmp	.label_904
.label_920:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x68]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x72], cx
	mov	rdi, qword ptr [rbp - 0x68]
	mov	esi, OFFSET FLAT:.str.2_1
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
	jne	.label_915
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_915
	mov	dword ptr [rbp - 0x3c], 3
.label_915:
	mov	rax, qword ptr [rbp - 0x68]
	mov	cx, word ptr [rbp - 0x72]
	mov	word ptr [rax], cx
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x70]
	mov	edx, OFFSET FLAT:.str.3_2
	mov	esi, edx
	mov	rdi, rax
	call	strcpy
	cmp	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0xc0], rax
	jne	.label_906
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_909
.label_906:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
.label_904:
	jmp	.label_907
.label_907:
	mov	rdi, qword ptr [rbp - 0x48]
	call	readdir
	mov	qword ptr [rbp - 0x50], rax
	cmp	rax, 0
	je	.label_914
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x70]
	add	rdi, 4
	cmp	rax, rdi
	jae	.label_919
	jmp	.label_907
.label_919:
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
	je	.label_908
	jmp	.label_907
.label_908:
	mov	eax, 0x31
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x13
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 2
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jg	.label_912
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	jle	.label_917
.label_912:
	jmp	.label_907
.label_917:
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x89], dl
	mov	qword ptr [rbp - 0x98], 1
.label_910:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	sub	edx, 0x30
	cmp	edx, 9
	ja	.label_905
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
	jmp	.label_910
.label_905:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7e
	jne	.label_902
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	byte ptr [rcx + rax + 1], 0
	jne	.label_902
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jb	.label_911
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_902
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x20]
	add	rax, 2
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jle	.label_911
.label_902:
	jmp	.label_907
.label_911:
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
	jae	.label_921
	movabs	rax, 0x3fffffffffffffff
	cmp	rax, qword ptr [rbp - 0xa0]
	jb	.label_916
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
.label_916:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0xa0]
	call	realloc
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_913
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 3
	jmp	.label_909
.label_913:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x18], rax
.label_921:
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
.label_903:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x39
	jne	.label_918
	mov	rax, qword ptr [rbp - 0x88]
	mov	byte ptr [rax], 0x30
	jmp	.label_903
.label_918:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	add	cl, 1
	mov	byte ptr [rax], cl
	jmp	.label_907
.label_914:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], edx
.label_909:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dbd0

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
	jae	.label_923
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_925
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_927
	mov	rax, qword ptr [rbp - 0x28]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x42], cx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	edx, OFFSET FLAT:.str.2_1
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
	jmp	.label_928
.label_927:
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
.label_928:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jg	.label_926
	cmp	qword ptr [rbp - 0x40], -1
	ja	.label_926
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_922
.label_926:
	mov	rax, -1
	mov	ecx, 0xe
	mov	edx, ecx
	cmp	qword ptr [rbp - 0x40], -1
	cmovl	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
.label_922:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_925:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_923:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_929
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_924
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_924:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx + 1], 0
.label_929:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dda0

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
	.align	32
	#Procedure 0x40ddd0

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
	jne	.label_930
	call	xalloc_die
.label_930:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de20

	.globl get_version
	.type get_version, @function
get_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_931
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_932
.label_931:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_933
.label_932:
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
.label_933:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dea0

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_934
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_934
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	get_version
	mov	dword ptr [rbp - 4], eax
	jmp	.label_935
.label_934:
	movabs	rdi, OFFSET FLAT:.str.1_5
	call	getenv
	movabs	rdi, OFFSET FLAT:.str_7
	mov	rsi, rax
	call	get_version
	mov	dword ptr [rbp - 4], eax
.label_935:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df10

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_943
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_940
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_938
.label_940:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_938
.label_938:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_944
.label_943:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_936
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_941:
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rdx
	cmp	rdx, 0
	je	.label_947
	jmp	.label_945
.label_945:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_941
.label_947:
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
	ja	.label_942
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_942
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_937
.label_942:
	jmp	.label_936
.label_936:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_944:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_939
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_946
.label_939:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
.label_946:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 8], rax
.label_937:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e040
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
	#Procedure 0x40e060

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
	jbe	.label_953
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fseeko
	cmp	eax, 0
	jne	.label_949
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_949
	mov	byte ptr [rbp - 1], 1
.label_949:
	jmp	.label_953
.label_953:
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	close_stream
	cmp	eax, 0
	je	.label_948
	mov	byte ptr [rbp - 1], 1
.label_948:
	test	byte ptr [rbp - 1], 1
	je	.label_950
	movabs	rdi, OFFSET FLAT:.str_8
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_952
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0x14], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_6
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_954
.label_952:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	error
.label_954:
	jmp	.label_950
.label_950:
	call	close_stdout
	test	byte ptr [rbp - 1], 1
	je	.label_951
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_951:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e190
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
	#Procedure 0x40e1b0
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
	#Procedure 0x40e1d0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_956
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_958
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_956
.label_958:
	movabs	rdi, OFFSET FLAT:.str_9
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name_0]],  0
	je	.label_959
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name_0]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_6
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_955
.label_959:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_955:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_956:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_957
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_957:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e2c0

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
	jne	.label_960
	call	xalloc_die
.label_960:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e300

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_961
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_966
.label_961:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_966:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_963:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_962
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_965
	jmp	.label_962
.label_965:
	jmp	.label_964
.label_964:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_963
.label_962:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e3b0

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
	je	.label_967
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_967
.label_967:
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
	jne	.label_969
	mov	qword ptr [rbp - 8], 0
	jmp	.label_968
.label_969:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_970
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_970:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_968:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e480

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_973:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_971
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_973
.label_971:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_975:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_977
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_974
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_976
.label_974:
	test	byte ptr [rbp - 0x19], 1
	je	.label_972
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_972:
	jmp	.label_976
.label_976:
	jmp	.label_978
.label_978:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_975
.label_977:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e520

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
.label_981:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_979
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_979:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_980
	jmp	.label_983
.label_980:
	jmp	.label_982
.label_982:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_981
.label_983:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e5b0

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
	jne	.label_984
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_984:
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
	#Procedure 0x40e630

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
	.align	32
	#Procedure 0x40e670
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_985
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
.label_985:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e6c0

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
	je	.label_986
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
.label_986:
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
	je	.label_987
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
	ja	.label_988
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_989
.label_988:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_989:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_987:
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
	#Procedure 0x40e8c0

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
	jne	.label_990
	jmp	.label_991
.label_990:
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
	jne	.label_992
	call	xalloc_die
.label_992:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_991
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	triple_free
.label_991:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e970

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
	jne	.label_993
	mov	byte ptr [rbp - 1], 0
	jmp	.label_994
.label_993:
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
.label_994:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e9f0

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
	je	.label_998
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_997
.label_998:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_997:
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
	je	.label_1000
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_999
.label_1000:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_999:
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
	je	.label_996
	mov	eax, 0x54
	mov	ecx, 0x74
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_995
.label_996:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_995:
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
	.align	32
	#Procedure 0x40ebf0

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	cmp	edi, 0x8000
	jne	.label_1006
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_1001
.label_1006:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_1008
	mov	byte ptr [rbp - 1], 0x64
	jmp	.label_1001
.label_1008:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_1007
	mov	byte ptr [rbp - 1], 0x62
	jmp	.label_1001
.label_1007:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1005
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_1001
.label_1005:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_1004
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_1001
.label_1004:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_1002
	mov	byte ptr [rbp - 1], 0x70
	jmp	.label_1001
.label_1002:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_1003
	mov	byte ptr [rbp - 1], 0x73
	jmp	.label_1001
.label_1003:
	mov	byte ptr [rbp - 1], 0x3f
.label_1001:
	movsx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ecd0
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
	je	.label_1009
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_1012
.label_1009:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1010
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x51
	jmp	.label_1014
.label_1010:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1011
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x53
	jmp	.label_1013
.label_1011:
	jmp	.label_1013
.label_1013:
	jmp	.label_1014
.label_1014:
	jmp	.label_1012
.label_1012:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed70

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
	jne	.label_1015
	call	xalloc_die
.label_1015:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40edc0

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
	je	.label_1018
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_1020
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_1020
	mov	byte ptr [rbp - 0x41], 0x2f
.label_1020:
	jmp	.label_1016
.label_1018:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1022
	mov	byte ptr [rbp - 0x41], 0x2e
.label_1022:
	jmp	.label_1016
.label_1016:
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
	jne	.label_1021
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1017
.label_1021:
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
	je	.label_1019
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1019:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_1017:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ef40

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
.label_1023:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_1025
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1026
	jmp	.label_1025
.label_1026:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1024
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_1025
.label_1024:
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
	jmp	.label_1023
.label_1025:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eff0

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
	#Procedure 0x40f010

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
	#Procedure 0x40f030

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
	#Procedure 0x40f050

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
.label_1029:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1032
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1030
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_1028:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1031
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1028
.label_1031:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1027
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1027:
	jmp	.label_1030
.label_1030:
	jmp	.label_1033
.label_1033:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1029
.label_1032:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f100
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
.label_1041:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1034
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1038
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1039:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1036
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1039
.label_1036:
	jmp	.label_1038
.label_1038:
	jmp	.label_1037
.label_1037:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1041
.label_1034:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_1035
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1035
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1040
.label_1035:
	mov	byte ptr [rbp - 1], 0
.label_1040:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f1f0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:.str.2_4
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
	mov	ecx, OFFSET FLAT:.str_10
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str.1_7
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1042]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1043]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1044]]
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
	movabs	rsi, OFFSET FLAT:.str.3_3
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
	#Procedure 0x40f310

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
	jne	.label_1048
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1050
.label_1048:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1047:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1051
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1046
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1046
	jmp	.label_1049
.label_1046:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1050
.label_1049:
	jmp	.label_1045
.label_1045:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1047
.label_1051:
	mov	qword ptr [rbp - 8], 0
.label_1050:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f3d0

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
	jb	.label_1052
	call	abort
.label_1052:
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
	#Procedure 0x40f440
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1053
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1054
.label_1053:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1055:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_1056
	call	abort
.label_1056:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1057
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1054
.label_1057:
	jmp	.label_1058
.label_1058:
	jmp	.label_1059
.label_1059:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1055
.label_1054:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f4d0
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
.label_1064:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1063
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1063
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1065
.label_1063:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1064
	jmp	.label_1060
.label_1060:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1062
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1061
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1065
.label_1061:
	jmp	.label_1060
.label_1062:
	mov	qword ptr [rbp - 8], 0
.label_1065:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f5a0
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
.label_1070:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1067
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1066
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1072:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1071
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1073
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1068
.label_1073:
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
	jmp	.label_1072
.label_1071:
	jmp	.label_1066
.label_1066:
	jmp	.label_1069
.label_1069:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1070
.label_1067:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1068:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f670
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
.label_1077:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1076
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1075
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1080:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1081
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_1079
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1074
.label_1079:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1080
.label_1081:
	jmp	.label_1075
.label_1075:
	jmp	.label_1078
.label_1078:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1077
.label_1076:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1074:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f740
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1083:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_1082
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
	jmp	.label_1083
.label_1082:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f7a0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_1084]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_1085]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f7d0

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
	jne	.label_1091
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1091:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1086
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_1086:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1092
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1090
.label_1092:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1087
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1087:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_1093
	jmp	.label_1089
.label_1093:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1088
	jmp	.label_1089
.label_1088:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_1094
	jmp	.label_1089
.label_1094:
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
	jmp	.label_1090
.label_1089:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1090:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f970

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
	#Procedure 0x40f9b0

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
	#Procedure 0x40f9d0

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
	jne	.label_1099
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1098
.label_1099:
	movss	xmm0,  dword ptr [dword ptr [label_1095]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1096
	movss	xmm0,  dword ptr [dword ptr [label_1097]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1096
	movss	xmm0,  dword ptr [dword ptr [label_1097]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_1096
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_1096
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1096
	movss	xmm0,  dword ptr [dword ptr [label_1097]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1096
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1096
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1098
.label_1096:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1098:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fb00

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
	jne	.label_1100
	movss	xmm0,  dword ptr [dword ptr [label_1105]]
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
	js	.label_1106
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1106:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_1103
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1102
.label_1103:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1101]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_1100:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_1104
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1102
.label_1104:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1102:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fc20
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
.label_1111:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1112
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1110
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1109:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1107
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1113
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1113:
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
	jmp	.label_1109
.label_1107:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1114
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1114:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1110:
	jmp	.label_1108
.label_1108:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1111
.label_1112:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fd40

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_1115
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_1115
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1121:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1124
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1117
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1128:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1122
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1128
.label_1122:
	jmp	.label_1117
.label_1117:
	jmp	.label_1119
.label_1119:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1121
.label_1124:
	jmp	.label_1115
.label_1115:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1118:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1126
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1127:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1120
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1127
.label_1120:
	jmp	.label_1116
.label_1116:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1118
.label_1126:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_1125:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1123
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1125
.label_1123:
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
	#Procedure 0x40fec0

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
	jne	.label_1132
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1129
.label_1132:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1136
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1129
.label_1136:
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
	jne	.label_1134
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1129
.label_1134:
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
	jne	.label_1133
	jmp	.label_1135
.label_1133:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
.label_2008:
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
	jmp	.label_1129
.label_1135:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1137
	jmp	.label_1130
.label_1137:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1131
.label_1130:
	call	abort
.label_1131:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_1129:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4100d0

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
.label_1141:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1149
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1140
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1143:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1145
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
	je	.label_1138
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1146
.label_1138:
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
.label_1146:
	jmp	.label_1147
.label_1147:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1143
.label_1145:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_1151
	jmp	.label_1139
.label_1151:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1148
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1142
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1144
.label_1142:
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
	jmp	.label_1150
.label_1148:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1150:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_1140:
	jmp	.label_1139
.label_1139:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1141
.label_1149:
	mov	byte ptr [rbp - 1], 1
.label_1144:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4102b0

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
	jne	.label_1168
	call	abort
.label_1168:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_1170
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1167
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1167:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1153
.label_1170:
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
	js	.label_1160
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1160:
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
	js	.label_1165
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1165:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1155
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
	js	.label_1166
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1166:
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
	js	.label_1156
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1156:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_1162
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_1159
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
	js	.label_1152
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1152:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1158
.label_1159:
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
	js	.label_1169
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1169:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1158:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [label_1105]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_1161
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1153
.label_1161:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1101]]
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
	jne	.label_1163
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1153
.label_1163:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_1154
	call	abort
.label_1154:
	jmp	.label_1162
.label_1162:
	jmp	.label_1155
.label_1155:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1157
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1164
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1153
.label_1164:
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
	jmp	.label_1153
.label_1157:
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
.label_1153:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410750

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
	jne	.label_1174
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1176
.label_1174:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1171
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1171
	jmp	.label_1173
.label_1171:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1183
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1180
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
	jmp	.label_1179
.label_1180:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1179:
	jmp	.label_1183
.label_1183:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1176
.label_1173:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1182:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_1175
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_1172
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1172
	jmp	.label_1177
.label_1172:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1178
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
.label_1178:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1176
.label_1177:
	jmp	.label_1181
.label_1181:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1182
.label_1175:
	mov	qword ptr [rbp - 8], 0
.label_1176:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410920

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1184
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1185
.label_1184:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_1185:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410980

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
	jne	.label_1186
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1189
.label_1186:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_1188
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1187
.label_1188:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1187:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1189:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4109f0

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
	jne	.label_1198
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1192
.label_1198:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1193
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
	js	.label_1196
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1196:
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
	js	.label_1204
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1204:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1191
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
	js	.label_1201
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1201:
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
	js	.label_1197
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1197:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_1195
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1203
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
	js	.label_1194
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1194:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1199
.label_1203:
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
	js	.label_1205
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1205:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1199:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1101]]
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
	jne	.label_1202
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1200:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1190
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1200
.label_1190:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1202:
	jmp	.label_1195
.label_1195:
	jmp	.label_1191
.label_1191:
	jmp	.label_1193
.label_1193:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1192:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410df0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1206
	mov	qword ptr [rbp - 8], 0xa
.label_1206:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1208:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_1210
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_1210:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_1207
	jmp	.label_1209
.label_1207:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1208
.label_1209:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e70

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
.label_1212:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1214
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1214:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1213
	jmp	.label_1211
.label_1213:
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
	jmp	.label_1212
.label_1211:
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
	#Procedure 0x410f30

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
	#Procedure 0x410f70

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
	#Procedure 0x410fc0

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
	#Procedure 0x410ff0

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
	jne	.label_1215
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1215
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	byte ptr [rbp - 0x21], al
.label_1215:
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
	#Procedure 0x411080
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
	jne	.label_1216
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1216
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x21], cl
.label_1216:
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
	#Procedure 0x411120

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
	#Procedure 0x411150

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
	jge	.label_1218
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1217
.label_1218:
	mov	edi, dword ptr [rbp - 0x30]
	call	fdopendir
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1219
	mov	eax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1220
.label_1219:
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
.label_1220:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1217:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411200

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1221
	movabs	rdi, OFFSET FLAT:.str_11
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1221:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1222
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1224
.label_1222:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1224:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1223
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1223
	movabs	rsi, OFFSET FLAT:.str.2_5
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1225
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1225:
	jmp	.label_1223
.label_1223:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411320

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
	je	.label_1226
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1227
.label_1226:
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	call	set_permissions
	lea	rdi, [rbp - 0x30]
	mov	dword ptr [rbp - 0x34], eax
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
.label_1227:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4113a0

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
	.align	32
	#Procedure 0x411400
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
	je	.label_1228
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1229
.label_1228:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1229
.label_1229:
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
	#Procedure 0x411480
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1230
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1231
.label_1230:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1231
.label_1231:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4114c0
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
	je	.label_1232
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1233
.label_1232:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1233
.label_1233:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411510

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
	je	.label_1234
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1235
.label_1234:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1235
.label_1235:
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
	#Procedure 0x4115c0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1236
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1236:
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
	#Procedure 0x411600

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
	jne	.label_1237
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1237:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1239
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1238
.label_1239:
	call	abort
.label_1238:
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
	#Procedure 0x411670
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
	je	.label_1240
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1241
.label_1240:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1241
.label_1241:
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
	#Procedure 0x411740

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
.label_1334:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1433
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1274]]
	jmp	rcx
.label_2069:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2068:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1247
	jmp	.label_1249
.label_1249:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1250
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1250:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1247
.label_1247:
	movabs	rax, OFFSET FLAT:.str.10_1
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1261
.label_2070:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1261
.label_2071:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1270
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1270:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1282
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1391:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1286
	jmp	.label_1290
.label_1290:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1293
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1293:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1297
.label_1297:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1391
.label_1286:
	jmp	.label_1282
.label_1282:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1261
.label_2066:
	mov	byte ptr [rbp - 0x79], 1
.label_2065:
	mov	byte ptr [rbp - 0x7b], 1
.label_2067:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1317
	mov	byte ptr [rbp - 0x79], 1
.label_1317:
	jmp	.label_1319
.label_1319:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1326
	jmp	.label_1322
.label_1322:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1323
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1323:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1326
.label_1326:
	movabs	rax, OFFSET FLAT:.str.12_1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1261
.label_2064:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1261
.label_1433:
	call	abort
.label_1261:
	mov	qword ptr [rbp - 0x58], 0
.label_1300:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1341
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1345
.label_1341:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_1345:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1357
	jmp	.label_1364
.label_1357:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_1365
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1365
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1365
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_1374
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1374
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1386
.label_1374:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1386:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_1365
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1365
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1395
	jmp	.label_1253
.label_1395:
	mov	byte ptr [rbp - 0x81], 1
.label_1365:
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
	ja	.label_1336
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1403]]
	jmp	rcx
.label_1934:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1404
	jmp	.label_1417
.label_1417:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1402
	jmp	.label_1253
.label_1402:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1412
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1412
	jmp	.label_1414
.label_1414:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1415
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1415:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1420
.label_1420:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1423
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1423:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1427
.label_1427:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1431
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1431:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1412:
	jmp	.label_1440
.label_1440:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1442
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1442:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1438
.label_1438:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1252
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1252
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1252
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_1252
	jmp	.label_1268
.label_1268:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1389
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1389:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1276
.label_1276:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1279
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1279:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1252
.label_1252:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1291
.label_1404:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1295
	jmp	.label_1298
.label_1295:
	jmp	.label_1291
.label_1291:
	jmp	.label_1242
.label_1945:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1299
	jmp	.label_1306
.label_1306:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1308
	jmp	.label_1311
.label_1299:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1312
	jmp	.label_1253
.label_1312:
	jmp	.label_1316
.label_1308:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1318
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1318
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1318
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1255
	jmp	.label_1332
.label_1332:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1255
	jmp	.label_1338
.label_1338:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1255
	jmp	.label_1346
.label_1346:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1255
	jmp	.label_1350
.label_1350:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1351
	jmp	.label_1255
.label_1255:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1360
	jmp	.label_1253
.label_1360:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1363
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1363:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1372
.label_1372:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1376
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1376:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1380
.label_1380:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1327
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1327:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1390
.label_1390:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1384
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1384:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1394
.label_1351:
	jmp	.label_1394
.label_1394:
	jmp	.label_1318
.label_1318:
	jmp	.label_1316
.label_1311:
	jmp	.label_1316
.label_1316:
	jmp	.label_1242
.label_1935:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1400
.label_1936:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1400
.label_1940:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1400
.label_1938:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_1309
.label_1941:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_1309
.label_1937:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1309
.label_1939:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1400
.label_1946:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1406
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1409
	jmp	.label_1253
.label_1409:
	jmp	.label_1257
.label_1406:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1411
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1411
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1411
	jmp	.label_1257
.label_1411:
	jmp	.label_1309
.label_1309:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1419
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1419
	jmp	.label_1253
.label_1419:
	jmp	.label_1400
.label_1400:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1424
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1408
.label_1424:
	jmp	.label_1242
.label_1947:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1429
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1407
	jmp	.label_1436
.label_1429:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1407
.label_1436:
	jmp	.label_1242
.label_1407:
	jmp	.label_1439
.label_1439:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1441
	jmp	.label_1242
.label_1441:
	jmp	.label_1244
.label_1244:
	mov	byte ptr [rbp - 0x83], 1
.label_1942:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1248
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1248
	jmp	.label_1253
.label_1248:
	jmp	.label_1242
.label_1944:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1254
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1260
	jmp	.label_1253
.label_1260:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1265
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1265
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1265:
	jmp	.label_1272
.label_1272:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1399
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1399:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1278
.label_1278:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1281
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1281:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1289
.label_1289:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1296
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1296:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1254:
	jmp	.label_1242
.label_1943:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1242
.label_1336:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1307
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
	jmp	.label_1315
.label_1307:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1325
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1325:
	jmp	.label_1333
.label_1333:
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
	jne	.label_1348
	jmp	.label_1358
.label_1348:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1356
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1358
.label_1356:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1362
	mov	byte ptr [rbp - 0x91], 0
.label_1381:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1366
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1366:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1378
	jmp	.label_1379
.label_1378:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1381
.label_1379:
	jmp	.label_1358
.label_1362:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1388
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1388
	mov	qword ptr [rbp - 0xb8], 1
.label_1413:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1392
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
	jb	.label_1301
	jmp	.label_1401
.label_1401:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1301
	jmp	.label_1393
.label_1393:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1301
	jmp	.label_1405
.label_1405:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1292
	jmp	.label_1301
.label_1301:
	jmp	.label_1253
.label_1292:
	jmp	.label_1258
.label_1258:
	jmp	.label_1264
.label_1264:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1413
.label_1392:
	jmp	.label_1388
.label_1388:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1421
	mov	byte ptr [rbp - 0x91], 0
.label_1421:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1339
.label_1339:
	jmp	.label_1373
.label_1373:
	jmp	.label_1428
.label_1428:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1333
.label_1358:
	jmp	.label_1315
.label_1315:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_1437
	test	byte ptr [rbp - 0x79], 1
	je	.label_1246
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1246
.label_1437:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1328:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1256
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1256
	jmp	.label_1337
.label_1337:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1262
	jmp	.label_1253
.label_1262:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1267
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1267
	jmp	.label_1271
.label_1271:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1273
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1273:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1277
.label_1277:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1280
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1280:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1288
.label_1288:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1294
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1294:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1267:
	jmp	.label_1303
.label_1303:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1304
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1304:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1310
.label_1310:
	jmp	.label_1313
.label_1313:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1314
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1314:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1321
.label_1321:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1324
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1324:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1330
.label_1256:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1335
	jmp	.label_1340
.label_1340:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1342
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1342:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_1335:
	jmp	.label_1330
.label_1330:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1353
	jmp	.label_1359
.label_1353:
	jmp	.label_1361
.label_1361:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1287
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1287
	jmp	.label_1367
.label_1367:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1368
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1368:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1371
.label_1371:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1375
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1375:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1287:
	jmp	.label_1383
.label_1383:
	jmp	.label_1385
.label_1385:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1387
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1387:
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
	jmp	.label_1328
.label_1359:
	jmp	.label_1257
.label_1246:
	jmp	.label_1242
.label_1242:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1396
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1397
.label_1396:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1398
.label_1397:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1398
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
	jne	.label_1370
.label_1398:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1370
	jmp	.label_1257
.label_1370:
	jmp	.label_1408
.label_1408:
	jmp	.label_1435
.label_1435:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1410
	jmp	.label_1253
.label_1410:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1285
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1285
	jmp	.label_1416
.label_1416:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1418
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1418:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1422
.label_1422:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1425
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1425:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1430
.label_1430:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1434
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1434:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1285:
	jmp	.label_1243
.label_1243:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1245
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1245:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1251
.label_1251:
	jmp	.label_1257
.label_1257:
	jmp	.label_1320
.label_1320:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1259
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1259
	jmp	.label_1355
.label_1355:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1266
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1266:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1269
.label_1269:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1275
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1275:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1259:
	jmp	.label_1283
.label_1283:
	jmp	.label_1284
.label_1284:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1263
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1263:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1302
	mov	byte ptr [rbp - 0x7e], 0
.label_1302:
	jmp	.label_1298
.label_1298:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1300
.label_1364:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1305
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1305
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1305
	jmp	.label_1253
.label_1305:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1343
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1343
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1343
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1426
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
	jmp	.label_1329
.label_1426:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1331
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1331
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1334
.label_1331:
	jmp	.label_1382
.label_1382:
	jmp	.label_1343
.label_1343:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1344
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1344
	jmp	.label_1347
.label_1347:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1349
	jmp	.label_1352
.label_1352:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1354
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1354:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1432
.label_1432:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1347
.label_1349:
	jmp	.label_1344
.label_1344:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1369
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1369:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1329
.label_1253:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1377
	test	byte ptr [rbp - 0x79], 1
	je	.label_1377
	mov	dword ptr [rbp - 0x34], 4
.label_1377:
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
.label_1329:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ae0
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
	#Procedure 0x412b20

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
	je	.label_1443
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1444
.label_1443:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1444
.label_1444:
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
	je	.label_1445
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1445:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1449:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1448
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1449
.label_1448:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1450
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_1447]],  rax
.label_1450:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1446
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1446:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412d60

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
	#Procedure 0x412da0

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
	jge	.label_1458
	call	abort
.label_1458:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1455
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_1457
	call	xalloc_die
.label_1457:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1454
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1456
.label_1454:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1456:
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
	je	.label_1453
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1447]]
	mov	qword ptr [rax + 8], rcx
.label_1453:
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
.label_1455:
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
	ja	.label_1451
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_1452
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1452:
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
.label_1451:
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
	#Procedure 0x413020

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
	#Procedure 0x413060
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
	#Procedure 0x413080
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
	#Procedure 0x4130b0

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
	#Procedure 0x4130f0

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
	jne	.label_1459
	call	abort
.label_1459:
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
	#Procedure 0x413160

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
	#Procedure 0x4131a0

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
	#Procedure 0x4131d0
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
	#Procedure 0x413200

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
	#Procedure 0x413280

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
	#Procedure 0x4132b0

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
	#Procedure 0x4132d0
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
	#Procedure 0x413300

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
	#Procedure 0x4133b0

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
	#Procedure 0x4133f0

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
	#Procedure 0x413470
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
	#Procedure 0x4134a0
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
	#Procedure 0x4134e0

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
	#Procedure 0x413520
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
	#Procedure 0x413550

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
	#Procedure 0x413580

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
	#Procedure 0x4135a0

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
	je	.label_1462
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1460
.label_1462:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1461
	movabs	rax, OFFSET FLAT:.str.15_1
	movabs	rcx, OFFSET FLAT:.str.14_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1460
.label_1461:
	movabs	rsi, OFFSET FLAT:.str.16_1
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1463
	movabs	rax, OFFSET FLAT:.str.18_2
	movabs	rcx, OFFSET FLAT:.str.17_2
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1460
.label_1463:
	movabs	rax, OFFSET FLAT:.str.12_1
	movabs	rcx, OFFSET FLAT:.str.10_1
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1460:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4136a0

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
	jge	.label_1485
	cmp	dword ptr [rbp - 0x2c], 0x16
	je	.label_1465
	cmp	dword ptr [rbp - 0x2c], 0x26
	je	.label_1465
	cmp	dword ptr [rbp - 0x2c], 0x5f
	je	.label_1465
.label_1485:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1468
.label_1465:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x58], 0x14
	mov	byte ptr [rbp - 0x179], 0
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_1476
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0xfffffffe
	cmp	eax, 0
	je	.label_1484
	mov	edi, 0x5f
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1468
.label_1484:
	lea	rdx, [rbp - 0x178]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	cmp	eax, 0
	je	.label_1467
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1472
.label_1467:
	mov	edi, 0x11
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1468
.label_1472:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_1479
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1468
.label_1479:
	mov	byte ptr [rbp - 0x179], 1
	jmp	.label_1476
.label_1476:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1478
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1464
.label_1478:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1468
.label_1464:
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
	jne	.label_1475
	test	byte ptr [rbp - 0x52], 1
	jne	.label_1475
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1468
.label_1475:
	lea	rdx, [rbp - 0xe8]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	lstatat
	cmp	eax, 0
	je	.label_1487
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1468
.label_1487:
	test	byte ptr [rbp - 0x179], 1
	je	.label_1480
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1483
	mov	edi, 2
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1468
.label_1483:
	jmp	.label_1474
.label_1480:
	lea	rdx, [rbp - 0x178]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	cmp	eax, 0
	je	.label_1466
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_1470
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1473
.label_1470:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1468
.label_1473:
	jmp	.label_1477
.label_1466:
	mov	eax, dword ptr [rbp - 0x160]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1482
	mov	edi, 0x14
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1468
.label_1482:
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1471
	mov	edi, 0x15
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1468
.label_1471:
	jmp	.label_1469
.label_1469:
	jmp	.label_1477
.label_1477:
	jmp	.label_1474
.label_1474:
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
	je	.label_1481
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1481:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_1486
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
.label_1486:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x180], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x180]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
.label_1468:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413a20

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
	#Procedure 0x413a50

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1488:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	write
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_1493
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1491
.label_1493:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_1494
	jmp	.label_1488
.label_1494:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1492
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_1492
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_1490
.label_1492:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1491
.label_1490:
	jmp	.label_1495
.label_1495:
	jmp	.label_1489
.label_1489:
	jmp	.label_1488
.label_1491:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413b00

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
	#Procedure 0x413b40

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
	jne	.label_1498
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x181], cl
.label_1498:
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0x42], al
	mov	byte ptr [rbp - 0x43], 0
	test	byte ptr [rbp - 0x42], 1
	je	.label_1497
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
	je	.label_1499
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	al, 0
	call	error
.label_1499:
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
	je	.label_1496
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	al, 0
	call	error
.label_1496:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rbp - 0x160]
	mov	byte ptr [rbp - 0x182], cl
	jne	.label_1500
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x168]
	sete	cl
	mov	byte ptr [rbp - 0x182], cl
.label_1500:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [rbp - 0x43], al
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
.label_1497:
	mov	al, byte ptr [rbp - 0x43]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413d10

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
	jne	.label_1502
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1504
.label_1502:
	jmp	.label_1506
.label_1506:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	readdir
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1503
	jmp	.label_1507
.label_1503:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x13
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1510
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1514
.label_1510:
	mov	eax, 2
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x68]
	movsx	esi, byte ptr [rdx + 1]
	cmp	esi, 0x2e
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x94], eax
.label_1514:
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x68]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0
	je	.label_1519
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1505
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_1511
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
.label_1511:
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
	jmp	.label_1518
.label_1505:
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x70]
	ja	.label_1509
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1512
	call	xalloc_die
.label_1512:
	lea	rsi, [rbp - 0x80]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x28], rax
.label_1509:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	memcpy
.label_1518:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
.label_1519:
	jmp	.label_1506
.label_1507:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], ecx
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1508
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
	jmp	.label_1504
.label_1508:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1517
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1520
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0xa0]
	call	qsort
.label_1520:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x88], 0
.label_1513:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1516
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
	jmp	.label_1513
.label_1516:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	jmp	.label_1501
.label_1517:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1515
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
.label_1515:
	jmp	.label_1501
.label_1501:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1504:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4140b0

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
	jne	.label_1522
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1521
.label_1522:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	call	streamsavedir
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	cmp	eax, 0
	je	.label_1523
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
	jmp	.label_1521
.label_1523:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1521:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414150

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
	.align	32
	#Procedure 0x414190

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
	jae	.label_1524
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1525
.label_1524:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x24], esi
.label_1525:
	mov	eax, dword ptr [rbp - 0x24]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4141f0
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
	.align	32
	#Procedure 0x414220

	.globl freecon
	.type freecon, @function
freecon:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414230
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
	.align	32
	#Procedure 0x414260

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
	.align	32
	#Procedure 0x414290
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
	.align	32
	#Procedure 0x4142c0
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
	.align	32
	#Procedure 0x4142f0

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
	.align	32
	#Procedure 0x414320
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
	.align	32
	#Procedure 0x414350
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
	.align	32
	#Procedure 0x414380
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
	.align	32
	#Procedure 0x4143b0
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
	.align	32
	#Procedure 0x4143e0
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
	.align	32
	#Procedure 0x414410
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
	.align	32
	#Procedure 0x414440
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
	.align	32
	#Procedure 0x414470
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
	.align	32
	#Procedure 0x4144b0
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
	.align	32
	#Procedure 0x4144e0
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
	.align	32
	#Procedure 0x414510

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
	.align	32
	#Procedure 0x414530

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
	.align	32
	#Procedure 0x414550

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
	.align	32
	#Procedure 0x414570
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
	.align	32
	#Procedure 0x414580

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
	.align	32
	#Procedure 0x4145a0
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
	.align	32
	#Procedure 0x4145c0

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
	.align	32
	#Procedure 0x4145e0
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
	.align	32
	#Procedure 0x414610
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
	.align	32
	#Procedure 0x414620
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
	#Procedure 0x414650

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
	#Procedure 0x414680

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
	jb	.label_1538
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x14]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	check_x_suffix
	test	al, 1
	jne	.label_1534
.label_1538:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1527
.label_1534:
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
	jne	.label_1536
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1527
.label_1536:
	mov	dword ptr [rbp - 0x44], 0
.label_1528:
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x5c]
	jae	.label_1535
	mov	qword ptr [rbp - 0x68], 0
.label_1530:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1533
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
	jmp	.label_1530
.label_1533:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], 0
	jl	.label_1529
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x70], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x70]
	mov	dword ptr [rax], ecx
	jmp	.label_1531
.label_1529:
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	je	.label_1532
	mov	dword ptr [rbp - 0x48], 0xffffffff
	jmp	.label_1531
.label_1532:
	jmp	.label_1537
.label_1537:
	jmp	.label_1526
.label_1526:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1528
.label_1535:
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_free
	mov	dword ptr [rbp - 0x74], eax
	call	__errno_location
	mov	dword ptr [rax], 0x11
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1527
.label_1531:
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
.label_1527:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414880

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str.2_6
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
	#Procedure 0x4148d0

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
	je	.label_1542
	jmp	.label_1543
.label_1543:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x30], eax
	je	.label_1544
	jmp	.label_1540
.label_1540:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x34], eax
	je	.label_1541
	jmp	.label_1545
.label_1542:
	movabs	rax, OFFSET FLAT:try_file
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1539
.label_1544:
	movabs	rax, OFFSET FLAT:try_dir
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1539
.label_1541:
	movabs	rax, OFFSET FLAT:try_nocreate
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1539
.label_1545:
	movabs	rdi, OFFSET FLAT:.str_12
	movabs	rsi, OFFSET FLAT:.str.1_9
	mov	edx, 0x147
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
.label_1539:
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
	#Procedure 0x4149b0

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
	#Procedure 0x414a00

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
	#Procedure 0x414a30

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
	call	__lstat
	cmp	eax, 0
	je	.label_1547
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1546
.label_1547:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_1546:
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
	#Procedure 0x414aa0
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
	#Procedure 0x414ae0
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
	#Procedure 0x414b20

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1548
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1548
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
.label_1548:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414b80

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
	.align	32
	#Procedure 0x414bc0

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
	je	.label_1553
	mov	qword ptr [rbp - 0x48], 0
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1560
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	jne	.label_1560
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1563
.label_1560:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 2
	cmp	rax, rcx
	jg	.label_1565
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1563
.label_1565:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 2
	cmp	rax, rcx
	jg	.label_1572
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1563
.label_1572:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	jne	.label_1577
	mov	eax, 0x10
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_info_hash
	movabs	rcx, OFFSET FLAT:dev_info_compare
	movabs	r8, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [word ptr [utimecmpat.ht]],  rax
.label_1577:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1583
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1588
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  rax
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1550
	jmp	.label_1557
.label_1550:
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1588:
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
	jne	.label_1566
	jmp	.label_1557
.label_1566:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	jne	.label_1573
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
.label_1573:
	jmp	.label_1578
.label_1583:
	jmp	.label_1557
.label_1557:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1580
	lea	rax, [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x48], rax
.label_1580:
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1581
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax, qword ptr [rbp - 0x48]
	mov	byte ptr [rax + 0xc], 0
.label_1581:
	jmp	.label_1578
.label_1578:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x5c], ecx
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0xc], 1
	jne	.label_1549
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
	je	.label_1586
	mov	dword ptr [rbp - 0x5c], 1
	jmp	.label_1567
.label_1586:
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
.label_1558:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rdx + 8]
	mov	byte ptr [rbp - 0x175], cl
	jge	.label_1571
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
.label_1571:
	mov	al, byte ptr [rbp - 0x175]
	test	al, 1
	jne	.label_1585
	jmp	.label_1555
.label_1585:
	cmp	dword ptr [rbp - 0x5c], 0x3b9aca00
	jne	.label_1589
	test	byte ptr [rbp - 0x85], 1
	jne	.label_1592
	mov	eax, dword ptr [rbp - 0x5c]
	shl	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
.label_1592:
	jmp	.label_1555
.label_1589:
	jmp	.label_1556
.label_1556:
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
	jmp	.label_1558
.label_1555:
	jmp	.label_1567
.label_1567:
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rdx + 8], ecx
	cmp	eax, dword ptr [rbp - 0x5c]
	jge	.label_1569
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
	jl	.label_1574
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1582
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x3c]
	jg	.label_1582
.label_1574:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1563
.label_1582:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x158]
	jl	.label_1591
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x158]
	jne	.label_1552
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
	jge	.label_1552
.label_1591:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1563
.label_1552:
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
	je	.label_1587
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1563
.label_1587:
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
	je	.label_1562
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
.label_1562:
	cmp	dword ptr [rbp - 0x15c], 0
	je	.label_1576
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1563
.label_1576:
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
.label_1570:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 0x1b8], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x1b8]
	idiv	ecx
	cmp	edx, 0
	jne	.label_1554
	cmp	dword ptr [rbp - 0x5c], 0x3b9aca00
	jne	.label_1561
	mov	eax, dword ptr [rbp - 0x5c]
	shl	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1554
.label_1561:
	imul	eax, dword ptr [rbp - 0x5c], 0xa
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, dword ptr [rbp - 0x5c]
	cmp	eax, dword ptr [rbp - 0x160]
	jne	.label_1564
	jmp	.label_1554
.label_1564:
	jmp	.label_1568
.label_1568:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 0x1bc], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x1bc]
	idiv	ecx
	mov	dword ptr [rbp - 0x164], eax
	jmp	.label_1570
.label_1554:
	jmp	.label_1569
.label_1569:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + 8], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	byte ptr [rcx + 0xc], 1
.label_1549:
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
.label_1553:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1584
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c0], eax
	jmp	.label_1575
.label_1584:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jle	.label_1590
	mov	eax, 1
	mov	dword ptr [rbp - 0x1c4], eax
	jmp	.label_1551
.label_1590:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	jge	.label_1579
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c8], eax
	jmp	.label_1559
.label_1579:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	setg	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1c8], eax
.label_1559:
	mov	eax, dword ptr [rbp - 0x1c8]
	mov	dword ptr [rbp - 0x1c4], eax
.label_1551:
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	dword ptr [rbp - 0x1c0], eax
.label_1575:
	mov	eax, dword ptr [rbp - 0x1c0]
	mov	dword ptr [rbp - 4], eax
.label_1563:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1d0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415480

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
	.align	32
	#Procedure 0x4154b0

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
	.align	32
	#Procedure 0x4154f0
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
	.align	32
	#Procedure 0x415520

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
	je	.label_1600
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x188], rax
	jmp	.label_1608
.label_1600:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x188], rcx
	jmp	.label_1608
.label_1608:
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1615
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
.label_1615:
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1625
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1598
.label_1625:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1628
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1628
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1598
.label_1628:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [utimensat_works_really]]
	jg	.label_1631
	cmp	dword ptr [rbp - 0x4c], 2
	jne	.label_1593
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1596
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	jne	.label_1602
	jmp	.label_1604
.label_1596:
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	__fstat
	cmp	eax, 0
	je	.label_1604
.label_1602:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1598
.label_1604:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1611
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
	jmp	.label_1595
.label_1611:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1624
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
.label_1624:
	jmp	.label_1595
.label_1595:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
.label_1593:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1597
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	utimensat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xe4], eax
	cmp	ecx, dword ptr [rbp - 0xe4]
	jge	.label_1601
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1601:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1610
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1609
.label_1610:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1598
.label_1609:
	jmp	.label_1597
.label_1597:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_1619
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	futimens
	xor	edi, edi
	mov	dword ptr [rbp - 0xe4], eax
	cmp	edi, dword ptr [rbp - 0xe4]
	jge	.label_1621
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1621:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1627
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1629
.label_1627:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1598
.label_1629:
	jmp	.label_1619
.label_1619:
	jmp	.label_1631
.label_1631:
	mov	dword ptr [dword ptr [utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1622
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_1613
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1630
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	jne	.label_1607
	jmp	.label_1613
.label_1630:
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	__fstat
	cmp	eax, 0
	je	.label_1613
.label_1607:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1598
.label_1613:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1617
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rbp - 0x48]
	call	update_timespec
	test	al, 1
	jne	.label_1620
	jmp	.label_1617
.label_1620:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1598
.label_1617:
	jmp	.label_1622
.label_1622:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1623
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
	jmp	.label_1626
.label_1623:
	mov	qword ptr [rbp - 0x138], 0
.label_1626:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1606
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x138]
	call	futimesat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1598
.label_1606:
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x138]
	call	futimesat
	cmp	eax, 0
	jne	.label_1618
	cmp	qword ptr [rbp - 0x138], 0
	je	.label_1616
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
	je	.label_1594
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	__fstat
	cmp	eax, 0
	jne	.label_1594
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
	je	.label_1605
	cmp	qword ptr [rbp - 0x148], 1
	jne	.label_1605
	lea	rdi, [rbp - 0xe0]
	call	get_stat_atime_ns
	cmp	rax, 0
	jne	.label_1605
	lea	rax, [rbp - 0x180]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rax + 8], 0
.label_1605:
	test	byte ptr [rbp - 0x13a], 1
	je	.label_1603
	cmp	qword ptr [rbp - 0x150], 1
	jne	.label_1603
	lea	rdi, [rbp - 0xe0]
	call	get_stat_mtime_ns
	cmp	rax, 0
	jne	.label_1603
	lea	rax, [rbp - 0x180]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rax + 0x18], 0
.label_1603:
	cmp	qword ptr [rbp - 0x158], 0
	je	.label_1599
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x158]
	call	futimesat
	mov	dword ptr [rbp - 0x1ac], eax
.label_1599:
	jmp	.label_1594
.label_1594:
	jmp	.label_1616
.label_1616:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1598
.label_1618:
	jmp	.label_1612
.label_1612:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1614
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1598
.label_1614:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x138]
	call	utimes
	mov	dword ptr [rbp - 4], eax
.label_1598:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415ba0

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
	je	.label_1635
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	je	.label_1635
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_1638
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3b9aca00
	jge	.label_1638
.label_1635:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	je	.label_1632
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	je	.label_1632
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 0x18]
	jg	.label_1638
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3b9aca00
	jl	.label_1632
.label_1638:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1636
.label_1632:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3fffffff
	je	.label_1639
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1640
.label_1639:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1633
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1633:
	jmp	.label_1640
.label_1640:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	je	.label_1641
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1634
.label_1641:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1637
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1637:
	jmp	.label_1634
.label_1634:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	dword ptr [rbp - 0x18], 1
	sete	cl
	and	cl, 1
	movzx	edx, cl
	add	eax, edx
	mov	dword ptr [rbp - 4], eax
.label_1636:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415d30

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
	jne	.label_1647
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1647
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1646
.label_1647:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3fffffff
	jne	.label_1644
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	jne	.label_1644
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1646
.label_1644:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1642
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
	jmp	.label_1645
.label_1642:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3fffffff
	jne	.label_1648
	mov	rdi, qword ptr [rbp - 0x20]
	call	gettime
.label_1648:
	jmp	.label_1645
.label_1645:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1643
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
	jmp	.label_1649
.label_1643:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	jne	.label_1650
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	rdi, rax
	call	gettime
.label_1650:
	jmp	.label_1649
.label_1649:
	mov	byte ptr [rbp - 1], 0
.label_1646:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415e90

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
	.align	32
	#Procedure 0x415ec0

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1662
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1667
.label_1662:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x110], rcx
	jmp	.label_1667
.label_1667:
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1670
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
.label_1670:
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1663
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1654
.label_1663:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [lutimensat_works_really]]
	jg	.label_1664
	cmp	dword ptr [rbp - 0x4c], 2
	jne	.label_1660
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	cmp	eax, 0
	je	.label_1653
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1654
.label_1653:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1657
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
	jmp	.label_1659
.label_1657:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1669
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
.label_1669:
	jmp	.label_1659
.label_1659:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
.label_1660:
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	utimensat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xe4], eax
	cmp	ecx, dword ptr [rbp - 0xe4]
	jge	.label_1668
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1668:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1655
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1658
.label_1655:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	dword ptr [dword ptr [lutimensat_works_really]],  1
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1654
.label_1658:
	jmp	.label_1664
.label_1664:
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1666
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_1652
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	cmp	eax, 0
	je	.label_1652
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1654
.label_1652:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1656
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rbp - 0x48]
	call	update_timespec
	test	al, 1
	jne	.label_1661
	jmp	.label_1656
.label_1661:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1654
.label_1656:
	jmp	.label_1666
.label_1666:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_1665
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	__lstat
	cmp	eax, 0
	je	.label_1665
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1654
.label_1665:
	mov	eax, dword ptr [rbp - 0xc8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_1651
	mov	edi, 0xffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	fdutimens
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1654
.label_1651:
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1654:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4161d0

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
	je	.label_1672
	movabs	rsi, OFFSET FLAT:.str_13
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1674
.label_1672:
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1674:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_7
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
	mov	ecx, OFFSET FLAT:.str.3_4
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
	ja	.label_1673
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1675]]
	jmp	rcx
.label_2072:
	jmp	.label_1671
.label_2073:
	movabs	rdi, OFFSET FLAT:.str.4_2
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
	jmp	.label_1671
.label_2074:
	movabs	rdi, OFFSET FLAT:.str.5_1
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
	jmp	.label_1671
.label_2075:
	movabs	rdi, OFFSET FLAT:.str.6_1
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
	jmp	.label_1671
.label_2076:
	movabs	rdi, OFFSET FLAT:.str.7_1
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
	jmp	.label_1671
.label_2077:
	movabs	rdi, OFFSET FLAT:.str.8_1
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
	jmp	.label_1671
.label_2078:
	movabs	rdi, OFFSET FLAT:.str.9_1
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
	jmp	.label_1671
.label_2079:
	movabs	rdi, OFFSET FLAT:.str.10_2
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
	jmp	.label_1671
.label_2080:
	movabs	rdi, OFFSET FLAT:.str.11_2
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
	jmp	.label_1671
.label_2081:
	movabs	rdi, OFFSET FLAT:.str.12_2
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
	jmp	.label_1671
.label_1673:
	movabs	rdi, OFFSET FLAT:.str.13_2
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
.label_1671:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416790
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
.label_1678:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1676
	jmp	.label_1677
.label_1677:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1678
.label_1676:
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
	#Procedure 0x416800

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
.label_1682:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1679
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1684
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1683
.label_1684:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1683:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1679:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1685
	jmp	.label_1680
.label_1685:
	jmp	.label_1681
.label_1681:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1682
.label_1680:
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
	#Procedure 0x416910

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
	je	.label_1686
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
.label_1686:
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
	#Procedure 0x416a80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_2
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.15_2
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_2
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.19_1
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
	#Procedure 0x416b10

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [can_write_any_file.initialized]],  1
	jne	.label_1687
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
.label_1687:
	mov	al,  byte ptr [byte ptr [can_write_any_file.can_write]]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416b70
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
	jae	.label_1688
	call	xalloc_die
.label_1688:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416bc0

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
	jne	.label_1689
	cmp	qword ptr [rbp - 8], 0
	je	.label_1689
	call	xalloc_die
.label_1689:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416c00

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
	jae	.label_1690
	call	xalloc_die
.label_1690:
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
	#Procedure 0x416c50

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1691
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1691
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1693
.label_1691:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1692
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1692
	call	xalloc_die
.label_1692:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1693:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416cd0

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
	jne	.label_1694
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1697
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
.label_1697:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1695
	call	xalloc_die
.label_1695:
	jmp	.label_1696
.label_1694:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1698
	call	xalloc_die
.label_1698:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1696:
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
	#Procedure 0x416dc0

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
	#Procedure 0x416de0
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
	#Procedure 0x416e10
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
	#Procedure 0x416e50
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
	jb	.label_1699
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1700
.label_1699:
	call	xalloc_die
.label_1700:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416eb0

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
	#Procedure 0x416ef0

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
	#Procedure 0x416f30

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_11
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_4
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x416f70

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
	jg	.label_1703
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1702
.label_1703:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	jne	.label_1701
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
.label_1701:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpmatch
	xor	ecx, ecx
	cmp	ecx, eax
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1702:
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
	#Procedure 0x417010

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1704
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1705
.label_1704:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1706
.label_1705:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1706:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417070

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
	je	.label_1707
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1707:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4170b0

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
	jbe	.label_1708
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1711
.label_1708:
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
	je	.label_1710
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1709
.label_1710:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1709
.label_1709:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, rax
	mov	qword ptr [rbp - 8], rcx
.label_1711:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417150

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
	jne	.label_1712
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1712
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1712
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1714
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1713
.label_1714:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1713
.label_1712:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1713:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417220

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
	jne	.label_1715
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1715:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1716
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1716
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1716
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1717
.label_1716:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1717:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4172d0

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4172e0

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
	.align	32
	#Procedure 0x417330

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
	je	.label_1718
	mov	edi, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 0x18]
	call	fchmod
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1719
.label_1718:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	call	chmod
	mov	dword ptr [rbp - 4], eax
.label_1719:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417380

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
	je	.label_1720
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax]
	call	chmod_or_fchmod
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_1722
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1725
.label_1722:
	jmp	.label_1720
.label_1720:
	test	byte ptr [rbp - 0x1f], 1
	je	.label_1721
	test	byte ptr [rbp - 0x1e], 1
	jne	.label_1721
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_1726
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	jmp	.label_1723
.label_1726:
	xor	eax, eax
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_1723
.label_1723:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x28], eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx]
	call	chmod_or_fchmod
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_1724
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x30], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x24], 0xffffffff
.label_1724:
	jmp	.label_1721
.label_1721:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
.label_1725:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417470
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
	#Procedure 0x4174b0
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
	#Procedure 0x4174f0
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
	#Procedure 0x417520
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
	#Procedure 0x417550
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
	#Procedure 0x4175a0

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
	#Procedure 0x4175f0
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
	#Procedure 0x417630
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
	#Procedure 0x417670
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
	#Procedure 0x4176b0
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
	#Procedure 0x4176f0

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
	jne	.label_1727
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1731
.label_1727:
	jmp	.label_1728
.label_1728:
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
	jne	.label_1730
	jmp	.label_1729
.label_1730:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1728
.label_1729:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1731:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4177b0

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
	jne	.label_1732
	test	byte ptr [rbp - 0x13], 1
	je	.label_1733
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1732
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1733
.label_1732:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1735
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1735:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1734
.label_1733:
	mov	dword ptr [rbp - 4], 0
.label_1734:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417860

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
	je	.label_1739
	mov	rdi, qword ptr [rbp - 0x10]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x14], eax
	cmp	ecx, dword ptr [rbp - 0x14]
	jg	.label_1737
	cmp	dword ptr [rbp - 0x14], 2
	jg	.label_1737
	mov	esi, 0x406
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x14]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_1740
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1736
.label_1740:
	mov	edi, dword ptr [rbp - 0x28]
	call	fdopendir
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1738
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	dword ptr [rbp - 0x2c], eax
.label_1738:
	jmp	.label_1736
.label_1736:
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
.label_1737:
	jmp	.label_1739
.label_1739:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417950

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
	.align	32
	#Procedure 0x417980
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
	.align	32
	#Procedure 0x4179b0

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
	je	.label_1741
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_14
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1742
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_12
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1743
.label_1742:
	mov	byte ptr [rbp - 5], 0
.label_1743:
	jmp	.label_1741
.label_1741:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417a30

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
.label_1745:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_1744
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
	jmp	.label_1745
.label_1744:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417aa0

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
	jne	.label_1746
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_1746:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1747
	movabs	rax, OFFSET FLAT:.str.1_13
	mov	qword ptr [rbp - 8], rax
.label_1747:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417b00

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
	je	.label_1748
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
.label_1748:
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
	je	.label_1750
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
	ja	.label_1749
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_1751
.label_1749:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_1751:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1750:
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
	#Procedure 0x417d00

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
	#Procedure 0x417d50

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
	je	.label_1753
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_new
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1752
.label_1753:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1752
.label_1752:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417db0
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
	#Procedure 0x417dd0

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
.label_1757:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1756
	mov	qword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_1759:
	mov	rdi, qword ptr [rbp - 0x48]
	call	shift_left
	add	rax, 0xff
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_1759
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	call	randread
	mov	qword ptr [rbp - 0x40], 0
.label_1760:
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
	jb	.label_1760
	jmp	.label_1756
.label_1756:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1754
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1755
.label_1754:
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
	ja	.label_1758
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
	jmp	.label_1755
.label_1758:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1757
.label_1755:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417fa0

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
	#Procedure 0x417fc0

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
	#Procedure 0x417ff0

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
	#Procedure 0x418040

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1761
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1763
.label_1761:
	mov	qword ptr [rbp - 0x20], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1765
	movabs	rsi, OFFSET FLAT:.str_15
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1767
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1763
.label_1767:
	jmp	.label_1765
.label_1765:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1762
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rdi
	jae	.label_1766
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1768
.label_1766:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_1768:
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1764
.label_1762:
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
.label_1764:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1763:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418190

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
	#Procedure 0x4181f0

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:.str.3_5
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
	jg	.label_1773
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	jae	.label_1775
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1780
.label_1775:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_1780:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_1771
	mov	qword ptr [rbp - 0x28], 0
.label_1771:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_1773:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1774
	mov	eax, 0x10
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1777
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_1782
.label_1777:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xb0], rax
.label_1782:
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
.label_1774:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1776
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1778
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_1784
.label_1778:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
.label_1784:
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
.label_1776:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1779
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1781
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_1787
.label_1781:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_1787:
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
.label_1779:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1783
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1785
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_1770
.label_1785:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xe0], rax
.label_1770:
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
.label_1783:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1786
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1769
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_1772
.label_1769:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_1772:
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
.label_1786:
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4185a0
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
	#Procedure 0x4185c0
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
	#Procedure 0x4185e0

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
	je	.label_1788
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	readsource
	jmp	.label_1789
.label_1788:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	readisaac
.label_1789:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418640

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1792:
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
	jne	.label_1794
	jmp	.label_1790
.label_1794:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_1793
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1791
.label_1793:
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1791
.label_1791:
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
	jmp	.label_1792
.label_1790:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418710

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
.label_1798:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1796
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
	jmp	.label_1800
.label_1796:
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
	jne	.label_1799
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1801:
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	ja	.label_1795
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
	jne	.label_1797
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	jmp	.label_1800
.label_1797:
	jmp	.label_1801
.label_1795:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_1799:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x820
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_1798
.label_1800:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418890

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
	je	.label_1802
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1803
.label_1802:
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1803
.label_1803:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418900

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1804
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], edi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_1805
	movabs	rdi, OFFSET FLAT:.str.1_14
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1806
.label_1805:
	movabs	rdi, OFFSET FLAT:.str.2_8
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_1806:
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
.label_1804:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x418990

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
.label_1808:
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
	jb	.label_1808
	jmp	.label_1807
.label_1807:
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
	jb	.label_1807
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
	#Procedure 0x418ed0

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
	#Procedure 0x418f20

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
	#Procedure 0x418f40

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
.label_1811:
	cmp	dword ptr [rbp - 0x4c], 0x100
	jge	.label_1809
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
	jmp	.label_1811
.label_1809:
	mov	dword ptr [rbp - 0x50], 0
.label_1812:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_1810
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
	jmp	.label_1812
.label_1810:
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
	#Procedure 0x4195e0

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
	#Procedure 0x419610

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
	#Procedure 0x419640

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
	jge	.label_1813
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1816
.label_1813:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1814
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1815
.label_1814:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1815
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1815:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1817
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1817:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1816:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419710

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
	je	.label_1827
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
.label_1827:
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
	je	.label_1844
	jmp	.label_1823
.label_1823:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1847
	jmp	.label_1822
.label_1844:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1825
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_1834
.label_1825:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1834:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1818
.label_1847:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_1824
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_1832
.label_1824:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1832:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1818
.label_1822:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_1821
	jmp	.label_1829
.label_1829:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_1830
	jmp	.label_1837
.label_1837:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_1821
	jmp	.label_1840
.label_1840:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_1830
	jmp	.label_1845
.label_1845:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_1821
	jmp	.label_1819
.label_1819:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_1821
	jmp	.label_1833
.label_1833:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1830
	jmp	.label_1838
.label_1838:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1821
	jmp	.label_1841
.label_1841:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1830
	jmp	.label_1846
.label_1846:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_1821
	jmp	.label_1820
.label_1820:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1830
	jmp	.label_1831
.label_1831:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_1821
	jmp	.label_1839
.label_1839:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1821
	jmp	.label_1842
.label_1842:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_1843
	jmp	.label_1830
.label_1830:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1826
.label_1821:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_1848
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_1835
.label_1848:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_1835:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1826
.label_1843:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_1828
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1836
.label_1828:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_1836:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1826:
	jmp	.label_1818
.label_1818:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419c30

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
	#Procedure 0x419c60

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
	jg	.label_1854
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_1852
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1855
.label_1852:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1853
.label_1855:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_1851
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1851:
	jmp	.label_1853
.label_1853:
	jmp	.label_1856
.label_1854:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_1856:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1849
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1849
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1857
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_1850
.label_1857:
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
.label_1850:
	jmp	.label_1849
.label_1849:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419d90

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
	ja	.label_1858
	jmp	.label_1860
.label_1860:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1859
.label_1858:
	jmp	.label_1859
.label_1859:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419de0
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
	jb	.label_1861
	jmp	.label_1863
.label_1863:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1861
	jmp	.label_1862
.label_1862:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1864
	jmp	.label_1861
.label_1861:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1865
.label_1864:
	mov	byte ptr [rbp - 1], 0
.label_1865:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e50
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
	jb	.label_1866
	jmp	.label_1869
.label_1869:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1867
	jmp	.label_1866
.label_1866:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1868
.label_1867:
	mov	byte ptr [rbp - 1], 0
.label_1868:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ea0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1870
	jmp	.label_1871
.label_1871:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1872
.label_1870:
	mov	byte ptr [rbp - 1], 0
.label_1872:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ed0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1873
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1873:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419f00
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
	jb	.label_1874
	jmp	.label_1876
.label_1876:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1877
	jmp	.label_1874
.label_1874:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1875
.label_1877:
	mov	byte ptr [rbp - 1], 0
.label_1875:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419f50
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1878
	jmp	.label_1880
.label_1880:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1879
.label_1878:
	mov	byte ptr [rbp - 1], 0
.label_1879:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419f90
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1881
	jmp	.label_1883
.label_1883:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1882
.label_1881:
	mov	byte ptr [rbp - 1], 0
.label_1882:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419fd0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1884
	jmp	.label_1886
.label_1886:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1885
.label_1884:
	mov	byte ptr [rbp - 1], 0
.label_1885:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a010
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1887
	jmp	.label_1889
.label_1889:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1888
.label_1887:
	mov	byte ptr [rbp - 1], 0
.label_1888:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a050
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
	jb	.label_1890
	jmp	.label_1893
.label_1893:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1890
	jmp	.label_1894
.label_1894:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1890
	jmp	.label_1892
.label_1892:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_1895
	jmp	.label_1890
.label_1890:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1891
.label_1895:
	mov	byte ptr [rbp - 1], 0
.label_1891:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a0d0
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
	jb	.label_1896
	jmp	.label_1898
.label_1898:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1899
	jmp	.label_1896
.label_1896:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1897
.label_1899:
	mov	byte ptr [rbp - 1], 0
.label_1897:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a120
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1900
	jmp	.label_1902
.label_1902:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1901
.label_1900:
	mov	byte ptr [rbp - 1], 0
.label_1901:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a160
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
	jb	.label_1903
	jmp	.label_1906
.label_1906:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1903
	jmp	.label_1904
.label_1904:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1905
	jmp	.label_1903
.label_1903:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1907
.label_1905:
	mov	byte ptr [rbp - 1], 0
.label_1907:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a1d0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1908
	jmp	.label_1910
.label_1910:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1909
.label_1908:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1909:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a210
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1911
	jmp	.label_1913
.label_1913:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1912
.label_1911:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1912:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a250

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
	je	.label_1915
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_1916
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_1916
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_1917
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
	jmp	.label_1919
.label_1917:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_1918
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1914
.label_1918:
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
	jmp	.label_1919
.label_1914:
	jmp	.label_1916
.label_1916:
	jmp	.label_1915
.label_1915:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1919:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a410

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x41a420

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x41a430

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x41a440

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
	.align	32
	#Procedure 0x41a460

	.globl __mknod
	.type __mknod, @function
__mknod:
	sub	rsp, 0x18
	lea	rcx, [rsp + 8]
	mov	qword ptr [rsp + 8], rdx
	mov	edx, esi
	mov	rsi, rdi
	xor	edi, edi
	call	__xmknod
	add	rsp, 0x18
	ret	