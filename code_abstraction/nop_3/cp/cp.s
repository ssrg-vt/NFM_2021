	.section	.text
	.align	32
	#Procedure 0x4026a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_7
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.19
	mov	ecx, OFFSET FLAT:.str.59
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a70

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
	call	cp_options_default
	mov	byte ptr [rsp + 0xcc], 1
	mov	dword ptr [rsp + 0xbc], 1
	mov	byte ptr [rsp + 0xcd], 0
	mov	byte ptr [rsp + 0xce], 0
	mov	byte ptr [rsp + 0xcf], 0
	mov	dword ptr [rsp + 0xc0], 4
	mov	byte ptr [rsp + 0xd0], 0
	mov	byte ptr [rsp + 0xd1], 0
	mov	dword ptr [rsp + 0xf0], 0
	mov	byte ptr [rsp + 0xda], 0
	mov	word ptr [rsp + 0xd8], 0
	mov	dword ptr [rsp + 0xd4], 0
	mov	byte ptr [rsp + 0xe1], 0
	mov	dword ptr [rsp + 0xdd], 0
	mov	byte ptr [rsp + 0xdb], 1
	mov	byte ptr [rsp + 0xdc], 0
	mov	byte ptr [rsp + 0xe2], 0
	mov	qword ptr [rsp + 0xc4], 2
	mov	byte ptr [rsp + 0xe7], 0
	mov	dword ptr [rsp + 0xe3], 0
	mov	edi, OFFSET FLAT:.str.60
	call	getenv
	test	rax, rax
	setne	byte ptr [rsp + 0xe8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0xf8], xmm0
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r13d, r13d
	xor	ecx, ecx
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_12
.label_29:
	mov	byte ptr [rsp + 0xe2], 1
	mov	cl, r12b
	nop	word ptr [rax + rax]
.label_12:
	mov	r12b, cl
	mov	edx, OFFSET FLAT:.str.23
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x47
	jle	.label_36
	add	eax, -0x48
	cmp	eax, 0x40
	ja	.label_31
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_38]]
.label_1373:
	mov	dword ptr [rsp + 0xbc], 3
	mov	cl, r12b
	jmp	.label_12
.label_1374:
	mov	dword ptr [rsp + 0xbc], 4
	mov	cl, r12b
	jmp	.label_12
.label_1376:
	mov	bpl, 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x20], rax
	mov	cl, r12b
	jmp	.label_12
.label_1377:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	cl, r12b
	jmp	.label_12
.label_1378:
	cmp	qword ptr [word ptr [rip + optarg]],  0
	mov	cl, r12b
	je	.label_12
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
	jmp	.label_12
.label_1379:
	mov	dword ptr [rsp + 0xbc], 2
	mov	byte ptr [rsp + 0xda], 1
	mov	word ptr [rsp + 0xd5], 0x101
	mov	byte ptr [rsp + 0xd7], 1
	mov	byte ptr [rsp + 0xdc], 1
	mov	byte ptr [rsp + 0xdf], 1
	mov	byte ptr [rsp + 0xe1], 1
	jmp	.label_29
.label_1380:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	cmovne	r13, rax
	mov	bpl, 1
	mov	cl, r12b
	jmp	.label_12
.label_1381:
	mov	byte ptr [rsp + 0xda], 1
.label_1375:
	mov	dword ptr [rsp + 0xbc], 2
	mov	cl, r12b
	jmp	.label_12
.label_1382:
	mov	byte ptr [rsp + 0xce], 1
	mov	cl, r12b
	jmp	.label_12
.label_1383:
	mov	dword ptr [rsp + 0xc0], 3
	mov	cl, r12b
	jmp	.label_12
.label_1384:
	mov	byte ptr [rsp + 0xcf], 1
	mov	cl, r12b
	jmp	.label_12
.label_1385:
	mov	dword ptr [rsp + 0xc0], 2
	mov	cl, r12b
	jmp	.label_12
.label_1386:
	mov	byte ptr [rsp + 0xe4], 1
	mov	cl, r12b
	jmp	.label_12
.label_1387:
	test	r15, r15
	jne	.label_35
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rdx, [rsp + 0x28]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	jne	.label_25
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0x4000
	jne	.label_26
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	cl, r12b
	jmp	.label_12
.label_1388:
	mov	byte ptr [rsp + 0xe5], 1
	mov	cl, r12b
	jmp	.label_12
.label_1389:
	mov	byte ptr [rsp + 0xe6], 1
	mov	cl, r12b
	jmp	.label_12
.label_1390:
	mov	byte ptr [rsp + 0xd4], 1
	mov	cl, r12b
	jmp	.label_12
.label_1391:
	mov	byte ptr [rsp + 0xdb], 0
	mov	cl, r12b
	jmp	.label_12
.label_1392:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0xb8]
	xor	edx, edx
	call	decode_preserve_arg
	mov	cl, r12b
	jmp	.label_12
.label_1393:
	mov	byte ptr [byte ptr [rip + parents_option]],  1
	mov	cl, r12b
	jmp	.label_12
.label_1394:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_10
	lea	rsi, [rsp + 0xb8]
	mov	edx, 1
	call	decode_preserve_arg
	jmp	.label_17
.label_10:
	mov	word ptr [rsp + 0xd5], 0x101
	mov	byte ptr [rsp + 0xd7], 1
.label_17:
	mov	byte ptr [rsp + 0xdc], 1
	mov	cl, r12b
	jmp	.label_12
.label_1397:
	mov	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	mov	cl, r12b
	jmp	.label_12
.label_1395:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_23
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.25
	mov	edx, OFFSET FLAT:reflink_type_string
	mov	ecx, OFFSET FLAT:reflink_type
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + reflink_type]]
	mov	dword ptr [rsp + 0xf0], eax
	mov	cl, r12b
	jmp	.label_12
.label_1396:
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
	jmp	.label_12
.label_1398:
	mov	byte ptr [rsp + 0xcd], 1
	mov	cl, r12b
	jmp	.label_12
.label_23:
	mov	dword ptr [rsp + 0xf0], 2
	mov	cl, r12b
	jmp	.label_12
.label_36:
	cmp	eax, -1
	jne	.label_37
	cmp	byte ptr [rsp + 0xcf], 0
	je	.label_11
	mov	al, byte ptr [rsp + 0xe4]
	test	al, al
	jne	.label_13
.label_11:
	mov	rax, qword ptr [rsp + 0xc0]
	cmp	eax, 2
	jne	.label_16
	mov	byte ptr [rsp + 0xe5], 0
	test	bpl, bpl
	setne	cl
	je	.label_19
	cmp	eax, 2
	jne	.label_19
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	jmp	.label_21
.label_16:
	test	bpl, bpl
	setne	cl
.label_19:
	cmp	dword ptr [rsp + 0xf0], 2
	jne	.label_22
	movabs	rdx, 0xffffffff00000000
	and	rax, rdx
	movabs	rdx, 0x200000000
	cmp	rax, rdx
	jne	.label_24
.label_22:
	xor	eax, eax
	test	cl, cl
	je	.label_28
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	xget_version
.label_28:
	mov	dword ptr [rsp + 0xb8], eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	set_simple_backup_suffix
	mov	al, byte ptr [rsp + 0xe2]
	cmp	dword ptr [rsp + 0xbc], 1
	jne	.label_34
	test	al, al
	je	.label_33
	mov	cl, byte ptr [rsp + 0xcf]
	test	cl, cl
	jne	.label_33
	mov	dword ptr [rsp + 0xbc], 2
	jmp	.label_34
.label_33:
	mov	dword ptr [rsp + 0xbc], 4
.label_34:
	test	al, al
	je	.label_27
	mov	byte ptr [rsp + 0xcc], r12b
.label_27:
	mov	al, byte ptr [rsp + 0xd9]
	test	al, al
	je	.label_14
	cmp	byte ptr [rsp + 0xde], 0
	jne	.label_9
	mov	byte ptr [rsp + 0xdd], 0
.label_9:
	cmp	byte ptr [rsp + 0xdd], 0
	je	.label_14
	test	al, al
	jne	.label_15
.label_14:
	cmp	byte ptr [rsp + 0xde], 0
	jne	.label_18
	cmp	byte ptr [rsp + 0xe0], 0
	jne	.label_20
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
.label_37:
	cmp	eax, 0xffffff7d
	je	.label_30
	cmp	eax, 0xffffff7e
	jne	.label_31
	xor	edi, edi
	call	usage
.label_30:
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
.label_31:
	mov	edi, 1
	call	usage
.label_35:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	jmp	.label_32
.label_25:
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
.label_26:
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
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	jmp	.label_21
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
.label_21:
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
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	jmp	.label_32
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	jmp	.label_32
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
.label_32:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031e0

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
.label_43:
	mov	rbp, r14
	mov	esi, 0x2c
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	r14d, 0
	je	.label_41
	mov	r14, rax
	inc	r14
	mov	byte ptr [rax], 0
.label_41:
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:decode_preserve_arg.preserve_args
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_vals
	mov	r8d, 4
	mov	rdi, r15
	mov	rsi, rbp
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + decode_preserve_arg.preserve_vals]]
	cmp	rax, 6
	ja	.label_40
	jmp	qword ptr [word ptr [+ (rax * 8) + label_42]]
.label_1364:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x20], r13b
	jmp	.label_39
.label_1365:
	mov	byte ptr [rbx + 0x1f], r12b
	jmp	.label_39
.label_1366:
	mov	byte ptr [rbx + 0x1d], r12b
	jmp	.label_39
.label_1367:
	mov	byte ptr [rbx + 0x22], r12b
	jmp	.label_39
.label_1368:
	mov	byte ptr [rbx + 0x26], r12b
	mov	byte ptr [rbx + 0x25], r12b
	jmp	.label_39
.label_1369:
	mov	byte ptr [rbx + 0x27], r12b
	mov	byte ptr [rbx + 0x28], r12b
	jmp	.label_39
.label_1370:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x1f], r12b
	mov	byte ptr [rbx + 0x1d], r12b
	mov	byte ptr [rbx + 0x22], r12b
	mov	byte ptr [rbx + 0x20], r13b
	mov	byte ptr [rbx + 0x27], r12b
	nop	word ptr cs:[rax + rax]
.label_39:
	test	r14, r14
	jne	.label_43
	mov	rdi, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_40:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403300

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
	jne	.label_44
	cmp	byte ptr [r12 + 0x16], 0
	setne	sil
.label_44:
	test	rdx, rdx
	sete	al
	movzx	eax, al
	cmp	eax, ebx
	jge	.label_64
	test	cl, cl
	je	.label_45
	test	rdx, rdx
	jne	.label_55
	cmp	ebx, 3
	jge	.label_56
	movsxd	rcx, ebx
	mov	rdi, qword ptr [r14 + rcx*8 - 8]
	movzx	ecx, sil
	lea	rsi, [rbp - 0xb8]
	lea	rdx, [rbp - 0xb9]
	call	target_directory_operand
.label_52:
	movzx	eax,  byte ptr [byte ptr [rip + parents_option]]
	and	eax, 1
	cmp	eax, 1
	je	.label_60
	mov	rax, r14
	mov	r14, qword ptr [rax]
	mov	r15, qword ptr [rax + 8]
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_62
	mov	ebx, dword ptr [r12]
	test	ebx, ebx
	je	.label_62
	mov	rdi, r14
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	jne	.label_62
	mov	al, byte ptr [rbp - 0xb9]
	test	al, al
	jne	.label_62
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xa0]
	cmp	eax, 0x8000
	jne	.label_62
	mov	edi, 0xffffff9c
	mov	rsi, r15
	mov	edx, ebx
	call	find_backup_file_name
	mov	r15, rax
	movups	xmm0, xmmword ptr [r12 + 0x40]
	movups	xmmword ptr [word ptr [rip + label_70]],  xmm0
	movups	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmm3, xmmword ptr [r12 + 0x30]
	movups	xmmword ptr [word ptr [rip + label_71]],  xmm3
	movups	xmmword ptr [word ptr [rip + label_72]],  xmm2
	movups	xmmword ptr [word ptr [rip + label_73]],  xmm1
	movups	xmmword ptr [word ptr [rip + do_copy.x_tmp]],  xmm0
	mov	r12d, OFFSET FLAT:do_copy.x_tmp
	mov	dword ptr [dword ptr [rip + do_copy.x_tmp]],  0
.label_62:
	lea	r8, [rbp - 0xc8]
	xor	edx, edx
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	copy
	mov	dword ptr [rbp - 0xd8], eax
	jmp	.label_54
.label_45:
	test	rdx, rdx
	jne	.label_58
	cmp	ebx, 2
	jl	.label_52
	movsxd	r15, ebx
	mov	rdi, qword ptr [r14 + r15*8 - 8]
	dec	r15
	movzx	ecx, sil
	lea	rsi, [rbp - 0xb8]
	lea	rdx, [rbp - 0xb9]
	call	target_directory_operand
	test	al, al
	je	.label_63
	mov	rdx, qword ptr [r14 + r15*8]
	test	rdx, rdx
	je	.label_52
	dec	ebx
.label_58:
	mov	dword ptr [rbp - 0xe4], ebx
	cmp	ebx, 2
	jl	.label_57
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rdi, r12
	call	dest_info_init
	mov	rdi, r12
	call	src_info_init
	jmp	.label_68
.label_57:
	mov	qword ptr [rbp - 0xf0], rdx
	mov	al, 1
	mov	dword ptr [rbp - 0xd8], eax
	test	ebx, ebx
	jle	.label_54
.label_68:
	mov	al, 1
	mov	dword ptr [rbp - 0xd8], eax
	xor	r13d, r13d
	jmp	.label_49
.label_53:
	mov	rdi, qword ptr [rbp - 0xf0]
	call	xstrdup
	jmp	.label_46
	nop	word ptr [rax + rax]
.label_49:
	mov	qword ptr [rbp - 0xd0], 0
	mov	r15, qword ptr [r14 + r13*8]
	movzx	eax,  byte ptr [byte ptr [rip + remove_trailing_slashes]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_48
	mov	rdi, r15
	call	strip_trailing_slashes
.label_48:
	mov	al,  byte ptr [byte ptr [rip + parents_option]]
	mov	rdi, r15
	and	al, 1
	je	.label_51
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
	jne	.label_61
	xor	edx, edx
.label_61:
	mov	rdi, r15
	lea	rcx, [rbp - 0xc8]
	lea	r8, [rbp - 0xb9]
	mov	r9, r12
	call	make_dir_parents_private
	test	al, al
	jne	.label_65
	mov	dword ptr [rbp - 0xd8], 0
	jmp	.label_66
	nop	dword ptr [rax]
.label_51:
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
	jne	.label_50
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x2e
	jne	.label_50
	cmp	byte ptr [rbx + 2], 0
	je	.label_53
	nop	word ptr cs:[rax + rax]
.label_50:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, rbx
	call	file_name_concat
.label_46:
	mov	r15, rax
	mov	r12, qword ptr [rbp - 0xf8]
	mov	r14, qword ptr [rbp - 0x100]
.label_65:
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
	jne	.label_67
	mov	rsi, qword ptr [rbp - 0xd0]
	sub	rsi, r15
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rdi, r15
	mov	rcx, r12
	call	re_protect
	and	bl, al
.label_67:
	mov	al, bl
	mov	dword ptr [rbp - 0xd8], eax
.label_66:
	movzx	eax,  byte ptr [byte ptr [rip + parents_option]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_69
	mov	rdi, qword ptr [rbp - 0xc8]
	test	rdi, rdi
	je	.label_69
	nop	
.label_47:
	mov	rbx, qword ptr [rdi + 0xa0]
	mov	qword ptr [rbp - 0xc8], rbx
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_47
.label_69:
	mov	rdi, r15
	call	free
	inc	r13
	mov	eax, dword ptr [rbp - 0xe4]
	cmp	r13d, eax
	jne	.label_49
.label_54:
	mov	eax, dword ptr [rbp - 0xd8]
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_63:
	cmp	ebx, 3
	jl	.label_52
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rcx, r14
	mov	r14, rax
	mov	rsi, qword ptr [rcx + r15*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_64:
	xor	edi, edi
	test	ebx, ebx
	jg	.label_59
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
.label_60:
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
.label_55:
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
.label_56:
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
.label_59:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403890

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
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, rbp
	call	__xstat
	test	eax, eax
	je	.label_78
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	je	.label_79
	test	r14d, r14d
	jne	.label_75
.label_78:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x4000
	sete	al
	jmp	.label_76
.label_79:
	mov	byte ptr [r12], 1
	jmp	.label_77
.label_75:
	test	r15b, r15b
	je	.label_74
	mov	dword ptr [rbp + 0x18], 0
.label_77:
	xor	eax, eax
.label_76:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_74:
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
	.align	32
	#Procedure 0x403940

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
	lea	rdx, [rbp - 0xb8]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	je	.label_109
	lea	rax, [r12 + r14]
	mov	qword ptr [rbp - 0x158], rax
	lea	rdi, [r14 + r12 - 1]
	nop	word ptr cs:[rax + rax]
.label_81:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_81
	mov	esi, 0x2f
	call	strchr
	mov	r15, rax
	mov	r13b, 1
	test	r15, r15
	je	.label_87
	nop	word ptr cs:[rax + rax]
.label_89:
	mov	byte ptr [r15], 0
	mov	edi, 1
	mov	rsi, r12
	lea	rdx, [rbp - 0xb8]
	call	__xstat
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_95
	mov	rax, qword ptr [rbp - 0x150]
	cmp	byte ptr [rax + 0x1d], 0
	jne	.label_95
	mov	rax, qword ptr [rbp - 0x150]
	mov	ax, word ptr [rax + 0x1e]
	test	al, al
	jne	.label_95
	xor	edx, edx
	movzx	eax, ax
	cmp	eax, 0x100
	jb	.label_88
	nop	dword ptr [rax]
.label_95:
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x158]
	lea	rdx, [rbp - 0x148]
	call	__xstat
	test	eax, eax
	je	.label_101
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_103
	jmp	.label_94
	nop	dword ptr [rax]
.label_101:
	mov	eax, dword ptr [rbp - 0x130]
	mov	ecx, 0xf000
	and	eax, ecx
	mov	ebx, 0x14
	cmp	eax, 0x4000
	jne	.label_94
.label_103:
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
	je	.label_111
	mov	edx, dword ptr [r13 + 0x18]
	jmp	.label_88
	nop	word ptr cs:[rax + rax]
.label_111:
	xor	edx, edx
.label_88:
	test	r14d, r14d
	setne	al
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rsi, r12
	mov	r8, qword ptr [rbp - 0x150]
	call	set_process_security_ctx
	test	al, al
	je	.label_92
	test	r14d, r14d
	je	.label_96
	mov	rax, qword ptr [rbp - 0x160]
	mov	byte ptr [rax], 1
	mov	eax, dword ptr [r13 + 0x18]
	mov	r14d, 0x3f
	mov	rbx, qword ptr [rbp - 0x150]
	cmp	byte ptr [rbx + 0x1d], 0
	jne	.label_98
	mov	r14d, 0x12
	cmp	byte ptr [rbx + 0x1e], 0
	jne	.label_98
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_98:
	and	r14d, eax
	mov	ecx, 0x1ff
	cmp	byte ptr [rbx + 0x20], 0
	jne	.label_102
	mov	ecx, eax
.label_102:
	mov	esi, r14d
	xor	esi, 0xfff
	and	esi, ecx
	mov	rdi, r12
	call	mkdir
	test	eax, eax
	jne	.label_105
	mov	rsi, qword ptr [rbp - 0x170]
	test	rsi, rsi
	je	.label_106
	mov	edi, 1
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rcx, r12
	call	__printf_chk
.label_106:
	mov	edi, 1
	mov	rsi, r12
	lea	rdx, [rbp - 0xb8]
	call	__lxstat
	test	eax, eax
	jne	.label_82
	cmp	byte ptr [rbx + 0x1e], 0
	jne	.label_83
	mov	eax, dword ptr [rbp - 0xa0]
	mov	ecx, eax
	not	ecx
	test	r14d, ecx
	je	.label_84
	call	cached_umask
	not	eax
	and	r14d, eax
	mov	eax, dword ptr [rbp - 0xa0]
.label_84:
	mov	ecx, eax
	not	ecx
	test	r14d, ecx
	jne	.label_90
	mov	ecx, eax
	and	ecx, 0x1c0
	cmp	ecx, 0x1c0
	je	.label_83
.label_90:
	or	eax, r14d
	mov	dword ptr [r13 + 0x18], eax
	mov	byte ptr [r13 + 0x90], 1
	nop	word ptr cs:[rax + rax]
.label_83:
	mov	esi, dword ptr [rbp - 0xa0]
	mov	eax, esi
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_97
	or	esi, 0x1c0
	mov	rdi, r12
	call	chmod
	test	eax, eax
	jne	.label_99
.label_97:
	mov	rax, qword ptr [rbp - 0x160]
	cmp	byte ptr [rax], 0
	jne	.label_100
	jmp	.label_107
	nop	dword ptr [rax + rax]
.label_96:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x4000
	jne	.label_86
	mov	rax, qword ptr [rbp - 0x160]
	mov	byte ptr [rax], 0
	mov	rbx, qword ptr [rbp - 0x150]
.label_107:
	mov	al, byte ptr [rbx + 0x25]
	mov	cl, byte ptr [rbx + 0x21]
	or	cl, al
	je	.label_100
	test	al, al
	setne	al
	movzx	esi, al
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, rbx
	call	set_file_security_ctx
	test	al, al
	jne	.label_100
	cmp	byte ptr [rbx + 0x26], 0
	jne	.label_110
	nop	word ptr cs:[rax + rax]
.label_100:
	mov	qword ptr [rbp - 0x150], rbx
	mov	byte ptr [r15], 0x2f
	nop	dword ptr [rax + rax]
.label_85:
	movzx	eax, byte ptr [r15 + 1]
	inc	r15
	cmp	eax, 0x2f
	je	.label_85
	mov	esi, 0x2f
	mov	rdi, r15
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_89
	jmp	.label_91
.label_109:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xa0]
	cmp	eax, 0x4000
	jne	.label_93
	mov	rax, qword ptr [rbp - 0x160]
	mov	byte ptr [rax], 0
.label_91:
	mov	r13b, 1
	jmp	.label_87
.label_93:
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
	jmp	.label_104
.label_92:
	xor	r13d, r13d
	jmp	.label_87
.label_94:
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
.label_104:
	mov	rdx, r14
	call	error
	jmp	.label_87
.label_105:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	jmp	.label_108
.label_82:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	jmp	.label_108
.label_86:
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
	jmp	.label_80
.label_99:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
.label_108:
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
.label_80:
	mov	rdx, rbx
	call	error
.label_87:
	mov	al, r13b
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_110:
	xor	r13d, r13d
	jmp	.label_87
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e90

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
	je	.label_112
	add	r13, r12
	lea	r14, [rbp - 0x50]
	nop	word ptr cs:[rax + rax]
.label_121:
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_122
	movups	xmm0, xmmword ptr [rbx + 0x48]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movups	xmm0, xmmword ptr [rbx + 0x58]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	rdi, r12
	mov	rsi, r14
	call	utimens
	test	eax, eax
	jne	.label_117
.label_122:
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_120
	mov	esi, dword ptr [rbx + 0x1c]
	mov	edx, dword ptr [rbx + 0x20]
	mov	rdi, r12
	call	lchown
	test	eax, eax
	je	.label_120
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	je	.label_113
	mov	edx, dword ptr [rbx + 0x20]
	mov	esi, 0xffffffff
	mov	rdi, r12
	call	lchown
.label_120:
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_118
	mov	r8d, dword ptr [rbx + 0x18]
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r13
	mov	rdx, r12
	call	copy_acl
	test	eax, eax
	je	.label_115
	jmp	.label_116
	nop	word ptr cs:[rax + rax]
.label_118:
	cmp	byte ptr [rbx + 0x90], 0
	je	.label_115
	mov	esi, dword ptr [rbx + 0x18]
	mov	rdi, r12
	call	chmod
	test	eax, eax
	jne	.label_119
.label_115:
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0x2f
	mov	rbx, qword ptr [rbx + 0xa0]
	test	rbx, rbx
	jne	.label_121
	mov	al, 1
	jmp	.label_112
.label_117:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
	jmp	.label_114
.label_116:
	xor	eax, eax
	jmp	.label_112
.label_113:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	jmp	.label_114
.label_119:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
.label_114:
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
.label_112:
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
	.align	32
	#Procedure 0x404040

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r15, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_123
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_126
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_127
.label_126:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r12
	call	error
	cmp	byte ptr [rbx + 0x26], 0
	jne	.label_124
	jmp	.label_125
.label_123:
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_125
	xor	cl, 1
	jne	.label_125
.label_127:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_125:
	mov	r14b, 1
.label_124:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040e0

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	je	.label_128
	cmp	byte ptr [rcx + 0x26], 0
	je	.label_130
.label_128:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
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
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_129
.label_130:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_129:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404150

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
	#Procedure 0x404180

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
	#Procedure 0x4041b0

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
	.align	32
	#Procedure 0x404200

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
	sub	rsp, 0x3a8
	mov	qword ptr [rbp - 0x328], r8
	mov	qword ptr [rbp - 0x330], rcx
	mov	r14d, edx
	mov	qword ptr [rbp - 0x318], rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 0
	mov	r15d, dword ptr [r9 + 0x34]
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_225
	mov	rbx, r9
	test	r15d, r15d
	jns	.label_237
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, r12
	mov	rcx, qword ptr [rbp - 0x318]
	call	renameatu
	xor	r15d, r15d
	test	eax, eax
	je	.label_237
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_237:
	test	r15d, r15d
	sete	r14b
	test	r13, r13
	je	.label_243
	mov	byte ptr [r13], r14b
.label_243:
	mov	r9, rbx
.label_225:
	test	r15d, r15d
	je	.label_451
	cmp	r15d, 0x11
	jne	.label_248
	cmp	dword ptr [r9 + 8], 2
	je	.label_249
	jmp	.label_248
.label_451:
	cmp	byte ptr [r9 + 0x31], 0
	jne	.label_249
.label_248:
	test	r15d, r15d
	mov	rbx, r12
	cmove	rbx, qword ptr [rbp - 0x318]
	cmp	dword ptr [r9 + 4], 2
	mov	r13, r9
	lea	rdx, [rbp - 0x280]
	mov	edi, 1
	mov	rsi, rbx
	jne	.label_253
	call	__lxstat
	jmp	.label_261
.label_253:
	call	__xstat
.label_261:
	test	eax, eax
	mov	r9, r13
	je	.label_263
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_205:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	call	error
.label_176:
	mov	al, r13b
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_263:
	mov	ecx, dword ptr [rbp - 0x268]
	mov	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_284
	cmp	byte ptr [r9 + 0x2a], 0
	mov	r13, qword ptr [rbp + 0x28]
	jne	.label_249
	cmp	byte ptr [r9 + 0x19], 0
	je	.label_280
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	jmp	.label_285
.label_284:
	mov	r13, qword ptr [rbp + 0x28]
.label_249:
	mov	dl, byte ptr [rbp + 0x10]
	test	dl, dl
	je	.label_291
	mov	rdi, qword ptr [r9 + 0x48]
	test	rdi, rdi
	je	.label_291
	mov	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_296
	mov	dword ptr [rbp - 0x334], ecx
	jmp	.label_299
.label_296:
	mov	dword ptr [rbp - 0x334], ecx
	cmp	dword ptr [r9], 0
	je	.label_303
.label_299:
	mov	bl, dl
	mov	r13, r9
.label_456:
	lea	rdx, [rbp - 0x280]
	mov	rsi, r12
	call	record_file
	mov	r9, r13
	mov	r13, qword ptr [rbp + 0x28]
	mov	dl, bl
	mov	ecx, dword ptr [rbp - 0x334]
.label_291:
	mov	qword ptr [rbp - 0x320], r12
	mov	eax, dword ptr [r9 + 4]
	mov	r12b, 1
	cmp	eax, 4
	je	.label_432
	cmp	eax, 3
	sete	r12b
	and	r12b, dl
.label_432:
	xor	r8d, r8d
	test	r14b, r14b
	je	.label_316
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
.label_180:
	test	dl, dl
	je	.label_318
	cmp	qword ptr [r9 + 0x40], 0
	je	.label_318
	cmp	byte ptr [r9 + 0x18], 0
	jne	.label_318
	cmp	dword ptr [r9], 0
	jne	.label_318
	mov	qword ptr [rbp - 0x348], r14
	mov	r14, r9
	mov	r13d, ecx
	test	r8b, r8b
	jne	.label_324
	lea	rbx, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	jne	.label_332
	jmp	.label_334
.label_316:
	cmp	r15d, 0x11
	jne	.label_335
	cmp	dword ptr [r9 + 8], 2
	jne	.label_335
	xor	r8d, r8d
	xor	r14d, r14d
	jmp	.label_337
.label_335:
	mov	byte ptr [rbp - 0x340], r12b
	mov	eax, ecx
	mov	dword ptr [rbp - 0x334], ecx
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rdx, qword ptr [rbp - 0x318]
	je	.label_339
	mov	bl, 1
	cmp	byte ptr [r9 + 0x14], 0
	je	.label_343
	cmp	eax, 0x4000
	je	.label_343
	cmp	eax, 0xa000
	je	.label_343
.label_339:
	mov	bl, 1
	cmp	byte ptr [r9 + 0x18], 0
	jne	.label_343
	cmp	byte ptr [r9 + 0x2c], 0
	jne	.label_343
	cmp	byte ptr [r9 + 0x17], 0
	jne	.label_343
	cmp	dword ptr [r9], 0
	jne	.label_343
	cmp	byte ptr [r9 + 0x15], 0
	setne	bl
.label_343:
	mov	r12, r9
	movzx	r8d, bl
	shl	r8d, 8
	lea	rcx, [rbp - 0x310]
	mov	edi, 1
	mov	esi, 0xffffff9c
	call	__fxstatat
	test	eax, eax
	je	.label_362
	mov	r14, r12
	mov	r13d, dword ptr [rbp - 0x334]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	al, 1
	cmp	ebx, 2
	je	.label_366
	mov	r12, qword ptr [rbp - 0x318]
	cmp	ebx, 0x28
	jne	.label_367
	cmp	byte ptr [r14 + 0x16], 0
	je	.label_367
	xor	eax, eax
.label_366:
	xor	r8d, r8d
	cmp	r15d, 0x11
	mov	ecx, 0
	mov	qword ptr [rbp - 0x350], rcx
	mov	ecx, r13d
	mov	r9, r14
	mov	r13b, byte ptr [rbp + 0x10]
	mov	dl, r13b
	mov	r14, rax
	mov	r13, qword ptr [rbp + 0x28]
	mov	r12b, byte ptr [rbp - 0x340]
	jne	.label_180
	jmp	.label_337
.label_362:
	xor	r14d, r14d
	mov	r9, r12
	mov	r13, qword ptr [rbp + 0x28]
	mov	r12b, byte ptr [rbp - 0x340]
	mov	r8, rbx
	mov	ecx, dword ptr [rbp - 0x334]
.label_337:
	cmp	dword ptr [r9 + 8], 2
	jne	.label_381
	xor	edi, edi
	jmp	.label_202
.label_381:
	mov	dword ptr [rbp - 0x334], ecx
	mov	rax, qword ptr [rbp - 0x278]
	cmp	rax, qword ptr [rbp - 0x308]
	jne	.label_382
	mov	qword ptr [rbp - 0x348], r14
	mov	rax, qword ptr [rbp - 0x280]
	cmp	rax, qword ptr [rbp - 0x310]
	jne	.label_384
	mov	dil, 1
	cmp	byte ptr [r9 + 0x17], 0
	jne	.label_166
	jmp	.label_390
.label_367:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
.label_439:
	mov	rdx, r15
	call	error
	jmp	.label_176
.label_382:
	mov	qword ptr [rbp - 0x348], r14
	xor	edi, edi
	jmp	.label_390
.label_303:
	mov	bl, dl
	mov	r13, r9
	lea	rdx, [rbp - 0x280]
	mov	rsi, r12
	call	seen_file
	test	al, al
	je	.label_294
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15_0
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
	mov	rdx, rbx
	call	error
	mov	r13b, 1
	jmp	.label_176
.label_384:
	xor	edi, edi
.label_390:
	cmp	dword ptr [r9 + 4], 2
	jne	.label_410
	mov	rbx, r8
	mov	eax, dword ptr [rbp - 0x268]
	mov	ecx, eax
	and	ecx, 0xf000
	lea	rsi, [rbp - 0x280]
	lea	r15, [rbp - 0x310]
	cmp	ecx, 0xa000
	jne	.label_370
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x2f8]
	cmp	ecx, 0xa000
	jne	.label_370
	mov	r15d, edi
	mov	r14, r9
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	call	same_name
	test	al, al
	jne	.label_197
	mov	r9, r14
	cmp	dword ptr [r9], 0
	jne	.label_433
	test	r15b, r15b
	mov	r8, rbx
	je	.label_436
	cmp	byte ptr [r9 + 0x18], 0
	mov	dil, 1
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	jne	.label_197
	jmp	.label_202
