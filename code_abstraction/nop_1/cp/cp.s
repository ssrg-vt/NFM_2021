	.section	.text
	.align	16
	#Procedure 0x402790

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
	mov	r8, rdx
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_backup_suffix_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a40

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a70

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ac0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.45
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.19
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
	mov	ebx, OFFSET FLAT:.str.19
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.19
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.59
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
	.align	16
	#Procedure 0x402be0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.22
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.21
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp + 0xb8]
	call	cp_option_init
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r13d, r13d
	xor	ecx, ecx
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_16
.label_17:
	mov	byte ptr [rsp + 0xe2], 1
	mov	cl, r12b
	nop	word ptr cs:[rax + rax]
.label_16:
	mov	r12b, cl
	mov	edx, OFFSET FLAT:.str.23
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x47
	jle	.label_25
	add	eax, -0x48
	cmp	eax, 0x40
	ja	.label_15
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_29]]
.label_1414:
	mov	dword ptr [rsp + 0xbc], 3
	mov	cl, r12b
	jmp	.label_16
.label_1415:
	mov	dword ptr [rsp + 0xbc], 4
	mov	cl, r12b
	jmp	.label_16
.label_1417:
	mov	bpl, 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x20], rax
	mov	cl, r12b
	jmp	.label_16
.label_1418:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	cl, r12b
	jmp	.label_16
.label_1419:
	cmp	qword ptr [word ptr [rip + optarg]],  0
	mov	cl, r12b
	je	.label_16
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	cl, r12b
	jmp	.label_16
.label_1420:
	mov	dword ptr [rsp + 0xbc], 2
	mov	byte ptr [rsp + 0xda], 1
	mov	word ptr [rsp + 0xd5], 0x101
	mov	byte ptr [rsp + 0xd7], 1
	mov	byte ptr [rsp + 0xdc], 1
	mov	byte ptr [rsp + 0xdf], 1
	mov	byte ptr [rsp + 0xe1], 1
	jmp	.label_17
.label_1421:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	cmovne	r13, rax
	mov	bpl, 1
	mov	cl, r12b
	jmp	.label_16
.label_1422:
	mov	byte ptr [rsp + 0xda], 1
.label_1416:
	mov	dword ptr [rsp + 0xbc], 2
	mov	cl, r12b
	jmp	.label_16
.label_1423:
	mov	byte ptr [rsp + 0xce], 1
	mov	cl, r12b
	jmp	.label_16
.label_1424:
	mov	dword ptr [rsp + 0xc0], 3
	mov	cl, r12b
	jmp	.label_16
.label_1425:
	mov	byte ptr [rsp + 0xcf], 1
	mov	cl, r12b
	jmp	.label_16
.label_1426:
	mov	dword ptr [rsp + 0xc0], 2
	mov	cl, r12b
	jmp	.label_16
.label_1427:
	mov	byte ptr [rsp + 0xe4], 1
	mov	cl, r12b
	jmp	.label_16
.label_1428:
	test	r15, r15
	jne	.label_39
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0x28]
	call	stat
	test	eax, eax
	jne	.label_12
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0x4000
	jne	.label_14
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	cl, r12b
	jmp	.label_16
.label_1429:
	mov	byte ptr [rsp + 0xe5], 1
	mov	cl, r12b
	jmp	.label_16
.label_1430:
	mov	byte ptr [rsp + 0xe6], 1
	mov	cl, r12b
	jmp	.label_16
.label_1431:
	mov	byte ptr [rsp + 0xd4], 1
	mov	cl, r12b
	jmp	.label_16
.label_1432:
	mov	byte ptr [rsp + 0xdb], 0
	mov	cl, r12b
	jmp	.label_16
.label_1433:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0xb8]
	xor	edx, edx
	call	decode_preserve_arg
	mov	cl, r12b
	jmp	.label_16
.label_1434:
	mov	byte ptr [byte ptr [rip + parents_option]],  1
	mov	cl, r12b
	jmp	.label_16
.label_1435:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_30
	lea	rsi, [rsp + 0xb8]
	mov	edx, 1
	call	decode_preserve_arg
	jmp	.label_35
.label_30:
	mov	word ptr [rsp + 0xd5], 0x101
	mov	byte ptr [rsp + 0xd7], 1
.label_35:
	mov	byte ptr [rsp + 0xdc], 1
	mov	cl, r12b
	jmp	.label_16
.label_1438:
	mov	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	mov	cl, r12b
	jmp	.label_16
.label_1436:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_40
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.25
	mov	edx, OFFSET FLAT:reflink_type_string
	mov	ecx, OFFSET FLAT:reflink_type
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + reflink_type]]
	mov	dword ptr [rsp + 0xf0], eax
	mov	cl, r12b
	jmp	.label_16
.label_1437:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.24
	mov	edx, OFFSET FLAT:sparse_type_string
	mov	ecx, OFFSET FLAT:sparse_type
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + sparse_type]]
	mov	dword ptr [rsp + 0xc4], eax
	mov	cl, r12b
	jmp	.label_16
.label_1439:
	mov	byte ptr [rsp + 0xcd], 1
	mov	cl, r12b
	jmp	.label_16
.label_40:
	mov	dword ptr [rsp + 0xf0], 2
	mov	cl, r12b
	jmp	.label_16
.label_25:
	cmp	eax, -1
	jne	.label_27
	cmp	byte ptr [rsp + 0xcf], 0
	je	.label_31
	cmp	byte ptr [rsp + 0xe4], 0
	jne	.label_33
.label_31:
	cmp	dword ptr [rsp + 0xc0], 2
	jne	.label_34
	mov	byte ptr [rsp + 0xe5], 0
.label_34:
	test	bpl, bpl
	je	.label_36
	cmp	dword ptr [rsp + 0xc0], 2
	je	.label_37
.label_36:
	cmp	dword ptr [rsp + 0xf0], 2
	jne	.label_21
	cmp	dword ptr [rsp + 0xc4], 2
	jne	.label_38
.label_21:
	xor	eax, eax
	test	bpl, bpl
	je	.label_41
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	xget_version
.label_41:
	mov	dword ptr [rsp + 0xb8], eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	set_simple_backup_suffix
	cmp	dword ptr [rsp + 0xbc], 1
	jne	.label_18
	cmp	byte ptr [rsp + 0xe2], 0
	je	.label_20
	mov	al, byte ptr [rsp + 0xcf]
	test	al, al
	jne	.label_20
	mov	dword ptr [rsp + 0xbc], 2
	jmp	.label_18
.label_20:
	mov	dword ptr [rsp + 0xbc], 4
.label_18:
	cmp	byte ptr [rsp + 0xe2], 0
	je	.label_23
	mov	byte ptr [rsp + 0xcc], r12b
.label_23:
	cmp	byte ptr [rsp + 0xd9], 0
	je	.label_24
	cmp	byte ptr [rsp + 0xde], 0
	jne	.label_24
	mov	byte ptr [rsp + 0xdd], 0
.label_24:
	cmp	byte ptr [rsp + 0xdd], 0
	je	.label_26
	mov	al, byte ptr [rsp + 0xd9]
	test	al, al
	jne	.label_28
.label_26:
	cmp	byte ptr [rsp + 0xde], 0
	jne	.label_32
	cmp	byte ptr [rsp + 0xe0], 0
	jne	.label_22
	call	hash_init
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	lea	rsi, [r14 + rax*8]
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	setne	al
	movzx	ecx, al
	lea	r8, [rsp + 0xb8]
	mov	edi, ebx
	mov	rdx, r15
	call	do_copy
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_27:
	cmp	eax, 0xffffff7d
	je	.label_13
	cmp	eax, 0xffffff7e
	jne	.label_15
	xor	edi, edi
	call	usage
.label_13:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.33
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, OFFSET FLAT:.str.17_0
	mov	r8d, OFFSET FLAT:.str.31
	mov	r9d, OFFSET FLAT:.str.32
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_15:
	mov	edi, 1
	call	usage
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	jmp	.label_11
.label_12:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
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
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
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
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	jmp	.label_19
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	jmp	.label_11
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	jmp	.label_11
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
.label_11:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	jmp	.label_19
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
.label_19:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403270

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
	mov	edi, OFFSET FLAT:.str.60
	call	getenv
	test	rax, rax
	setne	byte ptr [rbx + 0x30]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403300

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
	mov	qword ptr [rsp], r14
	mov	ecx, OFFSET FLAT:.str.99
	mov	r15d, OFFSET FLAT:.str.100
	test	r12b, r12b
	cmovne	r15, rcx
	mov	r13b, r12b
	xor	r13b, 1
	nop	word ptr cs:[rax + rax]
.label_46:
	mov	rbp, r14
	mov	esi, 0x2c
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	r14d, 0
	je	.label_44
	mov	r14, rax
	inc	r14
	mov	byte ptr [rax], 0
.label_44:
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:decode_preserve_arg.preserve_args
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_vals
	mov	r8d, 4
	mov	rdi, r15
	mov	rsi, rbp
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + decode_preserve_arg.preserve_vals]]
	cmp	rax, 6
	ja	.label_43
	jmp	qword ptr [word ptr [+ (rax * 8) + label_45]]
.label_1324:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x20], r13b
	jmp	.label_42
.label_1325:
	mov	byte ptr [rbx + 0x1f], r12b
	jmp	.label_42
.label_1326:
	mov	byte ptr [rbx + 0x1d], r12b
	jmp	.label_42
.label_1327:
	mov	byte ptr [rbx + 0x22], r12b
	jmp	.label_42
.label_1328:
	mov	byte ptr [rbx + 0x26], r12b
	mov	byte ptr [rbx + 0x25], r12b
	jmp	.label_42
.label_1329:
	mov	byte ptr [rbx + 0x27], r12b
	mov	byte ptr [rbx + 0x28], r12b
	jmp	.label_42
.label_1330:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x1f], r12b
	mov	byte ptr [rbx + 0x1d], r12b
	mov	byte ptr [rbx + 0x22], r12b
	mov	byte ptr [rbx + 0x20], r13b
	mov	byte ptr [rbx + 0x27], r12b
	nop	word ptr cs:[rax + rax]
.label_42:
	test	r14, r14
	jne	.label_46
	mov	rdi, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_43:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403420

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
	mov	r12, r8
	mov	qword ptr [rbp - 0xf8], r12
	mov	r14, rsi
	mov	qword ptr [rbp - 0x100], r14
	mov	ebx, edi
	mov	byte ptr [rbp - 0xb9], 0
	mov	sil, 1
	cmp	byte ptr [r12 + 0x15], 0
	jne	.label_55
	cmp	byte ptr [r12 + 0x16], 0
	setne	sil
.label_55:
	test	rdx, rdx
	sete	al
	movzx	eax, al
	cmp	eax, ebx
	jge	.label_61
	test	cl, cl
	je	.label_74
	test	rdx, rdx
	jne	.label_65
	cmp	ebx, 3
	jge	.label_66
	movsxd	rcx, ebx
	mov	rdi, qword ptr [r14 + rcx*8 - 8]
	movzx	ecx, sil
	lea	rsi, [rbp - 0xb8]
	lea	rdx, [rbp - 0xb9]
	call	target_directory_operand
.label_64:
	movzx	eax,  byte ptr [byte ptr [rip + parents_option]]
	and	eax, 1
	cmp	eax, 1
	je	.label_68
	mov	rax, r14
	mov	r14, qword ptr [rax]
	mov	r15, qword ptr [rax + 8]
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_71
	mov	ebx, dword ptr [r12]
	test	ebx, ebx
	je	.label_71
	mov	rdi, r14
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	jne	.label_71
	mov	al, byte ptr [rbp - 0xb9]
	test	al, al
	jne	.label_71
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xa0]
	cmp	eax, 0x8000
	jne	.label_71
	mov	edi, 0xffffff9c
	mov	rsi, r15
	mov	edx, ebx
	call	find_backup_file_name
	mov	r15, rax
	movups	xmm0, xmmword ptr [r12 + 0x40]
	movups	xmmword ptr [word ptr [rip + label_51]],  xmm0
	movups	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmm3, xmmword ptr [r12 + 0x30]
	movups	xmmword ptr [word ptr [rip + label_52]],  xmm3
	movups	xmmword ptr [word ptr [rip + label_53]],  xmm2
	movups	xmmword ptr [word ptr [rip + label_54]],  xmm1
	movups	xmmword ptr [word ptr [rip + do_copy.x_tmp]],  xmm0
	mov	r12d, OFFSET FLAT:do_copy.x_tmp
	mov	dword ptr [dword ptr [rip + do_copy.x_tmp]],  0
.label_71:
	lea	r8, [rbp - 0xc8]
	xor	edx, edx
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	copy
	mov	dword ptr [rbp - 0xd8], eax
	jmp	.label_48
.label_74:
	test	rdx, rdx
	jne	.label_67
	cmp	ebx, 2
	jl	.label_64
	movsxd	r15, ebx
	mov	rdi, qword ptr [r14 + r15*8 - 8]
	movzx	ecx, sil
	lea	rsi, [rbp - 0xb8]
	lea	rdx, [rbp - 0xb9]
	call	target_directory_operand
	test	al, al
	je	.label_72
	dec	r15
	mov	rdx, qword ptr [r14 + r15*8]
	test	rdx, rdx
	je	.label_64
	dec	ebx
.label_67:
	mov	dword ptr [rbp - 0xe4], ebx
	cmp	ebx, 2
	jl	.label_57
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rdi, r12
	call	dest_info_init
	mov	rdi, r12
	call	src_info_init
	jmp	.label_47
.label_57:
	mov	qword ptr [rbp - 0xf0], rdx
	mov	al, 1
	mov	dword ptr [rbp - 0xd8], eax
	test	ebx, ebx
	jle	.label_48
.label_47:
	mov	al, 1
	mov	dword ptr [rbp - 0xd8], eax
	xor	r13d, r13d
	jmp	.label_50
.label_63:
	mov	rdi, qword ptr [rbp - 0xf0]
	call	xstrdup
	jmp	.label_56
	nop	word ptr [rax + rax]
.label_50:
	mov	qword ptr [rbp - 0xd0], 0
	mov	r15, qword ptr [r14 + r13*8]
	movzx	eax,  byte ptr [byte ptr [rip + remove_trailing_slashes]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_59
	mov	rdi, r15
	call	strip_trailing_slashes
.label_59:
	mov	al,  byte ptr [byte ptr [rip + parents_option]]
	mov	rdi, r15
	and	al, 1
	je	.label_62
	call	strlen
	mov	rbx, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rbx, rax
	mov	rsp, rbx
	mov	rdi, rbx
	mov	rsi, r15
	mov	qword ptr [rbp - 0xe0], r15
	call	memcpy
	mov	rdi, rbx
	call	strip_trailing_slashes
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, rbx
	lea	rdx, [rbp - 0xd0]
	call	file_name_concat
	mov	r15, rax
	mov	rsi, qword ptr [rbp - 0xd0]
	sub	rsi, r15
	cmp	byte ptr [r12 + 0x2e], 0
	mov	edx, OFFSET FLAT:.str.105
	jne	.label_70
	xor	edx, edx
.label_70:
	mov	rdi, r15
	lea	rcx, [rbp - 0xc8]
	lea	r8, [rbp - 0xb9]
	mov	r9, r12
	call	make_dir_parents_private
	test	al, al
	jne	.label_75
	mov	dword ptr [rbp - 0xd8], 0
	jmp	.label_76
	nop	dword ptr [rax]
.label_62:
	mov	qword ptr [rbp - 0xe0], r15
	call	last_component
	mov	r15, rax
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	mov	r14, rsp
	lea	rdx, [r12 + 1]
	add	r12, 0x10
	and	r12, 0xfffffffffffffff0
	mov	rbx, r14
	sub	rbx, r12
	mov	rsp, rbx
	neg	r12
	mov	rdi, rbx
	mov	rsi, r15
	call	memcpy
	mov	rdi, rbx
	call	strip_trailing_slashes
	movzx	eax, byte ptr [r14 + r12]
	cmp	eax, 0x2e
	jne	.label_60
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x2e
	jne	.label_60
	cmp	byte ptr [rbx + 2], 0
	je	.label_63
	nop	word ptr cs:[rax + rax]
.label_60:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, rbx
	call	file_name_concat
.label_56:
	mov	r15, rax
	mov	r12, qword ptr [rbp - 0xf8]
	mov	r14, qword ptr [rbp - 0x100]
.label_75:
	movzx	edx, byte ptr [rbp - 0xb9]
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, r15
	mov	rcx, r12
	lea	r8, [rbp - 0xd1]
	call	copy
	mov	bl, al
	mov	eax, dword ptr [rbp - 0xd8]
	and	bl, al
	movzx	eax,  byte ptr [byte ptr [rip + parents_option]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_73
	mov	rsi, qword ptr [rbp - 0xd0]
	sub	rsi, r15
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rdi, r15
	mov	rcx, r12
	call	re_protect
	and	bl, al
.label_73:
	mov	al, bl
	mov	dword ptr [rbp - 0xd8], eax
.label_76:
	movzx	eax,  byte ptr [byte ptr [rip + parents_option]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_49
	mov	rax, qword ptr [rbp - 0xc8]
	test	rax, rax
	je	.label_49
	nop	
.label_58:
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rbx, qword ptr [rdi + 0xa0]
	mov	qword ptr [rbp - 0xc8], rbx
	call	free
	test	rbx, rbx
	jne	.label_58
.label_49:
	mov	rdi, r15
	call	free
	inc	r13
	mov	eax, dword ptr [rbp - 0xe4]
	cmp	r13d, eax
	jne	.label_50
.label_48:
	mov	eax, dword ptr [rbp - 0xd8]
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_72:
	cmp	ebx, 3
	jl	.label_64
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rcx, r14
	mov	r14, rax
	mov	rsi, qword ptr [rcx + r15*8 - 8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_61:
	xor	edi, edi
	test	ebx, ebx
	jg	.label_69
	mov	esi, OFFSET FLAT:.str.101
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
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
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
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.103
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.104
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + 0x10]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_69:
	mov	esi, OFFSET FLAT:.str.102
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039b0

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
	je	.label_78
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	je	.label_80
	test	r14d, r14d
	jne	.label_82
.label_78:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x4000
	sete	al
	jmp	.label_77
.label_80:
	mov	byte ptr [r12], 1
	jmp	.label_79
.label_82:
	test	r15b, r15b
	je	.label_81
	mov	dword ptr [rbp + 0x18], 0
.label_79:
	xor	eax, eax
.label_77:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_81:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
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
	.align	16
	#Procedure 0x403a50

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
	mov	qword ptr [rbp - 0x150], r9
	mov	qword ptr [rbp - 0x160], r8
	mov	r13, rcx
	mov	qword ptr [rbp - 0x168], r13
	mov	qword ptr [rbp - 0x170], rdx
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
	mov	qword ptr [r13], 0
	lea	rsi, [rbp - 0xb8]
	mov	rdi, rbx
	call	stat
	test	eax, eax
	je	.label_101
	lea	rax, [r12 + r14]
	mov	qword ptr [rbp - 0x158], rax
	lea	rdi, [r14 + r12 - 1]
	nop	dword ptr [rax]
.label_87:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_87
	mov	esi, 0x2f
	call	strchr
	mov	r15, rax
	mov	r13b, 1
	test	r15, r15
	je	.label_90
	nop	word ptr cs:[rax + rax]
.label_89:
	mov	byte ptr [r15], 0
	mov	rdi, r12
	lea	rsi, [rbp - 0xb8]
	call	stat
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_95
	mov	rax, qword ptr [rbp - 0x150]
	cmp	byte ptr [rax + 0x1d], 0
	jne	.label_95
	mov	rax, qword ptr [rbp - 0x150]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_95
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x150]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_92
	nop	dword ptr [rax + rax]
.label_95:
	mov	rdi, qword ptr [rbp - 0x158]
	lea	rsi, [rbp - 0x148]
	call	stat
	test	eax, eax
	je	.label_103
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_84
	jmp	.label_108
	nop	word ptr [rax + rax]
.label_103:
	mov	eax, dword ptr [rbp - 0x130]
	mov	ecx, 0xf000
	and	eax, ecx
	mov	ebx, 0x14
	cmp	eax, 0x4000
	jne	.label_108
.label_84:
	mov	edi, 0xa8
	call	xmalloc
	mov	r13, rax
	mov	edx, 0x90
	mov	rdi, r13
	lea	rsi, [rbp - 0x148]
	call	memcpy
	mov	rax, r15
	sub	rax, r12
	mov	qword ptr [r13 + 0x98], rax
	mov	byte ptr [r13 + 0x90], 0
	mov	rcx, qword ptr [rbp - 0x168]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [r13 + 0xa0], rax
	mov	qword ptr [rcx], r13
	test	r14d, r14d
	je	.label_115
	mov	edx, dword ptr [r13 + 0x18]
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_115:
	xor	edx, edx
.label_92:
	test	r14d, r14d
	setne	al
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rsi, r12
	mov	r8, qword ptr [rbp - 0x150]
	call	set_process_security_ctx
	test	al, al
	je	.label_97
	test	r14d, r14d
	je	.label_98
	mov	rax, qword ptr [rbp - 0x160]
	mov	byte ptr [rax], 1
	mov	eax, dword ptr [r13 + 0x18]
	mov	r14d, 0x3f
	mov	rbx, qword ptr [rbp - 0x150]
	cmp	byte ptr [rbx + 0x1d], 0
	jne	.label_100
	mov	r14d, 0x12
	cmp	byte ptr [rbx + 0x1e], 0
	jne	.label_100
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_100:
	and	r14d, eax
	mov	ecx, 0x1ff
	cmp	byte ptr [rbx + 0x20], 0
	jne	.label_107
	mov	ecx, eax
.label_107:
	mov	esi, r14d
	xor	esi, 0xfff
	and	esi, ecx
	mov	rdi, r12
	call	mkdir
	test	eax, eax
	jne	.label_111
	mov	rsi, qword ptr [rbp - 0x170]
	test	rsi, rsi
	je	.label_112
	mov	edi, 1
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rcx, r12
	call	__printf_chk
.label_112:
	mov	rdi, r12
	lea	rsi, [rbp - 0xb8]
	call	__lstat
	test	eax, eax
	jne	.label_85
	cmp	byte ptr [rbx + 0x1e], 0
	jne	.label_88
	mov	eax, dword ptr [rbp - 0xa0]
	not	eax
	test	r14d, eax
	je	.label_105
	call	cached_umask
	not	eax
	and	r14d, eax
.label_105:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	ecx, eax
	not	ecx
	test	r14d, ecx
	jne	.label_93
	mov	ecx, eax
	and	ecx, 0x1c0
	cmp	ecx, 0x1c0
	je	.label_88
.label_93:
	or	eax, r14d
	mov	dword ptr [r13 + 0x18], eax
	mov	byte ptr [r13 + 0x90], 1
	nop	
.label_88:
	mov	esi, dword ptr [rbp - 0xa0]
	mov	eax, esi
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_96
	or	esi, 0x1c0
	mov	rdi, r12
	call	chmod
	test	eax, eax
	jne	.label_102
.label_96:
	mov	rax, qword ptr [rbp - 0x160]
	cmp	byte ptr [rax], 0
	jne	.label_94
	jmp	.label_104
	nop	dword ptr [rax + rax]
.label_98:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x4000
	jne	.label_106
	mov	rax, qword ptr [rbp - 0x160]
	mov	byte ptr [rax], 0
	mov	rbx, qword ptr [rbp - 0x150]
.label_104:
	cmp	byte ptr [rbx + 0x21], 0
	jne	.label_110
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_94
.label_110:
	movzx	esi, byte ptr [rbx + 0x25]
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, rbx
	call	set_file_security_ctx
	test	al, al
	jne	.label_94
	cmp	byte ptr [rbx + 0x26], 0
	jne	.label_114
.label_94:
	mov	qword ptr [rbp - 0x150], rbx
	mov	byte ptr [r15], 0x2f
	nop	
.label_83:
	movzx	eax, byte ptr [r15 + 1]
	inc	r15
	cmp	eax, 0x2f
	je	.label_83
	mov	esi, 0x2f
	mov	rdi, r15
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_89
	jmp	.label_113
.label_101:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xa0]
	cmp	eax, 0x4000
	jne	.label_91
	mov	rax, qword ptr [rbp - 0x160]
	mov	byte ptr [rax], 0
.label_113:
	mov	r13b, 1
	jmp	.label_90
.label_91:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
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
	jmp	.label_99
.label_108:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x158]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
.label_99:
	mov	rdx, r14
	call	error
	jmp	.label_90
