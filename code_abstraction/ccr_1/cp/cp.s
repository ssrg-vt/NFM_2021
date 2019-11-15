	.section	.text
	.align	32
	#Procedure 0x402860

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
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
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_backup_suffix_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_25:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	#Procedure 0x402b10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b40

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b90

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_40
	nop	
.label_39:
	mov	edi, OFFSET FLAT:label_32
	call	strcmp
	test	eax, eax
	je	.label_37
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_39
.label_37:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_32
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:label_36
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_33
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_33
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_32
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_36
	mov	ecx, OFFSET FLAT:label_32
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_44
	mov	ecx, OFFSET FLAT:label_45
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
	#Procedure 0x402cb0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_45
	call	setlocale
	mov	edi, OFFSET FLAT:label_90
	mov	esi, OFFSET FLAT:label_91
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_90
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp + 8]
	call	cp_option_init
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	r13d, r13d
	xor	ecx, ecx
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_47
.label_82:
	mov	byte ptr [rsp + 0x32], 1
	mov	cl, r12b
	nop	dword ptr [rax]
.label_47:
	mov	r12d, ecx
	mov	edx, OFFSET FLAT:label_60
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	add	eax, 0x83
	cmp	eax, 0x10b
	ja	.label_84
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_70]]
.label_1470:
	mov	dword ptr [rsp + 0xc], 3
	mov	cl, r12b
	jmp	.label_47
.label_1471:
	mov	dword ptr [rsp + 0xc], 4
	mov	cl, r12b
	jmp	.label_47
.label_1475:
	cmp	qword ptr [word ptr [rip + optarg]],  0
	mov	cl, r12b
	je	.label_47
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	cl, r12b
	jmp	.label_47
.label_1476:
	mov	dword ptr [rsp + 0xc], 2
	mov	byte ptr [rsp + 0x2a], 1
	mov	word ptr [rsp + 0x25], 0x101
	mov	byte ptr [rsp + 0x27], 1
	mov	byte ptr [rsp + 0x2c], 1
	mov	byte ptr [rsp + 0x2f], 1
	mov	byte ptr [rsp + 0x31], 1
	jmp	.label_82
.label_1477:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	cmovne	r13, rax
	mov	bpl, 1
	mov	cl, r12b
	jmp	.label_47
.label_1479:
	mov	byte ptr [rsp + 0x1e], 1
	mov	cl, r12b
	jmp	.label_47
.label_1483:
	mov	byte ptr [rsp + 0x34], 1
	mov	cl, r12b
	jmp	.label_47
.label_1484:
	test	r15, r15
	jne	.label_51
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0x68]
	call	stat
	test	eax, eax
	jne	.label_89
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x80]
	cmp	eax, 0x4000
	jne	.label_62
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	cl, r12b
	jmp	.label_47
.label_1487:
	mov	byte ptr [rsp + 0x24], 1
	mov	cl, r12b
	jmp	.label_47
.label_1491:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_72
	lea	rsi, [rsp + 8]
	mov	edx, 1
	call	decode_preserve_arg
	jmp	.label_75
.label_72:
	mov	word ptr [rsp + 0x25], 0x101
	mov	byte ptr [rsp + 0x27], 1
.label_75:
	mov	byte ptr [rsp + 0x2c], 1
	mov	cl, r12b
	jmp	.label_47
.label_1492:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_79
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_81
	mov	edx, OFFSET FLAT:reflink_type_string
	mov	ecx, OFFSET FLAT:reflink_type
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + reflink_type]]
	mov	dword ptr [rsp + 0x40], eax
	mov	cl, r12b
	jmp	.label_47
.label_1473:
	mov	bpl, 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x60], rax
	mov	cl, r12b
	jmp	.label_47
.label_1474:
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
	mov	cl, r12b
	jmp	.label_47
.label_1478:
	mov	byte ptr [rsp + 0x2a], 1
.label_1472:
	mov	dword ptr [rsp + 0xc], 2
	mov	cl, r12b
	jmp	.label_47
.label_1480:
	mov	dword ptr [rsp + 0x10], 3
	mov	cl, r12b
	jmp	.label_47
.label_1481:
	mov	byte ptr [rsp + 0x1f], 1
	mov	cl, r12b
	jmp	.label_47
.label_1482:
	mov	dword ptr [rsp + 0x10], 2
	mov	cl, r12b
	jmp	.label_47
.label_1485:
	mov	byte ptr [rsp + 0x35], 1
	mov	cl, r12b
	jmp	.label_47
.label_1486:
	mov	byte ptr [rsp + 0x36], 1
	mov	cl, r12b
	jmp	.label_47
.label_1488:
	mov	byte ptr [rsp + 0x2b], 0
	mov	cl, r12b
	jmp	.label_47
.label_1489:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 8]
	xor	edx, edx
	call	decode_preserve_arg
	mov	cl, r12b
	jmp	.label_47
.label_1490:
	mov	byte ptr [byte ptr [rip + parents_option]],  1
	mov	cl, r12b
	jmp	.label_47
.label_1493:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_78
	mov	edx, OFFSET FLAT:sparse_type_string
	mov	ecx, OFFSET FLAT:sparse_type
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + sparse_type]]
	mov	dword ptr [rsp + 0x14], eax
	mov	cl, r12b
	jmp	.label_47
.label_1494:
	mov	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	mov	cl, r12b
	jmp	.label_47
.label_1495:
	mov	byte ptr [rsp + 0x1d], 1
	mov	cl, r12b
	jmp	.label_47
.label_79:
	mov	dword ptr [rsp + 0x40], 2
	mov	cl, r12b
	jmp	.label_47
.label_1469:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_46
	cmp	byte ptr [rsp + 0x34], 0
	jne	.label_64
.label_46:
	cmp	dword ptr [rsp + 0x10], 2
	jne	.label_52
	mov	byte ptr [rsp + 0x35], 0
.label_52:
	test	bpl, bpl
	je	.label_55
	cmp	dword ptr [rsp + 0x10], 2
	je	.label_56
.label_55:
	cmp	dword ptr [rsp + 0x40], 2
	jne	.label_61
	cmp	dword ptr [rsp + 0x14], 2
	jne	.label_63
.label_61:
	xor	eax, eax
	test	bpl, bpl
	je	.label_67
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	xget_version
.label_67:
	mov	dword ptr [rsp + 8], eax
	mov	rdi, qword ptr [rsp + 0x60]
	call	set_simple_backup_suffix
	cmp	dword ptr [rsp + 0xc], 1
	jne	.label_71
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_74
	mov	al, byte ptr [rsp + 0x1f]
	test	al, al
	jne	.label_74
	mov	dword ptr [rsp + 0xc], 2
	jmp	.label_71
.label_74:
	mov	dword ptr [rsp + 0xc], 4
.label_71:
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_80
	mov	byte ptr [rsp + 0x1c], r12b
.label_80:
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_54
	cmp	byte ptr [rsp + 0x2e], 0
	jne	.label_54
	mov	byte ptr [rsp + 0x2d], 0
.label_54:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_83
	mov	al, byte ptr [rsp + 0x29]
	test	al, al
	jne	.label_85
.label_83:
	cmp	byte ptr [rsp + 0x2e], 0
	jne	.label_87
	cmp	byte ptr [rsp + 0x30], 0
	jne	.label_88
	call	hash_init
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	lea	rsi, [r14 + rax*8]
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x58]
	test	al, al
	setne	cl
	lea	r8, [rsp + 8]
	mov	edi, ebx
	mov	rdx, r15
	call	do_copy
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1467:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_32
	mov	edx, OFFSET FLAT:label_35
	mov	r8d, OFFSET FLAT:label_57
	mov	r9d, OFFSET FLAT:label_58
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_59
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_1468:
	xor	edi, edi
	call	usage
.label_84:
	mov	edi, 1
	call	usage
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	jmp	.label_49
.label_89:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	jmp	.label_66
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	jmp	.label_49
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	jmp	.label_49
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
.label_49:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	jmp	.label_66
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
.label_66:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403280

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	push	rbx
	mov	rbx, rdi
	call	cp_options_default
	mov	byte ptr [rbx + 0x14], 1
	mov	dword ptr [rbx + 4], 1
	mov	byte ptr [rbx + 0x15], 0
	mov	byte ptr [rbx + 0x16], 0
	mov	byte ptr [rbx + 0x17], 0
	mov	dword ptr [rbx + 8], 4
	mov	byte ptr [rbx + 0x18], 0
	mov	byte ptr [rbx + 0x19], 0
	mov	dword ptr [rbx + 0x38], 0
	mov	byte ptr [rbx + 0x22], 0
	mov	word ptr [rbx + 0x20], 0
	mov	dword ptr [rbx + 0x1c], 0
	mov	byte ptr [rbx + 0x29], 0
	mov	dword ptr [rbx + 0x25], 0
	mov	byte ptr [rbx + 0x23], 1
	mov	byte ptr [rbx + 0x24], 0
	mov	byte ptr [rbx + 0x2a], 0
	mov	qword ptr [rbx + 0xc], 2
	mov	byte ptr [rbx + 0x2f], 0
	mov	dword ptr [rbx + 0x2b], 0
	mov	edi, OFFSET FLAT:label_93
	call	getenv
	test	rax, rax
	setne	byte ptr [rbx + 0x30]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403310

	.globl decode_preserve_arg
	.type decode_preserve_arg, @function
decode_preserve_arg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, edx
	mov	rbx, rsi
	call	xstrdup
	mov	r14, rax
	mov	ecx, OFFSET FLAT:label_97
	mov	r15d, OFFSET FLAT:label_98
	test	r12b, r12b
	cmovne	r15, rcx
	mov	r13d, r12d
	xor	r13b, 1
	mov	qword ptr [rsp], r14
	nop	word ptr cs:[rax + rax]
.label_99:
	mov	rbp, r14
	mov	esi, 0x2c
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	r14d, 0
	je	.label_94
	mov	r14, rax
	inc	r14
	mov	byte ptr [rax], 0
.label_94:
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:decode_preserve_arg.preserve_args
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_vals
	mov	r8d, 4
	mov	rdi, r15
	mov	rsi, rbp
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + decode_preserve_arg.preserve_vals]]
	cmp	rax, 6
	ja	.label_100
	jmp	qword ptr [word ptr [+ (rax * 8) + label_95]]
.label_1618:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x20], r13b
	jmp	.label_96
.label_1619:
	mov	byte ptr [rbx + 0x1f], r12b
	jmp	.label_96
.label_1620:
	mov	byte ptr [rbx + 0x1d], r12b
	jmp	.label_96
.label_1621:
	mov	byte ptr [rbx + 0x22], r12b
	jmp	.label_96
.label_1622:
	mov	byte ptr [rbx + 0x26], r12b
	mov	byte ptr [rbx + 0x25], r12b
	jmp	.label_96
.label_1623:
	mov	byte ptr [rbx + 0x27], r12b
	mov	byte ptr [rbx + 0x28], r12b
	jmp	.label_96
.label_1624:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x1f], r12b
	mov	byte ptr [rbx + 0x1d], r12b
	mov	byte ptr [rbx + 0x22], r12b
	mov	byte ptr [rbx + 0x20], r13b
	mov	byte ptr [rbx + 0x27], r12b
	nop	word ptr cs:[rax + rax]
.label_96:
	test	r14, r14
	jne	.label_99
	mov	rdi, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_100:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403430

	.globl do_copy
	.type do_copy, @function
do_copy:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	rbx, rsi
	mov	r12d, edi
	mov	byte ptr [rbp - 0x2a], 0
	mov	al, 1
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_117
	cmp	byte ptr [r14 + 0x16], 0
	setne	al
.label_117:
	xor	esi, esi
	test	rdx, rdx
	sete	sil
	cmp	esi, r12d
	jge	.label_125
	test	cl, cl
	mov	rcx, r14
	mov	qword ptr [rbp - 0x38], rcx
	je	.label_133
	test	rdx, rdx
	jne	.label_101
	cmp	r12d, 3
	jge	.label_105
	movsxd	rcx, r12d
	mov	rdi, qword ptr [rbx + rcx*8 - 8]
	movzx	ecx, al
	lea	rsi, [rbp - 0xf8]
	lea	rdx, [rbp - 0x2a]
	call	target_directory_operand
.label_103:
	cmp	byte ptr [byte ptr [rip + parents_option]],  1
	je	.label_118
	mov	r14, qword ptr [rbx]
	mov	r15, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x16], 0
	je	.label_113
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_113
	mov	rdi, r14
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	jne	.label_113
	mov	al, byte ptr [rbp - 0x2a]
	test	al, al
	jne	.label_113
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xe0]
	cmp	eax, 0x8000
	jne	.label_113
	mov	edi, 0xffffff9c
	mov	rsi, r15
	mov	edx, ebx
	call	find_backup_file_name
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0x38]
	movups	xmm0, xmmword ptr [rax + 0x40]
	movups	xmmword ptr [word ptr [rip + label_107]],  xmm0
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 0x10]
	movups	xmm2, xmmword ptr [rax + 0x20]
	movups	xmm3, xmmword ptr [rax + 0x30]
	movups	xmmword ptr [word ptr [rip + label_108]],  xmm3
	movups	xmmword ptr [word ptr [rip + label_109]],  xmm2
	movups	xmmword ptr [word ptr [rip + label_110]],  xmm1
	movups	xmmword ptr [word ptr [rip + do_copy.x_tmp]],  xmm0
	mov	eax, OFFSET FLAT:do_copy.x_tmp
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [dword ptr [rip + do_copy.x_tmp]],  0
.label_113:
	lea	r8, [rbp - 0x40]
	xor	edx, edx
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, qword ptr [rbp - 0x38]
	call	copy
	mov	byte ptr [rbp - 0x29], al
	jmp	.label_131
.label_133:
	test	rdx, rdx
	jne	.label_102
	cmp	r12d, 2
	jl	.label_103
	movsxd	r15, r12d
	mov	rdi, qword ptr [rbx + r15*8 - 8]
	movzx	ecx, al
	lea	rsi, [rbp - 0xf8]
	lea	rdx, [rbp - 0x2a]
	call	target_directory_operand
	test	al, al
	je	.label_116
	dec	r15
	mov	rdx, qword ptr [rbx + r15*8]
	test	rdx, rdx
	je	.label_103
	dec	r12d
.label_102:
	cmp	r12d, 2
	mov	qword ptr [rbp - 0x48], rdx
	jl	.label_124
	mov	rdi, r14
	call	dest_info_init
	mov	rdi, r14
	call	src_info_init
	jmp	.label_130
.label_124:
	mov	byte ptr [rbp - 0x29], 1
	cmp	r12d, 1
	jne	.label_131
.label_130:
	mov	byte ptr [rbp - 0x29], 1
	xor	r13d, r13d
	mov	qword ptr [rbp - 0x68], rbx
	mov	dword ptr [rbp - 0x54], r12d
	jmp	.label_119
.label_132:
	mov	rdi, qword ptr [rbp - 0x48]
	call	xstrdup
	jmp	.label_127
	nop	word ptr cs:[rax + rax]
.label_119:
	mov	qword ptr [rbp - 0x50], 0
	mov	r15, qword ptr [rbx + r13*8]
	cmp	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	jne	.label_112
	mov	rdi, r15
	call	strip_trailing_slashes
.label_112:
	mov	al,  byte ptr [byte ptr [rip + parents_option]]
	test	al, al
	je	.label_120
	mov	rdi, r15
	call	strlen
	mov	rbx, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rbx, rax
	mov	rsp, rbx
	mov	rdi, rbx
	mov	rsi, r15
	call	memcpy
	mov	rdi, rbx
	call	strip_trailing_slashes
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x50]
	call	file_name_concat
	mov	rbx, r15
	mov	r15, rax
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rsi, r15
	xor	r12d, r12d
	cmp	byte ptr [r14 + 0x2e], 0
	mov	edx, 0
	mov	eax, OFFSET FLAT:label_122
	cmovne	rdx, rax
	mov	rdi, r15
	lea	rcx, [rbp - 0x40]
	lea	r8, [rbp - 0x2a]
	mov	r9, r14
	call	make_dir_parents_private
	test	al, al
	jne	.label_121
	jmp	.label_115
	nop	
.label_120:
	mov	qword ptr [rbp - 0x60], r15
	mov	rdi, r15
	call	last_component
	mov	r15, rax
	mov	rdi, r15
	call	strlen
	mov	rbx, rax
	mov	r14, rsp
	lea	rdx, [rbx + 1]
	add	rbx, 0x10
	and	rbx, 0xfffffffffffffff0
	mov	r12, r14
	sub	r12, rbx
	mov	rsp, r12
	neg	rbx
	mov	rdi, r12
	mov	rsi, r15
	call	memcpy
	mov	rdi, r12
	call	strip_trailing_slashes
	cmp	byte ptr [r14 + rbx], 0x2e
	jne	.label_111
	cmp	byte ptr [r12 + 1], 0x2e
	jne	.label_111
	cmp	byte ptr [r12 + 2], 0
	je	.label_132
	nop	word ptr cs:[rax + rax]
.label_111:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r12
	call	file_name_concat
.label_127:
	mov	r15, rax
	mov	r14, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbp - 0x60]
.label_121:
	movzx	edx, byte ptr [rbp - 0x2a]
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rsi, r15
	mov	rcx, r14
	lea	r8, [rbp - 0x2b]
	call	copy
	mov	r12b, al
	and	r12b, byte ptr [rbp - 0x29]
	cmp	byte ptr [byte ptr [rip + parents_option]],  1
	jne	.label_115
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rsi, r15
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, r15
	mov	rcx, r14
	call	re_protect
	and	al, r12b
	mov	r12b, al
.label_115:
	mov	eax, r12d
	mov	byte ptr [rbp - 0x29], al
	cmp	byte ptr [byte ptr [rip + parents_option]],  1
	jne	.label_106
	mov	rax, qword ptr [rbp - 0x40]
	test	rax, rax
	je	.label_106
	nop	word ptr cs:[rax + rax]
.label_129:
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbx, qword ptr [rdi + 0xa0]
	mov	qword ptr [rbp - 0x40], rbx
	call	free
	test	rbx, rbx
	jne	.label_129
.label_106:
	mov	rdi, r15
	call	free
	inc	r13
	mov	r12d, dword ptr [rbp - 0x54]
	cmp	r13d, r12d
	mov	rbx, qword ptr [rbp - 0x68]
	jne	.label_119
.label_131:
	mov	al, byte ptr [rbp - 0x29]
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_116:
	cmp	r12d, 3
	jl	.label_103
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx + r15*8 - 8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_125:
	xor	edi, edi
	test	r12d, r12d
	jg	.label_123
	mov	esi, OFFSET FLAT:label_128
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
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
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
.label_101:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx + 0x10]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_123:
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403950

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	call	stat
	test	eax, eax
	je	.label_136
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	je	.label_138
	test	r14d, r14d
	jne	.label_140
.label_136:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x4000
	sete	al
	jmp	.label_135
.label_138:
	mov	byte ptr [r12], 1
	jmp	.label_137
.label_140:
	test	r15b, r15b
	je	.label_139
	mov	dword ptr [rbp + 0x18], 0
.label_137:
	xor	eax, eax
.label_135:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_139:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039f0

	.globl make_dir_parents_private
	.type make_dir_parents_private, @function
make_dir_parents_private:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	r13, rcx
	mov	qword ptr [rbp - 0x48], rdx
	mov	r14, rsi
	mov	rbx, rdi
	call	strlen
	mov	r12, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r12, rax
	mov	rsp, r12
	mov	rdi, r12
	mov	rsi, rbx
	call	memcpy
	mov	rdi, r12
	call	dir_len
	mov	r15, rax
	lea	rax, [r15 + 0x10]
	and	rax, 0xfffffffffffffff0
	mov	rbx, rsp
	sub	rbx, rax
	mov	rsp, rbx
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r15 + rbx], 0
	mov	qword ptr [rbp - 0x50], r13
	mov	qword ptr [r13], 0
	lea	rsi, [rbp - 0xe0]
	mov	rdi, rbx
	call	stat
	test	eax, eax
	je	.label_163
	lea	rax, [r12 + r14]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [r12 + r14 - 1]
	nop	dword ptr [rax]
.label_165:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_165
	mov	esi, 0x2f
	call	strchr
	mov	r15, rax
	mov	r13b, 1
	test	r15, r15
	je	.label_164
	nop	word ptr cs:[rax + rax]
.label_158:
	mov	byte ptr [r15], 0
	mov	rdi, r12
	lea	rsi, [rbp - 0xe0]
	call	stat
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_173
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax + 0x1d], 0
	jne	.label_173
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_173
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_166
	nop	
.label_173:
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rbp - 0x170]
	call	stat
	test	eax, eax
	je	.label_146
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_147
	jmp	.label_149
	nop	word ptr cs:[rax + rax]
.label_146:
	mov	eax, dword ptr [rbp - 0x158]
	mov	ecx, 0xf000
	and	eax, ecx
	mov	ebx, 0x14
	cmp	eax, 0x4000
	jne	.label_149
.label_147:
	mov	edi, 0xa8
	call	xmalloc
	mov	r13, rax
	mov	edx, 0x90
	mov	rdi, r13
	lea	rsi, [rbp - 0x170]
	call	memcpy
	mov	rax, r15
	sub	rax, r12
	mov	qword ptr [r13 + 0x98], rax
	mov	byte ptr [r13 + 0x90], 0
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [r13 + 0xa0], rax
	mov	qword ptr [rcx], r13
	test	r14d, r14d
	je	.label_161
	mov	edx, dword ptr [r13 + 0x18]
	jmp	.label_166
	nop	
.label_161:
	xor	edx, edx
.label_166:
	xor	ecx, ecx
	test	r14d, r14d
	setne	cl
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, r12
	mov	r8, qword ptr [rbp - 0x30]
	call	set_process_security_ctx
	test	al, al
	je	.label_169
	test	r14d, r14d
	je	.label_170
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	mov	eax, dword ptr [r13 + 0x18]
	mov	ebx, 0x3f
	mov	r14, qword ptr [rbp - 0x30]
	cmp	byte ptr [r14 + 0x1d], 0
	jne	.label_171
	cmp	byte ptr [r14 + 0x1e], 0
	mov	ebx, 0
	mov	ecx, 0x12
	cmovne	ebx, ecx
.label_171:
	and	ebx, eax
	cmp	byte ptr [r14 + 0x20], 0
	mov	ecx, 0x1ff
	cmovne	eax, ecx
	mov	esi, ebx
	xor	esi, 0xfff
	and	esi, eax
	mov	rdi, r12
	call	mkdir
	test	eax, eax
	jne	.label_177
	mov	rsi, qword ptr [rbp - 0x48]
	test	rsi, rsi
	je	.label_150
	mov	edi, 1
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, r12
	call	__printf_chk
.label_150:
	mov	rdi, r12
	lea	rsi, [rbp - 0xe0]
	call	lstat
	test	eax, eax
	jne	.label_154
	cmp	byte ptr [r14 + 0x1e], 0
	jne	.label_156
	mov	eax, dword ptr [rbp - 0xc8]
	not	eax
	test	ebx, eax
	je	.label_157
	call	cached_umask
	not	eax
	and	ebx, eax
.label_157:
	mov	eax, dword ptr [rbp - 0xc8]
	mov	ecx, eax
	not	ecx
	test	ebx, ecx
	jne	.label_162
	mov	ecx, eax
	and	ecx, 0x1c0
	cmp	ecx, 0x1c0
	je	.label_156