.label_410:
	test	dil, dil
	je	.label_441
	mov	rbx, r8
	mov	r14, r9
	lea	r15, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rdx, r15
	call	__lxstat
	test	eax, eax
	jne	.label_447
	lea	rdx, [rbp - 0x160]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x320]
	call	__lxstat
	test	eax, eax
	je	.label_452
.label_447:
	xor	edi, edi
	mov	r9, r14
	mov	r8, rbx
	jmp	.label_166
.label_294:
	mov	rdi, qword ptr [r13 + 0x48]
	jmp	.label_456
.label_280:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
.label_285:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	r13d, r13d
.label_464:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_402:
	mov	rdx, rbx
	call	error
	jmp	.label_176
.label_441:
	xor	edi, edi
	jmp	.label_166
.label_324:
	lea	rbx, [rbp - 0x310]
.label_334:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_332
	mov	rdi, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rdx, rbx
	call	seen_file
	test	al, al
	je	.label_332
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26_0
	jmp	.label_468
.label_332:
	mov	ecx, r13d
	mov	r9, r14
	mov	r14, qword ptr [rbp - 0x348]
.label_318:
	mov	byte ptr [rbp - 0x340], r12b
	mov	qword ptr [rbp - 0x348], r14
	cmp	byte ptr [r9 + 0x2e], 0
	je	.label_132
	mov	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_132
	mov	al, byte ptr [r9 + 0x18]
	test	al, al
	jne	.label_132
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rdx, qword ptr [rbp - 0x350]
	mov	r14, r9
	mov	ebx, ecx
	call	emit_verbose
	mov	ecx, ebx
	mov	r9, r14
.label_132:
	mov	r14, r9
	mov	r13d, ecx
	xor	edx, edx
	test	r15d, r15d
	je	.label_146
	mov	ebx, r13d
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_149
	mov	al, byte ptr [r14 + 0x2a]
	test	al, al
	je	.label_149
	mov	rax, qword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x278]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_153
	mov	rdi, qword ptr [rbp - 0x318]
	mov	rsi, rcx
	mov	rdx, rax
	jmp	.label_160
.label_149:
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_163
	cmp	qword ptr [rbp - 0x270], 1
	jne	.label_163
	mov	rsi, qword ptr [rbp - 0x280]
	mov	rdi, qword ptr [rbp - 0x278]
	call	src_to_dest_lookup
	jmp	.label_172
.label_163:
	xor	edx, edx
	cmp	byte ptr [r14 + 0x22], 0
	je	.label_146
	xor	edx, edx
	cmp	byte ptr [r14 + 0x17], 0
	jne	.label_146
	cmp	qword ptr [rbp - 0x270], 1
	ja	.label_178
	mov	ecx, dword ptr [r14 + 4]
	cmp	ecx, 3
	sete	al
	xor	edx, edx
	cmp	ecx, 4
	je	.label_178
	and	al, byte ptr [rbp + 0x10]
	je	.label_146
.label_178:
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rsi, qword ptr [rbp - 0x278]
	mov	rdi, qword ptr [rbp - 0x318]
.label_160:
	call	remember_copied
	jmp	.label_172
.label_153:
	mov	rdi, rcx
	mov	rsi, rax
	call	src_to_dest_lookup
.label_172:
	mov	r12, rax
	xor	edx, edx
	test	r12, r12
	je	.label_146
	cmp	ebx, 0x4000
	jne	.label_188
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, r12
	call	same_name
	test	al, al
	je	.label_193
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27_0
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
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
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	jmp	.label_307
.label_188:
	movzx	ecx, byte ptr [r14 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x340]
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, qword ptr [rbp - 0x318]
	call	create_hard_link
	mov	r10, r14
	mov	r13b, 1
	test	al, al
	mov	rdx, r12
	jne	.label_176
	jmp	.label_164
.label_193:
	mov	rdi, qword ptr [rbp - 0x318]
	mov	rsi, r12
	call	same_name
	test	al, al
	je	.label_327
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
	mov	r13b, 1
	cmp	qword ptr [rbp + 0x28], 0
	je	.label_176
	mov	al, byte ptr [r14 + 0x18]
	test	al, al
	je	.label_176
	mov	rax, qword ptr [rbp + 0x28]
	mov	byte ptr [rax], 1
	jmp	.label_176
.label_327:
	mov	ecx, dword ptr [r14 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_239
	mov	cl, byte ptr [rbp + 0x10]
	and	al, cl
	jne	.label_239
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29_0
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, rbx
	call	error
.label_307:
	mov	rdx, r12
	mov	r10, r14
	jmp	.label_164
.label_239:
	mov	rdx, r12
.label_146:
	cmp	byte ptr [r14 + 0x18], 0
	mov	r12, qword ptr [rbp - 0x320]
	je	.label_262
	cmp	r15d, 0x11
	jne	.label_208
	mov	rbx, rdx
	mov	rdi, r12
	mov	rsi, qword ptr [rbp - 0x318]
	call	rename
	test	eax, eax
	je	.label_269
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rdx, rbx
.label_208:
	cmp	r15d, 0x16
	je	.label_271
	cmp	r15d, 0x12
	je	.label_273
	test	r15d, r15d
	jne	.label_267
.label_269:
	cmp	byte ptr [r14 + 0x2e], 0
	mov	r13, qword ptr [rbp - 0x318]
	je	.label_276
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, qword ptr [rbp - 0x350]
	call	emit_verbose
.label_276:
	cmp	byte ptr [r14 + 0x21], 0
	mov	rbx, qword ptr [rbp + 0x28]
	je	.label_312
	cmp	byte ptr [r14 + 0x23], 0
	je	.label_297
	cmp	byte ptr [r14 + 0x26], 0
	je	.label_373
.label_297:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r15
	call	error
	jmp	.label_312
.label_273:
	mov	qword ptr [rbp - 0x360], rdx
	mov	ebx, r13d
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_445
	mov	r12, qword ptr [rbp - 0x318]
	mov	rdi, r12
	call	rmdir
	jmp	.label_321
.label_271:
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
	mov	r13b, 1
	jmp	.label_176
.label_267:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, r12
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	jmp	.label_347
.label_445:
	mov	r12, qword ptr [rbp - 0x318]
	mov	rdi, r12
	call	unlink
.label_321:
	test	eax, eax
	je	.label_355
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 2
	jne	.label_358
.label_355:
	cmp	ebx, 0x4000
	mov	al, 1
	mov	qword ptr [rbp - 0x348], rax
	je	.label_359
	mov	al, byte ptr [r14 + 0x2e]
	test	al, al
	mov	rbx, r12
	je	.label_364
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	r12, qword ptr [rbp - 0x320]
	mov	rdi, r12
	mov	rsi, rbx
	mov	qword ptr [rbp - 0x318], rbx
	mov	rdx, qword ptr [rbp - 0x350]
	call	emit_verbose
	jmp	.label_375
.label_358:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x320]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r14
	mov	rcx, rbx
.label_347:
	call	error
	mov	rsi, qword ptr [rbp - 0x280]
	mov	rdi, qword ptr [rbp - 0x278]
	call	forget_created
	jmp	.label_176
.label_373:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_312:
	mov	rsi, r13
	test	rbx, rbx
	je	.label_391
	mov	byte ptr [rbx], 1
.label_391:
	mov	r13b, 1
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_176
	cmp	byte ptr [r14 + 0x31], 0
	jne	.label_176
	mov	rdi, qword ptr [r14 + 0x40]
	lea	rdx, [rbp - 0x280]
	call	record_file
	jmp	.label_176
.label_359:
	mov	qword ptr [rbp - 0x318], r12
	mov	r12, qword ptr [rbp - 0x320]
	jmp	.label_375
.label_364:
	mov	qword ptr [rbp - 0x318], rbx
	mov	r12, qword ptr [rbp - 0x320]
.label_375:
	mov	rdx, qword ptr [rbp - 0x360]
.label_262:
	cmp	byte ptr [r14 + 0x2b], 0
	mov	eax, r13d
	mov	r8, r14
	je	.label_401
	mov	eax, dword ptr [r8 + 0x10]
.label_401:
	mov	ebx, eax
	mov	qword ptr [rbp - 0x360], rdx
	mov	r15d, 0x3f
	cmp	byte ptr [r8 + 0x1d], 0
	mov	r14, qword ptr [rbp - 0x348]
	jne	.label_406
	mov	eax, r13d
	and	eax, 0xf000
	xor	ecx, ecx
	cmp	eax, 0x4000
	mov	r15d, 0x12
	cmovne	r15d, ecx
.label_406:
	movzx	ecx, r14b
	mov	dword ptr [rbp - 0x368], ecx
	mov	rdi, r12
	mov	rsi, qword ptr [rbp - 0x318]
	mov	qword ptr [rbp - 0x358], r8
	call	set_process_security_ctx
	test	al, al
	je	.label_415
	and	r15d, ebx
	mov	esi, r13d
	and	esi, 0xf000
	cmp	esi, 0x4000
	jne	.label_169
	mov	rdi, qword ptr [rbp - 0x328]
	test	rdi, rdi
	mov	rax, qword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x278]
	je	.label_421
	mov	rdx, rdi
	nop	word ptr cs:[rax + rax]
.label_437:
	cmp	qword ptr [rdx + 8], rcx
	jne	.label_434
	cmp	qword ptr [rdx + 0x10], rax
	je	.label_435
.label_434:
	mov	rdx, qword ptr [rdx]
	test	rdx, rdx
	jne	.label_437
.label_421:
	mov	dword ptr [rbp - 0x36c], esi
	mov	rdx, rsp
	lea	rsi, [rdx - 0x20]
	mov	qword ptr [rbp - 0x340], rsi
	mov	rsp, rsi
	mov	qword ptr [rdx - 0x20], rdi
	mov	qword ptr [rdx - 0x18], rcx
	mov	qword ptr [rdx - 0x10], rax
	test	r14b, r14b
	jne	.label_222
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	jne	.label_222
	mov	r10, qword ptr [rbp - 0x358]
	cmp	byte ptr [r10 + 0x21], 0
	jne	.label_444
	cmp	byte ptr [r10 + 0x25], 0
	je	.label_448
.label_444:
	mov	dword ptr [rbp - 0x334], r13d
	cmp	byte ptr [r10 + 0x23], 0
	je	.label_450
	cmp	byte ptr [r10 + 0x26], 0
	je	.label_453
.label_450:
	mov	r14, r10
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	r13, qword ptr [rbp - 0x318]
	mov	rdx, r13
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r10, r14
	cmp	byte ptr [r10 + 0x26], 0
	mov	r15d, 0
	mov	dword ptr [rbp - 0x374], eax
	je	.label_157
	mov	rdx, qword ptr [rbp - 0x360]
	jmp	.label_164
.label_415:
	xor	r13d, r13d
	jmp	.label_176
.label_169:
	mov	rdx, qword ptr [rbp - 0x358]
	cmp	byte ptr [rdx + 0x2c], 0
	je	.label_459
	mov	dword ptr [rbp - 0x36c], esi
	mov	dword ptr [rbp - 0x334], r13d
	movzx	eax, byte ptr [r12]
	cmp	eax, 0x2f
	je	.label_131
	mov	r13, rdx
	mov	rdi, qword ptr [rbp - 0x318]
	call	dir_name
	mov	r14, rax
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2e
	jne	.label_138
	cmp	byte ptr [r14 + 1], 0
	je	.label_142
.label_138:
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.39_0
	call	__xstat
	test	eax, eax
	jne	.label_142
	lea	rdx, [rbp - 0x160]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	test	eax, eax
	je	.label_150
.label_142:
	mov	rdi, r14
	call	free
.label_360:
	mov	rdx, r13
.label_131:
	mov	dword ptr [rbp - 0x370], r15d
	movzx	ecx, byte ptr [rdx + 0x16]
	mov	r13, rdx
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r12
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rdx, rbx
	call	force_symlinkat
	mov	r15, r12
	mov	r12d, eax
	test	r12d, r12d
	jle	.label_393
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41_0
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
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r14
	mov	rcx, rbx
	call	error
.label_219:
	mov	rdx, qword ptr [rbp - 0x360]
	mov	r10, r13
	jmp	.label_164
.label_222:
	and	ebx, 0xfff
	mov	esi, r15d
	not	esi
	and	esi, ebx
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rdi, rbx
	call	mkdir
	test	eax, eax
	je	.label_185
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36_0
	jmp	.label_315
.label_459:
	cmp	byte ptr [rdx + 0x17], 0
	je	.label_189
	mov	dword ptr [rbp - 0x36c], esi
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x320], r12
	mov	r12b, 1
	cmp	byte ptr [rdx + 0x16], 0
	mov	al, 1
	jne	.label_191
	cmp	dword ptr [rdx + 8], 3
	sete	al
.label_191:
	mov	rbx, rdx
	movzx	edx, al
	movzx	r8d, byte ptr [rbp - 0x340]
	xor	r15d, r15d
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	call	create_hard_link
	test	al, al
	je	.label_207
	mov	dword ptr [rbp - 0x334], r13d
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	mov	dword ptr [rbp - 0x374], eax
	mov	rcx, qword ptr [rbp - 0x360]
	mov	r10, rbx
	jmp	.label_211
.label_185:
	lea	rdx, [rbp - 0x310]
	mov	edi, 1
	mov	rsi, rbx
	call	__lxstat
	test	eax, eax
	je	.label_279
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_315:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
.label_254:
	mov	rdx, r15
	call	error
	jmp	.label_190
.label_393:
	mov	qword ptr [rbp - 0x320], r15
	mov	r15b, 1
	xor	r14d, r14d
	mov	r12b, 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	mov	dword ptr [rbp - 0x374], eax
	mov	rcx, qword ptr [rbp - 0x360]
	mov	r10, r13
	jmp	.label_211
.label_435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35_0
.label_467:
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
.label_196:
	mov	rdx, rbx
	call	error
.label_190:
	mov	rdx, qword ptr [rbp - 0x360]
	mov	r10, qword ptr [rbp - 0x358]
	jmp	.label_164
.label_189:
	cmp	esi, 0x8000
	je	.label_250
	cmp	esi, 0xa000
	je	.label_251
	mov	al, byte ptr [rdx + 0x14]
	test	al, al
	je	.label_251
.label_250:
	mov	dword ptr [rbp - 0x36c], esi
	mov	dword ptr [rbp - 0x334], r13d
	mov	eax, dword ptr [rbp - 0x268]
	mov	dword ptr [rbp - 0x330], eax
	mov	al, byte ptr [rdx + 0x23]
	mov	byte ptr [rbp - 0x328], al
	mov	esi, 0x20000
	cmp	dword ptr [rdx + 4], 2
	je	.label_322
	xor	esi, esi
.label_322:
	xor	eax, eax
	mov	rdi, r12
	call	open_safer
	mov	r13, r12
	mov	r12d, eax
	test	r12d, r12d
	js	.label_264
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x320], r13
	lea	rdx, [rbp - 0x160]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	je	.label_274
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x320]
.label_278:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_281
.label_207:
	mov	rdx, qword ptr [rbp - 0x360]
	mov	r10, rbx
	jmp	.label_164
.label_279:
	mov	ecx, dword ptr [rbp - 0x2f8]
	mov	eax, ecx
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	jne	.label_293
	mov	dword ptr [rbp - 0x374], ecx
	xor	ecx, ecx
	jmp	.label_298
.label_452:
	lea	rcx, [rbp - 0x160]
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0xc8]
	jne	.label_301
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0xd0]
	sete	dil
	jmp	.label_305
.label_293:
	mov	esi, ecx
	mov	dword ptr [rbp - 0x374], ecx
	or	esi, 0x1c0
	mov	rdi, rbx
	call	chmod
	mov	cl, 1
	test	eax, eax
	je	.label_298
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	jmp	.label_315
.label_298:
	mov	qword ptr [rbp - 0x380], rcx
	mov	dword ptr [rbp - 0x334], r13d
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	mov	r10, qword ptr [rbp - 0x358]
	jne	.label_317
	mov	rdx, qword ptr [rbp - 0x310]
	mov	rsi, qword ptr [rbp - 0x308]
	mov	rdi, rbx
	mov	r14, r10
	call	remember_copied
	mov	r10, r14
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_317:
	cmp	byte ptr [r10 + 0x2e], 0
	je	.label_195
	cmp	byte ptr [r10 + 0x18], 0
	mov	r14, r10
	mov	r13, rbx
	je	.label_329
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_341
.label_264:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r13
	jmp	.label_346
.label_150:
	mov	ebx, r15d
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x158]
	jne	.label_348
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x328], rax
	mov	r15, qword ptr [rbp - 0x160]
	mov	rdi, r14
	call	free
	cmp	qword ptr [rbp - 0x328], r15
	mov	r15d, ebx
	je	.label_360
	jmp	.label_363
.label_251:
	cmp	esi, 0x5fff
	jle	.label_365
	cmp	esi, 0x6000
	je	.label_242
	cmp	esi, 0xa000
	je	.label_368
	cmp	esi, 0xc000
	je	.label_242
	jmp	.label_235
.label_301:
	xor	edi, edi
.label_305:
	mov	rsi, rcx
	mov	eax, dword ptr [rbp - 0x148]
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	r9, r14
	jne	.label_370
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0xb8]
	cmp	ecx, 0xa000
	jne	.label_370
	cmp	byte ptr [r9 + 0x15], 0
	je	.label_370
