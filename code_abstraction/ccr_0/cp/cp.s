	.section	.text
	.align	16
	#Procedure 0x402830

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_16
	jmp	.label_19
.label_19:
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
	jmp	.label_31
.label_16:
	movabs	rdi, OFFSET FLAT:label_10
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
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
	movabs	rdi, OFFSET FLAT:label_24
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_29
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_18
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_26
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
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_20
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_28
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_11
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_15
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_23
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_30
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_22
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x58], eax
	call	emit_backup_suffix_note
	movabs	rdi, OFFSET FLAT:label_25
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x5c], eax
	call	emit_ancillary_info
.label_31:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x402b20

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_32
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
	#Procedure 0x402b50

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_33
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_34
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
	#Procedure 0x402bb0

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
.label_43:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_42
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_42:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_35
	jmp	.label_44
.label_35:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_43
.label_44:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_45
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_45:
	movabs	rdi, OFFSET FLAT:label_49
	call	gettext
	movabs	rsi, OFFSET FLAT:label_39
	movabs	rdx, OFFSET FLAT:label_40
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
	je	.label_46
	movabs	rsi, OFFSET FLAT:label_38
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_46
	movabs	rdi, OFFSET FLAT:label_47
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_46:
	movabs	rdi, OFFSET FLAT:label_41
	call	gettext
	movabs	rsi, OFFSET FLAT:label_40
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_48
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_36
	movabs	rsi, OFFSET FLAT:label_37
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
	#Procedure 0x402d50

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
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
	movabs	rsi, OFFSET FLAT:label_36
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_89
	movabs	rsi, OFFSET FLAT:label_90
	mov	qword ptr [rbp - 0x130], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_89
	mov	qword ptr [rbp - 0x138], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdin
	mov	qword ptr [rbp - 0x140], rax
	call	atexit
	lea	rdi, [rbp - 0x78]
	mov	byte ptr [byte ptr [selinux_enabled]],  0
	mov	dword ptr [rbp - 0x144], eax
	call	cp_option_init
.label_96:
	movabs	rdx, OFFSET FLAT:label_92
	movabs	rcx, OFFSET FLAT:long_opts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_67
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 0x83
	mov	ecx, eax
	sub	eax, 0x10b
	mov	qword ptr [rbp - 0x150], rcx
	mov	dword ptr [rbp - 0x154], eax
	ja	.label_101
	mov	rax, qword ptr [rbp - 0x150]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_79]]
	jmp	rcx
.label_2296:
	movabs	rdi, OFFSET FLAT:label_82
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
	jmp	.label_51
.label_2295:
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_94
	mov	dword ptr [rbp - 0x40], 2
	jmp	.label_97
.label_94:
	movabs	rdi, OFFSET FLAT:label_102
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
.label_97:
	jmp	.label_51
.label_2278:
	mov	dword ptr [rbp - 0x74], 2
	mov	byte ptr [rbp - 0x56], 1
	mov	byte ptr [rbp - 0x5b], 1
	mov	byte ptr [rbp - 0x5a], 1
	mov	byte ptr [rbp - 0x59], 1
	mov	byte ptr [rbp - 0x54], 1
	test	byte ptr [byte ptr [selinux_enabled]],  1
	je	.label_63
	mov	byte ptr [rbp - 0x53], 1
.label_63:
	mov	byte ptr [rbp - 0x51], 1
	mov	byte ptr [rbp - 0x4f], 1
	mov	byte ptr [rbp - 0x4e], 1
	jmp	.label_51
.label_2279:
	mov	byte ptr [rbp - 0x16], 1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_80
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x28], rax
.label_80:
	jmp	.label_51
.label_2290:
	mov	byte ptr [rbp - 0x55], 0
	jmp	.label_51
.label_2291:
	mov	byte ptr [rbp - 0x79], 1
	jmp	.label_51
.label_2280:
	mov	byte ptr [rbp - 0x56], 1
	mov	dword ptr [rbp - 0x74], 2
	jmp	.label_51
.label_2281:
	mov	byte ptr [rbp - 0x62], 1
	jmp	.label_51
.label_2271:
	mov	dword ptr [rbp - 0x74], 3
	jmp	.label_51
.label_2282:
	mov	dword ptr [rbp - 0x70], 3
	jmp	.label_51
.label_2283:
	mov	byte ptr [rbp - 0x61], 1
	jmp	.label_51
.label_2272:
	mov	dword ptr [rbp - 0x74], 4
	jmp	.label_51
.label_2284:
	mov	dword ptr [rbp - 0x70], 2
	jmp	.label_51
.label_2273:
	mov	dword ptr [rbp - 0x74], 2
	jmp	.label_51
.label_2292:
	lea	rsi, [rbp - 0x78]
	xor	edx, edx
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_preserve_arg
	jmp	.label_51
.label_2294:
	cmp	qword ptr [word ptr [optarg]],  0
	jne	.label_57
	jmp	.label_61
.label_57:
	lea	rsi, [rbp - 0x78]
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	decode_preserve_arg
	mov	byte ptr [rbp - 0x54], 1
	jmp	.label_51
.label_61:
	jmp	.label_70
.label_70:
	mov	byte ptr [rbp - 0x5b], 1
	mov	byte ptr [rbp - 0x5a], 1
	mov	byte ptr [rbp - 0x59], 1
	mov	byte ptr [rbp - 0x54], 1
	jmp	.label_51
.label_2293:
	mov	byte ptr [byte ptr [parents_option]],  1
	jmp	.label_51
.label_2274:
	mov	byte ptr [rbp - 0x4e], 1
	jmp	.label_51
.label_2298:
	mov	byte ptr [rbp - 0x63], 1
	jmp	.label_51
.label_2297:
	mov	byte ptr [byte ptr [remove_trailing_slashes]],  1
	jmp	.label_51
.label_2285:
	mov	byte ptr [rbp - 0x4c], 1
	jmp	.label_51
.label_2286:
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_107
	movabs	rdi, OFFSET FLAT:label_88
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
	je	.label_100
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_106
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x158], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x160], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x158]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_100:
	mov	eax, dword ptr [rbp - 0x110]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_86
	movabs	rdi, OFFSET FLAT:label_71
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x168], rax
	call	quotearg_style
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_86:
	jmp	.label_85
.label_85:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_51
.label_2276:
	mov	byte ptr [rbp - 0x89], 1
	jmp	.label_51
.label_2287:
	mov	byte ptr [rbp - 0x4b], 1
	jmp	.label_51
.label_2288:
	mov	byte ptr [rbp - 0x4a], 1
	jmp	.label_51
.label_2289:
	mov	byte ptr [rbp - 0x5c], 1
	jmp	.label_51
.label_2277:
	test	byte ptr [byte ptr [selinux_enabled]],  1
	je	.label_95
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_99
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_105
.label_99:
	mov	byte ptr [rbp - 0x57], 1
.label_105:
	jmp	.label_52
.label_95:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_53
	movabs	rdi, OFFSET FLAT:label_56
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_53:
	jmp	.label_52
.label_52:
	jmp	.label_51
.label_2275:
	mov	byte ptr [rbp - 0x16], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_51
.label_2270:
	xor	edi, edi
	call	usage
.label_2269:
	movabs	rsi, OFFSET FLAT:label_9
	movabs	rdx, OFFSET FLAT:label_39
	movabs	r8, OFFSET FLAT:label_74
	movabs	r9, OFFSET FLAT:label_75
	movabs	rax, OFFSET FLAT:label_76
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x170], rdi
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_101:
	mov	edi, 1
	call	usage
.label_51:
	jmp	.label_96
.label_67:
	test	byte ptr [rbp - 0x61], 1
	je	.label_98
	test	byte ptr [rbp - 0x4c], 1
	je	.label_98
	movabs	rdi, OFFSET FLAT:label_104
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_98:
	cmp	dword ptr [rbp - 0x70], 2
	jne	.label_55
	mov	byte ptr [rbp - 0x4b], 0
.label_55:
	test	byte ptr [rbp - 0x16], 1
	je	.label_60
	cmp	dword ptr [rbp - 0x70], 2
	jne	.label_60
	movabs	rdi, OFFSET FLAT:label_66
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_60:
	cmp	dword ptr [rbp - 0x40], 2
	jne	.label_77
	cmp	dword ptr [rbp - 0x6c], 2
	je	.label_77
	movabs	rdi, OFFSET FLAT:label_81
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_77:
	test	byte ptr [rbp - 0x16], 1
	je	.label_103
	movabs	rdi, OFFSET FLAT:label_87
	call	gettext
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	xget_version
	mov	dword ptr [rbp - 0x174], eax
	jmp	.label_93
.label_103:
	xor	eax, eax
	mov	dword ptr [rbp - 0x174], eax
	jmp	.label_93
.label_93:
	mov	eax, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 0x78], eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	set_simple_backup_suffix
	cmp	dword ptr [rbp - 0x74], 1
	jne	.label_58
	test	byte ptr [rbp - 0x4e], 1
	je	.label_50
	test	byte ptr [rbp - 0x61], 1
	jne	.label_50
	mov	dword ptr [rbp - 0x74], 2
	jmp	.label_62
.label_50:
	mov	dword ptr [rbp - 0x74], 4
.label_62:
	jmp	.label_58
.label_58:
	test	byte ptr [rbp - 0x4e], 1
	je	.label_59
	mov	al, byte ptr [rbp - 0x79]
	and	al, 1
	mov	byte ptr [rbp - 0x64], al
.label_59:
	test	byte ptr [rbp - 0x57], 1
	jne	.label_64
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_68
.label_64:
	test	byte ptr [rbp - 0x52], 1
	jne	.label_68
	mov	byte ptr [rbp - 0x53], 0
.label_68:
	test	byte ptr [rbp - 0x53], 1
	je	.label_73
	test	byte ptr [rbp - 0x57], 1
	jne	.label_78
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_73
.label_78:
	movabs	rdi, OFFSET FLAT:label_84
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_73:
	test	byte ptr [rbp - 0x52], 1
	je	.label_83
	test	byte ptr [byte ptr [selinux_enabled]],  1
	jne	.label_83
	movabs	rdi, OFFSET FLAT:label_91
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_83:
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_54
	mov	rdi, qword ptr [rbp - 0x98]
	call	se_const
	mov	rdi, rax
	call	setfscreatecon
	cmp	eax, 0
	jge	.label_54
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_72
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x178], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x180], rax
	call	quote
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x178]
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_54:
	test	byte ptr [rbp - 0x50], 1
	je	.label_69
	movabs	rdi, OFFSET FLAT:label_65
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_69:
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
	mov	byte ptr [rbp - 0x181], sil
	mov	rsi, rcx
	mov	r9b, byte ptr [rbp - 0x181]
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
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403600

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	cp_options_default
	movabs	rdi, OFFSET FLAT:label_108
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
	.align	16
	#Procedure 0x403760

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
.label_113:
	mov	esi, 0x2c
	mov	rdi, qword ptr [rbp - 0x28]
	call	strchr
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_114
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rax], 0
.label_114:
	mov	al, byte ptr [rbp - 0x11]
	mov	ecx, OFFSET FLAT:label_115
	mov	edx, ecx
	mov	ecx, OFFSET FLAT:label_116
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
	ja	.label_109
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_112]]
	jmp	rcx
.label_2196:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x1e], al
	mov	al, byte ptr [rbp - 0x11]
	xor	al, 0xff
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x20], al
	jmp	.label_111
.label_2197:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x1f], al
	jmp	.label_111
.label_2198:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x1d], al
	jmp	.label_111
.label_2199:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x22], al
	jmp	.label_111
.label_2200:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x26], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x25], al
	jmp	.label_111
.label_2201:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x27], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x28], al
	jmp	.label_111
.label_2202:
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
	je	.label_110
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x25], al
.label_110:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [rcx + 0x27], al
	jmp	.label_111
.label_109:
	call	abort
.label_111:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_113
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403960

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
	.align	16
	#Procedure 0x403970

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
	jne	.label_138
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x16]
	mov	byte ptr [rbp - 0x162], cl
.label_138:
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
	jg	.label_152
	cmp	dword ptr [rbp - 4], 0
	jg	.label_154
	movabs	rdi, OFFSET FLAT:label_155
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_124
.label_154:
	movabs	rdi, OFFSET FLAT:label_125
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
.label_124:
	mov	edi, 1
	call	usage
.label_152:
	test	byte ptr [rbp - 0x19], 1
	je	.label_135
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_139
	movabs	rdi, OFFSET FLAT:label_121
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_139:
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_145
	movabs	rdi, OFFSET FLAT:label_148
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
.label_145:
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
	jmp	.label_128
.label_135:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_122
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_130
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
	jne	.label_143
	jmp	.label_130
.label_143:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_118
.label_130:
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_129
	movabs	rdi, OFFSET FLAT:label_71
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
.label_129:
	jmp	.label_118
.label_118:
	jmp	.label_122
.label_122:
	jmp	.label_128
.label_128:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_144
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_126
	mov	rdi, qword ptr [rbp - 0x28]
	call	dest_info_init
	mov	rdi, qword ptr [rbp - 0x28]
	call	src_info_init
.label_126:
	mov	dword ptr [rbp - 0xc0], 0
.label_156:
	mov	eax, dword ptr [rbp - 0xc0]
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_131
	mov	byte ptr [rbp - 0xc9], 1
	mov	qword ptr [rbp - 0xe0], 0
	movsxd	rax, dword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xe8], rax
	test	byte ptr [byte ptr [remove_trailing_slashes]],  1
	je	.label_133
	mov	rdi, qword ptr [rbp - 0xe8]
	call	strip_trailing_slashes
	mov	byte ptr [rbp - 0x191], al
.label_133:
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_147
	jmp	.label_149
.label_149:
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
	movabs	rsi, OFFSET FLAT:label_127
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
	jmp	.label_150
.label_147:
	jmp	.label_151
.label_151:
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
	mov	ecx, OFFSET FLAT:label_132
	mov	esi, ecx
	mov	byte ptr [rbp - 0x1b1], al
	call	strcmp
	cmp	eax, 0
	jne	.label_136
	mov	rdi, qword ptr [rbp - 0x18]
	call	xstrdup
	mov	qword ptr [rbp - 0x1c0], rax
	jmp	.label_157
.label_136:
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x118]
	call	file_name_concat
	mov	qword ptr [rbp - 0x1c0], rax
.label_157:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0xc8], rax
.label_150:
	test	byte ptr [rbp - 0xc9], 1
	jne	.label_137
	mov	byte ptr [rbp - 0xba], 0
	jmp	.label_142
.label_137:
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
	je	.label_119
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
.label_119:
	jmp	.label_142
.label_142:
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_141
	jmp	.label_146
.label_146:
	cmp	qword ptr [rbp - 0xd8], 0
	je	.label_153
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax + 0xa0]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	rdi, rax
	call	free
	jmp	.label_146
.label_153:
	jmp	.label_141
.label_141:
	mov	rdi, qword ptr [rbp - 0xc8]
	call	free
	mov	eax, dword ptr [rbp - 0xc0]
	add	eax, 1
	mov	dword ptr [rbp - 0xc0], eax
	jmp	.label_156
.label_131:
	jmp	.label_120
.label_144:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x160], rax
	test	byte ptr [byte ptr [parents_option]],  1
	je	.label_123
	movabs	rdi, OFFSET FLAT:label_140
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_123:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x16], 1
	je	.label_134
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0
	je	.label_134
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rsi, qword ptr [rbp - 0x160]
	call	strcmp
	cmp	eax, 0
	jne	.label_134
	test	byte ptr [rbp - 0xb9], 1
	jne	.label_134
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_134
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
	jmp	.label_117
.label_134:
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x150], rax
.label_117:
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
.label_120:
	mov	al, byte ptr [rbp - 0xba]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404170

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
	jne	.label_165
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_160
.label_165:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
.label_160:
	mov	eax, dword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x29], dl
	jne	.label_163
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	sete	dl
	mov	byte ptr [rbp - 0x29], dl
.label_163:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	cmp	dword ptr [rbp - 0x20], 0
	je	.label_159
	cmp	dword ptr [rbp - 0x20], 2
	jne	.label_164
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 1
	jmp	.label_158
.label_164:
	test	byte ptr [rbp - 0x19], 1
	je	.label_162
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x18], 0
	jmp	.label_161
.label_162:
	movabs	rdi, OFFSET FLAT:label_106
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
.label_161:
	jmp	.label_158
.label_158:
	jmp	.label_159
.label_159:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404280

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
	je	.label_198
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x110], rax
.label_176:
	mov	rax, qword ptr [rbp - 0x110]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_201
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_176
.label_201:
	jmp	.label_166
.label_166:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x110]
	call	strchr
	mov	qword ptr [rbp - 0x110], rax
	cmp	rax, 0
	je	.label_170
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
	jne	.label_179
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x1d], 1
	jne	.label_179
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_179
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x1f], 1
	je	.label_189
.label_179:
	lea	rsi, [rbp - 0x1b0]
	mov	rdi, qword ptr [rbp - 0xd8]
	call	stat
	cmp	eax, 0
	je	.label_196
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], ecx
	jmp	.label_197
.label_196:
	mov	eax, 0x14
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x198]
	and	edx, 0xf000
	cmp	edx, 0x4000
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1d4], eax
.label_197:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	dword ptr [rbp - 0x1b4], eax
	cmp	dword ptr [rbp - 0x1b4], 0
	je	.label_202
	movabs	rdi, OFFSET FLAT:label_206
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
	jmp	.label_174
.label_202:
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
.label_189:
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0xd0]
	test	byte ptr [rbp - 0x119], 1
	mov	qword ptr [rbp - 0x1f0], rdi
	mov	qword ptr [rbp - 0x1f8], rsi
	je	.label_199
	mov	rax, qword ptr [rbp - 0x118]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x1fc], ecx
	jmp	.label_169
.label_199:
	xor	eax, eax
	mov	dword ptr [rbp - 0x1fc], eax
	jmp	.label_169
.label_169:
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
	jne	.label_182
	mov	byte ptr [rbp - 1], 0
	jmp	.label_174
.label_182:
	test	byte ptr [rbp - 0x119], 1
	je	.label_183
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x118]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x1b8], ecx
	mov	ecx, dword ptr [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x1d], 1
	mov	dword ptr [rbp - 0x200], ecx
	je	.label_185
	mov	eax, 0x3f
	mov	dword ptr [rbp - 0x204], eax
	jmp	.label_194
.label_185:
	xor	eax, eax
	mov	ecx, 0x12
	mov	rdx, qword ptr [rbp - 0x38]
	mov	sil, byte ptr [rdx + 0x1e]
	test	sil, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x204], eax
.label_194:
	mov	eax, dword ptr [rbp - 0x204]
	mov	ecx, dword ptr [rbp - 0x200]
	and	ecx, eax
	mov	dword ptr [rbp - 0x1bc], ecx
	mov	rdx, qword ptr [rbp - 0x38]
	test	byte ptr [rdx + 0x20], 1
	je	.label_186
	mov	eax, 0x1ff
	mov	dword ptr [rbp - 0x208], eax
	jmp	.label_205
.label_186:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	dword ptr [rbp - 0x208], eax
.label_205:
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
	je	.label_173
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_181
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
	jmp	.label_174
.label_173:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_195
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x21c], eax
.label_195:
	jmp	.label_184
.label_184:
	lea	rsi, [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0xd0]
	call	lstat
	cmp	eax, 0
	je	.label_203
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_206
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
	jmp	.label_174
.label_203:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_177
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	ecx, dword ptr [rbp - 0xb0]
	xor	ecx, 0xffffffff
	and	eax, ecx
	cmp	eax, 0
	je	.label_191
	call	cached_umask
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x1bc]
	mov	dword ptr [rbp - 0x1bc], eax
.label_191:
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	ecx, dword ptr [rbp - 0xb0]
	xor	ecx, 0xffffffff
	and	eax, ecx
	cmp	eax, 0
	jne	.label_188
	mov	eax, dword ptr [rbp - 0xb0]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_175
.label_188:
	mov	eax, dword ptr [rbp - 0xb0]
	or	eax, dword ptr [rbp - 0x1bc]
	mov	rcx, qword ptr [rbp - 0x118]
	mov	dword ptr [rcx + 0x18], eax
	mov	rcx, qword ptr [rbp - 0x118]
	mov	byte ptr [rcx + 0x90], 1
.label_175:
	jmp	.label_177