.label_97:
	xor	r13d, r13d
	jmp	.label_90
.label_111:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	jmp	.label_109
.label_85:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	jmp	.label_109
.label_106:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
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
	jmp	.label_86
.label_102:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
.label_109:
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
.label_86:
	mov	rdx, rbx
	call	error
.label_90:
	mov	al, r13b
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_114:
	xor	r13d, r13d
	jmp	.label_90
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f70

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
	je	.label_123
	add	r13, r12
	lea	r14, [rbp - 0x50]
	nop	word ptr cs:[rax + rax]
.label_122:
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_120
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
	jne	.label_118
.label_120:
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_117
	mov	esi, dword ptr [rbx + 0x1c]
	mov	edx, dword ptr [rbx + 0x20]
	mov	rdi, r12
	call	lchown
	test	eax, eax
	je	.label_117
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	je	.label_126
	mov	edx, dword ptr [rbx + 0x20]
	mov	esi, 0xffffffff
	mov	rdi, r12
	call	lchown
.label_117:
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_119
	mov	r8d, dword ptr [rbx + 0x18]
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r13
	mov	rdx, r12
	call	copy_acl
	test	eax, eax
	je	.label_116
	jmp	.label_125
	nop	word ptr cs:[rax + rax]
.label_119:
	cmp	byte ptr [rbx + 0x90], 0
	je	.label_116
	mov	esi, dword ptr [rbx + 0x18]
	mov	rdi, r12
	call	chmod
	test	eax, eax
	jne	.label_121
.label_116:
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0x2f
	mov	rbx, qword ptr [rbx + 0xa0]
	test	rbx, rbx
	jne	.label_122
	mov	al, 1
	jmp	.label_123
.label_118:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
	jmp	.label_124
.label_125:
	xor	eax, eax
	jmp	.label_123
.label_126:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	jmp	.label_124
.label_121:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
.label_124:
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
	xor	eax, eax
.label_123:
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
	.align	16
	#Procedure 0x404130

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
	je	.label_132
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_128
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_129
.label_128:
	lea	rsi, [rsp]
	mov	rdi, r14
	call	lgetfilecon
.label_133:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
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
.label_130:
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_127
	xor	eax, eax
	jmp	.label_131
.label_132:
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_127
	xor	cl, 1
	jne	.label_127
	call	defaultcon
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable_ctx_err
	test	al, al
	jne	.label_127
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
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
.label_127:
	mov	al, 1
.label_131:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_129:
	mov	bpl, byte ptr [rbx + 0x29]
	lea	rsi, [rsp]
	mov	rdi, r14
	call	lgetfilecon
	cmp	bpl, 0
	jne	.label_130
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	jne	.label_130
	jmp	.label_133
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404240

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
	.align	16
	#Procedure 0x404250

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
	.align	16
	#Procedure 0x404260

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
	.align	16
	#Procedure 0x404270

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	je	.label_135
	cmp	byte ptr [rcx + 0x26], 0
	je	.label_137
.label_135:
	call	restorecon
.label_134:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
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
.label_136:
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_137:
	mov	bl, byte ptr [rcx + 0x29]
	call	restorecon
	cmp	bl, 0
	jne	.label_136
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	jne	.label_136
	jmp	.label_134
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042f0

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
	.align	16
	#Procedure 0x404300

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
	.align	16
	#Procedure 0x404330

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
	.align	16
	#Procedure 0x404360

	.globl copy
	.type copy, @function
copy:
	sub	rsp, 0x28
	mov	rax, rcx
	mov	qword ptr [word ptr [rip + top_level_src_name]],  rdi
	mov	qword ptr [word ptr [rip + top_level_dst_name]],  rsi
	mov	byte ptr [rsp + 0x27], 0
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], r8
	lea	rcx, [rsp + 0x27]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], 1
	movzx	edx, dl
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9, rax
	call	copy_internal
	add	rsp, 0x28
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0
	.globl valid_options
	.type valid_options, @function
valid_options:

	push	rax
	test	rdi, rdi
	je	.label_139
	cmp	dword ptr [rdi], 4
	jae	.label_141
	mov	eax, dword ptr [rdi + 0xc]
	dec	eax
	cmp	eax, 3
	jae	.label_143
	cmp	dword ptr [rdi + 0x38], 3
	jae	.label_142
	cmp	byte ptr [rdi + 0x17], 0
	je	.label_138
	cmp	byte ptr [rdi + 0x2c], 0
	jne	.label_140
.label_138:
	cmp	dword ptr [rdi + 0x38], 2
	jne	.label_145
	cmp	dword ptr [rdi + 0xc], 2
	jne	.label_144
.label_145:
	pop	rax
	ret	
.label_139:
	mov	edi, OFFSET FLAT:.str.6_0
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb86
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_141:
	mov	edi, OFFSET FLAT:.str.7_0
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb87
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_143:
	mov	edi, OFFSET FLAT:.str.8_0
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb88
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_142:
	mov	edi, OFFSET FLAT:.str.9_0
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb89
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_140:
	mov	edi, OFFSET FLAT:.str.10_0
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb8a
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_144:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb8d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404480

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
	sub	rsp, 0x2a8
	mov	r15, r9
	mov	rbx, r8
	mov	qword ptr [rbp - 0x288], rcx
	mov	r12, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rbp - 0x29], dl
	mov	byte ptr [rax], 0
	mov	r13d, dword ptr [r15 + 0x34]
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_178
	test	r13d, r13d
	jns	.label_191
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, r14
	mov	r13, rcx
	mov	rcx, r12
	call	renameatu
	mov	rcx, r13
	xor	r13d, r13d
	test	eax, eax
	je	.label_191
	mov	r13, rcx
	call	__errno_location
	mov	rcx, r13
	mov	r13d, dword ptr [rax]
.label_191:
	test	r13d, r13d
	sete	al
	sete	byte ptr [rbp - 0x29]
	test	rcx, rcx
	je	.label_178
	mov	byte ptr [rcx], al
.label_178:
	test	r13d, r13d
	je	.label_233
	mov	qword ptr [rbp - 0x280], rbx
	cmp	r13d, 0x11
	jne	.label_208
	cmp	dword ptr [r15 + 8], 2
	je	.label_209
	jmp	.label_208
.label_233:
	mov	qword ptr [rbp - 0x280], rbx
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_209
.label_208:
	test	r13d, r13d
	mov	rbx, r14
	cmove	rbx, r12
	cmp	dword ptr [r15 + 4], 2
	jne	.label_217
	lea	rsi, [rbp - 0xc0]
	mov	rdi, rbx
	call	__lstat
	jmp	.label_225
.label_217:
	lea	rsi, [rbp - 0xc0]
	mov	rdi, rbx
	call	stat
.label_225:
	test	eax, eax
	je	.label_182
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_282:
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
.label_173:
	mov	rdx, r15
	call	error
.label_153:
	mov	al, r12b
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_182:
	mov	ebx, dword ptr [rbp - 0xa8]
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_209
	cmp	byte ptr [r15 + 0x2a], 0
	je	.label_241
.label_209:
	mov	al, byte ptr [rbp + 0x10]
	test	al, al
	je	.label_243
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_243
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_246
	cmp	dword ptr [r15], 0
	jne	.label_246
	lea	rdx, [rbp - 0xc0]
	mov	rsi, r14
	call	seen_file
	test	al, al
	je	.label_246
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15_0
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
	jmp	.label_153
.label_246:
	mov	rdi, qword ptr [r15 + 0x48]
	lea	rdx, [rbp - 0xc0]
	mov	rsi, r14
	call	record_file
	mov	al, byte ptr [rbp + 0x10]
.label_243:
	mov	qword ptr [rbp - 0x278], r14
	movzx	esi, al
	mov	rdi, r15
	call	should_dereference
	mov	byte ptr [rbp - 0x29c], al
	xor	eax, eax
	xor	r14d, r14d
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_265
	cmp	r13d, 0x11
	jne	.label_272
	cmp	dword ptr [r15 + 8], 2
	jne	.label_272
	xor	r14d, r14d
	jmp	.label_274
.label_272:
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_277
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x14], 0
	je	.label_280
	cmp	eax, 0x4000
	je	.label_280
	cmp	eax, 0xa000
	je	.label_280
.label_277:
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_280
	cmp	byte ptr [r15 + 0x2c], 0
	jne	.label_280
	cmp	byte ptr [r15 + 0x17], 0
	jne	.label_280
	cmp	dword ptr [r15], 0
	jne	.label_280
	cmp	byte ptr [r15 + 0x15], 0
	setne	r14b
.label_280:
	movzx	ecx, r14b
	shl	ecx, 8
	lea	rdx, [rbp - 0x150]
	mov	edi, 0xffffff9c
	mov	rsi, r12
	call	fstatat
	test	eax, eax
	je	.label_274
	mov	r14d, ebx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x28
	jne	.label_293
	cmp	byte ptr [r15 + 0x16], 0
	mov	ebx, r14d
	jne	.label_294
	mov	r14d, ebx
	mov	ebx, dword ptr [rax]
.label_293:
	cmp	ebx, 2
	jne	.label_299
	mov	byte ptr [rbp - 0x29], 1
	mov	ebx, r14d
.label_294:
	xor	r14d, r14d
	cmp	r13d, 0x11
	mov	eax, 0
	jne	.label_265
.label_274:
	mov	byte ptr [rbp - 0x1e0], 0
	cmp	dword ptr [r15 + 8], 2
	je	.label_307
	lea	rsi, [rbp - 0xc0]
	lea	rcx, [rbp - 0x150]
	lea	r9, [rbp - 0x1e0]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rdx, r12
	mov	r8, r15
	call	same_file_ok
	test	al, al
	je	.label_161
.label_307:
	mov	dword ptr [rbp - 0x28c], ebx
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	je	.label_197
	mov	al, byte ptr [r15 + 0x2d]
	test	al, al
	je	.label_197
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_319
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_321
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0xc0]
	sete	al
	jmp	.label_315
.label_241:
	cmp	byte ptr [r15 + 0x19], 0
	je	.label_326
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	jmp	.label_328
.label_161:
	mov	rbx, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
.label_222:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x278]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
.label_263:
	call	quotearg_n_style
.label_239:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_153
.label_299:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
	xor	r12d, r12d
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_173
.label_319:
	xor	eax, eax
	jmp	.label_180
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
.label_328:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	r12d, r12d
.label_167:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_267:
	mov	rdx, rbx
	call	error
	jmp	.label_153
.label_321:
	xor	eax, eax
.label_315:
	xor	al, 1
.label_180:
	movzx	ecx, al
	lea	rsi, [rbp - 0x150]
	lea	rdx, [rbp - 0xc0]
	mov	rdi, r12
	call	utimecmp
	test	eax, eax
	js	.label_197
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_221
	mov	byte ptr [rax], 1
.label_221:
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, r12
	call	remember_copied
	test	rax, rax
	je	.label_204
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x29c]
	mov	edx, 1
	mov	rdi, rax
	mov	rbx, rax
	mov	rsi, r12
	call	create_hard_link
	mov	rcx, rbx
	test	al, al
	je	.label_213
.label_204:
	mov	r12b, 1
	jmp	.label_153
.label_197:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_311
	lea	rdx, [rbp - 0x150]
	mov	rdi, r15
	mov	rsi, r12
	mov	r13, r12
	call	abandon_move
	test	al, al
	je	.label_223
	mov	r12b, 1
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_153
	mov	byte ptr [rax], 1
	jmp	.label_153
.label_311:
	mov	r13, r12
	cmp	ebx, 0x4000
	je	.label_223
	mov	eax, dword ptr [r15 + 8]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_153
	cmp	eax, 3
	jne	.label_223
	lea	rdx, [rbp - 0x150]
	mov	rdi, r15
	mov	rsi, r13
	call	overwrite_ok
	test	al, al
	je	.label_153
	mov	al, byte ptr [rbp - 0x1e0]
	test	al, al
	je	.label_235
	jmp	.label_153
.label_223:
	mov	r12b, 1
	cmp	byte ptr [rbp - 0x1e0], 0
	jne	.label_153
.label_235:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0x4000
	je	.label_149
	cmp	ebx, 0x4000
	jne	.label_242
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_244
	cmp	dword ptr [r15], 0
	je	.label_244
.label_242:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_149
	cmp	dword ptr [r15], 3
	je	.label_149
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x150]
	mov	rsi, r13
	call	seen_file
	test	al, al
	je	.label_149
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_1
	jmp	.label_253
.label_149:
	cmp	ebx, 0x4000
	je	.label_256
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0x4000
	jne	.label_256
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_237
	cmp	dword ptr [r15], 0
	je	.label_237
.label_256:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_261
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0xa8]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_261
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0x4000
	je	.label_261
	cmp	dword ptr [r15], 0
	je	.label_296
.label_261:
	cmp	dword ptr [r15], 0
	je	.label_271
	mov	rdi, qword ptr [rbp - 0x278]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	dot_or_dotdot
	test	al, al
	jne	.label_271
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_279
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0x4000
	jne	.label_279
.label_271:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x298], rcx
	cmp	eax, 0x4000
	mov	r12, r13
	mov	ebx, dword ptr [rbp - 0x28c]
	je	.label_224
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_224
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_290
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_292
	cmp	qword ptr [rbp - 0x140], 1
	ja	.label_290
.label_292:
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	cmp	dword ptr [r15 + 4], 2
	jne	.label_224
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xa8]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x298], rcx
	cmp	eax, 0x8000
	je	.label_224
.label_290:
	mov	rdi, r12
	call	unlink
	test	eax, eax
	je	.label_304
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r13d, 2
	jne	.label_179
.label_304:
	mov	byte ptr [rbp - 0x29], 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_224
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	r13d, ebx
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	ebx, r13d
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_224
.label_213:
	mov	qword ptr [rbp - 0x2a8], r12
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	jmp	.label_148
.label_279:
	cmp	dword ptr [r15], 3
	je	.label_147
	lea	rsi, [rbp - 0xc0]
	mov	rdi, rbx
	mov	rdx, r13
	call	source_is_dst_backup
	test	al, al
	je	.label_147
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_268
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21_0
	jmp	.label_150
.label_244:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_1
.label_253:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	jmp	.label_295
.label_237:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	jmp	.label_167
.label_147:
	mov	edx, dword ptr [r15]
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	backup_file_rename
	mov	rbx, rax
	test	rbx, rbx
	je	.label_175
	mov	rdi, rbx
	call	strlen
	mov	rdi, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	qword ptr [rbp - 0x298], rdi
	mov	rsp, rdi
	mov	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	jmp	.label_190
.label_175:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	cmp	ebx, 2
	jne	.label_171
.label_190:
	mov	byte ptr [rbp - 0x29], 1
	mov	r12, r13
	mov	ebx, dword ptr [rbp - 0x28c]
.label_224:
	mov	r13d, 0x11
	mov	rax, qword ptr [rbp - 0x298]
.label_265:
	mov	qword ptr [rbp - 0x298], rax
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_201
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_201
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_201
	cmp	dword ptr [r15], 0
	jne	.label_201
	mov	dword ptr [rbp - 0x28c], ebx
	test	r14b, r14b
	jne	.label_260
	lea	rbx, [rbp - 0x1e0]
	mov	rdi, r12
	mov	rsi, rbx
	call	__lstat
	test	eax, eax
	jne	.label_212
	jmp	.label_214
.label_260:
	lea	rbx, [rbp - 0x150]
.label_214:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_212
	mov	rdi, qword ptr [r15 + 0x40]
	mov	rsi, r12
	mov	rdx, rbx
	call	seen_file
	test	al, al
	je	.label_212
	mov	rbx, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26_0
	jmp	.label_222
.label_212:
	mov	ebx, dword ptr [rbp - 0x28c]
.label_201:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_229
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_229
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	jne	.label_229
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x298]
	call	emit_verbose
.label_229:
	mov	dword ptr [rbp - 0x28c], ebx
	xor	eax, eax
	test	r13d, r13d
	je	.label_154
	mov	ebx, dword ptr [rbp - 0x28c]
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_236
	mov	al, byte ptr [r15 + 0x2a]
	test	al, al
	je	.label_236
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0xb8]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_240
	mov	rdi, r12
	mov	rsi, rcx
	mov	rdx, rax
	jmp	.label_310
.label_236:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_247
	cmp	qword ptr [rbp - 0xb0], 1
	jne	.label_247
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb8]
	call	src_to_dest_lookup
	jmp	.label_251
.label_247:
	xor	eax, eax
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_154
	xor	eax, eax
	cmp	byte ptr [r15 + 0x17], 0
	jne	.label_154
	cmp	qword ptr [rbp - 0xb0], 1
	ja	.label_258
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_259
	cmp	dword ptr [r15 + 4], 3
	je	.label_258
.label_259:
	xor	eax, eax
	cmp	dword ptr [r15 + 4], 4
	jne	.label_154
.label_258:
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, r12
.label_310:
	call	remember_copied
	jmp	.label_251
.label_240:
	mov	rdi, rcx
	mov	rsi, rax
	call	src_to_dest_lookup
.label_251:
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_154
	cmp	ebx, 0x4000
	jne	.label_270
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, r14
	call	same_name
	test	al, al
	je	.label_276
	mov	qword ptr [rbp - 0x2a8], r12
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27_0
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
	mov	rcx, r14
	jmp	.label_148
.label_270:
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x29c]
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	mov	qword ptr [rbp - 0x2a8], r12
	call	create_hard_link
	mov	r12b, 1
	test	al, al
	mov	rcx, r14
	je	.label_148
	jmp	.label_153
.label_276:
	mov	rdi, r12
	mov	rsi, r14
	call	same_name
	test	al, al
	je	.label_152
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28_0
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
	je	.label_153
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	je	.label_153
	mov	byte ptr [rcx], 1
	jmp	.label_153
.label_152:
	mov	ecx, dword ptr [r15 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_320
	mov	qword ptr [rbp - 0x2a8], r12
	mov	cl, byte ptr [rbp + 0x10]
	and	al, cl
	jne	.label_324
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x2a8]
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
	mov	rcx, r14
	jmp	.label_148
.label_320:
	mov	rax, r14
	jmp	.label_154
.label_324:
	mov	rax, r14
	mov	r12, qword ptr [rbp - 0x2a8]
.label_154:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_157
	cmp	r13d, 0x11
	mov	rbx, qword ptr [rbp - 0x278]
	jne	.label_159
	mov	r14, rax
	mov	rdi, rbx
	mov	rsi, r12
	call	rename
	test	eax, eax
	je	.label_168
	call	__errno_location
	mov	r13d, dword ptr [rax]
	mov	rax, r14
.label_159:
	cmp	r13d, 0x16
	je	.label_172
	cmp	r13d, 0x12
	je	.label_177
	test	r13d, r13d
	jne	.label_298
.label_168:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_181
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x298]
	call	emit_verbose
.label_181:
	cmp	byte ptr [r15 + 0x21], 0
	je	.label_193
	xor	esi, esi
	mov	edx, 1
	mov	rdi, r12
	mov	rcx, r15
	call	set_file_security_ctx
.label_193:
	mov	rsi, r12
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_199
	mov	byte ptr [rax], 1
.label_199:
	mov	r12b, 1
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_153
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_153
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0xc0]
	call	record_file
	jmp	.label_153
.label_177:
	mov	qword ptr [rbp - 0x2b0], rax
	mov	ebx, dword ptr [rbp - 0x28c]
	and	ebx, 0xf000
	mov	rdi, r12
	mov	r14, r12
	cmp	ebx, 0x4000
	jne	.label_210
	call	rmdir
	jmp	.label_219
.label_172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31_0
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
	jmp	.label_153
.label_298:
	mov	r14, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rbx
	mov	qword ptr [rbp - 0x280], rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rcx, r15
	mov	r8, rbx
	jmp	.label_325
.label_210:
	call	unlink
.label_219:
	test	eax, eax
	je	.label_252
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r13d, 2
	jne	.label_254
.label_252:
	cmp	ebx, 0x4000
	mov	r12, r14
	je	.label_257
	mov	al, byte ptr [r15 + 0x2e]
	test	al, al
	je	.label_257
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x298]
	call	emit_verbose
.label_257:
	mov	byte ptr [rbp - 0x29], 1
	mov	rax, qword ptr [rbp - 0x2b0]
.label_157:
	cmp	byte ptr [r15 + 0x2b], 0
	mov	ebx, dword ptr [rbp - 0x28c]
	mov	r14d, ebx
	je	.label_269
	mov	r14d, dword ptr [r15 + 0x10]
.label_269:
	mov	qword ptr [rbp - 0x2b0], rax
	mov	r13d, 0x3f
	cmp	byte ptr [r15 + 0x1d], 0
	jne	.label_273
	mov	eax, ebx
	and	eax, 0xf000
	xor	ecx, ecx
	cmp	eax, 0x4000
	mov	r13d, 0x12
	cmovne	r13d, ecx
.label_273:
	movzx	ecx, byte ptr [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, r12
	mov	r8, r15
	call	set_process_security_ctx
	test	al, al
	je	.label_215
	mov	qword ptr [rbp - 0x2a8], r12
	and	r13d, r14d
	mov	r12d, ebx
	and	r12d, 0xf000
	cmp	r12d, 0x4000
	jne	.label_284
	lea	rdi, [rbp - 0xc0]
	mov	rbx, qword ptr [rbp - 0x280]
	mov	rsi, rbx
	call	is_ancestor
	test	al, al
	je	.label_291
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x278]
.label_330:
	call	quotearg_style
.label_245:
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_301
.label_215:
	xor	r12d, r12d
	jmp	.label_153
.label_284:
	cmp	byte ptr [r15 + 0x2c], 0
	je	.label_308
	mov	r14, qword ptr [rbp - 0x278]
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	je	.label_163
	mov	rdi, qword ptr [rbp - 0x2a8]
	call	dir_name
	mov	rbx, rax
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	jne	.label_313
	cmp	byte ptr [rbx + 1], 0
	je	.label_314
.label_313:
	lea	rsi, [rbp - 0x1e0]
	mov	edi, OFFSET FLAT:.str.2_1
	call	stat
	test	eax, eax
	jne	.label_314
	lea	rsi, [rbp - 0x270]
	mov	rdi, rbx
	call	stat
	test	eax, eax
	je	.label_234
.label_314:
	mov	rdi, rbx
	call	free