.label_162:
	or	eax, ebx
	mov	dword ptr [r13 + 0x18], eax
	mov	byte ptr [r13 + 0x90], 1
	nop	dword ptr [rax]
.label_156:
	mov	esi, dword ptr [rbp - 0xc8]
	mov	eax, esi
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_167
	or	esi, 0x1c0
	mov	rdi, r12
	call	chmod
	test	eax, eax
	jne	.label_174
.label_167:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	jne	.label_144
	jmp	.label_153
	nop	word ptr cs:[rax + rax]
.label_170:
	mov	eax, dword ptr [rbp - 0xc8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x4000
	mov	r14, qword ptr [rbp - 0x30]
	jne	.label_175
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 0
.label_153:
	cmp	byte ptr [r14 + 0x21], 0
	jne	.label_143
	cmp	byte ptr [r14 + 0x25], 0
	je	.label_144
.label_143:
	movzx	esi, byte ptr [r14 + 0x25]
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r14
	call	set_file_security_ctx
	test	al, al
	jne	.label_144
	cmp	byte ptr [r14 + 0x26], 0
	jne	.label_151
.label_144:
	mov	byte ptr [r15], 0x2f
	nop	word ptr cs:[rax + rax]
.label_152:
	cmp	byte ptr [r15 + 1], 0x2f
	lea	r15, [r15 + 1]
	je	.label_152
	mov	esi, 0x2f
	mov	rdi, r15
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_158
	jmp	.label_159
.label_163:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xc8]
	cmp	eax, 0x4000
	jne	.label_160
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 0
.label_159:
	mov	r13b, 1
	jmp	.label_164
.label_160:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_168
.label_149:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
.label_168:
	mov	rdx, r14
	jmp	.label_176
.label_169:
	xor	r13d, r13d
	jmp	.label_164
.label_177:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	jmp	.label_142
.label_154:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	jmp	.label_142
.label_175:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_172
.label_174:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
.label_142:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_172:
	mov	rdx, rbx
.label_176:
	call	error
.label_164:
	mov	eax, r13d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_151:
	xor	r13d, r13d
	jmp	.label_164
	.section	.text
	.align	32
	#Procedure 0x403eb0

	.globl re_protect
	.type re_protect, @function
re_protect:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	strlen
	mov	r12, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r12, rax
	mov	rsp, r12
	mov	rdi, r12
	mov	rsi, r14
	call	memcpy
	mov	al, 1
	test	rbx, rbx
	je	.label_189
	add	r13, r12
	lea	r14, [rbp - 0x50]
	nop	word ptr cs:[rax + rax]
.label_184:
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_182
	mov	rdi, rbx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdi, rbx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, r12
	mov	rsi, r14
	call	utimens
	test	eax, eax
	jne	.label_180
.label_182:
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_179
	mov	esi, dword ptr [rbx + 0x1c]
	mov	edx, dword ptr [rbx + 0x20]
	mov	rdi, r12
	call	lchown
	test	eax, eax
	je	.label_179
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	je	.label_191
	mov	edx, dword ptr [rbx + 0x20]
	mov	esi, 0xffffffff
	mov	rdi, r12
	call	lchown
.label_179:
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_181
	mov	r8d, dword ptr [rbx + 0x18]
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r13
	mov	rdx, r12
	call	copy_acl
	test	eax, eax
	je	.label_178
	jmp	.label_190
	nop	dword ptr [rax + rax]
.label_181:
	cmp	byte ptr [rbx + 0x90], 0
	je	.label_178
	mov	esi, dword ptr [rbx + 0x18]
	mov	rdi, r12
	call	chmod
	test	eax, eax
	jne	.label_183
.label_178:
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0x2f
	mov	rbx, qword ptr [rbx + 0xa0]
	test	rbx, rbx
	jne	.label_184
	mov	al, 1
	jmp	.label_189
.label_180:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
	jmp	.label_187
.label_191:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	jmp	.label_187
.label_183:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
.label_187:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_190:
	xor	eax, eax
.label_189:
	lea	rsp, [rbp - 0x28]
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
	#Procedure 0x404070

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r15, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_205
	mov	bpl, 1
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_198
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_194
	xor	r15d, r15d
	jmp	.label_192
.label_205:
	cmp	byte ptr [rbx + 0x21], 0
	mov	bl, 1
	je	.label_193
	xor	cl, 1
	jne	.label_193
	call	defaultcon
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable_ctx_err
	test	al, al
	jne	.label_193
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	jmp	.label_193
.label_198:
	xor	r15d, r15d
	jmp	.label_192
.label_194:
	cmp	byte ptr [rbx + 0x29], 0
	sete	r15b
	xor	ebp, ebp
.label_192:
	lea	rsi, [rsp]
	mov	rdi, r14
	call	lgetfilecon
	test	eax, eax
	js	.label_195
	mov	rdi, qword ptr [rsp]
	call	setfscreatecon
	test	eax, eax
	jns	.label_206
	test	bpl, bpl
	jne	.label_200
	test	r15b, r15b
	je	.label_201
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	jne	.label_201
.label_200:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_201:
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_206
	mov	rdi, qword ptr [rsp]
	call	freecon
	xor	ebx, ebx
	jmp	.label_193
.label_206:
	mov	rdi, qword ptr [rsp]
	call	freecon
	jmp	.label_196
.label_195:
	test	bpl, bpl
	jne	.label_199
	test	r15b, r15b
	je	.label_197
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	jne	.label_197
.label_199:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_197:
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_196
	xor	ebx, ebx
	jmp	.label_193
.label_196:
	mov	bl, 1
.label_193:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404210

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	cmp	edi, 0x5f
	sete	cl
	cmp	edi, 0x3d
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404220

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404230

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	cmp	edi, 0x5f
	sete	cl
	cmp	edi, 0x3d
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404240

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	je	.label_207
	cmp	byte ptr [rcx + 0x26], 0
	je	.label_209
.label_207:
	call	restorecon
.label_210:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_208:
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_209:
	mov	bl, byte ptr [rcx + 0x29]
	call	restorecon
	cmp	bl, 0
	jne	.label_208
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	je	.label_210
	jmp	.label_208
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042c0

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4042d0

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x40], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404300

	.globl src_info_init
	.type src_info_init, @function
src_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash_no_name
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404330

	.globl copy
	.type copy, @function
copy:
	push	rbx
	sub	rsp, 0x10
	mov	r11, r9
	mov	r10, r8
	mov	rax, rcx
	mov	qword ptr [word ptr [rip + top_level_src_name]],  rdi
	mov	qword ptr [word ptr [rip + top_level_dst_name]],  rsi
	mov	byte ptr [rsp + 0xf], 0
	lea	rbx, [rsp + 0xf]
	movzx	edx, dl
	mov	ecx, 0
	mov	r8d, 0
	mov	r9, rax
	push	r11
	push	r10
	push	rbx
	push	1
	call	copy_internal
	add	rsp, 0x30
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404380
	.globl valid_options
	.type valid_options, @function
valid_options:

	push	rax
	test	rdi, rdi
	je	.label_212
	cmp	dword ptr [rdi], 4
	jae	.label_217
	mov	eax, dword ptr [rdi + 0xc]
	dec	eax
	cmp	eax, 3
	jae	.label_216
	cmp	dword ptr [rdi + 0x38], 3
	jae	.label_227
	cmp	byte ptr [rdi + 0x17], 0
	je	.label_226
	cmp	byte ptr [rdi + 0x2c], 0
	jne	.label_224
.label_226:
	cmp	dword ptr [rdi + 0x38], 2
	jne	.label_219
	cmp	dword ptr [rdi + 0xc], 2
	jne	.label_220
.label_219:
	pop	rax
	ret	
.label_212:
	mov	edi, OFFSET FLAT:label_223
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 0xb86
	mov	ecx, OFFSET FLAT:label_215
	call	__assert_fail
.label_217:
	mov	edi, OFFSET FLAT:label_221
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 0xb87
	mov	ecx, OFFSET FLAT:label_215
	call	__assert_fail
.label_216:
	mov	edi, OFFSET FLAT:label_218
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 0xb88
	mov	ecx, OFFSET FLAT:label_215
	call	__assert_fail
.label_227:
	mov	edi, OFFSET FLAT:label_213
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 0xb89
	mov	ecx, OFFSET FLAT:label_215
	call	__assert_fail
.label_224:
	mov	edi, OFFSET FLAT:label_225
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 0xb8a
	mov	ecx, OFFSET FLAT:label_215
	call	__assert_fail
.label_220:
	mov	edi, OFFSET FLAT:label_222
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 0xb8d
	mov	ecx, OFFSET FLAT:label_215
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404450

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x298
	mov	r15, r9
	mov	rbx, r8
	mov	r12, rcx
	mov	qword ptr [rbp - 0x38], rsi
	mov	r14, rdi
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rbp - 0x29], dl
	mov	byte ptr [rax], 0
	mov	r13d, dword ptr [r15 + 0x34]
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_255
	test	r13d, r13d
	jns	.label_267
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, r14
	mov	rcx, qword ptr [rbp - 0x38]
	call	renameatu
	mov	rcx, qword ptr [rbp + 0x28]
	xor	r13d, r13d
	test	eax, eax
	je	.label_267
	call	__errno_location
	mov	rcx, qword ptr [rbp + 0x28]
	mov	r13d, dword ptr [rax]
.label_267:
	test	r13d, r13d
	sete	al
	sete	byte ptr [rbp - 0x29]
	test	rcx, rcx
	je	.label_255
	mov	byte ptr [rcx], al
.label_255:
	mov	qword ptr [rbp - 0x68], rbx
	test	r13d, r13d
	je	.label_287
	cmp	r13d, 0x11
	jne	.label_290
	cmp	dword ptr [r15 + 8], 2
	jne	.label_290
	jmp	.label_293
.label_287:
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_293
.label_290:
	test	r13d, r13d
	mov	rbx, r14
	cmove	rbx, qword ptr [rbp - 0x38]
	cmp	dword ptr [r15 + 4], 2
	jne	.label_298
	lea	rsi, [rbp - 0x108]
	mov	rdi, rbx
	call	lstat
	jmp	.label_302
.label_298:
	lea	rsi, [rbp - 0x108]
	mov	rdi, rbx
	call	stat
.label_302:
	test	eax, eax
	je	.label_305
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
.label_335:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
.label_244:
	call	error
.label_230:
	mov	eax, r12d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_305:
	mov	ebx, dword ptr [rbp - 0xf0]
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_293
	cmp	byte ptr [r15 + 0x2a], 0
	je	.label_325
.label_293:
	mov	al, byte ptr [rbp + 0x10]
	test	al, al
	je	.label_330
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_330
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_339
	cmp	dword ptr [r15], 0
	jne	.label_339
	lea	rdx, [rbp - 0x108]
	mov	rsi, r14
	call	seen_file
	test	al, al
	je	.label_339
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	jmp	.label_230
.label_339:
	mov	rdi, qword ptr [r15 + 0x48]
	lea	rdx, [rbp - 0x108]
	mov	rsi, r14
	call	record_file
	mov	al, byte ptr [rbp + 0x10]
.label_330:
	mov	qword ptr [rbp - 0x48], r14
	movzx	esi, al
	mov	rdi, r15
	call	should_dereference
	mov	byte ptr [rbp - 0x3c], al
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	xor	r14d, r14d
	cmp	byte ptr [rbp - 0x29], 0
	mov	dword ptr [rbp - 0x4c], ebx
	jne	.label_363
	cmp	r13d, 0x11
	jne	.label_368
	cmp	dword ptr [r15 + 8], 2
	jne	.label_368
	xor	r14d, r14d
	jmp	.label_370
.label_368:
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_373
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x14], 0
	je	.label_376
	cmp	eax, 0xa000
	je	.label_376
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_376
.label_373:
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_376
	cmp	byte ptr [r15 + 0x2c], 0
	jne	.label_376
	cmp	byte ptr [r15 + 0x17], 0
	jne	.label_376
	cmp	dword ptr [r15], 0
	jne	.label_376
	cmp	byte ptr [r15 + 0x15], 0
	setne	r14b
.label_376:
	movzx	ecx, r14b
	shl	ecx, 8
	lea	rdx, [rbp - 0x198]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x38]
	call	fstatat
	test	eax, eax
	je	.label_370
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x28
	jne	.label_396
	cmp	byte ptr [r15 + 0x16], 0
	jne	.label_397
	mov	ebx, dword ptr [rax]
.label_396:
	cmp	ebx, 2
	jne	.label_400
	mov	byte ptr [rbp - 0x29], 1
.label_397:
	xor	r14d, r14d
	cmp	r13d, 0x11
	mov	eax, 0
	mov	qword ptr [rbp - 0x58], rax
	mov	ebx, dword ptr [rbp - 0x4c]
	jne	.label_363
.label_370:
	mov	byte ptr [rbp - 0x230], 0
	cmp	dword ptr [r15 + 8], 2
	mov	r13, qword ptr [rbp - 0x38]
	je	.label_408
	lea	rsi, [rbp - 0x108]
	lea	rcx, [rbp - 0x198]
	lea	r9, [rbp - 0x230]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, r13
	mov	r8, r15
	call	same_file_ok
	test	al, al
	je	.label_415
.label_408:
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	je	.label_270
	mov	al, byte ptr [r15 + 0x2d]
	test	al, al
	je	.label_270
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_418
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_361
	mov	rax, qword ptr [rbp - 0x198]
	cmp	rax, qword ptr [rbp - 0x108]
	sete	al
	jmp	.label_421
.label_325:
	cmp	byte ptr [r15 + 0x19], 0
	je	.label_423
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
	jmp	.label_425
.label_415:
	mov	rbx, r13
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_428
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
.label_307:
	call	quotearg_n_style
.label_410:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_230
.label_400:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
.label_318:
	mov	rdx, r14
	jmp	.label_244
.label_418:
	xor	eax, eax
	jmp	.label_248
.label_423:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
.label_425:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	r12d, r12d
.label_240:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_381:
	mov	rdx, rbx
	jmp	.label_244
.label_361:
	xor	eax, eax
.label_421:
	xor	al, 1
.label_248:
	movzx	ecx, al
	lea	rsi, [rbp - 0x198]
	lea	rdx, [rbp - 0x108]
	mov	rdi, r13
	call	utimecmp
	test	eax, eax
	js	.label_270
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_273
	mov	byte ptr [rax], 1
.label_273:
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdi, r13
	call	remember_copied
	mov	rbx, rax
	test	rbx, rbx
	je	.label_280
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x3c]
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r13
	call	create_hard_link
	test	al, al
	je	.label_289
.label_280:
	mov	r12b, 1
	jmp	.label_230
.label_270:
	mov	r13, r12
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_294
	lea	rdx, [rbp - 0x198]
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x38]
	call	abandon_move
	test	al, al
	mov	rax, qword ptr [rbp + 0x28]
	je	.label_300
	mov	r12b, 1
	test	rax, rax
	je	.label_230
	mov	byte ptr [rax], 1
	jmp	.label_230
.label_294:
	cmp	ebx, 0x4000
	je	.label_300
	mov	eax, dword ptr [r15 + 8]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_230
	cmp	eax, 3
	jne	.label_300
	lea	rdx, [rbp - 0x198]
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x38]
	call	overwrite_ok
	test	al, al
	je	.label_230
	mov	al, byte ptr [rbp - 0x230]
	test	al, al
	je	.label_245
	jmp	.label_230
.label_300:
	mov	r12b, 1
	cmp	byte ptr [rbp - 0x230], 0
	jne	.label_230
.label_245:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	mov	r12, r13
	je	.label_319
	cmp	ebx, 0x4000
	jne	.label_317
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_328
	cmp	dword ptr [r15], 0
	je	.label_328
.label_317:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_319
	cmp	dword ptr [r15], 3
	je	.label_319
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x198]
	mov	rsi, qword ptr [rbp - 0x38]
	call	seen_file
	test	al, al
	je	.label_319
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	jmp	.label_345
.label_319:
	cmp	ebx, 0x4000
	je	.label_351
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	jne	.label_351
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_354
	cmp	dword ptr [r15], 0
	je	.label_354
.label_351:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_358
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0xf0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_358
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	je	.label_358
	cmp	dword ptr [r15], 0
	je	.label_315
.label_358:
	cmp	dword ptr [r15], 0
	je	.label_365
	mov	rdi, qword ptr [rbp - 0x48]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	dot_or_dotdot
	test	al, al
	jne	.label_365
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_371
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	jne	.label_371
.label_365:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x58], rcx
	cmp	eax, 0x4000
	mov	ebx, dword ptr [rbp - 0x4c]
	je	.label_249
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_249
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_390
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_251
	cmp	qword ptr [rbp - 0x188], 1
	ja	.label_390
.label_251:
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	dword ptr [r15 + 4], 2
	jne	.label_249
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xf0]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x58], rcx
	cmp	eax, 0x8000
	je	.label_249
.label_390:
	mov	rdi, qword ptr [rbp - 0x38]
	call	unlink
	test	eax, eax
	je	.label_404
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r13d, 2
	jne	.label_406
.label_404:
	mov	byte ptr [rbp - 0x29], 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_249
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	ebx, dword ptr [rbp - 0x4c]
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_249
.label_289:
	mov	qword ptr [rbp - 0x70], rbx
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_235
.label_371:
	cmp	dword ptr [r15], 3
	mov	r13, qword ptr [rbp - 0x38]
	je	.label_420
	lea	rsi, [rbp - 0x108]
	mov	rdi, rbx
	mov	rdx, r13
	call	source_is_dst_backup
	test	al, al
	je	.label_420
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_427
	mov	rbx, r13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
	jmp	.label_430
.label_328:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_433
.label_345:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
.label_375:
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	jmp	.label_307
.label_354:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	jmp	.label_240
.label_420:
	mov	edx, dword ptr [r15]
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	backup_file_rename
	mov	rbx, rax
	test	rbx, rbx
	je	.label_246
	mov	rdi, rbx
	call	strlen
	mov	rdi, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	rax, rdi
	mov	qword ptr [rbp - 0x58], rax
	mov	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	mov	ebx, dword ptr [rbp - 0x4c]
	jmp	.label_395
.label_246:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	r13d, 2
	mov	ebx, dword ptr [rbp - 0x4c]
	jne	.label_265
.label_395:
	mov	byte ptr [rbp - 0x29], 1
.label_249:
	mov	r13d, 0x11
.label_363:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_275
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_275
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_275
	cmp	dword ptr [r15], 0
	jne	.label_275
	test	r14b, r14b
	jne	.label_284
	lea	rbx, [rbp - 0x230]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	jne	.label_295
	jmp	.label_292
.label_284:
	lea	rbx, [rbp - 0x198]
.label_292:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_295
	mov	rdi, qword ptr [r15 + 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rbx
	call	seen_file
	test	al, al
	je	.label_295
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	jmp	.label_307
.label_295:
	mov	ebx, dword ptr [rbp - 0x4c]
.label_275:
	mov	qword ptr [rbp - 0x78], r12
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_269
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_269
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	jne	.label_269
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	call	emit_verbose
.label_269:
	xor	r12d, r12d
	test	r13d, r13d
	je	.label_320
	mov	ebx, dword ptr [rbp - 0x4c]
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_322
	mov	al, byte ptr [r15 + 0x2a]
	test	al, al
	je	.label_322
	mov	rax, qword ptr [rbp - 0x108]
	mov	rcx, qword ptr [rbp - 0x100]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_332
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rcx
	mov	rdx, rax
	jmp	.label_340
.label_322:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_347
	cmp	qword ptr [rbp - 0xf8], 1
	jne	.label_347
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x100]
	jmp	.label_349
.label_347:
	xor	r12d, r12d
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_320
	xor	r12d, r12d
	cmp	byte ptr [r15 + 0x17], 0
	jne	.label_320
	cmp	qword ptr [rbp - 0xf8], 1
	ja	.label_357
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_359
	cmp	dword ptr [r15 + 4], 3
	je	.label_357
.label_359:
	xor	r12d, r12d
	cmp	dword ptr [r15 + 4], 4
	jne	.label_320
.label_357:
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdi, qword ptr [rbp - 0x38]
.label_340:
	call	remember_copied
	jmp	.label_366
.label_332:
	mov	rdi, rcx
	mov	rsi, rax
.label_349:
	call	src_to_dest_lookup
.label_366:
	mov	r14, rax
	xor	r12d, r12d
	test	r14, r14
	je	.label_320
	cmp	ebx, 0x4000
	jne	.label_372
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r14
	call	same_name
	test	al, al
	je	.label_377
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	qword ptr [rbp - 0x70], r14
	jmp	.label_235
.label_372:
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x3c]
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x38]
	call	create_hard_link
	mov	r12b, 1
	test	al, al
	mov	qword ptr [rbp - 0x70], r14
	jne	.label_230
	jmp	.label_235
.label_377:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, r14
	call	same_name
	test	al, al
	je	.label_272
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + top_level_src_name]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	mov	rcx, qword ptr [rbp + 0x28]
	test	rcx, rcx
	je	.label_230
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	je	.label_230
	mov	byte ptr [rcx], 1
	jmp	.label_230
.label_272:
	mov	ecx, dword ptr [r15 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_299
	and	al, byte ptr [rbp + 0x10]
	jne	.label_299
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_422
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	qword ptr [rbp - 0x70], r14
	jmp	.label_235
.label_299:
	mov	r12, r14
.label_320:
	cmp	byte ptr [r15 + 0x18], 0
	mov	ebx, dword ptr [rbp - 0x4c]
	je	.label_437
	cmp	r13d, 0x11
	mov	r14, qword ptr [rbp - 0x48]
	jne	.label_440
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x38]
	call	rename
	test	eax, eax
	je	.label_236
	call	__errno_location
	mov	r13d, dword ptr [rax]
.label_440:
	cmp	r13d, 0x16
	je	.label_239
	cmp	r13d, 0x12
	je	.label_241
	test	r13d, r13d
	jne	.label_242
.label_236:
	cmp	byte ptr [r15 + 0x2e], 0
	mov	rbx, qword ptr [rbp - 0x38]
	je	.label_247
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, qword ptr [rbp - 0x58]
	call	emit_verbose
.label_247:
	cmp	byte ptr [r15 + 0x21], 0
	je	.label_264
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	mov	rcx, r15
	call	set_file_security_ctx
.label_264:
	mov	rsi, rbx
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_268
	mov	byte ptr [rax], 1
.label_268:
	mov	r12b, 1
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_230
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_230
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x108]
	call	record_file
	jmp	.label_230
.label_239:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	r12b, 1
	jmp	.label_230
.label_241:
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_306
	mov	rdi, qword ptr [rbp - 0x38]
	call	rmdir
	jmp	.label_311
.label_242:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
	mov	edx, 5
	call	dcgettext
	mov	rdx, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	jmp	.label_321
.label_306:
	mov	rdi, qword ptr [rbp - 0x38]
	call	unlink
.label_311:
	test	eax, eax
	je	.label_432
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r13d, 2
	jne	.label_336
.label_432:
	cmp	ebx, 0x4000
	je	.label_338
	mov	al, byte ptr [r15 + 0x2e]
	test	al, al
	je	.label_338
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	call	emit_verbose
.label_338:
	mov	byte ptr [rbp - 0x29], 1
	mov	ebx, dword ptr [rbp - 0x4c]