.label_177:
	mov	eax, dword ptr [rbp - 0xb0]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_200
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	eax, dword ptr [rbp - 0xb0]
	or	eax, 0x1c0
	mov	esi, eax
	call	chmod
	cmp	eax, 0
	je	.label_207
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_167
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
	jmp	.label_174
.label_207:
	jmp	.label_200
.label_200:
	jmp	.label_171
.label_183:
	mov	eax, dword ptr [rbp - 0xb0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_178
	movabs	rdi, OFFSET FLAT:label_190
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
	jmp	.label_174
.label_178:
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	jmp	.label_171
.label_171:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax], 1
	jne	.label_180
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x21], 1
	jne	.label_204
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x25], 1
	je	.label_180
.label_204:
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
	jne	.label_172
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x26], 1
	je	.label_172
	mov	byte ptr [rbp - 1], 0
	jmp	.label_174
.label_172:
	jmp	.label_180
.label_180:
	mov	rax, qword ptr [rbp - 0x110]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x110], rcx
	mov	byte ptr [rax], 0x2f
.label_187:
	mov	rax, qword ptr [rbp - 0x110]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_168
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_187
.label_168:
	jmp	.label_166
.label_170:
	jmp	.label_192
.label_198:
	mov	eax, dword ptr [rbp - 0xb0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_193
	movabs	rdi, OFFSET FLAT:label_190
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
	jmp	.label_174
.label_193:
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	jmp	.label_192
.label_192:
	mov	byte ptr [rbp - 1], 1
.label_174:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b10

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
.label_212:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_214
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x98]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1f], 1
	je	.label_211
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
	je	.label_213
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_218
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
	jmp	.label_209
.label_213:
	jmp	.label_211
.label_211:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1d], 1
	je	.label_222
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rax + 0x1c]
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x20]
	call	lchown
	cmp	eax, 0
	je	.label_217
	mov	rdi, qword ptr [rbp - 0x28]
	call	chown_failure_ok
	test	al, 1
	jne	.label_220
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_221
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
	jmp	.label_209
.label_220:
	mov	esi, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x20]
	call	lchown
	mov	dword ptr [rbp - 0xa4], eax
.label_217:
	jmp	.label_222
.label_222:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1e], 1
	je	.label_219
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rcx + 0x18]
	mov	esi, eax
	mov	ecx, eax
	call	copy_acl
	cmp	eax, 0
	je	.label_223
	mov	byte ptr [rbp - 1], 0
	jmp	.label_209
.label_223:
	jmp	.label_208
.label_219:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x90], 1
	je	.label_210
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rax + 0x18]
	call	chmod
	cmp	eax, 0
	je	.label_215
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_216
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
	jmp	.label_209
.label_215:
	jmp	.label_210
.label_210:
	jmp	.label_208
.label_208:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x98]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx + rax], 0x2f
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0xa0]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_212
.label_214:
	mov	byte ptr [rbp - 1], 1
.label_209:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e50

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
	je	.label_233
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [rcx + 0x23], 1
	mov	byte ptr [rbp - 0x39], al
	je	.label_240
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x26]
	mov	byte ptr [rbp - 0x39], cl
.label_240:
	mov	al, byte ptr [rbp - 0x39]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	test	byte ptr [rbp - 0x29], 1
	mov	byte ptr [rbp - 0x3a], dl
	jne	.label_230
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x3a], cl
.label_230:
	mov	al, byte ptr [rbp - 0x3a]
	lea	rsi, [rbp - 0x38]
	and	al, 1
	mov	byte ptr [rbp - 0x2a], al
	mov	rdi, qword ptr [rbp - 0x10]
	call	lgetfilecon
	xor	ecx, ecx
	cmp	ecx, eax
	jg	.label_235
	mov	rdi, qword ptr [rbp - 0x38]
	call	setfscreatecon
	cmp	eax, 0
	jge	.label_236
	test	byte ptr [rbp - 0x29], 1
	jne	.label_239
	test	byte ptr [rbp - 0x2a], 1
	je	.label_229
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_229
.label_239:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_72
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
.label_229:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_241
	mov	rdi, qword ptr [rbp - 0x38]
	call	freecon
	mov	byte ptr [rbp - 1], 0
	jmp	.label_237
.label_241:
	jmp	.label_236
.label_236:
	mov	rdi, qword ptr [rbp - 0x38]
	call	freecon
	jmp	.label_224
.label_235:
	test	byte ptr [rbp - 0x29], 1
	jne	.label_225
	test	byte ptr [rbp - 0x2a], 1
	je	.label_228
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_228
.label_225:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_232
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
.label_228:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_238
	mov	byte ptr [rbp - 1], 0
	jmp	.label_237
.label_238:
	jmp	.label_224
.label_224:
	jmp	.label_226
.label_233:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	je	.label_227
	test	byte ptr [rbp - 0x1d], 1
	je	.label_231
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	defaultcon
	cmp	eax, 0
	jge	.label_231
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable_ctx_err
	test	al, 1
	jne	.label_231
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_234
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
.label_231:
	jmp	.label_227
.label_227:
	jmp	.label_226
.label_226:
	mov	byte ptr [rbp - 1], 1
.label_237:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050b0

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_242
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	byte ptr [rbp - 5], al
.label_242:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050e0

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
	#Procedure 0x405110

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_243
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	byte ptr [rbp - 5], al
.label_243:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405140

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
	je	.label_244
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x26]
	mov	byte ptr [rbp - 0x23], cl
.label_244:
	mov	al, byte ptr [rbp - 0x23]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	test	byte ptr [rbp - 0x21], 1
	mov	byte ptr [rbp - 0x24], dl
	jne	.label_245
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x24], cl
.label_245:
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
	jne	.label_246
	test	byte ptr [rbp - 0x21], 1
	jne	.label_248
	test	byte ptr [rbp - 0x22], 1
	je	.label_249
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_249
.label_248:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_250
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
.label_249:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_247
.label_246:
	mov	byte ptr [rbp - 1], 1
.label_247:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405260

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
	#Procedure 0x4052a0

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
	#Procedure 0x405300

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
	#Procedure 0x405360

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
	jne	.label_256
	jmp	.label_254
.label_256:
	jmp	.label_255
.label_254:
	movabs	rdi, OFFSET FLAT:label_251
	movabs	rsi, OFFSET FLAT:label_252
	mov	edx, 0xb9f
	movabs	rcx, OFFSET FLAT:label_253
	call	__assert_fail
.label_255:
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
	#Procedure 0x405450

	.globl valid_options
	.type valid_options, @function
valid_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_263
	jmp	.label_272
.label_263:
	movabs	rdi, OFFSET FLAT:label_275
	movabs	rsi, OFFSET FLAT:label_252
	mov	edx, 0xb86
	movabs	rcx, OFFSET FLAT:label_268
	call	__assert_fail
.label_272:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 3
	ja	.label_265
	jmp	.label_269
.label_265:
	movabs	rdi, OFFSET FLAT:label_271
	movabs	rsi, OFFSET FLAT:label_252
	mov	edx, 0xb87
	movabs	rcx, OFFSET FLAT:label_268
	call	__assert_fail
.label_269:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 1
	je	.label_261
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 2
	je	.label_261
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_274
.label_261:
	jmp	.label_276
.label_274:
	movabs	rdi, OFFSET FLAT:label_279
	movabs	rsi, OFFSET FLAT:label_252
	mov	edx, 0xb88
	movabs	rcx, OFFSET FLAT:label_268
	call	__assert_fail
.label_276:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_270
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 1
	je	.label_270
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_257
.label_270:
	jmp	.label_262
.label_257:
	movabs	rdi, OFFSET FLAT:label_277
	movabs	rsi, OFFSET FLAT:label_252
	mov	edx, 0xb89
	movabs	rcx, OFFSET FLAT:label_268
	call	__assert_fail
.label_262:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x17], 1
	je	.label_278
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x2c], 1
	jne	.label_260
.label_278:
	jmp	.label_266
.label_260:
	movabs	rdi, OFFSET FLAT:label_267
	movabs	rsi, OFFSET FLAT:label_252
	mov	edx, 0xb8a
	movabs	rcx, OFFSET FLAT:label_268
	call	__assert_fail
.label_266:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_258
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 2
	jne	.label_264
.label_258:
	jmp	.label_259
.label_264:
	movabs	rdi, OFFSET FLAT:label_273
	movabs	rsi, OFFSET FLAT:label_252
	mov	edx, 0xb8d
	movabs	rcx, OFFSET FLAT:label_268
	call	__assert_fail
.label_259:
	mov	al, 1
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405620

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
	je	.label_451
	cmp	dword ptr [rbp - 0x1b8], 0
	jge	.label_514
	mov	eax, 0xffffff9c
	mov	r8d, 1
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edi, eax
	mov	edx, eax
	call	renameatu
	cmp	eax, 0
	je	.label_518
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x4d8], ecx
	jmp	.label_521
.label_518:
	xor	eax, eax
	mov	dword ptr [rbp - 0x4d8], eax
	jmp	.label_521
.label_521:
	mov	eax, dword ptr [rbp - 0x4d8]
	mov	dword ptr [rbp - 0x1b8], eax
.label_514:
	cmp	dword ptr [rbp - 0x1b8], 0
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_528
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x68]
	and	al, 1
	mov	byte ptr [rcx], al
.label_528:
	jmp	.label_451
.label_451:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_532
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x31], 1
	jne	.label_323
	jmp	.label_535
.label_532:
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_535
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_323
.label_535:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_538
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x4e0], rax
	jmp	.label_469
.label_538:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x4e0], rax
.label_469:
	mov	rax, qword ptr [rbp - 0x4e0]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 2
	jne	.label_543
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1c0]
	call	lstat
	mov	dword ptr [rbp - 0x4e4], eax
	jmp	.label_527
.label_543:
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1c0]
	call	stat
	mov	dword ptr [rbp - 0x4e4], eax
.label_527:
	mov	eax, dword ptr [rbp - 0x4e4]
	cmp	eax, 0
	je	.label_548
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_284
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
	jmp	.label_298
.label_548:
	mov	eax, dword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x18c], eax
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_300
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2a], 1
	jne	.label_300
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x19], 1
	jne	.label_305
	movabs	rdi, OFFSET FLAT:label_309
	call	gettext
	mov	qword ptr [rbp - 0x4f8], rax
	jmp	.label_312
.label_305:
	movabs	rdi, OFFSET FLAT:label_314
	call	gettext
	mov	qword ptr [rbp - 0x4f8], rax
.label_312:
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
	jmp	.label_298
.label_300:
	jmp	.label_323
.label_323:
	test	byte ptr [rbp - 0x49], 1
	je	.label_325
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x48], 0
	je	.label_325
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_330
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	jne	.label_330
	lea	rdx, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	call	seen_file
	test	al, 1
	jne	.label_343
	jmp	.label_330
.label_343:
	movabs	rdi, OFFSET FLAT:label_347
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
	jmp	.label_298
.label_330:
	lea	rdx, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	call	record_file
.label_325:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	esi, al
	call	should_dereference
	and	al, 1
	mov	byte ptr [rbp - 0x1c1], al
	test	byte ptr [rbp - 0x29], 1
	jne	.label_369
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_376
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_379
.label_376:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_381
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x14], 1
	mov	byte ptr [rbp - 0x515], al
	je	.label_384
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	byte ptr [rbp - 0x515], al
	je	.label_384
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	byte ptr [rbp - 0x515], al
	je	.label_384
.label_381:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x18], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_384
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x2c], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_384
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x17], 1
	mov	byte ptr [rbp - 0x515], al
	jne	.label_384
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	dword ptr [rcx], 0
	mov	byte ptr [rbp - 0x515], al
	jne	.label_384
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x15]
	mov	byte ptr [rbp - 0x515], cl
.label_384:
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
	jne	.label_409
	mov	al, byte ptr [rbp - 0x1c2]
	and	al, 1
	mov	byte ptr [rbp - 0x1b4], al
	mov	dword ptr [rbp - 0x1b8], 0x11
	jmp	.label_411
.label_409:
	call	__errno_location
	cmp	dword ptr [rax], 0x28
	jne	.label_418
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x16], 1
	je	.label_418
	jmp	.label_419
.label_418:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_413
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_284
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
	jmp	.label_298
.label_413:
	mov	byte ptr [rbp - 0x29], 1
	jmp	.label_419
.label_419:
	jmp	.label_411
.label_411:
	jmp	.label_379
.label_379:
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_437
	mov	byte ptr [rbp - 0x1c9], 0
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_438
	lea	rsi, [rbp - 0xf8]
	lea	rcx, [rbp - 0x188]
	lea	r9, [rbp - 0x1c9]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	call	same_file_ok
	test	al, 1
	jne	.label_438
	movabs	rdi, OFFSET FLAT:label_442
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
	jmp	.label_298
.label_438:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2d], 1
	je	.label_449
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_449
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x1f], 1
	mov	byte ptr [rbp - 0x539], cl
	je	.label_452
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x18], 1
	mov	byte ptr [rbp - 0x53a], cl
	je	.label_457
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0xf8]
	sete	cl
	mov	byte ptr [rbp - 0x53a], cl
.label_457:
	mov	al, byte ptr [rbp - 0x53a]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x539], al
.label_452:
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
	jg	.label_467
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_468
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_468:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_476
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
	jne	.label_481
	jmp	.label_291
.label_481:
	jmp	.label_476
.label_476:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_298
.label_467:
	jmp	.label_449
.label_449:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_486
	lea	rdx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	call	abandon_move
	test	al, 1
	jne	.label_546
	jmp	.label_488
.label_546:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_489
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_489:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_298
.label_488:
	jmp	.label_494
.label_486:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_373
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 2
	je	.label_497
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 3
	jne	.label_373
	lea	rdx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	call	overwrite_ok
	test	al, 1
	jne	.label_373
.label_497:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_298
.label_373:
	jmp	.label_494
.label_494:
	test	byte ptr [rbp - 0x1c9], 1
	je	.label_504
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_298
.label_504:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_401
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_513
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_509
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_509
	jmp	.label_520
.label_509:
	movabs	rdi, OFFSET FLAT:label_358
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
	jmp	.label_298
.label_520:
	jmp	.label_513
.label_513:
	test	byte ptr [rbp - 0x49], 1
	je	.label_441
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 3
	je	.label_441
	lea	rdx, [rbp - 0x188]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	seen_file
	test	al, 1
	jne	.label_540
	jmp	.label_441
.label_540:
	movabs	rdi, OFFSET FLAT:label_541
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
	jmp	.label_298
.label_441:
	jmp	.label_401
.label_401:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_281
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_286
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_288
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_288
	jmp	.label_293
.label_288:
	movabs	rdi, OFFSET FLAT:label_295
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
	jmp	.label_298
.label_293:
	jmp	.label_286
.label_286:
	jmp	.label_281
.label_281:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_310
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_313
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_313
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	jne	.label_313
	movabs	rdi, OFFSET FLAT:label_321
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
	jmp	.label_298
.label_313:
	jmp	.label_310
.label_310:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	je	.label_337
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, 1
	jne	.label_337
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_350
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_337
.label_350:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 3
	je	.label_354
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x1d8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	source_is_dst_backup
	test	al, 1
	jne	.label_398
	jmp	.label_354
.label_398:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_405
	movabs	rdi, OFFSET FLAT:label_367
	call	gettext
	mov	qword ptr [rbp - 0x588], rax
	jmp	.label_370
.label_405:
	movabs	rdi, OFFSET FLAT:label_375
	call	gettext
	mov	qword ptr [rbp - 0x588], rax
.label_370:
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
	jmp	.label_298
.label_354:
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rax]
	call	backup_file_rename
	mov	qword ptr [rbp - 0x1e8], rax
	cmp	qword ptr [rbp - 0x1e8], 0
	je	.label_395
	jmp	.label_397
.label_397:
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
	jmp	.label_410
.label_395:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_412
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_433
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
	jmp	.label_298
.label_412:
	jmp	.label_410
.label_410:
	mov	byte ptr [rbp - 0x29], 1
	jmp	.label_426
.label_337:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_428
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_428
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x15], 1
	jne	.label_431
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x22], 1
	je	.label_434
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x178]
	jb	.label_431
.label_434:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 2
	jne	.label_428
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_428
.label_431:
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlink
	cmp	eax, 0
	je	.label_364
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_364
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_424
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
	jmp	.label_298
.label_364:
	mov	byte ptr [rbp - 0x29], 1
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_422
	movabs	rdi, OFFSET FLAT:label_450
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
.label_422:
	jmp	.label_428
.label_428:
	jmp	.label_426
.label_426:
	jmp	.label_437
.label_437:
	jmp	.label_369
.label_369:
	test	byte ptr [rbp - 0x49], 1
	je	.label_460
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_460
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_460
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax], 0
	jne	.label_460
	mov	byte ptr [rbp - 0x209], 1
	test	byte ptr [rbp - 0x1b4], 1
	je	.label_463
	lea	rax, [rbp - 0x188]
	mov	qword ptr [rbp - 0x2a8], rax
	jmp	.label_465
.label_463:
	lea	rsi, [rbp - 0x2a0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	lstat
	cmp	eax, 0
	jne	.label_470
	lea	rax, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x2a8], rax
	jmp	.label_473
.label_470:
	mov	byte ptr [rbp - 0x209], 0
.label_473:
	jmp	.label_465
.label_465:
	test	byte ptr [rbp - 0x209], 1
	je	.label_403
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_403
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x2a8]
	call	seen_file
	test	al, 1
	jne	.label_483
	jmp	.label_403
.label_483:
	movabs	rdi, OFFSET FLAT:label_406
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
	jmp	.label_298
.label_403:
	jmp	.label_460
.label_460:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_496
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	jne	.label_496
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_496
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	call	emit_verbose
.label_496:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_502
	mov	qword ptr [rbp - 0x1a8], 0
	jmp	.label_505
.label_502:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2a], 1
	je	.label_508
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_508
	test	byte ptr [rbp - 0x49], 1
	je	.label_515
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
	jmp	.label_348
.label_515:
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	src_to_dest_lookup
	mov	qword ptr [rbp - 0x1a8], rax
.label_348:
	jmp	.label_525
.label_508:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_526
	cmp	qword ptr [rbp - 0xe8], 1
	jne	.label_526
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	src_to_dest_lookup
	mov	qword ptr [rbp - 0x1a8], rax
	jmp	.label_530
.label_526:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x22], 1
	je	.label_533
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	jne	.label_533
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xe8]
	jb	.label_536
	test	byte ptr [rbp - 0x49], 1
	je	.label_537
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 3
	je	.label_536
.label_537:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 4
	jne	.label_533
.label_536:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xf8]
	call	remember_copied
	mov	qword ptr [rbp - 0x1a8], rax
.label_533:
	jmp	.label_530
.label_530:
	jmp	.label_525
.label_525:
	jmp	.label_505
.label_505:
	cmp	qword ptr [rbp - 0x1a8], 0
	je	.label_372
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_545
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	same_name
	test	al, 1
	jne	.label_282
	jmp	.label_283
.label_282:
	movabs	rdi, OFFSET FLAT:label_285
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
	jmp	.label_291
.label_283:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x1a8]
	call	same_name
	test	al, 1
	jne	.label_306
	jmp	.label_308
.label_306:
	movabs	rdi, OFFSET FLAT:label_430
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
	je	.label_320
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_320
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_320:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_298
.label_308:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 4
	je	.label_322
	test	byte ptr [rbp - 0x49], 1
	je	.label_328
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 4], 3
	jne	.label_328
.label_322:
	jmp	.label_331
.label_328:
	movabs	rdi, OFFSET FLAT:label_333
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
	jmp	.label_291
.label_331:
	jmp	.label_353
.label_353:
	jmp	.label_355
.label_355:
	jmp	.label_356
.label_545:
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
	jne	.label_377
	jmp	.label_291
.label_377:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_298
.label_356:
	jmp	.label_372
.label_372:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_374
	cmp	dword ptr [rbp - 0x1b8], 0x11
	jne	.label_378
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rename
	cmp	eax, 0
	jne	.label_382
	xor	eax, eax
	mov	dword ptr [rbp - 0x614], eax
	jmp	.label_383
.label_382:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x614], ecx
.label_383:
	mov	eax, dword ptr [rbp - 0x614]
	mov	dword ptr [rbp - 0x1b8], eax