.label_163:
	mov	dword ptr [rbp - 0x2b4], r12d
	mov	r12d, r13d
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r14
	mov	rbx, qword ptr [rbp - 0x2a8]
	mov	rdx, rbx
	call	force_symlinkat
	mov	r13d, eax
	test	r13d, r13d
	jle	.label_329
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41_0
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbp - 0x278], rax
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
	mov	rdx, qword ptr [rbp - 0x278]
	mov	rcx, r12
	call	error
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_148
.label_291:
	mov	dword ptr [rbp - 0x2b4], r12d
	mov	rax, rsp
	mov	rcx, rbx
	lea	r12, [rax - 0x20]
	mov	rsp, r12
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rax - 0x10], rcx
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_164
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0x4000
	jne	.label_164
	cmp	byte ptr [r15 + 0x21], 0
	mov	r14, qword ptr [rbp - 0x278]
	jne	.label_185
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_188
.label_185:
	movzx	esi, byte ptr [r15 + 0x25]
	xor	r13d, r13d
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x2a8]
	mov	rcx, r15
	call	set_file_security_ctx
	cmp	byte ptr [r15 + 0x26], 0
	je	.label_202
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_148
.label_164:
	and	r14d, 0xfff
	mov	esi, r13d
	not	esi
	and	esi, r14d
	mov	ebx, r13d
	mov	r13, qword ptr [rbp - 0x2a8]
	mov	rdi, r13
	call	mkdir
	test	eax, eax
	je	.label_205
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36_0
	jmp	.label_316
.label_308:
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_211
	mov	bl, 1
	cmp	byte ptr [r15 + 0x16], 0
	mov	al, 1
	jne	.label_216
	cmp	dword ptr [r15 + 8], 3
	sete	al
.label_216:
	movzx	edx, al
	movzx	r8d, byte ptr [rbp - 0x29c]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, qword ptr [rbp - 0x2a8]
	call	create_hard_link
	test	al, al
	je	.label_226
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	jmp	.label_228
.label_254:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x278]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	mov	rcx, r15
.label_325:
	call	error
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb8]
	call	forget_created
	jmp	.label_153
.label_329:
	mov	qword ptr [rbp - 0x278], r14
	mov	al, 1
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	bl, 1
.label_186:
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x29c], eax
	mov	al, byte ptr [rbp + 0x10]
	mov	r13d, r12d
	mov	r12d, dword ptr [rbp - 0x2b4]
	jmp	.label_206
.label_205:
	mov	r14d, ebx
	lea	rsi, [rbp - 0x150]
	mov	rdi, r13
	call	__lstat
	test	eax, eax
	je	.label_255
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_316:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
.label_160:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_301:
	mov	rdx, rbx
.label_230:
	call	error
	mov	rcx, qword ptr [rbp - 0x2b0]
.label_148:
	cmp	byte ptr [r15 + 0x25], 0
	jne	.label_262
	test	rcx, rcx
	mov	rbx, qword ptr [rbp - 0x2a8]
	mov	rax, qword ptr [rbp - 0x298]
	jne	.label_266
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	r14, rax
	call	forget_created
	mov	rax, r14
.label_266:
	test	rax, rax
	je	.label_278
	mov	rdi, rax
	mov	rsi, rbx
	mov	r14, rax
	call	rename
	test	eax, eax
	je	.label_281
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	jmp	.label_282
.label_278:
	xor	r12d, r12d
	jmp	.label_153
.label_281:
	mov	r12, r14
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_285
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	xor	r12d, r12d
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, r15
	call	__printf_chk
	jmp	.label_153
.label_285:
	xor	r12d, r12d
	jmp	.label_153
.label_211:
	cmp	r12d, 0x8000
	je	.label_303
	cmp	r12d, 0xa000
	je	.label_305
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	je	.label_305
.label_303:
	and	r14d, 0x1ff
	sub	rsp, 0x10
	lea	rax, [rbp - 0xc0]
	mov	qword ptr [rsp], rax
	lea	r9, [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, qword ptr [rbp - 0x2a8]
	mov	rdx, r15
	mov	ecx, r14d
	mov	r8d, r13d
	call	copy_reg
	add	rsp, 0x10
	test	al, al
	je	.label_317
	mov	dl, 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	mov	bl, 1
.label_228:
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x29c], eax
	mov	al, byte ptr [rbp + 0x10]
	jmp	.label_206
.label_226:
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_148
.label_255:
	mov	ebx, dword ptr [rbp - 0x138]
	mov	eax, ebx
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	jne	.label_287
	xor	eax, eax
	mov	qword ptr [rbp - 0x2c0], rax
	mov	r13d, r14d
	jmp	.label_192
.label_317:
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_148
.label_234:
	mov	dword ptr [rbp - 0x2b4], r12d
	mov	r12d, r13d
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x268]
	jne	.label_238
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	qword ptr [rbp - 0x280], rax
	mov	r13, qword ptr [rbp - 0x270]
	mov	rdi, rbx
	call	free
	cmp	qword ptr [rbp - 0x280], r13
	mov	r13d, r12d
	mov	r12d, dword ptr [rbp - 0x2b4]
	jne	.label_275
	jmp	.label_163
.label_305:
	cmp	r12d, 0x5fff
	jle	.label_165
	cmp	r12d, 0x6000
	mov	r14, qword ptr [rbp - 0x278]
	je	.label_170
	cmp	r12d, 0xa000
	je	.label_289
	cmp	r12d, 0xc000
	je	.label_170
	jmp	.label_183
.label_202:
	xor	eax, eax
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_184
.label_287:
	mov	esi, ebx
	or	esi, 0x1c0
	mov	rdi, qword ptr [rbp - 0x2a8]
	call	chmod
	mov	cl, 1
	mov	qword ptr [rbp - 0x2c0], rcx
	test	eax, eax
	mov	r13d, r14d
	je	.label_192
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
.label_312:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x2a8]
	jmp	.label_160
.label_192:
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_203
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdi, qword ptr [rbp - 0x2a8]
	call	remember_copied
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_203:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_286
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_300
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x2a8]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	__printf_chk
	mov	r14, qword ptr [rbp - 0x278]
	jmp	.label_156
.label_296:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x278]
	call	quotearg_n_style_colon
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	jmp	.label_239
.label_238:
	mov	rdi, rbx
	call	free
.label_275:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x2a8]
	call	quotearg_n_style_colon
	jmp	.label_245
.label_286:
	mov	r14, qword ptr [rbp - 0x278]
	jmp	.label_156
.label_165:
	cmp	r12d, 0x1000
	je	.label_249
	cmp	r12d, 0x2000
	mov	r14, qword ptr [rbp - 0x278]
	mov	ebx, dword ptr [rbp - 0x28c]
	jne	.label_183
.label_170:
	mov	dword ptr [rbp - 0x2b4], r12d
	mov	esi, r13d
	not	esi
	and	esi, ebx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	r12d, r13d
	mov	r13d, ebx
	mov	rbx, qword ptr [rbp - 0x2a8]
	mov	rdi, rbx
	call	__mknod
	test	eax, eax
	je	.label_189
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43_0
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
	jmp	.label_230
.label_188:
	xor	eax, eax
	mov	qword ptr [rbp - 0x2c0], rax
	xor	r13d, r13d
.label_184:
	jmp	.label_156
.label_171:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_195
.label_179:
	mov	rbx, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
.label_195:
	mov	rdx, r14
	call	error
	jmp	.label_153
.label_300:
	xor	edx, edx
	mov	r14, qword ptr [rbp - 0x278]
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x2a8]
	call	emit_verbose
.label_156:
	mov	dword ptr [rbp - 0x29c], ebx
	cmp	qword ptr [rbp - 0x288], 0
	je	.label_297
	mov	al, byte ptr [r15 + 0x1c]
	test	al, al
	je	.label_297
	mov	rax, qword ptr [rbp - 0x288]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_302
.label_297:
	movzx	edx, byte ptr [rbp - 0x29]
	sub	rsp, 0x10
	mov	rax, qword ptr [rbp + 0x20]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp + 0x18]
	mov	qword ptr [rsp], rax
	lea	rcx, [rbp - 0xc0]
	mov	rdi, r14
	mov	qword ptr [rbp - 0x278], r14
	mov	rsi, qword ptr [rbp - 0x2a8]
	mov	r8, r12
	mov	r9, r15
	call	copy_dir
	add	rsp, 0x10
	mov	bl, al
	jmp	.label_169
.label_302:
	mov	qword ptr [rbp - 0x278], r14
	mov	bl, 1
.label_169:
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	al, byte ptr [rbp + 0x10]
	mov	r12d, dword ptr [rbp - 0x2b4]
	mov	r14, qword ptr [rbp - 0x2c0]
.label_206:
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_322
	cmp	r12d, 0x4000
	je	.label_322
	mov	cl, al
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	mov	al, cl
	jne	.label_322
	cmp	byte ptr [r15 + 0x21], 0
	jne	.label_327
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_322
.label_327:
	movzx	esi, byte ptr [r15 + 0x25]
	mov	dword ptr [rbp - 0x288], edx
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x2a8]
	mov	rcx, r15
	mov	qword ptr [rbp - 0x2c0], r14
	mov	r14b, bl
	mov	ebx, r13d
	mov	r13b, al
	call	set_file_security_ctx
	mov	edx, dword ptr [rbp - 0x288]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	al, r13b
	mov	r13d, ebx
	mov	bl, r14b
	mov	r14, qword ptr [rbp - 0x2c0]
	cmp	byte ptr [r15 + 0x26], 0
	jne	.label_148
.label_322:
	test	al, al
	je	.label_158
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_158
	mov	byte ptr [rbp - 0x288], bl
	mov	rbx, r14
	mov	r14d, edx
	lea	rsi, [rbp - 0x1e0]
	mov	rdi, qword ptr [rbp - 0x2a8]
	call	__lstat
	test	eax, eax
	jne	.label_264
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x1e0]
	mov	rsi, qword ptr [rbp - 0x2a8]
	call	record_file
.label_264:
	mov	edx, r14d
	mov	r14, rbx
	mov	bl, byte ptr [rbp - 0x288]
.label_158:
	cmp	r12d, 0x4000
	je	.label_309
	mov	al, byte ptr [r15 + 0x17]
	test	al, al
	jne	.label_155
.label_309:
	test	dl, dl
	jne	.label_155
	mov	byte ptr [rbp - 0x288], bl
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_187
	lea	rbx, [rbp - 0xc0]
	mov	rdi, rbx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x1e0], rax
	mov	qword ptr [rbp - 0x1d8], rdx
	mov	rdi, rbx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x1d0], rax
	mov	qword ptr [rbp - 0x1c8], rdx
	mov	rax, qword ptr [rbp - 0x280]
	test	al, al
	mov	rdi, qword ptr [rbp - 0x2a8]
	lea	rsi, [rbp - 0x1e0]
	je	.label_198
	call	utimens_symlink
	jmp	.label_207
.label_198:
	call	utimens
.label_207:
	test	eax, eax
	je	.label_187
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x2a8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_187
	xor	r12d, r12d
	jmp	.label_153
.label_187:
	mov	rax, qword ptr [rbp - 0x280]
	test	al, al
	mov	rbx, qword ptr [rbp - 0x2a8]
	je	.label_227
	cmp	byte ptr [rbp - 0x288], 0
	setne	r12b
	jmp	.label_153
.label_227:
	mov	r12, r14
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_218
	cmp	byte ptr [rbp - 0x29], 0
	mov	r14, qword ptr [rbp - 0x278]
	jne	.label_232
	mov	eax, dword ptr [rbp - 0xa4]
	cmp	eax, dword ptr [rbp - 0x134]
	jne	.label_232
	mov	eax, dword ptr [rbp - 0xa0]
	cmp	eax, dword ptr [rbp - 0x130]
	je	.label_162
.label_232:
	movzx	r8d, byte ptr [rbp - 0x29]
	lea	rcx, [rbp - 0xc0]
	lea	r9, [rbp - 0x150]
	mov	edx, 0xffffffff
	mov	rdi, r15
	mov	rsi, rbx
	call	set_owner
	cmp	eax, -1
	je	.label_306
	test	eax, eax
	jne	.label_162
	and	dword ptr [rbp - 0x28c], 0xfffff1ff
	jmp	.label_162
.label_218:
	mov	r14, qword ptr [rbp - 0x278]
.label_162:
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_248
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_250
.label_248:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r14
	mov	rdx, rbx
	mov	r8d, dword ptr [rbp - 0x28c]
	call	copy_acl
	test	eax, eax
	mov	bl, byte ptr [rbp - 0x288]
	je	.label_155
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_155
	xor	r12d, r12d
	jmp	.label_153
.label_268:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22_0
.label_150:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	r12d, r12d
.label_295:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x278]
	jmp	.label_263
.label_306:
	xor	r12d, r12d
	jmp	.label_153
.label_189:
	mov	dword ptr [rbp - 0x28c], r13d
	mov	qword ptr [rbp - 0x278], r14
	mov	bl, 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	jmp	.label_186
.label_289:
	mov	dword ptr [rbp - 0x288], r13d
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdi, r14
	call	areadlink_with_size
	mov	r13, rax
	test	r13, r13
	je	.label_283
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r13
	mov	rdx, qword ptr [rbp - 0x2a8]
	call	force_symlinkat
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_288
	cmp	byte ptr [r15 + 0x2d], 0
	je	.label_174
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	jne	.label_174
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0xa000
	jne	.label_174
	mov	rbx, qword ptr [rbp - 0x120]
	mov	rdi, r13
	call	strlen
	cmp	rbx, rax
	jne	.label_174
	mov	rdi, qword ptr [rbp - 0x2a8]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_174
	mov	rdi, rbx
	mov	rsi, r13
	call	strcmp
	mov	dword ptr [rbp - 0x280], eax
	mov	rdi, rbx
	call	free
	cmp	dword ptr [rbp - 0x280], 0
	je	.label_288
.label_174:
	mov	rdi, r13
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45_0
	jmp	.label_312
.label_249:
	mov	ebx, r13d
	not	ebx
	and	ebx, dword ptr [rbp - 0x28c]
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	r14, qword ptr [rbp - 0x2a8]
	mov	rdi, r14
	mov	esi, ebx
	call	__mknod
	test	eax, eax
	je	.label_318
	and	ebx, 0xffffefff
	mov	rdi, r14
	mov	esi, ebx
	call	mkfifo
	test	eax, eax
	je	.label_323
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42_0
	jmp	.label_312
.label_183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	jmp	.label_330
.label_250:
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_146
	mov	edx, dword ptr [r15 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	call	set_acl
	test	eax, eax
	mov	bl, byte ptr [rbp - 0x288]
	je	.label_155
	xor	r12d, r12d
	jmp	.label_153
.label_283:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x278]
	jmp	.label_160
.label_146:
	mov	r14, rbx
	cmp	byte ptr [r15 + 0x20], 0
	je	.label_166
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	je	.label_166
	mov	eax, dword ptr [rbp - 0x28c]
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
	mov	rdi, r14
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	mov	bl, byte ptr [rbp - 0x288]
	je	.label_155
	xor	r12d, r12d
	jmp	.label_153
.label_288:
	mov	rdi, r13
	call	free
	cmp	byte ptr [r15 + 0x25], 0
	jne	.label_200
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_196
	mov	esi, dword ptr [rbp - 0xa4]
	mov	edx, dword ptr [rbp - 0xa0]
	mov	rdi, qword ptr [rbp - 0x2a8]
	call	lchown
	test	eax, eax
	je	.label_196
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	je	.label_231
.label_196:
	mov	al, 1
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	bl, 1
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x29c], eax
	mov	al, byte ptr [rbp + 0x10]
	mov	r13d, dword ptr [rbp - 0x288]
	jmp	.label_206
.label_323:
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
.label_318:
	xor	edx, edx
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x29c], eax
	mov	al, byte ptr [rbp + 0x10]
	mov	bl, 1
	jmp	.label_206
.label_166:
	test	r13d, r13d
	je	.label_220
	call	cached_umask
	not	eax
	and	r13d, eax
	test	r12b, r12b
	jne	.label_176
	test	r13d, r13d
	je	.label_176
	cmp	byte ptr [rbp - 0x29], 0
	je	.label_194
	lea	rsi, [rbp - 0x150]
	mov	rdi, r14
	call	__lstat
	test	eax, eax
	je	.label_194
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	jmp	.label_267
.label_220:
	xor	r13d, r13d
	jmp	.label_176
.label_231:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x2a8]
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_151
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_148
.label_194:
	mov	eax, dword ptr [rbp - 0x138]
	mov	dword ptr [rbp - 0x29c], eax
	not	eax
	test	r13d, eax
	je	.label_176
	mov	r12b, 1
.label_176:
	test	r12b, 1
	mov	bl, byte ptr [rbp - 0x288]
	je	.label_155
	mov	esi, dword ptr [rbp - 0x29c]
	or	esi, r13d
	mov	rdi, r14
	call	chmod
	test	eax, eax
	je	.label_155
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x278], eax
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	call	dcgettext
	mov	r13b, bl
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x278]
	mov	rdx, rbx
	mov	bl, r13b
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_153
.label_155:
	test	bl, bl
	setne	r12b
	jmp	.label_153
.label_151:
	mov	al, 1
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	bl, 1
	mov	dword ptr [rbp - 0x29c], eax
	mov	al, byte ptr [rbp + 0x10]
	mov	r13d, dword ptr [rbp - 0x288]
	xor	r14d, r14d
	jmp	.label_206
.label_262:
	call	restore_default_fscreatecon_or_die
.label_200:
	call	restore_default_fscreatecon_or_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062f0

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
	.align	16
	#Procedure 0x406330

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_331
	cmp	eax, 1
	jne	.label_332
.label_331:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	pop	rbx
	ret	
.label_332:
	xor	eax, eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406360

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	cmp	dword ptr [dword ptr [rip + cached_umask.mask]],  -1
	jne	.label_333
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	add	rsp, 8
.label_333:
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406390

	.globl should_dereference
	.type should_dereference, @function
should_dereference:
	mov	ecx, dword ptr [rdi + 4]
	mov	al, 1
	cmp	ecx, 4
	je	.label_334
	cmp	ecx, 3
	sete	al
	and	al, sil
.label_334:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063b0

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
	jne	.label_346
	mov	rax, qword ptr [rbp]
	cmp	rax, qword ptr [rbx]
	mov	byte ptr [r14], 0
	jne	.label_354
	mov	r13b, 1
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_356
	mov	byte ptr [r14], 1
	mov	r12b, 1
	jmp	.label_336
.label_346:
	mov	byte ptr [r14], 0
.label_354:
	xor	r13d, r13d
.label_356:
	cmp	dword ptr [r15 + 4], 2
	jne	.label_335
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_338
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	mov	rsi, rbp
	jne	.label_337
	mov	rsi, rdx
	call	same_name
	test	al, al
	jne	.label_348
	mov	r12b, 1
	cmp	dword ptr [r15], 0
	jne	.label_336
	test	r13b, r13b
	je	.label_348
	mov	byte ptr [r14], 1
	jmp	.label_352
.label_335:
	mov	qword ptr [rsp + 0x10], r14
	mov	r14, rdi
	mov	r12b, 1
	test	r13b, r13b
	je	.label_336
	lea	rbx, [rsp + 0xa8]
	mov	rdi, rdx
	mov	rsi, rbx
	mov	r13, rdx
	call	__lstat
	test	eax, eax
	jne	.label_336
	mov	qword ptr [rsp + 8], r13
	lea	rax, [rsp + 0x18]
	mov	r13, r14
	mov	r14, rax
	mov	rdi, r13
	mov	rsi, r14
	call	__lstat
	test	eax, eax
	jne	.label_336
	mov	rsi, r14
	mov	rcx, r13
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_347
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0xa8]
	sete	r13b
	jmp	.label_353
.label_338:
	mov	rsi, rbp
.label_337:
	cmp	dword ptr [r15], 0
	je	.label_357
	test	r13b, r13b
	je	.label_359
	mov	rsi, rdx
	call	same_name
	mov	r12b, al
	xor	r12b, 1
	jmp	.label_336
.label_357:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_360
	cmp	byte ptr [r15 + 0x15], 0
	je	.label_339
.label_360:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_336
	test	r13b, r13b
	je	.label_339
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_339
	mov	r13, rdi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rsi, rdx
	mov	r12, rdx
	call	same_name
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r13
	mov	rdx, r12
	test	al, al
	je	.label_352
.label_339:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	je	.label_342
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_342
	mov	rax, qword ptr [rsi + 8]
	mov	r12b, 1
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_336
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [rbx]
	jne	.label_336
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_342
	mov	byte ptr [r14], 1
	jmp	.label_336
.label_359:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_345
	cmp	dword ptr [r15 + 4], 2
	je	.label_345
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_345
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_351
.label_345:
	mov	r12b, 1
	jmp	.label_336
.label_348:
	xor	al, 1
	mov	r12b, al
	jmp	.label_336
.label_342:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_341
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0xa000
	jne	.label_341
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_341
	mov	rbp, rdi
	mov	r12, rdx
	mov	r13, rsi
	call	canonicalize_file_name
	mov	rsi, r13
	mov	rdi, rbp
	mov	rdx, r12
	mov	rbp, rax
	test	rbp, rbp
	je	.label_341
	mov	rdi, rbp
	mov	rsi, rdx
	call	same_name
	mov	r12b, al
	xor	r12b, 1
	mov	rdi, rbp
	call	free
	jmp	.label_336
.label_341:
	cmp	byte ptr [r15 + 0x2c], 0
	je	.label_349
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_336
.label_349:
	cmp	dword ptr [r15 + 4], 2
	jne	.label_355
	mov	rbp, rdx
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_358
	lea	rsi, [rsp + 0x18]
	call	stat
	mov	r12b, 1
	test	eax, eax
	mov	rdi, rbp
	jne	.label_336
	jmp	.label_343
.label_352:
	cmp	byte ptr [r15 + 0x18], 0
	sete	r12b
	jmp	.label_336
.label_355:
	xor	r12d, r12d
	jmp	.label_336
.label_347:
	xor	r13d, r13d
.label_353:
	mov	rdx, qword ptr [rsp + 8]
	mov	rdi, rcx
	mov	r14, qword ptr [rsp + 0x10]
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x30]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_337
	and	eax, dword ptr [rsp + 0xc0]
	cmp	eax, 0xa000
	jne	.label_337
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_336
	jmp	.label_337
.label_358:
	lea	rdi, [rsp + 0x18]
	mov	edx, 0x90
	call	memcpy
	mov	rdi, rbp
.label_343:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_340
	lea	rsi, [rsp + 0xa8]
	call	stat
	mov	r12b, 1
	test	eax, eax
	jne	.label_336
	jmp	.label_344
.label_340:
	lea	rdi, [rsp + 0xa8]
	mov	edx, 0x90
	mov	rsi, rbx
	call	memcpy
.label_344:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12b, 1
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_336
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0xa8]
	jne	.label_336
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_350
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	setne	byte ptr [r14]
	jmp	.label_336
.label_351:
	xor	r12d, r12d
	jmp	.label_336
.label_350:
	xor	r12d, r12d
.label_336:
	mov	al, r12b
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
	.align	16
	#Procedure 0x4067a0

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
	jle	.label_362
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
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
	jmp	.label_361
.label_362:
	test	ebp, ebp
	mov	r14b, 1
	jns	.label_361
	xor	r12b, 1
	jne	.label_361
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
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
.label_361:
	mov	al, r14b
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406890

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
	je	.label_365
	mov	ecx, dword ptr [rbx + 8]
	mov	al, 1
	cmp	ecx, 2
	je	.label_363
	cmp	ecx, 3
	je	.label_364
	cmp	ecx, 4
	jne	.label_366
	cmp	byte ptr [rbx + 0x2f], 0
	je	.label_367
	mov	esi, dword ptr [r14 + 0x18]
	mov	rdi, r15
	call	writable_destination
	test	al, al
	je	.label_364
	xor	eax, eax
	jmp	.label_363