.label_437:
	cmp	byte ptr [r15 + 0x2b], 0
	mov	r14d, ebx
	je	.label_356
	mov	r14d, dword ptr [r15 + 0x10]
.label_356:
	mov	r13d, 0x3f
	cmp	byte ptr [r15 + 0x1d], 0
	mov	rsi, qword ptr [rbp - 0x38]
	jne	.label_360
	mov	eax, ebx
	and	eax, 0xf000
	xor	ecx, ecx
	cmp	eax, 0x4000
	mov	r13d, 0x12
	cmovne	r13d, ecx
.label_360:
	movzx	ecx, byte ptr [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, r15
	call	set_process_security_ctx
	test	al, al
	je	.label_367
	mov	qword ptr [rbp - 0x70], r12
	and	r13d, r14d
	mov	r12d, ebx
	and	r12d, 0xf000
	cmp	r12d, 0x4000
	jne	.label_369
	lea	rdi, [rbp - 0x108]
	mov	rbx, qword ptr [rbp - 0x68]
	mov	rsi, rbx
	call	is_ancestor
	test	al, al
	je	.label_379
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
.label_279:
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_388
.label_367:
	xor	r12d, r12d
	jmp	.label_230
.label_369:
	cmp	byte ptr [r15 + 0x2c], 0
	mov	dword ptr [rbp - 0x50], r13d
	je	.label_393
	mov	r14, qword ptr [rbp - 0x48]
	cmp	byte ptr [r14], 0x2f
	je	.label_387
	mov	rdi, qword ptr [rbp - 0x38]
	call	dir_name
	mov	rbx, rax
	cmp	byte ptr [rbx], 0x2e
	jne	.label_398
	cmp	byte ptr [rbx + 1], 0
	je	.label_324
.label_398:
	lea	rsi, [rbp - 0x230]
	mov	edi, OFFSET FLAT:label_401
	call	stat
	test	eax, eax
	jne	.label_324
	lea	rsi, [rbp - 0x2c0]
	mov	rdi, rbx
	call	stat
	test	eax, eax
	je	.label_409
.label_324:
	mov	rdi, rbx
	call	free
.label_387:
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r14
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rdx, rbx
	call	force_symlinkat
	mov	r13d, eax
	test	r13d, r13d
	jle	.label_414
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbp - 0x48], rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, r12
	call	error
	jmp	.label_235
.label_379:
	mov	rax, rsp
	mov	rcx, rbx
	lea	rbx, [rax - 0x20]
	mov	rsp, rbx
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x100]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	mov	qword ptr [rax - 0x10], rcx
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_426
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	jne	.label_426
	cmp	byte ptr [r15 + 0x21], 0
	jne	.label_435
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_436
.label_435:
	movzx	esi, byte ptr [r15 + 0x25]
	xor	r14d, r14d
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r15
	call	set_file_security_ctx
	cmp	byte ptr [r15 + 0x26], 0
	mov	r13, qword ptr [rbp - 0x48]
	jne	.label_235
	mov	qword ptr [rbp - 0x68], rbx
	xor	ebx, ebx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_238
.label_426:
	mov	qword ptr [rbp - 0x68], rbx
	and	r14d, 0xfff
	mov	esi, r13d
	not	esi
	and	esi, r14d
	mov	r14d, r13d
	mov	r13, qword ptr [rbp - 0x38]
	mov	rdi, r13
	call	mkdir
	test	eax, eax
	je	.label_254
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	jmp	.label_257
.label_393:
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_261
	mov	r13b, 1
	cmp	byte ptr [r15 + 0x16], 0
	mov	al, 1
	jne	.label_263
	cmp	dword ptr [r15 + 8], 3
	sete	al
.label_263:
	movzx	edx, al
	movzx	r8d, byte ptr [rbp - 0x3c]
	xor	r14d, r14d
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	call	create_hard_link
	test	al, al
	je	.label_235
	jmp	.label_277
.label_336:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	mov	rdx, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	mov	rcx, r15
.label_321:
	call	error
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x100]
	call	forget_created
	jmp	.label_230
.label_254:
	lea	rsi, [rbp - 0x198]
	mov	rdi, r13
	call	lstat
	test	eax, eax
	je	.label_304
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
.label_257:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
.label_413:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_388:
	mov	rdx, rbx
.label_303:
	call	error
.label_235:
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_316
	call	restore_default_fscreatecon_or_die
.label_316:
	cmp	qword ptr [rbp - 0x70], 0
	mov	r12, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbp - 0x58]
	jne	.label_380
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x100]
	call	forget_created
.label_380:
	test	rbx, rbx
	je	.label_327
	mov	rdi, rbx
	mov	rsi, r12
	call	rename
	test	eax, eax
	je	.label_331
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rbx, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
	jmp	.label_335
.label_327:
	xor	r12d, r12d
	jmp	.label_230
.label_331:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_341
	mov	r15, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rbx
	call	__printf_chk
	jmp	.label_230
.label_341:
	xor	r12d, r12d
	jmp	.label_230
.label_261:
	cmp	r12d, 0x8000
	je	.label_362
	cmp	r12d, 0xa000
	je	.label_329
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	je	.label_329
.label_362:
	and	r14d, 0x1ff
	sub	rsp, 8
	lea	rax, [rbp - 0x108]
	lea	r9, [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, r15
	mov	ecx, r14d
	mov	r8d, r13d
	push	rax
	call	copy_reg
	add	rsp, 0x10
	test	al, al
	je	.label_235
	mov	bl, 1
	xor	r14d, r14d
	jmp	.label_383
.label_304:
	mov	ecx, dword ptr [rbp - 0x180]
	mov	eax, ecx
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	mov	dword ptr [rbp - 0x3c], ecx
	jne	.label_386
	xor	ebx, ebx
	mov	r13, qword ptr [rbp - 0x48]
	jmp	.label_391
.label_409:
	mov	rax, qword ptr [rbp - 0x228]
	cmp	rax, qword ptr [rbp - 0x2b8]
	jne	.label_392
	mov	rax, qword ptr [rbp - 0x230]
	mov	qword ptr [rbp - 0x68], rax
	mov	r13, qword ptr [rbp - 0x2c0]
	mov	rdi, rbx
	call	free
	cmp	qword ptr [rbp - 0x68], r13
	mov	r14, qword ptr [rbp - 0x48]
	je	.label_387
	jmp	.label_402
.label_329:
	movsx	eax, r12w
	cmp	eax, 0xfff
	jle	.label_403
	movzx	eax, r12w
	cmp	eax, 0x6000
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_407
	cmp	eax, 0x2000
	je	.label_407
	cmp	eax, 0x1000
	jne	.label_285
	mov	ebx, r13d
	not	ebx
	and	ebx, dword ptr [rbp - 0x4c]
	xor	r14d, r14d
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, ebx
	call	mknod
	mov	r13b, 1
	test	eax, eax
	je	.label_277
	and	ebx, 0xffffefff
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, ebx
	call	mkfifo
	test	eax, eax
	je	.label_417
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_419
	jmp	.label_283
.label_277:
	xor	ebx, ebx
	jmp	.label_301
.label_386:
	mov	esi, ecx
	or	esi, 0x1c0
	mov	rdi, qword ptr [rbp - 0x38]
	call	chmod
	mov	bl, 1
	test	eax, eax
	mov	r13, qword ptr [rbp - 0x48]
	je	.label_391
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
.label_283:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_413
.label_391:
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_434
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rsi, qword ptr [rbp - 0x190]
	mov	rdi, qword ptr [rbp - 0x38]
	call	remember_copied
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_434:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_238
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_229
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r13
	mov	r13, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_238
.label_315:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style_colon
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style_colon
	jmp	.label_410
.label_392:
	mov	rdi, rbx
	call	free
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style_colon
	jmp	.label_279
.label_403:
	movzx	eax, r12w
	cmp	eax, 0xa000
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_259
	cmp	eax, 0xc000
	jne	.label_285
.label_407:
	mov	esi, r13d
	not	esi
	and	esi, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rdi, rbx
	call	mknod
	test	eax, eax
	je	.label_297
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r12
	jmp	.label_303
.label_436:
	mov	qword ptr [rbp - 0x68], rbx
	xor	ebx, ebx
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x3c], eax
	mov	r13, qword ptr [rbp - 0x48]
	jmp	.label_238
.label_265:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	jmp	.label_310
.label_406:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
.label_310:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	jmp	.label_318
.label_229:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, qword ptr [rbp - 0x38]
	call	emit_verbose
.label_238:
	mov	qword ptr [rbp - 0x60], rbx
	mov	dword ptr [rbp - 0x50], r14d
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_326
	mov	al, byte ptr [r15 + 0x1c]
	test	al, al
	je	.label_326
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x108]
	jne	.label_333
.label_326:
	movzx	edx, byte ptr [rbp - 0x29]
	lea	rcx, [rbp - 0x108]
	mov	rdi, r13
	mov	rsi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x68]
	mov	r9, r15
	push	qword ptr [rbp + 0x20]
	push	qword ptr [rbp + 0x18]
	call	copy_dir
	add	rsp, 0x10
	mov	r13d, eax
	jmp	.label_350
.label_333:
	mov	r13b, 1
.label_350:
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_352
.label_427:
	mov	rbx, r13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
.label_430:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	jmp	.label_375
.label_297:
	mov	r13b, 1
.label_417:
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_301
.label_259:
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdi, rbx
	call	areadlink_with_size
	mov	r13, rax
	test	r13, r13
	je	.label_364
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r13
	mov	rdx, qword ptr [rbp - 0x38]
	call	force_symlinkat
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_389
	cmp	byte ptr [r15 + 0x2d], 0
	je	.label_337
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	jne	.label_337
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0xa000
	jne	.label_337
	mov	rbx, qword ptr [rbp - 0x168]
	mov	rdi, r13
	call	strlen
	cmp	rbx, rax
	jne	.label_337
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_337
	mov	rdi, rbx
	mov	rsi, r13
	call	strcmp
	mov	dword ptr [rbp - 0x68], eax
	mov	rdi, rbx
	call	free
	cmp	dword ptr [rbp - 0x68], 0
	je	.label_389
.label_337:
	mov	rdi, r13
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
	jmp	.label_283
.label_285:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	jmp	.label_303
.label_364:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	jmp	.label_413
.label_389:
	mov	rdi, r13
	call	free
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_416
	call	restore_default_fscreatecon_or_die
.label_416:
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_414
	mov	esi, dword ptr [rbp - 0xec]
	mov	edx, dword ptr [rbp - 0xe8]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lchown
	test	eax, eax
	je	.label_414
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	je	.label_237
.label_414:
	mov	r14b, 1
	xor	ebx, ebx
.label_383:
	mov	r13b, 1
.label_301:
	xor	eax, eax
	mov	qword ptr [rbp - 0x60], rax
.label_291:
	mov	dword ptr [rbp - 0x3c], eax
.label_352:
	mov	al, byte ptr [rbp + 0x10]
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_343
	cmp	r12d, 0x4000
	je	.label_343
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	mov	al, byte ptr [rbp + 0x10]
	jne	.label_343
	cmp	byte ptr [r15 + 0x21], 0
	jne	.label_431
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_343
.label_431:
	movzx	esi, byte ptr [r15 + 0x25]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r15
	call	set_file_security_ctx
	mov	al, byte ptr [rbp + 0x10]
	cmp	byte ptr [r15 + 0x26], 0
	jne	.label_235
.label_343:
	test	al, al
	je	.label_231
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_231
	lea	rsi, [rbp - 0x230]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lstat
	test	eax, eax
	jne	.label_231
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x230]
	mov	rsi, qword ptr [rbp - 0x38]
	call	record_file
.label_231:
	cmp	r12d, 0x4000
	je	.label_271
	mov	al, byte ptr [r15 + 0x17]
	test	al, al
	jne	.label_234
.label_271:
	test	bl, bl
	jne	.label_234
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_243
	lea	rbx, [rbp - 0x108]
	mov	rdi, rbx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x230], rax
	mov	qword ptr [rbp - 0x228], rdx
	mov	rdi, rbx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x220], rax
	mov	qword ptr [rbp - 0x218], rdx
	test	r14b, r14b
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rbp - 0x230]
	je	.label_260
	call	utimens_symlink
	jmp	.label_266
.label_260:
	call	utimens
.label_266:
	test	eax, eax
	je	.label_243
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_243
	xor	r12d, r12d
	jmp	.label_230
.label_243:
	test	r14b, r14b
	mov	rbx, qword ptr [rbp - 0x38]
	jne	.label_234
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_385
	cmp	byte ptr [rbp - 0x29], 0
	mov	r14, qword ptr [rbp - 0x48]
	jne	.label_296
	mov	eax, dword ptr [rbp - 0xec]
	cmp	eax, dword ptr [rbp - 0x17c]
	jne	.label_296
	mov	eax, dword ptr [rbp - 0xe8]
	cmp	eax, dword ptr [rbp - 0x178]
	je	.label_308
.label_296:
	movzx	r8d, byte ptr [rbp - 0x29]
	lea	rcx, [rbp - 0x108]
	lea	r9, [rbp - 0x198]
	mov	edx, 0xffffffff
	mov	rdi, r15
	mov	rsi, rbx
	call	set_owner
	cmp	eax, -1
	je	.label_439
	test	eax, eax
	jne	.label_308
	and	dword ptr [rbp - 0x4c], 0xfffff1ff
	jmp	.label_308
.label_385:
	mov	r14, qword ptr [rbp - 0x48]
.label_308:
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_276
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_314
.label_276:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r14
	mov	rdx, rbx
	mov	r8d, dword ptr [rbp - 0x4c]
	call	copy_acl
	test	eax, eax
	je	.label_234
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_234
.label_439:
	xor	r12d, r12d
	jmp	.label_230
.label_314:
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_323
	mov	edx, dword ptr [r15 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	call	set_acl
	test	eax, eax
	je	.label_234
	xor	r12d, r12d
	jmp	.label_230
.label_323:
	cmp	byte ptr [r15 + 0x20], 0
	je	.label_384
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	je	.label_384
	mov	eax, dword ptr [rbp - 0x4c]
	and	eax, 0x7000
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	call	cached_umask
	not	eax
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x38]
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	je	.label_234
	xor	r12d, r12d
	jmp	.label_230
.label_384:
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_262
	call	cached_umask
	not	eax
	and	dword ptr [rbp - 0x50], eax
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	jne	.label_258
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_258
	cmp	byte ptr [rbp - 0x29], 0
	je	.label_313
	lea	rsi, [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lstat
	test	eax, eax
	je	.label_313
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_381
.label_262:
	mov	dword ptr [rbp - 0x50], 0
	jmp	.label_258
.label_237:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x60], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_235
	mov	r14b, 1
	xor	ebx, ebx
	mov	r13b, 1
	jmp	.label_291
.label_313:
	mov	eax, dword ptr [rbp - 0x180]
	mov	dword ptr [rbp - 0x3c], eax
	not	eax
	test	dword ptr [rbp - 0x50], eax
	je	.label_258
	mov	al, 1
	mov	qword ptr [rbp - 0x60], rax
.label_258:
	mov	rax, qword ptr [rbp - 0x60]
	test	al, 1
	je	.label_234
	mov	esi, dword ptr [rbp - 0x3c]
	or	esi, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x38]
	call	chmod
	test	eax, eax
	je	.label_234
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_230
.label_234:
	test	r13b, r13b
	setne	r12b
	jmp	.label_230
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f80

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbx
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	call	geteuid
	test	eax, eax
	sete	byte ptr [rbx + 0x1b]
	sete	byte ptr [rbx + 0x1a]
	mov	dword ptr [rbx + 0x34], 0xffffffff
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fc0

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_443
	cmp	eax, 1
	jne	.label_441
.label_443:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	jmp	.label_442
.label_441:
	xor	eax, eax
.label_442:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ff0

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	cmp	dword ptr [dword ptr [rip + cached_umask.mask]],  -1
	jne	.label_444
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	add	rsp, 8
.label_444:
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406020

	.globl should_dereference
	.type should_dereference, @function
should_dereference:
	mov	ecx, dword ptr [rdi + 4]
	mov	al, 1
	cmp	ecx, 4
	je	.label_445
	cmp	ecx, 3
	sete	al
	and	al, sil
.label_445:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406040

	.globl same_file_ok
	.type same_file_ok, @function
same_file_ok:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r14, r9
	mov	r15, r8
	mov	rbx, rcx
	mov	rbp, rsi
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_459
	mov	rax, qword ptr [rbp]
	cmp	rax, qword ptr [rbx]
	mov	byte ptr [r14], 0
	jne	.label_465
	mov	r13b, 1
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_469
	mov	byte ptr [r14], 1
	mov	r12b, 1
	jmp	.label_446
.label_459:
	mov	byte ptr [r14], 0
.label_465:
	xor	r13d, r13d
.label_469:
	cmp	dword ptr [r15 + 4], 2
	jne	.label_450
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_452
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	mov	rsi, rbp
	jne	.label_448
	mov	rsi, rdx
	call	same_name
	test	al, al
	jne	.label_460
	mov	r12b, 1
	cmp	dword ptr [r15], 0
	jne	.label_446
	test	r13b, r13b
	je	.label_460
	mov	byte ptr [r14], 1
	jmp	.label_451
.label_450:
	mov	r12b, 1
	test	r13b, r13b
	je	.label_446
	mov	qword ptr [rsp + 8], rdi
	lea	rbx, [rsp + 0xa8]
	mov	rdi, rdx
	mov	rsi, rbx
	mov	r13, rdx
	call	lstat
	test	eax, eax
	jne	.label_446
	mov	qword ptr [rsp + 0x10], r13
	lea	r13, [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	lstat
	test	eax, eax
	jne	.label_446
	mov	rcx, r13
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_458
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0xa8]
	sete	r13b
	jmp	.label_463
.label_452:
	mov	rsi, rbp
.label_448:
	cmp	dword ptr [r15], 0
	je	.label_466
	test	r13b, r13b
	je	.label_468
	mov	rsi, rdx
	call	same_name
	mov	r12b, al
	xor	r12b, 1
	jmp	.label_446
.label_466:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_464
	cmp	byte ptr [r15 + 0x15], 0
	je	.label_457
.label_464:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_446
	test	r13b, r13b
	je	.label_457
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_457
	mov	r13, rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, rdx
	mov	r12, rdx
	call	same_name
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, r13
	mov	rdx, r12
	test	al, al
	je	.label_451
.label_457:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	je	.label_456
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_456
	mov	rax, qword ptr [rsi + 8]
	mov	r12b, 1
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_446
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [rbx]
	jne	.label_446
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_456
	mov	byte ptr [r14], 1
	jmp	.label_446
.label_468:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_449
	cmp	dword ptr [r15 + 4], 2
	je	.label_449
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_449
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_462
.label_449:
	mov	r12b, 1
	jmp	.label_446
.label_460:
	xor	al, 1
	mov	r12b, al
	jmp	.label_446
.label_456:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_447
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0xa000
	jne	.label_447
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_447
	mov	rbp, rdi
	mov	r12, rdx
	mov	r13, rsi
	call	canonicalize_file_name
	mov	rsi, r13
	mov	rdi, rbp
	mov	rdx, r12
	mov	rbp, rax
	test	rbp, rbp
	je	.label_447
	mov	rdi, rbp
	mov	rsi, rdx
	call	same_name
	mov	r12b, al
	xor	r12b, 1
	mov	rdi, rbp
	call	free
	jmp	.label_446
.label_447:
	cmp	byte ptr [r15 + 0x2c], 0
	je	.label_461
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_446
.label_461:
	cmp	dword ptr [r15 + 4], 2
	jne	.label_462
	mov	rbp, rdx
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_467
	lea	rsi, [rsp + 0x18]
	call	stat
	mov	r12b, 1
	test	eax, eax
	mov	rdi, rbp
	jne	.label_446
	jmp	.label_453
.label_451:
	cmp	byte ptr [r15 + 0x18], 0
	sete	r12b
	jmp	.label_446
.label_458:
	xor	r13d, r13d
.label_463:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rcx
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x30]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_448
	and	eax, dword ptr [rsp + 0xc0]
	cmp	eax, 0xa000
	jne	.label_448
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_446
	jmp	.label_448
.label_467:
	lea	rdi, [rsp + 0x18]
	mov	edx, 0x90
	call	memcpy
	mov	rdi, rbp
.label_453:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_454
	lea	rsi, [rsp + 0xa8]
	call	stat
	mov	r12b, 1
	test	eax, eax
	jne	.label_446
	jmp	.label_455
.label_454:
	lea	rdi, [rsp + 0xa8]
	mov	edx, 0x90
	mov	rsi, rbx
	call	memcpy
.label_455:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12b, 1
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_446
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0xa8]
	jne	.label_446
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_462
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	setne	byte ptr [r14]
	jmp	.label_446
.label_462:
	xor	r12d, r12d
.label_446:
	mov	eax, r12d
	add	rsp, 0x138
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
	#Procedure 0x406420

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12d, ecx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	r8d, r8b
	shl	r8d, 0xa
	mov	dword ptr [rsp], 0xffffffff
	movzx	r9d, dl
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rbx
	mov	rcx, r15
	call	force_linkat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_472
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_470
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_471
.label_472:
	test	ebp, ebp
	mov	r14b, 1
	je	.label_471
	xor	r12b, 1
	jne	.label_471
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_471:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406510

	.globl abandon_move
	.type abandon_move, @function
abandon_move:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x18], 0
	je	.label_477
	mov	ecx, dword ptr [rbx + 8]
	mov	al, 1
	cmp	ecx, 2
	je	.label_473
	cmp	ecx, 3
	je	.label_476
	cmp	ecx, 4
	jne	.label_478
	cmp	byte ptr [rbx + 0x2f], 0
	je	.label_478
	mov	esi, dword ptr [r14 + 0x18]
	mov	rdi, r15
	call	writable_destination
	test	al, al
	je	.label_476
.label_478:
	xor	eax, eax
	jmp	.label_473
.label_476:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	overwrite_ok
	xor	al, 1
.label_473:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_477:
	mov	edi, OFFSET FLAT:label_474
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 0x6d2
	mov	ecx, OFFSET FLAT:label_475
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406590

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	esi, dword ptr [r13 + 0x18]
	mov	rdi, r14
	call	writable_destination
	test	al, al
	je	.label_483
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_484
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rbx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, rbp
	call	__fprintf_chk
	jmp	.label_479
.label_483:
	mov	edi, dword ptr [r13 + 0x18]
	lea	rsi, [rsp + 0xc]
	call	strmode
	mov	byte ptr [rsp + 0x16], 0
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	cmp	byte ptr [rbx + 0x18], 0
	jne	.label_480
	cmp	byte ptr [rbx + 0x15], 0
	jne	.label_480
	cmp	byte ptr [rbx + 0x16], 0
	je	.label_481
.label_480:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_482
.label_486:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rbp,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbx, rax
	mov	r9d, dword ptr [r13 + 0x18]
	and	r9d, 0xfff
	lea	rax, [rsp + 0xd]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	__fprintf_chk
.label_479:
	call	yesno
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_481:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_485
	jmp	.label_486
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066b0

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	cmp	byte ptr [rdi], 0x2e
	jne	.label_487
	xor	eax, eax
	cmp	byte ptr [rdi + 1], 0x2e
	sete	al
	mov	al, byte ptr [rdi + rax + 1]
	test	al, al
	sete	cl
	cmp	al, 0x2f
	sete	al
	or	al, cl
	ret	