.label_378:
	cmp	dword ptr [rbp - 0x1b8], 0
	jne	.label_389
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_391
	movabs	rdi, OFFSET FLAT:label_392
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	dword ptr [rbp - 0x618], eax
	call	emit_verbose
.label_391:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	je	.label_544
	xor	esi, esi
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	call	set_file_security_ctx
	mov	byte ptr [rbp - 0x619], al
.label_544:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_400
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
.label_400:
	test	byte ptr [rbp - 0x49], 1
	je	.label_402
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x31], 1
	jne	.label_402
	lea	rdx, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_402:
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_298
.label_389:
	cmp	dword ptr [rbp - 0x1b8], 0x16
	jne	.label_407
	movabs	rdi, OFFSET FLAT:label_478
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
	jmp	.label_298
.label_407:
	cmp	dword ptr [rbp - 0x1b8], 0x12
	je	.label_423
	movabs	rdi, OFFSET FLAT:label_425
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
	jmp	.label_298
.label_423:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_440
	mov	rdi, qword ptr [rbp - 0x28]
	call	rmdir
	mov	dword ptr [rbp - 0x64c], eax
	jmp	.label_443
.label_440:
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlink
	mov	dword ptr [rbp - 0x64c], eax
.label_443:
	mov	eax, dword ptr [rbp - 0x64c]
	cmp	eax, 0
	je	.label_447
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_447
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_448
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
	jmp	.label_298
.label_447:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_462
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_462
	movabs	rdi, OFFSET FLAT:label_464
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	dword ptr [rbp - 0x664], eax
	call	emit_verbose
.label_462:
	mov	byte ptr [rbp - 0x29], 1
.label_374:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2b], 1
	je	.label_471
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x668], ecx
	jmp	.label_474
.label_471:
	mov	eax, dword ptr [rbp - 0x18c]
	mov	dword ptr [rbp - 0x668], eax
.label_474:
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
	jmp	.label_480
.label_340:
	xor	eax, eax
	mov	ecx, 0x12
	mov	edx, dword ptr [rbp - 0x18c]
	and	edx, 0xf000
	cmp	edx, 0x4000
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x670], eax
.label_480:
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
	jne	.label_492
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_298
.label_492:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_495
	lea	rdi, [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0x40]
	call	is_ancestor
	test	al, 1
	jne	.label_499
	jmp	.label_500
.label_499:
	movabs	rdi, OFFSET FLAT:label_501
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
	jmp	.label_291
.label_500:
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
	jne	.label_511
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_522
.label_511:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	esi, eax
	call	mkdir
	cmp	eax, 0
	je	.label_529
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_531
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
	jmp	.label_291
.label_529:
	lea	rsi, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x28]
	call	lstat
	cmp	eax, 0
	je	.label_542
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_284
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
	jmp	.label_291
.label_542:
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_304
	mov	eax, dword ptr [rbp - 0x170]
	mov	dword ptr [rbp - 0x190], eax
	mov	byte ptr [rbp - 0x199], 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x190]
	or	eax, 0x1c0
	mov	esi, eax
	call	chmod
	cmp	eax, 0
	je	.label_290
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_167
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
	jmp	.label_291
.label_290:
	jmp	.label_304
.label_304:
	jmp	.label_421
.label_421:
	mov	rax, qword ptr [rbp - 0x58]
	test	byte ptr [rax], 1
	jne	.label_307
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x188]
	call	remember_copied
	mov	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rdx], 1
	mov	qword ptr [rbp - 0x6b0], rax
.label_307:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_332
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_318
	movabs	rdi, OFFSET FLAT:label_319
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
	jmp	.label_510
.label_318:
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	emit_verbose
.label_510:
	jmp	.label_332
.label_332:
	jmp	.label_334
.label_522:
	mov	dword ptr [rbp - 0x198], 0
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	jne	.label_335
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_339
.label_335:
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
	jne	.label_351
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x26], 1
	je	.label_352
	jmp	.label_291
.label_352:
	jmp	.label_351
.label_351:
	jmp	.label_339
.label_339:
	jmp	.label_334
.label_334:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1c], 1
	je	.label_361
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_361
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xf8]
	je	.label_361
	jmp	.label_365
.label_361:
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
.label_365:
	jmp	.label_366
.label_495:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2c], 1
	je	.label_386
	mov	byte ptr [rbp - 0x1b3], 1
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_388
	mov	rdi, qword ptr [rbp - 0x28]
	call	dir_name
	mov	cl, 1
	mov	qword ptr [rbp - 0x3d8], rax
	mov	rsi, qword ptr [rbp - 0x3d8]
	mov	edx, OFFSET FLAT:label_393
	mov	edi, edx
	mov	byte ptr [rbp - 0x6c9], cl
	call	strcmp
	cmp	eax, 0
	mov	cl, byte ptr [rbp - 0x6c9]
	mov	byte ptr [rbp - 0x6ca], cl
	je	.label_336
	movabs	rdi, OFFSET FLAT:label_393
	lea	rsi, [rbp - 0x340]
	call	stat
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x6ca], cl
	jne	.label_336
	lea	rsi, [rbp - 0x3d0]
	mov	rdi, qword ptr [rbp - 0x3d8]
	call	stat
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x6ca], cl
	jne	.label_336
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x338]
	cmp	rdx, qword ptr [rbp - 0x3c8]
	mov	byte ptr [rbp - 0x6cb], cl
	jne	.label_357
	mov	rax, qword ptr [rbp - 0x340]
	cmp	rax, qword ptr [rbp - 0x3d0]
	sete	cl
	mov	byte ptr [rbp - 0x6cb], cl
.label_357:
	mov	al, byte ptr [rbp - 0x6cb]
	mov	byte ptr [rbp - 0x6ca], al
.label_336:
	mov	al, byte ptr [rbp - 0x6ca]
	and	al, 1
	mov	byte ptr [rbp - 0x3d9], al
	mov	rdi, qword ptr [rbp - 0x3d8]
	call	free
	test	byte ptr [rbp - 0x3d9], 1
	jne	.label_415
	movabs	rdi, OFFSET FLAT:label_416
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
	jmp	.label_291
.label_415:
	jmp	.label_388
.label_388:
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
	jge	.label_506
	movabs	rdi, OFFSET FLAT:label_432
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
	jmp	.label_291
.label_506:
	jmp	.label_359
.label_386:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	je	.label_445
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [rcx + 0x16], 1
	mov	byte ptr [rbp - 0x6f1], al
	jne	.label_446
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 8], 3
	sete	cl
	mov	byte ptr [rbp - 0x6f1], cl
.label_446:
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
	jne	.label_453
	jmp	.label_291
.label_453:
	jmp	.label_363
.label_445:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_456
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x14], 1
	je	.label_459
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_459
.label_456:
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
	jne	.label_414
	jmp	.label_291
.label_414:
	jmp	.label_296
.label_459:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_472
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
	je	.label_420
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xffffefff
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	esi, eax
	call	mkfifo
	cmp	eax, 0
	je	.label_482
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_484
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
	jmp	.label_291
.label_482:
	jmp	.label_420
.label_420:
	jmp	.label_362
.label_472:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x6000
	je	.label_491
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_491
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_498
.label_491:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x18c]
	mov	ecx, dword ptr [rbp - 0x198]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	esi, eax
	call	mknod
	cmp	eax, 0
	je	.label_503
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_507
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
	jmp	.label_291
.label_503:
	jmp	.label_360
.label_498:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_519
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x3f0], rax
	mov	byte ptr [rbp - 0x1b3], 1
	cmp	qword ptr [rbp - 0x3f0], 0
	jne	.label_534
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_429
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
	jmp	.label_291
.label_534:
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
	jge	.label_280
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2d], 1
	je	.label_280
	test	byte ptr [rbp - 0x29], 1
	jne	.label_280
	mov	eax, dword ptr [rbp - 0x170]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_280
	mov	rax, qword ptr [rbp - 0x158]
	mov	rdi, qword ptr [rbp - 0x3f0]
	mov	qword ptr [rbp - 0x728], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x728]
	cmp	rdi, rax
	jne	.label_280
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x158]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x400], rax
	cmp	qword ptr [rbp - 0x400], 0
	je	.label_287
	mov	rdi, qword ptr [rbp - 0x400]
	mov	rsi, qword ptr [rbp - 0x3f0]
	call	strcmp
	cmp	eax, 0
	jne	.label_292
	mov	dword ptr [rbp - 0x3f4], 0
.label_292:
	mov	rdi, qword ptr [rbp - 0x400]
	call	free
.label_287:
	jmp	.label_280
.label_280:
	mov	rdi, qword ptr [rbp - 0x3f0]
	call	free
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x3f4]
	jge	.label_302
	movabs	rdi, OFFSET FLAT:label_303
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
	jmp	.label_291
.label_302:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_317
	call	restore_default_fscreatecon_or_die
.label_317:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1d], 1
	je	.label_344
	mov	rdi, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0xdc]
	mov	edx, dword ptr [rbp - 0xd8]
	call	lchown
	cmp	eax, 0
	je	.label_327
	mov	rdi, qword ptr [rbp - 0x48]
	call	chown_failure_ok
	test	al, 1
	jne	.label_327
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_221
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
	je	.label_338
	jmp	.label_291
.label_338:
	jmp	.label_342
.label_327:
	jmp	.label_342
.label_342:
	jmp	.label_344
.label_344:
	jmp	.label_345
.label_519:
	movabs	rdi, OFFSET FLAT:label_349
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
	jmp	.label_291
.label_345:
	jmp	.label_360
.label_360:
	jmp	.label_362
.label_362:
	jmp	.label_296
.label_296:
	jmp	.label_363
.label_363:
	jmp	.label_359
.label_359:
	jmp	.label_366
.label_366:
	test	byte ptr [rbp - 0x29], 1
	jne	.label_368
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x14], 1
	jne	.label_368
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_368
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x21], 1
	jne	.label_380
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_368
.label_380:
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
	jne	.label_387
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x26], 1
	je	.label_390
	jmp	.label_291
.label_390:
	jmp	.label_387
.label_387:
	jmp	.label_368
.label_368:
	test	byte ptr [rbp - 0x49], 1
	je	.label_394
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_394
	lea	rsi, [rbp - 0x490]
	mov	rdi, qword ptr [rbp - 0x28]
	call	lstat
	cmp	eax, 0
	jne	.label_396
	lea	rdx, [rbp - 0x490]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	call	record_file
.label_396:
	jmp	.label_394
.label_394:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x17], 1
	je	.label_399
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_399
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_298
.label_399:
	test	byte ptr [rbp - 0x1b2], 1
	je	.label_404
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_298
.label_404:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1f], 1
	je	.label_346
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
	je	.label_417
	lea	rsi, [rbp - 0x4b0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	utimens_symlink
	mov	dword ptr [rbp - 0x750], eax
	jmp	.label_427
.label_417:
	lea	rsi, [rbp - 0x4b0]
	mov	rdi, qword ptr [rbp - 0x28]
	call	utimens
	mov	dword ptr [rbp - 0x750], eax
.label_427:
	mov	eax, dword ptr [rbp - 0x750]
	cmp	eax, 0
	je	.label_341
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_435
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
	je	.label_439
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_298
.label_439:
	jmp	.label_341
.label_341:
	jmp	.label_346
.label_346:
	test	byte ptr [rbp - 0x1b3], 1
	jne	.label_436
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x1d], 1
	je	.label_436
	test	byte ptr [rbp - 0x29], 1
	jne	.label_385
	mov	eax, dword ptr [rbp - 0xdc]
	cmp	eax, dword ptr [rbp - 0x16c]
	jne	.label_385
	mov	eax, dword ptr [rbp - 0xd8]
	cmp	eax, dword ptr [rbp - 0x168]
	je	.label_436
.label_385:
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
	je	.label_444
	jmp	.label_454
.label_454:
	mov	eax, dword ptr [rbp - 0x764]
	test	eax, eax
	je	.label_455
	jmp	.label_458
.label_444:
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_298
.label_455:
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xfffff1ff
	mov	dword ptr [rbp - 0x18c], eax
.label_458:
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x27], 1
	je	.label_461
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	mov	esi, eax
	mov	ecx, eax
	call	copy_attr
	test	al, 1
	jne	.label_461
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x28], 1
	je	.label_461
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_298
.label_461:
	test	byte ptr [rbp - 0x1b3], 1
	je	.label_466
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_298
.label_466:
	mov	esi, 0xffffffff
	lea	rdx, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_author
	mov	rdx, qword ptr [rbp - 0x48]
	test	byte ptr [rdx + 0x1e], 1
	jne	.label_475
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x18], 1
	je	.label_477
.label_475:
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rbp - 0x18c]
	mov	esi, eax
	mov	ecx, eax
	call	copy_acl
	cmp	eax, 0
	je	.label_479
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x24], 1
	je	.label_479
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_298
.label_479:
	jmp	.label_299
.label_477:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2b], 1
	je	.label_485
	mov	esi, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rax + 0x10]
	call	set_acl
	cmp	eax, 0
	je	.label_487
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_298
.label_487:
	jmp	.label_297
.label_485:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x20], 1
	je	.label_490
	test	byte ptr [rbp - 0x29], 1
	je	.label_490
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x18c]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	byte ptr [rbp - 0x769], al
	je	.label_493
	mov	eax, dword ptr [rbp - 0x18c]
	and	eax, 0xf000
	cmp	eax, 0xc000
	sete	cl
	mov	byte ptr [rbp - 0x769], cl
.label_493:
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
	je	.label_512
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_298
.label_512:
	jmp	.label_371
.label_490:
	cmp	dword ptr [rbp - 0x198], 0
	je	.label_516
	call	cached_umask
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x198]
	mov	dword ptr [rbp - 0x198], eax
	cmp	dword ptr [rbp - 0x198], 0
	je	.label_517
	test	byte ptr [rbp - 0x199], 1
	jne	.label_517
	test	byte ptr [rbp - 0x29], 1
	je	.label_523
	lea	rsi, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x28]
	call	lstat
	cmp	eax, 0
	je	.label_523
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_284
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
	jmp	.label_298
.label_523:
	mov	eax, dword ptr [rbp - 0x170]
	mov	dword ptr [rbp - 0x190], eax
	mov	eax, dword ptr [rbp - 0x198]
	mov	ecx, dword ptr [rbp - 0x190]
	xor	ecx, 0xffffffff
	and	eax, ecx
	cmp	eax, 0
	je	.label_539
	mov	byte ptr [rbp - 0x199], 1
.label_539:
	jmp	.label_517
.label_517:
	jmp	.label_516
.label_516:
	test	byte ptr [rbp - 0x199], 1
	je	.label_294
	mov	rdi, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rbp - 0x190]
	or	eax, dword ptr [rbp - 0x198]
	mov	esi, eax
	call	chmod
	cmp	eax, 0
	je	.label_524
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_547
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
	je	.label_289
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_298
.label_289:
	jmp	.label_524
.label_524:
	jmp	.label_294
.label_294:
	jmp	.label_371
.label_371:
	jmp	.label_297
.label_297:
	jmp	.label_299
.label_299:
	mov	al, byte ptr [rbp - 0x1b1]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_298
.label_291:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x25], 1
	je	.label_301
	call	restore_default_fscreatecon_or_die
.label_301:
	cmp	qword ptr [rbp - 0x1a8], 0
	jne	.label_408
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	call	forget_created
.label_408:
	cmp	qword ptr [rbp - 0x1b0], 0
	je	.label_311
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rename
	cmp	eax, 0
	je	.label_315
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_316
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
	jmp	.label_324
.label_315:
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x2e], 1
	je	.label_326
	movabs	rdi, OFFSET FLAT:label_329
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
.label_326:
	jmp	.label_324
.label_324:
	jmp	.label_311
.label_311:
	mov	byte ptr [rbp - 0x11], 0
.label_298:
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
	#Procedure 0x4081b0

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
	#Procedure 0x408210

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_549
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	mov	byte ptr [rbp - 9], dl
	jne	.label_550
.label_549:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x1a]
	xor	cl, 0xff
	mov	byte ptr [rbp - 9], cl
.label_550:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408260

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [cached_umask.mask]],  -1
	jne	.label_551
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [cached_umask.mask]],  eax
	mov	edi,  dword ptr [dword ptr [cached_umask.mask]]
	call	umask
	mov	dword ptr [rbp - 4], eax
.label_551:
	mov	eax,  dword ptr [dword ptr [cached_umask.mask]]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082a0

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
	je	.label_552
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 4], 3
	mov	byte ptr [rbp - 0xb], cl
	jne	.label_553
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0xb], al
.label_553:
	mov	al, byte ptr [rbp - 0xb]
	mov	byte ptr [rbp - 0xa], al
.label_552:
	mov	al, byte ptr [rbp - 0xa]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4082f0

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
	jne	.label_589
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x17a], dl
.label_589:
	mov	al, byte ptr [rbp - 0x17a]
	and	al, 1
	mov	byte ptr [rbp - 0x16a], al
	mov	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x16a], 1
	je	.label_568
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_568
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_568:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	jne	.label_575
	mov	al, byte ptr [rbp - 0x16a]
	and	al, 1
	mov	byte ptr [rbp - 0x169], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	jne	.label_579
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_579
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	and	al, 1
	mov	byte ptr [rbp - 0x16b], al
	test	byte ptr [rbp - 0x16b], 1
	jne	.label_566
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	je	.label_591
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_591:
	test	byte ptr [rbp - 0x169], 1
	je	.label_561
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_557
.label_561:
	jmp	.label_566
.label_566:
	mov	al, byte ptr [rbp - 0x16b]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_557
.label_579:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_570
.label_575:
	test	byte ptr [rbp - 0x16a], 1
	jne	.label_571
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_571:
	lea	rsi, [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	lstat
	cmp	eax, 0
	jne	.label_576
	lea	rsi, [rbp - 0x168]
	mov	rdi, qword ptr [rbp - 0x10]
	call	lstat
	cmp	eax, 0
	je	.label_581
.label_576:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_581:
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
	jne	.label_584
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x17b], dl
.label_584:
	mov	al, byte ptr [rbp - 0x17b]
	and	al, 1
	mov	byte ptr [rbp - 0x169], al
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	jne	.label_555
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_555
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x15], 1
	je	.label_555
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_555:
	jmp	.label_570
.label_570:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	je	.label_577
	test	byte ptr [rbp - 0x169], 1
	jne	.label_578
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	jne	.label_573
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	je	.label_573
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_573
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_573
	mov	byte ptr [rbp - 1], 0
	jmp	.label_557
.label_573:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_578:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_557
.label_577:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	jne	.label_590
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x15], 1
	je	.label_554
.label_590:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_559
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_559:
	test	byte ptr [rbp - 0x169], 1
	je	.label_565
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_565
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	same_name
	test	al, 1
	jne	.label_565
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_557
.label_565:
	jmp	.label_554
.label_554:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_556
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_556
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_583
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	je	.label_585
.label_583:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_585:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_588
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_588:
	jmp	.label_556
.label_556:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x18], 1
	je	.label_558
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_558
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_558
	mov	rdi, qword ptr [rbp - 0x10]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x178], rax
	cmp	qword ptr [rbp - 0x178], 0
	je	.label_569
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
	jmp	.label_557
.label_569:
	jmp	.label_558
.label_558:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x2c], 1
	je	.label_580
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_580
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_580:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 4], 2
	jne	.label_563
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_587
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0x168]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_560
.label_587:
	lea	rsi, [rbp - 0x168]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	je	.label_564
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_564:
	jmp	.label_560
.label_560:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_567
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_572
.label_567:
	lea	rsi, [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	stat
	cmp	eax, 0
	je	.label_574
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_574:
	jmp	.label_572
.label_572:
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0xd0]
	jne	.label_582
	mov	rax, qword ptr [rbp - 0x168]
	cmp	rax, qword ptr [rbp - 0xd8]
	je	.label_562
.label_582:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_557
.label_562:
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x17], 1
	je	.label_586
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
	jmp	.label_557
.label_586:
	jmp	.label_563
.label_563:
	mov	byte ptr [rbp - 1], 0
.label_557:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408920

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
	jge	.label_594
	movabs	rdi, OFFSET FLAT:label_592
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
	jmp	.label_595
.label_594:
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_593
	test	byte ptr [rbp - 0x1a], 1
	je	.label_593
	movabs	rdi, OFFSET FLAT:label_450
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
.label_593:
	mov	byte ptr [rbp - 1], 1
.label_595:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408a60

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
	je	.label_596
	jmp	.label_597