.label_364:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	overwrite_ok
	xor	al, 1
	jmp	.label_363
.label_366:
	xor	eax, eax
	jmp	.label_363
.label_367:
	xor	eax, eax
.label_363:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_365:
	mov	edi, OFFSET FLAT:.str.53_0
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 0x6d2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.abandon_move
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406910

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
	je	.label_371
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56_0
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
	jmp	.label_368
.label_371:
	mov	edi, dword ptr [r13 + 0x18]
	lea	rsi, [rsp + 0xc]
	call	strmode
	mov	byte ptr [rsp + 0x16], 0
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	cmp	byte ptr [rbx + 0x18], 0
	jne	.label_369
	cmp	byte ptr [rbx + 0x15], 0
	jne	.label_369
	cmp	byte ptr [rbx + 0x16], 0
	je	.label_370
.label_369:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
.label_372:
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
.label_368:
	call	yesno
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_370:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55_0
	jmp	.label_372
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a30

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_373
	movzx	ecx, byte ptr [rdi + 1]
	mov	eax, 2
	cmp	ecx, 0x2e
	je	.label_374
	mov	eax, 1
.label_374:
	movzx	eax, byte ptr [rdi + rax]
	test	al, al
	sete	cl
	cmp	eax, 0x2f
	sete	al
	or	al, cl
	ret	
.label_373:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a60

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
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, rdi
	call	strlen
	mov	r15, rax
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
	jne	.label_380
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_376
	xor	eax, eax
	jmp	.label_375
.label_380:
	xor	eax, eax
	jmp	.label_375
.label_376:
	add	rbx, rbp
	mov	rdi, rbx
	mov	rsi, r13
	call	strcmp
	test	eax, eax
	je	.label_379
	xor	eax, eax
	jmp	.label_375
.label_379:
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
	je	.label_377
	xor	eax, eax
	jmp	.label_375
.label_377:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_378
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	al
	jmp	.label_375
.label_378:
	xor	eax, eax
.label_375:
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
	.align	16
	#Procedure 0x406b90

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
	mov	esi, OFFSET FLAT:.str.57_0
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
	test	r14, r14
	je	.label_381
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58_0
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
.label_381:
	mov	edi, 0xa
	pop	rbx
	pop	r14
	pop	r15
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c30

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	test	rsi, rsi
	je	.label_382
	mov	rcx, qword ptr [rdi + 8]
	nop	dword ptr [rax]
.label_385:
	cmp	qword ptr [rsi + 8], rcx
	jne	.label_383
	mov	rdx, qword ptr [rsi + 0x10]
	mov	al, 1
	cmp	rdx, qword ptr [rdi]
	je	.label_384
.label_383:
	mov	rsi, qword ptr [rsi]
	test	rsi, rsi
	jne	.label_385
.label_382:
	xor	eax, eax
.label_384:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406c60

	.globl copy_dir
	.type copy_dir, @function
copy_dir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	rbp, r9
	mov	qword ptr [rsp + 0x50], r8
	mov	qword ptr [rsp + 0x48], rcx
	mov	r13d, edx
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x38], rbx
	movups	xmm0, xmmword ptr [rbp + 0x40]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmm2, xmmword ptr [rbp + 0x20]
	movups	xmm3, xmmword ptr [rbp + 0x30]
	movaps	xmmword ptr [rsp + 0x90], xmm3
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x70], xmm1
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	esi, 2
	call	savedir
	test	rax, rax
	je	.label_386
	cmp	dword ptr [rbp + 4], 3
	jne	.label_389
	mov	dword ptr [rsp + 0x64], 2
.label_389:
	mov	r14b, 1
	xor	ebp, ebp
	cmp	byte ptr [rax], 0
	je	.label_390
	movzx	ecx, r13b
	mov	dword ptr [rsp + 0x34], ecx
	mov	r13, rax
	mov	qword ptr [rsp + 0x28], rax
	nop	word ptr cs:[rax + rax]
.label_391:
	mov	byte ptr [rsp + 0x5d], r14b
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r13
	call	file_name_concat
	mov	r15, rax
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r13
	call	file_name_concat
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rax]
	mov	byte ptr [rsp + 0x5e], al
	lea	rax, [rsp + 0x5f]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x5e]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp], 0
	mov	rdi, r15
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x50]
	lea	r9, [rsp + 0x60]
	call	copy_internal
	mov	r14b, al
	and	r14b, byte ptr [rsp + 0x5d]
	mov	bl, byte ptr [rsp + 0x5f]
	mov	rax, qword ptr [rsp + 0xf8]
	or	byte ptr [rax], bl
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
	test	bl, bl
	jne	.label_388
	or	bpl, byte ptr [rsp + 0x5e]
	mov	rdi, r13
	call	strlen
	cmp	byte ptr [rax + r13 + 1], 0
	lea	r13, [rax + r13 + 1]
	mov	rbx, qword ptr [rsp + 0x38]
	jne	.label_391
	jmp	.label_388
.label_386:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59_0
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
	jmp	.label_387
.label_390:
	mov	qword ptr [rsp + 0x28], rax
.label_388:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rax, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax], bpl
	test	r14b, r14b
	setne	bpl
.label_387:
	mov	al, bpl
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e50

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2a8
	mov	rbx, r9
	mov	r12d, r8d
	mov	r13d, ecx
	mov	qword ptr [rsp + 0xd8], rdx
	mov	rbp, rsi
	mov	r15, rdi
	mov	r14, qword ptr [rsp + 0x2e0]
	mov	eax, dword ptr [r14 + 0x18]
	mov	dword ptr [rsp + 0xcc], eax
	mov	al, byte ptr [rdx + 0x23]
	mov	byte ptr [rsp + 0xd0], al
	mov	esi, 0x20000
	cmp	dword ptr [rdx + 4], 2
	je	.label_406
	xor	esi, esi
.label_406:
	xor	eax, eax
	mov	rdi, r15
	call	open_safer
	test	eax, eax
	js	.label_419
	mov	qword ptr [rsp + 0xe0], r15
	lea	rsi, [rsp + 0x188]
	mov	edi, eax
	mov	r15d, eax
	call	__fstat
	test	eax, eax
	je	.label_423
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xe0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_426
.label_419:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60_0
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
	jmp	.label_399
.label_423:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [rsp + 0x190]
	jne	.label_410
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rsp + 0x188]
	jne	.label_410
	cmp	byte ptr [rbx], 0
	je	.label_435
	mov	qword ptr [rsp + 0xb0], rbx
	mov	dword ptr [rsp + 0xa4], r13d
	mov	qword ptr [rsp + 0xc0], rbp
.label_412:
	mov	ebx, r12d
	mov	edx, ebx
	not	edx
	and	edx, dword ptr [rsp + 0xa4]
	mov	dword ptr [rsp + 0xbc], edx
	mov	esi, 0xc1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0xc0]
	call	open_safer
	mov	r13d, eax
	call	__errno_location
	mov	qword ptr [rsp + 0xa8], rax
	mov	r12d, dword ptr [rax]
	test	r13d, r13d
	jns	.label_392
	cmp	r12d, 0x11
	jne	.label_392
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x18], 0
	jne	.label_392
	lea	rsi, [rsp + 0xf0]
	mov	rdi, qword ptr [rsp + 0xc0]
	call	__lstat
	test	eax, eax
	jne	.label_392
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x108]
	cmp	eax, 0xa000
	jne	.label_392
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x30], 0
	je	.label_396
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	edx, dword ptr [rsp + 0xbc]
	call	open_safer
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0xa8]
	mov	r12d, dword ptr [rax]
.label_392:
	cmp	r12d, 0x15
	mov	rbp, qword ptr [rsp + 0xc0]
	jne	.label_411
	test	r13d, r13d
	jns	.label_411
	cmp	byte ptr [rbp], 0
	je	.label_411
	mov	rdi, rbp
	call	strlen
	movzx	ecx, byte ptr [rax + rbp - 1]
	mov	eax, 0x14
	cmp	ecx, 0x2f
	je	.label_414
	mov	eax, r12d
.label_414:
	mov	dword ptr [rsp + 0xa8], eax
	jmp	.label_422
.label_410:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xe0]
.label_445:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_415:
	mov	rdx, rbx
.label_426:
	call	error
	xor	r14d, r14d
.label_409:
	mov	edi, r15d
	call	close
	test	eax, eax
	jns	.label_425
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xe0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_425:
	mov	rdi, r14
	call	free
	and	r13b, 1
.label_399:
	and	r13b, 1
	mov	al, r13b
	add	rsp, 0x2a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_411:
	mov	dword ptr [rsp + 0xa8], r12d
.label_422:
	mov	dword ptr [rsp + 0x98], ebx
.label_417:
	test	r13d, r13d
	js	.label_401
	lea	rsi, [rsp + 0x218]
	mov	edi, r13d
	mov	dword ptr [rsp + 0xbc], r13d
	call	__fstat
	test	eax, eax
	je	.label_437
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	xor	r14d, r14d
	jmp	.label_394
.label_435:
	mov	qword ptr [rsp + 0xb0], rbx
	mov	esi, 0x201
	mov	rbx, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rbx + 0x23], 0
	jne	.label_441
	mov	esi, 1
.label_441:
	xor	eax, eax
	mov	rdi, rbp
	mov	qword ptr [rsp + 0xc0], rbp
	call	open_safer
	mov	ebp, eax
	call	__errno_location
	mov	qword ptr [rsp + 0x98], rax
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xa8], eax
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_393
	mov	dword ptr [rsp + 0xa4], r13d
	test	ebp, ebp
	mov	dword ptr [rsp + 0xbc], ebp
	jns	.label_398
	jmp	.label_403
.label_401:
	mov	ebp, dword ptr [rsp + 0xa8]
	cmp	ebp, 2
	mov	rax, qword ptr [rsp + 0xb0]
	jne	.label_405
	cmp	byte ptr [rax], 0
	jne	.label_405
	mov	rdx, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rdx + 0x18], 0
	je	.label_407
.label_405:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_415
.label_437:
	mov	r13b, 1
	xor	r14d, r14d
	cmp	byte ptr [rsp + 0xd0], 0
	je	.label_397
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_420
	mov	edi, dword ptr [rsp + 0xbc]
	mov	esi, r15d
	call	clone_file
	xor	r14d, r14d
	test	eax, eax
	je	.label_397
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_420
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0xc0]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0xe0]
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	xor	r14d, r14d
	jmp	.label_394
.label_393:
	mov	dword ptr [rsp + 0xa4], r13d
	test	ebp, ebp
	mov	dword ptr [rsp + 0xbc], ebp
	js	.label_432
	mov	al, byte ptr [rbx + 0x25]
	test	al, al
	je	.label_432
.label_398:
	movzx	esi, byte ptr [rbx + 0x25]
	xor	r14d, r14d
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	rcx, rbx
	call	set_file_security_ctx
	xor	r13d, r13d
	cmp	byte ptr [rbx + 0x26], 0
	jne	.label_394
.label_432:
	cmp	dword ptr [rsp + 0xbc], 0
	jns	.label_438
.label_403:
	cmp	byte ptr [rbx + 0x16], 0
	je	.label_438
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rdi, rbp
	call	unlink
	test	eax, eax
	je	.label_439
	mov	rax, qword ptr [rsp + 0x98]
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
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
	jmp	.label_415
.label_420:
	call	getpagesize
	cdqe	
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsp + 0x218]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	mov	r13, rax
	mov	rax, qword ptr [rsp + 0x250]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	ebx, 0x200
	cmovb	rbx, rax
	test	rax, rax
	cmovle	rbx, rcx
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, r15d
	call	fdadvise
	lea	rdi, [rsp + 0x188]
	call	is_probably_sparse
	mov	dl, al
	mov	r14d, 0xf000
	mov	eax, dword ptr [rsp + 0x230]
	and	eax, r14d
	cmp	eax, 0x8000
	jne	.label_413
	mov	rax, qword ptr [rsp + 0xd8]
	mov	ecx, dword ptr [rax + 0xc]
	cmp	ecx, 2
	sete	al
	cmp	ecx, 3
	mov	r12b, 1
	je	.label_416
	and	al, dl
	jne	.label_421
.label_413:
	mov	byte ptr [rsp + 0xa8], dl
	movabs	rbp, 0x7fffffffffffffff
	sub	rbp, qword ptr [rsp + 0xd0]
	lea	rsi, [rsp + 0x188]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	mov	rdi, rax
	mov	rsi, r13
	mov	rdx, rbp
	call	buffer_lcm
	mov	rcx, rax
	and	r14d, dword ptr [rsp + 0x1a0]
	cmp	r14d, 0x8000
	jne	.label_431
	mov	rax, qword ptr [rsp + 0x1b8]
	cmp	rax, r13
	lea	rax, [rax + 1]
	cmovb	r13, rax
.label_431:
	lea	rsi, [rcx + r13 - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	mov	r13, rsi
	sub	r13, rdx
	cmp	rbp, r13
	cmovb	r13, rcx
	cmp	rsi, rdx
	cmove	r13, rcx
	xor	r12d, r12d
.label_404:
	mov	rbp, qword ptr [rsp + 0xd0]
	lea	rdi, [r13 + rbp]
	call	xmalloc
	mov	r14, rax
	mov	rdi, r14
	mov	rsi, rbp
	call	ptr_align
	mov	rbp, rax
	cmp	byte ptr [rsp + 0xa8], 0
	je	.label_433
	mov	eax, 1
	mov	r9, qword ptr [rsp + 0x1b8]
	test	r12b, r12b
	mov	rdx, qword ptr [rsp + 0xe0]
	je	.label_436
	mov	rax, qword ptr [rsp + 0xd8]
	mov	eax, dword ptr [rax + 0xc]
.label_436:
	lea	rcx, [rsp + 0xf0]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rdx
	mov	dword ptr [rsp], eax
	mov	edi, r15d
	mov	esi, dword ptr [rsp + 0xbc]
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8, rbx
	call	extent_copy
	test	al, al
	je	.label_443
	mov	r13b, 1
	mov	ecx, 5
	jmp	.label_395
.label_439:
	cmp	byte ptr [rbx + 0x2e], 0
	je	.label_446
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r13
	mov	rdx, rcx
	call	__printf_chk
.label_446:
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 1
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_400
	mov	ecx, 1
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	r8, rbx
	call	set_process_security_ctx
	xor	r13d, r13d
	test	al, al
	mov	r14d, 0
	je	.label_409
.label_438:
	mov	dword ptr [rsp + 0x98], 0
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	byte ptr [rax], 0
	mov	r13d, dword ptr [rsp + 0xbc]
	mov	r14, qword ptr [rsp + 0x2e0]
	jne	.label_412
	jmp	.label_417
.label_407:
	mov	byte ptr [rax], 1
	mov	r12d, dword ptr [rsp + 0x98]
	jmp	.label_412
.label_443:
	cmp	byte ptr [rsp + 0xf0], 0
	je	.label_442
.label_433:
	xor	eax, eax
	test	r12b, r12b
	cmove	rbx, rax
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	dword ptr [rax + 0xc], 3
	sete	al
	lea	rcx, [rsp + 0xef]
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rsp + 0xf0]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 0x10], -1
	movzx	r9d, al
	mov	edi, r15d
	mov	esi, dword ptr [rsp + 0xbc]
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8, rbx
	call	sparse_copy
	mov	ecx, 3
	test	al, al
	je	.label_430
	mov	r13b, 1
	cmp	byte ptr [rsp + 0xef], 0
	je	.label_434
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	edi, dword ptr [rsp + 0xbc]
	call	ftruncate
	test	eax, eax
	mov	ecx, 0
	jns	.label_395
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rbp, r14
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	mov	r14, rbp
	call	error
	mov	ecx, 3
	jmp	.label_395
.label_430:
	xor	r13d, r13d
	jmp	.label_395
.label_400:
	mov	r14, qword ptr [rsp + 0x2e0]
	jmp	.label_412
.label_396:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	jmp	.label_445
.label_416:
	mov	byte ptr [rsp + 0xa8], dl
	jmp	.label_404
.label_421:
	mov	byte ptr [rsp + 0xa8], dl
	jmp	.label_404
.label_434:
	xor	ecx, ecx
	jmp	.label_395
.label_442:
	mov	ecx, 3
	xor	r13d, r13d
.label_395:
	cmp	ecx, 5
	je	.label_397
	cmp	ecx, 3
	je	.label_394
	test	ecx, ecx
	jne	.label_399
.label_397:
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_402
	mov	rbp, qword ptr [rsp + 0x2e0]
	mov	rdi, rbp
	call	get_stat_atime
	mov	qword ptr [rsp + 0xf0], rax
	mov	qword ptr [rsp + 0xf8], rdx
	mov	rdi, rbp
	call	get_stat_mtime
	mov	qword ptr [rsp + 0x100], rax
	mov	qword ptr [rsp + 0x108], rdx
	lea	rdx, [rsp + 0xf0]
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, rbp
	call	fdutimens
	test	eax, eax
	je	.label_402
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbx, r14
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r14
	mov	r14, rbx
	call	error
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x24], 0
	je	.label_402
	xor	r13d, r13d
	jmp	.label_394
.label_402:
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x1d], 0
	mov	rcx, qword ptr [rsp + 0x2e0]
	je	.label_418
	mov	eax, dword ptr [rcx + 0x1c]
	cmp	eax, dword ptr [rsp + 0x234]
	jne	.label_427
	mov	eax, dword ptr [rcx + 0x20]
	cmp	eax, dword ptr [rsp + 0x238]
	je	.label_418
.label_427:
	mov	rax, qword ptr [rsp + 0xb0]
	movzx	r8d, byte ptr [rax]
	lea	r9, [rsp + 0x218]
	mov	rdi, qword ptr [rsp + 0xd8]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	edx, dword ptr [rsp + 0xbc]
	call	set_owner
	cmp	eax, -1
	je	.label_447
	test	eax, eax
	jne	.label_418
	and	dword ptr [rsp + 0xcc], 0xfffff1ff
.label_418:
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x27], 0
	je	.label_424
	cmp	byte ptr [rsp + 0x230], 0
	js	.label_424
	call	geteuid
	test	eax, eax
	je	.label_424
	mov	edx, 0x180
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0xc0]
	call	fchmod_or_lchmod
	test	eax, eax
	jne	.label_424
	mov	edx, dword ptr [rsp + 0x98]
	not	edx
	and	edx, dword ptr [rsp + 0xa4]
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0xc0]
	call	fchmod_or_lchmod
.label_424:
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_440
	cmp	byte ptr [rax + 0x18], 0
	je	.label_444
.label_440:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	esi, r15d
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	ecx, dword ptr [rsp + 0xbc]
	mov	r8d, dword ptr [rsp + 0xcc]
	call	copy_acl
	test	eax, eax
	je	.label_394
	cmp	byte ptr [rbx + 0x24], 0
	je	.label_394
	xor	r13d, r13d
	jmp	.label_394
.label_447:
	xor	r13d, r13d
	jmp	.label_394
.label_444:
	cmp	byte ptr [rax + 0x2b], 0
	je	.label_428
	mov	edx, dword ptr [rax + 0x10]
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	esi, dword ptr [rsp + 0xbc]
	call	set_acl
	test	eax, eax
	je	.label_394
	xor	r13d, r13d
	jmp	.label_394
.label_428:
	cmp	byte ptr [rax + 0x20], 0
	mov	rbp, rax
	je	.label_408
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	byte ptr [rax], 0
	je	.label_408
	call	cached_umask
	not	eax
	and	eax, 0x1b6
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	esi, dword ptr [rsp + 0xbc]
	mov	edx, eax
	call	set_acl
	test	eax, eax
	je	.label_394
	xor	r13d, r13d
	jmp	.label_394
.label_408:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_394
	call	cached_umask
	not	eax
	test	dword ptr [rsp + 0x98], eax
	je	.label_394
	mov	r12, r14
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	edx, dword ptr [rsp + 0xa4]
	call	fchmod_or_lchmod
	test	eax, eax
	je	.label_429
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	cmp	byte ptr [rbp + 0x24], 0
	je	.label_429
	xor	r13d, r13d
.label_429:
	mov	r14, r12
.label_394:
	mov	edi, dword ptr [rsp + 0xbc]
	call	close
	test	eax, eax
	jns	.label_409
	call	__errno_location
	mov	rbp, r14
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	r14, rbp
	mov	rdx, rbx
	call	error
	jmp	.label_409
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b90

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rbx
	xor	edi, edi
	call	setfscreatecon
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407bd0

	.globl utimens_symlink
	.type utimens_symlink, @function
utimens_symlink:
	push	rbx
	call	lutimens
	mov	ebx, eax
	test	ebx, ebx
	je	.label_449
	call	__errno_location
	mov	rcx, rax
	xor	eax, eax
	cmp	dword ptr [rcx], 0x26
	je	.label_448
	mov	eax, ebx
.label_448:
	pop	rbx
	ret	
.label_449:
	xor	eax, eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c00

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
	jne	.label_450
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_460
	mov	edx, dword ptr [r9 + 0x18]
	add	rcx, 0x18
	jmp	.label_453
.label_460:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_461
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_450
.label_461:
	mov	edx, dword ptr [r9 + 0x18]
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_458
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_454
.label_458:
	add	rcx, 0x18
.label_453:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, edx
	test	cx, 0xfff
	je	.label_450
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	esi, ebx
	call	qset_acl
	test	eax, eax
	je	.label_450
	mov	rdi, r15
	call	owner_failure_ok
	test	al, al
	jne	.label_457
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
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
.label_457:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_455
.label_450:
	cmp	ebx, -1
	je	.label_459
	mov	edi, ebx
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_455
	call	__errno_location
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	cmp	eax, 0x16
	je	.label_452
	cmp	eax, 1
	jne	.label_456
.label_452:
	mov	r13d, dword ptr [rbp]
	mov	esi, 0xffffffff
	mov	edi, ebx
	mov	edx, r12d
	call	fchown
	mov	dword ptr [rbp], r13d
	jmp	.label_456
.label_459:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_455
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	cmp	eax, 0x16
	je	.label_451
	cmp	eax, 1
	jne	.label_456
.label_451:
	mov	ebp, dword ptr [rbx]
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
	mov	dword ptr [rbx], ebp
.label_456:
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	jne	.label_462
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
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
	jne	.label_455
.label_462:
	xor	eax, eax
.label_455:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_454:
	lea	rcx, [r15 + 0x10]
	jmp	.label_453
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407de0

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
	je	.label_463
	call	can_write_any_file
	test	al, al
	jne	.label_463
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	sete	bl
.label_463:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407e20

	.globl clone_file
	.type clone_file, @function
clone_file:
	mov	ecx, esi
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edx, ecx
	jmp	ioctl
	.section	.text
	.align	16
	#Procedure 0x407e30

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
	jl	.label_464
	or	al, dl
	jne	.label_464
	movabs	rax, 0x2000000000000001
	cmp	rcx, rax
	mov	edx, 0x200
	mov	eax, 0x200
	cmovb	rax, rcx
	test	rcx, rcx
	cmovle	rax, rdx
	ret	
.label_464:
	mov	eax, 0x20000
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e90

	.globl is_probably_sparse
	.type is_probably_sparse, @function