.label_487:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066e0

	.globl source_is_dst_backup
	.type source_is_dst_backup, @function
source_is_dst_backup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	rbp, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, rdi
	call	strlen
	mov	r15, rax
	mov	qword ptr [rsp + 0x10], rbp
	mov	rdi, rbp
	call	last_component
	mov	r14, rax
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	mov	r13,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, r13
	call	strlen
	mov	r12, rax
	lea	rax, [r12 + rbp]
	cmp	r15, rax
	jne	.label_488
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	jne	.label_488
	add	rbx, rbp
	mov	rdi, rbx
	mov	rsi, r13
	call	strcmp
	test	eax, eax
	jne	.label_488
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	lea	rdi, [r12 + rbx + 1]
	call	xmalloc
	mov	rbp, rax
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, rax
	call	strcpy
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbp
	call	stat
	mov	ebx, eax
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	jne	.label_488
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_488
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	al
	jmp	.label_489
.label_488:
	xor	eax, eax
.label_489:
	add	rsp, 0xa8
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
	#Procedure 0x406800

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rax, rdi
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rax
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_490
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
	test	r14, r14
	je	.label_491
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_492
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_491:
	mov	edi, 0xa
	pop	rbx
	pop	r14
	pop	r15
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068a0

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	test	rsi, rsi
	je	.label_493
	mov	rcx, qword ptr [rdi + 8]
	nop	dword ptr [rax]
.label_496:
	cmp	qword ptr [rsi + 8], rcx
	jne	.label_494
	mov	rdx, qword ptr [rsi + 0x10]
	mov	al, 1
	cmp	rdx, qword ptr [rdi]
	je	.label_495
.label_494:
	mov	rsi, qword ptr [rsi]
	test	rsi, rsi
	jne	.label_496
.label_493:
	xor	eax, eax
.label_495:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068d0

	.globl copy_dir
	.type copy_dir, @function
copy_dir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rbp, r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15d, edx
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbx, rdi
	movups	xmm0, xmmword ptr [rbp + 0x40]
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmm2, xmmword ptr [rbp + 0x20]
	movups	xmm3, xmmword ptr [rbp + 0x30]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	esi, 2
	call	savedir
	test	rax, rax
	je	.label_502
	cmp	dword ptr [rbp + 4], 3
	jne	.label_498
	mov	dword ptr [rsp + 0x34], 2
.label_498:
	cmp	byte ptr [rax], 0
	mov	qword ptr [rsp + 8], rax
	mov	r14b, 1
	je	.label_497
	xor	ebp, ebp
	movzx	ecx, r15b
	mov	dword ptr [rsp + 4], ecx
	mov	r13, rax
	mov	qword ptr [rsp + 0x10], rbx
	nop	word ptr [rax + rax]
.label_503:
	mov	byte ptr [rsp + 2], r14b
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r13
	call	file_name_concat
	mov	r15, rax
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	file_name_concat
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0xc0]
	movzx	eax, byte ptr [rax]
	mov	byte ptr [rsp + 1], al
	mov	rdi, r15
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x28]
	lea	r9, [rsp + 0x30]
	push	0
	lea	rax, [rsp + 0xb]
	push	rax
	lea	rax, [rsp + 0x11]
	push	rax
	push	0
	call	copy_internal
	add	rsp, 0x20
	mov	r14d, eax
	and	r14b, byte ptr [rsp + 2]
	movzx	ebx, byte ptr [rsp + 3]
	mov	rax, qword ptr [rsp + 0xc8]
	or	byte ptr [rax], bl
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
	test	bl, bl
	jne	.label_500
	or	bpl, byte ptr [rsp + 1]
	mov	rdi, r13
	call	strlen
	cmp	byte ptr [r13 + rax + 1], 0
	lea	r13, [r13 + rax + 1]
	mov	rbx, qword ptr [rsp + 0x10]
	jne	.label_503
	jmp	.label_500
.label_502:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	jmp	.label_499
.label_497:
	xor	ebp, ebp
.label_500:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rax, qword ptr [rsp + 0xc0]
	mov	byte ptr [rax], bpl
	test	r14b, r14b
	setne	bpl
.label_499:
	mov	eax, ebp
	add	rsp, 0x88
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
	#Procedure 0x406aa0

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x198
	mov	qword ptr [rsp + 0x28], r9
	mov	r14d, r8d
	mov	r13d, ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rsp + 0x1d0]
	mov	eax, dword ptr [rax + 0x18]
	mov	dword ptr [rsp + 0x44], eax
	mov	al, byte ptr [r12 + 0x23]
	mov	byte ptr [rsp + 0x18], al
	xor	esi, esi
	cmp	dword ptr [r12 + 4], 2
	sete	sil
	shl	esi, 0x11
	xor	eax, eax
	call	open_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_535
	mov	qword ptr [rsp + 0x30], r15
	lea	rsi, [rsp + 0x108]
	mov	edi, ebx
	call	fstat
	test	eax, eax
	mov	dword ptr [rsp + 0x14], ebx
	je	.label_539
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_528
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_546
.label_535:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_548
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_538
.label_539:
	mov	rcx, qword ptr [rsp + 0x1d0]
	mov	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rsp + 0x110]
	jne	.label_554
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rsp + 0x108]
	jne	.label_554
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_532
	mov	dword ptr [rsp + 0x38], r13d
	cmp	byte ptr [r12 + 0x23], 0
	mov	eax, 0x201
	mov	esi, 1
	cmovne	esi, eax
	xor	eax, eax
	mov	qword ptr [rsp], rbp
	mov	rdi, rbp
	call	open_safer
	mov	r15d, eax
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 0x10], eax
	cmp	byte ptr [r12 + 0x21], 0
	je	.label_565
	test	r15d, r15d
	jns	.label_505
	jmp	.label_506
.label_554:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_507
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
.label_531:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_545:
	mov	rdx, rbx
.label_546:
	call	error
	xor	ebp, ebp
.label_553:
	mov	edi, dword ptr [rsp + 0x14]
	call	close
	test	eax, eax
	jns	.label_516
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 5
	call	dcgettext
	mov	rbx, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	mov	rbp, rbx
	call	error
.label_516:
	mov	rdi, rbp
	call	free
	and	r13b, 1
.label_538:
	and	r13b, 1
	mov	eax, r13d
	add	rsp, 0x198
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_565:
	test	r15d, r15d
	js	.label_530
	mov	al, byte ptr [r12 + 0x25]
	test	al, al
	je	.label_530
.label_505:
	movzx	esi, byte ptr [r12 + 0x25]
	xor	ebp, ebp
	xor	edx, edx
	mov	rdi, qword ptr [rsp]
	mov	rcx, r12
	call	set_file_security_ctx
	xor	r13d, r13d
	cmp	byte ptr [r12 + 0x26], 0
	jne	.label_525
.label_530:
	test	r15d, r15d
	jns	.label_536
.label_506:
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_536
	mov	rbp, qword ptr [rsp]
	mov	rdi, rbp
	call	unlink
	test	eax, eax
	je	.label_542
	mov	r14d, dword ptr [rbx]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
	jmp	.label_543
.label_542:
	cmp	byte ptr [r12 + 0x2e], 0
	je	.label_544
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r13
	mov	rdx, rcx
	call	__printf_chk
.label_544:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax], 1
	cmp	byte ptr [r12 + 0x21], 0
	je	.label_550
	mov	ecx, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp]
	mov	r8, r12
	call	set_process_security_ctx
	xor	r13d, r13d
	test	al, al
	mov	ebp, 0
	je	.label_553
.label_536:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	mov	rbp, qword ptr [rsp]
	mov	r13d, dword ptr [rsp + 0x38]
	mov	ebx, dword ptr [rsp + 0x10]
	jne	.label_532
	jmp	.label_560
.label_550:
	mov	rbp, qword ptr [rsp]
	mov	r13d, dword ptr [rsp + 0x38]
.label_532:
	mov	rdi, rbp
	mov	eax, r13d
	mov	edx, r14d
	not	edx
	and	edx, eax
	mov	esi, 0xc1
	xor	eax, eax
	mov	dword ptr [rsp], edx
	call	open_safer
	mov	r15d, eax
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ebx, dword ptr [rax]
	test	r15d, r15d
	mov	dword ptr [rsp + 0xc], r15d
	jns	.label_504
	cmp	ebx, 0x11
	jne	.label_504
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_504
	lea	rsi, [rsp + 0x78]
	mov	rdi, rbp
	call	lstat
	test	eax, eax
	je	.label_509
	mov	r15d, dword ptr [rsp + 0xc]
	jmp	.label_504
.label_509:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x90]
	cmp	eax, 0xa000
	mov	r15d, dword ptr [rsp + 0xc]
	jne	.label_504
	cmp	byte ptr [r12 + 0x30], 0
	je	.label_514
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, rbp
	mov	edx, dword ptr [rsp]
	call	open_safer
	mov	r15d, eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	ebx, dword ptr [rax]
.label_504:
	cmp	ebx, 0x15
	jne	.label_518
	test	r15d, r15d
	jns	.label_518
	cmp	byte ptr [rbp], 0
	je	.label_518
	mov	rdi, rbp
	call	strlen
	cmp	byte ptr [rbp + rax - 1], 0x2f
	mov	eax, 0x14
	cmove	ebx, eax
.label_518:
	mov	ecx, r14d
.label_560:
	test	r15d, r15d
	js	.label_523
	mov	dword ptr [rsp + 0x10], ecx
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsp + 0x78]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	je	.label_526
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_528
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	xor	ebp, ebp
	jmp	.label_525
.label_523:
	cmp	ebx, 2
	jne	.label_512
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_512
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_537
.label_512:
	xor	r13d, r13d
	xor	edi, edi
	mov	r14d, ebx
	mov	esi, OFFSET FLAT:label_540
.label_543:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_545
.label_526:
	mov	dword ptr [rsp + 0x38], r13d
	mov	r13b, 1
	xor	ebp, ebp
	cmp	byte ptr [rsp + 0x18], 0
	je	.label_547
	cmp	dword ptr [r12 + 0x38], 0
	je	.label_510
	mov	edi, r15d
	mov	esi, dword ptr [rsp + 0x14]
	call	clone_file
	xor	ebp, ebp
	test	eax, eax
	je	.label_547
	cmp	dword ptr [r12 + 0x38], 2
	jne	.label_510
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x28], eax
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_552
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x28]
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	xor	ebp, ebp
	jmp	.label_525
.label_510:
	call	getpagesize
	cdqe	
	mov	qword ptr [rsp + 0x48], rax
	sub	rsp, 0x90
	lea	rsi, [rsp + 0x108]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	add	rsp, 0x90
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0xb0]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	mov	qword ptr [rsp + 0x70], rdx
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 0x14]
	call	fdadvise
	lea	rdi, [rsp + 0x108]
	call	is_probably_sparse
	mov	r13d, 0xf000
	mov	ecx, dword ptr [rsp + 0x90]
	and	ecx, r13d
	cmp	ecx, 0x8000
	mov	dword ptr [rsp + 0xc], r15d
	mov	byte ptr [rsp + 0x26], al
	jne	.label_520
	mov	ecx, dword ptr [r12 + 0xc]
	cmp	ecx, 2
	sete	dl
	cmp	ecx, 3
	mov	cl, 1
	mov	dword ptr [rsp + 0x40], ecx
	je	.label_524
	and	dl, al
	jne	.label_524
.label_520:
	movabs	rbp, 0x7fffffffffffffff
	sub	rbp, qword ptr [rsp + 0x48]
	sub	rsp, 0x90
	lea	rsi, [rsp + 0x198]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	add	rsp, 0x90
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, rbp
	call	buffer_lcm
	mov	rcx, rax
	and	r13d, dword ptr [rsp + 0x120]
	cmp	r13d, 0x8000
	jne	.label_563
	mov	rax, qword ptr [rsp + 0x138]
	cmp	rax, r14
	lea	rax, [rax + 1]
	cmovb	r14, rax
.label_563:
	lea	r14, [rcx + r14 - 1]
	xor	edx, edx
	mov	rax, r14
	div	rcx
	sub	r14, rdx
	lea	rax, [r14 - 1]
	cmp	rax, rbp
	cmovae	r14, rcx
	mov	dword ptr [rsp + 0x40], 0
.label_524:
	mov	r13, qword ptr [rsp]
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rbx]
	call	xmalloc
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	ptr_align
	cmp	byte ptr [rsp + 0x26], 0
	mov	edi, ebp
	mov	ebx, dword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rsp + 0x70]
	je	.label_549
	mov	r11d, 1
	mov	r9, qword ptr [rsp + 0x138]
	test	bl, bl
	je	.label_551
	mov	r11d, dword ptr [r12 + 0xc]
.label_551:
	lea	r10, [rsp + 0x50]
	mov	esi, dword ptr [rsp + 0xc]
	mov	qword ptr [rsp + 0x48], rax
	mov	rdx, rax
	mov	rcx, r14
	mov	r8, rbp
	push	r10
	mov	r15, r13
	push	r13
	push	qword ptr [rsp + 0x40]
	push	r11
	call	extent_copy
	add	rsp, 0x20
	test	al, al
	je	.label_558
	mov	r13b, 1
	mov	ecx, 5
	jmp	.label_561
.label_537:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax], 1
	mov	r14d, ecx
	jmp	.label_532
.label_558:
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_564
	mov	r13, r15
	mov	rax, qword ptr [rsp + 0x48]
	mov	edi, dword ptr [rsp + 0x14]
.label_549:
	xor	ecx, ecx
	test	bl, bl
	cmove	rbp, rcx
	xor	r9d, r9d
	cmp	dword ptr [r12 + 0xc], 3
	sete	r9b
	sub	rsp, 8
	lea	rbx, [rsp + 0x2f]
	lea	r10, [rsp + 0x58]
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, rax
	mov	rcx, r14
	mov	r8, rbp
	push	rbx
	push	r10
	push	-1
	push	r13
	push	qword ptr [rsp + 0x58]
	call	sparse_copy
	add	rsp, 0x30
	mov	ecx, 3
	test	al, al
	je	.label_513
	mov	r13b, 1
	cmp	byte ptr [rsp + 0x27], 0
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_515
	mov	rsi, qword ptr [rsp + 0x50]
	mov	r15d, dword ptr [rsp + 0xc]
	mov	edi, r15d
	call	ftruncate
	test	eax, eax
	mov	ecx, 0
	jns	.label_522
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_521
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	mov	ecx, 3
	jmp	.label_522
.label_514:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_529
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	jmp	.label_531
.label_515:
	xor	ecx, ecx
	mov	r15d, dword ptr [rsp + 0xc]
	jmp	.label_522
.label_564:
	mov	ecx, 3
.label_513:
	xor	r13d, r13d
.label_561:
	mov	r15d, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x18]
.label_522:
	cmp	ecx, 5
	je	.label_547
	cmp	ecx, 3
	je	.label_525
	test	ecx, ecx
	jne	.label_538
.label_547:
	mov	qword ptr [rsp + 0x18], rbp
	cmp	byte ptr [r12 + 0x1f], 0
	je	.label_541
	mov	rbp, qword ptr [rsp + 0x1d0]
	mov	rdi, rbp
	call	get_stat_atime
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x58], rdx
	mov	rdi, rbp
	call	get_stat_mtime
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdx, [rsp + 0x50]
	mov	edi, r15d
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	call	fdutimens
	test	eax, eax
	je	.label_541
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	cmp	byte ptr [r12 + 0x24], 0
	jne	.label_559
.label_541:
	cmp	byte ptr [r12 + 0x1d], 0
	je	.label_556
	mov	rcx, qword ptr [rsp + 0x1d0]
	mov	eax, dword ptr [rcx + 0x1c]
	cmp	eax, dword ptr [rsp + 0x94]
	mov	rbp, qword ptr [rsp + 0x30]
	jne	.label_557
	mov	eax, dword ptr [rcx + 0x20]
	cmp	eax, dword ptr [rsp + 0x98]
	je	.label_562
.label_557:
	mov	rax, qword ptr [rsp + 0x28]
	movzx	r8d, byte ptr [rax]
	lea	r9, [rsp + 0x78]
	mov	rdi, r12
	mov	rsi, qword ptr [rsp]
	mov	edx, r15d
	call	set_owner
	cmp	eax, -1
	je	.label_559
	test	eax, eax
	mov	ecx, dword ptr [rsp + 0x10]
	jne	.label_566
	and	dword ptr [rsp + 0x44], 0xfffff1ff
	jmp	.label_566
.label_559:
	xor	r13d, r13d
	jmp	.label_511
.label_556:
	mov	rbp, qword ptr [rsp + 0x30]
.label_562:
	mov	ecx, dword ptr [rsp + 0x10]
.label_566:
	cmp	byte ptr [r12 + 0x27], 0
	je	.label_508
	cmp	byte ptr [rsp + 0x90], 0
	js	.label_508
	call	geteuid
	mov	ecx, dword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_508
	mov	edx, 0x180
	mov	edi, r15d
	mov	rsi, qword ptr [rsp]
	call	fchmod_or_lchmod
	mov	ecx, dword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_508
	mov	edx, ecx
	not	edx
	and	edx, dword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	rsi, qword ptr [rsp]
	call	fchmod_or_lchmod
	mov	ecx, dword ptr [rsp + 0x10]
.label_508:
	cmp	byte ptr [r12 + 0x1e], 0
	jne	.label_519
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_534
.label_519:
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp]
	mov	ecx, r15d
	mov	r8d, dword ptr [rsp + 0x44]
	call	copy_acl
	test	eax, eax
	je	.label_511
	cmp	byte ptr [r12 + 0x24], 0
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_525
	xor	r13d, r13d
	jmp	.label_525
.label_534:
	cmp	byte ptr [r12 + 0x2b], 0
	je	.label_527
	mov	edx, dword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rsp]
	mov	esi, r15d
	call	set_acl
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_525
	xor	r13d, r13d
	jmp	.label_525
.label_527:
	cmp	byte ptr [r12 + 0x20], 0
	je	.label_533
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	je	.label_533
	call	cached_umask
	not	eax
	and	eax, 0x1b6
	mov	rdi, qword ptr [rsp]
	mov	esi, r15d
	mov	edx, eax
	call	set_acl
	test	eax, eax
	je	.label_511
	xor	r13d, r13d
	jmp	.label_511
.label_533:
	test	ecx, ecx
	mov	ebp, ecx
	je	.label_511
	call	cached_umask
	not	eax
	test	ebp, eax
	je	.label_511
	mov	ebp, r15d
	mov	edi, r15d
	mov	rsi, qword ptr [rsp]
	mov	edx, dword ptr [rsp + 0x38]
	call	fchmod_or_lchmod
	test	eax, eax
	je	.label_555
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	cmp	byte ptr [r12 + 0x24], 0
	je	.label_555
	xor	r13d, r13d
.label_555:
	mov	r15d, ebp
.label_511:
	mov	rbp, qword ptr [rsp + 0x18]
.label_525:
	mov	edi, r15d
	call	close
	test	eax, eax
	jns	.label_553
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_517
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_553
	nop	
	.section	.text
	.align	32
	#Procedure 0x4075e0

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rbx
	xor	edi, edi
	call	setfscreatecon
	test	eax, eax
	jne	.label_568
	pop	rbx
	ret	
.label_568:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_567
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407620

	.globl utimens_symlink
	.type utimens_symlink, @function
utimens_symlink:
	push	rbx
	call	lutimens
	mov	ebx, eax
	test	ebx, ebx
	je	.label_569
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0x26
	cmove	ebx, ecx
	mov	eax, ebx
	pop	rbx
	ret	
.label_569:
	xor	eax, eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407650

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_575
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_583
	mov	edx, dword ptr [r9 + 0x18]
	jmp	.label_572
.label_583:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_570
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_575
.label_570:
	mov	edx, dword ptr [r9 + 0x18]
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_572
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_579
.label_572:
	add	rcx, 0x18
.label_578:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, edx
	test	cx, 0xfff
	je	.label_575
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	esi, ebx
	call	qset_acl
	test	eax, eax
	je	.label_575
	mov	rdi, r15
	call	owner_failure_ok
	test	al, al
	jne	.label_581
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_582
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_581:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_573
.label_575:
	cmp	ebx, -1
	je	.label_574
	mov	edi, ebx
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_573
	call	__errno_location
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	cmp	eax, 0x16
	je	.label_576
	cmp	eax, 1
	jne	.label_580
.label_576:
	mov	r13d, dword ptr [rbp]
	mov	esi, 0xffffffff
	mov	edi, ebx
	mov	edx, r12d
	call	fchown
	mov	dword ptr [rbp], r13d
	jmp	.label_580
.label_574:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_573
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	cmp	eax, 0x16
	je	.label_577
	cmp	eax, 1
	jne	.label_580
.label_577:
	mov	ebp, dword ptr [rbx]
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
	mov	dword ptr [rbx], ebp
.label_580:
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	jne	.label_571
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	eax, 0xffffffff
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_573
.label_571:
	xor	eax, eax
.label_573:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_579:
	lea	rcx, [r15 + 0x10]
	jmp	.label_578
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407830

	.globl writable_destination
	.type writable_destination, @function
writable_destination:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	and	esi, 0xf000
	mov	bl, 1
	cmp	esi, 0xa000
	je	.label_584
	call	can_write_any_file
	test	al, al
	jne	.label_584
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	sete	bl
.label_584:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407870

	.globl clone_file
	.type clone_file, @function
clone_file:
	mov	ecx, esi
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edx, ecx
	jmp	ioctl
	.section	.text
	.align	32
	#Procedure 0x407880

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	setle	al
	movabs	rdx, 0x2000000000000000
	cmp	rcx, rdx
	seta	dl
	cmp	rcx, 0x20000
	jl	.label_585
	or	al, dl
	jne	.label_585
	movabs	rax, 0x2000000000000001
	cmp	rcx, rax
	mov	edx, 0x200
	mov	eax, 0x200
	cmovb	rax, rcx
	test	rcx, rcx
	cmovle	rax, rdx
	ret	
.label_585:
	mov	eax, 0x20000
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078e0

	.globl is_probably_sparse
	.type is_probably_sparse, @function
is_probably_sparse:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	cmp	eax, 0x8000
	jne	.label_586
	mov	rax, qword ptr [rdi + 0x30]
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x37
	add	rcx, rax
	sar	rcx, 9
	cmp	qword ptr [rdi + 0x40], rcx
	setl	al
	ret	
.label_586:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x407910

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407930

	.globl extent_copy
	.type extent_copy, @function
extent_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x20], r9
	mov	rbp, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	rbx, qword ptr [rsp + 0xc8]
	lea	r14, [rsp + 0x48]
	mov	dword ptr [rsp + 0x14], edi
	mov	rsi, r14
	call	extent_scan_init
	mov	byte ptr [rbx], 0
	xor	r12d, r12d
	cmp	dword ptr [rsp + 0xb0], 3
	cmovne	rbp, r12
	mov	qword ptr [rsp + 0x38], rbp
	mov	al, 1
	mov	dword ptr [rsp + 0x10], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