.label_596:
	movabs	rdi, OFFSET FLAT:label_599
	movabs	rsi, OFFSET FLAT:label_252
	mov	edx, 0x6d2
	movabs	rcx, OFFSET FLAT:label_600
	call	__assert_fail
.label_597:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	dword ptr [rcx + 8], 2
	mov	byte ptr [rbp - 0x19], al
	je	.label_602
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 8], 3
	je	.label_601
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 8], 4
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_598
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + 0x2f], 1
	mov	byte ptr [rbp - 0x1a], cl
	je	.label_598
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	writable_destination
	xor	esi, esi
	mov	cl, sil
	test	al, 1
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_598
.label_601:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	overwrite_ok
	xor	al, 0xff
	mov	byte ptr [rbp - 0x1a], al
.label_598:
	mov	al, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 0x19], al
.label_602:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b50

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
	jne	.label_607
	lea	rsi, [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 0x18]
	call	strmode
	mov	byte ptr [rbp - 0x1a], 0
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x18], 1
	mov	qword ptr [rbp - 0x30], rdi
	jne	.label_605
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x15], 1
	jne	.label_605
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x16], 1
	je	.label_610
.label_605:
	movabs	rdi, OFFSET FLAT:label_604
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_608
.label_610:
	movabs	rdi, OFFSET FLAT:label_603
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_608:
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
	jmp	.label_606
.label_607:
	movabs	rdi, OFFSET FLAT:label_609
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
.label_606:
	call	yesno
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408cc0

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_611
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
	je	.label_612
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0x2f
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_612:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_613
.label_611:
	mov	byte ptr [rbp - 1], 0
.label_613:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d40

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
	jne	.label_615
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcmp
	cmp	eax, 0
	jne	.label_615
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_614
.label_615:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_616
.label_614:
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
	jne	.label_617
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	cmp	rdx, qword ptr [rbp - 0xd8]
	mov	byte ptr [rbp - 0xfa], cl
	jne	.label_618
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xe0]
	sete	cl
	mov	byte ptr [rbp - 0xfa], cl
.label_618:
	mov	al, byte ptr [rbp - 0xfa]
	mov	byte ptr [rbp - 0xf9], al
.label_617:
	mov	al, byte ptr [rbp - 0xf9]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_616:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ee0

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
	movabs	rdi, OFFSET FLAT:label_621
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	al, 0
	call	printf
	cmp	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x24], eax
	je	.label_620
	movabs	rdi, OFFSET FLAT:label_619
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
.label_620:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f90

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_623:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_625
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_624
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jne	.label_624
	mov	byte ptr [rbp - 1], 1
	jmp	.label_622
.label_624:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_623
.label_625:
	mov	byte ptr [rbp - 1], 0
.label_622:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409000

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
	jne	.label_632
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_630
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
	jmp	.label_626
.label_632:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	dword ptr [rax + 4], 3
	jne	.label_631
	mov	dword ptr [rbp - 0xbc], 2
.label_631:
	mov	byte ptr [rbp - 0xc2], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
.label_628:
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_627
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
	je	.label_629
	jmp	.label_627
.label_629:
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
	jmp	.label_628
.label_627:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	mov	al, byte ptr [rbp - 0xc2]
	mov	rdi, qword ptr [rbp - 0x58]
	and	al, 1
	mov	byte ptr [rdi], al
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
.label_626:
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
	#Procedure 0x4092e0

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
	jge	.label_647
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_707
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
	jmp	.label_658
.label_647:
	lea	rsi, [rbp - 0x188]
	mov	edi, dword ptr [rbp - 0x64]
	call	fstat
	cmp	eax, 0
	je	.label_718
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_677
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
	jmp	.label_662
.label_718:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x180]
	jne	.label_644
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x188]
	je	.label_651
.label_644:
	movabs	rdi, OFFSET FLAT:label_656
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
	jmp	.label_662
.label_651:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	jne	.label_665
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
	jne	.label_685
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x25], 1
	je	.label_687
.label_685:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5c]
	jg	.label_687
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
	jne	.label_698
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x26], 1
	je	.label_699
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_643
.label_699:
	jmp	.label_698
.label_698:
	jmp	.label_687
.label_687:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_664
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x16], 1
	je	.label_664
	mov	rdi, qword ptr [rbp - 0x20]
	call	unlink
	cmp	eax, 0
	je	.label_710
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_424
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
	jmp	.label_662
.label_710:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x2e], 1
	je	.label_720
	movabs	rdi, OFFSET FLAT:label_450
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
.label_720:
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x21], 1
	je	.label_642
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
	jne	.label_660
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_662
.label_660:
	jmp	.label_642
.label_642:
	jmp	.label_664
.label_664:
	jmp	.label_665
.label_665:
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	je	.label_666
	jmp	.label_649
.label_649:
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
	jge	.label_652
	cmp	dword ptr [rbp - 0x60], 0x11
	jne	.label_652
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	jne	.label_652
	lea	rsi, [rbp - 0x228]
	mov	rdi, qword ptr [rbp - 0x20]
	call	lstat
	cmp	eax, 0
	jne	.label_657
	mov	eax, dword ptr [rbp - 0x210]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_657
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x30], 1
	je	.label_692
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
	jmp	.label_695
.label_692:
	movabs	rdi, OFFSET FLAT:label_703
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
	jmp	.label_662
.label_695:
	jmp	.label_657
.label_657:
	jmp	.label_652
.label_652:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_709
	cmp	dword ptr [rbp - 0x60], 0x15
	jne	.label_709
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_709
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rdi + rax]
	cmp	ecx, 0x2f
	jne	.label_709
	mov	dword ptr [rbp - 0x60], 0x14
.label_709:
	jmp	.label_635
.label_666:
	mov	dword ptr [rbp - 0x30], 0
.label_635:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_640
	cmp	dword ptr [rbp - 0x60], 2
	jne	.label_641
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	jne	.label_641
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	jne	.label_641
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_649
.label_641:
	movabs	rdi, OFFSET FLAT:label_653
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
	jmp	.label_662
.label_640:
	lea	rsi, [rbp - 0xf8]
	mov	edi, dword ptr [rbp - 0x5c]
	call	fstat
	cmp	eax, 0
	je	.label_675
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_677
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
	jmp	.label_643
.label_675:
	test	byte ptr [rbp - 0x18a], 1
	je	.label_688
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_688
	mov	edi, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0x64]
	call	clone_file
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x229], cl
	test	byte ptr [rbp - 0x229], 1
	jne	.label_694
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_700
.label_694:
	test	byte ptr [rbp - 0x229], 1
	jne	.label_702
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_705
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
	jmp	.label_643
.label_702:
	mov	byte ptr [rbp - 0x18a], 0
.label_700:
	jmp	.label_688
.label_688:
	test	byte ptr [rbp - 0x18a], 1
	je	.label_650
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
	jge	.label_659
	movabs	rax, 0x2000000000000000
	cmp	qword ptr [rbp - 0xc0], rax
	ja	.label_659
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x360], rax
	jmp	.label_663
.label_659:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x360], rcx
	jmp	.label_663
.label_663:
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
	jne	.label_682
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_691
	mov	byte ptr [rbp - 0x249], 1
.label_691:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0xc], 2
	jne	.label_697
	test	byte ptr [rbp - 0x24a], 1
	je	.label_697
	mov	byte ptr [rbp - 0x249], 1
.label_697:
	jmp	.label_682
.label_682:
	test	byte ptr [rbp - 0x249], 1
	jne	.label_661
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
	jne	.label_711
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_711
	mov	rax, qword ptr [rbp - 0x158]
	add	rax, 1
	mov	qword ptr [rbp - 0x240], rax
.label_711:
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
	je	.label_722
	mov	rax, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rbp - 0x240]
	jae	.label_680
.label_722:
	mov	rax, qword ptr [rbp - 0x260]
	mov	qword ptr [rbp - 0x240], rax
.label_680:
	jmp	.label_661
.label_661:
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
	je	.label_669
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
	je	.label_719
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x3a4], ecx
	jmp	.label_646
.label_719:
	mov	eax, 1
	mov	dword ptr [rbp - 0x3a4], eax
	jmp	.label_646
.label_646:
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
	jne	.label_712
	jmp	.label_634
.label_712:
	jmp	.label_696
.label_634:
	test	byte ptr [rbp - 0x261], 1
	jne	.label_714
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_643
.label_714:
	jmp	.label_669
.label_669:
	mov	edi, dword ptr [rbp - 0x64]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x240]
	test	byte ptr [rbp - 0x249], 1
	mov	dword ptr [rbp - 0x3c4], edi
	mov	dword ptr [rbp - 0x3c8], esi
	mov	qword ptr [rbp - 0x3d0], rdx
	mov	qword ptr [rbp - 0x3d8], rcx
	je	.label_686
	mov	rax, qword ptr [rbp - 0x248]
	mov	qword ptr [rbp - 0x3e0], rax
	jmp	.label_637
.label_686:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x3e0], rcx
	jmp	.label_637
.label_637:
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
	jne	.label_671
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_643
.label_671:
	test	byte ptr [rbp - 0x271], 1
	je	.label_639
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x270]
	call	ftruncate
	cmp	eax, 0
	jge	.label_639
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_689
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
	jmp	.label_643
.label_639:
	jmp	.label_713
.label_713:
	jmp	.label_650
.label_650:
	jmp	.label_696
.label_696:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1f], 1
	je	.label_667
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
	je	.label_683
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_435
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
	je	.label_673
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_643
.label_673:
	jmp	.label_683
.label_683:
	jmp	.label_667
.label_667:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x1d], 1
	je	.label_633
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x1c]
	cmp	ecx, dword ptr [rbp - 0xdc]
	jne	.label_655
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x20]
	cmp	ecx, dword ptr [rbp - 0xd8]
	je	.label_633
.label_655:
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
	je	.label_672
	jmp	.label_676
.label_676:
	mov	eax, dword ptr [rbp - 0x40c]
	test	eax, eax
	je	.label_678
	jmp	.label_681
.label_672:
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_643
.label_678:
	mov	eax, dword ptr [rbp - 0x68]
	and	eax, 0xfffff1ff
	mov	dword ptr [rbp - 0x68], eax
.label_681:
	jmp	.label_633
.label_633:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x27], 1
	je	.label_684
	mov	byte ptr [rbp - 0x2c1], 0
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0x80
	cmp	eax, 0
	jne	.label_670
	call	geteuid
	cmp	eax, 0
	je	.label_670
	mov	edx, 0x180
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	call	fchmod_or_lchmod
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2c1], cl
.label_670:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	r8, qword ptr [rbp - 0x28]
	call	copy_attr
	test	al, 1
	jne	.label_701
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x28], 1
	je	.label_701
	mov	byte ptr [rbp - 0x189], 0
.label_701:
	test	byte ptr [rbp - 0x2c1], 1
	je	.label_708
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, dword ptr [rbp - 0x30]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	edx, eax
	call	fchmod_or_lchmod
	mov	dword ptr [rbp - 0x414], eax
.label_708:
	jmp	.label_684
.label_684:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x40]
	call	set_author
	mov	rdx, qword ptr [rbp - 0x28]
	test	byte ptr [rdx + 0x1e], 1
	jne	.label_715
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x18], 1
	je	.label_716
.label_715:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	r8d, dword ptr [rbp - 0x68]
	call	copy_acl
	cmp	eax, 0
	je	.label_721
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x24], 1
	je	.label_721
	mov	byte ptr [rbp - 0x189], 0
.label_721:
	jmp	.label_636
.label_716:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x2b], 1
	je	.label_638
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax + 0x10]
	call	set_acl
	cmp	eax, 0
	je	.label_690
	mov	byte ptr [rbp - 0x189], 0
.label_690:
	jmp	.label_648
.label_638:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x20], 1
	je	.label_654
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax], 1
	je	.label_654
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
	je	.label_706
	mov	byte ptr [rbp - 0x189], 0
.label_706:
	jmp	.label_645
.label_654:
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_674
	call	cached_umask
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_668
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x2c]
	call	fchmod_or_lchmod
	cmp	eax, 0
	je	.label_668
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_547
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
	je	.label_693
	mov	byte ptr [rbp - 0x189], 0
.label_693:
	jmp	.label_668
.label_668:
	jmp	.label_674
.label_674:
	jmp	.label_645
.label_645:
	jmp	.label_648
.label_648:
	jmp	.label_636
.label_636:
	jmp	.label_643
.label_643:
	mov	edi, dword ptr [rbp - 0x5c]
	call	close
	cmp	eax, 0
	jge	.label_704
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_679
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
.label_704:
	jmp	.label_662
.label_662:
	mov	edi, dword ptr [rbp - 0x64]
	call	close
	cmp	eax, 0
	jge	.label_717
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_679
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
.label_717:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	mov	al, byte ptr [rbp - 0x189]
	and	al, 1
	mov	byte ptr [rbp - 9], al
.label_658:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x4d8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a460

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
	je	.label_723
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_724
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_723:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4b0

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
	je	.label_725
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_725
	mov	dword ptr [rbp - 0x14], 0
.label_725:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a500

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
	jne	.label_726
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_738
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x18], 1
	jne	.label_738
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x2b], 1
	je	.label_726
.label_738:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x1e], 1
	jne	.label_743
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x18], 1
	je	.label_728
.label_743:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_731
.label_728:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x60], ecx
.label_731:
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
	je	.label_735
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	edx, dword ptr [rbp - 0x4c]
	call	qset_acl
	cmp	eax, 0
	je	.label_735
	mov	rdi, qword ptr [rbp - 0x10]
	call	owner_failure_ok
	test	al, 1
	jne	.label_730
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_733
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
.label_730:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + 0x24]
	and	dl, 1
	movzx	esi, dl
	sub	eax, esi
	mov	dword ptr [rbp - 4], eax
	jmp	.label_727
.label_735:
	jmp	.label_726
.label_726:
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_744
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	call	fchown
	cmp	eax, 0
	jne	.label_729
	mov	dword ptr [rbp - 4], 1
	jmp	.label_727
.label_729:
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_740
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_736
.label_740:
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
.label_736:
	jmp	.label_741
.label_744:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	call	lchown
	cmp	eax, 0
	jne	.label_742
	mov	dword ptr [rbp - 4], 1
	jmp	.label_727
.label_742:
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_732
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_734
.label_732:
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
.label_734:
	jmp	.label_741
.label_741:
	mov	rdi, qword ptr [rbp - 0x10]
	call	chown_failure_ok
	test	al, 1
	jne	.label_739
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_221
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
	je	.label_737
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_727
.label_737:
	jmp	.label_739
.label_739:
	mov	dword ptr [rbp - 4], 0
.label_727:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a7f0

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
	#Procedure 0x40a810

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
	#Procedure 0x40a830

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
	je	.label_745
	call	can_write_any_file
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0xd], cl
	jne	.label_745
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 8]
	call	euidaccess
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0xd], cl
.label_745:
	mov	al, byte ptr [rbp - 0xd]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a890

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
	#Procedure 0x40a8c0

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
	jge	.label_746
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_746
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_748
.label_746:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_748
.label_748:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x20000
	mov	edx, ecx
	cmp	rdx, rax
	jle	.label_751
	mov	eax, 0x20000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_749
.label_751:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x38]
	jge	.label_750
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_750
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_747
.label_750:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_747
.label_747:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_749:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a990

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
	jne	.label_752
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
.label_752:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a9f0

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
	#Procedure 0x40aa40

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
.label_766:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_read
	and	al, 1
	mov	byte ptr [rbp - 0xb2], al
	test	byte ptr [rbp - 0xb2], 1
	jne	.label_791
	test	byte ptr [rbp - 0x77], 1
	je	.label_793
	jmp	.label_794
.label_793:
	test	byte ptr [rbp - 0x78], 1
	je	.label_795
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_753
.label_795:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_777
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
	jmp	.label_753
.label_791:
	mov	byte ptr [rbp - 0xb3], 0
	mov	dword ptr [rbp - 0xb8], 0
.label_774:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0xb8]
	mov	edx, ecx
	cmp	rdx, qword ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0xf1], al
	jb	.label_758
	mov	al, byte ptr [rbp - 0xb3]
	mov	byte ptr [rbp - 0xf1], al
.label_758:
	mov	al, byte ptr [rbp - 0xf1]
	test	al, 1
	jne	.label_781
	jmp	.label_759
.label_781:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x80]
	jae	.label_785
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
	jmp	.label_786
.label_785:
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
.label_786:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0xc0]
	add	rcx, qword ptr [rbp - 0xc8]
	cmp	rax, rcx
	jge	.label_763
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xc0]
	jge	.label_768
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_768:
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rax
.label_763:
	mov	rax, qword ptr [rbp - 0xc0]
	sub	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xd0], rax
	mov	byte ptr [rbp - 0xb1], 0
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_783
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc0]
	call	lseek
	cmp	rax, 0
	jge	.label_787
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_790
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
.label_770:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_free
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_753
.label_787:
	test	byte ptr [rbp - 0xb3], 1
	je	.label_762
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_764
.label_762:
	test	byte ptr [rbp - 0xb3], 1
	jne	.label_765
	cmp	dword ptr [rbp - 0x4c], 1
	je	.label_765
.label_764:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x60]
	cmp	dword ptr [rbp - 0x4c], 3
	sete	al
	mov	rcx, qword ptr [rbp - 0xd0]
	and	al, 1
	movzx	edx, al
	call	create_hole
	test	al, 1
	jne	.label_776
	jmp	.label_770
.label_776:
	mov	byte ptr [rbp - 0xb1], 1
	jmp	.label_778
.label_765:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd8], rax
	test	byte ptr [rbp - 0xb3], 1
	je	.label_780
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xd0]
	jge	.label_784
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_788
.label_784:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x108], rax
.label_788:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0xd8], rax
.label_780:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	write_zeros
	test	al, 1
	jne	.label_761
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_757
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
	jmp	.label_770
.label_761:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xc0]
	jge	.label_771
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_773
.label_771:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x120], rax
.label_773:
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0xb0], rax
.label_778:
	jmp	.label_783
.label_783:
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
	jne	.label_782
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x140], rax
	jmp	.label_754
.label_782:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	jmp	.label_754
.label_754:
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
	jne	.label_789
	jmp	.label_770
.label_789:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xe0], 0
	je	.label_760
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	mov	byte ptr [rbp - 0xb1], al
.label_760:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_756
	mov	byte ptr [rbp - 0x77], 1
	jmp	.label_759
.label_756:
	jmp	.label_792
.label_792:
	mov	eax, dword ptr [rbp - 0xb8]
	add	eax, 1
	mov	dword ptr [rbp - 0xb8], eax
	jmp	.label_774
.label_759:
	lea	rdi, [rbp - 0x98]
	call	extent_scan_free
	mov	al, byte ptr [rbp - 0x77]
	xor	al, 0xff
	test	al, 1
	jne	.label_766
.label_794:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jl	.label_769
	test	byte ptr [rbp - 0xb1], 1
	je	.label_772
.label_769:
	cmp	dword ptr [rbp - 0x4c], 1
	je	.label_775
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x48]
	call	ftruncate
	cmp	eax, 0
	jne	.label_779
	jmp	.label_772
.label_775:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	rsi, rax
	call	write_zeros
	test	al, 1
	jne	.label_772
.label_779:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_689
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
	jmp	.label_753
.label_772:
	cmp	dword ptr [rbp - 0x4c], 3
	jne	.label_755
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_755
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	call	punch_hole
	cmp	eax, 0
	jge	.label_755
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_767
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
	jmp	.label_753
.label_755:
	mov	byte ptr [rbp - 0x19], 1
.label_753:
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
	#Procedure 0x40b1c0

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
.label_806:
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_812
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0xa8], edi
	mov	qword ptr [rbp - 0xb0], rsi
	jae	.label_815
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_831
.label_815:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb8], rax
.label_831:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	edi, dword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jge	.label_804
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_811
	jmp	.label_806
.label_811:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_818
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
	jmp	.label_797
.label_804:
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_802
	jmp	.label_812