is_probably_sparse:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	cmp	eax, 0x8000
	jne	.label_465
	mov	rax, qword ptr [rdi + 0x30]
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x37
	add	rcx, rax
	sar	rcx, 9
	cmp	qword ptr [rdi + 0x40], rcx
	setl	al
	ret	
.label_465:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ec0

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
	.align	16
	#Procedure 0x407ee0

	.globl extent_copy
	.type extent_copy, @function
extent_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, r9
	mov	rbp, r8
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x38], rdx
	mov	dword ptr [rsp + 0x54], esi
	mov	dword ptr [rsp + 0x58], edi
	mov	rbx, qword ptr [rsp + 0xe8]
	lea	r15, [rsp + 0x68]
	mov	rsi, r15
	call	extent_scan_init
	mov	byte ptr [rbx], 0
	xor	ebx, ebx
	cmp	dword ptr [rsp + 0xd0], 3
	cmovne	rbp, rbx
	mov	qword ptr [rsp + 0x48], rbp
	mov	al, 1
	mov	dword ptr [rsp + 0x50], eax
	xor	ebp, ebp
	xor	r13d, r13d
.label_490:
	mov	rdi, r15
	call	extent_scan_read
	test	al, al
	je	.label_482
	mov	r12d, 1
	cmp	qword ptr [rsp + 0x80], 0
	mov	ecx, 0
	mov	rsi, r14
	je	.label_484
	nop	dword ptr [rax]
.label_470:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rcx, [rcx + rcx*2]
	mov	r14, qword ptr [rax + rcx*8]
	mov	r15, qword ptr [rax + rcx*8 + 8]
	lea	rax, [r15 + r14]
	cmp	rax, rsi
	jle	.label_488
	cmp	r14, rsi
	cmovg	r14, rsi
	mov	r15, rsi
	sub	r15, r14
.label_488:
	mov	rbp, r14
	sub	rbp, r13
	sub	rbp, rbx
	jne	.label_473
	mov	rbx, rsi
	jmp	.label_474
	nop	dword ptr [rax + rax]
.label_473:
	mov	rbx, rsi
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x58]
	mov	rsi, r14
	call	lseek
	test	rax, rax
	js	.label_480
	mov	eax, dword ptr [rsp + 0xd0]
	cmp	eax, 1
	jne	.label_483
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, rbp
	call	write_zeros
	test	al, al
	je	.label_485
.label_474:
	xor	ebp, ebp
	jmp	.label_487
	nop	
.label_483:
	cmp	eax, 3
	sete	al
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rcx, rbp
	call	create_hole
	mov	bpl, 1
	test	al, al
	je	.label_468
.label_487:
	lea	rax, [rsp + 0x5f]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [rsp + 0x60]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], r15
	mov	rax, qword ptr [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp], rax
	mov	r9d, 1
	mov	edi, dword ptr [rsp + 0x58]
	mov	esi, dword ptr [rsp + 0x54]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r8, qword ptr [rsp + 0x48]
	call	sparse_copy
	test	al, al
	je	.label_468
	mov	dword ptr [rsp + 0x50], ebp
	mov	rdx, qword ptr [rsp + 0x60]
	lea	rbp, [rdx + r14]
	mov	al, byte ptr [rsp + 0x5f]
	mov	rsi, rbx
	cmp	rbp, rsi
	je	.label_481
	mov	ecx, r12d
	inc	r12d
	cmp	rcx, qword ptr [rsp + 0x80]
	mov	r13, r14
	mov	rbx, r15
	jb	.label_470
	test	rdx, rdx
	je	.label_475
	mov	dword ptr [rsp + 0x50], eax
	jmp	.label_475
.label_481:
	test	rdx, rdx
	je	.label_476
	mov	dword ptr [rsp + 0x50], eax
.label_476:
	mov	byte ptr [rsp + 0x89], 1
.label_475:
	mov	r13, r14
	mov	rbx, r15
.label_484:
	mov	r14, rsi
	lea	r15, [rsp + 0x68]
	mov	rdi, r15
	call	extent_scan_free
	cmp	byte ptr [rsp + 0x89], 0
	je	.label_490
	jmp	.label_486
.label_480:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xd8]
	call	quotearg_style
	jmp	.label_472
.label_485:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xe0]
	call	quotearg_n_style_colon
.label_472:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_468:
	lea	rdi, [rsp + 0x68]
	call	extent_scan_free
	xor	r14d, r14d
.label_466:
	mov	al, r14b
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_482:
	cmp	byte ptr [rsp + 0x89], 0
	je	.label_491
.label_486:
	mov	rcx, r14
	cmp	rbp, rcx
	jl	.label_467
	mov	eax, dword ptr [rsp + 0x50]
	and	al, 1
	je	.label_469
.label_467:
	mov	eax, dword ptr [rsp + 0xd0]
	cmp	eax, 1
	jne	.label_471
	sub	rcx, rbp
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, rcx
	call	write_zeros
	mov	r14b, 1
	test	al, al
	jne	.label_466
	jmp	.label_477
.label_491:
	cmp	byte ptr [rsp + 0x88], 0
	je	.label_478
	mov	rax, qword ptr [rsp + 0xe8]
	mov	byte ptr [rax], 1
	xor	r14d, r14d
	jmp	.label_466
.label_471:
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, rcx
	mov	rbx, rcx
	call	ftruncate
	mov	rcx, rbx
	test	eax, eax
	je	.label_469
.label_477:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	jmp	.label_489
.label_469:
	cmp	dword ptr [rsp + 0xd0], 3
	mov	r14b, 1
	jne	.label_466
	cmp	rbp, rcx
	jge	.label_466
	sub	rcx, rbp
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, rbp
	mov	rdx, rcx
	call	punch_hole
	test	eax, eax
	jns	.label_466
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
.label_489:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xe0]
	call	quotearg_style
	jmp	.label_479
.label_478:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xd8]
	call	quotearg_n_style_colon
.label_479:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_466
	.section	.text
	.align	16
	#Procedure 0x4082b0

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	dword ptr [rsp + 0x24], r9d
	mov	r15, r8
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x10], rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x50], r14
	mov	dword ptr [rsp + 0x34], esi
	mov	r13d, edi
	mov	dword ptr [rsp + 0x4c], r13d
	mov	rax, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0
	mov	qword ptr [rdx], 0
	test	r15, r15
	mov	rax, rcx
	cmovne	rax, r15
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_498
.label_503:
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x58], rsi
	mov	rax, qword ptr [rsp + 0xc0]
	mov	byte ptr [rax], r8b
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x60]
	nop	word ptr cs:[rax + rax]
.label_498:
	mov	qword ptr [rsp + 0x60], rsi
	cmp	rsi, rcx
	mov	r12, rcx
	cmovb	r12, rsi
	nop	
.label_493:
	test	rsi, rsi
	je	.label_497
	mov	edi, r13d
	mov	rsi, r14
	mov	rdx, r12
	call	read
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_511
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 4
	mov	rsi, qword ptr [rsp + 0x60]
	je	.label_493
	jmp	.label_495
	nop	word ptr cs:[rax + rax]
.label_511:
	je	.label_497
	sub	qword ptr [rsp + 0x60], rbx
	mov	rax, qword ptr [rsp + 0xb8]
	add	qword ptr [rax], rbx
	mov	rsi, qword ptr [rsp + 0x58]
	mov	r8b, sil
	and	r8b, 1
	mov	qword ptr [rsp + 0x38], r14
	mov	rbp, r14
	mov	r12, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_500:
	mov	r9b, r8b
	cmp	r12, rbx
	cmovae	r12, rbx
	test	r15, r15
	je	.label_496
	test	r12, r12
	je	.label_496
	mov	r14, rdi
	mov	rdi, rbp
	mov	rsi, r12
	mov	r13b, r9b
	call	is_nul
	mov	r9b, r13b
	mov	rdi, r14
	mov	sil, al
.label_496:
	mov	r8b, sil
	and	r8b, 1
	movzx	eax, r9b
	movzx	ecx, r8b
	cmp	ecx, eax
	setne	al
	test	rdi, rdi
	setne	r13b
	cmp	rbx, r12
	sete	dl
	test	cl, cl
	sete	cl
	and	cl, dl
	test	r12, r12
	sete	r14b
	or	r14b, cl
	and	r13b, al
	jne	.label_494
	test	r14b, r14b
	jne	.label_494
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	cmp	rdi, rax
	mov	r14, qword ptr [rsp + 0x50]
	mov	r13d, dword ptr [rsp + 0x4c]
	ja	.label_505
	add	rdi, r12
	jmp	.label_512
	nop	word ptr cs:[rax + rax]
.label_494:
	mov	byte ptr [rsp + 0x40], r8b
	mov	qword ptr [rsp + 0x58], rsi
	test	r13b, 1
	mov	r15, r12
	mov	eax, 0
	cmovne	r15, rax
	add	r15, rdi
	test	r9b, r9b
	je	.label_492
	mov	eax, dword ptr [rsp + 0x24]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rcx, r15
	call	create_hole
	test	al, al
	jne	.label_501
	jmp	.label_502
.label_492:
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_506
.label_501:
	test	r14b, r14b
	mov	rsi, qword ptr [rsp + 0x58]
	mov	r8b, byte ptr [rsp + 0x40]
	je	.label_507
	test	r12, r12
	cmove	rbx, r12
	and	r13b, 1
	mov	rax, r12
	mov	ecx, 0
	cmovne	rax, rcx
	test	r13b, r13b
	cmove	r12, rcx
	mov	rdi, r12
	mov	r12, rax
	jmp	.label_509
	nop	word ptr cs:[rax + rax]
.label_507:
	mov	rdi, r12
.label_509:
	mov	qword ptr [rsp + 0x38], rbp
	mov	r15, qword ptr [rsp + 0x28]
	mov	r14, qword ptr [rsp + 0x50]
	mov	r13d, dword ptr [rsp + 0x4c]
.label_512:
	add	rbp, r12
	sub	rbx, r12
	jne	.label_500
	jmp	.label_503
.label_497:
	mov	rax, qword ptr [rsp + 0x58]
	test	al, 1
	je	.label_504
	mov	eax, dword ptr [rsp + 0x24]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rcx, qword ptr [rsp + 0x40]
	call	create_hole
	test	al, al
	je	.label_508
.label_504:
	mov	r14b, 1
	jmp	.label_499
.label_495:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_510
.label_508:
	xor	r14d, r14d
	jmp	.label_499
.label_505:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_510:
	mov	rdx, rbx
	call	error
.label_499:
	mov	al, r14b
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_502:
	xor	r14d, r14d
	jmp	.label_499
.label_506:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_499
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408650

	.globl fchmod_or_lchmod
	.type fchmod_or_lchmod, @function
fchmod_or_lchmod:
	test	edi, edi
	js	.label_513
	mov	esi, edx
	jmp	fchmod
.label_513:
	mov	rdi, rsi
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408670

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
	.align	16
	#Procedure 0x408690

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
	js	.label_514
	mov	r15b, 1
	test	r12b, r12b
	je	.label_515
	sub	rax, rbx
	mov	edi, ebp
	mov	rsi, rax
	mov	rdx, rbx
	call	punch_hole
	test	eax, eax
	jns	.label_515
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	jmp	.label_516
.label_514:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
.label_516:
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
.label_515:
	mov	al, r15b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408730

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14d, edi
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_517
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	jne	.label_517
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
	nop	word ptr cs:[rax + rax]
.label_517:
	mov	al, 1
	test	rbx, rbx
	je	.label_518
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	eax, 0x400
	mov	ebp, 0x20000
	cmovne	rbp, rax
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
	je	.label_517
.label_518:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087f0

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
	jns	.label_519
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	is_ENOTSUP
	xor	ecx, ecx
	cmp	ebp, 0x26
	cmove	ebx, ecx
	test	al, al
	cmovne	ebx, ecx
.label_519:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408840

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	cmp	edi, 0x5f
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408850

	.globl is_nul
	.type is_nul, @function
is_nul:
	mov	rcx, rsi
	mov	al, 1
	test	rcx, rcx
	je	.label_520
	dec	rcx
	mov	rsi, rdi
.label_522:
	cmp	byte ptr [rsi], 0
	jne	.label_521
	test	rcx, rcx
	je	.label_520
	inc	rsi
	mov	dl, cl
	dec	rcx
	test	dl, 0xf
	jne	.label_522
	push	rax
	inc	rcx
	mov	rdx, rcx
	call	memcmp
	test	eax, eax
	sete	al
	add	rsp, 8
.label_520:
	ret	
.label_521:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x408890

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_523
	cmp	eax, 1
	jne	.label_524
.label_523:
	cmp	byte ptr [rbx + 0x1b], 0
	sete	al
	pop	rbx
	ret	
.label_524:
	xor	eax, eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4088c0

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
	je	.label_525
	mov	rdi, rax
	call	src_to_dest_free
.label_525:
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408900

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
	.align	16
	#Procedure 0x408920

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
	je	.label_526
	mov	rax, qword ptr [rcx + 0x10]
.label_526:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x408950

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
	je	.label_527
	xor	eax, eax
	cmp	r14, rbx
	je	.label_528
	mov	rdi, rbx
	call	src_to_dest_free
	mov	rax, qword ptr [r14 + 0x10]
.label_528:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_527:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4089c0

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
	je	.label_529
	pop	rax
	ret	
.label_529:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4089f0

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
	.align	16
	#Procedure 0x408a00

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	jne	.label_530
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
.label_530:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a20
	.globl forget_all
	.type forget_all, @function
forget_all:

	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408a30

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
	.align	16
	#Procedure 0x408a60

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
	mov	r12, rdi
	mov	r14, qword ptr [r12 + 0x28]
	movabs	r15, 0x7fffffffffffffff
	xor	r13d, r13d
.label_544:
	xor	esi, esi
	mov	edx, 0x1000
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	memset
	mov	rax, qword ptr [r12 + 8]
	mov	qword ptr [rsp + 8], rax
	mov	ecx, dword ptr [r12 + 0x10]
	mov	dword ptr [rsp + 0x18], ecx
	mov	dword ptr [rsp + 0x20], 0x48
	not	rax
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, dword ptr [r12]
	mov	esi, 0xc020660b
	xor	eax, eax
	mov	rdx, rbx
	call	ioctl
	test	eax, eax
	js	.label_536
	mov	eax, dword ptr [rsp + 0x1c]
	test	rax, rax
	je	.label_539
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rcx, rax
	not	rcx
	cmp	rsi, rcx
	ja	.label_545
	add	rsi, rax
	mov	qword ptr [r12 + 0x18], rsi
	mov	rdi, qword ptr [r12 + 0x28]
	sub	r14, rdi
	mov	edx, 0x18
	call	xnrealloc
	mov	qword ptr [r12 + 0x28], rax
	add	r14, rax
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_538
	xor	eax, eax
	mov	r8d, dword ptr [rsp + 0x1c]
	nop	dword ptr [rax]
.label_542:
	mov	ecx, eax
	imul	rdi, rcx, 0x38
	mov	rbx, qword ptr [rsp + rdi + 0x28]
	mov	rcx, qword ptr [rsp + rdi + 0x38]
	mov	rdx, r15
	sub	rdx, rcx
	cmp	rbx, rdx
	ja	.label_547
	lea	rsi, [rsp + rdi + 0x28]
	lea	r9, [rsp + rdi + 0x38]
	test	r13d, r13d
	je	.label_535
	mov	ebp, dword ptr [rsp + rdi + 0x50]
	and	ebp, 0xfffffffe
	cmp	dword ptr [r14 + 0x10], ebp
	jne	.label_546
	mov	rbp, qword ptr [r14 + 8]
	mov	rdx, qword ptr [r14]
	add	rdx, rbp
	cmp	rdx, rbx
	jne	.label_546
	lea	rdx, [rsp + rdi + 0x50]
	add	rbp, rcx
	mov	qword ptr [r14 + 8], rbp
	mov	ecx, dword ptr [rdx]
	mov	dword ptr [r14 + 0x10], ecx
	jmp	.label_540
	nop	word ptr cs:[rax + rax]
.label_546:
	mov	rcx, qword ptr [r14 + 8]
	add	rcx, qword ptr [r14]
	cmp	rcx, qword ptr [rsi]
	jbe	.label_531
	mov	rcx, qword ptr [r14 + 8]
	add	rcx, qword ptr [r14]
	jmp	.label_534
	nop	word ptr cs:[rax + rax]
.label_535:
	mov	rcx, qword ptr [r12 + 8]
	cmp	rcx, qword ptr [rsi]
	jbe	.label_531
	mov	rcx, qword ptr [r12 + 8]
.label_534:
	mov	rdi, rcx
	sub	rdi, qword ptr [rsi]
	cmp	rdi, qword ptr [r9]
	jb	.label_541
	mov	qword ptr [rsi], rcx
	sub	qword ptr [r9], rdi
	dec	eax
	jmp	.label_540
	nop	dword ptr [rax + rax]
.label_531:
	mov	rcx, qword ptr [r12 + 0x28]
	mov	edx, r13d
	lea	rdx, [rdx + rdx*2]
	lea	r14, [rcx + rdx*8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rcx + rdx*8], rsi
	mov	rsi, qword ptr [r9]
	mov	qword ptr [rcx + rdx*8 + 8], rsi
	mov	esi, dword ptr [rsp + rdi + 0x50]
	mov	dword ptr [rcx + rdx*8 + 0x10], esi
	inc	r13d
.label_540:
	inc	eax
	cmp	eax, r8d
	jb	.label_542
.label_538:
	test	byte ptr [r14 + 0x10], 1
	je	.label_543
	mov	byte ptr [r12 + 0x21], 1
.label_543:
	cmp	r13d, 0x49
	jb	.label_548
	cmp	byte ptr [r12 + 0x21], 0
	jne	.label_548
	mov	rax, qword ptr [r12 + 0x28]
	dec	r13d
	lea	rcx, [r13 + r13*2]
	lea	r14, [rax + rcx*8 - 0x18]
	nop	word ptr cs:[rax + rax]
.label_548:
	mov	eax, r13d
	mov	qword ptr [r12 + 0x18], rax
	cmp	byte ptr [r12 + 0x21], 0
	jne	.label_532
	mov	rax, qword ptr [r14 + 8]
	add	rax, qword ptr [r14]
	mov	qword ptr [r12 + 8], rax
	mov	al, 1
	cmp	r13d, 0x48
	jb	.label_544
	jmp	.label_533
.label_541:
	cmp	qword ptr [r12 + 8], 0
	je	.label_537
	xor	eax, eax
	jmp	.label_533
.label_536:
	cmp	qword ptr [r12 + 8], 0
	je	.label_537
	xor	eax, eax
	jmp	.label_533
.label_537:
	mov	byte ptr [r12 + 0x20], 1
	xor	eax, eax
	jmp	.label_533
.label_539:
	mov	byte ptr [r12 + 0x21], 1
	cmp	qword ptr [r12 + 8], 0
	setne	al
	jmp	.label_533
.label_532:
	mov	al, 1
.label_533:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_547:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_545:
	mov	edi, OFFSET FLAT:.str_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408d10

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
	mov	r12d, r8d
	mov	qword ptr [rsp], rcx
	mov	r13d, edx
	mov	r14, rsi
	mov	r15d, edi
	mov	ebp, dword ptr [rsp + 0x160]
	test	ebp, ebp
	jns	.label_552
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r13d
	mov	rcx, qword ptr [rsp]
	mov	r8d, r12d
	call	linkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_549
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_552:
	cmp	ebp, 0x11
	jne	.label_549
	xor	bl, 1
	jne	.label_549
	lea	rbp, [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbp
	call	samedir_template
	mov	rbx, rax
	test	rbx, rbx
	je	.label_550
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
	mov	r15, rbp
	test	eax, eax
	je	.label_554
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_551
.label_550:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_549
.label_554:
	mov	edi, r13d
	mov	rsi, rbx
	mov	edx, r13d
	mov	rcx, qword ptr [rsp]
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_553
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_553:
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, rbx
	call	unlinkat
.label_551:
	cmp	rbx, r15
	je	.label_549
	mov	rdi, rbx
	call	free
.label_549:
	mov	eax, ebp
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e30

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
	jb	.label_555
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_556
.label_555:
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	mov	rax, r14
.label_556:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ea0

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
	.align	16
	#Procedure 0x408ec0

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
	jns	.label_557
	mov	rdi, r14
	mov	esi, r15d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_558
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_557:
	cmp	ebp, 0x11
	jne	.label_558
	xor	bl, 1
	jne	.label_558
	lea	rbx, [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	call	samedir_template
	mov	r12, rax
	test	r12, r12
	je	.label_561
	mov	qword ptr [rsp], r14
	mov	dword ptr [rsp + 8], r15d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_559
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_560
.label_561:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_558
.label_559:
	mov	edi, r15d
	mov	rsi, r12
	mov	edx, r15d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_560
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, r12
	call	unlinkat
.label_560:
	cmp	r12, rbx
	je	.label_558
	mov	rdi, r12
	call	free
.label_558:
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
	.align	16
	#Procedure 0x408fc0

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
	nop	
	.section	.text
	.align	16
	#Procedure 0x408fe0

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
	je	.label_563
	cmp	ebp, -2
	jne	.label_564
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_562
.label_563:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_1
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
.label_562:
	call	error
.label_564:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409070

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
	je	.label_565
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
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
.label_565:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090d0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	rbx, rbx
	je	.label_566
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_574:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_567
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_568
.label_567:
	cmp	r13, r12
	jb	.label_570
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_572
	add	r12, r12
	jmp	.label_571
	nop	word ptr cs:[rax + rax]
.label_572:
	cmp	r12, r15
	mov	r12, r15
	jae	.label_569
.label_571:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_574
	jmp	.label_566
.label_570:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_566
.label_569:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_573
.label_568:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_573:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_566:
	mov	rax, qword ptr [rsp + 8]
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
	.align	16
	#Procedure 0x4091e0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091f0

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
	je	.label_578
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_575:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_576
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_580
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_581
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_577
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_576
.label_577:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_576
.label_581:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_576:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_575
	jmp	.label_579
.label_578:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_579:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_580:
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
	.align	16
	#Procedure 0x4092f0

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
	je	.label_582
	mov	esi, OFFSET FLAT:.str.1_3
	jmp	.label_583
.label_582:
	mov	esi, OFFSET FLAT:.str_4
.label_583:
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
	.align	16
	#Procedure 0x409360

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
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_588
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_585:
	test	rbp, rbp
	je	.label_587
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_584
.label_587:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_586
	nop	word ptr cs:[rax + rax]
.label_584:
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
.label_586:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_585
.label_588:
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
	.align	16
	#Procedure 0x409460

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
	jns	.label_589
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
.label_589:
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
	.align	16
	#Procedure 0x4094d0
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
	je	.label_590
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_591:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_590
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_591
.label_590:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409540

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_592
	mov	edi, OFFSET FLAT:.str_5
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	test	rbx, rbx
	je	.label_593
.label_592:
	mov	eax, OFFSET FLAT:.str.1_4
	cmp	byte ptr [rbx], 0
	je	.label_593
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	cmove	rax, rbx
.label_593:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409590

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x34], ecx
	mov	ebx, edx
	mov	r13, rsi
	mov	dword ptr [rsp + 0x1c], edi
	mov	rdi, r13
	call	last_component
	mov	rbp, rax
	sub	rbp, r13
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	add	r12, rbp
	cmp	qword ptr [word ptr [rip + simple_backup_suffix]],  0
	jne	.label_594
	xor	edi, edi
	call	set_simple_backup_suffix
.label_594:
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	call	strlen
	inc	rax
	mov	qword ptr [rsp + 0x20], rax
	cmp	rax, 9
	mov	ecx, 9
	cmovae	rcx, rax
	lea	rdi, [r12 + rcx + 1]
	mov	qword ptr [rsp + 0x10], rdi
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	xor	eax, eax
	test	rcx, rcx
	je	.label_595
	mov	qword ptr [rsp + 0x48], 0
	mov	dword ptr [rsp + 0x44], 0xffffffff
	mov	qword ptr [rsp + 0x38], 0
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x28], rax
	nop	