.label_433:
	xor	edi, edi
	mov	r8, rbx
	jmp	.label_166
.label_370:
	mov	rcx, qword ptr [r9]
	test	ecx, ecx
	je	.label_378
	mov	rdx, r15
	mov	r15, r9
	test	dil, dil
	je	.label_380
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	call	same_name
	test	al, al
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r9, r15
	mov	r8, rbx
	jne	.label_197
	xor	edi, edi
	jmp	.label_202
.label_378:
	cmp	byte ptr [r9 + 0x18], 0
	jne	.label_449
	cmp	byte ptr [r9 + 0x15], 0
	je	.label_389
.label_449:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x18]
	cmp	ecx, 0xa000
	mov	r8, rbx
	jne	.label_392
	xor	edi, edi
	jmp	.label_166
.label_380:
	and	eax, 0xf000
	xor	edi, edi
	cmp	eax, 0xa000
	mov	r9, r15
	mov	r8, rbx
	jne	.label_166
	movabs	rax, 0xffffffff00000000
	and	rcx, rax
	movabs	rax, 0x200000000
	cmp	rcx, rax
	je	.label_166
	mov	al, byte ptr [r9 + 0x18]
	test	al, al
	jne	.label_166
	mov	eax, 0xf000
	and	eax, dword ptr [rdx + 0x18]
	cmp	eax, 0xa000
	jne	.label_197
	xor	edi, edi
	jmp	.label_166
.label_392:
	test	dil, dil
	je	.label_409
	cmp	qword ptr [r15 + 0x10], 2
	jb	.label_409
	mov	qword ptr [rbp - 0x340], rsi
	mov	rbx, r8
	mov	r14, r9
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	call	same_name
	test	al, al
	je	.label_411
	mov	rsi, qword ptr [rbp - 0x340]
	mov	eax, dword ptr [rsi + 0x18]
	mov	r9, r14
.label_389:
	mov	r8, rbx
.label_409:
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_414
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	je	.label_414
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [r15 + 8]
	jne	.label_419
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [r15]
	jne	.label_424
	mov	dil, 1
	cmp	byte ptr [r9 + 0x17], 0
	jne	.label_166
.label_414:
	mov	rbx, r8
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_431
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x268]
	cmp	eax, 0xa000
	jne	.label_431
	cmp	qword ptr [r15 + 0x10], 2
	jb	.label_431
	mov	rdi, qword ptr [rbp - 0x320]
	mov	qword ptr [rbp - 0x358], r9
	mov	r14, rsi
	call	canonicalize_file_name
	mov	rsi, r14
	mov	r9, qword ptr [rbp - 0x358]
	test	rax, rax
	je	.label_431
	mov	r15, rax
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x318]
	call	same_name
	mov	r14b, al
	mov	rdi, r15
	call	free
	mov	r9, qword ptr [rbp - 0x358]
	test	r14b, r14b
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r8, rbx
	jne	.label_197
	xor	edi, edi
	jmp	.label_202
.label_431:
	cmp	byte ptr [r9 + 0x2c], 0
	mov	r8, rbx
	je	.label_454
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	jne	.label_454
	xor	edi, edi
	jmp	.label_166
.label_454:
	cmp	dword ptr [r9 + 4], 2
	jne	.label_197
	mov	r14, r8
	mov	qword ptr [rbp - 0x358], r9
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_458
	lea	rdx, [rbp - 0x160]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x320]
	call	__xstat
	test	eax, eax
	jne	.label_462
	jmp	.label_465
.label_453:
	mov	rbx, r10
	call	__errno_location
	mov	r10, rbx
	mov	dword ptr [rax], 0x5f
	jmp	.label_466
.label_274:
	mov	rax, qword ptr [rbp - 0x278]
	cmp	rax, qword ptr [rbp - 0x158]
	jne	.label_455
	mov	rax, qword ptr [rbp - 0x280]
	cmp	rax, qword ptr [rbp - 0x160]
	jne	.label_455
	mov	edx, ebx
	and	edx, 0x1ff
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	mov	r13b, al
	mov	ecx, dword ptr [rbp - 0x370]
	jne	.label_133
	mov	dword ptr [rbp - 0x374], edx
	mov	esi, 0x201
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x23], 0
	jne	.label_230
	mov	esi, 1
.label_230:
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x318]
	call	open_safer
	mov	ebx, eax
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	mov	rcx, qword ptr [rbp - 0x358]
	cmp	byte ptr [rcx + 0x21], 0
	je	.label_148
	test	ebx, ebx
	jns	.label_152
	jmp	.label_154
.label_195:
	mov	r13, rbx
	jmp	.label_157
.label_448:
	mov	dword ptr [rbp - 0x334], r13d
.label_466:
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	xor	r15d, r15d
	mov	dword ptr [rbp - 0x374], eax
	mov	r13, qword ptr [rbp - 0x318]
	jmp	.label_157
.label_436:
	xor	edi, edi
	jmp	.label_166
.label_455:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x320]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_281:
	mov	rdx, rbx
	call	error
	xor	ebx, ebx
.label_155:
	mov	edi, r12d
	call	close
	test	eax, eax
	jns	.label_181
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x320]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r12
	call	error
.label_181:
	mov	rdi, rbx
	call	free
	test	r15b, r15b
	je	.label_190
	xor	r15d, r15d
	mov	r14b, 1
	mov	r12b, 1
	jmp	.label_192
.label_411:
	mov	r9, r14
	cmp	byte ptr [r9 + 0x18], 0
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r8, rbx
	jne	.label_197
	xor	edi, edi
	jmp	.label_202
.label_348:
	mov	rdi, r14
	call	free
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_219
.label_419:
	xor	edi, edi
	jmp	.label_166
.label_458:
	lea	rdi, [rbp - 0x160]
	mov	edx, 0x90
	call	memcpy
.label_465:
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	jne	.label_224
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	call	__xstat
	test	eax, eax
	je	.label_229
.label_462:
	xor	edi, edi
	mov	r9, qword ptr [rbp - 0x358]
	mov	r8, r14
	jmp	.label_166
.label_365:
	mov	dword ptr [rbp - 0x334], r13d
	cmp	esi, 0x1000
	je	.label_232
	cmp	esi, 0x2000
	mov	r13d, dword ptr [rbp - 0x334]
	jne	.label_235
.label_242:
	mov	dword ptr [rbp - 0x36c], esi
	mov	edx, r15d
	not	edx
	and	edx, r13d
	mov	rax, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xd0], rax
	mov	r14d, r15d
	xor	r15d, r15d
	lea	rcx, [rbp - 0xd0]
	xor	edi, edi
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rsi, rbx
	call	__xmknod
	test	eax, eax
	je	.label_443
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
.label_346:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_254
.label_329:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.57_0
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_268
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_341:
	mov	r10, r14
.label_157:
	mov	rcx, qword ptr [rbp - 0x330]
	test	rcx, rcx
	je	.label_275
	mov	al, byte ptr [r10 + 0x1c]
	test	al, al
	je	.label_275
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rbp - 0x280]
	jne	.label_309
.label_275:
	movups	xmm0, xmmword ptr [r10 + 0x40]
	movaps	xmmword ptr [rbp - 0x90], xmm0
	movups	xmm0, xmmword ptr [r10]
	movups	xmm1, xmmword ptr [r10 + 0x10]
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movups	xmm3, xmmword ptr [r10 + 0x30]
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	mov	esi, 2
	mov	rdi, r12
	mov	r14, r10
	call	savedir
	test	rax, rax
	je	.label_300
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x318], r13
	cmp	dword ptr [r14 + 4], 3
	mov	rbx, r14
	jne	.label_304
	mov	dword ptr [rbp - 0xcc], 2
.label_304:
	mov	qword ptr [rbp - 0x358], rbx
	mov	qword ptr [rbp - 0x320], r12
	mov	r15b, 1
	xor	ebx, ebx
	cmp	byte ptr [rax], 0
	je	.label_308
	mov	r12, rax
	mov	qword ptr [rbp - 0x330], rax
.label_350:
	mov	r14b, r15b
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, r12
	call	file_name_concat
	mov	r15, rax
	mov	qword ptr [rbp - 0x328], r15
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x318]
	mov	rsi, r12
	call	file_name_concat
	mov	r13, rax
	mov	rax, qword ptr [rbp + 0x18]
	mov	al, byte ptr [rax]
	mov	byte ptr [rbp - 0x1f0], al
	sub	rsp, 0x20
	lea	rax, [rbp - 0x160]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rbp - 0x1f0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp], 0
	mov	rdi, r15
	mov	rsi, r13
	mov	edx, dword ptr [rbp - 0x368]
	lea	rcx, [rbp - 0x280]
	mov	r8, qword ptr [rbp - 0x340]
	lea	r9, [rbp - 0xd0]
	call	copy_internal
	add	rsp, 0x20
	mov	r15b, al
	and	r15b, r14b
	mov	r14b, byte ptr [rbp - 0x160]
	mov	rax, qword ptr [rbp + 0x20]
	or	byte ptr [rax], r14b
	mov	rdi, r13
	call	free
	mov	rdi, qword ptr [rbp - 0x328]
	call	free
	test	r14b, r14b
	jne	.label_345
	and	bl, 1
	or	bl, byte ptr [rbp - 0x1f0]
	mov	rdi, r12
	call	strlen
	cmp	byte ptr [rax + r12 + 1], 0
	lea	r12, [rax + r12 + 1]
	jne	.label_350
	jmp	.label_345
.label_300:
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x358], r14
	mov	qword ptr [rbp - 0x318], r13
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rbx, r12
	mov	qword ptr [rbp - 0x320], rbx
	xor	r12d, r12d
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
	jmp	.label_413
.label_309:
	mov	dword ptr [rbp - 0x370], r15d
	mov	qword ptr [rbp - 0x320], r12
	mov	qword ptr [rbp - 0x318], r13
	mov	r12b, 1
	xor	r15d, r15d
	xor	r14d, r14d
	mov	rcx, qword ptr [rbp - 0x360]
	jmp	.label_211
.label_308:
	mov	qword ptr [rbp - 0x330], rax
.label_345:
	mov	rdi, qword ptr [rbp - 0x330]
	call	free
	and	bl, 1
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], bl
	test	r15b, r15b
	setne	r12b
.label_413:
	xor	r15d, r15d
	xor	r14d, r14d
	jmp	.label_379
.label_224:
	lea	rdi, [rbp - 0xd0]
	mov	edx, 0x90
	mov	rsi, r15
	call	memcpy
.label_229:
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0xc8]
	mov	r9, qword ptr [rbp - 0x358]
	mov	r8, r14
	jne	.label_383
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0xd0]
	jne	.label_386
	cmp	byte ptr [r9 + 0x17], 0
	je	.label_197
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	setne	dil
	jmp	.label_166
.label_197:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
.label_468:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x320]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	jmp	.label_397
.label_424:
	xor	edi, edi
	jmp	.label_166
.label_383:
	xor	edi, edi
	jmp	.label_166
.label_443:
	mov	dword ptr [rbp - 0x370], r14d
	mov	dword ptr [rbp - 0x334], r13d
	mov	qword ptr [rbp - 0x320], r12
	mov	r12b, 1
	jmp	.label_405
.label_368:
	mov	dword ptr [rbp - 0x36c], esi
	mov	dword ptr [rbp - 0x370], r15d
	mov	rsi, qword ptr [rbp - 0x250]
	mov	rdi, r12
	call	areadlink_with_size
	mov	r15, rax
	test	r15, r15
	je	.label_423
	mov	dword ptr [rbp - 0x334], r13d
	mov	qword ptr [rbp - 0x320], r12
	mov	rax, qword ptr [rbp - 0x358]
	movzx	ecx, byte ptr [rax + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x318]
	call	force_symlinkat
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_228
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	jne	.label_426
	mov	rax, qword ptr [rbp - 0x358]
	mov	al, byte ptr [rax + 0x2d]
	test	al, al
	je	.label_426
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0xa000
	jne	.label_426
	mov	rbx, qword ptr [rbp - 0x2e0]
	mov	rdi, r15
	call	strlen
	cmp	rbx, rax
	jne	.label_426
	mov	rdi, qword ptr [rbp - 0x318]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_426
	mov	rdi, rbx
	mov	rsi, r15
	call	strcmp
	mov	r12d, eax
	mov	rdi, rbx
	call	free
	test	r12d, r12d
	je	.label_228
.label_426:
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	jmp	.label_446
.label_232:
	mov	dword ptr [rbp - 0x36c], esi
	mov	qword ptr [rbp - 0x320], r12
	mov	r14d, r15d
	mov	dword ptr [rbp - 0x370], r15d
	not	r14d
	and	r14d, dword ptr [rbp - 0x334]
	mov	qword ptr [rbp - 0xd0], 0
	xor	r15d, r15d
	lea	rcx, [rbp - 0xd0]
	xor	edi, edi
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rsi, rbx
	mov	edx, r14d
	call	__xmknod
	mov	r12b, 1
	test	eax, eax
	je	.label_405
	and	r14d, 0xffffefff
	mov	rdi, rbx
	mov	esi, r14d
	call	mkfifo
	test	eax, eax
	je	.label_461
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42_0
.label_446:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	jmp	.label_430
.label_235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	jmp	.label_467
.label_386:
	xor	edi, edi
.label_166:
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
.label_202:
	mov	byte ptr [rbp - 0x340], r12b
	mov	dword ptr [rbp - 0x334], ecx
	mov	ebx, ecx
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	je	.label_135
	mov	al, byte ptr [r9 + 0x2d]
	test	al, al
	je	.label_135
	cmp	byte ptr [r9 + 0x1f], 0
	je	.label_179
	mov	dword ptr [rbp - 0x348], edi
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_141
	mov	qword ptr [rbp - 0x358], r9
	mov	rax, qword ptr [rbp - 0x310]
	cmp	rax, qword ptr [rbp - 0x280]
	sete	al
	jmp	.label_143
.label_179:
	mov	dword ptr [rbp - 0x348], edi
	mov	r12, r8
	mov	qword ptr [rbp - 0x358], r9
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x318]
	jmp	.label_147
.label_141:
	mov	qword ptr [rbp - 0x358], r9
	xor	eax, eax
.label_143:
	mov	rdi, qword ptr [rbp - 0x318]
	mov	r12, r8
	xor	al, 1
.label_147:
	mov	qword ptr [rbp - 0x318], rdi
	movzx	ecx, al
	lea	rsi, [rbp - 0x310]
	lea	rdx, [rbp - 0x280]
	call	utimecmp
	test	eax, eax
	mov	r9, qword ptr [rbp - 0x358]
	mov	r8, r12
	mov	edi, dword ptr [rbp - 0x348]
	js	.label_135
	mov	r14, r9
	test	r13, r13
	je	.label_167
	mov	byte ptr [r13], 1
.label_167:
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rsi, qword ptr [rbp - 0x278]
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rdi, rbx
	call	remember_copied
	mov	r13b, 1
	test	rax, rax
	mov	dl, byte ptr [rbp - 0x340]
	je	.label_176
	mov	r15, r14
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, dl
	mov	edx, 1
	mov	rdi, rax
	mov	r14, rax
	mov	rsi, rbx
	call	create_hard_link
	mov	r10, r15
	mov	rdx, r14
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x350], rcx
	test	al, al
	jne	.label_176
.label_164:
	cmp	byte ptr [r10 + 0x25], 0
	jne	.label_186
	test	rdx, rdx
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rax, qword ptr [rbp - 0x350]
	jne	.label_187
	mov	rsi, qword ptr [rbp - 0x280]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	r14, rax
	mov	r15, r10
	call	forget_created
	mov	r10, r15
	mov	rax, r14
.label_187:
	mov	r15, r10
	test	rax, rax
	je	.label_199
	mov	rdi, rax
	mov	rsi, rbx
	mov	r14, rax
	call	rename
	test	eax, eax
	je	.label_203
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	jmp	.label_205
.label_135:
	mov	r12, r13
	mov	qword ptr [rbp - 0x348], r14
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_210
	mov	eax, dword ptr [r9 + 8]
	cmp	eax, 2
	je	.label_215
	cmp	eax, 3
	je	.label_218
	cmp	eax, 4
	jne	.label_221
	cmp	byte ptr [r9 + 0x2f], 0
	je	.label_221
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0xa000
	je	.label_221
	mov	r15, r9
	mov	r13, r8
	mov	r14d, edi
	call	can_write_any_file
	mov	edi, r14d
	mov	r8, r13
	mov	r9, r15
	test	al, al
	jne	.label_221
	mov	r13, r8
	mov	esi, 2
	mov	r14d, edi
	mov	rdi, qword ptr [rbp - 0x318]
	mov	r15, r9
	call	euidaccess
	mov	edi, r14d
	mov	r8, r13
	mov	r9, r15
	test	eax, eax
	je	.label_221
.label_218:
	lea	rdx, [rbp - 0x310]
	mov	r14d, edi
	mov	rdi, r9
	mov	r13, r8
	mov	rsi, qword ptr [rbp - 0x318]
	mov	r15, r9
	call	overwrite_ok
	mov	edi, r14d
	mov	r8, r13
	mov	r9, r15
	test	al, al
	jne	.label_221
.label_215:
	mov	r13b, 1
	test	r12, r12
	je	.label_176
	mov	byte ptr [r12], 1
	jmp	.label_176
.label_199:
	xor	r13d, r13d
	jmp	.label_176
.label_210:
	cmp	ebx, 0x4000
	je	.label_221
	mov	eax, dword ptr [r9 + 8]
	mov	r13b, 1
	cmp	eax, 2
	je	.label_176
	cmp	eax, 3
	jne	.label_221
	mov	r12, r8
	lea	rdx, [rbp - 0x310]
	mov	r14d, edi
	mov	rdi, r9
	mov	r15, r9
	mov	rsi, qword ptr [rbp - 0x318]
	call	overwrite_ok
	test	r14b, r14b
	jne	.label_176
	test	al, al
	mov	r9, r15
	mov	r8, r12
	jne	.label_257
	jmp	.label_176
.label_221:
	mov	r13b, 1
	test	dil, dil
	jne	.label_176
.label_257:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	mov	dl, byte ptr [rbp + 0x10]
	je	.label_255
	cmp	ebx, 0x4000
	jne	.label_266
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_270
	cmp	dword ptr [r9], 0
	je	.label_270
.label_266:
	test	dl, dl
	je	.label_255
	cmp	dword ptr [r9], 3
	je	.label_255
	mov	rdi, qword ptr [r9 + 0x40]
	mov	r12b, dl
	lea	rdx, [rbp - 0x310]
	mov	r15, r8
	mov	rsi, qword ptr [rbp - 0x318]
	mov	r14, r9
	call	seen_file
	mov	dl, r12b
	mov	r8, r15
	mov	r9, r14
	test	al, al
	je	.label_255
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_1
	jmp	.label_282
.label_203:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_289
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r15
	mov	rdx, r12
	call	__printf_chk
	jmp	.label_176
.label_255:
	cmp	ebx, 0x4000
	je	.label_310
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	jne	.label_310
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_314
	cmp	dword ptr [r9], 0
	je	.label_314
.label_310:
	mov	r12b, byte ptr [r9 + 0x18]
	test	r12b, r12b
	je	.label_161
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0x268]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_161
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	je	.label_161
	cmp	dword ptr [r9], 0
	je	.label_326
.label_161:
	mov	r13, r8
	mov	r14, qword ptr [r9]
	test	r14d, r14d
	je	.label_200
	mov	rdi, qword ptr [rbp - 0x320]
	mov	r15, r9
	mov	bl, dl
	call	last_component
	mov	dl, bl
	mov	r9, r15
	mov	r15, rax
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2e
	jne	.label_330
	movzx	ecx, byte ptr [r15 + 1]
	mov	eax, 2
	cmp	ecx, 0x2e
	je	.label_234
	mov	eax, 1
.label_234:
	mov	al, byte ptr [r15 + rax]
	test	al, al
	je	.label_200
	movzx	eax, al
	cmp	eax, 0x2f
	je	.label_200
.label_330:
	test	r12b, r12b
	jne	.label_340
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	cmp	eax, 0x4000
	jne	.label_340
.label_200:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x2f8]
	mov	r15d, 0x11
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x350], rcx
	cmp	eax, 0x4000
	jne	.label_342
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r12b, byte ptr [rbp - 0x340]
	mov	r8, r13
	jmp	.label_180
.label_289:
	xor	r13d, r13d
	jmp	.label_176
.label_340:
	cmp	r14d, 3
	je	.label_357
	mov	rdi, r15
	mov	r12, r9
	call	strlen
	mov	qword ptr [rbp - 0x348], rax
	mov	rdi, qword ptr [rbp - 0x318]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	qword ptr [rbp - 0x350], rdi
	call	strlen
	mov	r9, r12
	mov	r12, rax
	lea	rax, [r12 + r14]
	cmp	qword ptr [rbp - 0x348], rax
	jne	.label_357
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbx, r9
	call	memcmp
	mov	r9, rbx
	test	eax, eax
	jne	.label_357
	add	r15, r14
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbx, r9
	call	strcmp
	mov	r9, rbx
	test	eax, eax
	jne	.label_357
	mov	qword ptr [rbp - 0x358], r9
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	lea	rdi, [r12 + r14 + 1]
	call	xmalloc
	mov	r15, rax
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	__mempcpy_chk
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, rax
	call	strcpy
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, r15
	call	__xstat
	mov	r14d, eax
	mov	rdi, r15
	call	free
	test	r14d, r14d
	jne	.label_256
	mov	rax, qword ptr [rbp - 0x278]
	cmp	rax, qword ptr [rbp - 0xc8]
	jne	.label_256
	mov	rax, qword ptr [rbp - 0x280]
	cmp	rax, qword ptr [rbp - 0xd0]
	mov	r9, qword ptr [rbp - 0x358]
	jne	.label_357
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_398
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21_0
	jmp	.label_400
.label_342:
	test	r12b, r12b
	mov	r8, r13
	jne	.label_403
	cmp	byte ptr [r9 + 0x15], 0
	jne	.label_407
	cmp	byte ptr [r9 + 0x22], 0
	je	.label_408
	cmp	qword ptr [rbp - 0x300], 1
	ja	.label_407
.label_408:
	movabs	rax, 0xffffffff00000000
	and	r14, rax
	movabs	rax, 0x200000000
	cmp	r14, rax
	jne	.label_403
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x268]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x350], rcx
	cmp	eax, 0x8000
	je	.label_412
.label_407:
	mov	qword ptr [rbp - 0x348], r8
	mov	r12, r9
	mov	rbx, qword ptr [rbp - 0x318]
	mov	rdi, rbx
	call	unlink
	test	eax, eax
	je	.label_420
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	jne	.label_425
.label_420:
	mov	r14b, 1
	mov	r9, r12
	cmp	byte ptr [r9 + 0x2e], 0
	je	.label_428
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	mov	r12, r9
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r13
	mov	rdx, rcx
	call	__printf_chk
	mov	r9, r12
	jmp	.label_442
.label_270:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_1
.label_282:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
.label_137:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x320]
.label_397:
	call	quotearg_n_style
.label_134:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	error
	jmp	.label_176
.label_403:
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
.label_412:
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r14, qword ptr [rbp - 0x348]
	mov	r12b, byte ptr [rbp - 0x340]
	jmp	.label_180
.label_314:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	jmp	.label_464
.label_326:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x320]
	call	quotearg_n_style_colon
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style_colon
	jmp	.label_134
.label_425:
	mov	r12, rbx
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
	jmp	.label_184
.label_428:
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
.label_442:
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r12b, byte ptr [rbp - 0x340]
	mov	r8, qword ptr [rbp - 0x348]
	jmp	.label_145
.label_256:
	mov	r9, qword ptr [rbp - 0x358]
.label_357:
	mov	qword ptr [rbp - 0x358], r9
	mov	edx, dword ptr [r9]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x318]
	call	backup_file_rename
	mov	r14, rax
	test	r14, r14
	mov	r12b, byte ptr [rbp - 0x340]
	je	.label_156
	mov	rdi, r14
	call	strlen
	mov	rdi, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	qword ptr [rbp - 0x350], rdi
	mov	rsp, rdi
	mov	rsi, r14
	call	memcpy
	mov	rdi, r14
	call	free
	jmp	.label_170
.label_156:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	jne	.label_354
	xor	eax, eax
	mov	qword ptr [rbp - 0x350], rax
.label_170:
	mov	r15d, 0x11
	mov	r14b, 1
	mov	ecx, dword ptr [rbp - 0x334]
	mov	r9, qword ptr [rbp - 0x358]
	mov	r8, r13
.label_145:
	mov	dl, byte ptr [rbp + 0x10]
	jmp	.label_180
.label_354:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
.label_184:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_439
.label_423:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
.label_430:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_196
.label_228:
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x25], 0
	mov	rbx, rax
	jne	.label_174
	cmp	byte ptr [rbx + 0x1d], 0
	je	.label_204
	mov	esi, dword ptr [rbp - 0x264]
	mov	edx, dword ptr [rbp - 0x260]
	mov	rdi, qword ptr [rbp - 0x318]
	call	lchown
	test	eax, eax
	je	.label_204
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 0x16
	je	.label_216
	cmp	r14d, 1
	jne	.label_217
.label_216:
	cmp	byte ptr [rbx + 0x1a], 0
	je	.label_204