.label_802:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_809
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_822
.label_809:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd0], rax
.label_822:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa0], rax
.label_830:
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_824
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	byte ptr [rbp - 0xa1], al
	mov	rcx, qword ptr [rbp - 0x90]
	cmp	rcx, qword ptr [rbp - 0x88]
	jae	.label_808
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_816
.label_808:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xd8], rax
.label_816:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_826
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_826
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x90]
	call	is_nul
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
.label_826:
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
	je	.label_807
	cmp	qword ptr [rbp - 0x80], 0
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_807:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	mov	byte ptr [rbp - 0xa2], al
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rcx, qword ptr [rbp - 0x90]
	jne	.label_823
	mov	al, 1
	test	byte ptr [rbp - 0x71], 1
	mov	byte ptr [rbp - 0xda], al
	je	.label_827
.label_823:
	cmp	qword ptr [rbp - 0x90], 0
	setne	al
	xor	al, 0xff
	mov	byte ptr [rbp - 0xda], al
.label_827:
	mov	al, byte ptr [rbp - 0xda]
	and	al, 1
	mov	byte ptr [rbp - 0xa3], al
	test	byte ptr [rbp - 0xa2], 1
	jne	.label_805
	test	byte ptr [rbp - 0xa3], 1
	je	.label_814
.label_805:
	test	byte ptr [rbp - 0xa2], 1
	jne	.label_796
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_796:
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_825
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x80]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x80]
	je	.label_829
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_800
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
	jmp	.label_797
.label_829:
	jmp	.label_798
.label_825:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x80]
	and	al, 1
	movzx	edx, al
	call	create_hole
	test	al, 1
	jne	.label_820
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_797
.label_820:
	jmp	.label_798
.label_798:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x80], rax
	test	byte ptr [rbp - 0xa3], 1
	je	.label_801
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_813
	mov	qword ptr [rbp - 0x88], 0
.label_813:
	test	byte ptr [rbp - 0xa2], 1
	je	.label_821
	mov	qword ptr [rbp - 0x90], 0
	jmp	.label_819
.label_821:
	mov	qword ptr [rbp - 0x80], 0
.label_819:
	jmp	.label_801
.label_801:
	jmp	.label_799
.label_814:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rbp - 0x90]
	cmp	rcx, rax
	ja	.label_828
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_803
.label_828:
	movabs	rdi, OFFSET FLAT:label_810
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
	jmp	.label_797
.label_803:
	jmp	.label_799
.label_799:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x88], rcx
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_830
.label_824:
	mov	al, byte ptr [rbp - 0x71]
	mov	rcx, qword ptr [rbp - 0x70]
	and	al, 1
	mov	byte ptr [rcx], al
	jmp	.label_806
.label_812:
	test	byte ptr [rbp - 0x71], 1
	je	.label_817
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 0x80]
	and	al, 1
	movzx	edx, al
	call	create_hole
	test	al, 1
	jne	.label_817
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_797
.label_817:
	mov	byte ptr [rbp - 0x19], 1
.label_797:
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
	#Procedure 0x40b710

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
	jg	.label_832
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x14]
	call	fchmod
	mov	dword ptr [rbp - 4], eax
	jmp	.label_833
.label_832:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	chmod
	mov	dword ptr [rbp - 4], eax
.label_833:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b760

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
	#Procedure 0x40b7a0

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
	jge	.label_835
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_790
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
	jmp	.label_836
.label_835:
	test	byte ptr [rbp - 0x11], 1
	je	.label_834
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	punch_hole
	cmp	eax, 0
	jge	.label_834
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_767
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
	jmp	.label_836
.label_834:
	mov	byte ptr [rbp - 1], 1
.label_836:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b8b0

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	jne	.label_841
	mov	eax, 1
	mov	esi, eax
	mov	rdi,  qword ptr [word ptr [write_zeros.nz]]
	call	calloc
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	jne	.label_838
	movabs	rax, OFFSET FLAT:write_zeros.fallback
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	mov	qword ptr [word ptr [write_zeros.nz]],  0x400
.label_838:
	jmp	.label_841
.label_841:
	jmp	.label_839
.label_839:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_837
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_840
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_844
.label_840:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_844:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [write_zeros.zeros]]
	mov	rdx, qword ptr [rbp - 0x18]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_842
	mov	byte ptr [rbp - 1], 0
	jmp	.label_843
.label_842:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_839
.label_837:
	mov	byte ptr [rbp - 1], 1
.label_843:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b9b0

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
	jge	.label_845
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	is_ENOTSUP
	test	al, 1
	jne	.label_846
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_845
.label_846:
	mov	dword ptr [rbp - 0x1c], 0
.label_845:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba20

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_847
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 5], cl
	jmp	.label_847
.label_847:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba50

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
	jne	.label_853
	mov	byte ptr [rbp - 1], 1
	jmp	.label_852
.label_853:
	jmp	.label_855
.label_855:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0
	cmp	rax, 0
	je	.label_848
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_854
	mov	byte ptr [rbp - 1], 0
	jmp	.label_852
.label_854:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_851
	mov	byte ptr [rbp - 1], 1
	jmp	.label_852
.label_851:
	jmp	.label_855
.label_848:
	jmp	.label_856
.label_856:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
	cmp	byte ptr [rbp - 0x21], 0
	je	.label_858
	mov	byte ptr [rbp - 1], 0
	jmp	.label_852
.label_858:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_849
	mov	byte ptr [rbp - 1], 1
	jmp	.label_852
.label_849:
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0xf
	cmp	rax, 0
	jne	.label_850
	jmp	.label_857
.label_850:
	jmp	.label_856
.label_857:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_852:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb70

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_859
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	mov	byte ptr [rbp - 9], dl
	jne	.label_860
.label_859:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x1b]
	xor	cl, 0xff
	mov	byte ptr [rbp - 9], cl
.label_860:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bbc0

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
	je	.label_861
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	src_to_dest_free
.label_861:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc20

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
	#Procedure 0x40bc50

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
	je	.label_863
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_862
.label_863:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_862
.label_862:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bcc0

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
	jne	.label_865
	call	xalloc_die
.label_865:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_864
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	src_to_dest_free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_866
.label_864:
	mov	qword ptr [rbp - 8], 0
.label_866:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd80

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
	jne	.label_867
	call	xalloc_die
.label_867:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bdd0

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
	#Procedure 0x40be00

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
	jne	.label_868
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	sete	dl
	mov	byte ptr [rbp - 0x21], dl
.label_868:
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
	#Procedure 0x40be70
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
	#Procedure 0x40be90

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
	#Procedure 0x40bf00

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
	#Procedure 0x40bf10

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
.label_886:
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
	jge	.label_890
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_895
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x20], 1
.label_895:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_869
.label_890:
	mov	rax, qword ptr [rbp - 0x1028]
	cmp	dword ptr [rax + 0x14], 0
	jne	.label_872
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x21], 1
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_869
.label_872:
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x1028]
	mov	esi, dword ptr [rdx + 0x14]
	mov	edx, esi
	sub	rax, rdx
	cmp	rcx, rax
	ja	.label_885
	jmp	.label_891
.label_885:
	movabs	rdi, OFFSET FLAT:label_892
	movabs	rsi, OFFSET FLAT:label_893
	mov	edx, 0x7e
	movabs	rcx, OFFSET FLAT:label_894
	call	__assert_fail
.label_891:
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
.label_880:
	mov	eax, dword ptr [rbp - 0x103c]
	mov	rcx, qword ptr [rbp - 0x1028]
	cmp	eax, dword ptr [rcx + 0x14]
	jae	.label_876
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
	ja	.label_884
	jmp	.label_897
.label_884:
	movabs	rdi, OFFSET FLAT:label_898
	movabs	rsi, OFFSET FLAT:label_893
	mov	edx, 0x8d
	movabs	rcx, OFFSET FLAT:label_894
	call	__assert_fail
.label_897:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_877
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	eax, edx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x1030]
	mov	edx, dword ptr [rax + 0x28]
	and	edx, 0xfffffffe
	cmp	ecx, edx
	jne	.label_877
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	ecx, edx
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rcx]
	jne	.label_877
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
	jmp	.label_874
.label_877:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_871
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rbp - 0x103c]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rdx]
	ja	.label_888
.label_871:
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_896
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x103c]
	mov	ecx, edx
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1030]
	cmp	rax, qword ptr [rcx]
	jbe	.label_896
.label_888:
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_881
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x1048], rax
	jmp	.label_883
.label_881:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x1048], rax
.label_883:
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
	jae	.label_889
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_879
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x20], 1
.label_879:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_869
.label_889:
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
	jmp	.label_873
.label_896:
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
	jmp	.label_874
.label_874:
	jmp	.label_873
.label_873:
	mov	eax, dword ptr [rbp - 0x103c]
	add	eax, 1
	mov	dword ptr [rbp - 0x103c], eax
	jmp	.label_880
.label_876:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	and	ecx, 1
	cmp	ecx, 0
	je	.label_875
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x21], 1
.label_875:
	cmp	dword ptr [rbp - 0x14], 0x48
	jbe	.label_887
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x21], 1
	jne	.label_887
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
.label_887:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + 0x21], 1
	je	.label_870
	jmp	.label_878
.label_870:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	cmp	dword ptr [rbp - 0x14], 0x48
	jb	.label_882
	jmp	.label_878
.label_882:
	jmp	.label_886
.label_878:
	mov	byte ptr [rbp - 1], 1
.label_869:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x1060
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c4f0

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
	jge	.label_902
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	call	linkat
	cmp	eax, 0
	jne	.label_909
	xor	eax, eax
	mov	dword ptr [rbp - 0x158], eax
	jmp	.label_900
.label_909:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x158], ecx
.label_900:
	mov	eax, dword ptr [rbp - 0x158]
	mov	dword ptr [rbp - 0x2c], eax
.label_902:
	test	byte ptr [rbp - 0x25], 1
	je	.label_905
	cmp	dword ptr [rbp - 0x2c], 0x11
	je	.label_908
.label_905:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_907
.label_908:
	lea	rsi, [rbp - 0x130]
	mov	rdi, qword ptr [rbp - 0x20]
	call	samedir_template
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	jne	.label_904
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_907
.label_904:
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
	je	.label_901
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x154], ecx
	jmp	.label_903
.label_901:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	jne	.label_910
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x15c], eax
	jmp	.label_899
.label_910:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x15c], ecx
.label_899:
	mov	eax, dword ptr [rbp - 0x15c]
	xor	edx, edx
	mov	dword ptr [rbp - 0x154], eax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	mov	dword ptr [rbp - 0x160], eax
.label_903:
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, rax
	je	.label_906
	mov	rdi, qword ptr [rbp - 0x138]
	call	free
.label_906:
	mov	eax, dword ptr [rbp - 0x154]
	mov	dword ptr [rbp - 4], eax
.label_907:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c6c0

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
	ja	.label_914
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_911
.label_914:
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_913
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_912
.label_913:
	jmp	.label_911
.label_911:
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
.label_912:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c770

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
	#Procedure 0x40c7c0

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
	jge	.label_915
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	call	symlinkat
	cmp	eax, 0
	jne	.label_926
	xor	eax, eax
	mov	dword ptr [rbp - 0x150], eax
	jmp	.label_916
.label_926:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x150], ecx
.label_916:
	mov	eax, dword ptr [rbp - 0x150]
	mov	dword ptr [rbp - 0x28], eax
.label_915:
	test	byte ptr [rbp - 0x21], 1
	je	.label_923
	cmp	dword ptr [rbp - 0x28], 0x11
	je	.label_924
.label_923:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_921
.label_924:
	lea	rsi, [rbp - 0x130]
	mov	rdi, qword ptr [rbp - 0x20]
	call	samedir_template
	mov	qword ptr [rbp - 0x138], rax
	cmp	qword ptr [rbp - 0x138], 0
	jne	.label_917
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_921
.label_917:
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
	je	.label_925
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], ecx
	jmp	.label_920
.label_925:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	cmp	eax, 0
	je	.label_922
	call	__errno_location
	xor	edx, edx
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14c], ecx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x138]
	call	unlinkat
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_918
.label_922:
	mov	dword ptr [rbp - 0x14c], 0xffffffff
.label_918:
	jmp	.label_920
.label_920:
	lea	rax, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, rax
	je	.label_919
	mov	rdi, qword ptr [rbp - 0x138]
	call	free
.label_919:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 4], eax
.label_921:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c960

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
	#Procedure 0x40c9a0

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
	je	.label_931
	jmp	.label_927
.label_927:
	mov	eax, dword ptr [rbp - 0x28]
	sub	eax, -1
	mov	dword ptr [rbp - 0x30], eax
	je	.label_928
	jmp	.label_932
.label_931:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x34], esi
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_930
	mov	esi, dword ptr [rbp - 0x34]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_929
.label_928:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_547
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
	jmp	.label_929
.label_932:
	jmp	.label_929
.label_929:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ca80

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
	je	.label_933
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_167
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
.label_933:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40caf0

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
	jae	.label_943
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_944
.label_943:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
.label_944:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_936
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_937
.label_936:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_937:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x38], rax
.label_939:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_945
	mov	qword ptr [rbp - 8], 0
	jmp	.label_935
.label_945:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	call	readlink
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_934
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_934
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
	jmp	.label_935
.label_934:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_946
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_935
.label_946:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	movabs	rdi, 0x3fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_942
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_938
.label_942:
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_940
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_941
.label_940:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_935
.label_941:
	jmp	.label_938
.label_938:
	jmp	.label_939
.label_935:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ccb0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x40ccc0

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
.label_948:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_952
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_955
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_958
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_954
.label_958:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_950
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_953
.label_950:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_949
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
	je	.label_956
.label_949:
	mov	byte ptr [rbp - 0x41], 1
.label_956:
	jmp	.label_953
.label_953:
	jmp	.label_957
.label_957:
	jmp	.label_955
.label_955:
	jmp	.label_947
.label_947:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_948
.label_952:
	test	byte ptr [rbp - 0x41], 1
	je	.label_951
	mov	qword ptr [rbp - 8], -2
	jmp	.label_954
.label_951:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_954:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ce10

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
	jne	.label_959
	movabs	rdi, OFFSET FLAT:label_962
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_961
.label_959:
	movabs	rdi, OFFSET FLAT:label_960
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_961:
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
	#Procedure 0x40ceb0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_966
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
.label_971:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_969
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_964
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_967
.label_964:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_963
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
	jmp	.label_968
.label_967:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_970
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_968:
	jmp	.label_965
.label_965:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_971
.label_969:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d000

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
	jl	.label_973
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_972
.label_973:
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
.label_972:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d090
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
.label_975:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_974
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_976
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_978
.label_976:
	jmp	.label_977
.label_977:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_975
.label_974:
	mov	qword ptr [rbp - 8], 0
.label_978:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d130

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_979
	movabs	rdi, OFFSET FLAT:label_983
	call	getenv
	mov	qword ptr [rbp - 8], rax
.label_979:
	cmp	qword ptr [rbp - 8], 0
	je	.label_982
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_982
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	call	last_component
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi, rax
	jne	.label_982
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_981
.label_982:
	movabs	rax, OFFSET FLAT:label_980
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_981
.label_981:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [simple_backup_suffix]],  rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d1d0

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
	jne	.label_990
	xor	eax, eax
	mov	edi, eax
	call	set_simple_backup_suffix
.label_990:
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 9
	jae	.label_996
	mov	qword ptr [rbp - 0x40], 9
.label_996:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_985
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_988
.label_985:
	mov	qword ptr [rbp - 0x58], 0
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	mov	qword ptr [rbp - 0x68], 0
.label_984:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rdx, rax
	call	memcpy
	cmp	dword ptr [rbp - 0x1c], 1
	jne	.label_999
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	memcpy
	jmp	.label_987
.label_999:
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
	ja	.label_989
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_998]]
	jmp	rcx
.label_2266:
	jmp	.label_989
.label_2267:
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_997
	mov	dword ptr [rbp - 0x1c], 1
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	memcpy
.label_997:
	jmp	.label_1001
.label_1001:
	mov	edx, 0x7e
	lea	r8, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x5c]
	call	check_extension
	jmp	.label_989
.label_2268:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_988
.label_989:
	jmp	.label_987
.label_987:
	test	byte ptr [rbp - 0x1d], 1
	jne	.label_995
	jmp	.label_992
.label_995:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_1000
	mov	dword ptr [rbp - 0x5c], 0xffffff9c
	mov	qword ptr [rbp - 0x28], 0
.label_1000:
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
	jne	.label_991
	jmp	.label_992
.label_991:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x70], ecx
	cmp	dword ptr [rbp - 0x70], 0x11
	je	.label_993
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_994
	mov	rdi, qword ptr [rbp - 0x58]
	call	closedir
	mov	dword ptr [rbp - 0x88], eax
.label_994:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x8c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_988
.label_993:
	jmp	.label_984
.label_992:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_986
	mov	rdi, qword ptr [rbp - 0x58]
	call	closedir
	mov	dword ptr [rbp - 0x90], eax
.label_986:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_988:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d4c0

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
	je	.label_1011
	mov	rdi, qword ptr [rbp - 0x48]
	call	rewinddir
	jmp	.label_1014
.label_1011:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x68]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x72], cx
	mov	rdi, qword ptr [rbp - 0x68]
	mov	esi, OFFSET FLAT:label_393
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
	jne	.label_1004
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1004
	mov	dword ptr [rbp - 0x3c], 3
.label_1004:
	mov	rax, qword ptr [rbp - 0x68]
	mov	cx, word ptr [rbp - 0x72]
	mov	word ptr [rax], cx
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x70]
	mov	edx, OFFSET FLAT:label_1010
	mov	esi, edx
	mov	rdi, rax
	call	strcpy
	cmp	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0xc0], rax
	jne	.label_1016
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1018
.label_1016:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
.label_1014:
	jmp	.label_1007
.label_1007:
	mov	rdi, qword ptr [rbp - 0x48]
	call	readdir
	mov	qword ptr [rbp - 0x50], rax
	cmp	rax, 0
	je	.label_1022
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x70]
	add	rdi, 4
	cmp	rax, rdi
	jae	.label_1008
	jmp	.label_1007
.label_1008:
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
	je	.label_1017
	jmp	.label_1007
.label_1017:
	mov	eax, 0x31
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x13
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 2
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jg	.label_1021
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	jle	.label_1003
.label_1021:
	jmp	.label_1007
.label_1003:
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x89], dl
	mov	qword ptr [rbp - 0x98], 1
.label_1019:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	sub	edx, 0x30
	cmp	edx, 9
	ja	.label_1015
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
	jmp	.label_1019
.label_1015:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7e
	jne	.label_1012
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	byte ptr [rcx + rax + 1], 0
	jne	.label_1012
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jb	.label_1009
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_1012
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x20]
	add	rax, 2
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jle	.label_1009
.label_1012:
	jmp	.label_1007
.label_1009:
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
	jae	.label_1005
	movabs	rax, 0x3fffffffffffffff
	cmp	rax, qword ptr [rbp - 0xa0]
	jb	.label_1002
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
.label_1002:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0xa0]
	call	realloc
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_1020
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1018
.label_1020:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x18], rax
.label_1005:
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
.label_1013:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x39
	jne	.label_1006
	mov	rax, qword ptr [rbp - 0x88]
	mov	byte ptr [rax], 0x30
	jmp	.label_1013
.label_1006:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	add	cl, 1
	mov	byte ptr [rax], cl
	jmp	.label_1007
.label_1022:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], edx
.label_1018:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d980

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
	jae	.label_1029
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_1023
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_1027
	mov	rax, qword ptr [rbp - 0x28]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x42], cx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	edx, OFFSET FLAT:label_393
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
	jmp	.label_1025
.label_1027:
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
.label_1025:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jg	.label_1024
	cmp	qword ptr [rbp - 0x40], -1
	ja	.label_1024
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1028
.label_1024:
	mov	rax, -1
	mov	ecx, 0xe
	mov	edx, ecx
	cmp	qword ptr [rbp - 0x40], -1
	cmovl	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
.label_1028:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1023:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_1029:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1026
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	ja	.label_1030
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_1030:
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx + 1], 0
.label_1026:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db50

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
	#Procedure 0x40db80

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
	jne	.label_1031
	call	xalloc_die
.label_1031:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dbd0

	.globl get_version
	.type get_version, @function
get_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1032
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1034
.label_1032:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_1033
.label_1034:
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
.label_1033:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc50

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1035
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1035
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	get_version
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1037
.label_1035:
	movabs	rdi, OFFSET FLAT:label_1036
	call	getenv
	movabs	rdi, OFFSET FLAT:label_1038
	mov	rsi, rax
	call	get_version
	mov	dword ptr [rbp - 4], eax