.label_601:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	cmp	ebx, 1
	jne	.label_596
	mov	rdi, qword ptr [rsp + 0x50]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcpy
	mov	ebx, 1
	jmp	.label_602
	nop	word ptr [rax + rax]
.label_596:
	lea	rax, [rsp + 0x44]
	mov	qword ptr [rsp], rax
	mov	edi, dword ptr [rsp + 0x1c]
	lea	rsi, [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, r12
	mov	r8, rbp
	lea	r9, [rsp + 0x48]
	call	numbered_backup
	cmp	eax, 1
	je	.label_598
	cmp	eax, 2
	je	.label_600
	cmp	eax, 3
	jne	.label_602
	jmp	.label_603
.label_600:
	cmp	ebx, 2
	jne	.label_598
	mov	rdi, qword ptr [rsp + 0x50]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcpy
	mov	ebx, 1
.label_598:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	edx, dword ptr [rsp + 0x44]
	mov	rsi, r12
	lea	rcx, [rsp + 0x38]
	call	check_extension
.label_602:
	mov	eax, dword ptr [rsp + 0x34]
	test	al, al
	je	.label_597
	cmp	dword ptr [rsp + 0x44], 0
	jns	.label_605
	mov	dword ptr [rsp + 0x44], 0xffffff9c
	xor	ebp, ebp
.label_605:
	cmp	ebx, 1
	setne	al
	movzx	r8d, al
	mov	edx, dword ptr [rsp + 0x44]
	mov	rcx, qword ptr [rsp + 0x50]
	add	rcx, rbp
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	renameatu
	test	eax, eax
	je	.label_597
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	cmp	r14d, 0x11
	je	.label_601
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_604
	call	closedir
.label_604:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	dword ptr [r15], r14d
	xor	eax, eax
	jmp	.label_595
.label_597:
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_599
	call	closedir
.label_599:
	mov	rax, qword ptr [rsp + 0x50]
	jmp	.label_595
.label_603:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
.label_595:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097b0

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
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	ebx, edi
	mov	r12, qword ptr [r15]
	mov	r14, qword ptr [rsi]
	lea	rbp, [r14 + r8]
	mov	rdi, rbp
	call	base_len
	mov	r13, rax
	mov	qword ptr [rsp + 0x38], r13
	test	r12, r12
	je	.label_619
	mov	rdi, r12
	call	rewinddir
	jmp	.label_625
.label_619:
	mov	qword ptr [rsp + 0x38], r13
	mov	rcx, qword ptr [rsp + 0x90]
	mov	r13w, word ptr [rbp]
	mov	word ptr [rbp], 0x2e
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r14
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_611
	mov	word ptr [rbp], r13w
	mov	r13, qword ptr [rsp + 0x38]
	mov	byte ptr [rbp + r13 + 4], 0
	mov	dword ptr [rbp + r13], 0x7e317e2e
	mov	qword ptr [r15], r12
.label_625:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	je	.label_617
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r13 + 2]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax + 4]
	mov	qword ptr [rsp], rax
	lea	rax, [r13 + 0x17]
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x30], rax
	mov	eax, 1
	mov	qword ptr [rsp + 8], rax
	jmp	.label_618
.label_623:
	mov	r13d, 1
.label_621:
	movzx	eax, al
	cmp	eax, 0x7e
	jne	.label_612
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbp, [rbp + rax + 0x15]
	cmp	byte ptr [r13 + rbp + 1], 0
	jne	.label_612
	cmp	qword ptr [rsp + 8], r13
	jb	.label_616
	jne	.label_612
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbp
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	jle	.label_616
.label_612:
	mov	r15, r14
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_609
.label_616:
	movzx	ebx, bl
	lea	rcx, [rbx + r13]
	mov	qword ptr [rsp + 8], rcx
	mov	rax, qword ptr [rsp]
	lea	rdx, [rax + rcx]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, rdx
	jae	.label_622
	mov	rax, rdx
	shr	rax, 0x3e
	sete	cl
	shl	rdx, cl
	mov	qword ptr [rsp + 0x18], rdx
	mov	rdi, r14
	mov	rsi, rdx
	call	realloc
	mov	r15, rax
	test	r15, r15
	mov	rax, qword ptr [rsp + 0x18]
	jne	.label_613
	jmp	.label_614
.label_622:
	mov	r15, r14
.label_613:
	mov	qword ptr [rsp + 0x18], rax
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [r15 + rcx]
	mov	byte ptr [r15 + rcx], 0x2e
	mov	rdx, rbx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rbx, [rax + rdx]
	mov	word ptr [r15 + rcx + 1], 0x307e
	lea	rdi, [rdx + rax + 2]
	lea	rdx, [r13 + 2]
	mov	rsi, rbp
	call	memcpy
	lea	rax, [r13 + rbx + 1]
	movzx	ecx, byte ptr [r13 + rbx + 1]
	jmp	.label_624
	nop	word ptr cs:[rax + rax]
.label_607:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_624:
	cmp	ecx, 0x39
	je	.label_607
	inc	cl
	mov	byte ptr [rax], cl
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_609
	nop	dword ptr [rax]
.label_618:
	lea	rbx, [rbp + 0x13]
	mov	rdi, rbx
	call	strlen
	cmp	rax, qword ptr [rsp + 0x50]
	jb	.label_615
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rax]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	jne	.label_615
	mov	al, byte ptr [rbp + r13 + 0x15]
	mov	cl, al
	add	cl, 0xcf
	movzx	ecx, cl
	cmp	ecx, 8
	ja	.label_615
	lea	rcx, [rbp + r13 + 0x13]
	movzx	eax, al
	cmp	eax, 0x39
	sete	bl
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_623
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rcx, [rbp + rcx]
	xor	r13d, r13d
.label_610:
	movzx	eax, al
	cmp	eax, 0x39
	sete	al
	and	bl, al
	movsx	eax, byte ptr [rcx + r13]
	mov	edx, eax
	add	edx, -0x30
	inc	r13
	cmp	edx, 0xa
	jb	.label_610
	inc	r13
	jmp	.label_621
	nop	word ptr cs:[rax + rax]
.label_615:
	mov	r15, r14
.label_609:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	mov	r14, r15
	jne	.label_618
	jmp	.label_620
.label_617:
	mov	eax, 2
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, r14
.label_620:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	mov	rcx, qword ptr [rsp + 0x30]
.label_606:
	mov	eax, ecx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_611:
	call	__errno_location
	mov	ecx, 3
	cmp	dword ptr [rax], 0xc
	je	.label_608
	mov	ecx, 2
.label_608:
	mov	word ptr [rbp], r13w
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rbp + rax + 4], 0
	mov	dword ptr [rbp + rax], 0x7e317e2e
	jmp	.label_606
.label_614:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r14
	mov	ecx, 3
	jmp	.label_606
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ae0

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
	jb	.label_627
	cmp	qword ptr [r12], 0
	jne	.label_630
	test	ebp, ebp
	js	.label_626
	call	__errno_location
	mov	qword ptr [rsp], rax
	mov	dword ptr [rax], 0
	mov	esi, 3
	mov	edi, ebp
	call	fpathconf
	mov	rcx, qword ptr [rsp]
	cmp	dword ptr [rcx], 1
	sbb	rax, 0
	jmp	.label_629
.label_626:
	mov	ax, word ptr [r14]
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
	mov	cx, word ptr [rsp]
	mov	word ptr [r14], cx
.label_629:
	cmp	rax, -1
	mov	ecx, 0xe
	mov	rdx, -1
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	qword ptr [r12], rdx
.label_630:
	mov	rax, qword ptr [r12]
.label_627:
	cmp	rax, r13
	jae	.label_628
	add	rbx, r15
	sub	rbx, r14
	cmp	rax, rbx
	lea	rax, [rax - 1]
	cmova	rax, rbx
	mov	word ptr [r14 + rax], 0x7e
.label_628:
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
	.align	16
	#Procedure 0x409be0

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	mov	ecx, 1
	jmp	backupfile_internal
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bf0

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_631
	pop	rcx
	ret	
.label_631:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c10

	.globl get_version
	.type get_version, @function
get_version:
	mov	eax, 2
	test	rsi, rsi
	je	.label_632
	cmp	byte ptr [rsi], 0
	je	.label_632
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_632:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c50

	.globl xget_version
	.type xget_version, @function
xget_version:
	test	rsi, rsi
	je	.label_633
	cmp	byte ptr [rsi], 0
	je	.label_633
	jmp	get_version
.label_633:
	push	rax
	mov	edi, OFFSET FLAT:.str.1_5
	call	getenv
	mov	edi, OFFSET FLAT:.str_6
	mov	rsi, rax
	pop	rax
	jmp	get_version
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409c80

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_634
	test	rsi, rsi
	je	.label_636
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_635:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_635
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_636
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	je	.label_637
	jmp	.label_636
.label_634:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_636:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_637:
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409cf0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d00

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
	je	.label_638
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_638
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_638:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_639
	test	eax, eax
	jne	.label_639
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_639:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_640
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_641
.label_640:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_641:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409dd0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409de0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409df0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_642
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_644
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_644
.label_642:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_643
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_644:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_8
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_645
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_643:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_645:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x409eb0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_646
	pop	rcx
	ret	
.label_646:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409ed0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	
.label_648:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_647
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_648
.label_647:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409f10

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_649
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_650
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_650:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_649:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f70

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_651:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_651
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_654
	nop	word ptr cs:[rax + rax]
.label_653:
	inc	rax
	mov	cl, dl
.label_654:
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	je	.label_653
	test	sil, sil
	je	.label_655
	mov	dl, cl
	and	dl, 1
	je	.label_652
	xor	ecx, ecx
.label_652:
	test	dl, dl
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_653
.label_655:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fd0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_656:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_657
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_656
.label_657:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a000

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_658
	mov	rbx, rax
.label_658:
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	al, cl
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a030

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a040
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_659
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_659:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a060

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_660
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_660:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_663
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_662
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_661
.label_662:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_661:
	mov	edx, dword ptr [rax]
.label_663:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a140

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
	je	.label_664
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
	je	.label_665
	cmp	rax, rbx
	je	.label_664
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_664:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_665:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1c0

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_666
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
.label_666:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a200

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
	jne	.label_670
	mov	cl, 0x2d
.label_670:
	mov	byte ptr [r14 + 1], cl
	mov	cl, bl
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
	jne	.label_674
	mov	cl, 0x2d
.label_674:
	test	al, 8
	jne	.label_669
	mov	dl, cl
.label_669:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	cl, 0x72
	jne	.label_672
	mov	cl, 0x2d
.label_672:
	mov	byte ptr [r14 + 4], cl
	test	bl, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_673
	mov	cl, 0x2d
.label_673:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_675
	mov	cl, 0x2d
.label_675:
	test	al, 4
	jne	.label_667
	mov	dil, cl
.label_667:
	mov	byte ptr [r14 + 6], dil
	test	bl, 4
	jne	.label_668
	mov	sil, 0x2d
.label_668:
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_671
	mov	dl, 0x2d
.label_671:
	mov	byte ptr [r14 + 8], dl
	and	ebx, 1
	jne	.label_676
	mov	r8b, 0x2d
.label_676:
	test	al, 2
	je	.label_677
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8b, bl
.label_677:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a2d0

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xf000
	cmp	edi, 0x5fff
	jle	.label_682
	cmp	edi, 0x9fff
	jg	.label_685
	cmp	edi, 0x6000
	je	.label_680
	mov	al, 0x2d
	cmp	edi, 0x8000
	je	.label_681
	jmp	.label_678
.label_682:
	cmp	edi, 0x1000
	je	.label_684
	cmp	edi, 0x2000
	je	.label_679
	cmp	edi, 0x4000
	jne	.label_678
	mov	al, 0x64
	movsx	eax, al
	ret	
.label_685:
	cmp	edi, 0xa000
	je	.label_683
	cmp	edi, 0xc000
	jne	.label_678
	mov	al, 0x73
	movsx	eax, al
	ret	
.label_680:
	mov	al, 0x62
	movsx	eax, al
	ret	
.label_684:
	mov	al, 0x70
.label_681:
	movsx	eax, al
	ret	
.label_683:
	mov	al, 0x6c
	movsx	eax, al
	ret	
.label_678:
	mov	al, 0x3f
	movsx	eax, al
	ret	
.label_679:
	mov	al, 0x63
	movsx	eax, al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a350
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a360

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_686
	pop	rcx
	ret	
.label_686:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a380

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
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_694
	movzx	ecx, byte ptr [rbx + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_687
	mov	qword ptr [rsp + 8], r14
	xor	r12d, r12d
	jmp	.label_690
.label_694:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	cmp	ecx, 0x2f
	je	.label_691
	jmp	.label_688
.label_687:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	jne	.label_689
.label_688:
	xor	r12d, r12d
	jmp	.label_691
.label_689:
	mov	r12b, 0x2f
.label_691:
	mov	qword ptr [rsp + 8], r14
.label_690:
	test	r12b, r12b
	setne	cl
	movzx	ebp, cl
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_693
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_692
	mov	qword ptr [rax], rbp
.label_692:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_693:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a470

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
	je	.label_695
	nop	word ptr [rax + rax]
.label_697:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_695
	test	rax, rax
	je	.label_696
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_697
	jmp	.label_695
.label_696:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_695:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a4d0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4e0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4f0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a500

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_698
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_700:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_699
	nop	
.label_701:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_701
	cmp	rsi, rax
	cmova	rax, rsi
.label_699:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_700
.label_698:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a550
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	cmp	rsi, qword ptr [rdi + 8]
	mov	edx, 0
	jae	.label_702
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_705:
	cmp	qword ptr [rsi], 0
	mov	rax, rsi
	je	.label_707
	nop	dword ptr [rax]
.label_703:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_703
	inc	rdx
.label_707:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_705
.label_702:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_704
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_706
.label_704:
	xor	eax, eax
.label_706:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a5b0
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
	mov	edx, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_7
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_708]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_709]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_710]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_4
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
	.align	16
	#Procedure 0x40a6a0

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
	je	.label_711
	test	rbx, rbx
	je	.label_711
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_712:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_713
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_713
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_712
	jmp	.label_711
.label_713:
	mov	r15, qword ptr [rbx]
.label_711:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a700

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
	jae	.label_714
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_714:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a730
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_715
	mov	rcx, qword ptr [rdi]
	jmp	.label_717
	nop	
.label_718:
	add	rcx, 0x10
.label_717:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_716
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_718
.label_715:
	ret	
.label_716:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a760
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
.label_723:
	cmp	qword ptr [rcx], rbx
	jne	.label_719
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_721
.label_719:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_723
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_722:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_720
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_722
	jmp	.label_720
.label_721:
	mov	rcx, qword ptr [rdx]
.label_720:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a7d0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	jmp	.label_724
	nop	word ptr [rax + rax]
.label_725:
	add	r8, 0x10
.label_724:
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_726
	cmp	qword ptr [r8], 0
	je	.label_725
	test	r8, r8
	mov	r9, r8
	je	.label_725
	nop	dword ptr [rax + rax]
.label_727:
	cmp	rax, rdx
	jae	.label_726
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_727
	jmp	.label_725
.label_726:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a820
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
	jmp	.label_728
	nop	dword ptr [rax]
.label_729:
	add	r13, 0x10
.label_728:
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_730
	cmp	qword ptr [r13], 0
	je	.label_729
	test	r13, r13
	mov	rbp, r13
	je	.label_729
	nop	word ptr [rax + rax]
.label_731:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_730
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_731
	jmp	.label_729
.label_730:
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
	.align	16
	#Procedure 0x40a890
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_732
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_733:
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
	jne	.label_733
.label_732:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8d0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_734]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8f0

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
	je	.label_736
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_735
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_735
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_735
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
	jmp	.label_736
.label_735:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_736:
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
	.align	16
	#Procedure 0x40a9d0

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
	.align	16
	#Procedure 0x40a9f0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa00

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_737
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_738]]
	jbe	.label_739
	movss	xmm1,  dword ptr [dword ptr [rip + label_742]]
	ucomiss	xmm1, xmm0
	jbe	.label_739
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_741]]
	jbe	.label_739
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_739
	addss	xmm1,  dword ptr [dword ptr [rip + label_738]]
	ucomiss	xmm0, xmm1
	jbe	.label_739
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_740]]
	ucomiss	xmm2, xmm0
	jb	.label_739
	ucomiss	xmm0, xmm1
	ja	.label_737
.label_739:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_737:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa80

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_743
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_748
	cvtsi2ss	xmm0, rdi
	jmp	.label_744
.label_748:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_744:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_745]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_746]]
	jae	.label_747
.label_743:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_747:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ab00
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_749
	nop	dword ptr [rax]
.label_754:
	add	r14, 0x10
.label_749:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_753
	cmp	qword ptr [r14], 0
	je	.label_754
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_750
	nop	word ptr cs:[rax + rax]
.label_751:
	test	cl, 1
	je	.label_752
	mov	rdi, qword ptr [rbx]
	call	rax
.label_752:
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
	jne	.label_751
.label_750:
	test	cl, cl
	je	.label_755
	mov	rdi, qword ptr [r14]
	call	rax
.label_755:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_754
.label_753:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aba0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_760
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_760
	mov	r14, qword ptr [r15]
	jmp	.label_765
	nop	dword ptr [rax + rax]
.label_759:
	add	r14, 0x10
.label_765:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_760
	cmp	qword ptr [r14], 0
	je	.label_759
	test	r14, r14
	mov	rbx, r14
	je	.label_759
	nop	dword ptr [rax + rax]
.label_761:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_761
	jmp	.label_759
.label_760:
	mov	r14, qword ptr [r15]
	jmp	.label_763
	nop	word ptr [rax + rax]
.label_758:
	add	r14, 0x10
.label_763:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_756
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_758
	nop	word ptr cs:[rax + rax]
.label_762:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_762
	jmp	.label_758
.label_756:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_764
	nop	dword ptr [rax]
.label_757:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_757
.label_764:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac70

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
	je	.label_766
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_767
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_766
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
	je	.label_768
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
	jmp	.label_767
.label_768:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_769
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_769
	mov	rdi, qword ptr [rsp]
	call	free
.label_766:
	xor	r14d, r14d
.label_767:
	mov	al, r14b
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_769:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ada0

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
	jae	.label_770
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_773:
	cmp	qword ptr [r15], 0
	je	.label_772
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_775
	nop	word ptr cs:[rax + rax]
.label_778:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_779
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_771
	nop	word ptr cs:[rax + rax]
.label_779:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_771:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_778
.label_775:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_772
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_774
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_776
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_777
.label_774:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_777:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_772:
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	jb	.label_773
	mov	al, 1
	jmp	.label_770
.label_776:
	xor	eax, eax
.label_770:
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
	.align	16
	#Procedure 0x40aec0

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
	je	.label_780
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_791
	test	rbx, rbx
	je	.label_783
	mov	qword ptr [rbx], rax
	jmp	.label_783
.label_791:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_782
	cvtsi2ss	xmm0, rcx
	jmp	.label_787
.label_782:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_787:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_790
	cvtsi2ss	xmm1, rax
	jmp	.label_794
.label_790:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_794:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_786
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_789
	cvtsi2ss	xmm2, rcx
	jmp	.label_793
.label_789:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_793:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_784
	cvtsi2ss	xmm0, rax
	jmp	.label_788
.label_784:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_788:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_786
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_781
	mulss	xmm0, xmm1
.label_781:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_746]]
	jae	.label_783
	movss	xmm1,  dword ptr [dword ptr [rip + label_745]]
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
	je	.label_783
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_780
.label_786:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_792
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_783
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_785
.label_792:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_785:
	mov	ebp, 1
.label_783:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_780:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b090

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
	je	.label_798
	cmp	rsi, r13
	je	.label_796
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_799
.label_796:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_798
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_801
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_797
.label_799:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_798
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_800:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_795
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_795
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_800
	jmp	.label_798
.label_801:
	mov	qword ptr [rbx], 0
	jmp	.label_798
.label_795:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_798
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_797:
	mov	rdi, r14
	call	free_entry
.label_798:
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
	.align	16
	#Procedure 0x40b160

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_802
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_802:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b190

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
	je	.label_803
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_803:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b1c0

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
	je	.label_811
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_806
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_812
	cvtsi2ss	xmm0, rax
	jmp	.label_808
.label_812:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_808:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_815
	cvtsi2ss	xmm1, rcx
	jmp	.label_810
.label_815:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_810:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_806
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_814
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_805
.label_814:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_805:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_809
	cvtsi2ss	xmm0, rax
	jmp	.label_813
.label_809:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_813:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_806
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_804
	mulss	xmm0, dword ptr [rcx + 8]
.label_804:
	movss	xmm1,  dword ptr [dword ptr [rip + label_745]]
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
	jne	.label_806
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_807
	nop	word ptr cs:[rax + rax]
.label_816:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_816
.label_807:
	mov	qword ptr [r15 + 0x48], 0
.label_806:
	mov	rax, r14
.label_811:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b350

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
	jmp	.label_817
	nop	
.label_818:
	add	rbx, 2
.label_817:
	cmp	rbx, -1
	je	.label_819
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_818
	mov	r14, rbx
.label_819:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3a0

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_820
	nop	dword ptr [rax + rax]
.label_821:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_820
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_821
.label_820:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b3f0

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
	.align	16
	#Procedure 0x40b410

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
	.align	16
	#Procedure 0x40b440

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
	.align	16
	#Procedure 0x40b450

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_822
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_823
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_822:
	xor	eax, eax
	ret	
.label_823:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b480
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_824
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_825
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_824:
	xor	eax, eax
	ret	
.label_825:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b4b0

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
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b4d0

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
	js	.label_827
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_826
	mov	dword ptr [r14], ebp
	jmp	.label_827
.label_826:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_827:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b520

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_828
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_829
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_829
	mov	esi, OFFSET FLAT:.str.2_5
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_830
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_830:
	mov	rbx, r14
.label_829:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_828:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b5d0

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
	jne	.label_831
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_831:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b620

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
	.align	16
	#Procedure 0x40b650
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
	.align	16
	#Procedure 0x40b690
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
	.align	16
	#Procedure 0x40b6a0
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
	.align	16
	#Procedure 0x40b6b0

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
	.align	16
	#Procedure 0x40b6f0
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
	.align	16
	#Procedure 0x40b710

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_832
	test	rdx, rdx
	je	.label_832
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_832:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b740
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
	.align	16
	#Procedure 0x40b7c0

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
.label_897:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_882
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_876]]
.label_1378:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_1379:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_902
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_902
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_927:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_915
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_915:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_927
.label_902:
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
	jmp	.label_850
.label_1371:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_850
.label_1374:
	mov	al, 1
.label_1372:
	mov	r15b, 1
.label_1375:
	test	r15b, 1
	mov	cl, 1
	je	.label_951
	mov	cl, al
.label_951:
	mov	al, cl
.label_1373:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_914
	test	r10, r10
	je	.label_934
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_943
.label_914:
	xor	ecx, ecx
	jmp	.label_943