.label_217:
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x318]
	call	error
	cmp	byte ptr [rbx + 0x24], 0
	je	.label_139
	mov	r10, rbx
	mov	rdx, qword ptr [rbp - 0x360]
	jmp	.label_164
.label_461:
	xor	r15d, r15d
.label_405:
	xor	r14d, r14d
.label_192:
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
	mov	dword ptr [rbp - 0x374], eax
.label_379:
	mov	rcx, qword ptr [rbp - 0x360]
	mov	r10, qword ptr [rbp - 0x358]
.label_211:
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	jne	.label_236
	cmp	dword ptr [rbp - 0x36c], 0x4000
	je	.label_236
	mov	al, byte ptr [r10 + 0x14]
	test	al, al
	jne	.label_236
	cmp	byte ptr [r10 + 0x21], 0
	jne	.label_240
	cmp	byte ptr [r10 + 0x25], 0
	je	.label_236
.label_240:
	mov	dword ptr [rbp - 0x328], r15d
	cmp	byte ptr [r10 + 0x23], 0
	je	.label_244
	cmp	byte ptr [r10 + 0x26], 0
	je	.label_246
.label_244:
	mov	r13, rcx
	mov	r15, r12
	mov	r12, r10
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r10, r12
	mov	r12, r15
	mov	rdx, r13
	cmp	byte ptr [r10 + 0x26], 0
	mov	r15d, dword ptr [rbp - 0x328]
	jne	.label_164
	jmp	.label_236
.label_246:
	mov	rbx, r10
	call	__errno_location
	mov	r10, rbx
	mov	dword ptr [rax], 0x5f
	mov	r15d, dword ptr [rbp - 0x328]
.label_236:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_272
	cmp	qword ptr [r10 + 0x40], 0
	je	.label_272
	mov	rbx, r10
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	call	__lxstat
	test	eax, eax
	jne	.label_277
	mov	rdi, qword ptr [rbx + 0x40]
	lea	rdx, [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0x318]
	call	record_file
.label_277:
	mov	r10, rbx
.label_272:
	cmp	dword ptr [rbp - 0x36c], 0x4000
	je	.label_283
	mov	al, byte ptr [r10 + 0x17]
	test	al, al
	jne	.label_173
.label_283:
	test	r14b, r14b
	jne	.label_173
	cmp	byte ptr [r10 + 0x1f], 0
	mov	rbx, qword ptr [rbp - 0x318]
	mov	r13, qword ptr [rbp - 0x348]
	je	.label_295
	mov	qword ptr [rbp - 0x328], r12
	mov	r12, r10
	movups	xmm0, xmmword ptr [rbp - 0x238]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x228]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	lea	rsi, [rbp - 0xd0]
	mov	rdi, rbx
	test	r15b, r15b
	je	.label_302
	call	lutimens
	test	eax, eax
	je	.label_311
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_313
	jmp	.label_311
.label_302:
	call	utimens
	test	eax, eax
	je	.label_311
	call	__errno_location
.label_313:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x330], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x330]
	mov	rdx, r14
	call	error
	cmp	byte ptr [r12 + 0x24], 0
	je	.label_311
	xor	r13d, r13d
	jmp	.label_176
.label_311:
	mov	r10, r12
	mov	r12, qword ptr [rbp - 0x328]
.label_295:
	test	r15b, r15b
	jne	.label_173
	cmp	byte ptr [r10 + 0x1d], 0
	je	.label_331
	test	r13b, r13b
	jne	.label_333
	mov	eax, dword ptr [rbp - 0x264]
	cmp	eax, dword ptr [rbp - 0x2f4]
	jne	.label_333
	mov	eax, dword ptr [rbp - 0x260]
	cmp	eax, dword ptr [rbp - 0x2f0]
	je	.label_331
.label_333:
	test	r13b, r13b
	setne	al
	movzx	r8d, al
	lea	rcx, [rbp - 0x280]
	lea	r9, [rbp - 0x310]
	mov	edx, 0xffffffff
	mov	rdi, r10
	mov	r14, r10
	mov	rsi, rbx
	call	set_owner
	cmp	eax, -1
	je	.label_427
	test	eax, eax
	jne	.label_319
	and	dword ptr [rbp - 0x334], 0xfffff1ff
.label_319:
	mov	r10, r14
.label_331:
	cmp	byte ptr [r10 + 0x1e], 0
	jne	.label_349
	cmp	byte ptr [r10 + 0x18], 0
	je	.label_351
.label_349:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rdx, rbx
	mov	r8d, dword ptr [rbp - 0x334]
	mov	rbx, r10
	call	copy_acl
	mov	rcx, rbx
	test	eax, eax
	je	.label_173
	cmp	byte ptr [rcx + 0x24], 0
	je	.label_173
	xor	r13d, r13d
	jmp	.label_176
.label_427:
	xor	r13d, r13d
	jmp	.label_176
.label_351:
	cmp	byte ptr [r10 + 0x2b], 0
	je	.label_288
	mov	edx, dword ptr [r10 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	call	set_acl
	test	eax, eax
	je	.label_173
	xor	r13d, r13d
	jmp	.label_176
.label_288:
	mov	r15, rbx
	test	r13b, r13b
	je	.label_369
	mov	al, byte ptr [r10 + 0x20]
	test	al, al
	je	.label_369
	mov	eax, dword ptr [rbp - 0x334]
	and	eax, 0x7000
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	jne	.label_372
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_372:
	not	eax
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, r15
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	je	.label_173
	xor	r13d, r13d
	jmp	.label_176
.label_369:
	mov	rbx, r10
	cmp	dword ptr [rbp - 0x370], 0
	je	.label_385
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	jne	.label_388
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_388:
	not	eax
	and	dword ptr [rbp - 0x370], eax
	mov	rax, qword ptr [rbp - 0x380]
	test	al, al
	jne	.label_336
	cmp	dword ptr [rbp - 0x370], 0
	je	.label_336
	test	r13b, r13b
	je	.label_396
	lea	rdx, [rbp - 0x310]
	mov	edi, 1
	mov	rsi, r15
	call	__lxstat
	test	eax, eax
	je	.label_396
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	jmp	.label_402
.label_204:
	mov	r15b, 1
	xor	r14d, r14d
	mov	r12b, 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x380], rax
.label_198:
	mov	dword ptr [rbp - 0x374], eax
	mov	r10, rbx
	mov	rcx, qword ptr [rbp - 0x360]
	jmp	.label_211
.label_148:
	test	ebx, ebx
	js	.label_209
	mov	al, byte ptr [rcx + 0x25]
	test	al, al
	je	.label_209
.label_152:
	mov	r13d, ebx
	cmp	byte ptr [rcx + 0x23], 0
	mov	rbx, rcx
	je	.label_418
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_140
.label_418:
	mov	dword ptr [r15], 0x5f
	xor	eax, eax
	mov	qword ptr [rbp - 0x368], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbp - 0x340], rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x348], rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x340]
	call	error
	mov	rcx, rbx
	cmp	byte ptr [rcx + 0x26], 0
	mov	ebx, r13d
	je	.label_209
	xor	r15d, r15d
	jmp	.label_214
.label_268:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_341
.label_385:
	mov	dword ptr [rbp - 0x370], 0
	jmp	.label_336
.label_140:
	mov	dword ptr [r15], 0x5f
	mov	rcx, rbx
	mov	ebx, r13d
.label_209:
	xor	eax, eax
	mov	qword ptr [rbp - 0x348], rax
	test	ebx, ebx
	js	.label_154
	mov	qword ptr [rbp - 0x358], rcx
	mov	dword ptr [rbp - 0x380], 0
	jmp	.label_404
.label_154:
	xor	eax, eax
	mov	qword ptr [rbp - 0x348], rax
	cmp	byte ptr [rcx + 0x16], 0
	mov	qword ptr [rbp - 0x358], rcx
	mov	dword ptr [rbp - 0x380], 0
	je	.label_404
	mov	rdi, qword ptr [rbp - 0x318]
	call	unlink
	test	eax, eax
	je	.label_460
	mov	r14d, dword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rbp - 0x348], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_155
.label_460:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x2e], 0
	je	.label_469
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	__printf_chk
.label_469:
	mov	r13b, 1
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x21], 0
	mov	ecx, dword ptr [rbp - 0x370]
	mov	edx, dword ptr [rbp - 0x374]
	je	.label_133
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rsi, qword ptr [rbp - 0x318]
	mov	r8, qword ptr [rbp - 0x358]
	mov	ebx, edx
	call	set_process_security_ctx
	mov	edx, ebx
	mov	r13b, 1
	xor	r15d, r15d
	test	al, al
	mov	ecx, dword ptr [rbp - 0x370]
	mov	al, 1
	mov	qword ptr [rbp - 0x348], rax
	mov	ebx, 0
	je	.label_155
	jmp	.label_133
.label_396:
	mov	eax, dword ptr [rbp - 0x2f8]
	mov	dword ptr [rbp - 0x374], eax
	not	eax
	test	dword ptr [rbp - 0x370], eax
	je	.label_336
	mov	al, 1
	mov	qword ptr [rbp - 0x380], rax
.label_336:
	mov	rax, qword ptr [rbp - 0x380]
	test	al, 1
	je	.label_173
	mov	esi, dword ptr [rbp - 0x374]
	or	esi, dword ptr [rbp - 0x370]
	mov	rdi, r15
	call	chmod
	test	eax, eax
	je	.label_173
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x320], eax
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x320]
	mov	rdx, r14
	call	error
	cmp	byte ptr [rbx + 0x24], 0
	jne	.label_176
.label_173:
	test	r12b, r12b
	setne	r13b
	jmp	.label_176
.label_398:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22_0
.label_400:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	r13d, r13d
	jmp	.label_137
.label_139:
	mov	r15b, 1
	xor	r14d, r14d
	mov	r12b, 1
	jmp	.label_198
.label_186:
	call	restore_default_fscreatecon_or_die
.label_174:
	call	restore_default_fscreatecon_or_die
.label_133:
	mov	dword ptr [rbp - 0x380], ecx
	mov	dword ptr [rbp - 0x374], edx
	mov	r15d, ecx
	not	r15d
	and	r15d, edx
	mov	esi, 0xc1
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x318]
	mov	edx, r15d
	call	open_safer
	mov	ebx, eax
	call	__errno_location
	mov	qword ptr [rbp - 0x340], rax
	mov	r14d, dword ptr [rax]
	test	ebx, ebx
	jns	.label_213
	cmp	r14d, 0x11
	jne	.label_213
	mov	r14d, 0x11
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x18], 0
	jne	.label_220
	lea	rdx, [rbp - 0x1f0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x318]
	call	__lxstat
	mov	r14d, 0x11
	test	eax, eax
	jne	.label_213
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x1d8]
	cmp	eax, 0xa000
	jne	.label_213
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x30], 0
	je	.label_338
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x318]
	mov	edx, r15d
	call	open_safer
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x340]
	mov	r14d, dword ptr [rax]
.label_213:
	cmp	r14d, 0x15
	jne	.label_220
	test	ebx, ebx
	jns	.label_220
	mov	r14d, 0x15
	mov	rax, qword ptr [rbp - 0x318]
	cmp	byte ptr [rax], 0
	je	.label_220
	mov	r14, qword ptr [rbp - 0x318]
	mov	rdi, r14
	call	strlen
	movzx	eax, byte ptr [rax + r14 - 1]
	mov	r14d, 0x14
	cmp	eax, 0x2f
	je	.label_220
	mov	r14d, 0x15
.label_220:
	mov	al, r13b
	mov	qword ptr [rbp - 0x348], rax
.label_404:
	test	ebx, ebx
	js	.label_247
	lea	rdx, [rbp - 0xd0]
	mov	edi, 1
	mov	esi, ebx
	call	__fxstat
	test	eax, eax
	je	.label_252
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r13
	call	error
	xor	eax, eax
	mov	qword ptr [rbp - 0x368], rax
	jmp	.label_214
.label_247:
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	mov	edx, dword ptr [rbp - 0x374]
	mov	ecx, dword ptr [rbp - 0x380]
	jne	.label_227
	cmp	r14d, 2
	jne	.label_227
	mov	r13b, 1
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_133
.label_227:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	jmp	.label_278
.label_252:
	mov	dword ptr [rbp - 0x340], ebx
	xor	eax, eax
	mov	qword ptr [rbp - 0x368], rax
	cmp	byte ptr [rbp - 0x328], 0
	je	.label_286
	mov	rax, qword ptr [rbp - 0x358]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_292
	xor	eax, eax
	mov	qword ptr [rbp - 0x368], rax
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edi, dword ptr [rbp - 0x340]
	mov	edx, r12d
	call	ioctl
	test	eax, eax
	je	.label_286
	mov	rax, qword ptr [rbp - 0x358]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_292
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbp - 0x328], rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x320]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x328]
	mov	rcx, r14
	mov	r8, rbx
	call	error
	xor	eax, eax
	mov	qword ptr [rbp - 0x368], rax
	jmp	.label_171
.label_292:
	call	getpagesize
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x98]
	movabs	rsi, 0x2000000000000001
	cmp	rax, rsi
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	mov	qword ptr [rbp - 0x3c0], rdx
	cmp	rax, rsi
	mov	ecx, 0x20000
	cmovae	rdx, rcx
	test	rax, rax
	cmovle	rdx, rcx
	cmp	rax, 0x20000
	cmovl	rdx, rcx
	mov	qword ptr [rbp - 0x388], rdx
	xor	r13d, r13d
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, r12d
	call	fdadvise
	mov	eax, 0xf000
	mov	r14d, dword ptr [rbp - 0x148]
	and	r14d, eax
	cmp	r14d, 0x8000
	jne	.label_344
	mov	rcx, qword ptr [rbp - 0x130]
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x37
	add	rdx, rcx
	sar	rdx, 9
	cmp	qword ptr [rbp - 0x120], rdx
	setl	r13b
.label_344:
	movsxd	r15, ebx
	and	eax, dword ptr [rbp - 0xb8]
	cmp	eax, 0x8000
	jne	.label_356
	mov	rax, qword ptr [rbp - 0x358]
	mov	ecx, dword ptr [rax + 0xc]
	cmp	ecx, 2
	sete	al
	cmp	ecx, 3
	mov	cl, 1
	mov	dword ptr [rbp - 0x3b4], ecx
	je	.label_290
	and	al, r13b
	jne	.label_290
.label_356:
	mov	rax, qword ptr [rbp - 0x128]
	movabs	rcx, 0x2000000000000001
	mov	rdx, rcx
	cmp	rax, rdx
	mov	ecx, 0x200
	mov	edi, 0x200
	cmovb	rdi, rax
	test	rax, rax
	cmovle	rdi, rcx
	cmp	rax, rdx
	mov	ecx, 0x20000
	cmovae	rdi, rcx
	test	rax, rax
	cmovle	rdi, rcx
	movabs	rbx, 0x7fffffffffffffff
	sub	rbx, r15
	cmp	rax, 0x20000
	cmovl	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x388]
	mov	rdx, rbx
	call	buffer_lcm
	mov	rcx, rax
	cmp	r14d, 0x8000
	jne	.label_177
	mov	rax, qword ptr [rbp - 0x130]
	mov	rdx, qword ptr [rbp - 0x388]
	cmp	rax, rdx
	lea	rax, [rax + 1]
	cmovb	rdx, rax
	mov	qword ptr [rbp - 0x388], rdx
.label_177:
	mov	rax, qword ptr [rbp - 0x388]
	lea	rsi, [rcx + rax - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	mov	rax, rsi
	sub	rax, rdx
	cmp	rbx, rax
	cmovb	rax, rcx
	cmp	rsi, rdx
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x388], rax
	mov	dword ptr [rbp - 0x3b4], 0
.label_290:
	mov	rax, qword ptr [rbp - 0x388]
	lea	rdi, [rax + r15]
	call	xmalloc
	mov	qword ptr [rbp - 0x368], rax
	lea	rcx, [rax + r15 - 1]
	xor	edx, edx
	mov	rax, rcx
	div	r15
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x3a0], rcx
	test	r13b, r13b
	je	.label_394
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x390], rax
	mov	eax, dword ptr [rbp - 0x3b4]
	test	al, al
	je	.label_374
	mov	rax, qword ptr [rbp - 0x358]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x3a4], eax
	jmp	.label_287
.label_374:
	mov	dword ptr [rbp - 0x3a4], 1
.label_287:
	lea	rsi, [rbp - 0x1f0]
	mov	edi, r12d
	call	extent_scan_init
	xor	eax, eax
	mov	qword ptr [rbp - 0x398], rax
	cmp	dword ptr [rbp - 0x3a4], 3
	mov	eax, 0
	cmove	rax, qword ptr [rbp - 0x3c0]
	mov	qword ptr [rbp - 0x3b0], rax
	mov	al, 1
	mov	dword ptr [rbp - 0x3a8], eax
	xor	r15d, r15d
	xor	ebx, ebx
.label_259:
	lea	rdi, [rbp - 0x1f0]
	call	extent_scan_read
	test	al, al
	je	.label_212
	cmp	qword ptr [rbp - 0x1d8], 0
	mov	r14d, 0
	je	.label_417
.label_158:
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rcx, [r14 + r14*2]
	mov	r13, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rbp - 0x328], rax
	lea	rax, [rax + r13]
	cmp	rax, qword ptr [rbp - 0x390]
	jle	.label_422
	mov	rax, qword ptr [rbp - 0x390]
	cmp	r13, rax
	cmovg	r13, rax
	sub	rax, r13
	mov	qword ptr [rbp - 0x328], rax
.label_422:
	mov	r15, r13
	sub	r15, rbx
	sub	r15, qword ptr [rbp - 0x398]
	jne	.label_438
	mov	dword ptr [rbp - 0x3a8], 0
	jmp	.label_440
.label_438:
	xor	edx, edx
	mov	edi, r12d
	mov	rsi, r13
	call	lseek
	test	rax, rax
	js	.label_201
	cmp	dword ptr [rbp - 0x3a4], 1
	jne	.label_245
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_328
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	edi, 0x20000
	mov	eax, 0x400
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	jne	.label_328
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_328:
	test	r15, r15
	je	.label_361
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	ebx, 0x20000
	mov	eax, 0x400
	cmovne	rbx, rax
	cmp	rbx, r15
	cmovae	rbx, r15
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	mov	edi, dword ptr [rbp - 0x340]
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	mov	ecx, 0
	cmove	rcx, rbx
	sub	r15, rcx
	cmp	rax, rbx
	je	.label_328
	jmp	.label_463
.label_245:
	cmp	dword ptr [rbp - 0x3a4], 3
	sete	al
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x340]
	mov	rsi, qword ptr [rbp - 0x318]
	mov	rcx, r15
	call	create_hole
	mov	cl, 1
	mov	dword ptr [rbp - 0x3a8], ecx
	test	al, al
	jne	.label_440
	jmp	.label_151
.label_361:
	mov	dword ptr [rbp - 0x3a8], 0
.label_440:
	sub	rsp, 0x30
	lea	rax, [rbp - 0x31]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rbp - 0x328]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp - 0x318]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp - 0x320]
	mov	qword ptr [rsp], rax
	mov	r9d, 1
	mov	edi, r12d
	mov	esi, dword ptr [rbp - 0x340]
	mov	rdx, qword ptr [rbp - 0x3a0]
	mov	rcx, qword ptr [rbp - 0x388]
	mov	r8, qword ptr [rbp - 0x3b0]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_151
	mov	rcx, qword ptr [rbp - 0x30]
	lea	r15, [rcx + r13]
	mov	al, byte ptr [rbp - 0x31]
	cmp	r15, qword ptr [rbp - 0x390]
	je	.label_260
	inc	r14d
	mov	r14d, r14d
	cmp	r14, qword ptr [rbp - 0x1d8]
	mov	rbx, r13
	mov	rdx, qword ptr [rbp - 0x328]
	mov	qword ptr [rbp - 0x398], rdx
	jb	.label_158
	test	rcx, rcx
	je	.label_165
	mov	dword ptr [rbp - 0x3a8], eax
.label_165:
	mov	rbx, r13
	jmp	.label_206
.label_260:
	test	rcx, rcx
	je	.label_168
	mov	dword ptr [rbp - 0x3a8], eax
.label_168:
	mov	byte ptr [rbp - 0x1cf], 1
	mov	rbx, r13
	mov	r15, qword ptr [rbp - 0x390]
.label_206:
	mov	rax, qword ptr [rbp - 0x328]
	mov	qword ptr [rbp - 0x398], rax
.label_417:
	mov	rdi, qword ptr [rbp - 0x1c8]
	call	free
	mov	qword ptr [rbp - 0x1c8], 0
	mov	qword ptr [rbp - 0x1d8], 0
	cmp	byte ptr [rbp - 0x1cf], 0
	je	.label_259
	jmp	.label_183
.label_463:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x318]
	call	quotearg_n_style_colon
.label_320:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_151:
	mov	rdi, qword ptr [rbp - 0x1c8]
	call	free
	mov	qword ptr [rbp - 0x1c8], 0
	mov	qword ptr [rbp - 0x1d8], 0
	xor	r15d, r15d
	jmp	.label_171
.label_338:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	al, r13b
	mov	qword ptr [rbp - 0x348], rax
	xor	ebx, ebx
	jmp	.label_155
.label_201:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x320]
	call	quotearg_style
	jmp	.label_320
.label_212:
	cmp	byte ptr [rbp - 0x1cf], 0
	je	.label_226
.label_183:
	mov	r14, qword ptr [rbp - 0x390]
	sub	r14, r15
	jg	.label_241
	mov	eax, dword ptr [rbp - 0x3a8]
	and	al, 1
	je	.label_231
.label_241:
	cmp	dword ptr [rbp - 0x3a4], 1
	jne	.label_233
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_238
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	jne	.label_238
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_238:
	test	r14, r14
	je	.label_231
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	eax, 0x400
	mov	ebx, 0x20000
	cmovne	rbx, rax
	cmp	rbx, r14
	cmovae	rbx, r14
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	mov	edi, dword ptr [rbp - 0x340]
	mov	rdx, rbx
	call	full_write
	xor	ecx, ecx
	cmp	rax, rbx
	cmove	rcx, rbx
	sub	r14, rcx
	cmp	rax, rbx
	je	.label_238
	jmp	.label_175
.label_226:
	cmp	byte ptr [rbp - 0x1d0], 0
	je	.label_258
.label_394:
	xor	r8d, r8d
	mov	eax, dword ptr [rbp - 0x3b4]
	test	al, al
	cmovne	r8, qword ptr [rbp - 0x3c0]
	mov	rax, qword ptr [rbp - 0x358]
	cmp	dword ptr [rax + 0xc], 3
	sete	al
	sub	rsp, 0x30
	lea	rcx, [rbp - 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rbp - 0x1f0]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x318]
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rbp - 0x320]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 0x10], -1
	movzx	r9d, al
	mov	edi, r12d
	mov	esi, dword ptr [rbp - 0x340]
	mov	rdx, qword ptr [rbp - 0x3a0]
	mov	rcx, qword ptr [rbp - 0x388]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_144
	cmp	byte ptr [rbp - 0x30], 0
	je	.label_286
	mov	rsi, qword ptr [rbp - 0x1f0]
	mov	edi, dword ptr [rbp - 0x340]
	call	ftruncate
	test	eax, eax
	jns	.label_286
	jmp	.label_175
.label_233:
	mov	edi, dword ptr [rbp - 0x340]
	mov	rsi, qword ptr [rbp - 0x390]
	call	ftruncate
	test	eax, eax
	je	.label_231
.label_175:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
.label_325:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
.label_136:
	call	error
	jmp	.label_144
.label_231:
	cmp	dword ptr [rbp - 0x3a4], 3
	jne	.label_286
	sub	qword ptr [rbp - 0x390], r15
	jle	.label_286
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x340]
	mov	rdx, r15
	mov	rcx, qword ptr [rbp - 0x390]
	call	fallocate
	test	eax, eax
	jns	.label_286
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x26
	je	.label_286
	cmp	ebx, 0x5f
	jne	.label_323
.label_286:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_182
	movups	xmm0, xmmword ptr [rbp - 0x238]
	movaps	xmmword ptr [rbp - 0x1f0], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x228]
	movaps	xmmword ptr [rbp - 0x1e0], xmm0
	lea	rdx, [rbp - 0x1f0]
	mov	edi, dword ptr [rbp - 0x340]
	mov	rsi, qword ptr [rbp - 0x318]
	call	fdutimens
	test	eax, eax
	je	.label_182
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x24], 0
	jne	.label_144
.label_182:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x1d], 0
	je	.label_352
	mov	eax, dword ptr [rbp - 0x264]
	cmp	eax, dword ptr [rbp - 0xb4]
	jne	.label_353
	mov	eax, dword ptr [rbp - 0x260]
	cmp	eax, dword ptr [rbp - 0xb0]
	je	.label_352
.label_353:
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	setne	al
	movzx	r8d, al
	lea	rcx, [rbp - 0x280]
	lea	r9, [rbp - 0xd0]
	mov	rdi, qword ptr [rbp - 0x358]
	mov	rsi, qword ptr [rbp - 0x318]
	mov	edx, dword ptr [rbp - 0x340]
	call	set_owner
	cmp	eax, -1
	je	.label_144
	test	eax, eax
	jne	.label_352
	and	dword ptr [rbp - 0x330], 0xfffff1ff