.label_1037:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dcc0

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1039
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1041
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1043
.label_1041:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_1043
.label_1043:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1044
.label_1039:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1047
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_1050:
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rdx
	cmp	rdx, 0
	je	.label_1046
	jmp	.label_1042
.label_1042:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1050
.label_1046:
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
	ja	.label_1045
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1045
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1040
.label_1045:
	jmp	.label_1047
.label_1047:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1044:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1049
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1048
.label_1049:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
.label_1048:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 8], rax
.label_1040:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ddf0
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
	#Procedure 0x40de10

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
	jbe	.label_1057
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fseeko
	cmp	eax, 0
	jne	.label_1051
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1051
	mov	byte ptr [rbp - 1], 1
.label_1051:
	jmp	.label_1057
.label_1057:
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	close_stream
	cmp	eax, 0
	je	.label_1059
	mov	byte ptr [rbp - 1], 1
.label_1059:
	test	byte ptr [rbp - 1], 1
	je	.label_1052
	movabs	rdi, OFFSET FLAT:label_1054
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1056
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0x14], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_1053
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1058
.label_1056:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_930
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	error
.label_1058:
	jmp	.label_1052
.label_1052:
	call	close_stdout
	test	byte ptr [rbp - 1], 1
	je	.label_1055
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1055:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df40
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
	#Procedure 0x40df60
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
	#Procedure 0x40df80

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1063
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1065
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1063
.label_1065:
	movabs	rdi, OFFSET FLAT:label_1064
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name_0]],  0
	je	.label_1061
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name_0]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_1053
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1060
.label_1061:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_930
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1060:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1063:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1062
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1062:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e070

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
	jne	.label_1066
	call	xalloc_die
.label_1066:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0b0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1067
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1072
.label_1067:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_1072:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_1069:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1068
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_1070
	jmp	.label_1068
.label_1070:
	jmp	.label_1071
.label_1071:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1069
.label_1068:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e160

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
	je	.label_1073
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_1073
.label_1073:
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
	jne	.label_1075
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1074
.label_1075:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_1076
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_1076:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1074:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e230

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_1081:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1083
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1081
.label_1083:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1082:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_1078
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1084
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1077
.label_1084:
	test	byte ptr [rbp - 0x19], 1
	je	.label_1080
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_1080:
	jmp	.label_1077
.label_1077:
	jmp	.label_1079
.label_1079:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1082
.label_1078:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e2d0

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
.label_1088:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1085
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1085:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1086
	jmp	.label_1089
.label_1086:
	jmp	.label_1087
.label_1087:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1088
.label_1089:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e360

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
	jne	.label_1090
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_1090:
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
	#Procedure 0x40e3e0

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
	#Procedure 0x40e420
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1091
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
.label_1091:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e470

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
	je	.label_1092
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
.label_1092:
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
	je	.label_1093
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
	ja	.label_1094
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_1095
.label_1094:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_1095:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1093:
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
	#Procedure 0x40e670

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
	jne	.label_1096
	jmp	.label_1098
.label_1096:
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
	jne	.label_1097
	call	xalloc_die
.label_1097:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_1098
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	triple_free
.label_1098:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e720

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
	jne	.label_1099
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1100
.label_1099:
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
.label_1100:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e7a0

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
	je	.label_1104
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1103
.label_1104:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_1103:
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
	je	.label_1106
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_1105
.label_1106:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_1105:
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
	je	.label_1102
	mov	eax, 0x54
	mov	ecx, 0x74
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1101
.label_1102:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_1101:
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
	#Procedure 0x40e9a0

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	cmp	edi, 0x8000
	jne	.label_1107
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_1109
.label_1107:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_1110
	mov	byte ptr [rbp - 1], 0x64
	jmp	.label_1109
.label_1110:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_1108
	mov	byte ptr [rbp - 1], 0x62
	jmp	.label_1109
.label_1108:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1114
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_1109
.label_1114:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_1113
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_1109
.label_1113:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_1112
	mov	byte ptr [rbp - 1], 0x70
	jmp	.label_1109
.label_1112:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_1111
	mov	byte ptr [rbp - 1], 0x73
	jmp	.label_1109
.label_1111:
	mov	byte ptr [rbp - 1], 0x3f
.label_1109:
	movsx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea80
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
	je	.label_1115
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_1118
.label_1115:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1116
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x51
	jmp	.label_1120
.label_1116:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1117
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x53
	jmp	.label_1119
.label_1117:
	jmp	.label_1119
.label_1119:
	jmp	.label_1120
.label_1120:
	jmp	.label_1118
.label_1118:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eb20

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
	jne	.label_1121
	call	xalloc_die
.label_1121:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eb70

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
	je	.label_1127
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_1123
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_1123
	mov	byte ptr [rbp - 0x41], 0x2f
.label_1123:
	jmp	.label_1125
.label_1127:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1128
	mov	byte ptr [rbp - 0x41], 0x2e
.label_1128:
	jmp	.label_1125
.label_1125:
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
	jne	.label_1122
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1124
.label_1122:
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
	je	.label_1126
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1126:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_1124:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ecf0

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
.label_1131:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_1130
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1132
	jmp	.label_1130
.label_1132:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1129
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_1130
.label_1129:
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
	jmp	.label_1131
.label_1130:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eda0

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
	#Procedure 0x40edc0

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
	#Procedure 0x40ede0

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
	#Procedure 0x40ee00

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
.label_1139:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1134
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1137
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_1133:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1136
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1133
.label_1136:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1135
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1135:
	jmp	.label_1137
.label_1137:
	jmp	.label_1138
.label_1138:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1139
.label_1134:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eeb0
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
.label_1147:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1144
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1141
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1143:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1145
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1143
.label_1145:
	jmp	.label_1141
.label_1141:
	jmp	.label_1140
.label_1140:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1147
.label_1144:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_1142
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1142
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1146
.label_1142:
	mov	byte ptr [rbp - 1], 0
.label_1146:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40efa0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1148
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
	mov	ecx, OFFSET FLAT:label_1151
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:label_1149
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1152]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1153]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1154]]
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
	movabs	rsi, OFFSET FLAT:label_1150
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
	#Procedure 0x40f0c0

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
	jne	.label_1161
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1155
.label_1161:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1160:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1156
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1158
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1158
	jmp	.label_1157
.label_1158:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1155
.label_1157:
	jmp	.label_1159
.label_1159:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1160
.label_1156:
	mov	qword ptr [rbp - 8], 0
.label_1155:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f180

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
	jb	.label_1162
	call	abort
.label_1162:
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
	#Procedure 0x40f1f0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1163
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1164
.label_1163:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1165:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_1166
	call	abort
.label_1166:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1167
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1164
.label_1167:
	jmp	.label_1168
.label_1168:
	jmp	.label_1169
.label_1169:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1165
.label_1164:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f280
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
.label_1171:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1174
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1174
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1170
.label_1174:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1171
	jmp	.label_1172
.label_1172:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1175
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1173
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1170
.label_1173:
	jmp	.label_1172
.label_1175:
	mov	qword ptr [rbp - 8], 0
.label_1170:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f350
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
.label_1182:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1179
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1176
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1178:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1183
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1177
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1180
.label_1177:
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
	jmp	.label_1178
.label_1183:
	jmp	.label_1176
.label_1176:
	jmp	.label_1181
.label_1181:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1182
.label_1179:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1180:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f420
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
.label_1191:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1186
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1190
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1189:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1187
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_1185
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1188
.label_1185:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1189
.label_1187:
	jmp	.label_1190
.label_1190:
	jmp	.label_1184
.label_1184:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1191
.label_1186:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1188:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f4f0
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1193:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_1192
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
	jmp	.label_1193
.label_1192:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f550
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_1194]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_1195]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f580

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
	jne	.label_1196
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1196:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1202
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_1202:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1199
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1198
.label_1199:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1203
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1203:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_1200
	jmp	.label_1197
.label_1200:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1204
	jmp	.label_1197
.label_1204:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_1201
	jmp	.label_1197
.label_1201:
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
	jmp	.label_1198
.label_1197:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1198:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f720

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
	#Procedure 0x40f760

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
	#Procedure 0x40f780

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
	jne	.label_1205
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1208
.label_1205:
	movss	xmm0,  dword ptr [dword ptr [rip + label_1209]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1207
	movss	xmm0,  dword ptr [dword ptr [rip + label_1206]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1207
	movss	xmm0,  dword ptr [dword ptr [rip + label_1206]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_1207
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_1207
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1207
	movss	xmm0,  dword ptr [dword ptr [rip + label_1206]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1207
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1207
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1208
.label_1207:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1208:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f8b0

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
	jne	.label_1210
	movss	xmm0,  dword ptr [dword ptr [rip + label_1215]]
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
	js	.label_1216
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1216:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_1212
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1211
.label_1212:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1214]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_1210:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_1213
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1211
.label_1213:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1211:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f9d0
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
.label_1221:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1217
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1220
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1222:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1218
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1224
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1224:
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
	jmp	.label_1222
.label_1218:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1223
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1223:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1220:
	jmp	.label_1219
.label_1219:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1221
.label_1217:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40faf0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_1227
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_1227
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1226:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1236
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1229
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1234:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1228
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1234
.label_1228:
	jmp	.label_1229
.label_1229:
	jmp	.label_1238
.label_1238:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1226
.label_1236:
	jmp	.label_1227
.label_1227:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1237:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1232
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1233:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1225
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1233
.label_1225:
	jmp	.label_1235
.label_1235:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1237
.label_1232:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_1230:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1231
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1230
.label_1231:
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
	#Procedure 0x40fc70

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
	jne	.label_1240
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1244
.label_1240:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1245
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1244
.label_1245:
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
	jne	.label_1242
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1244
.label_1242:
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
	jne	.label_1241
	jmp	.label_1243
.label_1241:
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
	jmp	.label_1244
.label_1243:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1246
	jmp	.label_1247
.label_1246:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1239
.label_1247:
	call	abort
.label_1239:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_1244:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fe80

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
.label_1260:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1255
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1259
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1256:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1250
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
	je	.label_1258
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1251
.label_1258:
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
.label_1251:
	jmp	.label_1252
.label_1252:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1256
.label_1250:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_1257
	jmp	.label_1249
.label_1257:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1253
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1261
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1248
.label_1261:
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
	jmp	.label_1254
.label_1253:
	mov	rax, qword ptr [rbp - 0x40]
.label_2158:
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1254:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_1259:
	jmp	.label_1249
.label_1249:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1260
.label_1255:
	mov	byte ptr [rbp - 1], 1
.label_1248:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410060

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
	jne	.label_1274
	call	abort
.label_1274:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_1273
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1277
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1277:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1266
.label_1273:
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
	js	.label_1267
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1267:
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
	js	.label_1271
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1271:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1279
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
	js	.label_1272
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1272:
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
	js	.label_1280
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1280:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_1265
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_1276
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
	js	.label_1268
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1268:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1264
.label_1276:
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
	js	.label_1275
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1275:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1264:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1215]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_1269
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1266
.label_1269:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1214]]
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
	jne	.label_1263
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1266
.label_1263:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_1278
	call	abort
.label_1278:
	jmp	.label_1265
.label_1265:
	jmp	.label_1279
.label_1279:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1262
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1270
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1266
.label_1270:
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
	jmp	.label_1266
.label_1262:
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
.label_1266:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410500

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
	jne	.label_1293
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1283
.label_1293:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1287
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1287
	jmp	.label_1281
.label_1287:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1291
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1289
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
	jmp	.label_1288
.label_1289:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1288:
	jmp	.label_1291
.label_1291:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1283
.label_1281:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1292:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_1282
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_1286
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1286
	jmp	.label_1284
.label_1286:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1285
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
.label_1285:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1283
.label_1284:
	jmp	.label_1290
.label_1290:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1292
.label_1282:
	mov	qword ptr [rbp - 8], 0
.label_1283:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4106d0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1294
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1295
.label_1294:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_1295:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410730

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
	jne	.label_1296
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1299
.label_1296:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_1298
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1297
.label_1298:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1297:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1299:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4107a0

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
	jne	.label_1304
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1307
.label_1304:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1311
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
	js	.label_1301
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1301:
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
	js	.label_1310
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1310:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1314
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
	js	.label_1306
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1306:
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
	js	.label_1303
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1303:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_1313
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
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
	js	.label_1315
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1315:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1305
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
	js	.label_1312
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1312:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1305:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1214]]
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
	jne	.label_1308
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1302:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1300
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1302
.label_1300:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1308:
	jmp	.label_1313
.label_1313:
	jmp	.label_1314
.label_1314:
	jmp	.label_1311
.label_1311:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1307:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410ba0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1316
	mov	qword ptr [rbp - 8], 0xa
.label_1316:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1318:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_1320
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_1320:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_1317
	jmp	.label_1319
.label_1317:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1318
.label_1319:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c20

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
.label_1321:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1324
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1324:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1323
	jmp	.label_1322
.label_1323:
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
	jmp	.label_1321
.label_1322:
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
	#Procedure 0x410ce0

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
	#Procedure 0x410d20

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
	#Procedure 0x410d70

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
	#Procedure 0x410da0

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
	jne	.label_1325
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1325
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	byte ptr [rbp - 0x21], al
.label_1325:
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
	#Procedure 0x410e30
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
	jne	.label_1326
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1326
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x21], cl
.label_1326:
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
	#Procedure 0x410ed0

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
	#Procedure 0x410f00

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
	jge	.label_1329
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1327
.label_1329:
	mov	edi, dword ptr [rbp - 0x30]
	call	fdopendir
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1330
	mov	eax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1328
.label_1330:
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
.label_1328:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1327:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410fb0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1334
	movabs	rdi, OFFSET FLAT:label_1333
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1334:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1336
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1331
.label_1336:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1331:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1338
	movabs	rsi, OFFSET FLAT:label_1337
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1338
	movabs	rsi, OFFSET FLAT:label_1335
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1332
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_1332:
	jmp	.label_1338
.label_1338:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4110d0

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
	je	.label_1339
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1340
.label_1339:
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	call	set_permissions
	lea	rdi, [rbp - 0x30]
	mov	dword ptr [rbp - 0x34], eax
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
.label_1340:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411150

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
	#Procedure 0x4111b0
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
	je	.label_1341
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1342
.label_1341:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1342
.label_1342:
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
	#Procedure 0x411230
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1343
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1344
.label_1343:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1344
.label_1344:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411270
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
	je	.label_1345
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1346
.label_1345:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1346
.label_1346:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4112c0

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
	je	.label_1347
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1348
.label_1347:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1348
.label_1348:
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
	#Procedure 0x411370
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1349
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1349:
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
	#Procedure 0x4113b0

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
	jne	.label_1350
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1350:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1352
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1351
.label_1352:
	call	abort
.label_1351:
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
	#Procedure 0x411420
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
	je	.label_1353
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1354
.label_1353:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1354
.label_1354:
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
	#Procedure 0x4114f0

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
.label_1527:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1433
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1438]]
	jmp	rcx
.label_2146:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2145:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1446
	jmp	.label_1451
.label_1451:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1452
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1452:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1446
.label_1446:
	movabs	rax, OFFSET FLAT:label_1552
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1466
.label_2147:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1466
.label_2148:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1470
	movabs	rdi, OFFSET FLAT:label_1474
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_1477
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1470:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1485
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1505:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1489
	jmp	.label_1494
.label_1494:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1496
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1496:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1501
.label_1501:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1505
.label_1489:
	jmp	.label_1485
.label_1485:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1466
.label_2143:
	mov	byte ptr [rbp - 0x79], 1
.label_2142:
	mov	byte ptr [rbp - 0x7b], 1
.label_2144:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1514
	mov	byte ptr [rbp - 0x79], 1
.label_1514:
	jmp	.label_1455
.label_1455:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1516
	jmp	.label_1518
.label_1518:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1519
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1519:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1516
.label_1516:
	movabs	rax, OFFSET FLAT:label_1477
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1466
.label_2141:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1466
.label_1433:
	call	abort
.label_1466:
	mov	qword ptr [rbp - 0x58], 0
.label_1503:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1388
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1535
.label_1388:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_1535:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1544
	jmp	.label_1551
.label_1544:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_1375
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1375
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1375
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_1357
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1357
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1370
.label_1357:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1370:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_1375
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1375
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1382
	jmp	.label_1385
.label_1382:
	mov	byte ptr [rbp - 0x81], 1
.label_1375:
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
	ja	.label_1389
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1396]]
	jmp	rcx
.label_2076:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1399
	jmp	.label_1403
.label_1403:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1404
	jmp	.label_1385
.label_1404:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1411
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1411
	jmp	.label_1414
.label_1414:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1416
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1416:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1419
.label_1419:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1422
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1422:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1426
.label_1426:
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
.label_1411:
	jmp	.label_1439
.label_1439:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1441
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1441:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1448
.label_1448:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1454
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1454
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1454
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_1454
	jmp	.label_1467
.label_1467:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1397
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1397:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1476
.label_1476:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1480
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1480:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1454
.label_1454:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_1495
.label_1399:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_1498
	jmp	.label_1500
.label_1498:
	jmp	.label_1495
.label_1495:
	jmp	.label_1364
.label_2087:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_1502
	jmp	.label_1508
.label_1508:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_1509
	jmp	.label_1460
.label_1502:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1510
	jmp	.label_1385
.label_1510:
	jmp	.label_1387
.label_1509:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1384
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1384
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_1384
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_1481
	jmp	.label_1526
.label_1526:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_1481
	jmp	.label_1529
.label_1529:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_1481
	jmp	.label_1536
.label_1536:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1481
	jmp	.label_1540
.label_1540:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_1541
	jmp	.label_1481
.label_1481:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1546
	jmp	.label_1385
.label_1546:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1550
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1550:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1355
.label_1355:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1360
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1360:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1366
.label_1366:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1428
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1428:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1374
.label_1374:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1449
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_1449:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1380
.label_1541:
	jmp	.label_1380
.label_1380:
	jmp	.label_1384
.label_1384:
	jmp	.label_1387
.label_1460:
	jmp	.label_1387
.label_1387:
	jmp	.label_1364
.label_2077:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1390
.label_2078:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1390
.label_2082:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_1390
.label_2080:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_1394
.label_2083:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_1394
.label_2079:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1394
.label_2081:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1390
.label_2088:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1401
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1406
	jmp	.label_1385
.label_1406:
	jmp	.label_1381
.label_1401:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1409
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1409
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1409
	jmp	.label_1381
.label_1409:
	jmp	.label_1394
.label_1394:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1418
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1418
	jmp	.label_1385
.label_1418:
	jmp	.label_1390
.label_1390:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1423
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1405
.label_1423:
	jmp	.label_1364
.label_2089:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1429
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1425
	jmp	.label_1435
.label_1429:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1425
.label_1435:
	jmp	.label_1364
.label_1425:
	jmp	.label_1450
.label_1450:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1440
	jmp	.label_1364
.label_1440:
	jmp	.label_1443
.label_1443:
	mov	byte ptr [rbp - 0x83], 1
.label_2084:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1447
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1447
	jmp	.label_1385
.label_1447:
	jmp	.label_1364
.label_2086:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1456
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1547
	jmp	.label_1385
.label_1547:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1463
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1463
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1463:
	jmp	.label_1472
.label_1472:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1413
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1413:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1479
.label_1479:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1484
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1484:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1492
.label_1492:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1499
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1499:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1456:
	jmp	.label_1364
.label_2085:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1364
.label_1389:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1379
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
	jmp	.label_1436
.label_1379:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1523
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1523:
	jmp	.label_1432
.label_1432:
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
	jne	.label_1538
	jmp	.label_1372
.label_1538:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1543
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1372
.label_1543:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1493
	mov	byte ptr [rbp - 0x91], 0
.label_1367:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_1553
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1553:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1363
	jmp	.label_1365
.label_1363:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1367
.label_1365:
	jmp	.label_1372
.label_1493:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1373
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1373
	mov	qword ptr [rbp - 0xb8], 1
.label_1412:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1377
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
	jb	.label_1376
	jmp	.label_1392
.label_1392:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1376
	jmp	.label_1398
.label_1398:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_1376
	jmp	.label_1400
.label_1400:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1402
	jmp	.label_1376
.label_1376:
	jmp	.label_1385
.label_1402:
	jmp	.label_1482
.label_1482:
	jmp	.label_1491
.label_1491:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1412
.label_1377:
	jmp	.label_1373