.label_1376:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_835
	test	r10, r10
	je	.label_843
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_845
.label_1377:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_850
.label_934:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_943:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_850
.label_835:
	xor	eax, eax
	jmp	.label_845
.label_843:
	mov	eax, 1
.label_845:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_850:
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
	jmp	.label_856
	nop	dword ptr [rax + rax]
.label_853:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_856:
	cmp	rbp, -1
	je	.label_939
	cmp	rsi, rbp
	jne	.label_941
	jmp	.label_936
	nop	dword ptr [rax]
.label_939:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_936
.label_941:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_947
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_886
	cmp	rbp, -1
	jne	.label_886
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
.label_886:
	cmp	rbx, rbp
	jbe	.label_840
.label_947:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_895:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_847
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_851]]
.label_1272:
	test	rsi, rsi
	jne	.label_857
	jmp	.label_859
	nop	word ptr cs:[rax + rax]
.label_840:
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
	jne	.label_881
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_895
	jmp	.label_896
.label_881:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_895
.label_1276:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_907
	test	rsi, rsi
	jne	.label_911
	cmp	rbp, 1
	je	.label_859
	xor	r15d, r15d
	jmp	.label_833
.label_1265:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_913
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_896
	cmp	edi, 2
	jne	.label_920
	mov	al, r11b
	and	al, 1
	jne	.label_925
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_929
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_929:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_890
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_890:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_940
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_940:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_864
.label_1266:
	mov	bl, 0x62
	jmp	.label_861
.label_1267:
	mov	cl, 0x74
	jmp	.label_950
.label_1268:
	mov	bl, 0x76
	jmp	.label_861
.label_1269:
	mov	bl, 0x66
	jmp	.label_861
.label_1270:
	mov	cl, 0x72
	jmp	.label_950
.label_1273:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_952
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_846
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
	jae	.label_837
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_837:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_860
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_860:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_870
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_870:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_879
.label_1274:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_884
	cmp	r14d, 2
	jne	.label_888
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_846
.label_888:
	mov	rdi, r14
	jmp	.label_857
.label_1275:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_891
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_846
	mov	rdi, r14
	jmp	.label_900
.label_847:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_903
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
.label_928:
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
	ja	.label_917
	test	dl, dl
	je	.label_917
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_833
.label_907:
	test	rsi, rsi
	jne	.label_937
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_937
.label_859:
	mov	dl, 1
.label_1271:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_896
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_833
.label_913:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_857
	mov	r14, rdi
	inc	rsi
	jmp	.label_856
.label_952:
	mov	rdi, r14
.label_879:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_833
.label_891:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_950
.label_900:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_848
.label_950:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_896
.label_861:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_833
	jmp	.label_839
.label_903:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_842
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_842:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_918:
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
	je	.label_875
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_880
	cmp	rbp, -2
	je	.label_893
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_894
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_909:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_904
	bt	rsi, rdx
	jb	.label_906
.label_904:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_909
.label_894:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_883
	xor	r15d, r15d
.label_883:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_918
	jmp	.label_928
.label_937:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_833
.label_884:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_857
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_857
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_857
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_942
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_945
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_896
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_948
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_948:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_922
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_922:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_836
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_836:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_953
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_953:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_833
.label_857:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_833:
	test	r12b, r12b
	je	.label_930
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_865
	jmp	.label_868
	nop	word ptr cs:[rax + rax]
.label_930:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_868
.label_865:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_877
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_848
	jmp	.label_839
	nop	word ptr cs:[rax + rax]
.label_868:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_839
	jmp	.label_848
.label_877:
	mov	bl, r13b
	mov	rsi, r14
.label_839:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_896
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_905
	mov	al, r11b
	and	al, 1
	jne	.label_905
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_910
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_910:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_898
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_898:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_921
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_921:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_905:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_932
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_932:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_844
.label_911:
	xor	r15d, r15d
	jmp	.label_833
.label_917:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_944
	nop	word ptr cs:[rax + rax]
.label_946:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_944:
	test	dl, dl
	je	.label_949
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_834
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_849
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_849:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_834
	nop	word ptr [rax + rax]
.label_949:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_846
	cmp	r14d, 2
	jne	.label_852
	mov	al, r11b
	and	al, 1
	jne	.label_852
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_855
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_855:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_863
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_863:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_871
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_871:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_852:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_889
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_889:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_866
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_866:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_901
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_901:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_834:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_848
	test	r11b, 1
	je	.label_926
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_919
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_924
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_924:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_869
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_869:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_919
	nop	word ptr cs:[rax + rax]
.label_926:
	mov	r14, rdi
.label_919:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_946
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_946
.label_848:
	test	r11b, 1
	je	.label_899
	and	al, 1
	jne	.label_899
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_912
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_912:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_954
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_954:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_844
	nop	dword ptr [rax + rax]
.label_899:
	mov	bl, r13b
	mov	r14, rdi
.label_844:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_853
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_853
.label_920:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_864
.label_925:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_864:
	cmp	rcx, r10
	jae	.label_867
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_867:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_872
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_938
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_854
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_841
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_841:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_892
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_892:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_833
.label_872:
	xor	r15d, r15d
	jmp	.label_833
.label_938:
	xor	r15d, r15d
	jmp	.label_833
.label_854:
	xor	r15d, r15d
	jmp	.label_833
.label_875:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_908
.label_880:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_916
.label_893:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_923
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_933:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_931
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_933
	xor	r15d, r15d
	jmp	.label_908
.label_923:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_916:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_908:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_928
.label_931:
	xor	r15d, r15d
	jmp	.label_908
.label_942:
	xor	r15d, r15d
	jmp	.label_833
.label_945:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_833
	nop	dword ptr [rax + rax]
.label_936:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_873
	or	dl, al
	je	.label_846
.label_873:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_838
	or	dl, al
	jne	.label_838
	test	r8b, 1
	jne	.label_862
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_838
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_897
.label_838:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_858
	test	cl, cl
	jne	.label_858
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_858
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_878:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_885
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_885:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_878
.label_858:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_887
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_887
.label_896:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_874:
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
.label_935:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_887:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_906:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_874
.label_846:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_874
.label_862:
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
	jmp	.label_935
.label_882:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c9d0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c9e0

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
	je	.label_955
	mov	qword ptr [rax], rbx
.label_955:
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
	.align	16
	#Procedure 0x40cae0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_956
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_959:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_959
.label_956:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_960
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_957]], OFFSET FLAT:slot0
.label_960:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_958
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_958:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb80

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cb90

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
	js	.label_961
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_966
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_962
.label_966:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_965
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
	jne	.label_964
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_964:
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
.label_962:
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
	ja	.label_967
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_963
	mov	rdi, rbx
	call	free
.label_963:
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
.label_967:
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
.label_961:
	call	abort
.label_965:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd60

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd70
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cd80
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
	.align	16
	#Procedure 0x40cd90

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
	.align	16
	#Procedure 0x40cdd0

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
	je	.label_968
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
.label_968:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce30

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
	.align	16
	#Procedure 0x40ce70

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
	.align	16
	#Procedure 0x40ce90
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
	.align	16
	#Procedure 0x40ceb0

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
	mov	rcx,  qword ptr [word ptr [rip + label_969]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_970]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_971]]
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
	.align	16
	#Procedure 0x40cf20

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cf30

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf40
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf50

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
	.align	16
	#Procedure 0x40cfa0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cfb0

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
	mov	rax,  qword ptr [word ptr [rip + label_969]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_970]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_971]]
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
	.align	16
	#Procedure 0x40d020
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
	.align	16
	#Procedure 0x40d040
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
	.align	16
	#Procedure 0x40d060

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d070
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
	.align	16
	#Procedure 0x40d080

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d090

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d0a0

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
	jne	.label_973
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
	je	.label_972
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_973
	mov	eax, OFFSET FLAT:.str.15_1
	jmp	.label_973
.label_972:
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
	je	.label_974
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_973
	mov	eax, OFFSET FLAT:.str.18_2
	jmp	.label_973
.label_974:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_973:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d180

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
	je	.label_976
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_977
	jmp	.label_975
.label_976:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_975
.label_977:
	mov	eax, 1
	test	bpl, bpl
	je	.label_975
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
.label_975:
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
	.align	16
	#Procedure 0x40d210

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
	je	.label_980
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_978
	jmp	.label_979
.label_980:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_979
.label_978:
	mov	eax, 1
	test	bpl, bpl
	je	.label_979
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
.label_979:
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
	.align	16
	#Procedure 0x40d2a0

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
	je	.label_981
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_983
	jmp	.label_982
.label_981:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_982
.label_983:
	mov	eax, 1
	test	bpl, bpl
	je	.label_982
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
.label_982:
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
	.align	16
	#Procedure 0x40d320

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
	je	.label_986
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_985
	jmp	.label_984
.label_986:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_984
.label_985:
	mov	eax, 1
	test	bpl, bpl
	je	.label_984
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
.label_984:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d390

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
	je	.label_989
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_987
	jmp	.label_988
.label_989:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_988
.label_987:
	mov	eax, 1
	test	bpl, bpl
	je	.label_988
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_988:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d400

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
	je	.label_991
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_992
	jmp	.label_990
.label_991:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_990
.label_992:
	mov	eax, 1
	test	bpl, bpl
	je	.label_990
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_990:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d450

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
	je	.label_995
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_994
	jmp	.label_993
.label_995:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_993
.label_994:
	mov	eax, 1
	test	bpl, bpl
	je	.label_993
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_993:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4a0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_998
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_997
	jmp	.label_996
.label_998:
	mov	eax, 1
	test	cl, cl
	je	.label_996
.label_997:
	xor	eax, eax
.label_996:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d4d0

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
	jns	.label_1001
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_1005
	cmp	ecx, 0x5f
	je	.label_1005
	cmp	ecx, 0x26
	jne	.label_1001
.label_1005:
	test	r13d, r13d
	je	.label_1009
	mov	qword ptr [rsp], rax
	cmp	r13d, 2
	jb	.label_1011
	mov	edi, 0x5f
	jmp	.label_1000
.label_1009:
	mov	qword ptr [rsp], rax
	xor	r13d, r13d
.label_1003:
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	call	strlen
	test	rbx, rbx
	je	.label_1002
	test	rax, rax
	je	.label_1002
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	je	.label_1012
	movzx	eax, byte ptr [rax + r12 - 1]
	cmp	eax, 0x2f
	jne	.label_1002
.label_1012:
	lea	rdx, [rsp + 0x98]
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1001
	test	r13b, r13b
	je	.label_1010
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	je	.label_1002
	mov	edi, 2
	jmp	.label_1004
.label_1011:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_1007
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	r13b, 1
	cmp	eax, 2
	je	.label_1003
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_1001
.label_1007:
	mov	edi, 0x11
.label_1000:
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_1001
.label_1010:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_1008
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_1001
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_1001
	jmp	.label_1002
.label_1008:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x20]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_999
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_1006
.label_1002:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	mov	ebx, eax
.label_1001:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_999:
	mov	edi, 0x14
	jmp	.label_1004
.label_1006:
	mov	edi, 0x15
.label_1004:
	call	errno_fail
	jmp	.label_1001
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d6b0

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
	.align	16
	#Procedure 0x40d6c0

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
.label_1014:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1013
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1014
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
	jb	.label_1013
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_1014
.label_1013:
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
	.align	16
	#Procedure 0x40d750

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
	.align	16
	#Procedure 0x40d770

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
	mov	dword ptr [rsp + 0x14], edx
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
	jne	.label_1021
	mov	qword ptr [rsp + 8], r15
	mov	r15d, dword ptr [rsp + 0x14]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	je	.label_1018
	xor	ebp, ebp
	jmp	.label_1019
.label_1021:
	xor	ebp, ebp
	jmp	.label_1019
.label_1018:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	mov	ecx, 0x100
	mov	edi, r12d
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_1016
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_1016:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	dir_name
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	mov	ecx, 0x100
	mov	edi, r15d
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_1017
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_1017:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1020
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_1015
.label_1020:
	xor	ebp, ebp
.label_1015:
	mov	rdi, rbx
	call	free
.label_1019:
	mov	al, bpl
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d8c0

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rdi
	mov	ebx, esi
	xor	r14d, r14d
	test	r13, r13
	je	.label_1028
	mov	rax,  qword ptr [word ptr [+ (rbx * 8) + comparison_function_table]]
	mov	qword ptr [rsp + 0x10], rax
	call	__errno_location
	mov	rbp, rax
	dec	rbx
	mov	qword ptr [rsp + 0x28], rbx
	xor	r15d, r15d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1024
.label_1030:
	mov	qword ptr [rsp + 0x38], rcx
	mov	rdi, rbx
	mov	rbx, rcx
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	qword ptr [rbx + rcx], rax
	mov	rax, qword ptr [r14]
	mov	qword ptr [rbx + rcx + 8], rax
	inc	r12
	add	r15, qword ptr [rsp + 8]
	nop	dword ptr [rax + rax]
.label_1024:
	mov	dword ptr [rbp], 0
	mov	rdi, r13
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_1035
	movzx	eax, byte ptr [r14 + 0x13]
	cmp	eax, 0x2e
	mov	eax, 0
	jne	.label_1032
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	mov	eax, 1
	jne	.label_1032
	mov	eax, 2
.label_1032:
	cmp	byte ptr [r14 + rax + 0x13], 0
	je	.label_1024
	mov	rbx, r14
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	inc	rcx
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_1026
	mov	qword ptr [rsp + 8], rcx
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, r12
	jne	.label_1027
	mov	qword ptr [rsp + 0x40], rax
	mov	edx, 0x10
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsp + 0x40]
	call	x2nrealloc
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_1030
.label_1026:
	mov	rax, qword ptr [rsp + 0x20]
	sub	rax, r15
	cmp	rax, rcx
	mov	rax, qword ptr [rsp + 0x30]
	ja	.label_1034
	mov	rdx, rcx
	mov	r14, rdx
	add	rcx, r15
	mov	qword ptr [rsp + 0x40], rcx
	jb	.label_1022
	mov	edx, 1
	mov	rdi, rax
	lea	rsi, [rsp + 0x40]
	call	x2nrealloc
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rcx, r14
.label_1034:
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rax + r15]
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rbx, rcx
	call	memcpy
	add	r15, rbx
	jmp	.label_1024
.label_1027:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, rax
	jmp	.label_1030
.label_1035:
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_1031
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r14d, r14d
	jmp	.label_1028
.label_1031:
	cmp	qword ptr [rsp + 0x28], 1
	mov	r14, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rsp + 0x38]
	ja	.label_1023
	test	r12, r12
	je	.label_1025
	mov	edx, 0x10
	mov	rdi, r13
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x10]
	call	qsort
	inc	r15
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	xor	r15d, r15d
	mov	rbx, r13
	nop	dword ptr [rax + rax]
.label_1033:
	lea	rbp, [r14 + r15]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	inc	r15
	sub	r15, rbp
	add	r15, rax
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x10
	dec	r12
	jne	.label_1033
	jmp	.label_1036
.label_1023:
	cmp	qword ptr [rsp + 0x20], r15
	jne	.label_1029
	lea	rsi, [r15 + 1]
	mov	rdi, r14
	call	xrealloc
	mov	r14, rax
	jmp	.label_1029
.label_1025:
	inc	r15
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	xor	r15d, r15d
.label_1036:
	mov	rdi, r13
	call	free
.label_1029:
	mov	byte ptr [r14 + r15], 0
.label_1028:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1022:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40db50

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
	je	.label_1037
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_1037
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_1037:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40dba0

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dbb0

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	seta	al
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovae	eax, ecx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dbd0
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
	.align	16
	#Procedure 0x40dbf0
	.globl freecon
	.type freecon, @function
freecon:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dc00
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
	.align	16
	#Procedure 0x40dc20

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
	.align	16
	#Procedure 0x40dc40
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
	.align	16
	#Procedure 0x40dc60
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
	.align	16
	#Procedure 0x40dc80

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
	.align	16
	#Procedure 0x40dca0
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
	.align	16
	#Procedure 0x40dcc0
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
	.align	16
	#Procedure 0x40dce0
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
	.align	16
	#Procedure 0x40dd00
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
	.align	16
	#Procedure 0x40dd20
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
	.align	16
	#Procedure 0x40dd40
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
	.align	16
	#Procedure 0x40dd60
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
	.align	16
	#Procedure 0x40dd80
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
	.align	16
	#Procedure 0x40dda0
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
	.align	16
	#Procedure 0x40ddb0
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ddd0

	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:
	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dde0

	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:
	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ddf0

	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:
	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de00
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de10

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40de20
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40de30

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40de40
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40de50
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40de60
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de70

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de80

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
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, esi
	mov	r15, rdi
	call	__errno_location
	mov	qword ptr [rsp + 0x30], rax
	mov	r12d, dword ptr [rax]
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	movsxd	rbx, ebx
	lea	rax, [rbx + r14]
	mov	rdi, rbp
	sub	rdi, rax
	jb	.label_1039
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	test	al, al
	je	.label_1039
	mov	dword ptr [rsp + 0xc], r12d
	mov	qword ptr [rsp + 0x10], r15
	xor	r13d, r13d
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_1040
	sub	rbp, rbx
	mov	r12, qword ptr [rsp + 0x10]
	add	rbp, r12
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x18], rax
	nop	dword ptr [rax]
.label_1043:
	test	r14, r14
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_1041
	nop	word ptr [rax + rax]
.label_1044:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_1044
.label_1041:
	mov	rdi, r12
	mov	rbx, r12
	mov	rsi, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x28]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_1038
	mov	rax, qword ptr [rsp + 0x30]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jne	.label_1042
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, rbx
	jbe	.label_1043
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jmp	.label_1040
.label_1039:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x16
	mov	r12d, 0xffffffff
.label_1040:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1038:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax], ecx
.label_1042:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rbp]
	mov	rdi, r15
	call	randint_all_free
	mov	dword ptr [rbp], ebx
	jmp	.label_1040
	.section	.text
	.align	16
	#Procedure 0x40dfe0

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
	.align	16
	#Procedure 0x40e000

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1045
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1046]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1045:
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e040

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
	.align	16
	#Procedure 0x40e060

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e070

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	__lstat
	test	eax, eax
	je	.label_1047
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1048
.label_1047:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_1048:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0c0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	mov	r8d, 6
	jmp	gen_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0d0
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0e0

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
	ja	.label_1049
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
	jmp	.label_1050
.label_1049:
	mov	eax, ebx
.label_1050:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e130

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
	.align	16
	#Procedure 0x40e150

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
	mov	qword ptr [rsp + 0x18], rsi
	mov	dword ptr [rsp + 0x24], edi
	mov	r12, qword ptr [r13 + 0x58]
	mov	r15, qword ptr [rbx + 0x58]
	mov	rdi, r13
	call	get_stat_mtime_ns
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, rbx
	call	get_stat_mtime_ns
	mov	r14, rax
	test	bpl, 1
	je	.label_1055
	cmp	r12, r15
	jne	.label_1058
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	eax, r14d
	je	.label_1052
.label_1058:
	lea	rax, [r15 - 2]
	mov	ecx, 0xffffffff
	cmp	r12, rax
	jle	.label_1052
	lea	rax, [r12 - 2]
	mov	ecx, 1
	cmp	r15, rax
	jle	.label_1052
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	jne	.label_1069
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + utimecmpat.ht]],  rax
	test	rax, rax
	je	.label_1075
.label_1069:
	cmp	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jne	.label_1054
	mov	edi, 0x10
	call	malloc
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  rax
	xor	ecx, ecx
	test	rax, rax
	je	.label_1059
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1054:
	mov	rax, qword ptr [r13]
	mov	rsi,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	qword ptr [rsi], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	call	hash_insert
	mov	rcx, rax
	test	rcx, rcx
	je	.label_1059
	cmp	rcx,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	jne	.label_1060
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jmp	.label_1060
.label_1059:
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	je	.label_1074
	mov	rax, qword ptr [r13]
	mov	qword ptr [rsp + 0xe8], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	lea	rsi, [rsp + 0xe8]
	call	hash_lookup
	mov	rcx, rax
.label_1074:
	test	rcx, rcx
	jne	.label_1060
.label_1075:
	mov	dword ptr [rsp + 0xf0], 0x77359400
	mov	byte ptr [rsp + 0xf4], 0
	lea	rcx, [rsp + 0xe8]
.label_1060:
	cmp	byte ptr [rcx + 0xc], 0
	je	.label_1064
	mov	r13d, dword ptr [rcx + 8]
	jmp	.label_1065
.label_1064:
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, qword ptr [r13 + 0x48]
	mov	eax, dword ptr [r13 + 0x68]
	mov	dword ptr [rsp + 8], eax
	mov	rdi, r13
	call	get_stat_atime_ns
	mov	rbp, rax
	mov	rdi, r13
	call	get_stat_ctime_ns
	mov	r8, rbp
	mov	r11, rbx
	mov	ecx, r11d
	or	ecx, r12d
	or	ecx, dword ptr [rsp + 8]
	and	ecx, 1
	movsxd	rdx, r8d
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
	mov	rbx, qword ptr [rsp + 0x28]
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
	je	.label_1067
	mov	r10, qword ptr [rsp + 0x10]
	mov	dword ptr [r10 + 8], 1
	mov	r13d, 1
.label_1071:
	mov	dword ptr [r10 + 8], r13d
	mov	byte ptr [r10 + 0xc], 1
.label_1065:
	cmp	r13d, 0x77359400
	sete	al
	movzx	eax, al
	not	rax
	and	r15, rax
	mov	eax, r14d
	cdq	
	idiv	r13d
	sub	r14d, edx
.label_1055:
	mov	ecx, 0xffffffff
	cmp	r12, r15
	jl	.label_1052
	mov	ecx, 1
	jg	.label_1052
	mov	rax, qword ptr [rsp + 0x28]
	cmp	eax, r14d
	mov	ecx, 0xffffffff
	jl	.label_1052
	setg	al
	movzx	ecx, al
.label_1052:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1067:
	mov	r10, qword ptr [rsp + 0x10]
	cmp	dword ptr [r10 + 8], 0xa
	jle	.label_1072
	mov	r13d, 0xa
	mov	edx, r8d
	mov	qword ptr [rsp + 8], r8
	mov	rsi, qword ptr [rsp + 0x28]
.label_1063:
	movsxd	rsi, esi
	imul	rsi, rsi, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
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
	movsxd	rbp, esi
	imul	rbx, rbp, 0x66666667
	mov	rdi, rbx
	shr	rdi, 0x3f
	sar	rbx, 0x22
	add	ebx, edi
	add	ebx, ebx
	lea	edi, [rbx + rbx*4]
	sub	ebp, edi
	or	ebp, r9d
	jne	.label_1053
	cmp	r13d, 0x3b9aca00
	je	.label_1062
	add	r13d, r13d
	lea	r13d, [r13 + r13*4]
	cmp	r13d, dword ptr [r10 + 8]
	jl	.label_1063
	jmp	.label_1053
.label_1072:
	mov	dword ptr [r10 + 8], 0xa
	mov	r13d, 0xa
	jmp	.label_1068
.label_1062:
	xor	ecx, 1
	shl	r13d, cl
.label_1053:
	mov	dword ptr [r10 + 8], r13d
	cmp	r13d, 2
	mov	r8, qword ptr [rsp + 8]
	jl	.label_1071