.label_352:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x27], 0
	je	.label_371
	cmp	byte ptr [rbp - 0xb8], 0
	js	.label_371
	call	geteuid
	test	eax, eax
	je	.label_371
	cmp	dword ptr [rbp - 0x340], 0
	js	.label_376
	mov	esi, 0x180
	mov	edi, dword ptr [rbp - 0x340]
	call	fchmod
	jmp	.label_162
.label_144:
	xor	r15d, r15d
	jmp	.label_171
.label_376:
	mov	esi, 0x180
	mov	rdi, qword ptr [rbp - 0x318]
	call	chmod
.label_162:
	test	eax, eax
	jne	.label_371
	mov	esi, dword ptr [rbp - 0x380]
	not	esi
	and	esi, dword ptr [rbp - 0x374]
	cmp	dword ptr [rbp - 0x340], 0
	js	.label_194
	mov	edi, dword ptr [rbp - 0x340]
	call	fchmod
	jmp	.label_371
.label_194:
	mov	rdi, qword ptr [rbp - 0x318]
	call	chmod
.label_371:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_387
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_223
.label_387:
	mov	rdi, qword ptr [rbp - 0x320]
	mov	esi, r12d
	mov	rdx, qword ptr [rbp - 0x318]
	mov	ecx, dword ptr [rbp - 0x340]
	mov	r8d, dword ptr [rbp - 0x330]
	call	copy_acl
	mov	r15b, 1
	test	eax, eax
	jne	.label_395
	jmp	.label_171
.label_223:
	mov	rax, qword ptr [rbp - 0x358]
	cmp	byte ptr [rax + 0x2b], 0
	je	.label_159
	mov	rax, qword ptr [rbp - 0x358]
	mov	edx, dword ptr [rax + 0x10]
	jmp	.label_265
.label_159:
	mov	rax, qword ptr [rbp - 0x348]
	test	al, al
	je	.label_399
	mov	rax, qword ptr [rbp - 0x358]
	mov	al, byte ptr [rax + 0x20]
	test	al, al
	je	.label_399
	mov	edx,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	edx, -1
	jne	.label_377
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	edx,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_377:
	not	edx
	and	edx, 0x1b6
.label_265:
	mov	rdi, qword ptr [rbp - 0x318]
	mov	ebx, dword ptr [rbp - 0x340]
	mov	esi, ebx
	call	set_acl
	test	eax, eax
	sete	r15b
	jmp	.label_214
.label_399:
	mov	r15b, 1
	cmp	dword ptr [rbp - 0x380], 0
	je	.label_171
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	jne	.label_416
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_416:
	not	eax
	test	dword ptr [rbp - 0x380], eax
	je	.label_171
	cmp	dword ptr [rbp - 0x340], 0
	js	.label_429
	mov	edi, dword ptr [rbp - 0x340]
	mov	esi, dword ptr [rbp - 0x374]
	call	fchmod
	jmp	.label_306
.label_258:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x320]
	call	quotearg_n_style_colon
	jmp	.label_325
.label_429:
	mov	rdi, qword ptr [rbp - 0x318]
	mov	esi, dword ptr [rbp - 0x374]
	call	chmod
.label_306:
	test	eax, eax
	je	.label_171
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_395:
	mov	rax, qword ptr [rbp - 0x358]
	mov	r15b, byte ptr [rax + 0x24]
	xor	r15b, 1
.label_171:
	mov	ebx, dword ptr [rbp - 0x340]
.label_214:
	mov	edi, ebx
	call	close
	test	eax, eax
	jns	.label_457
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_457:
	mov	rbx, qword ptr [rbp - 0x368]
	jmp	.label_155
.label_323:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x318]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	jmp	.label_136
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408020

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
	#Procedure 0x408060

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_470
	cmp	eax, 1
	jne	.label_471
.label_470:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	pop	rbx
	ret	
.label_471:
	xor	eax, eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408090

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	jne	.label_472
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	add	rsp, 8
.label_472:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080c0

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
	jle	.label_474
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
	jmp	.label_473
.label_474:
	test	ebp, ebp
	mov	r14b, 1
	jns	.label_473
	xor	r12b, 1
	jne	.label_473
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
.label_473:
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
	.align	32
	#Procedure 0x4081b0

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_478
	call	can_write_any_file
	test	al, al
	jne	.label_478
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	je	.label_478
	mov	edi, dword ptr [rbx + 0x18]
	lea	rsi, [rsp + 0x14]
	call	strmode
	mov	byte ptr [rsp + 0x1e], 0
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_477
	cmp	byte ptr [r12 + 0x15], 0
	jne	.label_477
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_476
.label_477:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
.label_475:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	r8, rax
	mov	r9d, dword ptr [rbx + 0x18]
	and	r9d, 0xfff
	lea	rax, [rsp + 0x15]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	call	__fprintf_chk
	jmp	.label_479
.label_478:
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	__fprintf_chk
.label_479:
	call	yesno
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_476:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55_0
	jmp	.label_475
	nop	
	.section	.text
	.align	32
	#Procedure 0x4082f0

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
	je	.label_481
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
.label_481:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_480
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_480:
	mov	esi, 0xa
	pop	rbx
	pop	r14
	pop	r15
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083b0

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083f0

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
	mov	r13d, edx
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_482
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_485
	mov	edx, dword ptr [r9 + 0x18]
	add	rcx, 0x18
	jmp	.label_488
.label_485:
	mov	rax, qword ptr [r15 + 0x18]
	test	al, al
	jne	.label_490
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_482
.label_490:
	mov	edx, dword ptr [r9 + 0x18]
	test	al, al
	setne	bl
	movabs	rsi, 0xff000000000000
	test	rax, rsi
	jne	.label_493
	test	bl, bl
	jne	.label_493
	lea	rcx, [r15 + 0x10]
	jmp	.label_488
.label_493:
	add	rcx, 0x18
.label_488:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, edx
	test	cx, 0xfff
	je	.label_482
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	esi, r13d
	call	qset_acl
	test	eax, eax
	je	.label_482
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_484
	cmp	ebx, 1
	jne	.label_487
.label_484:
	cmp	byte ptr [r15 + 0x1b], 0
	je	.label_489
.label_487:
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
.label_489:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_492
.label_482:
	cmp	r13d, -1
	je	.label_495
	mov	edi, r13d
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_492
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_483
	cmp	ebx, 1
	jne	.label_486
.label_483:
	mov	esi, 0xffffffff
	mov	edi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_491
.label_495:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_492
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_494
	cmp	ebx, 1
	jne	.label_486
.label_494:
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
.label_491:
	mov	dword ptr [rbp], ebx
.label_486:
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_496
	cmp	ebx, 1
	jne	.label_497
.label_496:
	cmp	byte ptr [r15 + 0x1a], 0
	je	.label_498
.label_497:
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
	jne	.label_492
.label_498:
	xor	eax, eax
.label_492:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085d0

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
	mov	qword ptr [rsp + 0x38], r8
	mov	r12, rcx
	mov	qword ptr [rsp + 0x50], rdx
	mov	dword ptr [rsp + 0x28], esi
	mov	dword ptr [rsp + 0x44], edi
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xa0]
	mov	r15, qword ptr [rsp + 0x90]
	mov	byte ptr [rax], 0
	mov	qword ptr [rcx], 0
	test	r8, r8
	mov	rax, r12
	cmovne	rax, r8
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r14d, r14d
	jmp	.label_515
.label_521:
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], r10b
	mov	r15, qword ptr [rsp + 0x90]
	mov	r12, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x48]
	nop	
.label_515:
	mov	qword ptr [rsp + 0x48], rdx
	cmp	rdx, r12
	mov	rbp, r12
	cmovb	rbp, rdx
	nop	
.label_502:
	test	rdx, rdx
	je	.label_504
	mov	edi, dword ptr [rsp + 0x44]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, rbp
	call	read
	mov	r13, rax
	test	r13, r13
	jns	.label_499
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 4
	mov	rdx, qword ptr [rsp + 0x48]
	je	.label_502
	jmp	.label_506
	nop	dword ptr [rax + rax]
.label_499:
	je	.label_504
	mov	qword ptr [rsp + 8], r12
	sub	qword ptr [rsp + 0x48], r13
	mov	rax, qword ptr [rsp + 0xa8]
	add	qword ptr [rax], r13
	mov	r10b, r14b
	and	r10b, 1
	mov	rax, qword ptr [rsp + 0x50]
	mov	r8, rax
	mov	rsi, rax
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_519:
	mov	r9b, r10b
	cmp	rbp, r13
	mov	r12, r13
	cmovb	r12, rbp
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_503
	test	r12, r12
	je	.label_503
	not	rbp
	mov	rcx, r13
	not	rcx
	cmp	rbp, rcx
	cmova	rcx, rbp
	mov	rax, -2
	sub	rax, rcx
	mov	rcx, rsi
	mov	rbp, rcx
	nop	word ptr [rax + rax]
.label_513:
	mov	rdx, rax
	cmp	byte ptr [rsi], 0
	jne	.label_517
	mov	r14b, 1
	test	rdx, rdx
	je	.label_512
	inc	rsi
	lea	rax, [rdx - 1]
	test	dl, 0xf
	jne	.label_513
	mov	r14, rdi
	mov	rdi, rbp
	mov	rbx, r8
	mov	r15b, r9b
	call	memcmp
	mov	r9b, r15b
	mov	r8, rbx
	mov	rdi, r14
	test	eax, eax
	sete	r14b
	jmp	.label_512
.label_517:
	xor	r14d, r14d
.label_512:
	mov	rsi, rbp
.label_503:
	mov	r10b, r14b
	and	r10b, 1
	movzx	eax, r9b
	movzx	ecx, r10b
	sete	dl
	cmp	ecx, eax
	setne	bl
	test	rdi, rdi
	setne	al
	cmp	r13, r12
	sete	cl
	and	cl, dl
	test	r12, r12
	sete	r15b
	or	r15b, cl
	and	al, bl
	jne	.label_508
	test	r15b, r15b
	jne	.label_508
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	cmp	rdi, rax
	ja	.label_510
	add	rdi, r12
	mov	rbp, r12
	jmp	.label_514
	nop	dword ptr [rax]
.label_508:
	mov	bl, r10b
	mov	qword ptr [rsp + 0x30], rsi
	test	al, 1
	mov	byte ptr [rsp + 0x2f], al
	mov	rbp, r12
	mov	eax, 0
	cmovne	rbp, rax
	add	rdi, rbp
	test	r9b, r9b
	mov	rcx, rdi
	je	.label_518
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x98]
	call	create_hole
	test	al, al
	jne	.label_500
	jmp	.label_501
.label_518:
	mov	edi, dword ptr [rsp + 0x28]
	mov	rsi, r8
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x20], rcx
	call	full_write
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_509
.label_500:
	test	r15b, r15b
	mov	r10b, bl
	je	.label_511
	test	r12, r12
	cmove	r13, r12
	test	byte ptr [rsp + 0x2f], 1
	mov	eax, 0
	cmove	r12, rax
	mov	rdi, r12
	jmp	.label_520
	nop	word ptr [rax + rax]
.label_511:
	mov	rdi, r12
	mov	rbp, r12
.label_520:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, rsi
.label_514:
	add	rsi, rbp
	sub	r13, rbp
	jne	.label_519
	jmp	.label_521
.label_504:
	test	r14b, 1
	je	.label_522
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0x20]
	call	create_hole
	test	al, al
	je	.label_505
.label_522:
	mov	r14b, 1
	jmp	.label_507
.label_506:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
.label_516:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_507
.label_505:
	xor	r14d, r14d
	jmp	.label_507
.label_510:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
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
	call	error
	jmp	.label_507
.label_501:
	xor	r14d, r14d
.label_507:
	mov	al, r14b
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_509:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x98]
	jmp	.label_516
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408970

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	ebx, edi
	mov	edx, 1
	mov	rsi, rbp
	call	lseek
	test	rax, rax
	js	.label_523
	mov	r15b, 1
	test	r12b, r12b
	je	.label_524
	sub	rax, rbp
	mov	esi, 3
	mov	edi, ebx
	mov	rdx, rax
	mov	rcx, rbp
	call	fallocate
	test	eax, eax
	jns	.label_524
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x26
	je	.label_524
	cmp	ebp, 0x5f
	je	.label_524
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	jmp	.label_525
.label_523:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
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
.label_525:
	call	error
.label_524:
	mov	al, r15b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a50

	.globl forget_created
	.type forget_created, @function
forget_created:
	push	rbx
	sub	rsp, 0x20
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp + 8]
	call	hash_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_526
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
.label_526:
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408aa0

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
	#Procedure 0x408ac0

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
	je	.label_527
	mov	rax, qword ptr [rcx + 0x10]
.label_527:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x408af0

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
	je	.label_528
	xor	eax, eax
	cmp	r14, rbx
	je	.label_529
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [r14 + 0x10]
.label_529:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_528:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b70

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
	je	.label_530
	pop	rax
	ret	
.label_530:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408ba0

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
	#Procedure 0x408bb0

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	jne	.label_531
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
.label_531:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bd0
	.globl forget_all
	.type forget_all, @function
forget_all:

	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408be0

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
	#Procedure 0x408c10

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
	mov	r15, qword ptr [r13 + 8]
	mov	r12, qword ptr [r13 + 0x28]
	movabs	rbp, 0x7fffffffffffffff
	xor	r14d, r14d
.label_550:
	xor	esi, esi
	mov	edx, 0x1000
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	memset
	mov	qword ptr [rsp + 8], r15
	mov	eax, dword ptr [r13 + 0x10]
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rsp + 0x20], 0x48
	not	r15
	mov	qword ptr [rsp + 0x10], r15
	mov	edi, dword ptr [r13]
	mov	esi, 0xc020660b
	xor	eax, eax
	mov	rdx, rbx
	call	ioctl
	test	eax, eax
	js	.label_551
	mov	ecx, dword ptr [rsp + 0x1c]
	test	rcx, rcx
	je	.label_533
	mov	rax, qword ptr [r13 + 0x18]
	mov	rdx, rcx
	not	rdx
	cmp	rax, rdx
	ja	.label_536
	add	rax, rcx
	mov	qword ptr [r13 + 0x18], rax
	movabs	rcx, 0x555555555555556
	cmp	rax, rcx
	mov	r15, rbp
	jae	.label_544
	mov	rdi, qword ptr [r13 + 0x28]
	sub	r12, rdi
	shl	rax, 3
	lea	rsi, [rax + rax*2]
	call	xrealloc
	mov	qword ptr [r13 + 0x28], rax
	add	r12, rax
	mov	r8d, dword ptr [rsp + 0x1c]
	test	r8d, r8d
	je	.label_539
	xor	r11d, r11d
	nop	
.label_545:
	mov	ecx, r11d
	imul	rcx, rcx, 0x38
	mov	rdi, qword ptr [rsp + rcx + 0x28]
	mov	rsi, qword ptr [rsp + rcx + 0x38]
	mov	rbp, r15
	sub	rbp, rsi
	cmp	rdi, rbp
	ja	.label_546
	test	r14d, r14d
	je	.label_542
	mov	r9d, dword ptr [rsp + rcx + 0x50]
	mov	ebx, r9d
	and	ebx, 0xfffffffe
	mov	r10, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r12]
	add	rdx, r10
	cmp	dword ptr [r12 + 0x10], ebx
	jne	.label_547
	cmp	rdx, rdi
	jne	.label_547
	add	r10, rsi
	mov	qword ptr [r12 + 8], r10
	mov	dword ptr [r12 + 0x10], r9d
	jmp	.label_534
	nop	word ptr [rax + rax]
.label_542:
	mov	rdx, qword ptr [r13 + 8]
	cmp	rdx, rdi
	ja	.label_548
	mov	r9d, dword ptr [rsp + rcx + 0x50]
	jmp	.label_540
.label_547:
	cmp	rdx, rdi
	jbe	.label_540
.label_548:
	mov	rbp, rdx
	sub	rbp, rdi
	sub	rsi, rbp
	ja	.label_552
	lea	rdi, [rsp + rcx + 0x28]
	lea	rcx, [rsp + rcx + 0x38]
	mov	qword ptr [rdi], rdx
	mov	qword ptr [rcx], rsi
	dec	r11d
	jmp	.label_534
	nop	dword ptr [rax]
.label_540:
	mov	ecx, r14d
	lea	rcx, [rcx + rcx*2]
	lea	r12, [rax + rcx*8]
	mov	qword ptr [rax + rcx*8], rdi
	mov	qword ptr [rax + rcx*8 + 8], rsi
	mov	dword ptr [rax + rcx*8 + 0x10], r9d
	inc	r14d
.label_534:
	inc	r11d
	cmp	r11d, r8d
	jb	.label_545
.label_539:
	test	byte ptr [r12 + 0x10], 1
	je	.label_549
	mov	byte ptr [r13 + 0x21], 1
.label_549:
	mov	cl, byte ptr [r13 + 0x21]
	cmp	r14d, 0x49
	jb	.label_541
	test	cl, cl
	jne	.label_535
	dec	r14d
	lea	rcx, [r14 + r14*2]
	lea	r12, [rax + rcx*8 - 0x18]
	mov	qword ptr [r13 + 0x18], r14
	jmp	.label_537
	nop	word ptr cs:[rax + rax]
.label_541:
	mov	eax, r14d
	mov	qword ptr [r13 + 0x18], rax
	test	cl, cl
	jne	.label_538
.label_537:
	mov	rbp, r15
	mov	r15, qword ptr [r12 + 8]
	add	r15, qword ptr [r12]
	mov	qword ptr [r13 + 8], r15
	mov	al, 1
	cmp	r14d, 0x48
	jb	.label_550
	jmp	.label_532
.label_552:
	cmp	qword ptr [r13 + 8], 0
	je	.label_543
	xor	eax, eax
	jmp	.label_532
.label_551:
	cmp	qword ptr [r13 + 8], 0
	je	.label_543
	xor	eax, eax
	jmp	.label_532
.label_543:
	mov	byte ptr [r13 + 0x20], 1
	xor	eax, eax
	jmp	.label_532
.label_533:
	mov	byte ptr [r13 + 0x21], 1
	cmp	qword ptr [r13 + 8], 0
	setne	al
	jmp	.label_532
.label_535:
	mov	eax, r14d
	mov	qword ptr [r13 + 0x18], rax
	mov	al, 1
	jmp	.label_532
.label_538:
	mov	al, 1
.label_532:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_546:
	mov	edi, OFFSET FLAT:.str.2_0
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_536:
	mov	edi, OFFSET FLAT:.str_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_544:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408ea0

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
	mov	ebp, r9d
	mov	r15d, r8d
	mov	r12, rcx
	mov	ebx, edx
	mov	r13d, edi
	mov	r14d, dword ptr [rsp + 0x160]
	test	r14d, r14d
	jns	.label_558
	mov	edi, r13d
	mov	qword ptr [rsp], rsi
	mov	edx, ebx
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	test	eax, eax
	je	.label_553
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsi, qword ptr [rsp]
.label_558:
	cmp	r14d, 0x11
	jne	.label_553
	mov	qword ptr [rsp], rsi
	xor	bpl, 1
	jne	.label_553
	mov	rdi, r12
	call	last_component
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	mov	r14d, r15d
	cmp	rdi, 0x101
	jae	.label_556
	lea	r15, [rsp + 0x20]
	jmp	.label_560
.label_556:
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_555
.label_560:
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r15, r15
	je	.label_555
	mov	dword ptr [rsp + 8], r13d
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x18], ebx
	mov	dword ptr [rsp + 0x1c], r14d
	lea	rdx, [rsp + 8]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, r15
	call	try_tempname_len
	test	eax, eax
	je	.label_557
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_559
.label_555:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_553
.label_557:
	mov	edi, ebx
	mov	rsi, r15
	mov	edx, ebx
	mov	rcx, r12
	call	renameat
	mov	r14d, 0xffffffff
	test	eax, eax
	je	.label_554
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_554:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r15
	call	unlinkat
.label_559:
	lea	rax, [rsp + 0x20]
	cmp	r15, rax
	je	.label_553
	mov	rdi, r15
	call	free
.label_553:
	mov	eax, r14d
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
	#Procedure 0x409010

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	r8, rdx
	shr	r8, 0x20
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	
	.section	.text
	.align	32
	#Procedure 0x409030

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
	mov	r14d, esi
	mov	r15, rdi
	test	ebp, ebp
	jns	.label_567
	mov	rdi, r15
	mov	esi, r14d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_565
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_567:
	cmp	ebp, 0x11
	jne	.label_565
	xor	bl, 1
	jne	.label_565
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_564
	lea	r12, [rsp + 0x10]
	jmp	.label_566
.label_564:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_562
.label_566:
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_562
	mov	qword ptr [rsp], r15
	mov	dword ptr [rsp + 8], r14d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_561
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_563
.label_562:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_565
.label_561:
	mov	edi, r14d
	mov	rsi, r12
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_563
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	call	unlinkat
.label_563:
	lea	rax, [rsp + 0x10]
	cmp	r12, rax
	je	.label_565
	mov	rdi, r12
	call	free
.label_565:
	mov	eax, ebp
	add	rsp, 0x118
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
	#Procedure 0x409170

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
	.align	32
	#Procedure 0x409190

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
	je	.label_568
	cmp	ebp, -2
	jne	.label_569
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_570
.label_568:
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
.label_570:
	call	error
.label_569:
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
	.align	32
	#Procedure 0x409220

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
	je	.label_571
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
.label_571:
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
	#Procedure 0x409280

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
	je	.label_573
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_572:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_578
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_579
.label_578:
	cmp	r13, r12
	jb	.label_574
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_575
	add	r12, r12
	jmp	.label_577
	nop	word ptr cs:[rax + rax]
.label_575:
	cmp	r12, r15
	mov	r12, r15
	jae	.label_580
.label_577:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_572
	jmp	.label_573
.label_574:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_573
.label_580:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_576
.label_579:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_576:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_573:
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
	.align	32
	#Procedure 0x409390

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093a0

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
	je	.label_582
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_581:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_586
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_584
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_585
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_587
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_586
.label_587:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_586
.label_585:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_586:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_581
	jmp	.label_583
.label_582:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_583:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_584:
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
	#Procedure 0x4094a0
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
	je	.label_588
	mov	esi, OFFSET FLAT:.str.1_3
	jmp	.label_589
.label_588:
	mov	esi, OFFSET FLAT:.str_4
.label_589:
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
	#Procedure 0x409510

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
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_591
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_594:
	test	r15, r15
	je	.label_590
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_593
.label_590:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_595
	nop	word ptr cs:[rax + rax]
.label_593:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_595:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_594
.label_591:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_592
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_592:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409640

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_597
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_598
	mov	esi, OFFSET FLAT:.str.1_3
	jmp	.label_596
.label_598:
	mov	esi, OFFSET FLAT:.str_4
.label_596:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_597:
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
	#Procedure 0x409700
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
	je	.label_599
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_600:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_599
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_600
.label_599:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409770

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_601
	mov	edi, OFFSET FLAT:.str_5
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	test	rbx, rbx
	je	.label_602
.label_601:
	mov	eax, OFFSET FLAT:.str.1_4
	cmp	byte ptr [rbx], 0
	je	.label_602
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	cmove	rax, rbx
.label_602:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097c0

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	dword ptr [rsp + 0x54], ecx
	mov	r15d, edx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x60], rbp
	mov	dword ptr [rsp + 0xc], edi
	mov	rdi, rbp
	call	last_component
	mov	rbx, rax
	sub	rbx, rbp
	mov	qword ptr [rsp + 0x78], rbx
	mov	rdi, rax
	call	strlen
	mov	rbp, rax
	add	rbp, rbx
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	test	rdi, rdi
	jne	.label_637
	mov	edi, OFFSET FLAT:.str_5
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.1_4
	test	rbx, rbx
	je	.label_607
	mov	edi, OFFSET FLAT:.str.1_4
	cmp	byte ptr [rbx], 0
	je	.label_607
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:.str.1_4
	cmove	rdi, rbx
.label_607:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rdi
.label_637:
	call	strlen
	inc	rax
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, 9
	mov	ecx, 9
	cmovae	rcx, rax
	lea	rdi, [rbp + rcx + 1]
	mov	qword ptr [rsp + 0x20], rdi
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_621
	lea	rcx, [rbp + 1]
	mov	qword ptr [rsp + 0x48], rcx
	mov	dword ptr [rsp + 0x84], 0xffffffff
	lea	rcx, [rbp + 4]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 0x40], rbp
	xor	r12d, r12d
	mov	r13, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_623:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x48]
	call	memcpy
	cmp	r15d, 1
	jne	.label_626
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [r13 + rax]
	mov	r14, r13
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	mov	dword ptr [rsp + 0x6c], 1
	jmp	.label_635
	nop	word ptr cs:[rax + rax]
.label_626:
	mov	rax, qword ptr [rsp + 0x78]
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	test	r12, r12
	je	.label_606
	mov	dword ptr [rsp + 0x6c], r15d
	mov	rdi, r12
	call	rewinddir
	mov	r15, rbp
	jmp	.label_610