.label_1373:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1420
	mov	byte ptr [rbp - 0x91], 0
.label_1420:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1554
.label_1554:
	jmp	.label_1378
.label_1378:
	jmp	.label_1427
.label_1427:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1432
.label_1372:
	jmp	.label_1436
.label_1436:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_1437
	test	byte ptr [rbp - 0x79], 1
	je	.label_1445
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1445
.label_1437:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1359:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1457
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1457
	jmp	.label_1461
.label_1461:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1462
	jmp	.label_1385
.label_1462:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1465
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1465
	jmp	.label_1471
.label_1471:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1473
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1473:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1478
.label_1478:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1483
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1483:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1490
.label_1490:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1497
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1497:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1465:
	jmp	.label_1504
.label_1504:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1506
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1506:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1395
.label_1395:
	jmp	.label_1511
.label_1511:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1513
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1513:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1517
.label_1517:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1521
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1521:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1524
.label_1457:
	test	byte ptr [rbp - 0x81], 1
	je	.label_1528
	jmp	.label_1530
.label_1530:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1533
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1533:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_1528:
	jmp	.label_1524
.label_1524:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1542
	jmp	.label_1545
.label_1542:
	jmp	.label_1548
.label_1548:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1512
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1512
	jmp	.label_1555
.label_1555:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1556
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1556:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1558
.label_1558:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1358
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1358:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1512:
	jmp	.label_1368
.label_1368:
	jmp	.label_1369
.label_1369:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1371
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1371:
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
	jmp	.label_1359
.label_1545:
	jmp	.label_1381
.label_1445:
	jmp	.label_1364
.label_1364:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1383
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1386
.label_1383:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1391
.label_1386:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1391
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
	jne	.label_1393
.label_1391:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_1393
	jmp	.label_1381
.label_1393:
	jmp	.label_1405
.label_1405:
	jmp	.label_1407
.label_1407:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1408
	jmp	.label_1385
.label_1408:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1410
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1410
	jmp	.label_1520
.label_1520:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1417
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1417:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1421
.label_1421:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1424
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1424:
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
.label_1410:
	jmp	.label_1442
.label_1442:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1444
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1444:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1453
.label_1453:
	jmp	.label_1381
.label_1381:
	jmp	.label_1532
.label_1532:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1459
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1459
	jmp	.label_1362
.label_1362:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1464
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1464:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1469
.label_1469:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1475
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1475:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1459:
	jmp	.label_1486
.label_1486:
	jmp	.label_1487
.label_1487:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1488
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_1488:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1522
	mov	byte ptr [rbp - 0x7e], 0
.label_1522:
	jmp	.label_1500
.label_1500:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1503
.label_1551:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1507
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1507
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1507
	jmp	.label_1385
.label_1507:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1415
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1415
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1415
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1515
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
	jmp	.label_1356
.label_1515:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1525
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_1525
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1527
.label_1525:
	jmp	.label_1531
.label_1531:
	jmp	.label_1415
.label_1415:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1534
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1534
	jmp	.label_1537
.label_1537:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1539
	jmp	.label_1468
.label_1468:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1458
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1458:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1549
.label_1549:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1537
.label_1539:
	jmp	.label_1534
.label_1534:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1557
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1557:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1356
.label_1385:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1361
	test	byte ptr [rbp - 0x79], 1
	je	.label_1361
	mov	dword ptr [rbp - 0x34], 4
.label_1361:
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
.label_1356:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412890
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
	#Procedure 0x4128d0

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
	je	.label_1559
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1560
.label_1559:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1560
.label_1560:
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
	je	.label_1561
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1561:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412a30
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1565:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1563
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1565
.label_1563:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_1566
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_1564]],  rax
.label_1566:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1562
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1562:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412b10

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
	#Procedure 0x412b50

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
	jge	.label_1572
	call	abort
.label_1572:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1570
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_1567
	call	xalloc_die
.label_1567:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1569
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1571
.label_1569:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1571:
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
	je	.label_1574
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1564]]
	mov	qword ptr [rax + 8], rcx
.label_1574:
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
.label_1570:
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
	ja	.label_1573
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_1568
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1568:
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
.label_1573:
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
	#Procedure 0x412dd0

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
	#Procedure 0x412e10
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
	#Procedure 0x412e30
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
	#Procedure 0x412e60

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
	#Procedure 0x412ea0

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
	jne	.label_1575
	call	abort
.label_1575:
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
	#Procedure 0x412f10

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
	#Procedure 0x412f50

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
	#Procedure 0x412f80
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
	#Procedure 0x412fb0

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
	#Procedure 0x413030

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
	#Procedure 0x413060

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
	#Procedure 0x413080
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
	#Procedure 0x4130b0

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
	#Procedure 0x413160

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
	#Procedure 0x4131a0

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
	#Procedure 0x413220
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
	#Procedure 0x413250
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
	#Procedure 0x413290

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
	#Procedure 0x4132d0
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
	#Procedure 0x413300

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
	#Procedure 0x413330

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
	#Procedure 0x413350

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
	je	.label_1577
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1582
.label_1577:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_1578
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1576
	movabs	rax, OFFSET FLAT:label_1580
	movabs	rcx, OFFSET FLAT:label_1581
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1582
.label_1576:
	movabs	rsi, OFFSET FLAT:label_1585
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1579
	movabs	rax, OFFSET FLAT:label_1583
	movabs	rcx, OFFSET FLAT:label_1584
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1582
.label_1579:
	movabs	rax, OFFSET FLAT:label_1477
	movabs	rcx, OFFSET FLAT:label_1552
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1582:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413450

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
	jge	.label_1587
	cmp	dword ptr [rbp - 0x2c], 0x16
	je	.label_1596
	cmp	dword ptr [rbp - 0x2c], 0x26
	je	.label_1596
	cmp	dword ptr [rbp - 0x2c], 0x5f
	je	.label_1596
.label_1587:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1589
.label_1596:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x58], 0x14
	mov	byte ptr [rbp - 0x179], 0
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_1586
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0xfffffffe
	cmp	eax, 0
	je	.label_1588
	mov	edi, 0x5f
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1589
.label_1588:
	lea	rdx, [rbp - 0x178]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	cmp	eax, 0
	je	.label_1598
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1600
.label_1598:
	mov	edi, 0x11
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1589
.label_1600:
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_1605
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1589
.label_1605:
	mov	byte ptr [rbp - 0x179], 1
	jmp	.label_1586
.label_1586:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1593
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1595
.label_1593:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1589
.label_1595:
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
	jne	.label_1591
	test	byte ptr [rbp - 0x52], 1
	jne	.label_1591
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	call	renameat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1589
.label_1591:
	lea	rdx, [rbp - 0xe8]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	lstatat
	cmp	eax, 0
	je	.label_1594
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1589
.label_1594:
	test	byte ptr [rbp - 0x179], 1
	je	.label_1606
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1609
	mov	edi, 2
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1589
.label_1609:
	jmp	.label_1592
.label_1606:
	lea	rdx, [rbp - 0x178]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x20]
	call	lstatat
	cmp	eax, 0
	je	.label_1597
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_1599
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1601
.label_1599:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1589
.label_1601:
	jmp	.label_1603
.label_1597:
	mov	eax, dword ptr [rbp - 0x160]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1608
	mov	edi, 0x14
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1589
.label_1608:
	mov	eax, dword ptr [rbp - 0xd0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1590
	mov	edi, 0x15
	call	errno_fail
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1589
.label_1590:
	jmp	.label_1602
.label_1602:
	jmp	.label_1603
.label_1603:
	jmp	.label_1592
.label_1592:
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
	je	.label_1607
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_1607:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_1604
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
.label_1604:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x180], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x180]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
.label_1589:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x180
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4137d0

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
	#Procedure 0x413800

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1615:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	write
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_1611
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1610
.label_1611:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_1613
	jmp	.label_1615
.label_1613:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1616
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_1616
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_1617
.label_1616:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1610
.label_1617:
	jmp	.label_1614
.label_1614:
	jmp	.label_1612
.label_1612:
	jmp	.label_1615
.label_1610:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4138b0

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
	#Procedure 0x4138f0

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
	jne	.label_1622
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x181], cl
.label_1622:
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0x42], al
	mov	byte ptr [rbp - 0x43], 0
	test	byte ptr [rbp - 0x42], 1
	je	.label_1621
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
	je	.label_1618
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_930
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	al, 0
	call	error
.label_1618:
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
	je	.label_1620
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_930
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	al, 0
	call	error
.label_1620:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rbp - 0x160]
	mov	byte ptr [rbp - 0x182], cl
	jne	.label_1619
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x168]
	sete	cl
	mov	byte ptr [rbp - 0x182], cl
.label_1619:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [rbp - 0x43], al
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
.label_1621:
	mov	al, byte ptr [rbp - 0x43]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413ac0

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
	jne	.label_1631
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1623
.label_1631:
	jmp	.label_1629
.label_1629:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	readdir
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1632
	jmp	.label_1641
.label_1632:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x13
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1636
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1642
.label_1636:
	mov	eax, 2
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x68]
	movsx	esi, byte ptr [rdx + 1]
	cmp	esi, 0x2e
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x94], eax
.label_1642:
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x68]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0
	je	.label_1628
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1633
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_1637
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
.label_1637:
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
	jmp	.label_1630
.label_1633:
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x70]
	ja	.label_1635
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1639
	call	xalloc_die
.label_1639:
	lea	rsi, [rbp - 0x80]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x28], rax
.label_1635:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	memcpy
.label_1630:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
.label_1628:
	jmp	.label_1629
.label_1641:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x4c], ecx
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1634
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
	jmp	.label_1623
.label_1634:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1627
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1638
	mov	eax, 0x10
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0xa0]
	call	qsort
.label_1638:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x88], 0
.label_1640:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1624
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
	jmp	.label_1640
.label_1624:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	jmp	.label_1625
.label_1627:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1626
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
.label_1626:
	jmp	.label_1625
.label_1625:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1623:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413e60

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
	jne	.label_1645
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1643
.label_1645:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	call	streamsavedir
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	cmp	eax, 0
	je	.label_1644
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
	jmp	.label_1643
.label_1644:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1643:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413f00

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
	#Procedure 0x413f40

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
	jae	.label_1646
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1647
.label_1646:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x24], esi
.label_1647:
	mov	eax, dword ptr [rbp - 0x24]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413fa0
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
	#Procedure 0x413fd0

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
	#Procedure 0x413fe0
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
	#Procedure 0x414010

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
	#Procedure 0x414040
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
	#Procedure 0x414070
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
	#Procedure 0x4140a0

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
	#Procedure 0x4140d0
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
	#Procedure 0x414100
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
	#Procedure 0x414130
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
	#Procedure 0x414160
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
	#Procedure 0x414190
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
	#Procedure 0x4141c0
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
	#Procedure 0x4141f0
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
	#Procedure 0x414220
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
	#Procedure 0x414260
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
	#Procedure 0x414290
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
	#Procedure 0x4142c0

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
	#Procedure 0x4142e0

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
	#Procedure 0x414300

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
	#Procedure 0x414320
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
	#Procedure 0x414330

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
	#Procedure 0x414350
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
	#Procedure 0x414370

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
	#Procedure 0x414390
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
	#Procedure 0x4143c0
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
	#Procedure 0x4143d0
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
	#Procedure 0x414400

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
	#Procedure 0x414430

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
	jb	.label_1657
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x14]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	check_x_suffix
	test	al, 1
	jne	.label_1654
.label_1657:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1651
.label_1654:
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
	jne	.label_1655
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1651
.label_1655:
	mov	dword ptr [rbp - 0x44], 0
.label_1660:
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x5c]
	jae	.label_1649
	mov	qword ptr [rbp - 0x68], 0
.label_1648:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1653
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
	jmp	.label_1648
.label_1653:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], 0
	jl	.label_1658
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x70], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x70]
	mov	dword ptr [rax], ecx
	jmp	.label_1650
.label_1658:
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	je	.label_1652
	mov	dword ptr [rbp - 0x48], 0xffffffff
	jmp	.label_1650
.label_1652:
	jmp	.label_1656
.label_1656:
	jmp	.label_1659
.label_1659:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1660
.label_1649:
	mov	rdi, qword ptr [rbp - 0x58]
	call	randint_all_free
	mov	dword ptr [rbp - 0x74], eax
	call	__errno_location
	mov	dword ptr [rax], 0x11
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1651
.label_1650:
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
.label_1651:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414630

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:label_1661
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
	#Procedure 0x414680

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
	je	.label_1662
	jmp	.label_1664
.label_1664:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x30], eax
	je	.label_1666
	jmp	.label_1671
.label_1671:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x34], eax
	je	.label_1663
	jmp	.label_1670
.label_1662:
	movabs	rax, OFFSET FLAT:try_file
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1665
.label_1666:
	movabs	rax, OFFSET FLAT:try_dir
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1665
.label_1663:
	movabs	rax, OFFSET FLAT:try_nocreate
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1665
.label_1670:
	movabs	rdi, OFFSET FLAT:label_1667
	movabs	rsi, OFFSET FLAT:label_1668
	mov	edx, 0x147
	movabs	rcx, OFFSET FLAT:label_1669
	call	__assert_fail
.label_1665:
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
	#Procedure 0x414760

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
	#Procedure 0x4147b0

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
	#Procedure 0x4147e0

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
	je	.label_1673
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1672
.label_1673:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_1672:
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
	#Procedure 0x414850
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
	#Procedure 0x414890
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
	#Procedure 0x4148d0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1674
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1674
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
.label_1674:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414930

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
	#Procedure 0x414970

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
	je	.label_1711
	mov	qword ptr [rbp - 0x48], 0
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1714
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	jne	.label_1714
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1680
.label_1714:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, 2
	cmp	rax, rcx
	jg	.label_1677
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1680
.label_1677:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 2
	cmp	rax, rcx
	jg	.label_1685
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1680
.label_1685:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	jne	.label_1689
	mov	eax, 0x10
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_info_hash
	movabs	rcx, OFFSET FLAT:dev_info_compare
	movabs	r8, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [word ptr [utimecmpat.ht]],  rax
.label_1689:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1695
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1699
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  rax
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1707
	jmp	.label_1690
.label_1707:
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1699:
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
	jne	.label_1679
	jmp	.label_1690
.label_1679:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	jne	.label_1686
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
.label_1686:
	jmp	.label_1678
.label_1695:
	jmp	.label_1690
.label_1690:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1691
	lea	rax, [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x48], rax
.label_1691:
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1694
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax, qword ptr [rbp - 0x48]
	mov	byte ptr [rax + 0xc], 0
.label_1694:
	jmp	.label_1678
.label_1678:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x5c], ecx
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0xc], 1
	jne	.label_1706
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
	je	.label_1675
	mov	dword ptr [rbp - 0x5c], 1
	jmp	.label_1702
.label_1675:
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
.label_1715:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rdx + 8]
	mov	byte ptr [rbp - 0x175], cl
	jge	.label_1684
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
.label_1684:
	mov	al, byte ptr [rbp - 0x175]
	test	al, 1
	jne	.label_1697
	jmp	.label_1700
.label_1697:
	cmp	dword ptr [rbp - 0x5c], 0x3b9aca00
	jne	.label_1701
	test	byte ptr [rbp - 0x85], 1
	jne	.label_1718
	mov	eax, dword ptr [rbp - 0x5c]
	shl	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
.label_1718:
	jmp	.label_1700
.label_1701:
	jmp	.label_1709
.label_1709:
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
	jmp	.label_1715
.label_1700:
	jmp	.label_1702
.label_1702:
	mov	eax, 1
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rdx + 8], ecx
	cmp	eax, dword ptr [rbp - 0x5c]
	jge	.label_1682
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
	jl	.label_1687
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1693
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x3c]
	jg	.label_1693
.label_1687:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1680
.label_1693:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x158]
	jl	.label_1705
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x158]
	jne	.label_1710
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
	jge	.label_1710
.label_1705:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1680
.label_1710:
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
	je	.label_1698
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1680
.label_1698:
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
	je	.label_1717
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
.label_1717:
	cmp	dword ptr [rbp - 0x15c], 0
	je	.label_1688
	mov	dword ptr [rbp - 4], 0xfffffffe
	jmp	.label_1680
.label_1688:
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
.label_1683:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 0x1b8], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x1b8]
	idiv	ecx
	cmp	edx, 0
	jne	.label_1692
	cmp	dword ptr [rbp - 0x5c], 0x3b9aca00
	jne	.label_1716
	mov	eax, dword ptr [rbp - 0x5c]
	shl	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1692
.label_1716:
	imul	eax, dword ptr [rbp - 0x5c], 0xa
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, dword ptr [rbp - 0x5c]
	cmp	eax, dword ptr [rbp - 0x160]
	jne	.label_1676
	jmp	.label_1692
.label_1676:
	jmp	.label_1681
.label_1681:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x164]
	mov	dword ptr [rbp - 0x1bc], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x1bc]
	idiv	ecx
	mov	dword ptr [rbp - 0x164], eax
	jmp	.label_1683
.label_1692:
	jmp	.label_1682
.label_1682:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + 8], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	byte ptr [rcx + 0xc], 1
.label_1706:
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
.label_1711:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1696
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c0], eax
	jmp	.label_1703
.label_1696:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jle	.label_1704
	mov	eax, 1
	mov	dword ptr [rbp - 0x1c4], eax
	jmp	.label_1708
.label_1704:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	jge	.label_1712
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c8], eax
	jmp	.label_1713
.label_1712:
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x40]
	setg	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1c8], eax
.label_1713:
	mov	eax, dword ptr [rbp - 0x1c8]
	mov	dword ptr [rbp - 0x1c4], eax
.label_1708:
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	dword ptr [rbp - 0x1c0], eax
.label_1703:
	mov	eax, dword ptr [rbp - 0x1c0]
	mov	dword ptr [rbp - 4], eax
.label_1680:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1d0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415230

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
	#Procedure 0x415260

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
	#Procedure 0x4152a0
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
	#Procedure 0x4152d0

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
	je	.label_1752
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x188], rax
	jmp	.label_1719
.label_1752:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x188], rcx
	jmp	.label_1719
.label_1719:
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1726
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
.label_1726:
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1742
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1724
.label_1742:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1746
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1746
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1724
.label_1746:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [utimensat_works_really]]
	jg	.label_1748
	cmp	dword ptr [rbp - 0x4c], 2
	jne	.label_1749
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1750
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	jne	.label_1720
	jmp	.label_1754
.label_1750:
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	fstat
	cmp	eax, 0
	je	.label_1754
.label_1720:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1724
.label_1754:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1721
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
	jmp	.label_1729
.label_1721:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1741
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
.label_1741:
	jmp	.label_1729
.label_1729:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
.label_1749:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1731
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	utimensat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xe4], eax
	cmp	ecx, dword ptr [rbp - 0xe4]
	jge	.label_1736
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1736:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1757
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1744
.label_1757:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1724
.label_1744:
	jmp	.label_1731
.label_1731:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	jg	.label_1732
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	futimens
	xor	edi, edi
	mov	dword ptr [rbp - 0xe4], eax
	cmp	edi, dword ptr [rbp - 0xe4]
	jge	.label_1738
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1738:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1745
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1747
.label_1745:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1724
.label_1747:
	jmp	.label_1732
.label_1732:
	jmp	.label_1748
.label_1748:
	mov	dword ptr [dword ptr [utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1739
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_1723
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1753
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	jne	.label_1756
	jmp	.label_1723
.label_1753:
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	fstat
	cmp	eax, 0
	je	.label_1723
.label_1756:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1724
.label_1723:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1727
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rbp - 0x48]
	call	update_timespec
	test	al, 1
	jne	.label_1733
	jmp	.label_1727
.label_1733:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1724
.label_1727:
	jmp	.label_1739
.label_1739:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1740
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
	jmp	.label_1743
.label_1740:
	mov	qword ptr [rbp - 0x138], 0
.label_1743:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_1755
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x138]
	call	futimesat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1724
.label_1755:
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x138]
	call	futimesat
	cmp	eax, 0
	jne	.label_1728
	cmp	qword ptr [rbp - 0x138], 0
	je	.label_1730
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
	je	.label_1735
	lea	rsi, [rbp - 0xe0]
	mov	edi, dword ptr [rbp - 8]
	call	fstat
	cmp	eax, 0
	jne	.label_1735
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
	je	.label_1734
	cmp	qword ptr [rbp - 0x148], 1
	jne	.label_1734
	lea	rdi, [rbp - 0xe0]
	call	get_stat_atime_ns
	cmp	rax, 0
	jne	.label_1734
	lea	rax, [rbp - 0x180]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rax + 8], 0