.label_1068:
	cmp	r13d, 0x77359400
	sete	al
	movzx	esi, al
	mov	ecx, 1
	cmp	r15, r12
	jl	.label_1052
	cmp	r12, r15
	setne	al
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	r14d, edx
	mov	rbp, qword ptr [rsp + 0x18]
	mov	ebx, dword ptr [rsp + 0x24]
	jg	.label_1056
	test	al, al
	je	.label_1052
.label_1056:
	mov	rax, rsi
	not	rax
	and	rax, r15
	mov	ecx, 0xffffffff
	cmp	r12, rax
	jl	.label_1052
	jne	.label_1066
	mov	eax, r14d
	cdq	
	idiv	r13d
	mov	eax, r14d
	sub	eax, edx
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	edx, eax
	jl	.label_1052
.label_1066:
	mov	qword ptr [rsp + 0xc0], r11
	movsxd	rax, r8d
	mov	qword ptr [rsp + 0xc8], rax
	or	rsi, r12
	mov	qword ptr [rsp + 0xd0], rsi
	movsxd	rax, r13d
	imul	rax, rax, 0x38e38e39
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x21
	add	eax, ecx
	mov	rcx, qword ptr [rsp + 0x28]
	add	eax, ecx
	cdqe	
	mov	qword ptr [rsp + 0xd8], rax
	lea	rdx, [rsp + 0xc0]
	mov	ecx, 0x100
	mov	edi, ebx
	mov	rsi, rbp
	call	utimensat
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_1052
	lea	rdx, [rsp + 0x30]
	mov	ecx, 0x100
	mov	edi, ebx
	mov	rsi, rbp
	call	fstatat
	mov	dword ptr [rsp + 8], eax
	cdqe	
	mov	rbx, qword ptr [rsp + 0x88]
	xor	rbx, r12
	or	rbx, rax
	lea	rdi, [rsp + 0x30]
	call	get_stat_mtime_ns
	mov	rcx, qword ptr [rsp + 0x28]
	movsxd	rcx, ecx
	xor	rax, rcx
	or	rax, rbx
	je	.label_1051
	mov	qword ptr [rsp + 0xd0], r12
	mov	qword ptr [rsp + 0xd8], rcx
	lea	rdx, [rsp + 0xc0]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, rbp
	call	utimensat
.label_1051:
	cmp	dword ptr [rsp + 8], 0
	je	.label_1070
	mov	ecx, 0xfffffffe
	jmp	.label_1052
.label_1070:
	mov	ebx, dword ptr [rsp + 0x88]
	and	ebx, 1
	neg	ebx
	and	ebx, 0x3b9aca00
	lea	rdi, [rsp + 0x30]
	call	get_stat_mtime_ns
	add	rax, rbx
	movsxd	rdx, eax
	imul	rcx, rdx, 0x66666667
	mov	rsi, rcx
	shr	rsi, 0x3f
	sar	rcx, 0x22
	add	ecx, esi
	add	ecx, ecx
	lea	esi, [rcx + rcx*4]
	mov	ecx, 1
	cmp	edx, esi
	je	.label_1061
	mov	edx, 1
	jmp	.label_1057
.label_1061:
	mov	edx, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_1057
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, r13d
	je	.label_1073
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
	mov	edx, ecx
	je	.label_1061
	jmp	.label_1057
.label_1073:
	mov	edx, ecx
.label_1057:
	mov	r13d, edx
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1071
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e700

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
	.align	16
	#Procedure 0x40e710

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e720
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	mov	ecx, 0x100
	jmp	utimensat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e730

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
	lea	rax, [rsp + 0xe0]
	cmove	rax, rdx
	mov	qword ptr [rsp + 0xd8], rax
	je	.label_1089
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	mov	rdi, qword ptr [rsp + 0xd8]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_1078
.label_1089:
	test	r15d, r15d
	jns	.label_1082
	test	r14, r14
	jne	.label_1082
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	jmp	.label_1078
.label_1082:
	cmp	dword ptr [dword ptr [rip + utimensat_works_really]],  0
	js	.label_1091
	cmp	ebp, 2
	jne	.label_1092
	lea	rsi, [rsp + 0x48]
	test	r15d, r15d
	js	.label_1094
	mov	edi, r15d
	call	__fstat
	jmp	.label_1099
.label_1094:
	mov	rdi, r14
	call	stat
.label_1099:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1078
	mov	rbx, qword ptr [rsp + 0xd8]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1103
	lea	rdi, [rsp + 0x48]
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1081
.label_1103:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_1081
	lea	rdi, [rsp + 0x48]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_1081:
	inc	ebp
.label_1092:
	test	r15d, r15d
	jns	.label_1083
	mov	rdx, qword ptr [rsp + 0xd8]
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1096
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1100
.label_1096:
	je	.label_1102
.label_1100:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1102
.label_1083:
	test	r15d, r15d
	js	.label_1091
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	edi, r15d
	call	futimens
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1076
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1080
.label_1102:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1078
.label_1076:
	je	.label_1085
.label_1080:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1085
.label_1091:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebp, ebp
	je	.label_1077
	cmp	ebp, 3
	je	.label_1095
	lea	rsi, [rsp + 0x48]
	test	r15d, r15d
	js	.label_1098
	mov	edi, r15d
	call	__fstat
	jmp	.label_1101
.label_1085:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1078
.label_1098:
	mov	rdi, r14
	call	stat
.label_1101:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1078
.label_1095:
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_1077
	lea	rdi, [rsp + 0x48]
	lea	rsi, [rsp + 0xd8]
	call	update_timespec
	xor	ebx, ebx
	test	al, al
	jne	.label_1078
.label_1077:
	mov	rax, qword ptr [rsp + 0xd8]
	xor	ebp, ebp
	test	rax, rax
	je	.label_1086
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, qword ptr [rsp + 0xd8]
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsi + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x28], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdx, qword ptr [rsp + 0xd8]
	mov	rax, rcx
	imul	qword ptr [rdx + 0x18]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	lea	rbp, [rsp + 0x20]
.label_1086:
	test	r15d, r15d
	js	.label_1088
	xor	ebx, ebx
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, rbp
	call	futimesat
	test	eax, eax
	je	.label_1090
	mov	ebx, 0xffffffff
	test	r14, r14
	je	.label_1078
	mov	rdi, r14
	mov	rsi, rbp
	call	utimes
	jmp	.label_1097
.label_1088:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, rbp
	call	futimesat
.label_1097:
	mov	ebx, eax
.label_1078:
	mov	eax, ebx
	add	rsp, 0x100
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1090:
	test	rbp, rbp
	je	.label_1078
	mov	r12, qword ptr [rbp + 8]
	mov	r14, qword ptr [rbp + 0x18]
	cmp	r12, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	movzx	eax, cl
	cmp	eax, 1
	jne	.label_1078
	lea	rsi, [rsp + 0x48]
	mov	edi, r15d
	call	__fstat
	test	eax, eax
	jne	.label_1078
	lea	rcx, [rbp + 0x10]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rbx, qword ptr [rsp + 0xa0]
	sub	rax, qword ptr [rbp]
	sub	rbx, qword ptr [rbp + 0x10]
	movups	xmm0, xmmword ptr [rbp]
	movaps	xmmword ptr [rsp], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	xor	ebp, ebp
	cmp	r12, 0x7a120
	jl	.label_1087
	cmp	rax, 1
	jne	.label_1087
	lea	rdi, [rsp + 0x48]
	call	get_stat_atime_ns
	xor	ebp, ebp
	test	rax, rax
	jne	.label_1087
	lea	rbp, [rsp]
	mov	qword ptr [rsp + 8], 0
.label_1087:
	cmp	r14, 0x7a120
	jl	.label_1079
	cmp	rbx, 1
	jne	.label_1079
	lea	rdi, [rsp + 0x48]
	call	get_stat_mtime_ns
	test	rax, rax
	je	.label_1093
.label_1079:
	test	rbp, rbp
	jne	.label_1084
	jmp	.label_1104
.label_1093:
	lea	rbp, [rsp]
	mov	qword ptr [rsp + 0x18], 0
.label_1084:
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, rbp
	call	futimesat
.label_1104:
	xor	ebx, ebx
	jmp	.label_1078
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ead0

	.globl validate_timespec
	.type validate_timespec, @function
validate_timespec:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, 0x3b9aca00
	jb	.label_1105
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	jne	.label_1109
.label_1105:
	mov	rax, qword ptr [rdi + 0x18]
	cmp	rax, 0x3b9aca00
	jb	.label_1106
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	je	.label_1106
.label_1109:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	add	rsp, 8
	ret	
.label_1106:
	mov	rax, qword ptr [rdi + 8]
	and	rax, 0xfffffffffffffffe
	xor	ecx, ecx
	cmp	rax, 0x3ffffffe
	mov	eax, 0
	jne	.label_1107
	mov	qword ptr [rdi], 0
	cmp	qword ptr [rdi + 8], 0x3ffffffe
	sete	al
	movzx	eax, al
	mov	ecx, 1
.label_1107:
	mov	rdx, qword ptr [rdi + 0x18]
	and	rdx, 0xfffffffffffffffe
	cmp	rdx, 0x3ffffffe
	jne	.label_1108
	mov	qword ptr [rdi + 0x10], 0
	cmp	qword ptr [rdi + 0x18], 0x3ffffffe
	sete	cl
	movzx	ecx, cl
	add	eax, ecx
	mov	ecx, 1
.label_1108:
	cmp	eax, 1
	sete	al
	movzx	eax, al
	add	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eb90

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
	jne	.label_1115
	mov	al, 1
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	je	.label_1112
	mov	rax, qword ptr [rbx + 8]
.label_1115:
	cmp	rax, 0x3fffffff
	jne	.label_1111
	cmp	qword ptr [rbx + 0x18], 0x3fffffff
	jne	.label_1111
	mov	qword ptr [rsi], 0
	jmp	.label_1113
.label_1111:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3fffffff
	je	.label_1116
	cmp	rax, 0x3ffffffe
	jne	.label_1110
	mov	rdi, r14
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1110
.label_1116:
	mov	rdi, rbx
	call	gettime
.label_1110:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	rax, 0x3fffffff
	je	.label_1114
	cmp	rax, 0x3ffffffe
	jne	.label_1113
	mov	rdi, r14
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
	jmp	.label_1113
.label_1114:
	add	rbx, 0x10
	mov	rdi, rbx
	call	gettime
.label_1113:
	xor	eax, eax
.label_1112:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ec40

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
	.align	16
	#Procedure 0x40ec60

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
	lea	rax, [rsp + 0xa0]
	cmove	rax, rsi
	mov	qword ptr [rsp + 0x98], rax
	je	.label_1124
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	mov	rdi, qword ptr [rsp + 0x98]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_1117
.label_1124:
	cmp	dword ptr [dword ptr [rip + lutimensat_works_really]],  0
	js	.label_1129
	cmp	ebp, 2
	jne	.label_1119
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	call	__lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1117
	mov	rbx, qword ptr [rsp + 0x98]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1127
	lea	rdi, [rsp + 8]
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1120
.label_1127:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_1120
	lea	rdi, [rsp + 8]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_1120:
	inc	ebp
.label_1119:
	mov	rdx, qword ptr [rsp + 0x98]
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1118
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1121
.label_1118:
	je	.label_1123
.label_1121:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1123
.label_1129:
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebp, ebp
	je	.label_1126
	cmp	ebp, 3
	je	.label_1128
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	call	__lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1117
.label_1128:
	cmp	qword ptr [rsp + 0x98], 0
	je	.label_1122
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x98]
	call	update_timespec
	xor	ebx, ebx
	test	al, al
	je	.label_1122
	jmp	.label_1117
.label_1123:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  1
	jmp	.label_1117
.label_1126:
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	call	__lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1117
.label_1122:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0xa000
	jne	.label_1125
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	ebx, 0xffffffff
	jmp	.label_1117
.label_1125:
	mov	rdx, qword ptr [rsp + 0x98]
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebx, eax
.label_1117:
	mov	eax, ebx
	add	rsp, 0xc0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ee30

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
	je	.label_1136
	mov	edx, OFFSET FLAT:.str_12
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1135
.label_1136:
	mov	edx, OFFSET FLAT:.str.1_10
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1135:
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
	mov	esi, OFFSET FLAT:.str.3_3
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1131
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1132]]
.label_1353:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_1131:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_1130
.label_1354:
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
.label_1355:
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
.label_1356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_1137
.label_1357:
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
	jmp	.label_1139
.label_1358:
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
	jmp	.label_1134
.label_1359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
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
.label_1134:
	mov	qword ptr [rsp + 0x10], rdi
.label_1139:
	mov	qword ptr [rsp + 8], rsi
.label_1137:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_1138
.label_1361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_1130:
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
	jmp	.label_1133
.label_1360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
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
.label_1133:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_1138:
	call	__fprintf_chk
.label_1352:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f120
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1140:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1140
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f150

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1142:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1141
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_1143
	nop	dword ptr [rax]
.label_1141:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1143:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_1144
	inc	r9
	cmp	r9, 0xa
	jb	.label_1142
.label_1144:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f1b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1145
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1145:
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
	.align	16
	#Procedure 0x40f240
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_2
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_1
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_1
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f2c0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	and	al, 1
	jne	.label_1146
	push	rax
	call	geteuid
	test	eax, eax
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_1146:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1147
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_1147:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f320

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1148
	test	rax, rax
	je	.label_1149
.label_1148:
	pop	rbx
	ret	
.label_1149:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f340

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_1150
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_1150:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f370

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1151
	test	rbx, rbx
	jne	.label_1151
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1151:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1153
	test	rax, rax
	je	.label_1152
.label_1153:
	pop	rbx
	ret	
.label_1152:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40f3a0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1154
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_1157
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1155
.label_1154:
	test	rcx, rcx
	jne	.label_1158
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_1158:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_1156
.label_1155:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_1157:
	call	xalloc_die
.label_1156:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f420

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f430
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f440
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
	.align	16
	#Procedure 0x40f470
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1159
	call	rpl_calloc
	test	rax, rax
	je	.label_1159
	pop	rcx
	ret	
.label_1159:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f4a0

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
	.align	16
	#Procedure 0x40f4d0

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
	.align	16
	#Procedure 0x40f4f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_11
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40f520

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	call	getline
	test	rax, rax
	jle	.label_1162
	mov	rcx, qword ptr [rsp + 8]
	movzx	edx, byte ptr [rax + rcx - 1]
	cmp	edx, 0xa
	jne	.label_1160
	mov	byte ptr [rcx + rax - 1], 0
.label_1160:
	mov	rdi, qword ptr [rsp + 8]
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_1161
.label_1162:
	xor	ebx, ebx
.label_1161:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	al, bl
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f590

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1163
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1164
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1164
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1163:
	mov	ecx, 1
.label_1164:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f5e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1165
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1165
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1165:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f610

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_1166
	ret	
.label_1166:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f630

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_1167
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_1168
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1168:
	add	rax, rcx
.label_1167:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f660

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
	jne	.label_1169
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1169
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1170
.label_1169:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1170:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1171
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1171:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f6d0

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
	je	.label_1172
	cmp	r15, -2
	jb	.label_1172
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1172
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1172:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f730

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f740

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	mov	dword ptr [rcx], edx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f750

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	cmp	esi, -1
	je	.label_1173
	mov	edi, esi
	mov	esi, edx
	jmp	fchmod
.label_1173:
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f770

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
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f790
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f7a0
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f7b0
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f7c0
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f7d0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f7e0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f7f0
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
	.align	16
	#Procedure 0x40f810
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
	.align	16
	#Procedure 0x40f830
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
	.align	16
	#Procedure 0x40f850
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
	.align	16
	#Procedure 0x40f870
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1174
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1174
.label_1175:
	ret	
.label_1174:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1175
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f8a0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1176
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1176:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f8c0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f8d0
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
	.align	16
	#Procedure 0x40f8e0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1177
.label_1178:
	ret	
.label_1177:
	cmp	edi, 0x7f
	je	.label_1178
	xor	eax, eax
	jmp	.label_1178
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f900
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f910
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f920
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f930
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f940
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_1179
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_1179
.label_1180:
	ret	
.label_1179:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_1180
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f970
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1181
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_1181:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f990

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f9a0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1182
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1182:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f9c0
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
	.align	16
	#Procedure 0x40f9d0
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
	.align	16
	#Procedure 0x40f9e0

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
	je	.label_1183
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1184
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1184
.label_1183:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1184
	test	cl, cl
	jne	.label_1184
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_1184:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fa50

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
	je	.label_1187
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	cmp	ecx, 2
	ja	.label_1189
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1185
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	call	__errno_location
	mov	r15d, dword ptr [rax]
	test	rbx, rbx
	jne	.label_1188
	mov	edi, ebp
	call	close
	jmp	.label_1186
.label_1189:
	mov	rbx, r14
	jmp	.label_1187
.label_1185:
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_1186:
	xor	ebx, ebx
.label_1188:
	mov	rdi, r14
	call	closedir
	call	__errno_location
	mov	dword ptr [rax], r15d
.label_1187:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fae0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40faf0
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
	.align	16
	#Procedure 0x40fb10

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1191
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1192
	cmp	byte ptr [rax + 1], 0
	je	.label_1190
.label_1192:
	mov	esi, OFFSET FLAT:.str.1_12
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1191
.label_1190:
	xor	ebx, ebx
.label_1191:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40fb50

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_1193
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_1194:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	mov	cl, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_1194
.label_1193:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40fb80

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_13
	cmp	byte ptr [rcx], 0
	je	.label_1195
	mov	rax, rcx
.label_1195:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fbb0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1196
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1196:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_1198
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1197
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1199
.label_1197:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1199:
	mov	ecx, dword ptr [rax]
.label_1198:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40fc90

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
	.align	16
	#Procedure 0x40fcb0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_1200
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_1200:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fcd0
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fce0

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
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	mov	qword ptr [rsp + 0x10], rbp
	lea	r12, [rsp + 0x20]
	nop	dword ptr [rax]
.label_1204:
	cmp	rbx, r13
	jae	.label_1201
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_1206:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_1206
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rdx, r14
	call	randread
	mov	rbp, r12
	nop	dword ptr [rax]
.label_1207:
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
	jb	.label_1207
	mov	rcx, r15
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_1203
	nop	word ptr cs:[rax + rax]
.label_1201:
	mov	rcx, r15
.label_1203:
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_1202
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_1204
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_1205
.label_1202:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_1205:
	mov	rax, rcx
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
	.align	16
	#Procedure 0x40fe20

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fe30

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
	.align	16
	#Procedure 0x40fe50

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
	.align	16
	#Procedure 0x40fe90

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
	je	.label_1210
	test	rbx, rbx
	je	.label_1208
	mov	esi, OFFSET FLAT:.str_13
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_1209
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
	jmp	.label_1209
.label_1210:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_1208:
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
.label_1209:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ff40

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
	.align	16
	#Procedure 0x40ff70

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
	mov	edi, OFFSET FLAT:.str.3_4
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1212
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
	js	.label_1212
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_1211
.label_1212:
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
.label_1363:
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1211
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
	ja	.label_1211
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
	ja	.label_1211
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
	ja	.label_1211
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
.label_1211:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410110
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410120
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410130

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_1213
	jmp	readsource
.label_1213:
	add	rdi, 0x18
	jmp	readisaac
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410150

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
	cmp	rbx, r13
	je	.label_1215
	nop	word ptr cs:[rax + rax]
.label_1214:
	sub	r13, rbx
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
	cmp	r13, rbx
	jne	.label_1214
.label_1215:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4101e0

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
	jae	.label_1216
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_1217:
	cmp	r15, 0x800
	jb	.label_1219
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_1217
	jmp	.label_1218
.label_1219:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_1216:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_1218:
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
	.align	16
	#Procedure 0x410290

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
	je	.label_1220
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1220:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4102d0

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
	je	.label_1221
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_1223
	mov	esi, OFFSET FLAT:.str.1_14
	jmp	.label_1222
.label_1223:
	mov	esi, OFFSET FLAT:.str.2_7
.label_1222:
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
.label_1221:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x410330

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rax, [r14 + 0x400]
	mov	qword ptr [rsp], rax
	mov	rbp, rsi
	mov	r15, r14
	nop	dword ptr [rax]
.label_1225:
	mov	qword ptr [rsp + 0x10], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r15 + 0x400]
	mov	rbx, qword ptr [r15]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
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
	add	rbp, qword ptr [r15 + 0x408]
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r15 + 8], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r15 + 0x410]
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r15 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r15 + 0x418]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rcx, qword ptr [rsp]
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r15, 0x20
	add	rbp, 0x20
	cmp	r15, rcx
	jb	.label_1225
	add	qword ptr [rsp + 8], 0x400
	lea	rax, [r14 + 0x800]
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_1224:
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [rcx - 0x400]
	mov	rbx, qword ptr [rcx]
	mov	rdi, r14
	mov	rsi, rbx
	mov	r15, rcx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	rdi, r13
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r13
	add	rbx, qword ptr [r15 - 0x3f8]
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbp, rax
	mov	r13, qword ptr [rsp + 8]
	mov	qword ptr [r13 + 8], rbp
	mov	r12, rbx
	shl	r12, 0xc
	xor	r12, rbx
	add	r12, qword ptr [r15 - 0x3f0]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r12
	add	rbp, rax
	mov	qword ptr [r15 + 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r13 + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r15 - 0x3e8]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rcx, r15
	mov	r12, rax
	mov	rax, r13
	mov	qword ptr [rax + 0x18], r12
	add	rcx, 0x20
	add	rax, 0x20
	mov	qword ptr [rsp + 8], rax
	cmp	rcx, qword ptr [rsp + 0x10]
	jb	.label_1224
	mov	qword ptr [r14 + 0x800], rbx
	mov	qword ptr [r14 + 0x808], r12
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
	.align	16
	#Procedure 0x410690

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4106a0

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4106b0

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
	mov	qword ptr [rsp + 0x20], rdi
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1226:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x28], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x10]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp]
	add	rbx, r13
	mov	qword ptr [rsp + 0x10], rbx
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	add	r13, rdi
	mov	qword ptr [rsp + 8], r13
	mov	r13, qword ptr [rsp + 0x28]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 8]
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
	jl	.label_1226
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1227:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 0x28]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp + 0x30]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 0x28]
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
	jl	.label_1227
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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4109f0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x410a00

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410a10

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1228
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1230
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1228
.label_1230:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1228
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1229
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1229:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1228:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410a90

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1237
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1237:
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
	ja	.label_1234
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1233
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1240
	test	esi, esi
	jne	.label_1234
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1241
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1232
.label_1234:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1238
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1240
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1242
.label_1233:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1240:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1235
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1244
.label_1235:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1244:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1242:
	cmp	eax, 6
	jne	.label_1238
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1239
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1243
.label_1238:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1231
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1236
.label_1241:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1232:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_1239:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1243:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_1231:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1236:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410ca0

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
	.align	16
	#Procedure 0x410cb0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1247
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_1249
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1249
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1246
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_1245
.label_1249:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1245
.label_1247:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_1245:
	test	ebx, ebx
	js	.label_1246
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1246
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1248
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1246
.label_1248:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_1246:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410d80

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
	.align	16
	#Procedure 0x410da0

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
	je	.label_1250
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1254
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1251
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1252
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1250
.label_1252:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1253
.label_1254:
	mov	rax, rbx
	jmp	.label_1250
.label_1251:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1253:
	xor	eax, eax
.label_1250:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410ee0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x410ef0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	16
	#Procedure 0x410f00

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x410f10

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
	nop	
	.section .text
	.align	16
	#Procedure 0x410f30

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