.label_606:
	mov	r14w, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, r13
	lea	rcx, [rsp + 0x84]
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_614
	mov	dword ptr [rsp + 0x6c], r15d
	mov	word ptr [rbx], r14w
	mov	r15, rbp
	mov	byte ptr [rbx + r15 + 4], 0
	mov	dword ptr [rbx + r15], 0x7e317e2e
.label_610:
	mov	rdi, r12
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_622
	mov	r14, r13
	lea	r13, [r15 + 4]
	lea	rax, [r15 + 2]
	mov	qword ptr [rsp + 0x70], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x28], rax
	nop	word ptr cs:[rax + rax]
.label_627:
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	jb	.label_625
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [r14 + rax]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x70]
	call	memcmp
	test	eax, eax
	jne	.label_625
	mov	al, byte ptr [rbx + r15 + 0x15]
	mov	cl, al
	add	cl, 0xcf
	movzx	ecx, cl
	cmp	ecx, 8
	ja	.label_625
	lea	rcx, [rbx + r15 + 0x13]
	movzx	eax, al
	cmp	eax, 0x39
	mov	rdx, r15
	sete	r15b
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_628
	lea	rcx, [rbx + rdx + 0x17]
	mov	qword ptr [rsp + 0x58], rdx
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_612:
	mov	rbp, rdx
	movzx	eax, al
	cmp	eax, 0x39
	sete	al
	and	r15b, al
	movsx	eax, byte ptr [rcx + rbp]
	mov	esi, eax
	add	esi, -0x30
	lea	rdx, [rbp + 1]
	cmp	esi, 0xa
	jb	.label_612
	add	rbp, 2
	jmp	.label_619
.label_628:
	mov	qword ptr [rsp + 0x58], rdx
	mov	ebp, 1
.label_619:
	movzx	eax, al
	cmp	eax, 0x7e
	jne	.label_620
	mov	rax, qword ptr [rsp + 0x58]
	lea	rbx, [rbx + rax + 0x15]
	cmp	byte ptr [rbp + rbx + 1], 0
	je	.label_633
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_625
.label_620:
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_625
.label_633:
	cmp	qword ptr [rsp + 0x28], rbp
	jb	.label_608
	jne	.label_630
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcmp
	test	eax, eax
	jle	.label_608
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_625
.label_608:
	movzx	edx, r15b
	lea	rcx, [rdx + rbp]
	mov	qword ptr [rsp + 0x28], rcx
	mov	rax, qword ptr [rsp]
	lea	r15, [rax + rcx]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, r15
	jae	.label_632
	mov	rax, r15
	shr	rax, 0x3e
	sete	cl
	shl	r15, cl
	mov	rdi, r14
	mov	rsi, r15
	mov	qword ptr [rsp + 0x30], rdx
	call	realloc
	mov	rdx, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	qword ptr [rsp + 0x18], r15
	jne	.label_605
	jmp	.label_604
.label_632:
	mov	rax, r14
.label_605:
	mov	qword ptr [rsp + 0x30], rdx
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rax + rcx]
	mov	byte ptr [rax + rcx], 0x2e
	lea	r15, [rsi + rdx]
	mov	word ptr [rax + rcx + 1], 0x307e
	mov	r14, rax
	lea	rdi, [rdx + rsi + 2]
	lea	rdx, [rbp + 2]
	mov	rsi, rbx
	call	memcpy
	lea	rax, [rbp + r15 + 1]
	movzx	ecx, byte ptr [rbp + r15 + 1]
	jmp	.label_617
	nop	word ptr cs:[rax + rax]
.label_634:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_617:
	cmp	ecx, 0x39
	je	.label_634
	inc	cl
	mov	byte ptr [rax], cl
	mov	r15, qword ptr [rsp + 0x58]
	jmp	.label_625
.label_630:
	mov	r15, qword ptr [rsp + 0x58]
	nop	
.label_625:
	mov	rdi, r12
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_627
	mov	r13, r14
	mov	rcx, qword ptr [rsp + 0x30]
	jmp	.label_629
.label_614:
	mov	dword ptr [rsp + 0x6c], r15d
	call	__errno_location
	mov	ecx, 3
	cmp	dword ptr [rax], 0xc
	je	.label_631
	mov	ecx, 2
.label_631:
	mov	word ptr [rbx], r14w
	mov	byte ptr [rbx + rbp + 4], 0
	mov	dword ptr [rbx + rbp], 0x7e317e2e
	xor	r12d, r12d
.label_629:
	cmp	ecx, 1
	je	.label_603
	cmp	ecx, 2
	je	.label_622
	mov	r14, r13
	cmp	ecx, 3
	jne	.label_635
	jmp	.label_604
	nop	word ptr cs:[rax + rax]
.label_622:
	mov	eax, dword ptr [rsp + 0x6c]
	cmp	eax, 2
	jne	.label_603
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [r13 + rax]
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	mov	dword ptr [rsp + 0x6c], 1
.label_603:
	mov	r15d, dword ptr [rsp + 0x84]
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	cmp	rbp, 0xf
	jb	.label_613
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	jne	.label_616
	mov	r14, r13
	test	r15d, r15d
	js	.label_618
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	esi, 3
	mov	edi, r15d
	call	fpathconf
	cmp	dword ptr [r13], 1
	sbb	rax, 0
	jmp	.label_624
.label_613:
	mov	eax, 0xff
	jmp	.label_616
.label_618:
	mov	r15w, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	esi, 3
	mov	rdi, r14
	call	pathconf
	cmp	dword ptr [r13], 1
	sbb	rax, 0
	mov	word ptr [rbx], r15w
.label_624:
	cmp	rax, -1
	mov	rdx, -1
	mov	ecx, 0xe
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	qword ptr [rsp + 0x10], rdx
	mov	rax, rdx
	mov	r13, r14
	nop	
.label_616:
	cmp	rax, rbp
	jae	.label_636
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rcx, [r13 + rcx]
	mov	r14, r13
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	jmp	.label_635
.label_636:
	mov	r14, r13
	nop	dword ptr [rax + rax]
.label_635:
	mov	eax, dword ptr [rsp + 0x54]
	test	al, al
	mov	r15d, dword ptr [rsp + 0x6c]
	mov	r13, r14
	je	.label_609
	mov	edx, dword ptr [rsp + 0x84]
	test	edx, edx
	jns	.label_611
	mov	dword ptr [rsp + 0x84], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
.label_611:
	cmp	r15d, 1
	setne	al
	movzx	r8d, al
	mov	rax, qword ptr [rsp + 0x78]
	lea	rcx, [r13 + rax]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rsp + 0x60]
	call	renameatu
	test	eax, eax
	je	.label_609
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	cmp	ebp, 0x11
	je	.label_623
	test	r12, r12
	je	.label_615
	mov	rdi, r12
	call	closedir
.label_615:
	mov	rdi, r13
	call	free
	mov	dword ptr [rbx], ebp
	xor	r13d, r13d
	jmp	.label_621
.label_609:
	test	r12, r12
	je	.label_621
	mov	rdi, r12
	call	closedir
	jmp	.label_621
.label_604:
	mov	rdi, r14
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
.label_621:
	mov	rax, r13
	add	rsp, 0x88
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
	.align	32
	#Procedure 0x409df0

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	mov	ecx, 1
	jmp	backupfile_internal
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e00

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_638
	pop	rcx
	ret	
.label_638:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e20
	.globl get_version
	.type get_version, @function
get_version:

	mov	eax, 2
	test	rsi, rsi
	je	.label_639
	cmp	byte ptr [rsi], 0
	je	.label_639
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_639:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e60

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rax
	test	rsi, rsi
	je	.label_640
	cmp	byte ptr [rsi], 0
	je	.label_640
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_642
.label_640:
	mov	edi, OFFSET FLAT:.str.1_5
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_641
	cmp	byte ptr [rax], 0
	je	.label_641
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str_6
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsi, rax
.label_642:
	call	__xargmatch_internal
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
.label_641:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409ed0

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_643
	test	rsi, rsi
	je	.label_645
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_644:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_644
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_645
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	je	.label_646
	jmp	.label_645
.label_643:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_645:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_646:
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f40
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f50

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
	je	.label_648
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_648
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_648:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_647
	test	eax, eax
	jne	.label_647
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_647:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_650
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_649
.label_650:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_649:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a020
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a030
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a040

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_654
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_651
	cmp	dword ptr [rbp], 0x20
	jne	.label_651
.label_654:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_653
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_651:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_8
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name_0]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_652
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_653:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_652:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a100

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_655
	pop	rcx
	ret	
.label_655:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a120

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
.label_656:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_657
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_656
.label_657:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a160

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	sete	al
	movzx	r15d, al
	call	last_component
	sub	rax, r14
	nop	
.label_660:
	mov	rbx, rax
	cmp	r15, rbx
	jae	.label_658
	lea	rax, [rbx - 1]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	je	.label_660
.label_658:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_661
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_659
	mov	byte ptr [r15], 0x2e
	mov	ebx, 1
.label_659:
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_661:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a1e0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_662:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	edx, 0x2f
	je	.label_662
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_666
	nop	word ptr cs:[rax + rax]
.label_663:
	mov	dl, byte ptr [rax + 1]
	inc	rax
	mov	r8b, cl
.label_666:
	mov	cl, 1
	movzx	esi, dl
	cmp	esi, 0x2f
	je	.label_663
	test	dl, dl
	je	.label_664
	mov	cl, r8b
	and	cl, 1
	je	.label_665
	xor	r8d, r8d
.label_665:
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	jmp	.label_663
.label_664:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a250

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_667:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_668
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_667
.label_668:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a280

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_669
	mov	rbx, rax
.label_669:
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
	.align	32
	#Procedure 0x40a2b0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2c0
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_670
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_670:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a2e0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_671
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_671:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_674
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_673
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_672
.label_673:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_672:
	mov	edx, dword ptr [rax]
.label_674:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3c0

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
	je	.label_675
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
	je	.label_676
	cmp	rax, rbx
	je	.label_675
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_675:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_676:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a440

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_677
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
.label_677:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a480

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0x5fff
	jle	.label_678
	cmp	ecx, 0x9fff
	jg	.label_691
	cmp	ecx, 0x6000
	je	.label_687
	mov	dl, 0x2d
	cmp	ecx, 0x8000
	je	.label_681
	jmp	.label_685
.label_678:
	cmp	ecx, 0x1000
	je	.label_686
	cmp	ecx, 0x2000
	je	.label_694
	cmp	ecx, 0x4000
	jne	.label_685
	mov	dl, 0x64
	jmp	.label_681
.label_691:
	cmp	ecx, 0xa000
	je	.label_683
	cmp	ecx, 0xc000
	jne	.label_685
	mov	dl, 0x73
	jmp	.label_681
.label_687:
	mov	dl, 0x62
	jmp	.label_681
.label_686:
	mov	dl, 0x70
	jmp	.label_681
.label_683:
	mov	dl, 0x6c
	jmp	.label_681
.label_685:
	mov	dl, 0x3f
	jmp	.label_681
.label_694:
	mov	dl, 0x63
.label_681:
	push	rbx
	mov	byte ptr [rsi], dl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_693
	mov	cl, 0x2d
.label_693:
	mov	byte ptr [rsi + 1], cl
	mov	cl, al
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [rsi + 2], cl
	mov	ecx, eax
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_679
	mov	cl, 0x2d
.label_679:
	test	bl, 8
	jne	.label_690
	mov	dl, cl
.label_690:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_689
	mov	cl, 0x2d
.label_689:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_696
	mov	cl, 0x2d
.label_696:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_682
	mov	cl, 0x2d
.label_682:
	test	bl, 4
	jne	.label_692
	mov	dil, cl
.label_692:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_688
	mov	r9b, 0x2d
.label_688:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_684
	mov	dl, 0x2d
.label_684:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_695
	mov	r8b, 0x2d
.label_695:
	test	bl, 2
	pop	rbx
	je	.label_680
	shl	eax, 5
	or	eax, 0x54
	mov	r8b, al
.label_680:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5b0
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5c0

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_697
	pop	rcx
	ret	
.label_697:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a5e0

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
	je	.label_705
	movzx	ecx, byte ptr [rbx + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_698
	mov	qword ptr [rsp + 8], r14
	xor	r12d, r12d
	jmp	.label_701
.label_705:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	cmp	ecx, 0x2f
	je	.label_702
	jmp	.label_699
.label_698:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	jne	.label_700
.label_699:
	xor	r12d, r12d
	jmp	.label_702
.label_700:
	mov	r12b, 0x2f
.label_702:
	mov	qword ptr [rsp + 8], r14
.label_701:
	test	r12b, r12b
	setne	cl
	movzx	ebp, cl
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_704
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_703
	mov	qword ptr [rax], rbp
.label_703:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_704:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6d0

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
	je	.label_706
	nop	word ptr [rax + rax]
.label_708:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_706
	test	rax, rax
	je	.label_707
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_708
	jmp	.label_706
.label_707:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_706:
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
	#Procedure 0x40a730
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a740
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a750
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a760
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdx
	jae	.label_709
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_715
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_714
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_711:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_711
.label_714:
	add	rcx, 0x10
.label_715:
	test	rsi, rsi
	je	.label_709
	nop	word ptr cs:[rax + rax]
.label_716:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_710
	nop	
.label_712:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_712
	cmp	rsi, rax
	cmova	rax, rsi
.label_710:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_717
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_713:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_713
	cmp	rsi, rax
	cmova	rax, rsi
.label_717:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_716
.label_709:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a810
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	edx, edx
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_725
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_726
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_718
	mov	esi, 1
	mov	rax, rcx
.label_721:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_721
	jmp	.label_722
.label_726:
	xor	esi, esi
	jmp	.label_723
.label_718:
	xor	esi, esi
.label_722:
	add	rcx, 0x10
.label_723:
	test	r8, r8
	je	.label_725
	nop	dword ptr [rax]
.label_727:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_728
	nop	dword ptr [rax]
.label_719:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_719
	inc	rsi
.label_728:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_720
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_724:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_724
	inc	rsi
.label_720:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_727
.label_725:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_729
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_730
.label_729:
	xor	eax, eax
.label_730:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a8d0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdx
	jae	.label_731
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_741
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_736
	mov	rdi, rax
	nop	dword ptr [rax]
.label_734:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_734
.label_736:
	add	rax, 0x10
.label_741:
	test	rsi, rsi
	je	.label_731
	nop	word ptr cs:[rax + rax]
.label_737:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_742
	nop	
.label_733:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_733
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_742:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_732
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_735:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_735
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_732:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_737
.label_731:
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_7
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_738]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_739]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_740]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_2
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa40

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
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_747
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_744
	add	rbx, rax
	je	.label_744
	cmp	rsi, r12
	je	.label_746
	xor	r15d, r15d
	nop	
.label_745:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_743
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_744
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_745
.label_746:
	mov	r15, r12
	jmp	.label_744
.label_743:
	mov	r15, qword ptr [rbx]
.label_744:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_747:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aac0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_748
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_751
	nop	word ptr cs:[rax + rax]
.label_750:
	add	rcx, 0x10
.label_751:
	cmp	rcx, rdx
	jae	.label_749
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_750
.label_748:
	ret	
.label_749:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab00
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_755
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_756:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_753
	test	rdx, rdx
	jne	.label_756
	jmp	.label_752
.label_753:
	test	rdx, rdx
	je	.label_752
	mov	rax, qword ptr [rdx]
	jmp	.label_754
.label_752:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_757:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_754
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_757
.label_754:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_755:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab90
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_758
	nop	dword ptr [rax + rax]
.label_761:
	add	r9, 0x10
.label_758:
	cmp	r9, r8
	jae	.label_759
	cmp	qword ptr [r9], 0
	je	.label_761
	test	r9, r9
	mov	r10, r9
	je	.label_761
	nop	word ptr [rax + rax]
.label_760:
	cmp	rax, rdx
	jae	.label_759
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_760
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_761
.label_759:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40abe0
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
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	jmp	.label_762
	nop	word ptr cs:[rax + rax]
.label_764:
	add	r13, 0x10
.label_762:
	cmp	r13, rax
	jae	.label_765
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_764
	test	r13, r13
	je	.label_764
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_765
	nop	word ptr cs:[rax + rax]
.label_766:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_763
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_766
	jmp	.label_765
	nop	dword ptr [rax]
.label_763:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_764
.label_765:
	mov	rax, rbx
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
	#Procedure 0x40ac80
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_767
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_768:
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
	jne	.label_768
.label_767:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40acc0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_769]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ace0

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
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_775
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_780
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_784]]
	jbe	.label_772
	movss	xmm1,  dword ptr [dword ptr [rip + label_773]]
	ucomiss	xmm1, xmm0
	jbe	.label_772
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_778]]
	jbe	.label_772
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_772
	addss	xmm1,  dword ptr [dword ptr [rip + label_784]]
	ucomiss	xmm0, xmm1
	jbe	.label_772
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_774]]
	ucomiss	xmm2, xmm0
	jb	.label_772
	ucomiss	xmm0, xmm1
	jbe	.label_772
.label_780:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_782
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_783
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_770
.label_783:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_770:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_776]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_777]]
	jae	.label_772
.label_782:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_779
	nop	
.label_785:
	add	rbx, 2
.label_779:
	cmp	rbx, -1
	je	.label_772
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_771
	nop	word ptr cs:[rax + rax]
.label_781:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_771
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_781
.label_771:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_785
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_772
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_772
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_772
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_775
.label_772:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_775:
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
	#Procedure 0x40af00

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af10

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40af20
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_786
	nop	word ptr cs:[rax + rax]
.label_789:
	add	r14, 0x10
.label_786:
	cmp	r14, rax
	jae	.label_788
	cmp	qword ptr [r14], 0
	je	.label_789
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_790
	nop	word ptr cs:[rax + rax]
.label_792:
	test	cl, 1
	je	.label_791
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_791:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_792
.label_790:
	test	cl, cl
	je	.label_787
	mov	rdi, qword ptr [r14]
	call	rax
.label_787:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_789
.label_788:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40afd0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_798
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_798
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_800
	nop	
.label_793:
	add	r15, 0x10
.label_800:
	cmp	r15, rax
	jae	.label_798
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_793
	test	r15, r15
	je	.label_793
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_794
.label_797:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_794:
	test	rbx, rbx
	jne	.label_797
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_793
.label_798:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_799
	nop	
.label_795:
	add	r15, 0x10
.label_799:
	cmp	r15, rax
	jae	.label_802
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_795
	nop	word ptr cs:[rax + rax]
.label_796:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_796
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_795
.label_802:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_801
.label_803:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_803
.label_801:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b0a0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_816
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_820
	cvtsi2ss	xmm0, rsi
	jmp	.label_806
.label_820:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_806:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_776]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_777]]
	jae	.label_808
.label_816:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_811
	nop	dword ptr [rax + rax]
.label_822:
	add	rbx, 2
.label_811:
	cmp	rbx, -1
	je	.label_808
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_804
	nop	word ptr cs:[rax + rax]
.label_819:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_804
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_819
.label_804:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_822
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_808
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_812
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_808
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_809
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_812
.label_809:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_821
	nop	
.label_813:
	add	r12, 0x10
.label_821:
	cmp	r12, r15
	jae	.label_810
	cmp	qword ptr [r12], 0
	je	.label_813
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_817
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_814:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_807
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_818
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_815
	nop	word ptr [rax + rax]
.label_818:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_815:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_814
.label_817:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_813
.label_810:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_805
	mov	rdi, qword ptr [rsp]
	call	free
.label_808:
	xor	ebp, ebp
.label_812:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_807:
	call	abort
.label_805:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b330

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
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_824
	nop	word ptr cs:[rax + rax]
.label_836:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_831
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_834
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_829:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_826
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_828
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_833
	nop	dword ptr [rax]
.label_828:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_833:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_829
	mov	r13, qword ptr [r14]
.label_834:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_831
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_823
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_827
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_830
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_832
.label_827:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_835
.label_830:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_825
.label_832:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_835:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_831:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_836
	mov	al, 1
.label_824:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_825:
	xor	eax, eax
	jmp	.label_824
.label_826:
	call	abort
.label_823:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b4a0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_855
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_855
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_839
	cmp	rsi, r14
	je	.label_863
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_866
	mov	rax, qword ptr [r12]
	jmp	.label_857
.label_863:
	mov	rax, r14
	jmp	.label_837
.label_866:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_839
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_853:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_845
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_850
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_853
	jmp	.label_839
.label_845:
	mov	rax, r14
	jmp	.label_857
.label_850:
	mov	rax, qword ptr [rbp]
.label_857:
	test	rax, rax
	je	.label_839
.label_837:
	xor	ebp, ebp
	test	r15, r15
	je	.label_861
	mov	qword ptr [r15], rax
	jmp	.label_861
.label_839:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_862
	cvtsi2ss	xmm1, rax
	jmp	.label_867
.label_862:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_867:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_841
	cvtsi2ss	xmm0, rcx
	jmp	.label_847
.label_841:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_847:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_840
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_851
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_784]]
	jbe	.label_838
	movss	xmm3,  dword ptr [dword ptr [rip + label_773]]
	ucomiss	xmm3, xmm2
	jbe	.label_838
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_778]]
	jbe	.label_838
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_838
	addss	xmm3,  dword ptr [dword ptr [rip + label_784]]
	ucomiss	xmm2, xmm3
	jbe	.label_838
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_774]]
	ucomiss	xmm5, xmm4
	jb	.label_838
	ucomiss	xmm4, xmm3
	ja	.label_846
.label_838:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_848]]
	jmp	.label_846
.label_851:
	mov	eax, OFFSET FLAT:default_tuning
.label_846:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_840
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_865
	mulss	xmm0, xmm2
.label_865:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_777]]
	jae	.label_861
	movss	xmm1,  dword ptr [dword ptr [rip + label_776]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_861
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_855
	mov	r15, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [r15 + rbp]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_840
	cmp	rsi, r14
	mov	rax, r14
	je	.label_849
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_864
	mov	rax, qword ptr [r12]
	jmp	.label_849
.label_864:
	mov	rax, qword ptr [r15 + rbp + 8]
	test	rax, rax
	je	.label_840
	lea	rbp, [r15 + rbp + 8]
.label_843:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_844
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_842
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_843
	jmp	.label_840
.label_844:
	mov	rax, r14
	jmp	.label_849
.label_842:
	mov	rax, qword ptr [rbp]
.label_849:
	test	rax, rax
	jne	.label_852
.label_840:
	cmp	qword ptr [r12], 0
	je	.label_854
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_856
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_858
.label_854:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_859]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_860
.label_856:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_861
.label_858:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_860:
	mov	ebp, 1
.label_861:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_855:
	call	abort
.label_852:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7c0

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
	je	.label_868
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_868:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b7f0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_870
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_874
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_879
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_882
	mov	r14, qword ptr [r13]
.label_879:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_887
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_881
.label_882:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_874
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_876:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_872
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_875
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_876
	jmp	.label_874
.label_887:
	mov	qword ptr [r13], 0
	jmp	.label_881
.label_872:
	mov	rcx, rax
	jmp	.label_884
.label_875:
	mov	r14, qword ptr [rcx]
.label_884:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_881:
	xor	r12d, r12d
	test	r14, r14
	je	.label_874
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_877
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_871
	cvtsi2ss	xmm1, rax
	jmp	.label_873
.label_871:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_873:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_878
	cvtsi2ss	xmm0, rcx
	jmp	.label_883
.label_878:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_883:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_877
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_888
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_784]]
	jbe	.label_869
	movss	xmm4,  dword ptr [dword ptr [rip + label_773]]
	ucomiss	xmm4, xmm3
	jbe	.label_869
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_869
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_778]]
	jbe	.label_869
	movss	xmm4,  dword ptr [dword ptr [rip + label_784]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_869
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_774]]
	ucomiss	xmm5, xmm3
	jb	.label_869
	ucomiss	xmm3, xmm4
	ja	.label_885
.label_869:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_885
.label_888:
	mov	eax, OFFSET FLAT:default_tuning
.label_885:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_877
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_889
	mulss	xmm0, dword ptr [rax + 8]
.label_889:
	movss	xmm1,  dword ptr [dword ptr [rip + label_776]]
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
	jne	.label_877
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_880
	nop	
.label_886:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_886
.label_880:
	mov	qword ptr [r15 + 0x48], 0
.label_877:
	mov	r12, r14
.label_874:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_870:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ba80

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
	#Procedure 0x40bab0

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
	#Procedure 0x40bac0

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_890
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_891
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_890:
	xor	eax, eax
	ret	
.label_891:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40baf0
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_892
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_893
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_892:
	xor	eax, eax
	ret	
.label_893:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb20

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
	.align	32
	#Procedure 0x40bb40

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
	js	.label_895
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_894
	mov	dword ptr [r14], ebp
	jmp	.label_895
.label_894:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_895:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bb90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_898
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_896
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_896
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_897
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_897:
	mov	rbx, r14
.label_896:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_898:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bc40

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
	jne	.label_899
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_899:
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
	#Procedure 0x40bc90

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
	#Procedure 0x40bcc0
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
	#Procedure 0x40bd00
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
	#Procedure 0x40bd10
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
	#Procedure 0x40bd20
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
	.align	32
	#Procedure 0x40bd60
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
	#Procedure 0x40bd80
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_900
	test	rdx, rdx
	je	.label_900
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_900:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bdb0
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40be30

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
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_1025:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_964
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_967]]
.label_1479:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_1480:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_990
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_990
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_1013:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1016
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_1016:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_1013
.label_990:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_916
.label_1472:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_916
.label_1475:
	mov	al, 1