.label_1734:
	test	byte ptr [rbp - 0x13a], 1
	je	.label_1737
	cmp	qword ptr [rbp - 0x150], 1
	jne	.label_1737
	lea	rdi, [rbp - 0xe0]
	call	get_stat_mtime_ns
	cmp	rax, 0
	jne	.label_1737
	lea	rax, [rbp - 0x180]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rax + 0x18], 0
.label_1737:
	cmp	qword ptr [rbp - 0x158], 0
	je	.label_1751
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x158]
	call	futimesat
	mov	dword ptr [rbp - 0x1ac], eax
.label_1751:
	jmp	.label_1735
.label_1735:
	jmp	.label_1730
.label_1730:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1724
.label_1728:
	jmp	.label_1722
.label_1722:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1725
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1724
.label_1725:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x138]
	call	utimes
	mov	dword ptr [rbp - 4], eax
.label_1724:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415950

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
	je	.label_1761
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	je	.label_1761
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_1760
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3b9aca00
	jge	.label_1760
.label_1761:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	je	.label_1758
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	je	.label_1758
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 0x18]
	jg	.label_1760
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3b9aca00
	jl	.label_1758
.label_1760:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1767
.label_1758:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3fffffff
	je	.label_1762
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1764
.label_1762:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1766
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1766:
	jmp	.label_1764
.label_1764:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	je	.label_1765
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1763
.label_1765:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbp - 0x14], 1
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1759
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, 1
	mov	dword ptr [rbp - 0x18], eax
.label_1759:
	jmp	.label_1763
.label_1763:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	dword ptr [rbp - 0x18], 1
	sete	cl
	and	cl, 1
	movzx	edx, cl
	add	eax, edx
	mov	dword ptr [rbp - 4], eax
.label_1767:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415ae0

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
	jne	.label_1768
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1768
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1775
.label_1768:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3fffffff
	jne	.label_1774
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	jne	.label_1774
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1775
.label_1774:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1769
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
	jmp	.label_1776
.label_1769:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3fffffff
	jne	.label_1770
	mov	rdi, qword ptr [rbp - 0x20]
	call	gettime
.label_1770:
	jmp	.label_1776
.label_1776:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1771
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
	jmp	.label_1772
.label_1771:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	jne	.label_1773
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	rdi, rax
	call	gettime
.label_1773:
	jmp	.label_1772
.label_1772:
	mov	byte ptr [rbp - 1], 0
.label_1775:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415c40

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
	#Procedure 0x415c70

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1795
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1781
.label_1795:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x110], rcx
	jmp	.label_1781
.label_1781:
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1785
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
.label_1785:
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1796
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1780
.label_1796:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [lutimensat_works_really]]
	jg	.label_1777
	cmp	dword ptr [rbp - 0x4c], 2
	jne	.label_1792
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	lstat
	cmp	eax, 0
	je	.label_1788
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1780
.label_1788:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1791
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
	jmp	.label_1787
.label_1791:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1784
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
.label_1784:
	jmp	.label_1787
.label_1787:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
.label_1792:
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	utimensat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xe4], eax
	cmp	ecx, dword ptr [rbp - 0xe4]
	jge	.label_1783
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1783:
	cmp	dword ptr [rbp - 0xe4], 0
	je	.label_1789
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1793
.label_1789:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	dword ptr [dword ptr [lutimensat_works_really]],  1
	mov	eax, dword ptr [rbp - 0xe4]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1780
.label_1793:
	jmp	.label_1777
.label_1777:
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	cmp	dword ptr [rbp - 0x4c], 0
	je	.label_1779
	cmp	dword ptr [rbp - 0x4c], 3
	je	.label_1782
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	lstat
	cmp	eax, 0
	je	.label_1782
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1780
.label_1782:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1790
	lea	rdi, [rbp - 0xe0]
	lea	rsi, [rbp - 0x48]
	call	update_timespec
	test	al, 1
	jne	.label_1794
	jmp	.label_1790
.label_1794:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1780
.label_1790:
	jmp	.label_1779
.label_1779:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_1778
	lea	rsi, [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	call	lstat
	cmp	eax, 0
	je	.label_1778
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1780
.label_1778:
	mov	eax, dword ptr [rbp - 0xc8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_1786
	mov	edi, 0xffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x48]
	call	fdutimens
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1780
.label_1786:
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1780:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415f80

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
	je	.label_1797
	movabs	rsi, OFFSET FLAT:label_1808
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1804
.label_1797:
	movabs	rsi, OFFSET FLAT:label_1805
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1804:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_1814
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
	mov	ecx, OFFSET FLAT:label_1813
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
	ja	.label_1801
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1809]]
	jmp	rcx
.label_2318:
	jmp	.label_1800
.label_2319:
	movabs	rdi, OFFSET FLAT:label_1815
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
	jmp	.label_1800
.label_2320:
	movabs	rdi, OFFSET FLAT:label_1812
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
	jmp	.label_1800
.label_2321:
	movabs	rdi, OFFSET FLAT:label_1811
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
	jmp	.label_1800
.label_2322:
	movabs	rdi, OFFSET FLAT:label_1807
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
	jmp	.label_1800
.label_2323:
	movabs	rdi, OFFSET FLAT:label_1803
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
	jmp	.label_1800
.label_2324:
	movabs	rdi, OFFSET FLAT:label_1798
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
	jmp	.label_1800
.label_2325:
	movabs	rdi, OFFSET FLAT:label_1802
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
	jmp	.label_1800
.label_2326:
	movabs	rdi, OFFSET FLAT:label_1810
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
	jmp	.label_1800
.label_2327:
	movabs	rdi, OFFSET FLAT:label_1806
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
	jmp	.label_1800
.label_1801:
	movabs	rdi, OFFSET FLAT:label_1799
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
.label_1800:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416540
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
.label_1818:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1816
	jmp	.label_1817
.label_1817:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1818
.label_1816:
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
	#Procedure 0x4165b0

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
.label_1819:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1823
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1821
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1820
.label_1821:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1820:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1823:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1825
	jmp	.label_1824
.label_1825:
	jmp	.label_1822
.label_1822:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1819
.label_1824:
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
	#Procedure 0x4166c0

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
	je	.label_1826
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
.label_1826:
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
	#Procedure 0x416830
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1827
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1829
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1830
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_39
	movabs	rdx, OFFSET FLAT:label_40
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1828
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
	#Procedure 0x4168c0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	test	byte ptr [byte ptr [can_write_any_file.initialized]],  1
	jne	.label_1831
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
.label_1831:
	mov	al,  byte ptr [byte ptr [can_write_any_file.can_write]]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416920
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
	jae	.label_1832
	call	xalloc_die
.label_1832:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416970

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
	jne	.label_1833
	cmp	qword ptr [rbp - 8], 0
	je	.label_1833
	call	xalloc_die
.label_1833:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4169b0

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
	jae	.label_1834
	call	xalloc_die
.label_1834:
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
	#Procedure 0x416a00

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1835
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1835
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1837
.label_1835:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1836
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1836
	call	xalloc_die
.label_1836:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1837:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416a80

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
	jne	.label_1838
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1841
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
.label_1841:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1839
	call	xalloc_die
.label_1839:
	jmp	.label_1840
.label_1838:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1842
	call	xalloc_die
.label_1842:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1840:
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
	#Procedure 0x416b70

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
	#Procedure 0x416b90
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
	#Procedure 0x416bc0
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
	#Procedure 0x416c00
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
	jb	.label_1843
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1844
.label_1843:
	call	xalloc_die
.label_1844:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416c60

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
	#Procedure 0x416ca0

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
	#Procedure 0x416ce0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1845
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_930
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x416d20

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
	jg	.label_1848
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1847
.label_1848:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	jne	.label_1846
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
.label_1846:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpmatch
	xor	ecx, ecx
	cmp	ecx, eax
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1847:
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
	#Procedure 0x416dc0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1849
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1850
.label_1849:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1851
.label_1850:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1851:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416e20

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
	je	.label_1852
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1852:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416e60

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
	jbe	.label_1853
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1856
.label_1853:
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
	je	.label_1855
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1854
.label_1855:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1854
.label_1854:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, rax
	mov	qword ptr [rbp - 8], rcx
.label_1856:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416f00

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
	jne	.label_1857
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1857
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1857
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1859
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1858
.label_1859:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1858
.label_1857:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1858:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416fd0

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
	jne	.label_1860
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1860:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1861
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1861
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1861
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1862
.label_1861:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1862:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417080

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
	#Procedure 0x417090

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
	#Procedure 0x4170e0

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
	je	.label_1863
	mov	edi, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 0x18]
	call	fchmod
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1864
.label_1863:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	call	chmod
	mov	dword ptr [rbp - 4], eax
.label_1864:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417130

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
	je	.label_1867
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax]
	call	chmod_or_fchmod
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_1868
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1871
.label_1868:
	jmp	.label_1867
.label_1867:
	test	byte ptr [rbp - 0x1f], 1
	je	.label_1865
	test	byte ptr [rbp - 0x1e], 1
	jne	.label_1865
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_1866
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	jmp	.label_1869
.label_1866:
	xor	eax, eax
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_1869
.label_1869:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x28], eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx]
	call	chmod_or_fchmod
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_1870
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x30], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x24], 0xffffffff
.label_1870:
	jmp	.label_1865
.label_1865:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
.label_1871:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417220
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
	#Procedure 0x417260
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
	#Procedure 0x4172a0
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
	#Procedure 0x4172d0
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
	#Procedure 0x417300
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
	#Procedure 0x417350

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
	#Procedure 0x4173a0
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
	#Procedure 0x4173e0
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
	#Procedure 0x417420
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
	#Procedure 0x417460
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
	#Procedure 0x4174a0

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
	jne	.label_1872
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1876
.label_1872:
	jmp	.label_1873
.label_1873:
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
	jne	.label_1875
	jmp	.label_1874
.label_1875:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1873
.label_1874:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1876:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417560

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
	jne	.label_1877
	test	byte ptr [rbp - 0x13], 1
	je	.label_1879
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1877
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1879
.label_1877:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1880
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1880:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1878
.label_1879:
	mov	dword ptr [rbp - 4], 0
.label_1878:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417610

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
	je	.label_1881
	mov	rdi, qword ptr [rbp - 0x10]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x14], eax
	cmp	ecx, dword ptr [rbp - 0x14]
	jg	.label_1884
	cmp	dword ptr [rbp - 0x14], 2
	jg	.label_1884
	mov	esi, 0x406
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x14]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_1883
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1885
.label_1883:
	mov	edi, dword ptr [rbp - 0x28]
	call	fdopendir
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1882
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	dword ptr [rbp - 0x2c], eax
.label_1882:
	jmp	.label_1885
.label_1885:
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
.label_1884:
	jmp	.label_1881
.label_1881:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417700

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
	#Procedure 0x417730
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
	#Procedure 0x417760

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
	je	.label_1886
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1888
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1889
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1887
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1890
.label_1889:
	mov	byte ptr [rbp - 5], 0
.label_1890:
	jmp	.label_1886
.label_1886:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4177e0

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
.label_1892:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_1891
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
	jmp	.label_1892
.label_1891:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417850

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
	jne	.label_1893
	movabs	rax, OFFSET FLAT:label_36
	mov	qword ptr [rbp - 8], rax
.label_1893:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1894
	movabs	rax, OFFSET FLAT:label_1895
	mov	qword ptr [rbp - 8], rax
.label_1894:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4178b0

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
	je	.label_1896
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
.label_1896:
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
	je	.label_1898
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
	ja	.label_1899
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_1897
.label_1899:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_1897:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_1898:
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
	#Procedure 0x417ab0

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
	#Procedure 0x417b00

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
	je	.label_1901
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_new
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1900
.label_1901:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1900
.label_1900:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417b60
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
	#Procedure 0x417b80

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
.label_1902:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1906
	mov	qword ptr [rbp - 0x40], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_1904:
	mov	rdi, qword ptr [rbp - 0x48]
	call	shift_left
	add	rax, 0xff
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_1904
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	call	randread
	mov	qword ptr [rbp - 0x40], 0
.label_1905:
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
	jb	.label_1905
	jmp	.label_1906
.label_1906:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1908
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1907
.label_1908:
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
	ja	.label_1903
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
	jmp	.label_1907
.label_1903:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1902
.label_1907:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417d50

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
	#Procedure 0x417d70

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
	#Procedure 0x417da0

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
	#Procedure 0x417df0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1913
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1915
.label_1913:
	mov	qword ptr [rbp - 0x20], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1909
	movabs	rsi, OFFSET FLAT:label_1910
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1911
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1915
.label_1911:
	jmp	.label_1909
.label_1909:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1914
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rdi
	jae	.label_1917
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1912
.label_1917:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_1912:
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1916
.label_1914:
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
.label_1916:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1915:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417f40

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
	#Procedure 0x417fa0

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:label_1930
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
	jg	.label_1933
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	jae	.label_1935
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1920
.label_1935:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_1920:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_1931
	mov	qword ptr [rbp - 0x28], 0
.label_1931:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_1933:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1934
	mov	eax, 0x10
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1937
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_1922
.label_1937:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xb0], rax
.label_1922:
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
.label_1934:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1936
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1918
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_1924
.label_1918:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
.label_1924:
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
.label_1936:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1919
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1921
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_1927
.label_1921:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_1927:
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
.label_1919:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1923
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1925
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_1929
.label_1925:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xe0], rax
.label_1929:
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
.label_1923:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1926
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_1928
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_1932
.label_1928:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_1932:
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
.label_1926:
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418350
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
	#Procedure 0x418370
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
	#Procedure 0x418390

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
	je	.label_1938
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	readsource
	jmp	.label_1939
.label_1938:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	readisaac
.label_1939:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4183f0

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1940:
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
	jne	.label_1942
	jmp	.label_1944
.label_1942:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_1941
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1943
.label_1941:
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1943
.label_1943:
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
	jmp	.label_1940
.label_1944:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4184c0

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
.label_1948:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1951
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
	jmp	.label_1946
.label_1951:
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
	jne	.label_1947
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1949:
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	ja	.label_1950
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
	jne	.label_1945
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	jmp	.label_1946
.label_1945:
	jmp	.label_1949
.label_1950:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_1947:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x820
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_1948
.label_1946:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418640

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
	je	.label_1952
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1953
.label_1952:
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1953
.label_1953:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4186b0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1954
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], edi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_1955
	movabs	rdi, OFFSET FLAT:label_1957
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1956
.label_1955:
	movabs	rdi, OFFSET FLAT:label_1958
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_1956:
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
.label_1954:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x418740

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
.label_1960:
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
	jb	.label_1960
	jmp	.label_1959
.label_1959:
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
	jb	.label_1959
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
	#Procedure 0x418c80

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
	#Procedure 0x418cd0

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
	#Procedure 0x418cf0

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
.label_1963:
	cmp	dword ptr [rbp - 0x4c], 0x100
	jge	.label_1964
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
	jmp	.label_1963
.label_1964:
	mov	dword ptr [rbp - 0x50], 0
.label_1961:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_1962
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
	jmp	.label_1961
.label_1962:
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
	#Procedure 0x419390

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
	#Procedure 0x4193c0

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
	#Procedure 0x4193f0

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
	jge	.label_1968
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1965
.label_1968:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1969
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1967
.label_1969:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1967
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1967:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1966
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1966:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1965:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4194c0

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
	je	.label_1986
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
.label_1986:
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
	je	.label_1974
	jmp	.label_1977
.label_1977:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_1978
	jmp	.label_1983
.label_1974:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_1985
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_1994
.label_1985:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_1994:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1980
.label_1978:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_1996
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_1993
.label_1996:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_1993:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1980
.label_1983:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_1979
	jmp	.label_1989
.label_1989:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_1971
	jmp	.label_1997
.label_1997:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_1979
	jmp	.label_2000
.label_2000:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_1971
	jmp	.label_1975
.label_1975:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_1979
	jmp	.label_1981
.label_1981:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_1979
	jmp	.label_1990
.label_1990:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_1971
	jmp	.label_1998
.label_1998:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_1979
	jmp	.label_1970
.label_1970:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_1971
	jmp	.label_1976
.label_1976:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_1979
	jmp	.label_1982
.label_1982:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_1971
	jmp	.label_1991
.label_1991:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_1979
	jmp	.label_1999
.label_1999:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_1979
	jmp	.label_1972
.label_1972:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_1973
	jmp	.label_1971
.label_1971:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1984
.label_1979:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_1987
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_1995
.label_1987:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_1995:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1984
.label_1973:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_1988
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_1992
.label_1988:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_1992:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_1984:
	jmp	.label_1980
.label_1980:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4199e0

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
	#Procedure 0x419a10

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
	jg	.label_2003
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_2009
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2004
.label_2009:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2001
.label_2004:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_2008
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2008:
	jmp	.label_2001
.label_2001:
	jmp	.label_2005
.label_2003:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_2005:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_2006
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_2006
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_2002
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2007
.label_2002:
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
.label_2007:
	jmp	.label_2006
.label_2006:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419b40

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
	ja	.label_2010
	jmp	.label_2012
.label_2012:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2011
.label_2010:
	jmp	.label_2011
.label_2011:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419b90
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
	jb	.label_2013
	jmp	.label_2016
.label_2016:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2013
	jmp	.label_2014
.label_2014:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2015
	jmp	.label_2013
.label_2013:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2017
.label_2015:
	mov	byte ptr [rbp - 1], 0
.label_2017:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419c00
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
	jb	.label_2018
	jmp	.label_2021
.label_2021:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_2019
	jmp	.label_2018
.label_2018:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2020
.label_2019:
	mov	byte ptr [rbp - 1], 0
.label_2020:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419c50
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2022
	jmp	.label_2023
.label_2023:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2024
.label_2022:
	mov	byte ptr [rbp - 1], 0
.label_2024:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419c80
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_2025
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2025:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419cb0
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
	jb	.label_2026
	jmp	.label_2028
.label_2028:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2029
	jmp	.label_2026
.label_2026:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2027
.label_2029:
	mov	byte ptr [rbp - 1], 0
.label_2027:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419d00
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2030
	jmp	.label_2032
.label_2032:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2031
.label_2030:
	mov	byte ptr [rbp - 1], 0
.label_2031:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419d40
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2033
	jmp	.label_2035
.label_2035:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2034
.label_2033:
	mov	byte ptr [rbp - 1], 0
.label_2034:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419d80
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2036
	jmp	.label_2038
.label_2038:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2037
.label_2036:
	mov	byte ptr [rbp - 1], 0
.label_2037:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419dc0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2039
	jmp	.label_2041
.label_2041:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2040
.label_2039:
	mov	byte ptr [rbp - 1], 0
.label_2040:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419e00
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
	ja	.label_2042
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2044]]
	jmp	rcx
.label_2074:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2043
.label_2042:
	mov	byte ptr [rbp - 1], 0
.label_2043:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419e50
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
	jb	.label_2045
	jmp	.label_2048
.label_2048:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2047
	jmp	.label_2045
.label_2045:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2046
.label_2047:
	mov	byte ptr [rbp - 1], 0
.label_2046:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419ea0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2049
	jmp	.label_2051
.label_2051:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2050
.label_2049:
	mov	byte ptr [rbp - 1], 0
.label_2050:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419ee0
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
	jb	.label_2052
	jmp	.label_2054
.label_2054:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2052
	jmp	.label_2053
.label_2053:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2055
	jmp	.label_2052
.label_2052:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2056
.label_2055:
	mov	byte ptr [rbp - 1], 0
.label_2056:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419f50

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2057
	jmp	.label_2059
.label_2059:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2058
.label_2057:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2058:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419f90
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2060
	jmp	.label_2062
.label_2062:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2061
.label_2060:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2061:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419fd0

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
	je	.label_2064
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_2066
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_2066
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_2067
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
	jmp	.label_2065
.label_2067:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_2068
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_2063
.label_2068:
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
	jmp	.label_2065
.label_2063:
	jmp	.label_2066
.label_2066:
	jmp	.label_2064
.label_2064:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2065:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a190

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x41a1a0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	16
	#Procedure 0x41a1b0

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x41a1c0

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
	#Procedure 0x41a1e0

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