.label_593:
	mov	rdi, r14
	call	extent_scan_read
	test	al, al
	je	.label_594
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_597
	mov	r14d, 1
	xor	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_603:
	mov	rax, qword ptr [rsp + 0x70]
	lea	rcx, [rcx + rcx*2]
	mov	r15, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rax + rcx*8 + 8]
	lea	rax, [rbx + r15]
	cmp	rax, rsi
	jle	.label_606
	cmp	r15, rsi
	cmovg	r15, rsi
	mov	rbx, rsi
	sub	rbx, r15
.label_606:
	mov	rbp, r15
	sub	rbp, r13
	sub	rbp, r12
	je	.label_611
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsi, r15
	call	lseek
	test	rax, rax
	js	.label_587
	mov	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 1
	jne	.label_604
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rbp
	call	write_zeros
	test	al, al
	je	.label_595
.label_611:
	xor	ebp, ebp
	jmp	.label_599
	nop	
.label_604:
	xor	edx, edx
	cmp	eax, 3
	sete	dl
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	rcx, rbp
	call	create_hole
	mov	bpl, 1
	test	al, al
	je	.label_592
.label_599:
	sub	rsp, 8
	mov	r9d, 1
	mov	edi, dword ptr [rsp + 0x1c]
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x40]
	lea	rax, [rsp + 0x13]
	push	rax
	lea	rax, [rsp + 0x50]
	push	rax
	push	rbx
	push	qword ptr [rsp + 0xe0]
	push	qword ptr [rsp + 0xe0]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_592
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdx + r15]
	movzx	eax, byte ptr [rsp + 0xb]
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdi, rsi
	je	.label_616
	mov	dword ptr [rsp + 0x10], ebp
	mov	ecx, r14d
	inc	r14d
	cmp	rcx, qword ptr [rsp + 0x60]
	mov	r13, r15
	mov	r12, rbx
	jb	.label_603
	mov	qword ptr [rsp + 0x18], rdi
	test	rdx, rdx
	lea	r14, [rsp + 0x48]
	je	.label_590
	mov	dword ptr [rsp + 0x10], eax
	jmp	.label_590
	nop	dword ptr [rax]
.label_597:
	mov	r15, r13
	mov	rbx, r12
	jmp	.label_590
.label_616:
	mov	qword ptr [rsp + 0x18], rdi
	test	rdx, rdx
	je	.label_613
	mov	bpl, al
.label_613:
	mov	dword ptr [rsp + 0x10], ebp
	mov	byte ptr [rsp + 0x69], 1
	lea	r14, [rsp + 0x48]
.label_590:
	mov	rdi, r14
	call	extent_scan_free
	cmp	byte ptr [rsp + 0x69], 0
	mov	r12, rbx
	mov	r13, r15
	je	.label_593
	jmp	.label_600
.label_587:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_607
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xb8]
	call	quotearg_style
	jmp	.label_601
.label_595:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_610
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xc0]
	call	quotearg_n_style_colon
.label_601:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_592:
	lea	rdi, [rsp + 0x48]
	call	extent_scan_free
.label_589:
	xor	r14d, r14d
.label_591:
	mov	eax, r14d
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_594:
	cmp	byte ptr [rsp + 0x69], 0
	je	.label_605
.label_600:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rsi, rcx
	jl	.label_608
	mov	eax, dword ptr [rsp + 0x10]
	and	al, 1
	je	.label_596
.label_608:
	cmp	dword ptr [rsp + 0xb0], 1
	jne	.label_609
	sub	rcx, rsi
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rcx
	call	write_zeros
	mov	r14b, 1
	test	al, al
	jne	.label_591
	jmp	.label_612
.label_605:
	cmp	byte ptr [rsp + 0x68], 0
	je	.label_615
	mov	rax, qword ptr [rsp + 0xc8]
	mov	byte ptr [rax], 1
	jmp	.label_589
.label_609:
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rcx
	call	ftruncate
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_596
.label_612:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_521
	jmp	.label_602
.label_596:
	cmp	dword ptr [rsp + 0xb0], 3
	mov	r14b, 1
	jne	.label_591
	cmp	rsi, rcx
	jge	.label_591
	sub	rcx, rsi
	mov	edi, dword ptr [rsp + 0xc]
	mov	rdx, rcx
	call	punch_hole
	test	eax, eax
	jns	.label_591
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_614
.label_602:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	jmp	.label_598
.label_615:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_588
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xb8]
	call	quotearg_n_style_colon
.label_598:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_591
	nop	
	.section	.text
	.align	32
	#Procedure 0x407cf0

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x1c], r9d
	mov	r15, r8
	mov	r13, rdx
	mov	dword ptr [rsp + 4], esi
	mov	dword ptr [rsp + 0x3c], edi
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	r14, qword ptr [rsp + 0x90]
	mov	byte ptr [rax], 0
	mov	qword ptr [rdx], 0
	test	r15, r15
	mov	rax, rcx
	cmovne	rax, r15
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_638
.label_637:
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp + 0x10], r8
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], r14b
	mov	r14, qword ptr [rsp + 0x90]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	nop	dword ptr [rax + rax]
.label_638:
	cmp	rsi, rcx
	mov	r12, rcx
	cmovb	r12, rsi
	mov	qword ptr [rsp + 0x30], rsi
	nop	
.label_630:
	test	rsi, rsi
	je	.label_625
	mov	edi, dword ptr [rsp + 0x3c]
	mov	rsi, r13
	mov	rdx, r12
	call	read
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_629
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 4
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_630
	jmp	.label_633
	nop	word ptr cs:[rax + rax]
.label_629:
	je	.label_625
	sub	qword ptr [rsp + 0x30], rbx
	mov	rax, qword ptr [rsp + 0xa8]
	add	qword ptr [rax], rbx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r14d, r8d
	and	r14b, 1
	mov	qword ptr [rsp + 0x20], r13
	mov	rdi, r13
	mov	r12, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x40], r15
	nop	dword ptr [rax]
.label_635:
	mov	r9d, r14d
	cmp	r12, rbx
	cmovae	r12, rbx
	test	r15, r15
	je	.label_627
	test	r12, r12
	je	.label_627
	mov	rsi, r12
	mov	r14, rdi
	mov	r13d, r9d
	call	is_nul
	mov	r9d, r13d
	mov	rdi, r14
	mov	r8b, al
.label_627:
	mov	r14d, r8d
	and	r14b, 1
	cmp	r14b, r9b
	setne	al
	mov	rsi, rbp
	test	rbp, rbp
	setne	r13b
	cmp	rbx, r12
	sete	cl
	test	r14b, r14b
	sete	dl
	and	dl, cl
	test	r12, r12
	sete	bpl
	or	bpl, dl
	and	r13b, al
	jne	.label_632
	test	bpl, bpl
	jne	.label_632
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	mov	rbp, rsi
	cmp	rbp, rax
	mov	r13, qword ptr [rsp + 0x28]
	ja	.label_618
	add	rbp, r12
	jmp	.label_626
	nop	word ptr [rax + rax]
.label_632:
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], r8
	test	r13b, 1
	mov	r15, r12
	mov	eax, 0
	cmovne	r15, rax
	add	r15, rsi
	test	r9b, r9b
	je	.label_628
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, r15
	call	create_hole
	test	al, al
	jne	.label_620
	jmp	.label_639
.label_628:
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_619
.label_620:
	test	bpl, bpl
	je	.label_636
	test	r12, r12
	cmove	rbx, r12
	and	r13b, 1
	mov	rax, r12
	mov	ecx, 0
	cmovne	rax, rcx
	test	r13b, r13b
	cmove	r12, rcx
	mov	rbp, r12
	mov	r12, rax
	jmp	.label_640
	nop	dword ptr [rax + rax]
.label_636:
	mov	rbp, r12
.label_640:
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x20], rdi
	mov	r15, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_626:
	add	rdi, r12
	sub	rbx, r12
	jne	.label_635
	jmp	.label_637
.label_625:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	je	.label_631
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 8]
	call	create_hole
	test	al, al
	je	.label_621
.label_631:
	mov	r14b, 1
	jmp	.label_622
.label_633:
	mov	rbx, r14
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_624
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	jmp	.label_617
.label_621:
	xor	r14d, r14d
	jmp	.label_622
.label_618:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_634
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x90]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_617
.label_639:
	xor	r14d, r14d
	jmp	.label_622
.label_619:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_623
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x98]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_617:
	call	error
.label_622:
	mov	eax, r14d
	add	rsp, 0x58
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
	#Procedure 0x408070

	.globl fchmod_or_lchmod
	.type fchmod_or_lchmod, @function
fchmod_or_lchmod:
	test	edi, edi
	js	.label_641
	mov	esi, edx
	jmp	fchmod
.label_641:
	mov	rdi, rsi
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408090

	.globl extent_scan_free
	.type extent_scan_free, @function
extent_scan_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	qword ptr [rbx + 0x18], 0
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4080b0

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	ebp, edi
	mov	edx, 1
	mov	rsi, rbx
	call	lseek
	test	rax, rax
	js	.label_642
	mov	r15b, 1
	test	r12b, r12b
	je	.label_643
	sub	rax, rbx
	mov	edi, ebp
	mov	rsi, rax
	mov	rdx, rbx
	call	punch_hole
	test	eax, eax
	jns	.label_643
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_614
	jmp	.label_644
.label_642:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_607
.label_644:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_643:
	mov	eax, r15d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408150

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14d, edi
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_645
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	test	al, al
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	jne	.label_645
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_645:
	mov	r15d, 0x400
	nop	dword ptr [rax + rax]
.label_647:
	mov	al, 1
	test	rbx, rbx
	je	.label_646
	movzx	eax,  byte ptr [byte ptr [rip + write_zeros.nz]]
	test	al, al
	mov	ebp, 0x20000
	cmovne	rbp, r15
	cmp	rbp, rbx
	cmovae	rbp, rbx
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	mov	edi, r14d
	mov	rdx, rbp
	call	full_write
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, rbp
	mov	edx, 0
	cmove	rdx, rbp
	sub	rbx, rdx
	cmp	rcx, rbp
	je	.label_647
.label_646:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408210

	.globl punch_hole
	.type punch_hole, @function
punch_hole:
	push	rbp
	push	rbx
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	esi, 3
	mov	rdx, rcx
	mov	rcx, rax
	call	fallocate
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_648
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	is_ENOTSUP
	xor	ecx, ecx
	cmp	ebp, 0x26
	cmove	ebx, ecx
	test	al, al
	cmovne	ebx, ecx
.label_648:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408260

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	cmp	edi, 0x5f
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408270

	.globl is_nul
	.type is_nul, @function
is_nul:
	mov	rcx, rsi
	mov	al, 1
	test	rcx, rcx
	je	.label_649
	dec	rcx
	mov	rsi, rdi
.label_651:
	cmp	byte ptr [rsi], 0
	jne	.label_650
	test	rcx, rcx
	je	.label_649
	inc	rsi
	mov	edx, ecx
	dec	rcx
	test	dl, 0xf
	jne	.label_651
	push	rax
	inc	rcx
	mov	rdx, rcx
	call	memcmp
	test	eax, eax
	sete	al
	add	rsp, 8
.label_649:
	ret	
.label_650:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082b0

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_653
	cmp	eax, 1
	jne	.label_654
.label_653:
	cmp	byte ptr [rbx + 0x1b], 0
	sete	al
	jmp	.label_652
.label_654:
	xor	eax, eax
.label_652:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082e0

	.globl forget_created
	.type forget_created, @function
forget_created:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], 0
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_655
	mov	rdi, rax
	call	src_to_dest_free
.label_655:
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408320

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408340

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	call	hash_lookup
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_656
	mov	rax, qword ptr [rcx + 0x10]
.label_656:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x408370

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	qword ptr [rbx + 8], r14
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	mov	rsi, rbx
	call	hash_insert
	mov	r14, rax
	test	r14, r14
	je	.label_657
	xor	eax, eax
	cmp	r14, rbx
	je	.label_658
	mov	rdi, rbx
	call	src_to_dest_free
	mov	rax, qword ptr [r14 + 0x10]
.label_658:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_657:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4083e0

	.globl hash_init
	.type hash_init, @function
hash_init:
	push	rax
	mov	edi, 0x67
	xor	esi, esi
	mov	edx, OFFSET FLAT:src_to_dest_hash
	mov	ecx, OFFSET FLAT:src_to_dest_compare
	mov	r8d, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + src_to_dest]],  rax
	test	rax, rax
	je	.label_659
	pop	rax
	ret	
.label_659:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408410

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408420

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	jne	.label_660
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
.label_660:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408440
	.globl forget_all
	.type forget_all, @function
forget_all:

	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408450

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	mov	dword ptr [rsi], edi
	mov	qword ptr [rsi + 0x18], 0
	mov	qword ptr [rsi + 0x28], 0
	mov	qword ptr [rsi + 8], 0
	mov	byte ptr [rsi + 0x20], 0
	mov	byte ptr [rsi + 0x21], 0
	mov	dword ptr [rsi + 0x10], 1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408480

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x28]
	movabs	r12, 0x7fffffffffffffff
	xor	r14d, r14d
.label_679:
	xor	esi, esi
	mov	edx, 0xff0
	lea	rdi, [rsp + 0x18]
	call	memset
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 8], rax
	mov	ecx, dword ptr [r13 + 0x10]
	mov	dword ptr [rsp + 0x18], ecx
	mov	dword ptr [rsp + 0x20], 0x48
	not	rax
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, dword ptr [r13]
	mov	esi, 0xc020660b
	xor	eax, eax
	lea	rdx, [rsp + 8]
	call	ioctl
	test	eax, eax
	js	.label_670
	mov	eax, dword ptr [rsp + 0x1c]
	test	rax, rax
	je	.label_681
	mov	rsi, qword ptr [r13 + 0x18]
	mov	rcx, rax
	not	rcx
	cmp	rsi, rcx
	ja	.label_661
	add	rsi, rax
	mov	qword ptr [r13 + 0x18], rsi
	mov	rdi, qword ptr [r13 + 0x28]
	sub	r15, rdi
	mov	edx, 0x18
	call	xnrealloc
	mov	qword ptr [r13 + 0x28], rax
	add	r15, rax
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_678
	xor	eax, eax
	mov	r8d, dword ptr [rsp + 0x1c]
	nop	word ptr cs:[rax + rax]
.label_677:
	mov	ecx, eax
	imul	rsi, rcx, 0x38
	mov	rcx, qword ptr [rsp + rsi + 0x28]
	mov	rdi, qword ptr [rsp + rsi + 0x38]
	mov	rdx, r12
	sub	rdx, rdi
	cmp	rcx, rdx
	ja	.label_669
	lea	rdx, [rsp + rsi + 0x28]
	test	r14d, r14d
	je	.label_680
	mov	ebp, dword ptr [rsp + rsi + 0x50]
	and	ebp, 0xfffffffe
	cmp	dword ptr [r15 + 0x10], ebp
	jne	.label_663
	mov	rbp, qword ptr [r15 + 8]
	mov	rbx, qword ptr [r15]
	add	rbx, rbp
	cmp	rbx, rcx
	jne	.label_663
	lea	rcx, [rsp + rsi + 0x50]
	add	rbp, rdi
	mov	qword ptr [r15 + 8], rbp
	mov	ecx, dword ptr [rcx]
	mov	dword ptr [r15 + 0x10], ecx
	jmp	.label_675
	nop	dword ptr [rax]
.label_663:
	mov	rcx, qword ptr [r15 + 8]
	add	rcx, qword ptr [r15]
	cmp	rcx, qword ptr [rdx]
	jbe	.label_673
	mov	rcx, qword ptr [r15 + 8]
	add	rcx, qword ptr [r15]
	jmp	.label_676
	nop	word ptr cs:[rax + rax]
.label_680:
	mov	rcx, qword ptr [r13 + 8]
	cmp	rcx, qword ptr [rdx]
	jbe	.label_673
	mov	rcx, qword ptr [r13 + 8]
.label_676:
	mov	rsi, rcx
	sub	rsi, qword ptr [rdx]
	cmp	rsi, qword ptr [rdx + 0x10]
	jb	.label_671
	mov	qword ptr [rdx], rcx
	sub	qword ptr [rdx + 0x10], rsi
	dec	eax
	jmp	.label_675
	nop	dword ptr [rax + rax]
.label_673:
	mov	rcx, qword ptr [r13 + 0x28]
	mov	edi, r14d
	lea	rdi, [rdi + rdi*2]
	lea	r15, [rcx + rdi*8]
	mov	rbp, qword ptr [rdx]
	mov	qword ptr [rcx + rdi*8], rbp
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + rdi*8 + 8], rdx
	mov	edx, dword ptr [rsp + rsi + 0x50]
	mov	dword ptr [rcx + rdi*8 + 0x10], edx
	inc	r14d
.label_675:
	inc	eax
	cmp	eax, r8d
	jb	.label_677
.label_678:
	test	byte ptr [r15 + 0x10], 1
	je	.label_682
	mov	byte ptr [r13 + 0x21], 1
.label_682:
	cmp	r14d, 0x49
	jb	.label_664
	cmp	byte ptr [r13 + 0x21], 0
	jne	.label_664
	mov	rax, qword ptr [r13 + 0x28]
	dec	r14d
	lea	rcx, [r14 + r14*2]
	lea	r15, [rax + rcx*8 - 0x18]
	nop	
.label_664:
	mov	eax, r14d
	mov	qword ptr [r13 + 0x18], rax
	cmp	byte ptr [r13 + 0x21], 0
	jne	.label_672
	mov	rax, qword ptr [r15 + 8]
	add	rax, qword ptr [r15]
	mov	qword ptr [r13 + 8], rax
	mov	al, 1
	cmp	r14d, 0x48
	jb	.label_679
	jmp	.label_662
.label_671:
	cmp	qword ptr [r13 + 8], 0
	je	.label_668
	xor	eax, eax
	jmp	.label_662
.label_670:
	cmp	qword ptr [r13 + 8], 0
	je	.label_668
	xor	eax, eax
	jmp	.label_662
.label_668:
	mov	byte ptr [r13 + 0x20], 1
	xor	eax, eax
	jmp	.label_662
.label_681:
	mov	byte ptr [r13 + 0x21], 1
	cmp	qword ptr [r13 + 8], 0
	setne	al
	jmp	.label_662
.label_672:
	mov	al, 1
.label_662:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_669:
	mov	edi, OFFSET FLAT:label_665
	mov	esi, OFFSET FLAT:label_666
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:label_667
	call	__assert_fail
.label_661:
	mov	edi, OFFSET FLAT:label_674
	mov	esi, OFFSET FLAT:label_666
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_667
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	ebx, r9d
	mov	r13d, edx
	mov	r14, rsi
	mov	r15d, edi
	mov	ebp, dword ptr [rsp + 0x160]
	test	ebp, ebp
	jns	.label_683
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r13d
	mov	r12, rcx
	mov	dword ptr [rsp + 4], r8d
	call	linkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_685
	call	__errno_location
	mov	rcx, r12
	mov	ebp, dword ptr [rax]
	mov	r8d, dword ptr [rsp + 4]
.label_683:
	cmp	ebp, 0x11
	jne	.label_685
	mov	r12d, r8d
	xor	bl, 1
	jne	.label_685
	lea	rsi, [rsp + 0x20]
	mov	rbp, rcx
	mov	rdi, rcx
	call	samedir_template
	mov	rbx, rax
	test	rbx, rbx
	je	.label_684
	mov	dword ptr [rsp + 8], r15d
	mov	qword ptr [rsp + 0x10], r14
	mov	dword ptr [rsp + 0x18], r13d
	mov	dword ptr [rsp + 0x1c], r12d
	lea	rdx, [rsp + 8]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, rbx
	call	try_tempname_len
	test	eax, eax
	je	.label_687
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_688
.label_684:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_685
.label_687:
	mov	edi, r13d
	mov	rsi, rbx
	mov	edx, r13d
	mov	rcx, rbp
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_686
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_686:
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, rbx
	call	unlinkat
.label_688:
	lea	rax, [rsp + 0x20]
	cmp	rbx, rax
	je	.label_685
	mov	rdi, rbx
	call	free
.label_685:
	mov	eax, ebp
	add	rsp, 0x128
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
	#Procedure 0x408820

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	last_component
	mov	rbx, rax
	sub	rbx, r15
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jb	.label_689
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_690
.label_689:
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	mov	rax, r14
.label_690:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408890

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	edx, dword ptr [rsi + 0x10]
	mov	r8d, dword ptr [rsi + 0x14]
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088b0

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	mov	r15d, esi
	mov	r14, rdi
	test	ebp, ebp
	jns	.label_694
	mov	rdi, r14
	mov	esi, r15d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_692
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_694:
	cmp	ebp, 0x11
	jne	.label_692
	xor	bl, 1
	jne	.label_692
	lea	rbx, [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	call	samedir_template
	mov	r12, rax
	test	r12, r12
	je	.label_693
	mov	qword ptr [rsp], r14
	mov	dword ptr [rsp + 8], r15d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_695
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_691
.label_693:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_692
.label_695:
	mov	edi, r15d
	mov	rsi, r12
	mov	edx, r15d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_691
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, r12
	call	unlinkat
.label_691:
	cmp	r12, rbx
	je	.label_692
	mov	rdi, r12
	call	free
.label_692:
	mov	eax, ebp
	add	rsp, 0x118
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
	#Procedure 0x4089b0

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089d0

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	qcopy_acl
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_696
	cmp	ebp, -2
	jne	.label_697
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_698
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_699
.label_696:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
.label_699:
	call	error
.label_697:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a60

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	qset_acl
	mov	ebx, eax
	test	ebx, ebx
	je	.label_700
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_700:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ac0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_701
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_709:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_706
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_702
.label_706:
	cmp	r13, r12
	jb	.label_708
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_703
	add	r12, r12
	jmp	.label_704
	nop	word ptr cs:[rax + rax]
.label_703:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_707
.label_704:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_709
	jmp	.label_701
.label_708:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_701
.label_707:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_705
.label_702:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_705:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_701:
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
	#Procedure 0x408bd0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408be0

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
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_716
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_710:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_714
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_712
	cmp	qword ptr [rsp + 8], -1
	je	.label_713
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_715
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_714
.label_715:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_714
.label_713:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_714:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_710
	jmp	.label_711
.label_716:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_711:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_712:
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
	#Procedure 0x408ce0

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
	je	.label_717
	mov	esi, OFFSET FLAT:label_718
	jmp	.label_719
.label_717:
	mov	esi, OFFSET FLAT:label_720
.label_719:
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
	#Procedure 0x408d50

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
	mov	esi, OFFSET FLAT:label_725
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_723
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_727:
	test	rbp, rbp
	je	.label_721
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_726
.label_721:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_724
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_728
	nop	word ptr cs:[rax + rax]
.label_726:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_722
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_728:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_727
.label_723:
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
	#Procedure 0x408e50

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
	jns	.label_729
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
.label_729:
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
	#Procedure 0x408ec0
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
	je	.label_730
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_731:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_730
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_731
.label_730:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f30

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_732
	mov	edi, OFFSET FLAT:label_735
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:label_733
	test	rbx, rbx
	je	.label_734
.label_732:
	mov	eax, OFFSET FLAT:label_733
	cmp	byte ptr [rbx], 0
	je	.label_734
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:label_733
	cmove	rax, rbx
.label_734:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f80

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0x24], ecx
	mov	ebx, edx
	mov	r13, rsi
	mov	dword ptr [rsp + 0x20], edi
	mov	rdi, r13
	call	last_component
	mov	rbp, rax
	sub	rbp, r13
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	add	r12, rbp
	cmp	qword ptr [word ptr [rip + simple_backup_suffix]],  0
	jne	.label_747
	xor	edi, edi
	call	set_simple_backup_suffix