.label_1473:
	mov	r12b, 1
.label_1476:
	test	r12b, 1
	mov	cl, 1
	je	.label_923
	mov	cl, al
.label_923:
	mov	al, cl
.label_1474:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_926
	test	r10, r10
	je	.label_929
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_930
.label_926:
	xor	ecx, ecx
	jmp	.label_930
.label_1477:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_945
	test	r10, r10
	je	.label_942
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_946
.label_1478:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_916
.label_929:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_930:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_916
.label_945:
	xor	eax, eax
	jmp	.label_946
.label_942:
	mov	eax, 1
.label_946:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_916:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_979
.label_918:
	inc	rdi
.label_979:
	cmp	rbp, -1
	je	.label_1017
	cmp	rdi, rbp
	jne	.label_1019
	jmp	.label_1020
	nop	word ptr cs:[rax + rax]
.label_1017:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_1003
.label_1019:
	test	r12b, r12b
	je	.label_902
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_904
	cmp	rbp, -1
	jne	.label_904
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_904:
	cmp	rbx, rbp
	jbe	.label_934
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_937
	nop	word ptr [rax + rax]
.label_902:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_937
.label_934:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_961
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_937
	jmp	.label_910
.label_961:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_937:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_1014
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_985]]
.label_1433:
	test	rdi, rdi
	jne	.label_970
	jmp	.label_992
.label_1437:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_994
	test	rdi, rdi
	jne	.label_997
	cmp	rbp, 1
	je	.label_992
	xor	r13d, r13d
	jmp	.label_919
.label_1426:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_999
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_910
	cmp	r9d, 2
	jne	.label_1004
	mov	al, r14b
	and	al, 1
	jne	.label_1007
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1011
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_1011:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_968
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_968:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_944
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_944:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_909
.label_1427:
	mov	bl, 0x62
	jmp	.label_920
.label_1428:
	mov	cl, 0x74
	jmp	.label_901
.label_1429:
	mov	bl, 0x76
	jmp	.label_920
.label_1430:
	mov	bl, 0x66
	jmp	.label_920
.label_1431:
	mov	cl, 0x72
	jmp	.label_901
.label_1434:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_927
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_931
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_936
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_936:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_957
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_957:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_962
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_962:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_927:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_919
.label_1435:
	cmp	r9d, 5
	je	.label_911
	cmp	r9d, 2
	jne	.label_970
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_970
	jmp	.label_975
.label_1436:
	cmp	r9d, 2
	jne	.label_977
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_980
	jmp	.label_986
.label_1014:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_987
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_908:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_1001
	test	cl, cl
	je	.label_1001
	xor	eax, eax
	jmp	.label_919
.label_994:
	test	rdi, rdi
	jne	.label_948
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_948
.label_992:
	mov	dl, 1
.label_1432:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_973
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_919
.label_999:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_918
	jmp	.label_970
.label_977:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_901
.label_980:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_906
.label_901:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_912
.label_920:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_919
	jmp	.label_924
.label_987:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_925
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_925:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_991:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_956
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_959
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_963
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_996
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_976:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_972
	bt	rsi, rdx
	jb	.label_974
.label_972:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_976
.label_996:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_993
	xor	r13d, r13d
.label_993:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_991
	jmp	.label_908
.label_948:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_919
.label_911:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_970
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_970
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_970
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1008
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_952
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_965
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1022
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_1022:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_921
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_921:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_915
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_915:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_989
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_989:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_919
.label_970:
	xor	eax, eax
	xor	r13d, r13d
.label_919:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_939
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_941
	jmp	.label_947
	nop	word ptr [rax + rax]
.label_939:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_947
.label_941:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_951
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_958
	nop	word ptr cs:[rax + rax]
.label_947:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_958:
	mov	bl, r15b
	je	.label_906
	jmp	.label_924
.label_951:
	mov	bl, r15b
.label_924:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_910
	cmp	r9d, 2
	jne	.label_966
	mov	al, r14b
	and	al, 1
	jne	.label_966
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_907
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_907:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_960
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_960:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_983
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_983:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_966:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_995
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_995:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_1006
.label_997:
	xor	r13d, r13d
	jmp	.label_919
.label_1001:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_1002
	nop	word ptr [rax + rax]
.label_984:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_1002:
	test	cl, cl
	je	.label_1015
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_955
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1018
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_1018:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_955
	nop	word ptr [rax + rax]
.label_1015:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_910
	cmp	r9d, 2
	jne	.label_917
	mov	al, r14b
	and	al, 1
	jne	.label_917
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_922
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_922:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1010
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_1010:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_935
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_935:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_917:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_950
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_950:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_905
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_905:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1021
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_1021:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_955:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_906
	test	r14b, 1
	je	.label_969
	mov	bl, al
	and	bl, 1
	jne	.label_969
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_953
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_953:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_988
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_988:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_969:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_984
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_984
	nop	dword ptr [rax]
.label_906:
	test	r14b, 1
	je	.label_1009
	and	al, 1
	jne	.label_1009
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1012
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_1012:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_913
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_913:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_1009:
	mov	bl, r15b
.label_1006:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_903
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_903:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_918
.label_1004:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_909
.label_1007:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_909:
	cmp	rcx, r10
	jae	.label_928
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_928:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_933
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_940
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_943
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_949
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_949:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_954
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_954:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_919
.label_933:
	xor	r13d, r13d
	jmp	.label_919
.label_940:
	xor	r13d, r13d
	jmp	.label_919
.label_943:
	xor	r13d, r13d
	jmp	.label_919
.label_959:
	xor	r13d, r13d
.label_956:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_908
.label_963:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_971
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_981:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_978
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_981
	xor	r13d, r13d
	jmp	.label_908
.label_971:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_908
.label_978:
	xor	r13d, r13d
	jmp	.label_908
.label_1008:
	xor	r13d, r13d
	jmp	.label_919
.label_952:
	xor	r13d, r13d
	jmp	.label_919
	nop	dword ptr [rax]
.label_1020:
	mov	r13, rdi
.label_1003:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_998
	or	al, dl
	je	.label_1000
.label_998:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_1005
	or	al, dl
	jne	.label_1005
	test	r8b, 1
	jne	.label_1023
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_1005
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_1025
.label_1005:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_914
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_914
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_914
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_932:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1024
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_1024:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_932
.label_914:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_938
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_938
.label_973:
	mov	r9d, 2
	jmp	.label_910
.label_974:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_910
.label_1000:
	mov	rbp, r13
	jmp	.label_910
.label_912:
	mov	r9d, 2
.label_910:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_982:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_938:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1023:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_982
.label_931:
	mov	r9d, 2
	jmp	.label_910
.label_986:
	mov	r9d, 2
	jmp	.label_910
.label_975:
	mov	r9d, 2
	jmp	.label_910
.label_965:
	mov	r9d, 5
	jmp	.label_910
.label_964:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cfc0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
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
	#Procedure 0x40d090
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
	call	xmalloc
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
	je	.label_1026
	mov	qword ptr [rax], rbx
.label_1026:
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
	.align	32
	#Procedure 0x40d190
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1027
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1029:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1029
.label_1027:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1030
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_1031]], OFFSET FLAT:slot0
.label_1030:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1028
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1028:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d230
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d240

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
	js	.label_1032
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_1035
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1038
.label_1035:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_1034
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
	jne	.label_1033
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1033:
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
.label_1038:
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
	ja	.label_1036
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_1037
	mov	rdi, rbx
	call	free
.label_1037:
	mov	rdi, r14
	call	xmalloc
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
.label_1036:
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
.label_1032:
	call	abort
.label_1034:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d410
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d420
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d440
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d460

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_1039
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1039:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d4d0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_1040
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1040:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d540

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_1041
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1041:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d5b0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_1042
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1042:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d620
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_1043]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d690
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_1043]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d700

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_1043]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d760
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_1043]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d7c0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_1046
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_1046:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d870
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1043]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1047
	test	rdx, rdx
	je	.label_1047
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1047:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d8e0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1043]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1048
	test	rdx, rdx
	je	.label_1048
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1048:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d950
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_1043]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1049
	test	rsi, rsi
	je	.label_1049
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1049:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40d9c0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1043]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1050
	test	rsi, rsi
	je	.label_1050
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1050:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40da30
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da40
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da60

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da80

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40daa0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_1051
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1053
	cmp	ecx, 0x55
	jne	.label_1052
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1052
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1052
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_1052
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_1052
	cmp	byte ptr [rax + 5], 0
	jne	.label_1052
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_1051
	mov	eax, OFFSET FLAT:.str.15_1
	jmp	.label_1051
.label_1053:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1052
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_1052
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_1052
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_1052
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_1052
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_1052
	cmp	byte ptr [rax + 7], 0
	je	.label_1054
.label_1052:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_1051:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1054:
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_1051
	mov	eax, OFFSET FLAT:.str.18_2
	jmp	.label_1051
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db90

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
	mov	r12d, r8d
	mov	r13, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r13
	mov	r9d, r12d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	test	ebx, ebx
	jns	.label_1056
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_1063
	cmp	ecx, 0x5f
	je	.label_1063
	cmp	ecx, 0x26
	jne	.label_1056
.label_1063:
	test	r12d, r12d
	je	.label_1064
	mov	qword ptr [rsp], rax
	cmp	r12d, 2
	jb	.label_1065
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x5f
	mov	ebx, 0xffffffff
	jmp	.label_1056
.label_1064:
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
.label_1060:
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	test	rbx, rbx
	je	.label_1058
	test	rax, rax
	je	.label_1058
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	je	.label_1055
	movzx	eax, byte ptr [rax + r13 - 1]
	cmp	eax, 0x2f
	jne	.label_1058
.label_1055:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1056
	test	r12b, r12b
	je	.label_1057
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	je	.label_1058
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 2
	jmp	.label_1056
.label_1065:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_1059
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_1060
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_1056
.label_1059:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x11
	mov	ebx, 0xffffffff
	jmp	.label_1056
.label_1057:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_1062
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_1056
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_1056
	jmp	.label_1058
.label_1062:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x20]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_1066
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_1061
.label_1058:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebx, eax
.label_1056:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1066:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x14
	jmp	.label_1056
.label_1061:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x15
	jmp	.label_1056
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dda0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_1068:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1067
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1068
	cmp	rbx, 0x7ff00001
	jb	.label_1067
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_1068
.label_1067:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40de00

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
	#Procedure 0x40de20

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
	jne	.label_1073
	mov	qword ptr [rsp + 8], r15
	mov	dword ptr [rsp + 0x10], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1070
	xor	ebp, ebp
	jmp	.label_1071
.label_1073:
	xor	ebp, ebp
	jmp	.label_1071
.label_1070:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rcx, [rsp + 0xa8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x10]
	mov	rdx, rbp
	call	__fxstatat
	test	eax, eax
	je	.label_1069
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_1069:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	dir_name
	mov	rbx, rax
	lea	rcx, [rsp + 0x18]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_1072
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_1072:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1074
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_1075
.label_1074:
	xor	ebp, ebp
.label_1075:
	mov	rdi, rbx
	call	free
.label_1071:
	mov	al, bpl
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df70

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
	je	.label_1079
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
	mov	qword ptr [rsp + 0x30], rax
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_1082
	nop	dword ptr [rax + rax]
.label_1078:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rdi, qword ptr [rsp + 0x20]
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	qword ptr [rbx + rcx], rax
	mov	rax, qword ptr [r14]
	mov	qword ptr [rbx + rcx + 8], rax
	inc	r12
	add	r15, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x40]
.label_1082:
	mov	qword ptr [rsp + 0x40], rbx
	nop	word ptr cs:[rax + rax]
.label_1090:
	mov	dword ptr [rbp], 0
	mov	rdi, r13
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_1081
	movzx	eax, byte ptr [r14 + 0x13]
	cmp	eax, 0x2e
	jne	.label_1085
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	mov	eax, 1
	jne	.label_1088
	mov	eax, 2
.label_1088:
	mov	al, byte ptr [r14 + rax + 0x13]
.label_1085:
	test	al, al
	je	.label_1090
	mov	rbx, r14
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rdx, rax
	inc	rdx
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_1093
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, r12
	jne	.label_1096
	mov	rdi, qword ptr [rsp + 0x30]
	test	rdi, rdi
	je	.label_1097
	movabs	rax, 0x555555555555555
	cmp	r12, rax
	jae	.label_1077
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rdx
	mov	rax, r12
	shr	rax, 1
	lea	rcx, [r12 + rax + 1]
	jmp	.label_1080
	nop	dword ptr [rax + rax]
.label_1093:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rax, rbx
	sub	rax, r15
	cmp	rax, rdx
	mov	rax, qword ptr [rsp + 0x38]
	ja	.label_1089
	mov	rbx, rdx
	add	rbx, r15
	jb	.label_1077
	test	rax, rax
	je	.label_1095
	movabs	rcx, 0x5555555555555554
	cmp	rbx, rcx
	jae	.label_1077
	mov	r14, rdx
	mov	rcx, rbx
	shr	rcx, 1
	lea	rbx, [rbx + rcx + 1]
	jmp	.label_1076
.label_1096:
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rdx
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_1078
.label_1097:
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 8], rdx
	test	r12, r12
	mov	rcx, r12
	mov	eax, 8
	cmove	rcx, rax
	mov	rax, rcx
	shr	rax, 0x3b
	jne	.label_1083
.label_1080:
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	shl	rsi, 4
	call	xrealloc
	mov	rbx, rax
	jmp	.label_1078
.label_1095:
	mov	r14, rdx
	test	rbx, rbx
	mov	ecx, 0x80
	cmove	rbx, rcx
	test	rbx, rbx
	js	.label_1094
.label_1076:
	mov	rdi, rax
	mov	rsi, rbx
	call	xrealloc
	mov	rdx, r14
.label_1089:
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [rax + r15]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r14, rdx
	call	memcpy
	add	r15, r14
	jmp	.label_1082
.label_1081:
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_1084
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r14d, r14d
	jmp	.label_1079
.label_1084:
	cmp	qword ptr [rsp + 0x28], 1
	mov	r14, qword ptr [rsp + 0x38]
	ja	.label_1091
	test	r12, r12
	je	.label_1092
	mov	edx, 0x10
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x10]
	call	qsort
	inc	r15
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1098:
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
	jne	.label_1098
	jmp	.label_1086
.label_1091:
	cmp	qword ptr [rsp + 0x40], r15
	jne	.label_1087
	lea	rsi, [r15 + 1]
	mov	rdi, r14
	call	xrealloc
	mov	r14, rax
	jmp	.label_1087
.label_1092:
	inc	r15
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	xor	r15d, r15d
.label_1086:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_1087:
	mov	byte ptr [r14 + r15], 0
.label_1079:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1077:
	call	xalloc_die
.label_1083:
	call	xalloc_die
.label_1094:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e2a0

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
	je	.label_1099
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_1099
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_1099:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e2f0

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e300

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
	.align	32
	#Procedure 0x40e320

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
	mov	r12, r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, esi
	mov	r14, rdi
	call	__errno_location
	mov	qword ptr [rsp + 0x30], rax
	mov	r15d, dword ptr [rax]
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	movsxd	r13, ebx
	lea	rax, [r13 + r12]
	cmp	rbp, rax
	jb	.label_1106
	mov	rax, rbp
	sub	rax, r12
	sub	rax, r13
	add	rax, r14
	mov	rcx, -1
	nop	dword ptr [rax + rax]
.label_1100:
	movzx	edx, byte ptr [rax + rcx + 1]
	inc	rcx
	cmp	edx, 0x58
	je	.label_1100
	cmp	rcx, r12
	jae	.label_1104
.label_1106:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x16
	mov	r12d, 0xffffffff
.label_1103:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1104:
	mov	dword ptr [rsp + 0xc], r15d
	mov	qword ptr [rsp + 0x18], r14
	xor	r14d, r14d
	xor	edi, edi
	mov	rsi, r12
	call	randint_all_new
	mov	r15, rax
	mov	rax, r12
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_1103
	sub	rbp, r13
	add	rbp, qword ptr [rsp + 0x18]
	mov	rcx, rax
	neg	rcx
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_1105:
	test	r13, r13
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_1101
	nop	word ptr [rax + rax]
.label_1107:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_1107
.label_1101:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x28]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_1108
	mov	rax, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x11
	mov	r12d, 0xffffffff
	jne	.label_1102
	inc	r14d
	cmp	r14d, 0x3a2f7
	jbe	.label_1105
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jmp	.label_1103
.label_1108:
	mov	eax, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	dword ptr [rcx], eax
	mov	ebx, eax
.label_1102:
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], ebx
	jmp	.label_1103
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e4a0
	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1109
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1110]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1109:
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e4e0

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
	#Procedure 0x40e500

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e510

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__lxstat
	mov	ebx, eax
	call	__errno_location
	test	ebx, ebx
	je	.label_1111
	cmp	dword ptr [rax], 0x4b
	jne	.label_1112
.label_1111:
	mov	dword ptr [rax], 0x11
.label_1112:
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e560
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1113
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1110]]
	lea	rdx, [rsp + 4]
	mov	r8d, 6
	call	try_tempname_len
	pop	rcx
	ret	
.label_1113:
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40e5a0
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e5b0

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
	ja	.label_1114
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
	jmp	.label_1115
.label_1114:
	mov	eax, ebx
.label_1115:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e600

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
	#Procedure 0x40e620

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
	mov	rbp, rdx
	mov	r14, qword ptr [rbp + 0x58]
	mov	r15, qword ptr [rbp + 0x60]
	mov	r12, qword ptr [rcx + 0x58]
	mov	r13d, dword ptr [rcx + 0x60]
	test	r8b, 1
	je	.label_1125
	cmp	r14, r12
	jne	.label_1133
	xor	ecx, ecx
	cmp	r15d, r13d
	je	.label_1123
.label_1133:
	lea	rax, [r12 - 2]
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jle	.label_1123
	lea	rax, [r14 - 2]
	mov	ecx, 1
	cmp	r12, rax
	jle	.label_1123
	mov	dword ptr [rsp + 0x2c], edi
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbx,  qword ptr [word ptr [rip + utimecmpat.ht]]
	test	rbx, rbx
	jne	.label_1116
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbx, rax
	mov	qword ptr [word ptr [rip + utimecmpat.ht]],  rbx
	test	rbx, rbx
	je	.label_1131
.label_1116:
	mov	rsi,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	test	rsi, rsi
	jne	.label_1132
	mov	edi, 0x10
	call	malloc
	mov	rsi, rax
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  rsi
	test	rsi, rsi
	je	.label_1137
	mov	dword ptr [rsi + 8], 0x77359400
	mov	byte ptr [rsi + 0xc], 0
.label_1132:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsi], rax
	mov	rdi, rbx
	call	hash_insert
	mov	r11, rax
	test	r11, r11
	je	.label_1117
	cmp	r11,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	jne	.label_1119
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jmp	.label_1119
.label_1117:
	mov	rbx,  qword ptr [word ptr [rip + utimecmpat.ht]]
	test	rbx, rbx
	je	.label_1126
.label_1137:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsp + 0xe8]
	mov	rdi, rbx
	call	hash_lookup
	mov	r11, rax
.label_1126:
	test	r11, r11
	jne	.label_1119
.label_1131:
	mov	dword ptr [rsp + 0xf0], 0x77359400
	mov	byte ptr [rsp + 0xf4], 0
	lea	r11, [rsp + 0xe8]
.label_1119:
	mov	r10, qword ptr [r11 + 8]
	movabs	rax, 0xff00000000
	test	r10, rax
	jne	.label_1140
	mov	rbx, qword ptr [rbp + 0x48]
	mov	rax, qword ptr [rbp + 0x50]
	movsxd	r8, dword ptr [rbp + 0x70]
	mov	ecx, ebx
	or	ecx, r14d
	or	ecx, dword ptr [rbp + 0x68]
	and	ecx, 1
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	edx, esi
	imul	rsi, r8, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	edi, r8d
	sub	edi, esi
	movsxd	rsi, r15d
	imul	rsi, rsi, 0x66666667
	mov	rbp, rsi
	shr	rbp, 0x3f
	sar	rsi, 0x22
	add	esi, ebp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	ebp, r15d
	sub	ebp, esi
	or	ebp, edx
	or	ebp, edi
	je	.label_1127
	mov	dword ptr [r11 + 8], 1
	mov	r10d, 1
.label_1124:
	mov	dword ptr [r11 + 8], r10d
	mov	byte ptr [r11 + 0xc], 1
.label_1140:
	cmp	r10d, 0x77359400
	sete	al
	movzx	eax, al
	not	rax
	and	r12, rax
	mov	eax, r13d
	cdq	
	idiv	r10d
	sub	r13d, edx
.label_1125:
	mov	ecx, 0xffffffff
	cmp	r14, r12
	jl	.label_1123
	mov	ecx, 1
	jg	.label_1123
	cmp	r15d, r13d
	mov	ecx, 0xffffffff
	jl	.label_1123
	setg	al
	movzx	ecx, al
.label_1123:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1127:
	mov	ebp, 0xa
	cmp	r10d, 0xa
	jle	.label_1139
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp + 0x10], r11
	mov	edx, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, r15d
.label_1122:
	mov	r9, rbp
	movsxd	rsi, edi
	imul	rdi, rsi, 0x66666667
	mov	rsi, rdi
	shr	rsi, 0x3f
	sar	rdi, 0x22
	add	edi, esi
	movsxd	rax, r8d
	imul	r8, rax, 0x66666667
	mov	rsi, r8
	shr	rsi, 0x3f
	sar	r8, 0x22
	add	r8d, esi
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	add	edx, esi
	movsxd	r11, edx
	imul	rsi, r11, 0x66666667
	mov	rbp, rsi
	shr	rbp, 0x3f
	sar	rsi, 0x22
	add	esi, ebp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	r11d, esi
	movsxd	rsi, r8d
	imul	rbp, rsi, 0x66666667
	mov	rbx, rbp
	shr	rbx, 0x3f
	sar	rbp, 0x22
	add	ebp, ebx
	add	ebp, ebp
	lea	ebx, [rbp + rbp*4]
	sub	esi, ebx
	or	esi, r11d
	movsxd	rbp, edi
	imul	rbx, rbp, 0x66666667
	mov	rax, rbx
	shr	rax, 0x3f
	sar	rbx, 0x22
	add	ebx, eax
	add	ebx, ebx
	lea	eax, [rbx + rbx*4]
	sub	ebp, eax
	or	ebp, esi
	jne	.label_1120
	mov	rbp, r9
	cmp	ebp, 0x3b9aca00
	je	.label_1130
	add	ebp, ebp
	lea	ebp, [rbp + rbp*4]
	cmp	ebp, r10d
	jl	.label_1122
	jmp	.label_1134
.label_1139:
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [r11 + 8], ebp
	jmp	.label_1141
.label_1120:
	mov	rbp, r9
.label_1134:
	mov	r11, qword ptr [rsp + 0x10]
	mov	dword ptr [r11 + 8], ebp
	cmp	ebp, 2
	mov	r10d, ebp
	mov	rbx, qword ptr [rsp + 8]
	jl	.label_1124
	jmp	.label_1141
.label_1130:
	xor	ecx, 1
	mov	ebp, 0x3b9aca00
	shl	ebp, cl
	mov	r11, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	mov	dword ptr [r11 + 8], ebp
.label_1141:
	cmp	ebp, 0x77359400
	sete	al
	movzx	edi, al
	mov	ecx, 1
	cmp	r12, r14
	jl	.label_1123
	cmp	r14, r12
	setne	al
	cmp	r13d, r15d
	jg	.label_1128
	test	al, al
	je	.label_1123
.label_1128:
	mov	rax, rdi
	not	rax
	and	rax, r12
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jl	.label_1123
	jne	.label_1136
	mov	eax, r13d
	cdq	
	idiv	ebp
	mov	eax, r13d
	sub	eax, edx
	cmp	r15d, eax
	jl	.label_1123
.label_1136:
	mov	qword ptr [rsp + 0xc0], rbx
	mov	rax, qword ptr [rsp + 0x18]
	cdqe	
	mov	qword ptr [rsp + 0xc8], rax
	or	rdi, r14
	mov	qword ptr [rsp + 0xd0], rdi
	movsxd	rax, ebp
	imul	rax, rax, 0x38e38e39
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x21
	add	eax, ecx
	add	eax, r15d
	cdqe	
	mov	qword ptr [rsp + 0xd8], rax
	lea	rdx, [rsp + 0xc0]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbx, r11
	call	utimensat
	mov	rdx, rbx
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_1123
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rcx, [rsp + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x2c]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, eax
	movsxd	rax, ebx
	mov	rcx, qword ptr [rsp + 0x88]
	xor	rcx, r14
	or	rcx, rax
	movsxd	rax, r15d
	mov	rdx, qword ptr [rsp + 0x90]
	xor	rdx, rax
	or	rdx, rcx
	je	.label_1121
	mov	qword ptr [rsp + 0xd0], r14
	mov	qword ptr [rsp + 0xd8], rax
	lea	rdx, [rsp + 0xc0]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x2c]
	mov	rsi, rbp
	call	utimensat