.label_747:
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	call	strlen
	inc	rax
	cmp	rax, 9
	mov	ecx, 9
	mov	qword ptr [rsp + 0x28], rax
	cmovae	rcx, rax
	lea	rdi, [r12 + rcx + 1]
	mov	qword ptr [rsp + 0x30], rdi
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	xor	eax, eax
	test	rcx, rcx
	je	.label_744
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	qword ptr [rsp + 0x40], 0
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x38], rax
	nop	
.label_741:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	cmp	ebx, 1
	jne	.label_736
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	mov	ebx, 1
	jmp	.label_742
	nop	word ptr [rax + rax]
.label_736:
	lea	rax, [rsp + 0xc]
	mov	qword ptr [rsp], rax
	mov	edi, dword ptr [rsp + 0x20]
	lea	rsi, [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, r12
	mov	r8, rbp
	lea	r9, [rsp + 0x18]
	call	numbered_backup
	cmp	eax, 1
	je	.label_745
	cmp	eax, 2
	je	.label_740
	cmp	eax, 3
	jne	.label_742
	jmp	.label_743
.label_740:
	cmp	ebx, 2
	jne	.label_745
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	mov	ebx, 1
.label_745:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	edx, dword ptr [rsp + 0xc]
	mov	rsi, r12
	lea	rcx, [rsp + 0x40]
	call	check_extension
.label_742:
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_737
	cmp	dword ptr [rsp + 0xc], 0
	jns	.label_746
	mov	dword ptr [rsp + 0xc], 0xffffff9c
	xor	ebp, ebp
.label_746:
	xor	r8d, r8d
	cmp	ebx, 1
	setne	r8b
	mov	edx, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x10]
	add	rcx, rbp
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	renameatu
	test	eax, eax
	je	.label_737
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	cmp	r14d, 0x11
	je	.label_741
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_748
	call	closedir
.label_748:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	dword ptr [r15], r14d
	jmp	.label_738
.label_737:
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_739
	call	closedir
.label_739:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_744
.label_743:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_738:
	xor	eax, eax
.label_744:
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
	#Procedure 0x4091a0

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, r9
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, edi
	mov	r12, qword ptr [r15]
	mov	qword ptr [rsp + 0x28], rsi
	mov	r14, qword ptr [rsi]
	mov	qword ptr [rsp + 0x48], r8
	lea	rbp, [r14 + r8]
	mov	rdi, rbp
	call	base_len
	mov	r13, rax
	test	r12, r12
	mov	qword ptr [rsp], r13
	je	.label_765
	mov	rdi, r12
	call	rewinddir
	jmp	.label_766
.label_765:
	mov	rcx, qword ptr [rsp + 0x90]
	movzx	r13d, word ptr [rbp]
	mov	word ptr [rbp], 0x2e
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r14
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_763
	mov	word ptr [rbp], r13w
	mov	r13, qword ptr [rsp]
	mov	byte ptr [rbp + r13 + 4], 0
	mov	dword ptr [rbp + r13], 0x7e317e2e
	mov	qword ptr [r15], r12
.label_766:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	je	.label_759
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r13 + 2]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 4]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 0x17]
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_758
.label_761:
	mov	r13d, 1
.label_755:
	cmp	al, 0x7e
	jne	.label_753
	mov	rax, qword ptr [rsp]
	lea	rbp, [rbp + rax + 0x15]
	cmp	byte ptr [rbp + r13 + 1], 0
	jne	.label_753
	cmp	qword ptr [rsp + 0x18], r13
	jb	.label_757
	jne	.label_753
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbp
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	jle	.label_757
.label_753:
	mov	r15, r14
	mov	r13, qword ptr [rsp]
	jmp	.label_750
.label_757:
	movzx	edx, bl
	lea	rcx, [rdx + r13]
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rax + rcx]
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, rsi
	jae	.label_762
	mov	rax, rsi
	shr	rax, 0x3e
	sete	cl
	shl	rsi, cl
	mov	rdi, r14
	mov	rbx, rsi
	mov	r15, rdx
	call	realloc
	mov	rdx, r15
	mov	r15, rax
	test	r15, r15
	jne	.label_752
	jmp	.label_751
.label_762:
	mov	r15, r14
.label_752:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [r15 + rcx]
	mov	byte ptr [r15 + rcx], 0x2e
	lea	rbx, [rax + rdx]
	mov	word ptr [r15 + rcx + 1], 0x307e
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdx + rax + 2]
	lea	rdx, [r13 + 2]
	mov	rsi, rbp
	call	memcpy
	lea	rax, [r13 + rbx + 1]
	mov	cl, byte ptr [r13 + rbx + 1]
	cmp	cl, 0x39
	jne	.label_764
	mov	r13, qword ptr [rsp]
	nop	dword ptr [rax]
.label_767:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
	cmp	cl, 0x39
	je	.label_767
	jmp	.label_768
.label_764:
	mov	r13, qword ptr [rsp]
.label_768:
	inc	cl
	mov	byte ptr [rax], cl
	jmp	.label_750
	nop	
.label_758:
	lea	rbx, [rbp + 0x13]
	mov	rdi, rbx
	call	strlen
	cmp	rax, qword ptr [rsp + 0x50]
	jb	.label_754
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rax]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	jne	.label_754
	mov	al, byte ptr [rbp + r13 + 0x15]
	mov	ecx, eax
	add	cl, 0xcf
	cmp	cl, 8
	ja	.label_754
	lea	rcx, [rbp + r13 + 0x13]
	cmp	al, 0x39
	sete	bl
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_761
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rcx, [rbp + rcx]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_749:
	cmp	al, 0x39
	sete	al
	and	bl, al
	movsx	eax, byte ptr [rcx + r13]
	mov	edx, eax
	add	edx, -0x30
	inc	r13
	cmp	edx, 0xa
	jb	.label_749
	inc	r13
	jmp	.label_755
	nop	word ptr cs:[rax + rax]
.label_754:
	mov	r15, r14
.label_750:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	mov	r14, r15
	jne	.label_758
	jmp	.label_760
.label_759:
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	mov	r15, r14
.label_760:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	mov	rcx, qword ptr [rsp + 0x10]
.label_756:
	mov	eax, ecx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_763:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0xc
	sete	cl
	or	ecx, 2
	mov	word ptr [rbp], r13w
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rbp + rax + 4], 0
	mov	dword ptr [rbp + rax], 0x7e317e2e
	jmp	.label_756
.label_751:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r14
	mov	ecx, 3
	jmp	.label_756
	nop	
	.section	.text
	.align	32
	#Procedure 0x4094b0

	.globl check_extension
	.type check_extension, @function
check_extension:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rcx
	mov	ebp, edx
	mov	r15, rsi
	mov	rbx, rdi
	call	last_component
	mov	r14, rax
	mov	rdi, r14
	call	base_len
	mov	r13, rax
	mov	eax, 0xff
	cmp	r13, 0xf
	jb	.label_772
	cmp	qword ptr [r12], 0
	jne	.label_769
	test	ebp, ebp
	js	.label_771
	call	__errno_location
	mov	qword ptr [rsp], rax
	mov	dword ptr [rax], 0
	mov	esi, 3
	mov	edi, ebp
	call	fpathconf
	mov	rcx, qword ptr [rsp]
	cmp	dword ptr [rcx], 1
	sbb	rax, 0
	jmp	.label_770
.label_771:
	movzx	eax, word ptr [r14]
	mov	word ptr [rsp], ax
	mov	word ptr [r14], 0x2e
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	esi, 3
	mov	rdi, rbx
	call	pathconf
	cmp	dword ptr [rbp], 1
	sbb	rax, 0
	movzx	ecx, word ptr [rsp]
	mov	word ptr [r14], cx
.label_770:
	cmp	rax, -1
	mov	ecx, 0xe
	mov	rdx, -1
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	qword ptr [r12], rdx
.label_769:
	mov	rax, qword ptr [r12]
.label_772:
	cmp	rax, r13
	jae	.label_773
	add	rbx, r15
	sub	rbx, r14
	cmp	rax, rbx
	lea	rax, [rax - 1]
	cmova	rax, rbx
	mov	word ptr [r14 + rax], 0x7e
.label_773:
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
	#Procedure 0x4095b0

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	mov	ecx, 1
	jmp	backupfile_internal
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095c0

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_774
	pop	rcx
	ret	
.label_774:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095e0

	.globl get_version
	.type get_version, @function
get_version:
	mov	eax, 2
	test	rsi, rsi
	je	.label_775
	cmp	byte ptr [rsi], 0
	je	.label_775
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_775:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409620

	.globl xget_version
	.type xget_version, @function
xget_version:
	test	rsi, rsi
	je	.label_776
	cmp	byte ptr [rsi], 0
	je	.label_776
	jmp	get_version
.label_776:
	push	rax
	mov	edi, OFFSET FLAT:label_777
	call	getenv
	mov	edi, OFFSET FLAT:label_778
	mov	rsi, rax
	pop	rax
	jmp	get_version
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409650

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_779
	test	rsi, rsi
	je	.label_782
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_780:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_780
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_782
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	jne	.label_782
	jmp	.label_781
.label_779:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_782:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_781:
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4096c0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096d0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_784
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_784
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_784:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_783
	test	eax, eax
	jne	.label_783
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_783:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_787
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_785
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_698
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_786
.label_785:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_788
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_786:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_791
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_789
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_789
.label_791:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_792
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_789:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_793
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_790
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_698
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_792:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_790:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_788
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409880

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_794
	pop	rcx
	ret	
.label_794:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098a0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_796:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_795
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_796
.label_795:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098e0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	sete	al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_797
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_798
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_798:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_797:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409940

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_799:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_799
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_803
	nop	word ptr cs:[rax + rax]
.label_802:
	inc	rax
	mov	sil, dl
.label_803:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_802
	test	cl, cl
	je	.label_800
	mov	edx, esi
	and	dl, 1
	je	.label_801
	xor	esi, esi
.label_801:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_802
.label_800:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099a0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_805:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_804
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_805
.label_804:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099d0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	last_component
	mov	rbx, rax
	cmp	byte ptr [rbx], 0
	cmove	rbx, r14
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a10

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a20
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_806
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_806:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a40

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_807
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_807:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_808
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_810
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_809
.label_810:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_809:
	mov	edx, dword ptr [rax]
.label_808:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b10

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_811
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_812
	cmp	rax, rbx
	je	.label_811
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_811:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_812:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b90

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_813
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
.label_813:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409bd0

	.globl strmode
	.type strmode, @function
strmode:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	call	ftypelet
	mov	byte ptr [r14], al
	mov	al, bh
	test	al, 1
	mov	sil, 0x72
	mov	cl, 0x72
	jne	.label_823
	mov	cl, 0x2d
.label_823:
	mov	byte ptr [r14 + 1], cl
	mov	ecx, ebx
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [r14 + 2], cl
	mov	ecx, ebx
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_815
	mov	cl, 0x2d
.label_815:
	test	al, 8
	jne	.label_817
	mov	dl, cl
.label_817:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	cl, 0x72
	jne	.label_819
	mov	cl, 0x2d
.label_819:
	mov	byte ptr [r14 + 4], cl
	test	bl, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_821
	mov	cl, 0x2d
.label_821:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_824
	mov	cl, 0x2d
.label_824:
	test	al, 4
	jne	.label_814
	mov	dil, cl
.label_814:
	mov	byte ptr [r14 + 6], dil
	test	bl, 4
	jne	.label_816
	mov	sil, 0x2d
.label_816:
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_820
	mov	dl, 0x2d
.label_820:
	mov	byte ptr [r14 + 8], dl
	and	ebx, 1
	jne	.label_822
	mov	r8b, 0x2d
.label_822:
	test	al, 2
	je	.label_818
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8d, ebx
.label_818:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409ca0

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xfffff000
	movsx	eax, di
	cmp	eax, 0xfff
	jle	.label_825
	cmp	eax, 0x3fff
	jg	.label_829
	movzx	eax, di
	cmp	eax, 0x1000
	je	.label_830
	cmp	eax, 0x2000
	jne	.label_826
	mov	al, 0x63
	ret	
.label_825:
	mov	al, 0x2d
	movzx	ecx, di
	cmp	ecx, 0x8000
	je	.label_827
	cmp	ecx, 0xa000
	je	.label_831
	cmp	ecx, 0xc000
	jne	.label_826
	mov	al, 0x73
	ret	
.label_829:
	movzx	eax, di
	cmp	eax, 0x6000
	je	.label_828
	cmp	eax, 0x4000
	jne	.label_826
	mov	al, 0x64
	ret	
.label_830:
	mov	al, 0x70
	ret	
.label_828:
	mov	al, 0x62
	ret	
.label_826:
	mov	al, 0x3f
.label_827:
	ret	
.label_831:
	mov	al, 0x6c
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d10
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d20

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_832
	pop	rcx
	ret	
.label_832:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d40

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_837
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_833
	cmp	byte ptr [r15], 0x2f
	je	.label_833
	mov	r12b, 0x2f
	jmp	.label_834
.label_837:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_834
.label_833:
	xor	r12d, r12d
.label_834:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_836
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_835
	mov	qword ptr [rax], rbp
.label_835:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_836:
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
	#Procedure 0x409e20

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_838
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_839:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_838
	test	rax, rax
	je	.label_840
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_839
	jmp	.label_838
.label_840:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_838:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409e80

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e90

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ea0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409eb0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_841
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_843:
	cmp	qword ptr [rcx], 0
	je	.label_842
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_844:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_844
	cmp	rsi, rax
	cmova	rax, rsi
.label_842:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_843
.label_841:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409f00
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_845
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_848:
	cmp	qword ptr [rsi], 0
	je	.label_850
	mov	rax, rsi
	nop	dword ptr [rax]
.label_846:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_846
	inc	rdx
.label_850:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_848
.label_845:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_847
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_849
.label_847:
	xor	eax, eax
.label_849:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409f60
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
	mov	edx, OFFSET FLAT:label_851
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_857
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_852]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_853]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_854]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_855
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_856
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
	#Procedure 0x40a050

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
	je	.label_858
	test	rbx, rbx
	je	.label_858
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_860:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_859
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_859
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_860
	jmp	.label_858
.label_859:
	mov	r15, qword ptr [rbx]
.label_858:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0b0

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
	jae	.label_861
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_861:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0e0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_862
	mov	rcx, qword ptr [rdi]
	jmp	.label_864
	nop	
.label_865:
	add	rcx, 0x10
.label_864:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_863
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_865
.label_862:
	ret	
.label_863:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a110
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
.label_870:
	cmp	qword ptr [rcx], rbx
	jne	.label_866
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_867
.label_866:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_870
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_869:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_868
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_869
	jmp	.label_868
.label_867:
	mov	rcx, qword ptr [rdx]
.label_868:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a180
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_871
	xor	eax, eax
.label_874:
	cmp	qword ptr [r8], 0
	je	.label_872
	test	r8, r8
	je	.label_872
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_873:
	cmp	rax, rdx
	jae	.label_871
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_873
.label_872:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_874
.label_871:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1d0
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
	jae	.label_875
	xor	ebx, ebx
.label_877:
	cmp	qword ptr [r13], 0
	je	.label_876
	test	r13, r13
	je	.label_876
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_878:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_875
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_878
.label_876:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_877
.label_875:
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
	#Procedure 0x40a250
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_879
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_880:
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
	jne	.label_880
.label_879:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a290
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_881]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2b0

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
	je	.label_883
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_882
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_882
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_882
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
	jmp	.label_883
.label_882:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_883:
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
	#Procedure 0x40a390

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
	#Procedure 0x40a3b0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3c0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_884
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_885]]
	jbe	.label_886
	movss	xmm1,  dword ptr [dword ptr [rip + label_889]]
	ucomiss	xmm1, xmm0
	jbe	.label_886
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_888]]
	jbe	.label_886
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_886
	addss	xmm1,  dword ptr [dword ptr [rip + label_885]]
	ucomiss	xmm0, xmm1
	jbe	.label_886
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_887]]
	ucomiss	xmm2, xmm0
	jb	.label_886
	ucomiss	xmm0, xmm1
	ja	.label_884
.label_886:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_884:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a440

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_890
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_895
	cvtsi2ss	xmm0, rdi
	jmp	.label_891
.label_895:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_891:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_892]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_893]]
	jae	.label_894
.label_890:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_894:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a4c0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_896
	nop	dword ptr [rax]
.label_902:
	add	r14, 0x10
.label_896:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_901
	cmp	qword ptr [r14], 0
	je	.label_902
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_897
	nop	word ptr cs:[rax + rax]
.label_899:
	test	cl, 1
	je	.label_900
	mov	rdi, qword ptr [rbx]
	call	rax
.label_900:
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
	jne	.label_899
.label_897:
	test	cl, cl
	je	.label_898
	mov	rdi, qword ptr [r14]
	call	rax
.label_898:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_902
.label_901:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a560

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_907
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_907
	mov	r14, qword ptr [r15]
	jmp	.label_912
	nop	dword ptr [rax + rax]
.label_906:
	add	r14, 0x10
.label_912:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_907
	cmp	qword ptr [r14], 0
	je	.label_906
	test	r14, r14
	je	.label_906
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_908:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_908
	jmp	.label_906
.label_907:
	mov	r14, qword ptr [r15]
	jmp	.label_910
	nop	word ptr [rax + rax]
.label_905:
	add	r14, 0x10
.label_910:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_903
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_905
	nop	word ptr cs:[rax + rax]
.label_909:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_909
	jmp	.label_905
.label_903:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_911
	nop	dword ptr [rax]
.label_904:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_904
.label_911:
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
	#Procedure 0x40a630

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
	je	.label_913
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_914
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_913
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
	je	.label_915
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
	jmp	.label_914
.label_915:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_916
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_916
	mov	rdi, qword ptr [rsp]
	call	free
.label_913:
	xor	r14d, r14d
.label_914:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_916:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a760

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
	jae	.label_922
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_919:
	cmp	qword ptr [r15], 0
	je	.label_918
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_921
	nop	word ptr cs:[rax + rax]
.label_925:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_926
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_917
	nop	word ptr cs:[rax + rax]
.label_926:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_917:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_925
.label_921:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_918
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_920
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_923
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_924
.label_920:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_924:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_918:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_919
	mov	al, 1
.label_922:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_923:
	xor	eax, eax
	jmp	.label_922
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a880

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
	je	.label_927
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_938
	test	rbx, rbx
	je	.label_929
	mov	qword ptr [rbx], rax
	jmp	.label_929
.label_938:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_928
	cvtsi2ss	xmm0, rcx
	jmp	.label_933
.label_928:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_933:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_936
	cvtsi2ss	xmm1, rax
	jmp	.label_941
.label_936:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_941:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_931
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_935
	cvtsi2ss	xmm2, rcx
	jmp	.label_939
.label_935:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_939:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_930
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_934
.label_930:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_934:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_931
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_937
	mulss	xmm0, xmm1
.label_937:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_893]]
	jae	.label_929
	movss	xmm1,  dword ptr [dword ptr [rip + label_892]]
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
	je	.label_929
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_927
.label_931:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_940
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_929
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_932
.label_940:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_932:
	mov	ebp, 1
.label_929:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_927:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa60

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
	je	.label_943
	cmp	rsi, r13
	je	.label_946
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_948
.label_946:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_943
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_945
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_947
.label_948:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_943
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_944:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_942
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_942
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_944
	jmp	.label_943
.label_945:
	mov	qword ptr [rbx], 0
	jmp	.label_943
.label_942:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_943
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_947:
	mov	rdi, r14
	call	free_entry
.label_943:
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
	#Procedure 0x40ab30

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_949
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_949:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab60

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
	je	.label_950
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_950:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ab90

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
	je	.label_961
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_956
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_954
	cvtsi2ss	xmm0, rax
	jmp	.label_959
.label_954:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_959:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_953
	cvtsi2ss	xmm1, rcx
	jmp	.label_952
.label_953:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_952:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_956
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_963
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_951
.label_963:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_951:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_960
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_962
.label_960:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_962:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_956
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_958
	mulss	xmm0, dword ptr [rcx + 8]
.label_958:
	movss	xmm1,  dword ptr [dword ptr [rip + label_892]]
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
	jne	.label_956
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_955
	nop	dword ptr [rax + rax]
.label_957:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_957
.label_955:
	mov	qword ptr [r15 + 0x48], 0
.label_956:
	mov	rax, r14
.label_961:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad20

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
	jmp	.label_964
	nop	
.label_965:
	add	rbx, 2
.label_964:
	cmp	rbx, -1
	je	.label_966
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_965
	mov	r14, rbx
.label_966:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad70

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_967
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_968:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_967
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_968
.label_967:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40adc0

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
	#Procedure 0x40ade0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae10

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ae20

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_969
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_970
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_969:
	xor	eax, eax
	ret	
.label_970:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae50
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_971
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_972
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_971:
	xor	eax, eax
	ret	
.label_972:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae80

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aea0

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
	js	.label_974
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_973
	mov	dword ptr [r14], ebp
	jmp	.label_974
.label_973:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_974:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40aef0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_978
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_976
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_975
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_976
	mov	esi, OFFSET FLAT:label_980
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_977
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_977:
	mov	rbx, r14
.label_976:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_978:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_979
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40afa0

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	rbx, rdx
	lea	rcx, [rsp]
	mov	edx, r8d
	call	get_permissions
	mov	ebp, 0xfffffffe
	test	eax, eax
	jne	.label_981
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_981:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aff0

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	push	rbx
	push	rax
	mov	eax, esi
	mov	rcx, rdi
	mov	dword ptr [rsp], edx
	lea	rbx, [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	edx, eax
	call	set_permissions
	mov	ebp, eax
	mov	rdi, rbx
	call	free_permission_context
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b020
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
	#Procedure 0x40b060
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
	#Procedure 0x40b070
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
	#Procedure 0x40b080

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
	#Procedure 0x40b0c0
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
	#Procedure 0x40b0e0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_982
	test	rdx, rdx
	je	.label_982
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_982:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b110
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
	#Procedure 0x40b190

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
.label_993:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_995
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1000]]
.label_1509:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_1007
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_1014
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1510:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_1021
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1021
	xor	r14d, r14d
.label_1033:
	cmp	r14, r11
	jae	.label_1029
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_1029:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1033
.label_1021:
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
	jmp	.label_1042
.label_1502:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1042
.label_1505:
	mov	al, 1
.label_1503:
	mov	r12b, 1
.label_1506:
	test	r12b, 1
	mov	cl, 1
	je	.label_1056
	mov	ecx, eax
.label_1056:
	mov	al, cl
.label_1504:
	test	r12b, 1
	jne	.label_1058
	test	r11, r11
	je	.label_1061
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_1061:
	mov	r14d, 1
	jmp	.label_1066
.label_1058:
	xor	r14d, r14d
.label_1066:
	mov	ecx, OFFSET FLAT:label_1014
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_1042
.label_1507:
	test	r12b, 1
	jne	.label_1074
	test	r11, r11
	je	.label_1037
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_1037:
	mov	r14d, 1
	jmp	.label_1072
.label_1508:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1081
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_1042
.label_1074:
	xor	r14d, r14d
.label_1072:
	mov	eax, OFFSET FLAT:label_1081
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_1042:
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
	jmp	.label_1089
	nop	dword ptr [rax]
.label_1038:
	inc	rsi
.label_1089:
	cmp	rbp, -1
	je	.label_1013
	cmp	rsi, rbp
	jne	.label_1036
	jmp	.label_1018
	nop	word ptr cs:[rax + rax]
.label_1013:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_1018
.label_1036:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_1024
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_1001
	cmp	rbp, -1
	jne	.label_1001
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
.label_1001:
	cmp	rbx, rbp
	jbe	.label_1040
.label_1024:
	xor	r8d, r8d
.label_1067:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_1043
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_1048]]
.label_1603:
	test	rsi, rsi
	jne	.label_1035
	jmp	.label_1051
	nop	
.label_1040:
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
	jne	.label_1064
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1067
	jmp	.label_1006
.label_1064:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1067
.label_1607:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_1082
	test	rsi, rsi
	jne	.label_1083
	cmp	rbp, 1
	je	.label_1051
	xor	r13d, r13d
	jmp	.label_987
.label_1596:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_1088
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1030
	cmp	r12d, 2
	jne	.label_1063
	mov	eax, r9d
	and	al, 1
	jne	.label_1063
	cmp	r14, r11
	jae	.label_1090
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1090:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1093
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1093:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_984
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_984:
	add	r14, 3
	mov	r9b, 1
.label_1063:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_1031
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_1031:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_994
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_994
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_994
	cmp	r14, r11
	jae	.label_1008
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_1008:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_1011
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_1011:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_987
.label_1597:
	mov	bl, 0x62
	jmp	.label_1019
.label_1598:
	mov	cl, 0x74
	jmp	.label_1023
.label_1599:
	mov	bl, 0x76
	jmp	.label_1019
.label_1600:
	mov	bl, 0x66
	jmp	.label_1019
.label_1601:
	mov	cl, 0x72
	jmp	.label_1023
.label_1604:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_1028
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1030
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
	jae	.label_1034
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1034:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1050
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_1050:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1052
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1052:
	add	r14, 3
	xor	r9d, r9d
.label_1028:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_987
.label_1605:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_1062
	cmp	r12d, 2
	jne	.label_1035
	cmp	byte ptr [rsp + 7], 0
	je	.label_1035
	jmp	.label_1030
.label_1606:
	cmp	r12d, 2
	jne	.label_1071
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1030
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_1020
.label_1043:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_1079
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
.label_1027:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_985
	test	r8b, r8b
	je	.label_985
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_987
.label_1082:
	test	rsi, rsi
	jne	.label_991
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_991
.label_1051:
	mov	dl, 1
.label_1602:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1030
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_987:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_1003
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_1004
	jmp	.label_1009
	nop	word ptr cs:[rax + rax]
.label_1003:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_1009
.label_1004:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1015
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_1020
	jmp	.label_1012
	nop	dword ptr [rax]
.label_1009:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_1012
	jmp	.label_1020
.label_1015:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_1012
.label_1088:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_1038
	xor	r15d, r15d
	jmp	.label_1035
.label_1071:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_1023
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_1020
.label_1023:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_1030
.label_1019:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_987
	nop	word ptr cs:[rax + rax]
.label_1012:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1030
	cmp	r12d, 2
	jne	.label_1055
	mov	eax, r9d
	and	al, 1
	jne	.label_1055
	cmp	r14, r11
	jae	.label_1059
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1059:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_992
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_992:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_997
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_997:
	add	r14, 3
	mov	r9b, 1
.label_1055:
	cmp	r14, r11
	jae	.label_1073
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1073:
	inc	r14
	jmp	.label_1049
.label_1079:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_1080
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1080:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_1076:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1092
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_1096
	cmp	rbp, -2
	je	.label_1002
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_989
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1010:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1077
	bt	rsi, rdx
	jb	.label_1006
.label_1077:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_1010
.label_989:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_1017
	xor	r13d, r13d
.label_1017:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_1076
	jmp	.label_1027
.label_994:
	xor	r13d, r13d
	jmp	.label_987
.label_991:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_987
.label_1062:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_1035
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_1035
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_1035
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1044
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1097
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1030
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_1053
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_1053:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1060
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_1060:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1065
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_1065:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_1068
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_1068:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_987
.label_1035:
	xor	eax, eax
.label_1083:
	xor	r13d, r13d
	jmp	.label_987
.label_985:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1078
	nop	word ptr cs:[rax + rax]
.label_1032:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_1078:
	test	r8b, r8b
	je	.label_1084
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_1085
	cmp	r14, r11
	jae	.label_1086
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_1086:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_1085
	nop	dword ptr [rax]
.label_1084:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1006
	cmp	r12d, 2
	jne	.label_1091
	mov	eax, r9d
	and	al, 1
	jne	.label_1091
	cmp	r14, r11
	jae	.label_1095
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1095:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_983
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_983:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_990
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_990:
	add	r14, 3
	mov	r9b, 1
.label_1091:
	cmp	r14, r11
	jae	.label_1075
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1075:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_998
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_998:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1005
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1005:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1085:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_1020
	test	r9b, 1
	je	.label_1022
	mov	ebx, eax
	and	bl, 1
	jne	.label_1022
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_1026
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_1026:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_1041
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_1041:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_1022:
	cmp	r14, r11
	jae	.label_1032
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_1032
	nop	word ptr cs:[rax + rax]
.label_1020:
	test	r9b, 1
	je	.label_1045
	and	al, 1
	jne	.label_1045
	cmp	r14, r11
	jae	.label_1046
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1046:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1047
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1047:
	add	r14, 2
	xor	r9d, r9d
.label_1045:
	mov	ebx, r15d
.label_1049:
	cmp	r14, r11
	jae	.label_1054
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_1054:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_1038
.label_1096:
	xor	r13d, r13d
.label_1092:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_1027
.label_1002:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_1069
	mov	rsi, qword ptr [rsp + 0x50]
.label_1094:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_1025
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_1094
	xor	r13d, r13d
	jmp	.label_1027
.label_1069:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_1027
.label_1025:
	xor	r13d, r13d
	jmp	.label_1027
.label_1044:
	xor	r13d, r13d
	jmp	.label_987
.label_1097:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_987
	nop	dword ptr [rax + rax]
.label_1018:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_1087
	or	dl, al
	je	.label_1006
.label_1087:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_986
	or	dl, al
	jne	.label_986
	test	r10b, 1
	jne	.label_988
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_986
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_993
.label_986:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_996
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_999
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_999
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1016:
	cmp	r14, r11
	jae	.label_1039
	mov	byte ptr [rcx + r14], al
.label_1039:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1016
	jmp	.label_999
.label_1030:
	mov	qword ptr [rsp + 0x20], rbp
.label_1006:
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
.label_1057:
	mov	r14, rax
.label_1070:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_988:
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
	jmp	.label_1057
.label_996:
	mov	rcx, qword ptr [rsp + 8]
.label_999:
	cmp	r14, r11
	jae	.label_1070
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1070
.label_995:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bf50
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
	#Procedure 0x40bf60

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
	je	.label_1098
	mov	qword ptr [rax], rbx
.label_1098:
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
	#Procedure 0x40c050
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1099
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1101:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1101
.label_1099:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1103
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_1102]], OFFSET FLAT:slot0
.label_1103:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1100
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1100:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0f0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c100

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
	js	.label_1104
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1107
	cmp	r12d, 0x7fffffff
	je	.label_1109
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
	jne	.label_1105
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1105:
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
.label_1107:
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
	jbe	.label_1110
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1106
.label_1110:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1108
	mov	rdi, r14
	call	free
.label_1108:
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
.label_1106:
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
.label_1104:
	call	abort
.label_1109:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c2c0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c2d0
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
	#Procedure 0x40c2e0
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
	#Procedure 0x40c2f0

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
	#Procedure 0x40c330

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
	je	.label_1111
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
.label_1111:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c390

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
	#Procedure 0x40c3d0

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
	#Procedure 0x40c3f0
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
	#Procedure 0x40c410

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
	mov	rcx,  qword ptr [word ptr [rip + label_1112]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1113]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1114]]
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
	#Procedure 0x40c480

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
	#Procedure 0x40c490

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c4a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c4b0

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
	#Procedure 0x40c500

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c510

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
	mov	rax,  qword ptr [word ptr [rip + label_1112]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1113]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1114]]
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
	#Procedure 0x40c580
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
	#Procedure 0x40c5a0
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
	#Procedure 0x40c5c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c5d0
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
	#Procedure 0x40c5e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c5f0

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
	#Procedure 0x40c600

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
	jne	.label_1120
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
	je	.label_1119
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1121
	mov	eax, OFFSET FLAT:label_1122
	jmp	.label_1117
.label_1119:
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
	je	.label_1118
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1115
	mov	eax, OFFSET FLAT:label_1116
	jmp	.label_1117
.label_1118:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_1081
	mov	eax, OFFSET FLAT:label_1014
.label_1117:
	cmove	rax, rcx
.label_1120:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c6c0

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
	je	.label_1123
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1125
	jmp	.label_1124
.label_1123:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1124
.label_1125:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1124
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
.label_1124:
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
	#Procedure 0x40c740

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
	je	.label_1128
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1126
	jmp	.label_1127
.label_1128:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1127
.label_1126:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1127
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
.label_1127:
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
	#Procedure 0x40c7d0

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
	je	.label_1129
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1131
	jmp	.label_1130
.label_1129:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1130
.label_1131:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1130
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
.label_1130:
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
	#Procedure 0x40c850

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
	je	.label_1134
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1133
	jmp	.label_1132
.label_1134:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1132
.label_1133:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1132
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
.label_1132:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c8c0

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
	je	.label_1137
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1135
	jmp	.label_1136
.label_1137:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1136
.label_1135:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1136
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_1136:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c920

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
	je	.label_1138
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1140
	jmp	.label_1139
.label_1138:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1139
.label_1140:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1139
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_1139:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c970

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
	je	.label_1143
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1142
	jmp	.label_1141
.label_1143:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1141
.label_1142:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1141
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_1141:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c9c0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_1146
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_1145
	jmp	.label_1144
.label_1146:
	mov	eax, 1
	test	cl, cl
	je	.label_1144
.label_1145:
	xor	eax, eax
.label_1144:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c9f0

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r13d, r8d
	mov	r12, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r12
	mov	r9d, r13d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	test	ebx, ebx
	jns	.label_1149
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_1148
	cmp	ecx, 0x5f
	je	.label_1148
	cmp	ecx, 0x26
	jne	.label_1149
.label_1148:
	test	r13d, r13d
	je	.label_1155
	cmp	r13d, 1
	jne	.label_1152
	mov	rbx, rax
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_1157
	mov	rax, rbx
	mov	ecx, dword ptr [rax]
	mov	r13b, 1
	cmp	ecx, 2
	je	.label_1159
	mov	ebx, 0xffffffff
	cmp	ecx, 0x4b
	jne	.label_1149
.label_1157:
	mov	edi, 0x11
	jmp	.label_1151
.label_1155:
	xor	r13d, r13d
.label_1159:
	mov	qword ptr [rsp], rax
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	call	strlen
	test	rbx, rbx
	je	.label_1147
	test	rax, rax
	je	.label_1147
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_1150
	cmp	byte ptr [r12 + rax - 1], 0x2f
	jne	.label_1147
.label_1150:
	lea	rdx, [rsp + 8]
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1149
	test	r13b, r13b
	je	.label_1160
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_1147
	mov	edi, 2
	jmp	.label_1153
.label_1152:
	mov	edi, 0x5f
.label_1151:
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_1149
.label_1160:
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_1156
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_1149
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_1147
	jmp	.label_1149
.label_1156:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_1154
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	jne	.label_1158
.label_1147:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	mov	ebx, eax
.label_1149:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1154:
	mov	edi, 0x14
	jmp	.label_1153
.label_1158:
	mov	edi, 0x15
.label_1153:
	call	errno_fail
	jmp	.label_1149
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cbc0

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbx
	mov	ebx, edi
	call	__errno_location
	mov	dword ptr [rax], ebx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cbd0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_1162:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1161
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1162
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_1161
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_1162
.label_1161:
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
	#Procedure 0x40cc60

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cc80

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_1163
	mov	qword ptr [rsp + 0x10], r15
	mov	r15d, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	je	.label_1167
.label_1163:
	xor	ebp, ebp
.label_1168:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1167:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	mov	ecx, 0x100
	mov	edi, r12d
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_1166
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_698
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_1166:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	mov	ecx, 0x100
	mov	edi, r15d
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_1169
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_698
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_1169:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1164
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_1165
.label_1164:
	xor	ebp, ebp
.label_1165:
	mov	rdi, rbx
	call	free
	jmp	.label_1168
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cdc0

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, rdi
	mov	ecx, esi
	xor	r15d, r15d
	test	r13, r13
	je	.label_1170
	mov	rax,  qword ptr [word ptr [+ (rcx * 8) + comparison_function_table]]
	mov	qword ptr [rsp + 0x30], rax
	dec	rcx
	mov	qword ptr [rsp + 0x28], rcx
	xor	r14d, r14d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1177
.label_1171:
	mov	rdi, rbx
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	rdx, qword ptr [rsp]
	mov	qword ptr [rdx + rcx], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rdx + rcx + 8], rax
	inc	r12
	add	r14, rbp
	nop	dword ptr [rax]
.label_1177:
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r13
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_1174
	cmp	byte ptr [r15 + 0x13], 0x2e
	mov	eax, 0
	jne	.label_1178
	xor	eax, eax
	cmp	byte ptr [r15 + 0x14], 0x2e
	sete	al
	inc	rax
.label_1178:
	cmp	byte ptr [r15 + rax + 0x13], 0
	je	.label_1177
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_1182
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, r12
	jne	.label_1171
	mov	qword ptr [rsp + 8], rax
	mov	edx, 0x10
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 8]
	call	x2nrealloc
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1171
.label_1182:
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, r14
	cmp	rax, rbp
	mov	rax, qword ptr [rsp + 0x10]
	ja	.label_1175
	mov	rcx, rbp
	add	rcx, r14
	mov	qword ptr [rsp + 8], rcx
	jb	.label_1180
	mov	edx, 1
	mov	rdi, rax
	lea	rsi, [rsp + 8]
	call	x2nrealloc
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rcx
.label_1175:
	mov	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	lea	rdi, [rax + r14]
	mov	rsi, rbx
	mov	rdx, rbp
	call	memcpy
	add	r14, rbp
	jmp	.label_1177
.label_1174:
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_1183
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r15d, r15d
	jmp	.label_1170
.label_1183:
	cmp	qword ptr [rsp + 0x28], 1
	mov	r15, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp]
	ja	.label_1176
	test	r12, r12
	je	.label_1181
	mov	edx, 0x10
	mov	rdi, r13
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x30]
	call	qsort
	inc	r14
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	xor	r14d, r14d
	mov	rbx, r13
	nop	dword ptr [rax]
.label_1179:
	lea	rbp, [r15 + r14]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	inc	r14
	sub	r14, rbp
	add	r14, rax
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x10
	dec	r12
	jne	.label_1179
	jmp	.label_1172
.label_1176:
	cmp	qword ptr [rsp + 0x18], r14
	jne	.label_1173
	lea	rsi, [r14 + 1]
	mov	rdi, r15
	call	xrealloc
	mov	r15, rax
	jmp	.label_1173
.label_1181:
	inc	r14
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	xor	r14d, r14d
.label_1172:
	mov	rdi, r13
	call	free
.label_1173:
	mov	byte ptr [r15 + r14], 0
.label_1170:
	mov	rax, r15
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1180:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d020

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	push	r14
	push	rbx
	mov	ebp, esi
	call	opendir_safer
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1184
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_1184
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_1184:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d070

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d080

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	cmp	rax, qword ptr [rsi + 8]
	seta	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d0a0
	.globl getcon
	.type getcon, @function
getcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d0c0

	.globl freecon
	.type freecon, @function
freecon:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d0d0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d0f0

	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d110
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d130
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d150

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d170
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d190
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d1b0
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d1d0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d1f0
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d210
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d230
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d250
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d270
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d280
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d2a0

	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:
	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d2b0

	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:
	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d2c0

	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:
	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d2d0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d2e0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d2f0
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d300

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d310
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d320
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d330
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d340

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d350

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ebx, esi
	mov	r15, rdi
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	r12d, dword ptr [rax]
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	movsxd	rbx, ebx
	lea	rax, [rbx + r14]
	mov	rdi, rbp
	sub	rdi, rax
	jb	.label_1189
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	test	al, al
	je	.label_1189
	mov	dword ptr [rsp + 0x14], r12d
	mov	qword ptr [rsp + 0x18], r15
	xor	r13d, r13d
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_1186
	sub	rbp, rbx
	mov	r12, qword ptr [rsp + 0x18]
	add	rbp, r12
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x20], rax
	nop	dword ptr [rax]
.label_1185:
	test	r14, r14
	je	.label_1191
	mov	rbx, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_1187:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	movzx	eax,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_1187
.label_1191:
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_1190
	mov	rax, qword ptr [rsp + 8]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jne	.label_1192
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, qword ptr [rsp + 0x18]
	jbe	.label_1185
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x11
	jmp	.label_1188
.label_1189:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x16
.label_1188:
	mov	r12d, 0xffffffff
.label_1186:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1190:
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rsp + 0x14]
	mov	dword ptr [rax], ecx
.label_1192:
	mov	rbp, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rbp]
	mov	rdi, r15
	call	randint_all_free
	mov	dword ptr [rbp], ebx
	jmp	.label_1186
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d4b0

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbx
	mov	rbx, rsi
	mov	esi, 0x58
	call	__strspn_c1
	cmp	rax, rbx
	setae	al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d4d0

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1193
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1197]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1193:
	mov	edi, OFFSET FLAT:label_1194
	mov	esi, OFFSET FLAT:label_1195
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_1196
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d510

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	or	esi, 0xc2
	mov	edx, 0x180
	xor	eax, eax
	jmp	open
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d530

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d540

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	lstat
	test	eax, eax
	je	.label_1198
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1199
.label_1198:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_1199:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d590
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	mov	r8d, 6
	jmp	gen_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d5a0
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d5b0

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
	ja	.label_1200
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
	jmp	.label_1201
.label_1200:
	mov	eax, ebx
.label_1201:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d600

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	eax, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 0xffffff9c
	mov	r8d, eax
	jmp	utimecmpat
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d620

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	ebp, r8d
	mov	rbx, rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r14d, edi
	mov	r12, qword ptr [r13 + 0x58]
	mov	r15, qword ptr [rbx + 0x58]
	mov	rdi, r13
	call	get_stat_mtime_ns
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	get_stat_mtime_ns
	mov	rbx, rax
	test	bpl, 1
	je	.label_1222
	cmp	r12, r15
	jne	.label_1217
	xor	ecx, ecx
	mov	rax, qword ptr [rsp]
	cmp	eax, ebx
	je	.label_1205
.label_1217:
	lea	rax, [r15 - 2]
	mov	ecx, 0xffffffff
	cmp	r12, rax
	jle	.label_1205
	lea	rax, [r12 - 2]
	mov	ecx, 1
	cmp	r15, rax
	jle	.label_1205
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	jne	.label_1212
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + utimecmpat.ht]],  rax
	test	rax, rax
	je	.label_1219
.label_1212:
	cmp	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jne	.label_1221
	mov	edi, 0x10
	call	malloc
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  rax
	xor	ecx, ecx
	test	rax, rax
	je	.label_1213
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1221:
	mov	rax, qword ptr [r13]
	mov	rsi,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	qword ptr [rsi], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	call	hash_insert
	mov	rcx, rax
	test	rcx, rcx
	je	.label_1213
	cmp	rcx,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	jne	.label_1210
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jmp	.label_1210
.label_1213:
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	je	.label_1218
	mov	rax, qword ptr [r13]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	lea	rsi, [rsp + 0x30]
	call	hash_lookup
	mov	rcx, rax
.label_1218:
	test	rcx, rcx
	jne	.label_1210
.label_1219:
	mov	dword ptr [rsp + 0x38], 0x77359400
	mov	byte ptr [rsp + 0x3c], 0
	lea	rcx, [rsp + 0x30]
.label_1210:
	cmp	byte ptr [rcx + 0xc], 0
	je	.label_1204
	mov	edi, dword ptr [rcx + 8]
	jmp	.label_1207
.label_1204:
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, qword ptr [r13 + 0x48]
	mov	eax, dword ptr [r13 + 0x68]
	mov	dword ptr [rsp + 8], eax
	mov	rdi, r13
	call	get_stat_atime_ns
	mov	rbp, rax
	mov	rdi, r13
	call	get_stat_ctime_ns
	mov	r9, rbp
	mov	r8, rbx
	mov	ecx, r8d
	or	ecx, r12d
	or	ecx, dword ptr [rsp + 8]
	and	ecx, 1
	movsxd	rdx, r9d
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	edx, esi
	movsxd	rsi, eax
	imul	rdi, rsi, 0x66666667
	mov	rbp, rdi
	shr	rbp, 0x3f
	sar	rdi, 0x22
	add	edi, ebp
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	sub	esi, edi
	mov	rbx, qword ptr [rsp]
	movsxd	rdi, ebx
	imul	rdi, rdi, 0x66666667
	mov	rbp, rdi
	shr	rbp, 0x3f
	sar	rdi, 0x22
	add	edi, ebp
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ebx
	sub	ebp, edi
	or	ebp, edx
	or	ebp, esi
	je	.label_1216
	mov	r10, qword ptr [rsp + 0x20]
	mov	dword ptr [r10 + 8], 1
	mov	edi, 1
.label_1209:
	mov	dword ptr [r10 + 8], edi
	mov	byte ptr [r10 + 0xc], 1
	mov	rbx, qword ptr [rsp + 0x18]
.label_1207:
	xor	eax, eax
	cmp	edi, 0x77359400
	sete	al
	not	rax
	and	r15, rax
	mov	eax, ebx
	cdq	
	idiv	edi
	sub	ebx, edx
.label_1222:
	mov	ecx, 0xffffffff
	cmp	r12, r15
	jl	.label_1205
	mov	ecx, 1
	jg	.label_1205
	mov	rax, qword ptr [rsp]
	cmp	eax, ebx
	mov	ecx, 0xffffffff
	jl	.label_1205
	setg	al
	movzx	ecx, al
.label_1205:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1216:
	mov	r10, qword ptr [rsp + 0x20]
	cmp	dword ptr [r10 + 8], 0xb
	jl	.label_1220
	mov	qword ptr [rsp + 8], r8
	mov	r13d, 0xa
	mov	qword ptr [rsp + 0x28], r9
	mov	edx, r9d
	mov	rsi, qword ptr [rsp]
	mov	r11d, esi
	mov	rsi, qword ptr [rsp + 0x10]