.label_1121:
	test	ebx, ebx
	je	.label_1129
	mov	ecx, 0xfffffffe
	jmp	.label_1123
.label_1129:
	mov	eax, dword ptr [rsp + 0x88]
	and	eax, 1
	neg	eax
	and	eax, 0x3b9aca00
	add	rax, qword ptr [rsp + 0x90]
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
	je	.label_1118
	mov	r10d, 1
	mov	r11, qword ptr [rsp + 0x10]
	jmp	.label_1124
.label_1118:
	mov	rbp, qword ptr [rsp + 0x18]
.label_1135:
	mov	r10d, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_1142
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, ebp
	je	.label_1138
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
	mov	r10d, ecx
	je	.label_1135
.label_1142:
	mov	r11, qword ptr [rsp + 0x10]
	jmp	.label_1124
.label_1138:
	mov	r10d, ebp
	mov	r11, qword ptr [rsp + 0x10]
	jmp	.label_1124
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ebb0

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
	#Procedure 0x40ebc0

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
	#Procedure 0x40ebd0
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	mov	ecx, 0x100
	jmp	utimensat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ebe0

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xf0
	mov	r14, rsi
	mov	r15d, edi
	xor	r12d, r12d
	test	rdx, rdx
	lea	rbx, [rsp + 0xd0]
	cmove	rbx, rdx
	je	.label_1180
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, rcx
	and	rdx, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1147
	cmp	rdx, 0x3ffffffe
	jne	.label_1156
.label_1147:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdi, rax
	and	rdi, 0xfffffffffffffffe
	cmp	rax, 0x3b9aca00
	jb	.label_1145
	cmp	rdi, 0x3ffffffe
	je	.label_1145
.label_1156:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	ebp, 0xffffffff
	jmp	.label_1154
.label_1145:
	xor	esi, esi
	cmp	rdx, 0x3ffffffe
	mov	edx, 0
	jne	.label_1166
	mov	qword ptr [rbx], 0
	cmp	rcx, 0x3ffffffe
	sete	cl
	movzx	edx, cl
	mov	esi, 1
.label_1166:
	cmp	rdi, 0x3ffffffe
	jne	.label_1173
	mov	qword ptr [rbx + 0x10], 0
	cmp	rax, 0x3ffffffe
	sete	al
	movzx	eax, al
	add	edx, eax
	mov	esi, 1
.label_1173:
	cmp	edx, 1
	sete	al
	movzx	r12d, al
	add	r12d, esi
	mov	ebp, 0xffffffff
	js	.label_1154
.label_1180:
	test	r15d, r15d
	jns	.label_1178
	test	r14, r14
	jne	.label_1178
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebp, 0xffffffff
	jmp	.label_1154
.label_1178:
	cmp	dword ptr [dword ptr [rip + utimensat_works_really]],  0
	js	.label_1174
	cmp	r12d, 2
	jne	.label_1143
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1146
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1151
.label_1146:
	mov	rsi, r14
	call	__xstat
.label_1151:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1154
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1155
	movups	xmm0, xmmword ptr [rsp + 0x88]
	movaps	xmmword ptr [rbx], xmm0
	mov	r12d, 3
	jmp	.label_1143
.label_1155:
	mov	r12d, 3
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_1143
	movups	xmm0, xmmword ptr [rsp + 0x98]
	movaps	xmmword ptr [rbx + 0x10], xmm0
.label_1143:
	test	r15d, r15d
	jns	.label_1165
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	mov	rdx, rbx
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1169
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1170
.label_1169:
	je	.label_1172
	call	__errno_location
.label_1170:
	cmp	dword ptr [rax], 0x26
	jne	.label_1172
.label_1165:
	test	r15d, r15d
	js	.label_1174
	mov	edi, r15d
	mov	rsi, rbx
	call	futimens
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1175
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1177
.label_1172:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1154
.label_1175:
	je	.label_1179
	call	__errno_location
.label_1177:
	cmp	dword ptr [rax], 0x26
	jne	.label_1179
.label_1174:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	r12d, r12d
	je	.label_1181
	cmp	r12d, 3
	je	.label_1182
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1148
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1149
.label_1181:
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_1150
	jmp	.label_1153
.label_1179:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1154
.label_1148:
	mov	rsi, r14
	call	__xstat
.label_1149:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1154
.label_1182:
	test	rbx, rbx
	je	.label_1158
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1160
	cmp	rax, 0x3fffffff
	jne	.label_1162
	cmp	qword ptr [rbx + 0x18], 0x3fffffff
	jne	.label_1164
	xor	r12d, r12d
	jmp	.label_1153
.label_1158:
	xor	r12d, r12d
	jmp	.label_1153
.label_1160:
	xor	ebp, ebp
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	je	.label_1154
	lea	rbp, [rbx + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0x88]
	movaps	xmmword ptr [rbx], xmm0
	jmp	.label_1171
.label_1162:
	lea	rbp, [rbx + 0x18]
	jmp	.label_1171
.label_1164:
	lea	rbp, [rbx + 0x18]
	mov	rdi, rbx
	call	gettime
.label_1171:
	mov	rax, qword ptr [rbp]
	cmp	rax, 0x3fffffff
	je	.label_1176
	cmp	rax, 0x3ffffffe
	jne	.label_1150
	mov	rax, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rcx
	jmp	.label_1150
.label_1176:
	add	rbx, 0x10
	mov	rdi, rbx
	call	gettime
.label_1150:
	mov	rax, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0x20], rax
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsp + 0xd8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x28], rdx
	mov	rax, qword ptr [rsp + 0xe0]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, rcx
	imul	qword ptr [rsp + 0xe8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	lea	r12, [rsp + 0x20]
.label_1153:
	test	r15d, r15d
	js	.label_1144
	xor	ebp, ebp
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, r12
	call	futimesat
	test	eax, eax
	je	.label_1167
	mov	ebp, 0xffffffff
	test	r14, r14
	je	.label_1154
	mov	rdi, r14
	mov	rsi, r12
	call	utimes
	jmp	.label_1168
.label_1144:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, r12
	call	futimesat
.label_1168:
	mov	ebp, eax
.label_1154:
	mov	eax, ebp
	add	rsp, 0xf0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1167:
	test	r12, r12
	je	.label_1154
	mov	rbx, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x18]
	cmp	rbx, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	movzx	eax, cl
	cmp	eax, 1
	jne	.label_1154
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	mov	esi, r15d
	call	__fxstat
	test	eax, eax
	jne	.label_1154
	lea	rdx, [r12 + 0x10]
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rax, qword ptr [rsp + 0x98]
	sub	rcx, qword ptr [r12]
	sub	rax, qword ptr [r12 + 0x10]
	movups	xmm0, xmmword ptr [r12]
	movaps	xmmword ptr [rsp], xmm0
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	xor	edx, edx
	cmp	rbx, 0x7a120
	jl	.label_1152
	cmp	rcx, 1
	jne	.label_1152
	xor	edx, edx
	cmp	qword ptr [rsp + 0x90], 0
	jne	.label_1152
	lea	rdx, [rsp]
	mov	qword ptr [rsp + 8], 0
.label_1152:
	cmp	r14, 0x7a120
	jl	.label_1157
	cmp	rax, 1
	jne	.label_1157
	cmp	qword ptr [rsp + 0xa0], 0
	je	.label_1159
.label_1157:
	test	rdx, rdx
	jne	.label_1161
	jmp	.label_1163
.label_1159:
	lea	rdx, [rsp]
	mov	qword ptr [rsp + 0x18], 0
.label_1161:
	xor	esi, esi
	mov	edi, r15d
	call	futimesat
.label_1163:
	xor	ebp, ebp
	jmp	.label_1154
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f090

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
	#Procedure 0x40f0b0

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xb0
	mov	r14, rdi
	xor	ebx, ebx
	test	rsi, rsi
	lea	r15, [rsp + 0x90]
	mov	r12, r15
	cmove	r12, rsi
	je	.label_1195
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rcx, qword ptr [r12 + 8]
	mov	rdx, rcx
	and	rdx, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1202
	cmp	rdx, 0x3ffffffe
	jne	.label_1184
.label_1202:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rdi, rax
	and	rdi, 0xfffffffffffffffe
	cmp	rax, 0x3b9aca00
	jb	.label_1186
	cmp	rdi, 0x3ffffffe
	je	.label_1186
.label_1184:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1203:
	mov	ebp, 0xffffffff
	jmp	.label_1187
.label_1186:
	xor	esi, esi
	cmp	rdx, 0x3ffffffe
	mov	edx, 0
	jne	.label_1188
	mov	qword ptr [r12], 0
	cmp	rcx, 0x3ffffffe
	sete	cl
	movzx	edx, cl
	mov	esi, 1
.label_1188:
	cmp	rdi, 0x3ffffffe
	jne	.label_1204
	mov	qword ptr [r12 + 0x10], 0
	cmp	rax, 0x3ffffffe
	sete	al
	movzx	eax, al
	add	edx, eax
	mov	esi, 1
.label_1204:
	cmp	edx, 1
	sete	al
	movzx	ebx, al
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1187
.label_1195:
	cmp	dword ptr [dword ptr [rip + lutimensat_works_really]],  0
	js	.label_1193
	cmp	ebx, 2
	jne	.label_1196
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1187
	cmp	qword ptr [r12 + 8], 0x3ffffffe
	jne	.label_1201
	movups	xmm0, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [r12], xmm0
	mov	ebx, 3
	jmp	.label_1196
.label_1201:
	mov	ebx, 3
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	jne	.label_1196
	movups	xmm0, xmmword ptr [rsp + 0x58]
	movaps	xmmword ptr [r12 + 0x10], xmm0
.label_1196:
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	mov	rdx, r12
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1192
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1194
.label_1192:
	je	.label_1197
	call	__errno_location
.label_1194:
	cmp	dword ptr [rax], 0x26
	jne	.label_1197
.label_1193:
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebx, ebx
	je	.label_1198
	cmp	ebx, 3
	je	.label_1199
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1187
.label_1199:
	xor	edx, edx
	test	r12, r12
	je	.label_1189
	mov	rax, qword ptr [r12 + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1205
	cmp	rax, 0x3fffffff
	jne	.label_1185
	xor	edx, edx
	cmp	qword ptr [r12 + 0x18], 0x3fffffff
	je	.label_1189
	lea	rbx, [r12 + 0x18]
	mov	rdi, r12
	call	gettime
	jmp	.label_1183
.label_1197:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  1
	jmp	.label_1187
.label_1198:
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	mov	rdx, r12
	jne	.label_1187
	jmp	.label_1189
.label_1205:
	xor	ebp, ebp
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	je	.label_1187
	lea	rbx, [r12 + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [r12], xmm0
	jmp	.label_1183
.label_1185:
	lea	rbx, [r12 + 0x18]
.label_1183:
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1190
	cmp	rax, 0x3ffffffe
	jne	.label_1191
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12 + 0x18], rcx
	mov	rdx, r15
	jmp	.label_1189
.label_1190:
	add	r12, 0x10
	mov	rdi, r12
	call	gettime
	mov	rdx, r15
	jmp	.label_1189
.label_1191:
	mov	rdx, r15
.label_1189:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xa000
	jne	.label_1200
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1203
.label_1200:
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebp, eax
.label_1187:
	mov	eax, ebp
	add	rsp, 0xb0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f3a0

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
	je	.label_1210
	mov	edx, OFFSET FLAT:.str_12
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1209
.label_1210:
	mov	edx, OFFSET FLAT:.str.1_10
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1209:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
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
	ja	.label_1214
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1206]]
.label_1354:
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
.label_1214:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_1213
.label_1355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
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
.label_1356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
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
.label_1357:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_1211
.label_1358:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_1212
.label_1359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_1208
.label_1360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
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
.label_1208:
	mov	qword ptr [rsp + 0x10], rdi
.label_1212:
	mov	qword ptr [rsp + 8], rsi
.label_1211:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_1215
.label_1362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_1213:
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
	jmp	.label_1207
.label_1361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
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
.label_1207:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_1215:
	call	__fprintf_chk
.label_1353:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f690
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1216:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1216
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f6c0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1219:
	cmp	r10d, 0x28
	ja	.label_1217
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1218
	nop	word ptr cs:[rax + rax]
.label_1217:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1218:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_1220
	inc	r9
	cmp	r9, 0xa
	jb	.label_1219
.label_1220:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f720

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_1221
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1221:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_1225:
	cmp	r8d, 0x28
	ja	.label_1222
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_1223
	nop	
.label_1222:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_1223:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_1224
	inc	r9
	cmp	r9, 0xa
	jb	.label_1225
.label_1224:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f820
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
	mov	ecx, OFFSET FLAT:.str.18
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
	.align	32
	#Procedure 0x40f8a0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	movzx	eax,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_1226
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	jmp	.label_1227
.label_1226:
	push	rax
	call	geteuid
	test	eax, eax
	sete	al
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_1227:
	test	al, al
	setne	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f8e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1228
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1229
	test	rax, rax
	je	.label_1228
.label_1229:
	pop	rbx
	ret	
.label_1228:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f920

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1230
	test	rax, rax
	je	.label_1231
.label_1230:
	pop	rbx
	ret	
.label_1231:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f940
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1232
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1233
	test	rbx, rbx
	jne	.label_1233
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1233:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1234
	test	rax, rax
	je	.label_1232
.label_1234:
	pop	rbx
	ret	
.label_1232:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f990

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1235
	test	rbx, rbx
	jne	.label_1235
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1235:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1237
	test	rax, rax
	je	.label_1236
.label_1237:
	pop	rbx
	ret	
.label_1236:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40f9c0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1238
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1240
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1239
.label_1238:
	test	rcx, rcx
	jne	.label_1243
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_1243:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1241
.label_1239:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1242
	test	rbx, rbx
	jne	.label_1242
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1242:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1244
	test	rax, rax
	je	.label_1240
.label_1244:
	pop	rbx
	ret	
.label_1240:
	call	xalloc_die
.label_1241:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fa60
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1245
	test	rax, rax
	je	.label_1246
.label_1245:
	pop	rbx
	ret	
.label_1246:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fa80
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1247
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1250
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1251
	call	free
	xor	eax, eax
	jmp	.label_1248
.label_1247:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1249
	mov	qword ptr [rsi], rbx
.label_1251:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1248
	test	rax, rax
	je	.label_1249
.label_1248:
	pop	rbx
	ret	
.label_1249:
	call	xalloc_die
.label_1250:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40faf0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_1253
	test	r14, r14
	je	.label_1252
.label_1253:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1252:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fb30
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1254
	call	rpl_calloc
	test	rax, rax
	je	.label_1254
	pop	rcx
	ret	
.label_1254:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fb60

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_1255
	test	r15, r15
	je	.label_1256
.label_1255:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1256:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fba0

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_1258
	test	r15, r15
	je	.label_1257
.label_1258:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1257:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fbf0

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
	.align	32
	#Procedure 0x40fc20

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	mov	edx, 0xa
	call	__getdelim
	test	rax, rax
	jle	.label_1259
	mov	rdi, qword ptr [rsp + 8]
	movzx	ecx, byte ptr [rax + rdi - 1]
	cmp	ecx, 0xa
	jne	.label_1261
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp + 8]
.label_1261:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_1260
.label_1259:
	xor	ebx, ebx
.label_1260:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	al, bl
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40fc90

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1262
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1263
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1263
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1262:
	mov	ecx, 1
.label_1263:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fce0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1264
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1264
	test	byte ptr [rbx + 1], 1
	je	.label_1264
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1264:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fd20

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_1265
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_1266
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1266:
	add	rax, rcx
.label_1265:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fd50

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
	jne	.label_1267
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1267
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1268
.label_1267:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1268:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1269
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1269:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40fdc0

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
	je	.label_1270
	cmp	r15, -2
	jb	.label_1270
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1270
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1270:
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
	#Procedure 0x40fe20

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fe30

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	mov	dword ptr [rcx], edx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40fe40
	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:

	cmp	esi, -1
	je	.label_1271
	mov	edi, esi
	mov	esi, edx
	jmp	fchmod
.label_1271:
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fe60

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	push	rax
	mov	rax, rsi
	mov	esi, dword ptr [rdi]
	cmp	edx, -1
	je	.label_1272
	mov	edi, edx
	call	fchmod
	jmp	.label_1273
.label_1272:
	mov	rdi, rax
	call	chmod
.label_1273:
	neg	eax
	sbb	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fe90

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_1275
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1274
	test	cl, cl
	jne	.label_1274
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1274
.label_1275:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1274
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1274:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fef0

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	call	opendir
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_1279
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	cmp	ecx, 2
	ja	.label_1276
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1278
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
	test	rbx, rbx
	jne	.label_1280
	mov	edi, ebp
	call	close
	jmp	.label_1277
.label_1276:
	mov	rbx, r14
	jmp	.label_1279
.label_1278:
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
.label_1277:
	xor	ebx, ebx
.label_1280:
	mov	rdi, r14
	call	closedir
	mov	dword ptr [r15], r12d
.label_1279:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ff80

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
	#Procedure 0x40ff90
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ffb0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1282
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1283
	cmp	byte ptr [rax + 1], 0
	je	.label_1281
.label_1283:
	mov	esi, OFFSET FLAT:.str.1_12
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1282
.label_1281:
	xor	ebx, ebx
.label_1282:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40fff0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_1284
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_1285:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	mov	cl, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_1285
.label_1284:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410020

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
	je	.label_1286
	mov	rax, rcx
.label_1286:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410050

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1287
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1287:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_1289
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1288
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1290
.label_1288:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1290:
	mov	ecx, dword ptr [rax]
.label_1289:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x410130
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
	#Procedure 0x410150

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1291
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
.label_1291:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410180
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410190

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	lea	r12, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1294:
	cmp	r14, r13
	jae	.label_1293
	mov	rax, r14
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1292:
	shl	rax, 8
	or	rax, 0xff
	inc	rdx
	cmp	rax, r13
	jb	.label_1292
	mov	rdi, r15
	mov	rsi, r12
	call	randread
	mov	rax, r12
.label_1296:
	mov	rcx, rbx
	shl	rcx, 8
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	inc	rax
	cmp	r14, r13
	jb	.label_1296
.label_1293:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	je	.label_1297
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	r14, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rbx, rdx
	dec	rdi
	cmp	rcx, r14
	mov	r14, rdi
	ja	.label_1294
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, rbx
	jmp	.label_1295
.label_1297:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_1295:
	mov	rax, rcx
	add	rsp, 0x18
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
	#Procedure 0x410290
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
	#Procedure 0x4102b0

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
	mov	esi, 0x18
	mov	rdi, rbx
	call	explicit_bzero
	mov	rdi, rbx
	call	free
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
	#Procedure 0x410300

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_1298
	xor	ebx, ebx
	test	r14, r14
	je	.label_1303
	mov	esi, OFFSET FLAT:.str_13
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1302
.label_1303:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_1300
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_1302
.label_1298:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_1302
.label_1300:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:.str.3_4
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1301
	cmp	r12, 0x800
	mov	edx, 0x800
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	mov	r12, rax
	mov	edi, ebx
	call	close
	xor	r13d, r13d
	test	r12, r12
	js	.label_1301
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_1299
.label_1301:
	mov	eax, 0x800
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	call	gettimeofday
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_1299
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getpid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_1299
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + r12]
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_1299
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_1299
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp], eax
	add	r12, r14
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcpy
.label_1299:
	mov	rdi, r14
	call	isaac_seed
.label_1302:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410550
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410560
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410570

	.globl randread
	.type randread, @function
randread:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	test	rcx, rcx
	je	.label_1308
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	cmp	rbp, rbx
	je	.label_1306
.label_1305:
	sub	rbx, rbp
	add	r15, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14]
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	cmp	rbx, rbp
	jne	.label_1305
	jmp	.label_1306
.label_1308:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, rbx
	jae	.label_1307
	lea	rbp, [r14 + 0x20]
	mov	rdi, r15
	mov	rdx, r12
	call	memcpy
	add	r15, r12
	sub	rbx, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1309:
	cmp	rbx, 0x800
	jb	.label_1304
	mov	rdi, rbp
	mov	rsi, r15
	call	isaac_refill
	add	r15, 0x800
	add	rbx, -0x800
	jne	.label_1309
	jmp	.label_1310
.label_1304:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_1307:
	mov	rdi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
.label_1310:
	mov	qword ptr [r14 + 0x18], r12
.label_1306:
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
	#Procedure 0x410690

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
	je	.label_1311
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1311:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4106d0

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
	je	.label_1312
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_1314
	mov	esi, OFFSET FLAT:.str.1_14
	jmp	.label_1313
.label_1314:
	mov	esi, OFFSET FLAT:.str.2_5
.label_1313:
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
.label_1312:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x410730

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	mov	rax, qword ptr [rdi + 0x800]
	mov	rdx, qword ptr [rdi + 0x810]
	inc	rdx
	mov	rcx, qword ptr [rdi + 0x808]
	add	rcx, rdx
	mov	qword ptr [rdi + 0x810], rdx
	lea	r9, [rdi + 0x400]
	mov	r8, rsi
	mov	r10, rdi
	nop	
.label_1315:
	mov	r11, rax
	shl	r11, 0x15
	xor	r11, rax
	not	r11
	add	r11, qword ptr [r10 + 0x400]
	mov	rdx, qword ptr [r10]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r11
	mov	qword ptr [r10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8], rdx
	mov	rax, r11
	shr	rax, 5
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x408]
	mov	rcx, qword ptr [r10 + 8]
	mov	r11d, ecx
	and	r11d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	mov	qword ptr [r10 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 8], rcx
	mov	r11, rax
	shl	r11, 0xc
	xor	r11, rax
	add	r11, qword ptr [r10 + 0x410]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, r11
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8 + 0x10], rdx
	mov	rax, r11
	shr	rax, 0x21
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x418]
	mov	rcx, qword ptr [r10 + 0x18]
	mov	r11d, ecx
	and	r11d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	mov	qword ptr [r10 + 0x18], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 0x18], rcx
	add	r10, 0x20
	add	r8, 0x20
	cmp	r10, r9
	jb	.label_1315
	add	rsi, 0x400
	lea	r8, [rdi + 0x800]
	nop	dword ptr [rax]
.label_1316:
	mov	r10, rax
	shl	r10, 0x15
	xor	r10, rax
	not	r10
	add	r10, qword ptr [r9 - 0x400]
	mov	rdx, qword ptr [r9]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r10
	mov	qword ptr [r9], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi], rdx
	mov	rax, r10
	shr	rax, 5
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3f8]
	mov	rcx, qword ptr [r9 + 8]
	mov	r10d, ecx
	and	r10d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 8], rcx
	mov	r10, rax
	shl	r10, 0xc
	xor	r10, rax
	add	r10, qword ptr [r9 - 0x3f0]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, r10
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r9 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rax, r10
	shr	rax, 0x21
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3e8]
	mov	rcx, qword ptr [r9 + 0x18]
	mov	r10d, ecx
	and	r10d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 0x18], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 0x18], rcx
	add	r9, 0x20
	add	rsi, 0x20
	cmp	r9, r8
	jb	.label_1316
	mov	qword ptr [rdi + 0x800], rax
	mov	qword ptr [rdi + 0x808], rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410980

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	movabs	r8, 0xb9f8b322c73ac862
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1317:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	shl	rdx, 9
	mov	r15, rdx
	xor	r15, r10
	sub	rsi, r15
	mov	r10, r8
	shr	r8, 0x17
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	lea	r12, [rcx + rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	xor	r8, r10
	mov	r10, rcx
	add	r10, rax
	sub	r14, r8
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	xor	rcx, r10
	mov	r11, r14
	add	r11, r15
	sub	r9, rcx
	lea	r10, [r9 + r15]
	shl	r15, 0xe
	mov	rax, r15
	xor	rax, r13
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	add	rbx, 8
	cmp	rbx, 0x100
	jl	.label_1317
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1318:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	add	r8, rsi
	sub	rcx, r11
	lea	r9, [rcx + rsi]
	shl	rsi, 0xf
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	xor	rdx, r12
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_1318
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410be0

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
	#Procedure 0x410bf0

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
	#Procedure 0x410c00

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1319
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1321
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1319
.label_1321:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1319
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1320
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1320:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1319:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x410c80

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1322
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1322:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_1331
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1325
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1328
	test	esi, esi
	jne	.label_1331
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1332
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1333
.label_1331:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1336
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1328
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1340
.label_1325:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1327
.label_1328:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1342
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1335
.label_1342:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1335:
	mov	edx, dword ptr [rax]
.label_1334:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_1327:
	mov	ebp, eax
.label_1324:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1340:
	cmp	eax, 6
	jne	.label_1336
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1337
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1339
.label_1336:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1341
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1326
.label_1332:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1333:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_1334
.label_1337:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1339:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1338
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1323
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1323
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1324
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_1330
.label_1323:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1324
.label_1341:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1326:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1327
.label_1338:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_1330:
	test	al, al
	je	.label_1324
	test	ebp, ebp
	js	.label_1324
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1329
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1324
.label_1329:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1324
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410f60

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x410f80

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
	je	.label_1343
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1347
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1344
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1345
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1343
.label_1345:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1346
.label_1347:
	mov	rax, rbx
	jmp	.label_1343
.label_1344:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1346:
	xor	eax, eax
.label_1343:
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