.label_1206:
	movsxd	rdi, r11d
	imul	r11, rdi, 0x66666667
	mov	rdi, r11
	shr	rdi, 0x3f
	sar	r11, 0x22
	add	r11d, edi
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdi, rax
	shr	rdi, 0x3f
	sar	rax, 0x22
	add	eax, edi
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x22
	add	edx, edi
	movsxd	r8, edx
	imul	rdi, r8, 0x66666667
	mov	rbx, rdi
	shr	rbx, 0x3f
	sar	rdi, 0x22
	add	edi, ebx
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	sub	r8d, edi
	movsxd	r9, eax
	imul	rbx, r9, 0x66666667
	mov	rbp, rbx
	shr	rbp, 0x3f
	sar	rbx, 0x22
	add	ebx, ebp
	add	ebx, ebx
	lea	ebp, [rbx + rbx*4]
	sub	r9d, ebp
	or	r9d, r8d
	movsxd	rbp, r11d
	imul	rbx, rbp, 0x66666667
	mov	rdi, rbx
	shr	rdi, 0x3f
	sar	rbx, 0x22
	add	ebx, edi
	add	ebx, ebx
	lea	edi, [rbx + rbx*4]
	sub	ebp, edi
	or	ebp, r9d
	jne	.label_1224
	cmp	r13d, 0x3b9aca00
	mov	ebx, r14d
	je	.label_1226
	add	r13d, r13d
	lea	r13d, [r13 + r13*4]
	cmp	r13d, dword ptr [r10 + 8]
	jl	.label_1206
.label_1224:
	mov	dword ptr [r10 + 8], r13d
	cmp	r13d, 2
	mov	edi, r13d
	mov	ebx, r14d
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	jl	.label_1209
	jmp	.label_1215
.label_1220:
	mov	dword ptr [r10 + 8], 0xa
	mov	r13d, 0xa
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ebx, r14d
	jmp	.label_1215
.label_1226:
	xor	ecx, 1
	shl	r13d, cl
	mov	dword ptr [r10 + 8], r13d
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
.label_1215:
	xor	edi, edi
	cmp	r13d, 0x77359400
	sete	dil
	mov	ecx, 1
	cmp	r15, r12
	jl	.label_1205
	cmp	r12, r15
	setne	al
	mov	rdx, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	ebp, edx
	jg	.label_1202
	test	al, al
	je	.label_1205
.label_1202:
	mov	rax, rdi
	not	rax
	and	rax, r15
	mov	ecx, 0xffffffff
	cmp	r12, rax
	jl	.label_1205
	jne	.label_1214
	mov	rbp, qword ptr [rsp + 0x18]
	mov	eax, ebp
	cdq	
	idiv	r13d
	mov	eax, ebp
	sub	eax, edx
	mov	rdx, qword ptr [rsp]
	cmp	edx, eax
	jl	.label_1205
.label_1214:
	mov	qword ptr [rsp + 0x40], r8
	movsxd	rax, r9d
	mov	qword ptr [rsp + 0x48], rax
	or	rdi, r12
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r13d
	imul	rax, rax, 0x38e38e39
	shr	rax, 0x21
	mov	rcx, qword ptr [rsp]
	add	eax, ecx
	cdqe	
	mov	qword ptr [rsp + 0x58], rax
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, ebx
	call	utimensat
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_1205
	lea	rdx, [rsp + 0x68]
	mov	ecx, 0x100
	mov	edi, ebx
	call	fstatat
	mov	r14d, eax
	cdqe	
	mov	ebp, ebx
	mov	rbx, qword ptr [rsp + 0xc0]
	xor	rbx, r12
	or	rbx, rax
	lea	rdi, [rsp + 0x68]
	call	get_stat_mtime_ns
	mov	rcx, qword ptr [rsp]
	movsxd	rcx, ecx
	xor	rax, rcx
	or	rax, rbx
	je	.label_1225
	mov	qword ptr [rsp + 0x50], r12
	mov	qword ptr [rsp + 0x58], rcx
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0x10]
	call	utimensat
.label_1225:
	test	r14d, r14d
	je	.label_1203
	mov	ecx, 0xfffffffe
	jmp	.label_1205
.label_1203:
	mov	ebx, dword ptr [rsp + 0xc0]
	and	ebx, 1
	neg	ebx
	and	ebx, 0x3b9aca00
	lea	rdi, [rsp + 0x68]
	call	get_stat_mtime_ns
	add	rax, rbx
	movsxd	rcx, eax
	imul	rdx, rcx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	add	edx, esi
	add	edx, edx
	lea	edx, [rdx + rdx*4]
	mov	edi, 1
	cmp	ecx, edx
	jne	.label_1208
	mov	ecx, 1
.label_1211:
	mov	edi, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_1208
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, r13d
	je	.label_1223
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	cmp	edx, esi
	mov	edi, ecx
	je	.label_1211
.label_1208:
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_1209
.label_1223:
	mov	edi, ecx
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_1209
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dbc0

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dbd0

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dbe0
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	mov	ecx, 0x100
	jmp	utimensat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dbf0

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x100
	mov	r14, rsi
	mov	r15d, edi
	xor	ebp, ebp
	test	rdx, rdx
	lea	rax, [rsp + 0x50]
	cmove	rax, rdx
	mov	qword ptr [rsp + 8], rax
	je	.label_1250
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	rdi, qword ptr [rsp + 8]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_1228
.label_1250:
	test	r15d, r15d
	jns	.label_1245
	test	r14, r14
	jne	.label_1245
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebx, 0xffffffff
.label_1228:
	mov	eax, ebx
	add	rsp, 0x100
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1245:
	cmp	dword ptr [dword ptr [rip + utimensat_works_really]],  0
	js	.label_1234
	cmp	ebp, 2
	jne	.label_1253
	lea	rsi, [rsp + 0x70]
	test	r15d, r15d
	js	.label_1251
	mov	edi, r15d
	call	fstat
	jmp	.label_1233
.label_1251:
	mov	rdi, r14
	call	stat
.label_1233:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1228
	mov	rbx, qword ptr [rsp + 8]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1247
	lea	rdi, [rsp + 0x70]
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1235
.label_1247:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_1235
	lea	rdi, [rsp + 0x70]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_1235:
	inc	ebp
.label_1253:
	test	r15d, r15d
	jns	.label_1249
	mov	rdx, qword ptr [rsp + 8]
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1254
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1229
.label_1254:
	je	.label_1232
.label_1229:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1232
.label_1249:
	test	r15d, r15d
	js	.label_1234
	mov	rsi, qword ptr [rsp + 8]
	mov	edi, r15d
	call	futimens
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1239
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1255
.label_1232:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1228
.label_1239:
	je	.label_1248
.label_1255:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1248
.label_1234:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebp, ebp
	je	.label_1240
	cmp	ebp, 3
	je	.label_1241
	lea	rsi, [rsp + 0x70]
	test	r15d, r15d
	js	.label_1252
	mov	edi, r15d
	call	fstat
	jmp	.label_1231
.label_1248:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1228
.label_1252:
	mov	rdi, r14
	call	stat
.label_1231:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1228
.label_1241:
	cmp	qword ptr [rsp + 8], 0
	je	.label_1240
	lea	rdi, [rsp + 0x70]
	lea	rsi, [rsp + 8]
	call	update_timespec
	xor	ebx, ebx
	test	al, al
	jne	.label_1228
.label_1240:
	mov	rax, qword ptr [rsp + 8]
	xor	ebp, ebp
	test	rax, rax
	je	.label_1246
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 0x30], rax
	mov	rsi, qword ptr [rsp + 8]
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsi + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x40], rax
	mov	rdx, qword ptr [rsp + 8]
	mov	rax, rcx
	imul	qword ptr [rdx + 0x18]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x48], rdx
	lea	rbp, [rsp + 0x30]
.label_1246:
	test	r15d, r15d
	js	.label_1243
	xor	ebx, ebx
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, rbp
	call	futimesat
	test	eax, eax
	je	.label_1242
	mov	ebx, 0xffffffff
	test	r14, r14
	je	.label_1228
	mov	rdi, r14
	mov	rsi, rbp
	call	utimes
	jmp	.label_1230
.label_1243:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, rbp
	call	futimesat
.label_1230:
	mov	ebx, eax
	jmp	.label_1228
.label_1242:
	test	rbp, rbp
	je	.label_1228
	mov	r12, qword ptr [rbp + 8]
	mov	r14, qword ptr [rbp + 0x18]
	cmp	r12, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	cmp	cl, 1
	jne	.label_1228
	lea	rsi, [rsp + 0x70]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	jne	.label_1228
	lea	rcx, [rbp + 0x10]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rbx, qword ptr [rsp + 0xc8]
	sub	rax, qword ptr [rbp]
	sub	rbx, qword ptr [rbp + 0x10]
	movups	xmm0, xmmword ptr [rbp]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	xor	ebp, ebp
	cmp	r12, 0x7a120
	jl	.label_1244
	cmp	rax, 1
	jne	.label_1244
	lea	rdi, [rsp + 0x70]
	call	get_stat_atime_ns
	xor	ebp, ebp
	test	rax, rax
	jne	.label_1244
	lea	rbp, [rsp + 0x10]
	mov	qword ptr [rsp + 0x18], 0
.label_1244:
	cmp	r14, 0x7a120
	jl	.label_1236
	cmp	rbx, 1
	jne	.label_1236
	lea	rdi, [rsp + 0x70]
	call	get_stat_mtime_ns
	test	rax, rax
	je	.label_1227
.label_1236:
	test	rbp, rbp
	jne	.label_1237
	jmp	.label_1238
.label_1227:
	lea	rbp, [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], 0
.label_1237:
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, rbp
	call	futimesat
.label_1238:
	xor	ebx, ebx
	jmp	.label_1228
	nop	
	.section	.text
	.align	32
	#Procedure 0x40df70

	.globl validate_timespec
	.type validate_timespec, @function
validate_timespec:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, 0x3b9aca00
	jb	.label_1256
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	jne	.label_1260
.label_1256:
	mov	rax, qword ptr [rdi + 0x18]
	cmp	rax, 0x3b9aca00
	jb	.label_1257
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	je	.label_1257
.label_1260:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	add	rsp, 8
	ret	
.label_1257:
	mov	rax, qword ptr [rdi + 8]
	and	rax, 0xfffffffffffffffe
	xor	edx, edx
	cmp	rax, 0x3ffffffe
	mov	ecx, 0
	jne	.label_1258
	mov	qword ptr [rdi], 0
	xor	ecx, ecx
	cmp	qword ptr [rdi + 8], 0x3ffffffe
	sete	cl
	mov	edx, 1
.label_1258:
	mov	rax, qword ptr [rdi + 0x18]
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	jne	.label_1259
	mov	qword ptr [rdi + 0x10], 0
	xor	eax, eax
	cmp	qword ptr [rdi + 0x18], 0x3ffffffe
	sete	al
	add	ecx, eax
	mov	edx, 1
.label_1259:
	xor	eax, eax
	cmp	ecx, 1
	sete	al
	add	eax, edx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e020

	.globl update_timespec
	.type update_timespec, @function
update_timespec:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [rsi]
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3ffffffe
	jne	.label_1261
	mov	al, 1
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	je	.label_1266
	mov	rax, qword ptr [rbx + 8]
.label_1261:
	cmp	rax, 0x3fffffff
	jne	.label_1263
	cmp	qword ptr [rbx + 0x18], 0x3fffffff
	jne	.label_1263
	mov	qword ptr [rsi], 0
	jmp	.label_1265
.label_1263:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3fffffff
	je	.label_1267
	cmp	rax, 0x3ffffffe
	jne	.label_1262
	mov	rdi, r14
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1262
.label_1267:
	mov	rdi, rbx
	call	gettime
.label_1262:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	rax, 0x3fffffff
	je	.label_1264
	cmp	rax, 0x3ffffffe
	jne	.label_1265
	mov	rdi, r14
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
	jmp	.label_1265
.label_1264:
	add	rbx, 0x10
	mov	rdi, rbx
	call	gettime
.label_1265:
	xor	eax, eax
.label_1266:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e0d0

	.globl utimens
	.type utimens, @function
utimens:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffffff
	mov	rsi, rcx
	mov	rdx, rax
	jmp	fdutimens
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e0f0

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xc0
	mov	r14, rdi
	xor	ebp, ebp
	test	rsi, rsi
	lea	rax, [rsp + 0x10]
	cmove	rax, rsi
	mov	qword ptr [rsp + 8], rax
	je	.label_1279
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rdi, qword ptr [rsp + 8]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_1273
.label_1279:
	cmp	dword ptr [dword ptr [rip + lutimensat_works_really]],  0
	js	.label_1280
	cmp	ebp, 2
	jne	.label_1271
	lea	rsi, [rsp + 0x30]
	mov	rdi, r14
	call	lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1273
	mov	rbx, qword ptr [rsp + 8]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1277
	lea	rdi, [rsp + 0x30]
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1269
.label_1277:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_1269
	lea	rdi, [rsp + 0x30]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_1269:
	inc	ebp
.label_1271:
	mov	rdx, qword ptr [rsp + 8]
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1268
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1270
.label_1268:
	je	.label_1275
.label_1270:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1275
.label_1280:
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebp, ebp
	je	.label_1276
	cmp	ebp, 3
	je	.label_1278
	lea	rsi, [rsp + 0x30]
	mov	rdi, r14
	call	lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1273
.label_1278:
	cmp	qword ptr [rsp + 8], 0
	je	.label_1272
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 8]
	call	update_timespec
	xor	ebx, ebx
	test	al, al
	je	.label_1272
	jmp	.label_1273
.label_1275:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  1
	jmp	.label_1273
.label_1276:
	lea	rsi, [rsp + 0x30]
	mov	rdi, r14
	call	lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1273
.label_1272:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x48]
	cmp	eax, 0xa000
	jne	.label_1274
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	ebx, 0xffffffff
	jmp	.label_1273
.label_1274:
	mov	rdx, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebx, eax
.label_1273:
	mov	eax, ebx
	add	rsp, 0xc0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e2a0

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
	je	.label_1293
	mov	edx, OFFSET FLAT:label_1284
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1290
.label_1293:
	mov	edx, OFFSET FLAT:label_1291
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1290:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1295
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
	mov	esi, OFFSET FLAT:label_1292
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1296
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1297]]
.label_1511:
	add	rsp, 8
	jmp	.label_1283
.label_1296:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1287
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
	jmp	.label_1283
.label_1512:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1282
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
.label_1513:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1288
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
.label_1514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1285
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
.label_1515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1299
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
	jmp	.label_1283
.label_1516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1298
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
	jmp	.label_1283
.label_1517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1281
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
	jmp	.label_1283
.label_1518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1286
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
	jmp	.label_1283
.label_1520:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1289
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
	jmp	.label_1283
.label_1519:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1294
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
.label_1283:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e600
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1300:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1300
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e630

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1302:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1301
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_1303
	nop	dword ptr [rax]
.label_1301:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1303:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_1304
	inc	r9
	cmp	r9, 0xa
	jb	.label_1302
.label_1304:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e690

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1305
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1305:
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
	#Procedure 0x40e720
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1306
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1307
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1309
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:label_36
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1308
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e7a0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	test	al, al
	jne	.label_1310
	push	rax
	call	geteuid
	test	eax, eax
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_1310:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e7d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1311
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_1311:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e800

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1312
	test	rax, rax
	je	.label_1313
.label_1312:
	pop	rbx
	ret	
.label_1313:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e820

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_1314
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_1314:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e850

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1315
	test	rbx, rbx
	jne	.label_1315
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1315:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1317
	test	rax, rax
	je	.label_1316
.label_1317:
	pop	rbx
	ret	
.label_1316:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40e880

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1318
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_1321
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1319
.label_1318:
	test	rcx, rcx
	jne	.label_1322
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_1322:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_1320
.label_1319:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_1321:
	call	xalloc_die
.label_1320:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e900

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e910
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e920
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
	#Procedure 0x40e950
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1323
	call	rpl_calloc
	test	rax, rax
	je	.label_1323
	pop	rcx
	ret	
.label_1323:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e980

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
	#Procedure 0x40e9b0

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
	#Procedure 0x40e9d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1324
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_698
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40ea00

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	getline
	test	rax, rax
	jle	.label_1327
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_1325
	mov	byte ptr [rcx + rax - 1], 0
.label_1325:
	mov	rdi, qword ptr [rsp]
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_1326
.label_1327:
	xor	ebx, ebx
.label_1326:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ea70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1328
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1329
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1329
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1328:
	mov	ecx, 1
.label_1329:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eac0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1330
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1330
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1330:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eaf0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_1331
	ret	
.label_1331:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eb10

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_1332
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_1333
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1333:
	add	rax, rcx
.label_1332:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40eb40

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
	jne	.label_1334
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1334
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1335
.label_1334:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1335:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1336
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1336:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ebb0

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
	je	.label_1337
	cmp	r15, -2
	jb	.label_1337
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1337
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1337:
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
	#Procedure 0x40ec10

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec20

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	mov	dword ptr [rcx], edx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec30

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	cmp	esi, -1
	je	.label_1338
	mov	edi, esi
	mov	esi, edx
	jmp	fchmod
.label_1338:
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec50

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	push	rax
	mov	eax, dword ptr [rdi]
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, eax
	call	chmod_or_fchmod
	neg	eax
	sbb	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec70
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
	#Procedure 0x40ec80
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
	#Procedure 0x40ec90
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
	#Procedure 0x40eca0
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
	#Procedure 0x40ecb0
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
	#Procedure 0x40ecc0

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
	#Procedure 0x40ecd0
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
	#Procedure 0x40ecf0
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
	#Procedure 0x40ed10
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
	#Procedure 0x40ed30
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
	.section	.text
	.align	32
	#Procedure 0x40ed50
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1339
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1339
.label_1340:
	ret	
.label_1339:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1340
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ed80
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1341
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_1341:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40eda0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40edb0
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
	#Procedure 0x40edc0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1342
.label_1343:
	ret	
.label_1342:
	cmp	edi, 0x7f
	je	.label_1343
	xor	eax, eax
	jmp	.label_1343
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ede0
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
	#Procedure 0x40edf0
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
	#Procedure 0x40ee00
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
	#Procedure 0x40ee10
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
	#Procedure 0x40ee20
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_1344
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_1345]]
.label_1346:
	ret	
.label_1344:
	xor	eax, eax
	jmp	.label_1346
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ee40
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1347
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_1347:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ee60

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
	#Procedure 0x40ee70
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1348
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_1348:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ee90
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
	#Procedure 0x40eea0
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
	#Procedure 0x40eeb0

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
	je	.label_1350
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1349
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1349
.label_1350:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1349
	test	cl, cl
	jne	.label_1349
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_1349:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ef20

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	call	opendir
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_1352
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	cmp	ecx, 2
	ja	.label_1351
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1354
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	call	__errno_location
	mov	r15d, dword ptr [rax]
	test	rbx, rbx
	jne	.label_1353
	mov	edi, ebp
	call	close
	jmp	.label_1355
.label_1351:
	mov	rbx, r14
	jmp	.label_1352
.label_1354:
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_1355:
	xor	ebx, ebx
.label_1353:
	mov	rdi, r14
	call	closedir
	call	__errno_location
	mov	dword ptr [rax], r15d
.label_1352:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40efb0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40efc0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rdi, [rsp + 8]
	call	gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40efe0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1357
	cmp	byte ptr [rax], 0x43
	jne	.label_1359
	cmp	byte ptr [rax + 1], 0
	je	.label_1356
.label_1359:
	mov	esi, OFFSET FLAT:label_1358
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1357
.label_1356:
	xor	ebx, ebx
.label_1357:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f020

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_1360
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_1361:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_1361
.label_1360:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f050

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_45
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1362
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f080

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1363
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1363:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_1364
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1366
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1365
.label_1366:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1365:
	mov	ecx, dword ptr [rax]
.label_1364:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f140

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
	#Procedure 0x40f160

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_1367
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_1367:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f180
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f190

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
.label_1369:
	cmp	rbx, r13
	jae	.label_1368
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_1370:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_1370
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r14
	call	randread
	nop	dword ptr [rax + rax]
.label_1372:
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
	jb	.label_1372
.label_1368:
	mov	rcx, r15
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_1373
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
	ja	.label_1369
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
	jmp	.label_1371
.label_1373:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp + 8]
	movups	xmmword ptr [rax], xmm0
.label_1371:
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
	#Procedure 0x40f2b0

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f2c0

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
	#Procedure 0x40f2e0

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
	#Procedure 0x40f320

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
	je	.label_1374
	test	rbx, rbx
	je	.label_1376
	mov	esi, OFFSET FLAT:label_1377
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_1375
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
	jmp	.label_1375
.label_1374:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_1376:
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
.label_1375:
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
	#Procedure 0x40f3d0

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
	#Procedure 0x40f400

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
	mov	edi, OFFSET FLAT:label_1378
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1379
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
	js	.label_1379
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_1380
.label_1379:
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
	ja	.label_1380
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
	ja	.label_1380
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
	ja	.label_1380
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
	ja	.label_1380
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
.label_1380:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f5a0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f5b0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f5c0

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_1381
	jmp	readsource
.label_1381:
	add	rdi, 0x18
	jmp	readisaac
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f5e0

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
	jmp	.label_1383
	nop	
.label_1382:
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
.label_1383:
	sub	r13, rbx
	jne	.label_1382
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f660

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
	jae	.label_1384
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_1385:
	cmp	r15, 0x800
	jb	.label_1387
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_1385
	jmp	.label_1386
.label_1387:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_1384:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_1386:
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
	#Procedure 0x40f710

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
	je	.label_1388
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1388:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f750

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
	je	.label_1389
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_1392
	mov	esi, OFFSET FLAT:label_1390
	jmp	.label_1391
.label_1392:
	mov	esi, OFFSET FLAT:label_1393
.label_1391:
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
.label_1389:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f7b0

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
.label_1395:
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
	jb	.label_1395
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 0x800]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	r13, [rcx + rax*8 + 0x38]
	mov	r14, qword ptr [rsp + 8]
	nop	
.label_1394:
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
	jb	.label_1394
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
	#Procedure 0x40fb50

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fb60

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fb70

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
.label_1396:
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
	jl	.label_1396
	xor	ecx, ecx
	nop	
.label_1397:
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
	jl	.label_1397
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
	#Procedure 0x40fe90

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
	#Procedure 0x40fea0

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
	#Procedure 0x40feb0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1398
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1400
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1398
.label_1400:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1398
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1399
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1399:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1398:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ff30

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1407
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1407:
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
	ja	.label_1401
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1411
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1409
	test	esi, esi
	jne	.label_1401
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1412
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1404
.label_1401:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1402
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1409
	mov	ecx, 0x102
.label_1567:
	bt	ecx, eax
	jae	.label_1414
.label_1411:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_1409:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1405
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1408
.label_1405:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1408:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_1414:
	cmp	eax, 6
	jne	.label_1402
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1403
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1406
.label_1402:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1410
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1413
.label_1412:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1404:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_1403:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1406:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_1410:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1413:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4100f0

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
	#Procedure 0x410100

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1415
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_1417
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1417
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1418
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_1419
.label_1417:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1419
.label_1415:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_1419:
	test	ebx, ebx
	js	.label_1418
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1418
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1416
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1418
.label_1416:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_1418:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4101d0

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
	#Procedure 0x4101f0

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
	je	.label_1421
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1423
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1424
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1420
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1421
.label_1420:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1422
.label_1423:
	mov	rax, rbx
	jmp	.label_1421
.label_1424:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1422:
	xor	eax, eax
.label_1421:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410330

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x410340

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	32
	#Procedure 0x410350

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x410360

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x410380

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
