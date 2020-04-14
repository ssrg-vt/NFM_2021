	.section	.text
	.align	32
	#Procedure 0x4026a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	nop	
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebp, edi
	mov	rsp, rsp
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_8
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	rsi, rcx
	nop	
	mov	rcx, rdx
	lea	rsi, [rsi]
	mov	r8, rdx
	lea	rsi, [rsi]
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.44
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	lea	rsi, [rsi]
	call	setlocale
	test	rax, rax
	je	.label_7
	nop	
	mov	esi, OFFSET FLAT:.str.55
	mov	rsp, rsp
	mov	edx, 3
	mov	rdi, rax
	mov	rsp, rsp
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	je	.label_7
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.56
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.19
	xor	eax, eax
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.19
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.59
	lea	rsi, [rsi]
	xor	eax, eax
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b80

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x108
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	mov	edi, OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.22
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.21
	mov	rbp, rbp
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xb0]
	mov	rbp, rbp
	call	cp_options_default
	nop	
	mov	byte ptr [rsp + 0xc4], 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb4], 1
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xc5], 0
	mov	byte ptr [rsp + 0xc6], 0
	nop	
	mov	byte ptr [rsp + 0xc7], 0
	mov	dword ptr [rsp + 0xb8], 4
	mov	byte ptr [rsp + 0xc8], 0
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xc9], 0
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xd2], 0
	mov	rsp, rsp
	mov	word ptr [rsp + 0xd0], 0
	nop	
	mov	dword ptr [rsp + 0xcc], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xd9], 0
	mov	dword ptr [rsp + 0xd5], 0
	mov	byte ptr [rsp + 0xd3], 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xd4], 0
	nop	
	mov	byte ptr [rsp + 0xda], 0
	nop	
	mov	qword ptr [rsp + 0xbc], 2
	mov	byte ptr [rsp + 0xdf], 0
	mov	dword ptr [rsp + 0xdb], 0
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.60
	lea	rdi, [rdi]
	call	getenv
	mov	rbp, rbp
	test	rax, rax
	setne	byte ptr [rsp + 0xe0]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0xf0], xmm0
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	nop	
	xor	r13d, r13d
	mov	rbp, rbp
	xor	ecx, ecx
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x100], rax
	jmp	.label_16
.label_12:
	mov	byte ptr [rsp + 0xda], 1
	mov	rbp, rbp
	mov	cl, r12b
	nop	dword ptr [rax + rax]
.label_16:
	mov	r12b, cl
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.23
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	lea	rsi, [rsi]
	call	getopt_long
	cmp	eax, 0x47
	jle	.label_27
	add	eax, -0x48
	lea	rsi, [rsi]
	cmp	eax, 0x40
	ja	.label_21
	mov	cl, 1
	nop	
	jmp	qword ptr [word ptr [+ (rax * 8) + label_31]]
.label_1440:
	mov	dword ptr [rsp + 0xb4], 3
	mov	cl, r12b
	jmp	.label_16
.label_1441:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb4], 4
	mov	cl, r12b
	mov	rsp, rsp
	jmp	.label_16
.label_1443:
	mov	bpl, 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x18], rax
	nop	
	mov	cl, r12b
	nop	
	jmp	.label_16
.label_1444:
	mov	al, 1
	mov	qword ptr [rsp + 0x100], rax
	mov	rsp, rsp
	mov	cl, r12b
	jmp	.label_16
.label_1445:
	cmp	qword ptr [word ptr [rip + optarg]],  0
	nop	
	mov	cl, r12b
	je	.label_16
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	call	error
	mov	cl, r12b
	jmp	.label_16
.label_1446:
	mov	dword ptr [rsp + 0xb4], 2
	nop	
	mov	byte ptr [rsp + 0xd2], 1
	mov	rbp, rbp
	mov	word ptr [rsp + 0xcd], 0x101
	nop	
	mov	byte ptr [rsp + 0xcf], 1
	mov	byte ptr [rsp + 0xd4], 1
	mov	byte ptr [rsp + 0xd7], 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd9], 1
	nop	
	jmp	.label_12
.label_1447:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	test	rax, rax
	cmovne	r13, rax
	mov	rsp, rsp
	mov	bpl, 1
	lea	rdi, [rdi]
	mov	cl, r12b
	jmp	.label_16
.label_1448:
	mov	byte ptr [rsp + 0xd2], 1
.label_1442:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb4], 2
	nop	
	mov	cl, r12b
	jmp	.label_16
.label_1449:
	mov	byte ptr [rsp + 0xc6], 1
	lea	rdi, [rdi]
	mov	cl, r12b
	jmp	.label_16
.label_1450:
	mov	dword ptr [rsp + 0xb8], 3
	mov	cl, r12b
	jmp	.label_16
.label_1451:
	mov	byte ptr [rsp + 0xc7], 1
	lea	rsi, [rsi]
	mov	cl, r12b
	lea	rsi, [rsi]
	jmp	.label_16
.label_1452:
	mov	dword ptr [rsp + 0xb8], 2
	mov	rbp, rbp
	mov	cl, r12b
	mov	rbp, rbp
	jmp	.label_16
.label_1453:
	mov	byte ptr [rsp + 0xdc], 1
	mov	rbp, rbp
	mov	cl, r12b
	jmp	.label_16
.label_1454:
	test	r15, r15
	mov	rbp, rbp
	jne	.label_9
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rdx, [rsp + 0x20]
	mov	rbp, rbp
	mov	edi, 1
	call	__xstat
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_20
	nop	
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rsp + 0x38]
	cmp	eax, 0x4000
	jne	.label_23
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	cl, r12b
	mov	rbp, rbp
	jmp	.label_16
.label_1455:
	mov	byte ptr [rsp + 0xdd], 1
	mov	cl, r12b
	jmp	.label_16
.label_1456:
	mov	byte ptr [rsp + 0xde], 1
	mov	cl, r12b
	jmp	.label_16
.label_1457:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xcc], 1
	mov	cl, r12b
	jmp	.label_16
.label_1458:
	mov	byte ptr [rsp + 0xd3], 0
	mov	cl, r12b
	jmp	.label_16
.label_1459:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0xb0]
	nop	
	xor	edx, edx
	mov	rbp, rbp
	call	decode_preserve_arg
	mov	cl, r12b
	lea	rdi, [rdi]
	jmp	.label_16
.label_1460:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + parents_option]],  1
	mov	cl, r12b
	nop	
	jmp	.label_16
.label_1461:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_38
	mov	rsp, rsp
	lea	rsi, [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	edx, 1
	call	decode_preserve_arg
	mov	rsp, rsp
	jmp	.label_10
.label_38:
	mov	word ptr [rsp + 0xcd], 0x101
	mov	byte ptr [rsp + 0xcf], 1
.label_10:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xd4], 1
	mov	rbp, rbp
	mov	cl, r12b
	jmp	.label_16
.label_1464:
	mov	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rsi, [rsi]
	jmp	.label_16
.label_1462:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	test	rsi, rsi
	je	.label_26
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.25
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:reflink_type_string
	mov	ecx, OFFSET FLAT:reflink_type
	mov	r8d, 4
	lea	rdi, [rdi]
	call	__xargmatch_internal
	nop	
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + reflink_type]]
	mov	dword ptr [rsp + 0xe8], eax
	mov	cl, r12b
	jmp	.label_16
.label_1463:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.24
	mov	edx, OFFSET FLAT:sparse_type_string
	mov	ecx, OFFSET FLAT:sparse_type
	mov	r8d, 4
	call	__xargmatch_internal
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + sparse_type]]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xbc], eax
	mov	rsp, rsp
	mov	cl, r12b
	jmp	.label_16
.label_1465:
	mov	byte ptr [rsp + 0xc5], 1
	nop	
	mov	cl, r12b
	mov	rsp, rsp
	jmp	.label_16
.label_26:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 2
	mov	cl, r12b
	nop	
	jmp	.label_16
.label_27:
	nop	
	cmp	eax, -1
	jne	.label_13
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_15
	mov	al, byte ptr [rsp + 0xdc]
	test	al, al
	jne	.label_19
.label_15:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	cmp	eax, 2
	lea	rsi, [rsi]
	jne	.label_22
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xdd], 0
	test	bpl, bpl
	setne	cl
	mov	rsp, rsp
	je	.label_25
	cmp	eax, 2
	jne	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	rsp, rsp
	jmp	.label_28
.label_22:
	nop	
	test	bpl, bpl
	mov	rsp, rsp
	setne	cl
.label_25:
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0xe8], 2
	jne	.label_32
	lea	rdi, [rdi]
	movabs	rdx, 0xffffffff00000000
	and	rax, rdx
	mov	rbp, rbp
	movabs	rdx, 0x200000000
	cmp	rax, rdx
	lea	rdi, [rdi]
	jne	.label_33
.label_32:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	cl, cl
	je	.label_37
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, r13
	nop	
	call	xget_version
.label_37:
	mov	dword ptr [rsp + 0xb0], eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	call	set_simple_backup_suffix
	lea	rsi, [rsi]
	mov	al, byte ptr [rsp + 0xda]
	cmp	dword ptr [rsp + 0xb4], 1
	lea	rdi, [rdi]
	jne	.label_17
	mov	rbp, rbp
	test	al, al
	je	.label_11
	mov	cl, byte ptr [rsp + 0xc7]
	test	cl, cl
	jne	.label_11
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb4], 2
	mov	rsp, rsp
	jmp	.label_17
.label_11:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb4], 4
.label_17:
	nop	
	test	al, al
	je	.label_24
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xc4], r12b
.label_24:
	lea	rsi, [rsi]
	mov	al, byte ptr [rsp + 0xd1]
	mov	rbp, rbp
	test	al, al
	lea	rdi, [rdi]
	je	.label_30
	cmp	byte ptr [rsp + 0xd6], 0
	nop	
	jne	.label_29
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xd5], 0
.label_29:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xd5], 0
	nop	
	je	.label_30
	test	al, al
	mov	rsp, rsp
	jne	.label_14
.label_30:
	cmp	byte ptr [rsp + 0xd6], 0
	jne	.label_34
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xd8], 0
	jne	.label_36
	call	hash_init
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	lea	rdi, [rdi]
	lea	rsi, [r14 + rax*8]
	mov	rax, qword ptr [rsp + 0x100]
	test	al, al
	lea	rdi, [rdi]
	setne	al
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	lea	r8, [rsp + 0xb0]
	mov	edi, ebx
	mov	rdx, r15
	mov	rbp, rbp
	call	do_copy
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	xor	eax, 1
	lea	rdi, [rdi]
	add	rsp, 0x108
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_13:
	mov	rbp, rbp
	cmp	eax, 0xffffff7d
	lea	rdi, [rdi]
	je	.label_18
	nop	
	cmp	eax, 0xffffff7e
	jne	.label_21
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_18:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.33
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.31
	nop	
	mov	r9d, OFFSET FLAT:.str.32
	xor	eax, eax
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	call	exit
.label_21:
	mov	edi, 1
	call	usage
.label_9:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.26
	jmp	.label_35
.label_20:
	nop	
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	edi, 4
	nop	
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
.label_23:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.28
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_19:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	jmp	.label_28
.label_33:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.36
.label_28:
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	jmp	.label_35
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	rbp, rbp
	jmp	.label_35
.label_14:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.38
.label_35:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034f0

	.globl decode_preserve_arg
	.type decode_preserve_arg, @function
decode_preserve_arg:
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	push	rax
	mov	r12d, edx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rbp, rbp
	call	xstrdup
	mov	r14, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r14
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.99
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.100
	mov	rsp, rsp
	test	r12b, r12b
	lea	rdi, [rdi]
	cmovne	r15, rcx
	mov	rsp, rsp
	mov	r13b, r12b
	mov	rsp, rsp
	xor	r13b, 1
	nop	dword ptr [rax + rax]
.label_41:
	mov	rbp, r14
	nop	
	mov	esi, 0x2c
	nop	
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	r14d, 0
	je	.label_40
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rsi, [rsi]
	inc	r14
	nop	
	mov	byte ptr [rax], 0
.label_40:
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:decode_preserve_arg.preserve_args
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_vals
	mov	rsp, rsp
	mov	r8d, 4
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbp
	call	__xargmatch_internal
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + decode_preserve_arg.preserve_vals]]
	mov	rbp, rbp
	cmp	rax, 6
	ja	.label_43
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_39]]
.label_1488:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x20], r13b
	nop	
	jmp	.label_42
.label_1489:
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0x1f], r12b
	lea	rdi, [rdi]
	jmp	.label_42
.label_1490:
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x1d], r12b
	jmp	.label_42
.label_1491:
	mov	byte ptr [rbx + 0x22], r12b
	jmp	.label_42
.label_1492:
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x26], r12b
	mov	byte ptr [rbx + 0x25], r12b
	mov	rbp, rbp
	jmp	.label_42
.label_1493:
	mov	byte ptr [rbx + 0x27], r12b
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x28], r12b
	jmp	.label_42
.label_1494:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x1f], r12b
	mov	byte ptr [rbx + 0x1d], r12b
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x22], r12b
	nop	
	mov	byte ptr [rbx + 0x20], r13b
	mov	byte ptr [rbx + 0x27], r12b
	nop	dword ptr [rax]
.label_42:
	test	r14, r14
	jne	.label_41
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	jmp	free
.label_43:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403670

	.globl do_copy
	.type do_copy, @function
do_copy:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0xd8
	mov	r12, r8
	mov	qword ptr [rbp - 0x50], r12
	mov	r14, rsi
	mov	qword ptr [rbp - 0x68], r14
	mov	rsp, rsp
	mov	ebx, edi
	mov	byte ptr [rbp - 0x31], 0
	mov	rsp, rsp
	mov	sil, 1
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x15], 0
	jne	.label_54
	cmp	byte ptr [r12 + 0x16], 0
	lea	rsi, [rsi]
	setne	sil
.label_54:
	mov	rbp, rbp
	test	rdx, rdx
	mov	rsp, rsp
	sete	al
	movzx	eax, al
	cmp	eax, ebx
	jge	.label_66
	lea	rsi, [rsi]
	test	cl, cl
	nop	
	je	.label_69
	test	rdx, rdx
	nop	
	jne	.label_70
	lea	rsi, [rsi]
	cmp	ebx, 3
	jge	.label_72
	movsxd	rcx, ebx
	mov	rdi, qword ptr [r14 + rcx*8 - 8]
	movzx	ecx, sil
	lea	rsi, [rbp - 0xf8]
	nop	
	lea	rdx, [rbp - 0x31]
	mov	rsp, rsp
	call	target_directory_operand
.label_58:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + parents_option]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	je	.label_46
	lea	rdi, [rdi]
	mov	rax, r14
	mov	r14, qword ptr [rax]
	mov	r15, qword ptr [rax + 8]
	cmp	byte ptr [r12 + 0x16], 0
	nop	
	je	.label_51
	mov	ebx, dword ptr [r12]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rsi, [rsi]
	je	.label_51
	mov	rdi, r14
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_51
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x31]
	test	al, al
	lea	rsi, [rsi]
	jne	.label_51
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rbp - 0xe0]
	cmp	eax, 0x8000
	lea	rdi, [rdi]
	jne	.label_51
	mov	edi, 0xffffff9c
	mov	rbp, rbp
	mov	rsi, r15
	mov	edx, ebx
	call	find_backup_file_name
	mov	r15, rax
	movups	xmm0, xmmword ptr [r12 + 0x40]
	movups	xmmword ptr [word ptr [rip + label_60]],  xmm0
	movups	xmm0, xmmword ptr [r12]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmm3, xmmword ptr [r12 + 0x30]
	mov	rbp, rbp
	movups	xmmword ptr [word ptr [rip + label_61]],  xmm3
	mov	rsp, rsp
	movups	xmmword ptr [word ptr [rip + label_62]],  xmm2
	movups	xmmword ptr [word ptr [rip + label_63]],  xmm1
	mov	rsp, rsp
	movups	xmmword ptr [word ptr [rip + do_copy.x_tmp]],  xmm0
	mov	r12d, OFFSET FLAT:do_copy.x_tmp
	mov	dword ptr [dword ptr [rip + do_copy.x_tmp]],  0
.label_51:
	lea	r8, [rbp - 0x30]
	xor	edx, edx
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	copy
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xfc], eax
	lea	rsi, [rsi]
	jmp	.label_48
.label_69:
	nop	
	test	rdx, rdx
	jne	.label_50
	cmp	ebx, 2
	lea	rdi, [rdi]
	jl	.label_58
	movsxd	r15, ebx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + r15*8 - 8]
	dec	r15
	nop	
	movzx	ecx, sil
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xf8]
	lea	rdx, [rbp - 0x31]
	call	target_directory_operand
	test	al, al
	je	.label_55
	nop	
	mov	rdx, qword ptr [r14 + r15*8]
	lea	rdi, [rdi]
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_58
	dec	ebx
.label_50:
	mov	dword ptr [rbp - 0x5c], ebx
	cmp	ebx, 2
	jl	.label_59
	nop	
	mov	qword ptr [rbp - 0x40], rdx
	mov	rbp, rbp
	mov	rdi, r12
	lea	rdi, [rdi]
	call	dest_info_init
	nop	
	mov	rdi, r12
	call	src_info_init
	mov	rsp, rsp
	jmp	.label_65
.label_59:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rdx
	mov	al, 1
	mov	dword ptr [rbp - 0xfc], eax
	test	ebx, ebx
	mov	rbp, rbp
	jle	.label_48
.label_65:
	mov	rbp, rbp
	mov	al, 1
	mov	dword ptr [rbp - 0xfc], eax
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_57
.label_56:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	xstrdup
	lea	rdi, [rdi]
	jmp	.label_73
	nop	
.label_57:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], 0
	mov	r15, qword ptr [r14 + r13*8]
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + remove_trailing_slashes]]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_44
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strip_trailing_slashes
.label_44:
	mov	al,  byte ptr [byte ptr [rip + parents_option]]
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	je	.label_49
	mov	rbp, rbp
	call	strlen
	mov	rbx, rsp
	lea	rdx, [rax + 1]
	mov	rbp, rbp
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rbx, rax
	mov	rsp, rbx
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r15
	nop	
	mov	qword ptr [rbp - 0x48], r15
	call	memcpy
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	strip_trailing_slashes
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x58]
	call	file_name_concat
	mov	rbp, rbp
	mov	r15, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	sub	rsi, r15
	mov	rbp, rbp
	cmp	byte ptr [r12 + 0x2e], 0
	mov	edx, OFFSET FLAT:.str.105
	nop	
	jne	.label_64
	nop	
	xor	edx, edx
.label_64:
	nop	
	mov	rdi, r15
	lea	rcx, [rbp - 0x30]
	lea	r8, [rbp - 0x31]
	mov	r9, r12
	lea	rsi, [rsi]
	call	make_dir_parents_private
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_68
	mov	dword ptr [rbp - 0xfc], 0
	lea	rdi, [rdi]
	jmp	.label_71
	nop	dword ptr [rax]
.label_49:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], r15
	mov	rsp, rsp
	call	last_component
	nop	
	mov	r15, rax
	mov	rdi, r15
	nop	
	call	strlen
	nop	
	mov	r12, rax
	mov	rsp, rsp
	mov	r14, rsp
	lea	rdx, [r12 + 1]
	add	r12, 0x10
	and	r12, 0xfffffffffffffff0
	mov	rbx, r14
	sub	rbx, r12
	mov	rsp, rbx
	nop	
	neg	r12
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strip_trailing_slashes
	movzx	eax, byte ptr [r14 + r12]
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_52
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx + 1]
	mov	rbp, rbp
	cmp	eax, 0x2e
	jne	.label_52
	nop	
	cmp	byte ptr [rbx + 2], 0
	je	.label_56
	nop	word ptr cs:[rax + rax]
.label_52:
	nop	
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	file_name_concat
.label_73:
	mov	r15, rax
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0x50]
	mov	r14, qword ptr [rbp - 0x68]
.label_68:
	movzx	edx, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r15
	mov	rcx, r12
	lea	r8, [rbp - 0xfd]
	call	copy
	mov	bl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	and	bl, al
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + parents_option]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	jne	.label_67
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	sub	rsi, r15
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rcx, r12
	mov	rsp, rsp
	call	re_protect
	and	bl, al
.label_67:
	mov	al, bl
	mov	dword ptr [rbp - 0xfc], eax
.label_71:
	movzx	eax,  byte ptr [byte ptr [rip + parents_option]]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_47
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_47
	nop	word ptr cs:[rax + rax]
.label_53:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rdi + 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rbx
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	jne	.label_53
.label_47:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	inc	r13
	mov	eax, dword ptr [rbp - 0x5c]
	cmp	r13d, eax
	jne	.label_57
.label_48:
	mov	eax, dword ptr [rbp - 0xfc]
	lea	rsp, [rbp - 0x28]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_55:
	mov	rsp, rsp
	cmp	ebx, 3
	lea	rsi, [rsi]
	jl	.label_58
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.28
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, r14
	mov	r14, rax
	mov	rsi, qword ptr [rcx + r15*8]
	lea	rsi, [rsi]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rsp, rsp
	call	error
.label_66:
	xor	edi, edi
	test	ebx, ebx
	jg	.label_45
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.101
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	nop	
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_46:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_70:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.103
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.104
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14 + 0x10]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_45:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.102
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	rsi, qword ptr [r14]
	lea	rsi, [rsi]
	mov	edi, 4
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdx, rbx
	nop	
	call	error
	mov	edi, 1
	nop	
	call	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d60

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	r12, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	__xstat
	nop	
	test	eax, eax
	je	.label_79
	nop	
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	je	.label_74
	lea	rdi, [rdi]
	test	r14d, r14d
	jne	.label_76
.label_79:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x4000
	sete	al
	lea	rsi, [rsi]
	jmp	.label_78
.label_74:
	mov	byte ptr [r12], 1
	jmp	.label_75
.label_76:
	test	r15b, r15b
	nop	
	je	.label_77
	mov	dword ptr [rbp + 0x18], 0
.label_75:
	mov	rsp, rsp
	xor	eax, eax
.label_78:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_77:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e40

	.globl make_dir_parents_private
	.type make_dir_parents_private, @function
make_dir_parents_private:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x148
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], r8
	mov	r13, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x168], r13
	nop	
	mov	qword ptr [rbp - 0x160], rdx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	call	strlen
	mov	r12, rsp
	lea	rdx, [rax + 1]
	mov	rsp, rsp
	add	rax, 0x10
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffff0
	lea	rdi, [rdi]
	sub	r12, rax
	mov	rbp, rbp
	mov	rsp, r12
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, rbx
	call	memcpy
	mov	rdi, r12
	nop	
	call	dir_len
	nop	
	mov	r15, rax
	lea	rax, [r15 + 0x10]
	and	rax, 0xfffffffffffffff0
	mov	rbx, rsp
	mov	rsp, rsp
	sub	rbx, rax
	mov	rsp, rbx
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, r15
	mov	rsp, rsp
	call	memcpy
	mov	byte ptr [r15 + rbx], 0
	lea	rsi, [rsi]
	mov	qword ptr [r13], 0
	nop	
	lea	rdx, [rbp - 0xb8]
	mov	edi, 1
	mov	rsi, rbx
	nop	
	call	__xstat
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_104
	nop	
	lea	rax, [r12 + r14]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x170], rax
	lea	rsi, [rsi]
	lea	rdi, [r14 + r12 - 1]
	nop	word ptr cs:[rax + rax]
.label_107:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	mov	rbp, rbp
	inc	rdi
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	je	.label_107
	mov	esi, 0x2f
	call	strchr
	mov	r15, rax
	mov	r13b, 1
	test	r15, r15
	je	.label_81
	nop	dword ptr [rax]
.label_91:
	mov	byte ptr [r15], 0
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdx, [rbp - 0xb8]
	call	__xstat
	lea	rsi, [rsi]
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jne	.label_84
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	byte ptr [rax + 0x1d], 0
	jne	.label_84
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	ax, word ptr [rax + 0x1e]
	test	al, al
	jne	.label_84
	xor	edx, edx
	movzx	eax, ax
	cmp	eax, 0x100
	mov	rsp, rsp
	jb	.label_103
	nop	
.label_84:
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x170]
	lea	rdx, [rbp - 0x158]
	call	__xstat
	test	eax, eax
	je	.label_111
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_83
	jmp	.label_87
	nop	dword ptr [rax + rax]
.label_111:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	ecx, 0xf000
	mov	rsp, rsp
	and	eax, ecx
	lea	rdi, [rdi]
	mov	ebx, 0x14
	cmp	eax, 0x4000
	jne	.label_87
.label_83:
	mov	edi, 0xa8
	nop	
	call	xmalloc
	mov	rsp, rsp
	mov	r13, rax
	mov	rsp, rsp
	mov	edx, 0x90
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	lea	rsi, [rbp - 0x158]
	call	memcpy
	mov	rax, r15
	lea	rsi, [rsi]
	sub	rax, r12
	mov	qword ptr [r13 + 0x98], rax
	mov	byte ptr [r13 + 0x90], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x168]
	nop	
	mov	rax, qword ptr [rcx]
	mov	qword ptr [r13 + 0xa0], rax
	mov	qword ptr [rcx], r13
	test	r14d, r14d
	je	.label_96
	mov	edx, dword ptr [r13 + 0x18]
	mov	rsp, rsp
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_96:
	mov	rbp, rbp
	xor	edx, edx
.label_103:
	mov	rsp, rsp
	test	r14d, r14d
	nop	
	setne	al
	movzx	ecx, al
	nop	
	mov	rdi, qword ptr [rbp - 0x170]
	mov	rsi, r12
	nop	
	mov	r8, qword ptr [rbp - 0xc0]
	nop	
	call	set_process_security_ctx
	test	al, al
	mov	rbp, rbp
	je	.label_109
	nop	
	test	r14d, r14d
	je	.label_110
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	byte ptr [rax], 1
	mov	eax, dword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	mov	r14d, 0x3f
	mov	rbx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x1d], 0
	jne	.label_80
	mov	rbp, rbp
	mov	r14d, 0x12
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x1e], 0
	jne	.label_80
	mov	rbp, rbp
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_80:
	mov	rbp, rbp
	and	r14d, eax
	lea	rsi, [rsi]
	mov	ecx, 0x1ff
	cmp	byte ptr [rbx + 0x20], 0
	lea	rsi, [rsi]
	jne	.label_95
	mov	ecx, eax
.label_95:
	mov	esi, r14d
	xor	esi, 0xfff
	and	esi, ecx
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	mkdir
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_97
	mov	rsi, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_99
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rcx, r12
	call	__printf_chk
.label_99:
	mov	edi, 1
	nop	
	mov	rsi, r12
	lea	rdx, [rbp - 0xb8]
	call	__lxstat
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_106
	cmp	byte ptr [rbx + 0x1e], 0
	mov	rsp, rsp
	jne	.label_98
	mov	eax, dword ptr [rbp - 0xa0]
	mov	ecx, eax
	not	ecx
	lea	rsi, [rsi]
	test	r14d, ecx
	je	.label_108
	call	cached_umask
	mov	rbp, rbp
	not	eax
	and	r14d, eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa0]
.label_108:
	mov	ecx, eax
	not	ecx
	nop	
	test	r14d, ecx
	nop	
	jne	.label_85
	mov	ecx, eax
	and	ecx, 0x1c0
	cmp	ecx, 0x1c0
	lea	rsi, [rsi]
	je	.label_98
.label_85:
	or	eax, r14d
	mov	dword ptr [r13 + 0x18], eax
	mov	rsp, rsp
	mov	byte ptr [r13 + 0x90], 1
	nop	dword ptr [rax]
.label_98:
	mov	esi, dword ptr [rbp - 0xa0]
	mov	eax, esi
	lea	rdi, [rdi]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_90
	lea	rsi, [rsi]
	or	esi, 0x1c0
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	call	chmod
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_94
.label_90:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_82
	jmp	.label_101
	nop	word ptr cs:[rax + rax]
.label_110:
	nop	
	mov	eax, dword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	ecx, 0xf000
	nop	
	and	eax, ecx
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_102
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0xc0]
.label_101:
	mov	al, byte ptr [rbx + 0x25]
	mov	cl, byte ptr [rbx + 0x21]
	nop	
	or	cl, al
	lea	rsi, [rsi]
	je	.label_82
	lea	rsi, [rsi]
	test	al, al
	setne	al
	movzx	esi, al
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rcx, rbx
	call	set_file_security_ctx
	mov	rbp, rbp
	test	al, al
	jne	.label_82
	cmp	byte ptr [rbx + 0x26], 0
	jne	.label_86
	nop	word ptr [rax + rax]
.label_82:
	mov	qword ptr [rbp - 0xc0], rbx
	mov	byte ptr [r15], 0x2f
	nop	dword ptr [rax + rax]
.label_88:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15 + 1]
	inc	r15
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	je	.label_88
	mov	esi, 0x2f
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_91
	nop	
	jmp	.label_92
.label_104:
	mov	rbp, rbp
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_93
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	byte ptr [rax], 0
.label_92:
	lea	rsi, [rsi]
	mov	r13b, 1
	jmp	.label_81
.label_93:
	xor	r13d, r13d
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.111
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	jmp	.label_105
.label_109:
	xor	r13d, r13d
	jmp	.label_81
.label_87:
	xor	r13d, r13d
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x170]
	call	quotearg_style
	mov	rcx, rax
	nop	
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebx
.label_105:
	mov	rdx, r14
	call	error
	jmp	.label_81
.label_97:
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.109
	nop	
	jmp	.label_89
.label_106:
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.108
	jmp	.label_89
.label_102:
	xor	r13d, r13d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.111
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	edi, 4
	nop	
	mov	rsi, r12
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_100
.label_94:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
.label_89:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r14d
.label_100:
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_81:
	mov	al, r13b
	lea	rsp, [rbp - 0x28]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_86:
	xor	r13d, r13d
	jmp	.label_81
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404510

	.globl re_protect
	.type re_protect, @function
re_protect:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x28
	mov	r15, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	call	strlen
	mov	r12, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	nop	
	and	rax, 0xfffffffffffffff0
	lea	rsi, [rsi]
	sub	r12, rax
	mov	rsp, r12
	nop	
	mov	rdi, r12
	mov	rsi, r14
	call	memcpy
	mov	al, 1
	nop	
	test	rbx, rbx
	je	.label_113
	add	r13, r12
	lea	rdi, [rdi]
	lea	r14, [rbp - 0x50]
	nop	
.label_122:
	nop	
	mov	rax, qword ptr [rbx + 0x98]
	lea	rsi, [rsi]
	mov	byte ptr [r12 + rax], 0
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x1f], 0
	nop	
	je	.label_112
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx + 0x58]
	movaps	xmmword ptr [rbp - 0x40], xmm0
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	call	utimens
	test	eax, eax
	jne	.label_114
.label_112:
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_117
	mov	esi, dword ptr [rbx + 0x1c]
	mov	edx, dword ptr [rbx + 0x20]
	lea	rsi, [rsi]
	mov	rdi, r12
	call	lchown
	test	eax, eax
	mov	rbp, rbp
	je	.label_117
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	chown_failure_ok
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_121
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbx + 0x20]
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	mov	rdi, r12
	call	lchown
.label_117:
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_118
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbx + 0x18]
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	mov	rdi, r13
	nop	
	mov	rdx, r12
	lea	rdi, [rdi]
	call	copy_acl
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_115
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_118:
	nop	
	cmp	byte ptr [rbx + 0x90], 0
	je	.label_115
	nop	
	mov	esi, dword ptr [rbx + 0x18]
	nop	
	mov	rdi, r12
	call	chmod
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_120
.label_115:
	mov	rax, qword ptr [rbx + 0x98]
	mov	rsp, rsp
	mov	byte ptr [r12 + rax], 0x2f
	mov	rbx, qword ptr [rbx + 0xa0]
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_122
	mov	al, 1
	mov	rsp, rsp
	jmp	.label_113
.label_114:
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
	jmp	.label_116
.label_119:
	xor	eax, eax
	nop	
	jmp	.label_113
.label_121:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	rsp, rsp
	jmp	.label_116
.label_120:
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
.label_116:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, r14d
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	xor	eax, eax
.label_113:
	lea	rsp, [rbp - 0x28]
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404750

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	mov	rbx, r8
	mov	r15, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_124
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_125
	cmp	byte ptr [rbx + 0x26], 0
	lea	rsi, [rsi]
	je	.label_127
.label_125:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	xor	r14d, r14d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r12
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x26], 0
	jne	.label_126
	nop	
	jmp	.label_123
.label_124:
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_123
	mov	rbp, rbp
	xor	cl, 1
	lea	rsi, [rsi]
	jne	.label_123
.label_127:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_123:
	lea	rdi, [rdi]
	mov	r14b, 1
.label_126:
	mov	al, r14b
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404830

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	lea	rsi, [rsi]
	je	.label_128
	mov	rsp, rsp
	cmp	byte ptr [rcx + 0x26], 0
	mov	rsp, rsp
	je	.label_129
.label_128:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, r14
	lea	rdi, [rdi]
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 0x5f
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	jmp	.label_130
.label_129:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_130:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048d0

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	lea	rsi, [rsi]
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	edi, 0x3d
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:triple_hash
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:triple_compare
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	nop	
	mov	qword ptr [rbx + 0x40], rax
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404910

	.globl src_info_init
	.type src_info_init, @function
src_info_init:
	nop	
	push	rbx
	nop	
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:triple_hash_no_name
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	mov	rsp, rsp
	call	hash_initialize
	mov	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404940

	.globl copy
	.type copy, @function
copy:
	lea	rdi, [rdi]
	sub	rsp, 0x28
	nop	
	mov	rax, rcx
	nop	
	mov	qword ptr [word ptr [rip + top_level_src_name]],  rdi
	mov	qword ptr [word ptr [rip + top_level_dst_name]],  rsi
	mov	byte ptr [rsp + 0x27], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
	nop	
	mov	qword ptr [rsp + 0x10], r8
	lea	rcx, [rsp + 0x27]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], 1
	movzx	edx, dl
	nop	
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9, rax
	call	copy_internal
	add	rsp, 0x28
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049a0

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x3a8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x1e0], rcx
	mov	r14d, edx
	mov	qword ptr [rbp - 0xf0], rsi
	nop	
	mov	r12, rdi
	mov	r13, qword ptr [rbp + 0x28]
	nop	
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	r15d, dword ptr [r9 + 0x34]
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_224
	lea	rsi, [rsi]
	mov	rbx, r9
	mov	rbp, rbp
	test	r15d, r15d
	jns	.label_233
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsp, rsp
	mov	r8d, 1
	mov	rsi, r12
	mov	rcx, qword ptr [rbp - 0xf0]
	call	renameatu
	xor	r15d, r15d
	nop	
	test	eax, eax
	nop	
	je	.label_233
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
.label_233:
	test	r15d, r15d
	sete	r14b
	test	r13, r13
	nop	
	je	.label_246
	nop	
	mov	byte ptr [r13], r14b
.label_246:
	mov	rbp, rbp
	mov	r9, rbx
.label_224:
	mov	rsp, rsp
	test	r15d, r15d
	nop	
	je	.label_252
	cmp	r15d, 0x11
	mov	rsp, rsp
	jne	.label_255
	lea	rsi, [rsi]
	cmp	dword ptr [r9 + 8], 2
	lea	rsi, [rsi]
	je	.label_256
	lea	rsi, [rsi]
	jmp	.label_255
.label_252:
	cmp	byte ptr [r9 + 0x31], 0
	mov	rsp, rsp
	jne	.label_256
.label_255:
	mov	rsp, rsp
	test	r15d, r15d
	nop	
	mov	rbx, r12
	cmove	rbx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	cmp	dword ptr [r9 + 4], 2
	lea	rdi, [rdi]
	mov	r13, r9
	lea	rdx, [rbp - 0x3d0]
	mov	rsp, rsp
	mov	edi, 1
	mov	rsi, rbx
	jne	.label_450
	call	__lxstat
	jmp	.label_277
.label_450:
	lea	rsi, [rsi]
	call	__xstat
.label_277:
	test	eax, eax
	mov	r9, r13
	je	.label_280
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.12_0
.label_272:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	r12, rax
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r15d
	mov	rbp, rbp
	mov	rdx, r12
	nop	
	call	error
.label_170:
	mov	rsp, rsp
	mov	al, r13b
	lea	rsp, [rbp - 0x28]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	pop	rbp
	nop	
	ret	
.label_280:
	mov	ecx, dword ptr [rbp - 0x3b8]
	mov	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_297
	cmp	byte ptr [r9 + 0x2a], 0
	mov	r13, qword ptr [rbp + 0x28]
	nop	
	jne	.label_256
	mov	rbp, rbp
	cmp	byte ptr [r9 + 0x19], 0
	mov	rbp, rbp
	je	.label_342
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	jmp	.label_308
.label_297:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp + 0x28]
.label_256:
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp + 0x10]
	lea	rsi, [rsi]
	test	dl, dl
	mov	rbp, rbp
	je	.label_229
	mov	rdi, qword ptr [r9 + 0x48]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_229
	mov	eax, ecx
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_314
	mov	dword ptr [rbp - 0x104], ecx
	lea	rdi, [rdi]
	jmp	.label_318
.label_314:
	mov	dword ptr [rbp - 0x104], ecx
	cmp	dword ptr [r9], 0
	lea	rdi, [rdi]
	je	.label_322
.label_318:
	lea	rsi, [rsi]
	mov	bl, dl
	mov	r13, r9
.label_176:
	nop	
	lea	rdx, [rbp - 0x3d0]
	mov	rsi, r12
	call	record_file
	mov	r9, r13
	mov	r13, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x104]
.label_229:
	mov	qword ptr [rbp - 0x208], r12
	mov	eax, dword ptr [r9 + 4]
	mov	r12b, 1
	nop	
	cmp	eax, 4
	lea	rsi, [rsi]
	je	.label_329
	cmp	eax, 3
	sete	r12b
	nop	
	and	r12b, dl
.label_329:
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rbp, rbp
	test	r14b, r14b
	je	.label_330
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rax
.label_268:
	test	dl, dl
	lea	rdi, [rdi]
	je	.label_337
	cmp	qword ptr [r9 + 0x40], 0
	je	.label_337
	mov	rsp, rsp
	cmp	byte ptr [r9 + 0x18], 0
	lea	rsi, [rsi]
	jne	.label_337
	mov	rbp, rbp
	cmp	dword ptr [r9], 0
	jne	.label_337
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], r14
	mov	r14, r9
	nop	
	mov	r13d, ecx
	test	r8b, r8b
	jne	.label_341
	lea	rbx, [rbp - 0x1d0]
	mov	edi, 1
	nop	
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, rbx
	call	__lxstat
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_201
	jmp	.label_350
.label_330:
	cmp	r15d, 0x11
	lea	rsi, [rsi]
	jne	.label_351
	lea	rsi, [rsi]
	cmp	dword ptr [r9 + 8], 2
	jne	.label_351
	xor	r8d, r8d
	lea	rdi, [rdi]
	xor	r14d, r14d
	jmp	.label_354
.label_351:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1f0], r12b
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x104], ecx
	mov	rbp, rbp
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x8000
	mov	rdx, qword ptr [rbp - 0xf0]
	je	.label_356
	mov	bl, 1
	cmp	byte ptr [r9 + 0x14], 0
	je	.label_361
	nop	
	cmp	eax, 0x4000
	je	.label_361
	nop	
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_361
.label_356:
	nop	
	mov	bl, 1
	cmp	byte ptr [r9 + 0x18], 0
	jne	.label_361
	cmp	byte ptr [r9 + 0x2c], 0
	jne	.label_361
	cmp	byte ptr [r9 + 0x17], 0
	lea	rdi, [rdi]
	jne	.label_361
	nop	
	cmp	dword ptr [r9], 0
	jne	.label_361
	nop	
	cmp	byte ptr [r9 + 0x15], 0
	setne	bl
.label_361:
	mov	r12, r9
	lea	rsi, [rsi]
	movzx	r8d, bl
	shl	r8d, 8
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x340]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 0xffffff9c
	lea	rsi, [rsi]
	call	__fxstatat
	test	eax, eax
	je	.label_205
	mov	r14, r12
	nop	
	mov	r13d, dword ptr [rbp - 0x104]
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	mov	al, 1
	nop	
	cmp	ebx, 2
	lea	rsi, [rsi]
	je	.label_381
	mov	r12, qword ptr [rbp - 0xf0]
	cmp	ebx, 0x28
	jne	.label_248
	cmp	byte ptr [r14 + 0x16], 0
	mov	rsp, rsp
	je	.label_248
	xor	eax, eax
.label_381:
	xor	r8d, r8d
	mov	rbp, rbp
	cmp	r15d, 0x11
	mov	rbp, rbp
	mov	ecx, 0
	mov	qword ptr [rbp - 0xf8], rcx
	nop	
	mov	ecx, r13d
	lea	rsi, [rsi]
	mov	r9, r14
	lea	rsi, [rsi]
	mov	r13b, byte ptr [rbp + 0x10]
	mov	dl, r13b
	mov	r14, rax
	nop	
	mov	r13, qword ptr [rbp + 0x28]
	mov	r12b, byte ptr [rbp - 0x1f0]
	mov	rsp, rsp
	jne	.label_268
	jmp	.label_354
.label_205:
	xor	r14d, r14d
	mov	rsp, rsp
	mov	r9, r12
	mov	r13, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	r12b, byte ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	r8, rbx
	mov	ecx, dword ptr [rbp - 0x104]
.label_354:
	cmp	dword ptr [r9 + 8], 2
	nop	
	jne	.label_377
	xor	edi, edi
	jmp	.label_146
.label_377:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x104], ecx
	mov	rax, qword ptr [rbp - 0x3c8]
	cmp	rax, qword ptr [rbp - 0x338]
	mov	rbp, rbp
	jne	.label_415
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], r14
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0x340]
	mov	rbp, rbp
	jne	.label_422
	mov	rbp, rbp
	mov	dil, 1
	cmp	byte ptr [r9 + 0x17], 0
	nop	
	jne	.label_171
	nop	
	jmp	.label_439
.label_248:
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r15, rax
	nop	
	mov	edi, 4
	mov	rsi, r12
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
.label_407:
	mov	rdx, r15
	call	error
	mov	rsp, rsp
	jmp	.label_170
.label_415:
	mov	qword ptr [rbp - 0x40], r14
	xor	edi, edi
	mov	rsp, rsp
	jmp	.label_439
.label_322:
	lea	rdi, [rdi]
	mov	bl, dl
	mov	r13, r9
	mov	rsp, rsp
	lea	rdx, [rbp - 0x3d0]
	mov	rbp, rbp
	mov	rsi, r12
	call	seen_file
	test	al, al
	je	.label_445
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.15_0
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	call	error
	nop	
	mov	r13b, 1
	jmp	.label_170
.label_422:
	xor	edi, edi
.label_439:
	cmp	dword ptr [r9 + 4], 2
	lea	rsi, [rsi]
	jne	.label_456
	lea	rsi, [rsi]
	mov	rbx, r8
	mov	eax, dword ptr [rbp - 0x3b8]
	mov	ecx, eax
	and	ecx, 0xf000
	lea	rsi, [rbp - 0x3d0]
	lea	rdi, [rdi]
	lea	r15, [rbp - 0x340]
	lea	rsi, [rsi]
	cmp	ecx, 0xa000
	mov	rbp, rbp
	jne	.label_291
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x328]
	mov	rbp, rbp
	cmp	ecx, 0xa000
	lea	rdi, [rdi]
	jne	.label_291
	mov	r15d, edi
	mov	r14, r9
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xf0]
	call	same_name
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_134
	nop	
	mov	r9, r14
	cmp	dword ptr [r9], 0
	lea	rsi, [rsi]
	jne	.label_469
	lea	rdi, [rdi]
	test	r15b, r15b
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	rsp, rsp
	je	.label_132
	cmp	byte ptr [r9 + 0x18], 0
	mov	dil, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x104]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	jne	.label_134
	mov	rbp, rbp
	jmp	.label_146
.label_456:
	test	dil, dil
	je	.label_150
	mov	rsp, rsp
	mov	rbx, r8
	mov	r14, r9
	lea	r15, [rbp - 0x1d0]
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rdx, r15
	mov	rbp, rbp
	call	__lxstat
	nop	
	test	eax, eax
	jne	.label_160
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0xd8]
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	call	__lxstat
	test	eax, eax
	je	.label_169
.label_160:
	xor	edi, edi
	mov	r9, r14
	mov	rbp, rbp
	mov	r8, rbx
	lea	rdi, [rdi]
	jmp	.label_171
.label_445:
	mov	rdi, qword ptr [r13 + 0x48]
	lea	rdi, [rdi]
	jmp	.label_176
.label_342:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.13_0
.label_308:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	nop	
	xor	r13d, r13d
.label_410:
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_309:
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
	lea	rsi, [rsi]
	jmp	.label_170
.label_150:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	jmp	.label_171
.label_341:
	mov	rsp, rsp
	lea	rbx, [rbp - 0x340]
.label_350:
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	nop	
	jne	.label_201
	nop	
	mov	rdi, qword ptr [r14 + 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	seen_file
	nop	
	test	al, al
	lea	rsi, [rsi]
	je	.label_201
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26_0
	jmp	.label_213
.label_201:
	mov	ecx, r13d
	mov	rsp, rsp
	mov	r9, r14
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x40]
.label_337:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1f0], r12b
	mov	qword ptr [rbp - 0x40], r14
	nop	
	cmp	byte ptr [r9 + 0x2e], 0
	lea	rdi, [rdi]
	je	.label_221
	nop	
	mov	eax, ecx
	nop	
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x4000
	je	.label_221
	mov	al, byte ptr [r9 + 0x18]
	test	al, al
	jne	.label_221
	nop	
	mov	rdi, qword ptr [rbp - 0x208]
	nop	
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	r14, r9
	mov	ebx, ecx
	lea	rsi, [rsi]
	call	emit_verbose
	lea	rdi, [rdi]
	mov	ecx, ebx
	mov	r9, r14
.label_221:
	mov	r14, r9
	mov	rbp, rbp
	mov	r13d, ecx
	mov	rbp, rbp
	xor	edx, edx
	test	r15d, r15d
	je	.label_265
	mov	ebx, r13d
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_236
	nop	
	mov	al, byte ptr [r14 + 0x2a]
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_236
	mov	rax, qword ptr [rbp - 0x3d0]
	nop	
	mov	rcx, qword ptr [rbp - 0x3c8]
	mov	rbp, rbp
	cmp	byte ptr [rbp + 0x10], 0
	lea	rdi, [rdi]
	je	.label_242
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	.label_247
.label_236:
	cmp	byte ptr [r14 + 0x18], 0
	lea	rdi, [rdi]
	je	.label_254
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x3c0], 1
	mov	rsp, rsp
	jne	.label_254
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x3d0]
	nop	
	mov	rdi, qword ptr [rbp - 0x3c8]
	mov	rbp, rbp
	call	src_to_dest_lookup
	mov	rsp, rsp
	jmp	.label_264
.label_254:
	mov	rsp, rsp
	xor	edx, edx
	cmp	byte ptr [r14 + 0x22], 0
	mov	rsp, rsp
	je	.label_265
	xor	edx, edx
	cmp	byte ptr [r14 + 0x17], 0
	mov	rsp, rsp
	jne	.label_265
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x3c0], 1
	mov	rsp, rsp
	ja	.label_177
	mov	ecx, dword ptr [r14 + 4]
	mov	rbp, rbp
	cmp	ecx, 3
	sete	al
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	cmp	ecx, 4
	lea	rsi, [rsi]
	je	.label_177
	and	al, byte ptr [rbp + 0x10]
	je	.label_265
.label_177:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x3d0]
	mov	rsi, qword ptr [rbp - 0x3c8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
.label_247:
	call	remember_copied
	jmp	.label_264
.label_242:
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, rax
	call	src_to_dest_lookup
.label_264:
	mov	r12, rax
	lea	rsi, [rsi]
	xor	edx, edx
	test	r12, r12
	je	.label_265
	nop	
	cmp	ebx, 0x4000
	jne	.label_294
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	mov	rsi, r12
	call	same_name
	test	al, al
	mov	rsp, rsp
	je	.label_298
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r13, rax
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	nop	
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, r13
	mov	rcx, r15
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 1
	mov	rbp, rbp
	jmp	.label_323
.label_294:
	movzx	ecx, byte ptr [r14 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x1f0]
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	call	create_hard_link
	lea	rdi, [rdi]
	mov	r10, r14
	mov	rsp, rsp
	mov	r13b, 1
	test	al, al
	mov	rdx, r12
	jne	.label_170
	jmp	.label_173
.label_298:
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rdi, [rdi]
	call	same_name
	test	al, al
	mov	rsp, rsp
	je	.label_334
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28_0
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + top_level_src_name]]
	mov	rsp, rsp
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	mov	r13b, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x28], 0
	je	.label_170
	mov	al, byte ptr [r14 + 0x18]
	test	al, al
	je	.label_170
	mov	rax, qword ptr [rbp + 0x28]
	mov	byte ptr [rax], 1
	mov	rsp, rsp
	jmp	.label_170
.label_334:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r14 + 4]
	mov	rsp, rsp
	cmp	ecx, 3
	sete	al
	mov	rsp, rsp
	cmp	ecx, 4
	je	.label_349
	mov	cl, byte ptr [rbp + 0x10]
	lea	rdi, [rdi]
	and	al, cl
	jne	.label_349
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.29_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xf0]
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, r15
	mov	rbp, rbp
	mov	r8, rbx
	nop	
	call	error
.label_323:
	mov	rdx, r12
	nop	
	mov	r10, r14
	jmp	.label_173
.label_349:
	lea	rdi, [rdi]
	mov	rdx, r12
.label_265:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x18], 0
	mov	r12, qword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	je	.label_373
	lea	rdi, [rdi]
	cmp	r15d, 0x11
	jne	.label_378
	mov	rbx, rdx
	mov	rsp, rsp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	rename
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_383
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
	mov	rsp, rsp
	mov	rdx, rbx
.label_378:
	cmp	r15d, 0x16
	lea	rdi, [rdi]
	je	.label_386
	cmp	r15d, 0x12
	nop	
	je	.label_389
	test	r15d, r15d
	jne	.label_390
.label_383:
	lea	rdi, [rdi]
	cmp	byte ptr [r14 + 0x2e], 0
	mov	r13, qword ptr [rbp - 0xf0]
	nop	
	je	.label_393
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xf8]
	call	emit_verbose
.label_393:
	mov	rbp, rbp
	cmp	byte ptr [r14 + 0x21], 0
	nop	
	mov	rbx, qword ptr [rbp + 0x28]
	je	.label_409
	lea	rsi, [rsi]
	cmp	byte ptr [r14 + 0x23], 0
	je	.label_413
	lea	rsi, [rsi]
	cmp	byte ptr [r14 + 0x26], 0
	je	.label_417
.label_413:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, r13
	call	quotearg_n_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 0x5f
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r15
	call	error
	mov	rsp, rsp
	jmp	.label_409
.label_389:
	mov	qword ptr [rbp - 0x130], rdx
	lea	rdi, [rdi]
	mov	ebx, r13d
	nop	
	and	ebx, 0xf000
	lea	rdi, [rdi]
	cmp	ebx, 0x4000
	lea	rdi, [rdi]
	jne	.label_436
	nop	
	mov	r12, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rdi, r12
	call	rmdir
	lea	rsi, [rsi]
	jmp	.label_442
.label_386:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.31_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	nop	
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	nop	
	call	quotearg_n_style
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	nop	
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	mov	r8, rbx
	lea	rsi, [rsi]
	call	error
	nop	
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	r13b, 1
	mov	rbp, rbp
	jmp	.label_170
.label_390:
	lea	rsi, [rsi]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32_0
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, r12
	mov	r12, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r15d
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	mov	rsp, rsp
	jmp	.label_151
.label_436:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbp - 0xf0]
	mov	rdi, r12
	call	unlink
.label_442:
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_135
	call	__errno_location
	nop	
	mov	r15d, dword ptr [rax]
	lea	rdi, [rdi]
	cmp	r15d, 2
	jne	.label_140
.label_135:
	nop	
	cmp	ebx, 0x4000
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	nop	
	je	.label_147
	mov	al, byte ptr [r14 + 0x2e]
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	mov	rbx, r12
	je	.label_154
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	__printf_chk
	mov	r12, qword ptr [rbp - 0x208]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], rbx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf8]
	call	emit_verbose
	jmp	.label_179
.label_140:
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.33_0
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x208]
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 4
	nop	
	mov	rdx, r12
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	r8, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	mov	rcx, rbx
.label_151:
	lea	rsi, [rsi]
	call	error
	mov	rsi, qword ptr [rbp - 0x3d0]
	nop	
	mov	rdi, qword ptr [rbp - 0x3c8]
	call	forget_created
	lea	rsi, [rsi]
	jmp	.label_170
.label_417:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
.label_409:
	mov	rbp, rbp
	mov	rsi, r13
	mov	rsp, rsp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_217
	mov	byte ptr [rbx], 1
.label_217:
	mov	rsp, rsp
	mov	r13b, 1
	cmp	byte ptr [rbp + 0x10], 0
	lea	rsi, [rsi]
	je	.label_170
	nop	
	cmp	byte ptr [r14 + 0x31], 0
	mov	rbp, rbp
	jne	.label_170
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x40]
	lea	rdx, [rbp - 0x3d0]
	mov	rsp, rsp
	call	record_file
	lea	rsi, [rsi]
	jmp	.label_170
.label_147:
	mov	qword ptr [rbp - 0xf0], r12
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbp - 0x208]
	jmp	.label_179
.label_154:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf0], rbx
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0x208]
.label_179:
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x130]
.label_373:
	mov	rbp, rbp
	cmp	byte ptr [r14 + 0x2b], 0
	mov	rsp, rsp
	mov	eax, r13d
	nop	
	mov	r8, r14
	lea	rdi, [rdi]
	je	.label_326
	lea	rdi, [rdi]
	mov	eax, dword ptr [r8 + 0x10]
.label_326:
	mov	ebx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], rdx
	mov	r15d, 0x3f
	cmp	byte ptr [r8 + 0x1d], 0
	nop	
	mov	r14, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jne	.label_240
	mov	rbp, rbp
	mov	eax, r13d
	and	eax, 0xf000
	nop	
	xor	ecx, ecx
	cmp	eax, 0x4000
	mov	r15d, 0x12
	lea	rdi, [rdi]
	cmovne	r15d, ecx
.label_240:
	nop	
	movzx	ecx, r14b
	nop	
	mov	dword ptr [rbp - 0x110], ecx
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], r8
	call	set_process_security_ctx
	nop	
	test	al, al
	je	.label_262
	mov	rbp, rbp
	and	r15d, ebx
	mov	esi, r13d
	and	esi, 0xf000
	lea	rdi, [rdi]
	cmp	esi, 0x4000
	lea	rsi, [rsi]
	jne	.label_263
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3d0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x3c8]
	lea	rdi, [rdi]
	je	.label_270
	mov	rbp, rbp
	mov	rdx, rdi
	nop	dword ptr [rax + rax]
.label_287:
	cmp	qword ptr [rdx + 8], rcx
	mov	rbp, rbp
	jne	.label_282
	mov	rsp, rsp
	cmp	qword ptr [rdx + 0x10], rax
	je	.label_216
.label_282:
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rsp, rsp
	jne	.label_287
.label_270:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1fc], esi
	mov	rdx, rsp
	mov	rsp, rsp
	lea	rsi, [rdx - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1f0], rsi
	mov	rsp, rsi
	mov	qword ptr [rdx - 0x20], rdi
	mov	qword ptr [rdx - 0x18], rcx
	mov	qword ptr [rdx - 0x10], rax
	test	r14b, r14b
	mov	rsp, rsp
	jne	.label_290
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	mov	rsp, rsp
	cmp	eax, 0x4000
	jne	.label_290
	mov	r10, qword ptr [rbp - 0x120]
	nop	
	cmp	byte ptr [r10 + 0x21], 0
	mov	rbp, rbp
	jne	.label_300
	nop	
	cmp	byte ptr [r10 + 0x25], 0
	je	.label_302
.label_300:
	mov	dword ptr [rbp - 0x104], r13d
	cmp	byte ptr [r10 + 0x23], 0
	je	.label_305
	lea	rsi, [rsi]
	cmp	byte ptr [r10 + 0x26], 0
	je	.label_310
.label_305:
	mov	r14, r10
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	mov	qword ptr [rbp - 0x100], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0xf0]
	mov	rdx, r13
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	error
	mov	r10, r14
	nop	
	cmp	byte ptr [r10 + 0x26], 0
	mov	rbp, rbp
	mov	r15d, 0
	mov	dword ptr [rbp - 0x114], eax
	lea	rsi, [rsi]
	je	.label_328
	mov	rdx, qword ptr [rbp - 0x130]
	jmp	.label_173
.label_262:
	lea	rsi, [rsi]
	xor	r13d, r13d
	nop	
	jmp	.label_170
.label_263:
	mov	rdx, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	cmp	byte ptr [rdx + 0x2c], 0
	mov	rsp, rsp
	je	.label_331
	mov	dword ptr [rbp - 0x1fc], esi
	mov	dword ptr [rbp - 0x104], r13d
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	nop	
	je	.label_336
	mov	rsp, rsp
	mov	r13, rdx
	mov	rdi, qword ptr [rbp - 0xf0]
	call	dir_name
	mov	r14, rax
	mov	rbp, rbp
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2e
	jne	.label_340
	mov	rsp, rsp
	cmp	byte ptr [r14 + 1], 0
	je	.label_344
.label_340:
	lea	rdx, [rbp - 0x1d0]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.39_0
	lea	rsi, [rsi]
	call	__xstat
	mov	rbp, rbp
	test	eax, eax
	jne	.label_344
	mov	rsp, rsp
	lea	rdx, [rbp - 0xd8]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_353
.label_344:
	lea	rsi, [rsi]
	mov	rdi, r14
	call	free
.label_271:
	mov	rbp, rbp
	mov	rdx, r13
.label_336:
	mov	dword ptr [rbp - 0x1e4], r15d
	movzx	ecx, byte ptr [rdx + 0x16]
	mov	r13, rdx
	mov	esi, 0xffffff9c
	lea	rsi, [rsi]
	mov	r8d, 0xffffffff
	mov	rdi, r12
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rdx, rbx
	call	force_symlinkat
	mov	r15, r12
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	nop	
	jle	.label_363
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	mov	rsp, rsp
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r15
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	r8, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, r12d
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
.label_186:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x130]
	mov	r10, r13
	lea	rsi, [rsi]
	jmp	.label_173
.label_290:
	and	ebx, 0xfff
	mov	rsp, rsp
	mov	esi, r15d
	lea	rdi, [rdi]
	not	esi
	mov	rsp, rsp
	and	esi, ebx
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mkdir
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_392
	mov	rsp, rsp
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.36_0
	jmp	.label_396
.label_331:
	cmp	byte ptr [rdx + 0x17], 0
	je	.label_401
	mov	dword ptr [rbp - 0x1fc], esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1e4], r15d
	nop	
	mov	qword ptr [rbp - 0x208], r12
	lea	rdi, [rdi]
	mov	r12b, 1
	nop	
	cmp	byte ptr [rdx + 0x16], 0
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	jne	.label_402
	cmp	dword ptr [rdx + 8], 3
	sete	al
.label_402:
	mov	rbx, rdx
	nop	
	movzx	edx, al
	lea	rsi, [rsi]
	movzx	r8d, byte ptr [rbp - 0x1f0]
	mov	rbp, rbp
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsi, qword ptr [rbp - 0xf0]
	call	create_hard_link
	test	al, al
	mov	rbp, rbp
	je	.label_430
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x104], r13d
	mov	rsp, rsp
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0x100], rax
	mov	dword ptr [rbp - 0x114], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x130]
	mov	r10, rbx
	jmp	.label_285
.label_392:
	lea	rdx, [rbp - 0x340]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_437
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_396:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	nop	
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	esi, r12d
.label_239:
	mov	rdx, r15
	lea	rsi, [rsi]
	call	error
	lea	rsi, [rsi]
	jmp	.label_142
.label_363:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x208], r15
	mov	r15b, 1
	xor	r14d, r14d
	mov	r12b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 0x100], rax
	mov	dword ptr [rbp - 0x114], eax
	mov	rcx, qword ptr [rbp - 0x130]
	mov	r10, r13
	jmp	.label_285
.label_216:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35_0
.label_166:
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_360:
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	error
.label_142:
	mov	rdx, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	jmp	.label_173
.label_401:
	nop	
	cmp	esi, 0x8000
	je	.label_462
	lea	rsi, [rsi]
	cmp	esi, 0xa000
	mov	rsp, rsp
	je	.label_432
	mov	rsp, rsp
	mov	al, byte ptr [rdx + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_432
.label_462:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1fc], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x104], r13d
	nop	
	mov	eax, dword ptr [rbp - 0x3b8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	mov	al, byte ptr [rdx + 0x23]
	mov	byte ptr [rbp - 0x38], al
	mov	esi, 0x20000
	nop	
	cmp	dword ptr [rdx + 4], 2
	je	.label_467
	lea	rsi, [rsi]
	xor	esi, esi
.label_467:
	xor	eax, eax
	mov	rdi, r12
	call	open_safer
	mov	r13, r12
	mov	r12d, eax
	test	r12d, r12d
	js	.label_136
	nop	
	mov	dword ptr [rbp - 0x1e4], r15d
	mov	qword ptr [rbp - 0x208], r13
	lea	rdx, [rbp - 0xd8]
	mov	edi, 1
	mov	esi, r12d
	mov	rbp, rbp
	call	__fxstat
	mov	rbp, rbp
	test	eax, eax
	je	.label_153
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x208]
.label_289:
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_167
.label_430:
	nop	
	mov	rdx, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	mov	r10, rbx
	nop	
	jmp	.label_173
.label_437:
	mov	ecx, dword ptr [rbp - 0x328]
	mov	eax, ecx
	and	eax, 0x1c0
	lea	rsi, [rsi]
	cmp	eax, 0x1c0
	mov	rsp, rsp
	jne	.label_181
	mov	dword ptr [rbp - 0x114], ecx
	xor	ecx, ecx
	jmp	.label_399
.label_169:
	lea	rcx, [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x1c8]
	jne	.label_190
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x1d0]
	sete	dil
	jmp	.label_197
.label_181:
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x114], ecx
	mov	rbp, rbp
	or	esi, 0x1c0
	mov	rdi, rbx
	mov	rbp, rbp
	call	chmod
	mov	cl, 1
	mov	rsp, rsp
	test	eax, eax
	je	.label_399
	call	__errno_location
	lea	rdi, [rdi]
	mov	r12d, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_1
	jmp	.label_396
.label_399:
	nop	
	mov	qword ptr [rbp - 0x100], rcx
	mov	dword ptr [rbp - 0x104], r13d
	mov	rax, qword ptr [rbp + 0x18]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	nop	
	mov	r10, qword ptr [rbp - 0x120]
	jne	.label_214
	mov	rdx, qword ptr [rbp - 0x340]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x338]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	r14, r10
	call	remember_copied
	mov	r10, r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsp, rsp
	mov	byte ptr [rax], 1
.label_214:
	lea	rdi, [rdi]
	cmp	byte ptr [r10 + 0x2e], 0
	nop	
	je	.label_227
	cmp	byte ptr [r10 + 0x18], 0
	nop	
	mov	r14, r10
	mov	r13, rbx
	mov	rsp, rsp
	je	.label_230
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.38_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, r13
	mov	rbp, rbp
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	lea	rdi, [rdi]
	jmp	.label_220
.label_136:
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.60_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r15, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r13
	jmp	.label_253
.label_353:
	nop	
	mov	ebx, r15d
	mov	rax, qword ptr [rbp - 0x1c8]
	cmp	rax, qword ptr [rbp - 0xd0]
	nop	
	jne	.label_257
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	r15, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rdi, r14
	call	free
	cmp	qword ptr [rbp - 0x38], r15
	mov	r15d, ebx
	mov	rsp, rsp
	je	.label_271
	jmp	.label_275
.label_432:
	mov	rsp, rsp
	cmp	esi, 0x5fff
	mov	rbp, rbp
	jle	.label_276
	mov	rsp, rsp
	cmp	esi, 0x6000
	je	.label_281
	lea	rsi, [rsi]
	cmp	esi, 0xa000
	je	.label_286
	cmp	esi, 0xc000
	nop	
	je	.label_281
	jmp	.label_164
.label_190:
	lea	rsi, [rsi]
	xor	edi, edi
.label_197:
	nop	
	mov	rsi, rcx
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	r9, r14
	jne	.label_291
	mov	rsp, rsp
	mov	ecx, 0xf000
	lea	rdi, [rdi]
	and	ecx, dword ptr [rbp - 0x1b8]
	cmp	ecx, 0xa000
	jne	.label_291
	cmp	byte ptr [r9 + 0x15], 0
	je	.label_291
.label_469:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	r8, rbx
	lea	rsi, [rsi]
	jmp	.label_171
.label_291:
	nop	
	mov	rcx, qword ptr [r9]
	lea	rdi, [rdi]
	test	ecx, ecx
	je	.label_301
	mov	rdx, r15
	mov	r15, r9
	test	dil, dil
	je	.label_303
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsi, qword ptr [rbp - 0xf0]
	call	same_name
	test	al, al
	mov	ecx, dword ptr [rbp - 0x104]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	r9, r15
	mov	rsp, rsp
	mov	r8, rbx
	jne	.label_134
	lea	rdi, [rdi]
	xor	edi, edi
	jmp	.label_146
.label_301:
	cmp	byte ptr [r9 + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_316
	cmp	byte ptr [r9 + 0x15], 0
	mov	rsp, rsp
	je	.label_317
.label_316:
	mov	ecx, 0xf000
	nop	
	and	ecx, dword ptr [r15 + 0x18]
	cmp	ecx, 0xa000
	mov	r8, rbx
	lea	rsi, [rsi]
	jne	.label_321
	xor	edi, edi
	mov	rbp, rbp
	jmp	.label_171
.label_303:
	and	eax, 0xf000
	lea	rsi, [rsi]
	xor	edi, edi
	cmp	eax, 0xa000
	mov	r9, r15
	mov	rsp, rsp
	mov	r8, rbx
	jne	.label_171
	movabs	rax, 0xffffffff00000000
	and	rcx, rax
	movabs	rax, 0x200000000
	cmp	rcx, rax
	lea	rsi, [rsi]
	je	.label_171
	lea	rsi, [rsi]
	mov	al, byte ptr [r9 + 0x18]
	test	al, al
	jne	.label_171
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rdx + 0x18]
	cmp	eax, 0xa000
	jne	.label_134
	xor	edi, edi
	mov	rsp, rsp
	jmp	.label_171
.label_321:
	mov	rbp, rbp
	test	dil, dil
	je	.label_338
	cmp	qword ptr [r15 + 0x10], 2
	nop	
	jb	.label_338
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1f0], rsi
	nop	
	mov	rbx, r8
	lea	rsi, [rsi]
	mov	r14, r9
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	call	same_name
	test	al, al
	je	.label_345
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1f0]
	mov	eax, dword ptr [rsi + 0x18]
	mov	r9, r14
.label_317:
	mov	rsp, rsp
	mov	r8, rbx
.label_338:
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_332
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	mov	rbp, rbp
	je	.label_332
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [r15 + 8]
	nop	
	jne	.label_355
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [r15]
	nop	
	jne	.label_358
	mov	dil, 1
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + 0x17], 0
	mov	rsp, rsp
	jne	.label_171
.label_332:
	mov	rbx, r8
	nop	
	cmp	byte ptr [r9 + 0x18], 0
	lea	rdi, [rdi]
	je	.label_152
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x3b8]
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_152
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x10], 2
	jb	.label_152
	nop	
	mov	rdi, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x120], r9
	mov	rbp, rbp
	mov	r14, rsi
	call	canonicalize_file_name
	mov	rsi, r14
	mov	r9, qword ptr [rbp - 0x120]
	test	rax, rax
	je	.label_152
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	call	same_name
	mov	r14b, al
	mov	rdi, r15
	call	free
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x120]
	test	r14b, r14b
	mov	ecx, dword ptr [rbp - 0x104]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0x40]
	mov	r8, rbx
	mov	rbp, rbp
	jne	.label_134
	xor	edi, edi
	jmp	.label_146
.label_152:
	mov	rsp, rsp
	cmp	byte ptr [r9 + 0x2c], 0
	lea	rdi, [rdi]
	mov	r8, rbx
	lea	rdi, [rdi]
	je	.label_387
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	nop	
	cmp	eax, 0xa000
	jne	.label_387
	xor	edi, edi
	mov	rsp, rsp
	jmp	.label_171
.label_387:
	mov	rsp, rsp
	cmp	dword ptr [r9 + 4], 2
	jne	.label_134
	lea	rdi, [rdi]
	mov	r14, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], r9
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_400
	mov	rbp, rbp
	lea	rdx, [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x208]
	nop	
	call	__xstat
	test	eax, eax
	mov	rbp, rbp
	jne	.label_412
	jmp	.label_416
.label_310:
	mov	rbx, r10
	lea	rsi, [rsi]
	call	__errno_location
	mov	r10, rbx
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	jmp	.label_419
.label_153:
	mov	rax, qword ptr [rbp - 0x3c8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xd0]
	nop	
	jne	.label_423
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0xd8]
	jne	.label_423
	nop	
	mov	edx, ebx
	and	edx, 0x1ff
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	test	al, al
	mov	r13b, al
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1e4]
	mov	rsp, rsp
	jne	.label_234
	mov	dword ptr [rbp - 0x114], edx
	nop	
	mov	esi, 0x201
	mov	rax, qword ptr [rbp - 0x120]
	nop	
	cmp	byte ptr [rax + 0x23], 0
	jne	.label_168
	mov	esi, 1
.label_168:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	call	open_safer
	mov	ebx, eax
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	byte ptr [rcx + 0x21], 0
	lea	rsi, [rsi]
	je	.label_441
	test	ebx, ebx
	jns	.label_444
	jmp	.label_198
.label_227:
	mov	rsp, rsp
	mov	r13, rbx
	jmp	.label_328
.label_302:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x104], r13d
.label_419:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rax
	xor	r15d, r15d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	mov	r13, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	jmp	.label_328
.label_132:
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_171
.label_423:
	nop	
	xor	r15d, r15d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
.label_167:
	mov	rdx, rbx
	call	error
	xor	ebx, ebx
.label_226:
	lea	rsi, [rsi]
	mov	edi, r12d
	lea	rsi, [rsi]
	call	close
	test	eax, eax
	jns	.label_357
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r12, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x208]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r14d
	mov	rsp, rsp
	mov	rdx, r12
	lea	rdi, [rdi]
	call	error
.label_357:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	free
	lea	rdi, [rdi]
	test	r15b, r15b
	nop	
	je	.label_142
	mov	rbp, rbp
	xor	r15d, r15d
	mov	r14b, 1
	mov	rbp, rbp
	mov	r12b, 1
	lea	rdi, [rdi]
	jmp	.label_148
.label_345:
	mov	r9, r14
	mov	rbp, rbp
	cmp	byte ptr [r9 + 0x18], 0
	mov	ecx, dword ptr [rbp - 0x104]
	mov	r14, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	rbp, rbp
	jne	.label_134
	xor	edi, edi
	lea	rdi, [rdi]
	jmp	.label_146
.label_257:
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
.label_275:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	jmp	.label_186
.label_355:
	xor	edi, edi
	jmp	.label_171
.label_400:
	lea	rdi, [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	edx, 0x90
	call	memcpy
.label_416:
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [r15 + 0x18]
	cmp	eax, 0xa000
	mov	rsp, rsp
	jne	.label_243
	lea	rdx, [rbp - 0x1d0]
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	call	__xstat
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_202
.label_412:
	xor	edi, edi
	mov	r9, qword ptr [rbp - 0x120]
	nop	
	mov	r8, r14
	mov	rbp, rbp
	jmp	.label_171
.label_276:
	mov	dword ptr [rbp - 0x104], r13d
	cmp	esi, 0x1000
	je	.label_208
	cmp	esi, 0x2000
	mov	r13d, dword ptr [rbp - 0x104]
	lea	rsi, [rsi]
	jne	.label_164
.label_281:
	nop	
	mov	dword ptr [rbp - 0x1fc], esi
	lea	rsi, [rsi]
	mov	edx, r15d
	not	edx
	lea	rsi, [rsi]
	and	edx, r13d
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3a8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rbp, rbp
	mov	r14d, r15d
	xor	r15d, r15d
	lea	rcx, [rbp - 0x1d0]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	__xmknod
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_231
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, rbx
.label_253:
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r14d
	jmp	.label_239
.label_230:
	xor	edi, edi
	nop	
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	nop	
	mov	rdx, r13
	call	quotearg_n_style
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.57_0
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_258
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0xa
.label_220:
	mov	rbp, rbp
	mov	r10, r14
.label_328:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1e0]
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_269
	lea	rsi, [rsi]
	mov	al, byte ptr [r10 + 0x1c]
	test	al, al
	nop	
	je	.label_269
	nop	
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rbp - 0x3d0]
	lea	rsi, [rsi]
	jne	.label_278
.label_269:
	movups	xmm0, xmmword ptr [r10 + 0x40]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x190], xmm0
	movups	xmm0, xmmword ptr [r10]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [r10 + 0x10]
	movups	xmm2, xmmword ptr [r10 + 0x20]
	nop	
	movups	xmm3, xmmword ptr [r10 + 0x30]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x1a0], xmm3
	movaps	xmmword ptr [rbp - 0x1b0], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x1c0], xmm1
	movaps	xmmword ptr [rbp - 0x1d0], xmm0
	mov	esi, 2
	mov	rsp, rsp
	mov	rdi, r12
	mov	r14, r10
	call	savedir
	test	rax, rax
	mov	rsp, rsp
	je	.label_295
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e4], r15d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf0], r13
	cmp	dword ptr [r14 + 4], 3
	mov	rbx, r14
	mov	rbp, rbp
	jne	.label_313
	nop	
	mov	dword ptr [rbp - 0x1cc], 2
.label_313:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rbx
	mov	qword ptr [rbp - 0x208], r12
	mov	r15b, 1
	xor	ebx, ebx
	cmp	byte ptr [rax], 0
	je	.label_304
	mov	r12, rax
	mov	qword ptr [rbp - 0x1e0], rax
.label_347:
	mov	rbp, rbp
	mov	r14b, r15b
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	call	file_name_concat
	nop	
	mov	r15, rax
	mov	qword ptr [rbp - 0x38], r15
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	call	file_name_concat
	nop	
	mov	r13, rax
	nop	
	mov	rax, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	mov	al, byte ptr [rax]
	mov	byte ptr [rbp - 0x2b0], al
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	lea	rax, [rbp - 0xd8]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	lea	rax, [rbp - 0x2b0]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp], 0
	mov	rdi, r15
	mov	rsi, r13
	mov	edx, dword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x3d0]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x1f0]
	lea	r9, [rbp - 0x1d0]
	call	copy_internal
	add	rsp, 0x20
	mov	r15b, al
	mov	rbp, rbp
	and	r15b, r14b
	mov	r14b, byte ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x20]
	nop	
	or	byte ptr [rax], r14b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	call	free
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	test	r14b, r14b
	jne	.label_299
	and	bl, 1
	nop	
	or	bl, byte ptr [rbp - 0x2b0]
	mov	rdi, r12
	call	strlen
	cmp	byte ptr [rax + r12 + 1], 0
	lea	r12, [rax + r12 + 1]
	jne	.label_347
	lea	rdi, [rdi]
	jmp	.label_299
.label_295:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1e4], r15d
	mov	qword ptr [rbp - 0x120], r14
	mov	qword ptr [rbp - 0xf0], r13
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rbx, r12
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], rbx
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, r15
	call	error
	jmp	.label_453
.label_278:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1e4], r15d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], r12
	mov	qword ptr [rbp - 0xf0], r13
	mov	r12b, 1
	mov	rbp, rbp
	xor	r15d, r15d
	xor	r14d, r14d
	mov	rcx, qword ptr [rbp - 0x130]
	jmp	.label_285
.label_304:
	mov	qword ptr [rbp - 0x1e0], rax
.label_299:
	mov	rdi, qword ptr [rbp - 0x1e0]
	call	free
	and	bl, 1
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], bl
	test	r15b, r15b
	setne	r12b
.label_453:
	mov	rsp, rsp
	xor	r15d, r15d
	xor	r14d, r14d
	jmp	.label_215
.label_243:
	lea	rdi, [rbp - 0x1d0]
	mov	edx, 0x90
	lea	rdi, [rdi]
	mov	rsi, r15
	call	memcpy
.label_202:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x1c8]
	mov	r9, qword ptr [rbp - 0x120]
	mov	r8, r14
	mov	rbp, rbp
	jne	.label_385
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x1d0]
	jne	.label_391
	cmp	byte ptr [r9 + 0x17], 0
	je	.label_134
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x18]
	nop	
	cmp	eax, 0xa000
	mov	rbp, rbp
	setne	dil
	jmp	.label_171
.label_134:
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.16_0
.label_213:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	jmp	.label_414
.label_358:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	jmp	.label_171
.label_385:
	xor	edi, edi
	jmp	.label_171
.label_231:
	mov	dword ptr [rbp - 0x1e4], r14d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x104], r13d
	mov	qword ptr [rbp - 0x208], r12
	mov	rsp, rsp
	mov	r12b, 1
	mov	rbp, rbp
	jmp	.label_139
.label_286:
	mov	dword ptr [rbp - 0x1fc], esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], r15d
	mov	rsi, qword ptr [rbp - 0x3a0]
	mov	rdi, r12
	call	areadlink_with_size
	mov	r15, rax
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_435
	mov	dword ptr [rbp - 0x104], r13d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x208], r12
	mov	rax, qword ptr [rbp - 0x120]
	nop	
	movzx	ecx, byte ptr [rax + 0x16]
	lea	rsi, [rsi]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rsp, rsp
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0xf0]
	call	force_symlinkat
	nop	
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jle	.label_406
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	test	al, al
	jne	.label_447
	mov	rax, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	mov	al, byte ptr [rax + 0x2d]
	lea	rdi, [rdi]
	test	al, al
	je	.label_447
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	cmp	eax, 0xa000
	lea	rsi, [rsi]
	jne	.label_447
	mov	rbx, qword ptr [rbp - 0x310]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	cmp	rbx, rax
	jne	.label_447
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_447
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r15
	call	strcmp
	mov	rsp, rsp
	mov	r12d, eax
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	test	r12d, r12d
	je	.label_406
.label_447:
	mov	rdi, r15
	call	free
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	jmp	.label_463
.label_208:
	mov	dword ptr [rbp - 0x1fc], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], r12
	lea	rdi, [rdi]
	mov	r14d, r15d
	nop	
	mov	dword ptr [rbp - 0x1e4], r15d
	not	r14d
	nop	
	and	r14d, dword ptr [rbp - 0x104]
	mov	qword ptr [rbp - 0x1d0], 0
	xor	r15d, r15d
	mov	rsp, rsp
	lea	rcx, [rbp - 0x1d0]
	xor	edi, edi
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	edx, r14d
	nop	
	call	__xmknod
	mov	r12b, 1
	test	eax, eax
	mov	rbp, rbp
	je	.label_139
	and	r14d, 0xffffefff
	mov	rdi, rbx
	nop	
	mov	esi, r14d
	call	mkfifo
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_232
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42_0
.label_463:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	jmp	.label_159
.label_164:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	lea	rdi, [rdi]
	jmp	.label_166
.label_391:
	xor	edi, edi
.label_171:
	mov	ecx, dword ptr [rbp - 0x104]
	mov	r14, qword ptr [rbp - 0x40]
.label_146:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1f0], r12b
	mov	dword ptr [rbp - 0x104], ecx
	lea	rdi, [rdi]
	mov	ebx, ecx
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	nop	
	je	.label_172
	nop	
	mov	al, byte ptr [r9 + 0x2d]
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_172
	lea	rdi, [rdi]
	cmp	byte ptr [r9 + 0x1f], 0
	je	.label_191
	mov	dword ptr [rbp - 0x40], edi
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_194
	nop	
	mov	qword ptr [rbp - 0x120], r9
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x340]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x3d0]
	nop	
	sete	al
	mov	rsp, rsp
	jmp	.label_196
.label_191:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], edi
	mov	r12, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], r9
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	jmp	.label_199
.label_194:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], r9
	lea	rsi, [rsi]
	xor	eax, eax
.label_196:
	mov	rdi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	r12, r8
	lea	rdi, [rdi]
	xor	al, 1
.label_199:
	mov	qword ptr [rbp - 0xf0], rdi
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	lea	rsi, [rbp - 0x340]
	lea	rdx, [rbp - 0x3d0]
	call	utimecmp
	test	eax, eax
	mov	r9, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	mov	r8, r12
	nop	
	mov	edi, dword ptr [rbp - 0x40]
	js	.label_172
	mov	r14, r9
	test	r13, r13
	je	.label_225
	mov	byte ptr [r13], 1
.label_225:
	mov	rdx, qword ptr [rbp - 0x3d0]
	mov	rsi, qword ptr [rbp - 0x3c8]
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rdi, rbx
	call	remember_copied
	mov	rbp, rbp
	mov	r13b, 1
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x1f0]
	je	.label_170
	mov	r15, r14
	mov	rsp, rsp
	movzx	ecx, byte ptr [r15 + 0x2e]
	mov	rbp, rbp
	movzx	r8d, dl
	mov	rbp, rbp
	mov	edx, 1
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	create_hard_link
	mov	r10, r15
	mov	rdx, r14
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rcx
	test	al, al
	mov	rbp, rbp
	jne	.label_170
.label_173:
	cmp	byte ptr [r10 + 0x25], 0
	nop	
	jne	.label_245
	test	rdx, rdx
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rbp - 0xf8]
	jne	.label_249
	mov	rsi, qword ptr [rbp - 0x3d0]
	mov	rdi, qword ptr [rbp - 0x3c8]
	mov	r14, rax
	mov	r15, r10
	mov	rbp, rbp
	call	forget_created
	lea	rsi, [rsi]
	mov	r10, r15
	nop	
	mov	rax, r14
.label_249:
	lea	rsi, [rsi]
	mov	r15, r10
	nop	
	test	rax, rax
	je	.label_261
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rbx
	mov	r14, rax
	lea	rdi, [rdi]
	call	rename
	mov	rbp, rbp
	test	eax, eax
	je	.label_267
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.50
	jmp	.label_272
.label_172:
	mov	r12, r13
	mov	qword ptr [rbp - 0x40], r14
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_279
	mov	rbp, rbp
	mov	eax, dword ptr [r9 + 8]
	mov	rbp, rbp
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_283
	lea	rsi, [rsi]
	cmp	eax, 3
	je	.label_288
	cmp	eax, 4
	jne	.label_251
	nop	
	cmp	byte ptr [r9 + 0x2f], 0
	je	.label_251
	lea	rsi, [rsi]
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	cmp	eax, 0xa000
	mov	rbp, rbp
	je	.label_251
	mov	r15, r9
	mov	r13, r8
	mov	rsp, rsp
	mov	r14d, edi
	lea	rdi, [rdi]
	call	can_write_any_file
	mov	edi, r14d
	nop	
	mov	r8, r13
	lea	rdi, [rdi]
	mov	r9, r15
	lea	rdi, [rdi]
	test	al, al
	nop	
	jne	.label_251
	mov	r13, r8
	mov	rsp, rsp
	mov	esi, 2
	lea	rdi, [rdi]
	mov	r14d, edi
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	r15, r9
	lea	rdi, [rdi]
	call	euidaccess
	mov	edi, r14d
	mov	r8, r13
	lea	rsi, [rsi]
	mov	r9, r15
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_251
.label_288:
	nop	
	lea	rdx, [rbp - 0x340]
	lea	rdi, [rdi]
	mov	r14d, edi
	mov	rsp, rsp
	mov	rdi, r9
	mov	r13, r8
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	r15, r9
	call	overwrite_ok
	nop	
	mov	edi, r14d
	mov	r8, r13
	lea	rdi, [rdi]
	mov	r9, r15
	lea	rsi, [rsi]
	test	al, al
	jne	.label_251
.label_283:
	mov	r13b, 1
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_170
	mov	byte ptr [r12], 1
	jmp	.label_170
.label_261:
	xor	r13d, r13d
	jmp	.label_170
.label_279:
	lea	rsi, [rsi]
	cmp	ebx, 0x4000
	mov	rsp, rsp
	je	.label_251
	lea	rsi, [rsi]
	mov	eax, dword ptr [r9 + 8]
	mov	r13b, 1
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_170
	lea	rsi, [rsi]
	cmp	eax, 3
	jne	.label_251
	mov	rsp, rsp
	mov	r12, r8
	lea	rdx, [rbp - 0x340]
	lea	rdi, [rdi]
	mov	r14d, edi
	mov	rdi, r9
	mov	r15, r9
	mov	rsi, qword ptr [rbp - 0xf0]
	call	overwrite_ok
	lea	rsi, [rsi]
	test	r14b, r14b
	jne	.label_170
	lea	rsi, [rsi]
	test	al, al
	nop	
	mov	r9, r15
	lea	rsi, [rsi]
	mov	r8, r12
	mov	rsp, rsp
	jne	.label_339
	lea	rdi, [rdi]
	jmp	.label_170
.label_251:
	mov	r13b, 1
	mov	rbp, rbp
	test	dil, dil
	jne	.label_170
.label_339:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	cmp	eax, 0x4000
	mov	dl, byte ptr [rbp + 0x10]
	je	.label_343
	cmp	ebx, 0x4000
	lea	rdi, [rdi]
	jne	.label_346
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + 0x18], 0
	je	.label_348
	mov	rbp, rbp
	cmp	dword ptr [r9], 0
	je	.label_348
.label_346:
	lea	rdi, [rdi]
	test	dl, dl
	je	.label_343
	mov	rsp, rsp
	cmp	dword ptr [r9], 3
	je	.label_343
	mov	rdi, qword ptr [r9 + 0x40]
	mov	r12b, dl
	mov	rsp, rsp
	lea	rdx, [rbp - 0x340]
	mov	r15, r8
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	r14, r9
	call	seen_file
	mov	dl, r12b
	mov	rbp, rbp
	mov	r8, r15
	mov	r9, r14
	test	al, al
	lea	rdi, [rdi]
	je	.label_343
	xor	r13d, r13d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.18_1
	jmp	.label_431
.label_267:
	nop	
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_368
	xor	r13d, r13d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, r14
	nop	
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, rbx
	nop	
	call	quotearg_n_style
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	call	__printf_chk
	jmp	.label_170
.label_343:
	cmp	ebx, 0x4000
	je	.label_382
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	jne	.label_382
	nop	
	cmp	byte ptr [r9 + 0x18], 0
	lea	rsi, [rsi]
	je	.label_388
	nop	
	cmp	dword ptr [r9], 0
	lea	rdi, [rdi]
	je	.label_388
.label_382:
	mov	r12b, byte ptr [r9 + 0x18]
	mov	rbp, rbp
	test	r12b, r12b
	lea	rdi, [rdi]
	je	.label_394
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0x3b8]
	and	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x4000
	jne	.label_394
	nop	
	and	eax, dword ptr [rbp - 0x328]
	cmp	eax, 0x4000
	je	.label_394
	lea	rsi, [rsi]
	cmp	dword ptr [r9], 0
	lea	rsi, [rsi]
	je	.label_405
.label_394:
	lea	rsi, [rsi]
	mov	r13, r8
	nop	
	mov	r14, qword ptr [r9]
	mov	rsp, rsp
	test	r14d, r14d
	mov	rsp, rsp
	je	.label_408
	nop	
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	mov	r15, r9
	lea	rsi, [rsi]
	mov	bl, dl
	nop	
	call	last_component
	mov	dl, bl
	lea	rdi, [rdi]
	mov	r9, r15
	mov	rbp, rbp
	mov	r15, rax
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2e
	mov	rbp, rbp
	jne	.label_418
	mov	rsp, rsp
	movzx	ecx, byte ptr [r15 + 1]
	mov	eax, 2
	mov	rsp, rsp
	cmp	ecx, 0x2e
	je	.label_424
	mov	rsp, rsp
	mov	eax, 1
.label_424:
	lea	rdi, [rdi]
	mov	al, byte ptr [r15 + rax]
	test	al, al
	je	.label_408
	movzx	eax, al
	nop	
	cmp	eax, 0x2f
	je	.label_408
.label_418:
	test	r12b, r12b
	mov	rsp, rsp
	jne	.label_429
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rbp - 0x328]
	mov	rsp, rsp
	cmp	eax, 0x4000
	jne	.label_429
.label_408:
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rbp - 0x328]
	mov	r15d, 0x11
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rcx
	cmp	eax, 0x4000
	jne	.label_433
	mov	ecx, dword ptr [rbp - 0x104]
	mov	r14, qword ptr [rbp - 0x40]
	mov	r12b, byte ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	mov	r8, r13
	mov	rsp, rsp
	jmp	.label_268
.label_368:
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_170
.label_429:
	lea	rsi, [rsi]
	cmp	r14d, 3
	lea	rsi, [rsi]
	je	.label_306
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	r12, r9
	nop	
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0xf0]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rdi
	mov	rsp, rsp
	call	strlen
	mov	r9, r12
	nop	
	mov	r12, rax
	mov	rbp, rbp
	lea	rax, [r12 + r14]
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], rax
	nop	
	jne	.label_306
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbx, r9
	nop	
	call	memcmp
	nop	
	mov	r9, rbx
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_306
	add	r15, r14
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	rbx, r9
	call	strcmp
	lea	rsi, [rsi]
	mov	r9, rbx
	test	eax, eax
	nop	
	jne	.label_306
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], r9
	mov	rbx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rsp, rsp
	lea	rdi, [r12 + r14 + 1]
	mov	rsp, rsp
	call	xmalloc
	mov	r15, rax
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	call	__mempcpy_chk
	nop	
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcpy
	mov	rsp, rsp
	lea	rdx, [rbp - 0x1d0]
	mov	edi, 1
	mov	rsi, r15
	mov	rsp, rsp
	call	__xstat
	lea	rdi, [rdi]
	mov	r14d, eax
	lea	rsi, [rsi]
	mov	rdi, r15
	call	free
	test	r14d, r14d
	mov	rsp, rsp
	jne	.label_158
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3c8]
	nop	
	cmp	rax, qword ptr [rbp - 0x1c8]
	jne	.label_158
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0x1d0]
	mov	r9, qword ptr [rbp - 0x120]
	nop	
	jne	.label_306
	mov	rbp, rbp
	cmp	byte ptr [r9 + 0x18], 0
	lea	rsi, [rsi]
	je	.label_174
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.21_0
	jmp	.label_182
.label_433:
	nop	
	test	r12b, r12b
	mov	r8, r13
	jne	.label_369
	nop	
	cmp	byte ptr [r9 + 0x15], 0
	jne	.label_189
	cmp	byte ptr [r9 + 0x22], 0
	mov	rbp, rbp
	je	.label_192
	cmp	qword ptr [rbp - 0x330], 1
	ja	.label_189
.label_192:
	nop	
	movabs	rax, 0xffffffff00000000
	mov	rbp, rbp
	and	r14, rax
	nop	
	movabs	rax, 0x200000000
	cmp	r14, rax
	mov	rsp, rsp
	jne	.label_369
	nop	
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x3b8]
	xor	ecx, ecx
	nop	
	mov	qword ptr [rbp - 0xf8], rcx
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	lea	rdi, [rdi]
	je	.label_200
.label_189:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], r8
	mov	r12, r9
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	unlink
	test	eax, eax
	je	.label_180
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	jne	.label_218
.label_180:
	lea	rdi, [rdi]
	mov	r14b, 1
	mov	r9, r12
	nop	
	cmp	byte ptr [r9 + 0x2e], 0
	lea	rdi, [rdi]
	je	.label_223
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 0xf8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	mov	r12, r9
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	r13, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	__printf_chk
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, rbp
	jmp	.label_237
.label_348:
	lea	rsi, [rsi]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_1
.label_431:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r15, rax
.label_449:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	r12, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x208]
.label_414:
	nop	
	call	quotearg_n_style
.label_210:
	mov	rbx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, r15
	nop	
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r8, rbx
	lea	rdi, [rdi]
	call	error
	nop	
	jmp	.label_170
.label_369:
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 0xf8], rax
.label_200:
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x104]
	mov	r14, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	r12b, byte ptr [rbp - 0x1f0]
	mov	rsp, rsp
	jmp	.label_268
.label_388:
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.19_0
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	jmp	.label_410
.label_405:
	xor	r13d, r13d
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.20
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r15, rax
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	r12, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0xf0]
	call	quotearg_n_style_colon
	jmp	.label_210
.label_218:
	lea	rdi, [rdi]
	mov	r12, rbx
	xor	r13d, r13d
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
	lea	rdi, [rdi]
	jmp	.label_311
.label_223:
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 0xf8], rax
.label_237:
	mov	ecx, dword ptr [rbp - 0x104]
	mov	r12b, byte ptr [rbp - 0x1f0]
	mov	r8, qword ptr [rbp - 0x40]
	jmp	.label_312
.label_158:
	mov	r9, qword ptr [rbp - 0x120]
.label_306:
	nop	
	mov	qword ptr [rbp - 0x120], r9
	mov	edx, dword ptr [r9]
	lea	rdi, [rdi]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	call	backup_file_rename
	mov	r14, rax
	test	r14, r14
	mov	r12b, byte ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	je	.label_324
	mov	rdi, r14
	mov	rsp, rsp
	call	strlen
	mov	rdi, rsp
	lea	rdi, [rdi]
	lea	rdx, [rax + 1]
	add	rax, 0x10
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffff0
	lea	rsi, [rsi]
	sub	rdi, rax
	mov	qword ptr [rbp - 0xf8], rdi
	nop	
	mov	rsp, rdi
	mov	rsi, r14
	call	memcpy
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	call	free
	jmp	.label_212
.label_324:
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	jne	.label_335
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xf8], rax
.label_212:
	mov	rbp, rbp
	mov	r15d, 0x11
	mov	r14b, 1
	nop	
	mov	ecx, dword ptr [rbp - 0x104]
	mov	r9, qword ptr [rbp - 0x120]
	nop	
	mov	r8, r13
.label_312:
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp + 0x10]
	lea	rsi, [rsi]
	jmp	.label_268
.label_335:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23_0
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r15, rax
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
.label_311:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r14d
	lea	rdi, [rdi]
	jmp	.label_407
.label_435:
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.44_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r12
.label_159:
	mov	rsp, rsp
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_360
.label_406:
	lea	rsi, [rsi]
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 0x25], 0
	mov	rbx, rax
	lea	rsi, [rsi]
	jne	.label_365
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x1d], 0
	mov	rbp, rbp
	je	.label_371
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x3b4]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x3b0]
	mov	rdi, qword ptr [rbp - 0xf0]
	call	lchown
	test	eax, eax
	mov	rsp, rsp
	je	.label_371
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	nop	
	cmp	r14d, 0x16
	nop	
	je	.label_379
	mov	rbp, rbp
	cmp	r14d, 1
	jne	.label_380
.label_379:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x1a], 0
	mov	rbp, rbp
	je	.label_371
.label_380:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rbp - 0x100], rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r14d
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	error
	cmp	byte ptr [rbx + 0x24], 0
	mov	rsp, rsp
	je	.label_395
	mov	r10, rbx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	jmp	.label_173
.label_232:
	xor	r15d, r15d
.label_139:
	xor	r14d, r14d
.label_148:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x114], eax
.label_215:
	mov	rcx, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x120]
.label_285:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	jne	.label_411
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1fc], 0x4000
	je	.label_411
	mov	rbp, rbp
	mov	al, byte ptr [r10 + 0x14]
	test	al, al
	jne	.label_411
	cmp	byte ptr [r10 + 0x21], 0
	jne	.label_375
	lea	rsi, [rsi]
	cmp	byte ptr [r10 + 0x25], 0
	je	.label_411
.label_375:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], r15d
	cmp	byte ptr [r10 + 0x23], 0
	lea	rdi, [rdi]
	je	.label_425
	cmp	byte ptr [r10 + 0x26], 0
	lea	rdi, [rdi]
	je	.label_426
.label_425:
	mov	r13, rcx
	nop	
	mov	r15, r12
	lea	rsi, [rsi]
	mov	r12, r10
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	nop	
	mov	rdx, qword ptr [rbp - 0xf0]
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	mov	r10, r12
	mov	r12, r15
	mov	rdx, r13
	cmp	byte ptr [r10 + 0x26], 0
	mov	r15d, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_173
	nop	
	jmp	.label_411
.label_426:
	mov	rsp, rsp
	mov	rbx, r10
	lea	rsi, [rsi]
	call	__errno_location
	mov	r10, rbx
	mov	dword ptr [rax], 0x5f
	mov	r15d, dword ptr [rbp - 0x38]
.label_411:
	cmp	byte ptr [rbp + 0x10], 0
	lea	rsi, [rsi]
	je	.label_333
	cmp	qword ptr [r10 + 0x40], 0
	nop	
	je	.label_333
	mov	rbx, r10
	lea	rdx, [rbp - 0x1d0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	call	__lxstat
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_460
	nop	
	mov	rdi, qword ptr [rbx + 0x40]
	lea	rdx, [rbp - 0x1d0]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	record_file
.label_460:
	mov	r10, rbx
.label_333:
	cmp	dword ptr [rbp - 0x1fc], 0x4000
	mov	rbp, rbp
	je	.label_403
	mov	al, byte ptr [r10 + 0x17]
	test	al, al
	mov	rbp, rbp
	jne	.label_175
.label_403:
	test	r14b, r14b
	jne	.label_175
	lea	rsi, [rsi]
	cmp	byte ptr [r10 + 0x1f], 0
	mov	rbx, qword ptr [rbp - 0xf0]
	mov	r13, qword ptr [rbp - 0x40]
	je	.label_465
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], r12
	nop	
	mov	r12, r10
	movups	xmm0, xmmword ptr [rbp - 0x388]
	movaps	xmmword ptr [rbp - 0x1d0], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbp - 0x378]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x1c0], xmm0
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x1d0]
	mov	rdi, rbx
	nop	
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_468
	lea	rsi, [rsi]
	call	lutimens
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_143
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_149
	jmp	.label_143
.label_468:
	call	utimens
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_143
	lea	rsi, [rsi]
	call	__errno_location
.label_149:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x1e0], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x1e0]
	mov	rdx, r14
	call	error
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x24], 0
	je	.label_143
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_170
.label_143:
	mov	r10, r12
	mov	r12, qword ptr [rbp - 0x38]
.label_465:
	lea	rdi, [rdi]
	test	r15b, r15b
	jne	.label_175
	mov	rbp, rbp
	cmp	byte ptr [r10 + 0x1d], 0
	je	.label_156
	test	r13b, r13b
	mov	rbp, rbp
	jne	.label_185
	mov	eax, dword ptr [rbp - 0x3b4]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x324]
	lea	rdi, [rdi]
	jne	.label_185
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3b0]
	cmp	eax, dword ptr [rbp - 0x320]
	mov	rbp, rbp
	je	.label_156
.label_185:
	lea	rsi, [rsi]
	test	r13b, r13b
	setne	al
	movzx	r8d, al
	mov	rbp, rbp
	lea	rcx, [rbp - 0x3d0]
	lea	r9, [rbp - 0x340]
	mov	edx, 0xffffffff
	mov	rdi, r10
	mov	rsp, rsp
	mov	r14, r10
	mov	rsi, rbx
	nop	
	call	set_owner
	cmp	eax, -1
	je	.label_203
	test	eax, eax
	jne	.label_204
	mov	rbp, rbp
	and	dword ptr [rbp - 0x104], 0xfffff1ff
.label_204:
	nop	
	mov	r10, r14
.label_156:
	cmp	byte ptr [r10 + 0x1e], 0
	jne	.label_207
	cmp	byte ptr [r10 + 0x18], 0
	mov	rsp, rsp
	je	.label_209
.label_207:
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rdx, rbx
	nop	
	mov	r8d, dword ptr [rbp - 0x104]
	lea	rdi, [rdi]
	mov	rbx, r10
	call	copy_acl
	mov	rcx, rbx
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_175
	nop	
	cmp	byte ptr [rcx + 0x24], 0
	je	.label_175
	nop	
	xor	r13d, r13d
	jmp	.label_170
.label_203:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_170
.label_209:
	lea	rsi, [rsi]
	cmp	byte ptr [r10 + 0x2b], 0
	lea	rdi, [rdi]
	je	.label_228
	mov	edx, dword ptr [r10 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	set_acl
	test	eax, eax
	je	.label_175
	xor	r13d, r13d
	jmp	.label_170
.label_228:
	mov	r15, rbx
	mov	rsp, rsp
	test	r13b, r13b
	je	.label_235
	mov	al, byte ptr [r10 + 0x20]
	test	al, al
	lea	rsi, [rsi]
	je	.label_235
	mov	eax, dword ptr [rbp - 0x104]
	and	eax, 0x7000
	mov	rsp, rsp
	or	eax, 0x8000
	mov	rbp, rbp
	cmp	eax, 0xc000
	lea	rdi, [rdi]
	mov	eax, 0x1ff
	mov	rsp, rsp
	mov	ebx, 0x1b6
	lea	rsi, [rsi]
	cmove	ebx, eax
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_238
	mov	rbp, rbp
	xor	edi, edi
	call	umask
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	rsp, rsp
	mov	edi, eax
	mov	rbp, rbp
	call	umask
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_238:
	nop	
	not	eax
	mov	rbp, rbp
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, r15
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_175
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_170
.label_235:
	mov	rbp, rbp
	mov	rbx, r10
	cmp	dword ptr [rbp - 0x1e4], 0
	lea	rsi, [rsi]
	je	.label_266
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_274
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_274:
	nop	
	not	eax
	and	dword ptr [rbp - 0x1e4], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_211
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1e4], 0
	je	.label_211
	lea	rsi, [rsi]
	test	r13b, r13b
	nop	
	je	.label_292
	mov	rsp, rsp
	lea	rdx, [rbp - 0x340]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsi, r15
	nop	
	call	__lxstat
	test	eax, eax
	je	.label_292
	call	__errno_location
	mov	r12d, dword ptr [rax]
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r12d
	lea	rdi, [rdi]
	jmp	.label_309
.label_371:
	mov	r15b, 1
	xor	r14d, r14d
	lea	rsi, [rsi]
	mov	r12b, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 0x100], rax
.label_454:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x114], eax
	mov	r10, rbx
	mov	rcx, qword ptr [rbp - 0x130]
	jmp	.label_285
.label_441:
	test	ebx, ebx
	nop	
	js	.label_273
	lea	rsi, [rsi]
	mov	al, byte ptr [rcx + 0x25]
	test	al, al
	je	.label_273
.label_444:
	mov	rsp, rsp
	mov	r13d, ebx
	mov	rsp, rsp
	cmp	byte ptr [rcx + 0x23], 0
	mov	rbx, rcx
	nop	
	je	.label_451
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x26], 0
	nop	
	je	.label_327
.label_451:
	mov	dword ptr [r15], 0x5f
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 0x110], rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f0], rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf0]
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x40], rax
	xor	edi, edi
	mov	esi, 0x5f
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x1f0]
	call	error
	mov	rsp, rsp
	mov	rcx, rbx
	cmp	byte ptr [rcx + 0x26], 0
	mov	rsp, rsp
	mov	ebx, r13d
	je	.label_273
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_131
.label_258:
	mov	rsp, rsp
	mov	esi, 0xa
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_220
.label_266:
	mov	dword ptr [rbp - 0x1e4], 0
	jmp	.label_211
.label_327:
	mov	dword ptr [r15], 0x5f
	mov	rsp, rsp
	mov	rcx, rbx
	mov	ebx, r13d
.label_273:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rbp - 0x40], rax
	test	ebx, ebx
	nop	
	js	.label_198
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rcx
	mov	dword ptr [rbp - 0x100], 0
	nop	
	jmp	.label_352
.label_198:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 0x40], rax
	nop	
	cmp	byte ptr [rcx + 0x16], 0
	mov	qword ptr [rbp - 0x120], rcx
	nop	
	mov	dword ptr [rbp - 0x100], 0
	je	.label_352
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	call	unlink
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_362
	nop	
	mov	r14d, dword ptr [r15]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.24_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rsp, rsp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	lea	rsi, [rsi]
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_226
.label_362:
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x2e], 0
	mov	rsp, rsp
	je	.label_259
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, r14
	mov	rdx, rcx
	mov	rsp, rsp
	call	__printf_chk
.label_259:
	mov	r13b, 1
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 0x21], 0
	mov	ecx, dword ptr [rbp - 0x1e4]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x114]
	je	.label_234
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	r8, qword ptr [rbp - 0x120]
	mov	ebx, edx
	call	set_process_security_ctx
	nop	
	mov	edx, ebx
	mov	r13b, 1
	xor	r15d, r15d
	test	al, al
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1e4]
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	ebx, 0
	je	.label_226
	mov	rbp, rbp
	jmp	.label_234
.label_292:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x328]
	mov	dword ptr [rbp - 0x114], eax
	not	eax
	test	dword ptr [rbp - 0x1e4], eax
	je	.label_211
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], rax
.label_211:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	test	al, 1
	mov	rsp, rsp
	je	.label_175
	mov	esi, dword ptr [rbp - 0x114]
	lea	rsi, [rsi]
	or	esi, dword ptr [rbp - 0x1e4]
	mov	rsp, rsp
	mov	rdi, r15
	call	chmod
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_175
	nop	
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x208], eax
	xor	r13d, r13d
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x24], 0
	nop	
	jne	.label_170
.label_175:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	setne	r13b
	mov	rbp, rbp
	jmp	.label_170
.label_174:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.22_0
.label_182:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	r15, rax
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_449
.label_395:
	mov	r15b, 1
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rsi, [rsi]
	mov	r12b, 1
	jmp	.label_454
.label_245:
	call	restore_default_fscreatecon_or_die
.label_365:
	nop	
	call	restore_default_fscreatecon_or_die
.label_234:
	mov	dword ptr [rbp - 0x100], ecx
	mov	dword ptr [rbp - 0x114], edx
	mov	r15d, ecx
	not	r15d
	and	r15d, edx
	mov	esi, 0xc1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	edx, r15d
	call	open_safer
	mov	ebx, eax
	call	__errno_location
	mov	qword ptr [rbp - 0x1f0], rax
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	test	ebx, ebx
	mov	rsp, rsp
	jns	.label_157
	cmp	r14d, 0x11
	jne	.label_157
	nop	
	mov	r14d, 0x11
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x120]
	nop	
	cmp	byte ptr [rax + 0x18], 0
	jne	.label_163
	lea	rdx, [rbp - 0x2b0]
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0xf0]
	call	__lxstat
	mov	r14d, 0x11
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_157
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	mov	rbp, rbp
	cmp	eax, 0xa000
	jne	.label_157
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_144
	lea	rsi, [rsi]
	mov	esi, 0x41
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	edx, r15d
	lea	rsi, [rsi]
	call	open_safer
	mov	ebx, eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	r14d, dword ptr [rax]
.label_157:
	lea	rdi, [rdi]
	cmp	r14d, 0x15
	mov	rsp, rsp
	jne	.label_163
	test	ebx, ebx
	mov	rbp, rbp
	jns	.label_163
	lea	rdi, [rdi]
	mov	r14d, 0x15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	je	.label_163
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rdi, r14
	call	strlen
	nop	
	movzx	eax, byte ptr [rax + r14 - 1]
	mov	r14d, 0x14
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	je	.label_163
	mov	r14d, 0x15
.label_163:
	mov	al, r13b
	mov	qword ptr [rbp - 0x40], rax
.label_352:
	test	ebx, ebx
	js	.label_188
	nop	
	lea	rdx, [rbp - 0x1d0]
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, ebx
	call	__fxstat
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_296
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	xor	r15d, r15d
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r13
	call	error
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 0x110], rax
	lea	rdi, [rdi]
	jmp	.label_131
.label_188:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x114]
	mov	ecx, dword ptr [rbp - 0x100]
	nop	
	jne	.label_219
	nop	
	cmp	r14d, 2
	mov	rbp, rbp
	jne	.label_219
	mov	r13b, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_234
.label_219:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	jmp	.label_289
.label_296:
	mov	dword ptr [rbp - 0x1f0], ebx
	xor	eax, eax
	mov	qword ptr [rbp - 0x110], rax
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x38], 0
	je	.label_178
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x38], 0
	nop	
	je	.label_260
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x110], rax
	mov	rbp, rbp
	mov	esi, 0x40049409
	xor	eax, eax
	nop	
	mov	edi, dword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	mov	edx, r12d
	call	ioctl
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_178
	mov	rax, qword ptr [rbp - 0x120]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_260
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x208]
	mov	rsp, rsp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r8, rbx
	nop	
	call	error
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rax
	nop	
	jmp	.label_133
.label_260:
	call	getpagesize
	mov	rbp, rbp
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x198]
	movabs	rsi, 0x2000000000000001
	nop	
	cmp	rax, rsi
	mov	ecx, 0x200
	lea	rsi, [rsi]
	mov	edx, 0x200
	cmovb	rdx, rax
	mov	rsp, rsp
	test	rax, rax
	cmovle	rdx, rcx
	mov	qword ptr [rbp - 0xe0], rdx
	lea	rdi, [rdi]
	cmp	rax, rsi
	mov	ecx, 0x20000
	mov	rbp, rbp
	cmovae	rdx, rcx
	lea	rsi, [rsi]
	test	rax, rax
	cmovle	rdx, rcx
	nop	
	cmp	rax, 0x20000
	cmovl	rdx, rcx
	mov	qword ptr [rbp - 0x48], rdx
	xor	r13d, r13d
	mov	rbp, rbp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, 2
	mov	edi, r12d
	call	fdadvise
	lea	rdi, [rdi]
	mov	eax, 0xf000
	mov	r14d, dword ptr [rbp - 0xc0]
	and	r14d, eax
	cmp	r14d, 0x8000
	jne	.label_307
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rdx, rcx
	sar	rdx, 0x3f
	mov	rbp, rbp
	shr	rdx, 0x37
	lea	rsi, [rsi]
	add	rdx, rcx
	sar	rdx, 9
	cmp	qword ptr [rbp - 0x98], rdx
	nop	
	setl	r13b
.label_307:
	movsxd	r15, ebx
	lea	rsi, [rsi]
	and	eax, dword ptr [rbp - 0x1b8]
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	jne	.label_420
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0xc]
	mov	rbp, rbp
	cmp	ecx, 2
	mov	rbp, rbp
	sete	al
	cmp	ecx, 3
	lea	rdi, [rdi]
	mov	cl, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1d4], ecx
	je	.label_325
	lea	rsi, [rsi]
	and	al, r13b
	mov	rsp, rsp
	jne	.label_325
.label_420:
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	movabs	rcx, 0x2000000000000001
	mov	rbp, rbp
	mov	rdx, rcx
	cmp	rax, rdx
	lea	rdi, [rdi]
	mov	ecx, 0x200
	mov	rsp, rsp
	mov	edi, 0x200
	nop	
	cmovb	rdi, rax
	test	rax, rax
	lea	rsi, [rsi]
	cmovle	rdi, rcx
	cmp	rax, rdx
	mov	ecx, 0x20000
	cmovae	rdi, rcx
	test	rax, rax
	cmovle	rdi, rcx
	movabs	rbx, 0x7fffffffffffffff
	sub	rbx, r15
	mov	rsp, rsp
	cmp	rax, 0x20000
	lea	rdi, [rdi]
	cmovl	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	buffer_lcm
	mov	rcx, rax
	cmp	r14d, 0x8000
	jne	.label_438
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, rdx
	mov	rsp, rsp
	lea	rax, [rax + 1]
	cmovb	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdx
.label_438:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	lea	rsi, [rcx + rax - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	mov	rsp, rsp
	mov	rax, rsi
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	rbp, rbp
	cmp	rbx, rax
	cmovb	rax, rcx
	lea	rdi, [rdi]
	cmp	rsi, rdx
	mov	rbp, rbp
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1d4], 0
.label_325:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	lea	rdi, [rax + r15]
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rax
	lea	rcx, [rax + r15 - 1]
	xor	edx, edx
	mov	rax, rcx
	mov	rsp, rsp
	div	r15
	mov	rsp, rsp
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	test	r13b, r13b
	je	.label_364
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	eax, dword ptr [rbp - 0x1d4]
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_448
	mov	rax, qword ptr [rbp - 0x120]
	nop	
	mov	eax, dword ptr [rax + 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x214], eax
	jmp	.label_374
.label_448:
	nop	
	mov	dword ptr [rbp - 0x214], 1
.label_374:
	lea	rsi, [rbp - 0x2b0]
	lea	rsi, [rsi]
	mov	edi, r12d
	mov	rsp, rsp
	call	extent_scan_init
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x214], 3
	mov	eax, 0
	lea	rsi, [rsi]
	cmove	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x1f8], rax
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x118], eax
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_183:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x2b0]
	call	extent_scan_read
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_315
	cmp	qword ptr [rbp - 0x298], 0
	mov	r14d, 0
	nop	
	je	.label_398
.label_241:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	lea	rcx, [r14 + r14*2]
	mov	rsp, rsp
	mov	r13, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8 + 8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [rax + r13]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	jle	.label_404
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	cmp	r13, rax
	mov	rbp, rbp
	cmovg	r13, rax
	sub	rax, r13
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_404:
	nop	
	mov	r15, r13
	sub	r15, rbx
	sub	r15, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	jne	.label_421
	mov	dword ptr [rbp - 0x118], 0
	jmp	.label_434
.label_421:
	xor	edx, edx
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	rsi, r13
	nop	
	call	lseek
	test	rax, rax
	js	.label_427
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x214], 1
	jne	.label_428
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	nop	
	jne	.label_141
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	nop	
	and	al, 1
	mov	edi, 0x20000
	mov	eax, 0x400
	lea	rdi, [rdi]
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	nop	
	jne	.label_141
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_141:
	nop	
	test	r15, r15
	je	.label_440
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	ebx, 0x20000
	mov	eax, 0x400
	cmovne	rbx, rax
	lea	rdi, [rdi]
	cmp	rbx, r15
	cmovae	rbx, r15
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1f0]
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	full_write
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	mov	ecx, 0
	cmove	rcx, rbx
	mov	rbp, rbp
	sub	r15, rcx
	cmp	rax, rbx
	lea	rdi, [rdi]
	je	.label_141
	jmp	.label_457
.label_428:
	cmp	dword ptr [rbp - 0x214], 3
	sete	al
	nop	
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x1f0]
	nop	
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rcx, r15
	lea	rsi, [rsi]
	call	create_hole
	mov	cl, 1
	mov	dword ptr [rbp - 0x118], ecx
	test	al, al
	mov	rbp, rbp
	jne	.label_434
	jmp	.label_138
.label_440:
	nop	
	mov	dword ptr [rbp - 0x118], 0
.label_434:
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	lea	rax, [rbp - 0x121]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	nop	
	lea	rax, [rbp - 0x210]
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rsp], rax
	mov	r9d, 1
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	r8, qword ptr [rbp - 0x1f8]
	call	sparse_copy
	add	rsp, 0x30
	lea	rsi, [rsi]
	test	al, al
	je	.label_138
	mov	rcx, qword ptr [rbp - 0x210]
	nop	
	lea	r15, [rcx + r13]
	mov	al, byte ptr [rbp - 0x121]
	cmp	r15, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	je	.label_145
	nop	
	inc	r14d
	lea	rsi, [rsi]
	mov	r14d, r14d
	mov	rsp, rsp
	cmp	r14, qword ptr [rbp - 0x298]
	nop	
	mov	rbx, r13
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x140], rdx
	jb	.label_241
	test	rcx, rcx
	je	.label_161
	mov	dword ptr [rbp - 0x118], eax
.label_161:
	mov	rbx, r13
	jmp	.label_366
.label_145:
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	je	.label_165
	mov	dword ptr [rbp - 0x118], eax
.label_165:
	nop	
	mov	byte ptr [rbp - 0x28f], 1
	mov	rbx, r13
	mov	rbp, rbp
	mov	r15, qword ptr [rbp - 0xe8]
.label_366:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x140], rax
.label_398:
	mov	rdi, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	call	free
	mov	qword ptr [rbp - 0x288], 0
	mov	qword ptr [rbp - 0x298], 0
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x28f], 0
	je	.label_183
	mov	rsp, rsp
	jmp	.label_193
.label_457:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	call	quotearg_n_style_colon
.label_359:
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
.label_138:
	mov	rdi, qword ptr [rbp - 0x288]
	nop	
	call	free
	mov	qword ptr [rbp - 0x288], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x298], 0
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_133
.label_144:
	nop	
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	call	error
	mov	al, r13b
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_226
.label_427:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.69
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	call	quotearg_style
	jmp	.label_359
.label_315:
	mov	rsp, rsp
	cmp	byte ptr [rbp - 0x28f], 0
	je	.label_244
.label_193:
	mov	r14, qword ptr [rbp - 0xe8]
	sub	r14, r15
	jg	.label_376
	mov	eax, dword ptr [rbp - 0x118]
	mov	rsp, rsp
	and	al, 1
	nop	
	je	.label_187
.label_376:
	cmp	dword ptr [rbp - 0x214], 1
	mov	rsp, rsp
	jne	.label_195
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_250
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	nop	
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	lea	rsi, [rsi]
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_250
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_250:
	test	r14, r14
	je	.label_187
	nop	
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	eax, 0x400
	mov	ebx, 0x20000
	cmovne	rbx, rax
	cmp	rbx, r14
	lea	rdi, [rdi]
	cmovae	rbx, r14
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	mov	edi, dword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	full_write
	nop	
	xor	ecx, ecx
	nop	
	cmp	rax, rbx
	nop	
	cmove	rcx, rbx
	sub	r14, rcx
	cmp	rax, rbx
	lea	rdi, [rdi]
	je	.label_250
	jmp	.label_372
.label_244:
	nop	
	cmp	byte ptr [rbp - 0x290], 0
	lea	rdi, [rdi]
	je	.label_293
.label_364:
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	eax, dword ptr [rbp - 0x1d4]
	test	al, al
	lea	rsi, [rsi]
	cmovne	r8, qword ptr [rbp - 0xe0]
	nop	
	mov	rax, qword ptr [rbp - 0x120]
	cmp	dword ptr [rax + 0xc], 3
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	sub	rsp, 0x30
	lea	rcx, [rbp - 0x210]
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rbp - 0x2b0]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 0x10], -1
	lea	rsi, [rsi]
	movzx	r9d, al
	mov	edi, r12d
	mov	esi, dword ptr [rbp - 0x1f0]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	sparse_copy
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	test	al, al
	je	.label_284
	lea	rsi, [rsi]
	cmp	byte ptr [rbp - 0x210], 0
	je	.label_178
	mov	rsi, qword ptr [rbp - 0x2b0]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x1f0]
	call	ftruncate
	lea	rdi, [rdi]
	test	eax, eax
	jns	.label_178
	jmp	.label_372
.label_195:
	mov	edi, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	call	ftruncate
	nop	
	test	eax, eax
	je	.label_187
.label_372:
	nop	
	call	__errno_location
	mov	r14d, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	call	quotearg_style
.label_319:
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r14d
	mov	rdx, rbx
.label_320:
	nop	
	call	error
	lea	rdi, [rdi]
	jmp	.label_284
.label_187:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x214], 3
	lea	rsi, [rsi]
	jne	.label_178
	mov	rsp, rsp
	sub	qword ptr [rbp - 0xe8], r15
	jle	.label_178
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x1f0]
	mov	rdx, r15
	mov	rcx, qword ptr [rbp - 0xe8]
	nop	
	call	fallocate
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jns	.label_178
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	ebx, 0x26
	mov	rbp, rbp
	je	.label_178
	lea	rdi, [rdi]
	cmp	ebx, 0x5f
	jne	.label_397
.label_178:
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x1f], 0
	mov	rsp, rsp
	je	.label_370
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbp - 0x388]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x2b0], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rbp - 0x378]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x2a0], xmm0
	lea	rdx, [rbp - 0x2b0]
	mov	edi, dword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	fdutimens
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_370
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.48
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x24], 0
	jne	.label_284
.label_370:
	mov	rax, qword ptr [rbp - 0x120]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x1d], 0
	je	.label_384
	mov	eax, dword ptr [rbp - 0x3b4]
	cmp	eax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	jne	.label_367
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3b0]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x1b0]
	nop	
	je	.label_384
.label_367:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	test	al, al
	nop	
	setne	al
	movzx	r8d, al
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x3d0]
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x1d0]
	mov	rdi, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	call	set_owner
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_284
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_384
	nop	
	and	dword ptr [rbp - 0x1e0], 0xfffff1ff
.label_384:
	mov	rax, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x27], 0
	lea	rdi, [rdi]
	je	.label_184
	lea	rdi, [rdi]
	cmp	byte ptr [rbp - 0x1b8], 0
	mov	rbp, rbp
	js	.label_184
	nop	
	call	geteuid
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_184
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1f0], 0
	js	.label_466
	nop	
	mov	esi, 0x180
	nop	
	mov	edi, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	call	fchmod
	mov	rsp, rsp
	jmp	.label_464
.label_284:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_133
.label_466:
	lea	rsi, [rsi]
	mov	esi, 0x180
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	call	chmod
.label_464:
	nop	
	test	eax, eax
	jne	.label_184
	mov	esi, dword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	not	esi
	and	esi, dword ptr [rbp - 0x114]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1f0], 0
	js	.label_222
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	call	fchmod
	jmp	.label_184
.label_222:
	mov	rdi, qword ptr [rbp - 0xf0]
	call	chmod
.label_184:
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x1e], 0
	nop	
	jne	.label_443
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x120]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_446
.label_443:
	mov	rdi, qword ptr [rbp - 0x208]
	mov	esi, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	ecx, dword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0x1e0]
	mov	rsp, rsp
	call	copy_acl
	mov	r15b, 1
	test	eax, eax
	jne	.label_452
	jmp	.label_133
.label_446:
	mov	rax, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x2b], 0
	lea	rdi, [rdi]
	je	.label_455
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0x10]
	jmp	.label_458
.label_455:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_459
	mov	rax, qword ptr [rbp - 0x120]
	mov	al, byte ptr [rax + 0x20]
	mov	rsp, rsp
	test	al, al
	je	.label_459
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [rip + cached_umask.mask]]
	mov	rsp, rsp
	cmp	edx, -1
	jne	.label_461
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	call	umask
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_461:
	not	edx
	and	edx, 0x1b6
.label_458:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	ebx, dword ptr [rbp - 0x1f0]
	mov	esi, ebx
	call	set_acl
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	sete	r15b
	jmp	.label_131
.label_459:
	mov	r15b, 1
	cmp	dword ptr [rbp - 0x100], 0
	nop	
	je	.label_133
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_137
	mov	rbp, rbp
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	rsp, rsp
	mov	edi, eax
	call	umask
	nop	
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
.label_137:
	not	eax
	lea	rsi, [rsi]
	test	dword ptr [rbp - 0x100], eax
	je	.label_133
	cmp	dword ptr [rbp - 0x1f0], 0
	js	.label_155
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1f0]
	nop	
	mov	esi, dword ptr [rbp - 0x114]
	mov	rbp, rbp
	call	fchmod
	jmp	.label_162
.label_293:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.68
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x208]
	nop	
	call	quotearg_n_style_colon
	jmp	.label_319
.label_155:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	esi, dword ptr [rbp - 0x114]
	call	chmod
.label_162:
	nop	
	test	eax, eax
	je	.label_133
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
.label_452:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	r15b, byte ptr [rax + 0x24]
	xor	r15b, 1
.label_133:
	mov	ebx, dword ptr [rbp - 0x1f0]
.label_131:
	mov	edi, ebx
	call	close
	test	eax, eax
	lea	rdi, [rdi]
	jns	.label_206
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	nop	
	xor	r15d, r15d
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_206:
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x110]
	jmp	.label_226
.label_397:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	nop	
	jmp	.label_320
	nop	
	.section	.text
	.align	32
	#Procedure 0x409a10

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x40], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx], xmm0
	mov	rbp, rbp
	call	geteuid
	test	eax, eax
	nop	
	sete	byte ptr [rbx + 0x1b]
	lea	rdi, [rdi]
	sete	byte ptr [rbx + 0x1a]
	mov	dword ptr [rbx + 0x34], 0xffffffff
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a60

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_471
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_470
.label_471:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	pop	rbx
	ret	
.label_470:
	xor	eax, eax
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409aa0

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_472
	nop	
	push	rax
	xor	edi, edi
	mov	rsp, rsp
	call	umask
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	rbp, rbp
	mov	edi, eax
	call	umask
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	add	rsp, 8
.label_472:
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409ae0

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	r12d, ecx
	lea	rdi, [rdi]
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	movzx	r8d, r8b
	shl	r8d, 0xa
	mov	rsp, rsp
	mov	dword ptr [rsp], 0xffffffff
	lea	rsi, [rsi]
	movzx	r9d, dl
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	edx, 0xffffff9c
	mov	rsi, rbx
	mov	rcx, r15
	lea	rsi, [rsi]
	call	force_linkat
	mov	ebp, eax
	test	ebp, ebp
	mov	rsp, rsp
	jle	.label_473
	nop	
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	mov	rbp, rbp
	mov	r15, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, r15
	mov	r8, rbx
	nop	
	call	error
	jmp	.label_474
.label_473:
	mov	rbp, rbp
	test	ebp, ebp
	mov	rsp, rsp
	mov	r14b, 1
	jns	.label_474
	mov	rsp, rsp
	xor	r12b, 1
	lea	rsi, [rsi]
	jne	.label_474
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	__printf_chk
.label_474:
	mov	rsp, rsp
	mov	al, r14b
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409c40

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r14, rsi
	mov	r12, rdi
	nop	
	mov	eax, 0xf000
	mov	rsp, rsp
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_475
	nop	
	call	can_write_any_file
	test	al, al
	jne	.label_475
	mov	esi, 2
	mov	rdi, r14
	lea	rsi, [rsi]
	call	euidaccess
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_475
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbx + 0x18]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x14]
	call	strmode
	nop	
	mov	byte ptr [rsp + 0x1e], 0
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_477
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x15], 0
	mov	rbp, rbp
	jne	.label_477
	mov	rbp, rbp
	cmp	byte ptr [r12 + 0x16], 0
	mov	rsp, rsp
	je	.label_479
.label_477:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.54
.label_476:
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r12, rax
	nop	
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	lea	rsi, [rsi]
	mov	r8, rax
	nop	
	mov	r9d, dword ptr [rbx + 0x18]
	lea	rsi, [rsi]
	and	r9d, 0xfff
	lea	rax, [rsp + 0x15]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	esi, 1
	nop	
	xor	eax, eax
	nop	
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	lea	rdi, [rdi]
	call	__fprintf_chk
	mov	rsp, rsp
	jmp	.label_478
.label_475:
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56_0
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r12, rax
	lea	rsi, [rsi]
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	mov	rsp, rsp
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	rdx, r12
	mov	rcx, r13
	lea	rsi, [rsi]
	mov	r8, rbx
	call	__fprintf_chk
.label_478:
	call	yesno
	lea	rsi, [rsi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
.label_479:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55_0
	lea	rsi, [rsi]
	jmp	.label_476
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e00

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	mov	rsp, rsp
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14, rdx
	mov	rbx, rsi
	mov	rax, rdi
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rdx, rax
	mov	rsp, rsp
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.57_0
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rsp, rsp
	test	r14, r14
	je	.label_480
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	nop	
	mov	rsi, r14
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	nop	
	mov	rdx, rcx
	nop	
	call	__printf_chk
.label_480:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_481
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
.label_481:
	lea	rdi, [rdi]
	mov	esi, 0xa
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f00

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rax
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.75
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 0x5f
	xor	eax, eax
	nop	
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f50

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r13d, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_486
	cmp	byte ptr [r15 + 0x1e], 0
	mov	rsp, rsp
	je	.label_482
	mov	edx, dword ptr [r9 + 0x18]
	add	rcx, 0x18
	jmp	.label_483
.label_482:
	mov	rax, qword ptr [r15 + 0x18]
	test	al, al
	nop	
	jne	.label_485
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_486
.label_485:
	lea	rdi, [rdi]
	mov	edx, dword ptr [r9 + 0x18]
	test	al, al
	mov	rsp, rsp
	setne	bl
	lea	rsi, [rsi]
	movabs	rsi, 0xff000000000000
	mov	rsp, rsp
	test	rax, rsi
	lea	rdi, [rdi]
	jne	.label_488
	test	bl, bl
	mov	rsp, rsp
	jne	.label_488
	lea	rcx, [r15 + 0x10]
	nop	
	jmp	.label_483
.label_488:
	add	rcx, 0x18
.label_483:
	nop	
	mov	eax, dword ptr [rcx]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	or	ecx, 0xe00
	mov	rsp, rsp
	xor	ecx, 0x1ff
	and	ecx, edx
	lea	rdi, [rdi]
	test	cx, 0xfff
	je	.label_486
	lea	rsi, [rsi]
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	lea	rdi, [rdi]
	call	qset_acl
	nop	
	test	eax, eax
	je	.label_486
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_490
	cmp	ebx, 1
	lea	rsi, [rsi]
	jne	.label_491
.label_490:
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x1b], 0
	je	.label_493
.label_491:
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.76
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	nop	
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_493:
	mov	rsp, rsp
	movzx	eax, byte ptr [r15 + 0x24]
	nop	
	neg	eax
	lea	rsi, [rsi]
	jmp	.label_484
.label_486:
	mov	rsp, rsp
	cmp	r13d, -1
	lea	rsi, [rsi]
	je	.label_487
	mov	rsp, rsp
	mov	edi, r13d
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	mov	rsp, rsp
	je	.label_484
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	mov	rsp, rsp
	je	.label_496
	cmp	ebx, 1
	jne	.label_492
.label_496:
	mov	rsp, rsp
	mov	esi, 0xffffffff
	mov	rbp, rbp
	mov	edi, r13d
	mov	edx, r12d
	mov	rsp, rsp
	call	fchown
	mov	rbp, rbp
	jmp	.label_494
.label_487:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_484
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	rsp, rsp
	mov	ebx, dword ptr [rbp]
	lea	rsi, [rsi]
	cmp	ebx, 0x16
	je	.label_489
	cmp	ebx, 1
	jne	.label_492
.label_489:
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
.label_494:
	mov	rbp, rbp
	mov	dword ptr [rbp], ebx
.label_492:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rbp]
	nop	
	cmp	ebx, 0x16
	je	.label_495
	cmp	ebx, 1
	mov	rsp, rsp
	jne	.label_497
.label_495:
	nop	
	cmp	byte ptr [r15 + 0x1a], 0
	je	.label_498
.label_497:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r14
	nop	
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	error
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_484
.label_498:
	lea	rsi, [rsi]
	xor	eax, eax
.label_484:
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a1f0

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0xc], r9d
	mov	qword ptr [rsp + 0x40], r8
	mov	r12, rcx
	mov	qword ptr [rsp + 0x28], rdx
	nop	
	mov	dword ptr [rsp + 0x24], esi
	mov	dword ptr [rsp + 0x54], edi
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xa0]
	mov	r15, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	mov	qword ptr [rcx], 0
	nop	
	test	r8, r8
	mov	rax, r12
	lea	rdi, [rdi]
	cmovne	rax, r8
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	nop	
	xor	r14d, r14d
	jmp	.label_518
.label_504:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rax], r10b
	mov	r15, qword ptr [rsp + 0x90]
	mov	r12, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
.label_518:
	mov	qword ptr [rsp + 0x30], rdx
	cmp	rdx, r12
	mov	rbp, r12
	cmovb	rbp, rdx
	nop	
.label_519:
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_499
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, rbp
	mov	rbp, rbp
	call	read
	mov	r13, rax
	mov	rbp, rbp
	test	r13, r13
	jns	.label_514
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	cmp	ebx, 4
	mov	rdx, qword ptr [rsp + 0x30]
	je	.label_519
	jmp	.label_500
	nop	word ptr [rax + rax]
.label_514:
	je	.label_499
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], r12
	sub	qword ptr [rsp + 0x30], r13
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	add	qword ptr [rax], r13
	mov	rbp, rbp
	mov	r10b, r14b
	nop	
	and	r10b, 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	r8, rax
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x18]
	nop	dword ptr [rax + rax]
.label_520:
	lea	rsi, [rsi]
	mov	r9b, r10b
	cmp	rbp, r13
	mov	r12, r13
	cmovb	r12, rbp
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_501
	mov	rbp, rbp
	test	r12, r12
	nop	
	je	.label_501
	mov	rbp, rbp
	not	rbp
	mov	rsp, rsp
	mov	rcx, r13
	mov	rbp, rbp
	not	rcx
	mov	rsp, rsp
	cmp	rbp, rcx
	lea	rsi, [rsi]
	cmova	rcx, rbp
	nop	
	mov	rax, -2
	lea	rsi, [rsi]
	sub	rax, rcx
	mov	rbp, rbp
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	rbp, rcx
	nop	word ptr cs:[rax + rax]
.label_516:
	mov	rdx, rax
	mov	rbp, rbp
	cmp	byte ptr [rsi], 0
	jne	.label_513
	lea	rsi, [rsi]
	mov	r14b, 1
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_503
	inc	rsi
	lea	rax, [rdx - 1]
	nop	
	test	dl, 0xf
	jne	.label_516
	mov	r14, rdi
	mov	rdi, rbp
	mov	rbx, r8
	mov	r15b, r9b
	mov	rsp, rsp
	call	memcmp
	lea	rsi, [rsi]
	mov	r9b, r15b
	mov	r8, rbx
	lea	rsi, [rsi]
	mov	rdi, r14
	test	eax, eax
	mov	rbp, rbp
	sete	r14b
	jmp	.label_503
.label_513:
	mov	rbp, rbp
	xor	r14d, r14d
.label_503:
	mov	rsi, rbp
.label_501:
	lea	rsi, [rsi]
	mov	r10b, r14b
	and	r10b, 1
	lea	rdi, [rdi]
	movzx	eax, r9b
	lea	rsi, [rsi]
	movzx	ecx, r10b
	nop	
	sete	dl
	cmp	ecx, eax
	setne	bl
	mov	rbp, rbp
	test	rdi, rdi
	setne	al
	cmp	r13, r12
	sete	cl
	and	cl, dl
	mov	rbp, rbp
	test	r12, r12
	mov	rbp, rbp
	sete	r15b
	lea	rsi, [rsi]
	or	r15b, cl
	and	al, bl
	jne	.label_510
	test	r15b, r15b
	jne	.label_510
	nop	
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	lea	rdi, [rdi]
	cmp	rdi, rax
	ja	.label_522
	add	rdi, r12
	mov	rbp, r12
	jmp	.label_505
.label_510:
	mov	rsp, rsp
	mov	bl, r10b
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rsi
	lea	rsi, [rsi]
	test	al, 1
	mov	byte ptr [rsp + 0xb], al
	nop	
	mov	rbp, r12
	mov	eax, 0
	cmovne	rbp, rax
	mov	rsp, rsp
	add	rdi, rbp
	nop	
	test	r9b, r9b
	nop	
	mov	rcx, rdi
	je	.label_508
	mov	eax, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x98]
	call	create_hole
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_517
	mov	rbp, rbp
	jmp	.label_521
.label_508:
	nop	
	mov	edi, dword ptr [rsp + 0x24]
	lea	rsi, [rsi]
	mov	rsi, r8
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x18], rcx
	call	full_write
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_506
.label_517:
	lea	rsi, [rsi]
	test	r15b, r15b
	lea	rsi, [rsi]
	mov	r10b, bl
	lea	rsi, [rsi]
	je	.label_515
	mov	rsp, rsp
	test	r12, r12
	cmove	r13, r12
	test	byte ptr [rsp + 0xb], 1
	mov	eax, 0
	cmove	r12, rax
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	jmp	.label_511
	nop	dword ptr [rax + rax]
.label_515:
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rbp, r12
.label_511:
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r8, rsi
.label_505:
	add	rsi, rbp
	nop	
	sub	r13, rbp
	jne	.label_520
	jmp	.label_504
.label_499:
	test	r14b, 1
	lea	rdi, [rdi]
	je	.label_502
	mov	eax, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	movzx	edx, al
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	call	create_hole
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	je	.label_512
.label_502:
	nop	
	mov	r14b, 1
	jmp	.label_507
.label_500:
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r15
.label_509:
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
	lea	rsi, [rsi]
	jmp	.label_507
.label_512:
	xor	r14d, r14d
	jmp	.label_507
.label_522:
	xor	r14d, r14d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x90]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	lea	rsi, [rsi]
	jmp	.label_507
.label_521:
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_507:
	mov	al, r14b
	add	rsp, 0x58
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_506:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	jmp	.label_509
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6e0

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	mov	rbp, rcx
	nop	
	mov	r12d, edx
	mov	r14, rsi
	mov	rsp, rsp
	mov	ebx, edi
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rbp, rbp
	call	lseek
	test	rax, rax
	js	.label_524
	mov	r15b, 1
	mov	rbp, rbp
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_523
	sub	rax, rbp
	mov	esi, 3
	nop	
	mov	edi, ebx
	mov	rsp, rsp
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx, rbp
	mov	rsp, rsp
	call	fallocate
	nop	
	test	eax, eax
	jns	.label_523
	nop	
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x26
	je	.label_523
	nop	
	cmp	ebp, 0x5f
	je	.label_523
	xor	r15d, r15d
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.71
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rdx, rbx
	jmp	.label_525
.label_524:
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.69
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	nop	
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
.label_525:
	lea	rsi, [rsi]
	call	error
.label_523:
	mov	al, r15b
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a830

	.globl forget_created
	.type forget_created, @function
forget_created:
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdi
	nop	
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp + 8]
	call	hash_delete
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_526
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	nop	
	call	free
.label_526:
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a890

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8c0

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	mov	rbp, rbp
	call	hash_lookup
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	test	rcx, rcx
	nop	
	je	.label_527
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x10]
.label_527:
	mov	rsp, rsp
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a910

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, 0x18
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	call	xstrdup
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], r14
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	mov	rbp, rbp
	mov	rsi, rbx
	call	hash_insert
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_529
	xor	eax, eax
	cmp	r14, rbx
	je	.label_528
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	call	free
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x10]
.label_528:
	mov	rbp, rbp
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_529:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9c0

	.globl hash_init
	.type hash_init, @function
hash_init:
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	edi, 0x67
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:src_to_dest_hash
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:src_to_dest_compare
	nop	
	mov	r8d, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + src_to_dest]],  rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_530
	mov	rsp, rsp
	pop	rax
	lea	rsi, [rsi]
	ret	
.label_530:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa10

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40aa20

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsi]
	lea	rdi, [rdi]
	jne	.label_531
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	ret	
.label_531:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa50
	.globl forget_all
	.type forget_all, @function
forget_all:

	nop
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aa60

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	mov	dword ptr [rsi], edi
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x18], 0
	mov	qword ptr [rsi + 0x28], 0
	mov	qword ptr [rsi + 8], 0
	mov	byte ptr [rsi + 0x20], 0
	mov	byte ptr [rsi + 0x21], 0
	lea	rdi, [rdi]
	mov	dword ptr [rsi + 0x10], 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa90

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x1008
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 8]
	mov	r12, qword ptr [r13 + 0x28]
	movabs	rbp, 0x7fffffffffffffff
	xor	r14d, r14d
.label_540:
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	edx, 0x1000
	lea	rbx, [rsp]
	mov	rdi, rbx
	nop	
	call	memset
	nop	
	mov	qword ptr [rsp], r15
	lea	rdi, [rdi]
	mov	eax, dword ptr [r13 + 0x10]
	mov	dword ptr [rsp + 0x10], eax
	mov	dword ptr [rsp + 0x18], 0x48
	not	r15
	mov	qword ptr [rsp + 8], r15
	lea	rsi, [rsi]
	mov	edi, dword ptr [r13]
	mov	esi, 0xc020660b
	xor	eax, eax
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	ioctl
	test	eax, eax
	js	.label_541
	mov	ecx, dword ptr [rsp + 0x14]
	test	rcx, rcx
	je	.label_544
	mov	rax, qword ptr [r13 + 0x18]
	lea	rdi, [rdi]
	mov	rdx, rcx
	not	rdx
	cmp	rax, rdx
	ja	.label_548
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [r13 + 0x18], rax
	nop	
	movabs	rcx, 0x555555555555556
	cmp	rax, rcx
	lea	rdi, [rdi]
	mov	r15, rbp
	jae	.label_534
	mov	rdi, qword ptr [r13 + 0x28]
	sub	r12, rdi
	shl	rax, 3
	lea	rsi, [rax + rax*2]
	lea	rdi, [rdi]
	call	xrealloc
	mov	qword ptr [r13 + 0x28], rax
	nop	
	add	r12, rax
	mov	r8d, dword ptr [rsp + 0x14]
	test	r8d, r8d
	lea	rdi, [rdi]
	je	.label_533
	xor	r11d, r11d
	nop	dword ptr [rax]
.label_536:
	mov	ecx, r11d
	imul	rcx, rcx, 0x38
	mov	rdi, qword ptr [rsp + rcx + 0x20]
	nop	
	mov	rsi, qword ptr [rsp + rcx + 0x30]
	mov	rsp, rsp
	mov	rbp, r15
	lea	rsi, [rsi]
	sub	rbp, rsi
	cmp	rdi, rbp
	ja	.label_542
	test	r14d, r14d
	je	.label_547
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + rcx + 0x48]
	mov	ebx, r9d
	lea	rdi, [rdi]
	and	ebx, 0xfffffffe
	lea	rsi, [rsi]
	mov	r10, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r12]
	mov	rsp, rsp
	add	rdx, r10
	cmp	dword ptr [r12 + 0x10], ebx
	lea	rsi, [rsi]
	jne	.label_537
	cmp	rdx, rdi
	jne	.label_537
	mov	rsp, rsp
	add	r10, rsi
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 8], r10
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x10], r9d
	jmp	.label_538
	nop	dword ptr [rax]
.label_547:
	mov	rdx, qword ptr [r13 + 8]
	mov	rbp, rbp
	cmp	rdx, rdi
	lea	rsi, [rsi]
	ja	.label_545
	mov	r9d, dword ptr [rsp + rcx + 0x48]
	mov	rbp, rbp
	jmp	.label_546
	nop	dword ptr [rax]
.label_537:
	lea	rsi, [rsi]
	cmp	rdx, rdi
	nop	
	jbe	.label_546
.label_545:
	mov	rsp, rsp
	mov	rbp, rdx
	mov	rbp, rbp
	sub	rbp, rdi
	sub	rsi, rbp
	lea	rsi, [rsi]
	ja	.label_549
	lea	rdi, [rdi]
	lea	rdi, [rsp + rcx + 0x20]
	nop	
	lea	rcx, [rsp + rcx + 0x30]
	mov	qword ptr [rdi], rdx
	mov	qword ptr [rcx], rsi
	dec	r11d
	mov	rsp, rsp
	jmp	.label_538
	nop	dword ptr [rax]
.label_546:
	mov	rsp, rsp
	mov	ecx, r14d
	lea	rdi, [rdi]
	lea	rcx, [rcx + rcx*2]
	lea	r12, [rax + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8 + 8], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rax + rcx*8 + 0x10], r9d
	inc	r14d
.label_538:
	inc	r11d
	cmp	r11d, r8d
	nop	
	jb	.label_536
.label_533:
	lea	rsi, [rsi]
	test	byte ptr [r12 + 0x10], 1
	nop	
	je	.label_551
	mov	byte ptr [r13 + 0x21], 1
.label_551:
	mov	cl, byte ptr [r13 + 0x21]
	nop	
	cmp	r14d, 0x49
	jb	.label_550
	lea	rsi, [rsi]
	test	cl, cl
	mov	rsp, rsp
	jne	.label_552
	dec	r14d
	lea	rcx, [r14 + r14*2]
	lea	r12, [rax + rcx*8 - 0x18]
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x18], r14
	jmp	.label_543
	nop	word ptr [rax + rax]
.label_550:
	lea	rdi, [rdi]
	mov	eax, r14d
	nop	
	mov	qword ptr [r13 + 0x18], rax
	test	cl, cl
	mov	rbp, rbp
	jne	.label_532
.label_543:
	mov	rbp, r15
	mov	r15, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	add	r15, qword ptr [r12]
	mov	qword ptr [r13 + 8], r15
	mov	al, 1
	cmp	r14d, 0x48
	jb	.label_540
	jmp	.label_539
.label_549:
	cmp	qword ptr [r13 + 8], 0
	je	.label_535
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_539
.label_541:
	nop	
	cmp	qword ptr [r13 + 8], 0
	je	.label_535
	nop	
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_539
.label_535:
	mov	byte ptr [r13 + 0x20], 1
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_539
.label_544:
	mov	rsp, rsp
	mov	byte ptr [r13 + 0x21], 1
	cmp	qword ptr [r13 + 8], 0
	setne	al
	mov	rbp, rbp
	jmp	.label_539
.label_552:
	lea	rsi, [rsi]
	mov	eax, r14d
	mov	qword ptr [r13 + 0x18], rax
	mov	al, 1
	nop	
	jmp	.label_539
.label_532:
	mov	al, 1
.label_539:
	lea	rdi, [rdi]
	add	rsp, 0x1008
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_542:
	mov	edi, OFFSET FLAT:.str.2_0
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_548:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x7e
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_534:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ade0

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x128
	nop	
	mov	ebp, r9d
	mov	r15d, r8d
	mov	r12, rcx
	mov	rbp, rbp
	mov	ebx, edx
	mov	r13d, edi
	mov	r14d, dword ptr [rsp + 0x160]
	nop	
	test	r14d, r14d
	jns	.label_558
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	qword ptr [rsp + 0x120], rsi
	lea	rdi, [rdi]
	mov	edx, ebx
	nop	
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_557
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	nop	
	mov	rsi, qword ptr [rsp + 0x120]
.label_558:
	cmp	r14d, 0x11
	nop	
	jne	.label_557
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x120], rsi
	xor	bpl, 1
	mov	rsp, rsp
	jne	.label_557
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	call	last_component
	nop	
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	nop	
	mov	r14d, r15d
	cmp	rdi, 0x101
	lea	rsi, [rsi]
	jae	.label_554
	mov	rsp, rsp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	jmp	.label_560
.label_554:
	call	malloc
	lea	rsi, [rsi]
	mov	r15, rax
	mov	rsp, rsp
	test	r15, r15
	nop	
	je	.label_556
.label_560:
	nop	
	mov	rcx, -1
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	lea	rdi, [rdi]
	movabs	rcx, 0x5858585858587543
	nop	
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	byte ptr [rax + 8], 0
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_556
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x108], r13d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x120]
	mov	qword ptr [rsp + 0x110], rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x118], ebx
	mov	dword ptr [rsp + 0x11c], r14d
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x108]
	mov	rsp, rsp
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, r15
	call	try_tempname_len
	test	eax, eax
	je	.label_555
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_559
.label_556:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_557
.label_555:
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	edx, ebx
	lea	rsi, [rsi]
	mov	rcx, r12
	call	renameat
	lea	rsi, [rsi]
	mov	r14d, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	je	.label_553
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_553:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r15
	call	unlinkat
.label_559:
	lea	rsi, [rsi]
	lea	rax, [rsp]
	cmp	r15, rax
	je	.label_557
	mov	rdi, r15
	call	free
.label_557:
	mov	eax, r14d
	lea	rsi, [rsi]
	add	rsp, 0x128
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aff0

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	mov	r8, rdx
	mov	rsp, rsp
	shr	r8, 0x20
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b020

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x118
	mov	rsp, rsp
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	r14d, esi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rbp, rbp
	test	ebp, ebp
	lea	rdi, [rdi]
	jns	.label_565
	mov	rdi, r15
	mov	rsp, rsp
	mov	esi, r14d
	mov	rdx, r13
	mov	rbp, rbp
	call	symlinkat
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	rsp, rsp
	test	eax, eax
	nop	
	je	.label_562
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_565:
	mov	rbp, rbp
	cmp	ebp, 0x11
	lea	rsi, [rsi]
	jne	.label_562
	xor	bl, 1
	jne	.label_562
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_566
	mov	rbp, rbp
	lea	r12, [rsp]
	lea	rsi, [rsi]
	jmp	.label_567
.label_566:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_563
.label_567:
	mov	rcx, -1
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	__mempcpy_chk
	lea	rdi, [rdi]
	movabs	rcx, 0x5858585858587543
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_563
	mov	qword ptr [rsp + 0x108], r15
	mov	dword ptr [rsp + 0x110], r14d
	mov	rsp, rsp
	lea	rdx, [rsp + 0x108]
	xor	esi, esi
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	mov	rbp, rbp
	call	try_tempname_len
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_564
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_561
.label_563:
	mov	rsp, rsp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_562
.label_564:
	nop	
	mov	edi, r14d
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_561
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	lea	rsi, [rsi]
	call	unlinkat
.label_561:
	mov	rsp, rsp
	lea	rax, [rsp]
	cmp	r12, rax
	mov	rbp, rbp
	je	.label_562
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free
.label_562:
	mov	rsp, rsp
	mov	eax, ebp
	add	rsp, 0x118
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b1f0

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b210

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rdi
	call	qcopy_acl
	mov	ebp, eax
	nop	
	cmp	ebp, -1
	je	.label_568
	mov	rbp, rbp
	cmp	ebp, -2
	jne	.label_570
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, r14d
	nop	
	jmp	.label_569
.label_568:
	call	__errno_location
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	nop	
	mov	rdx, rbx
.label_569:
	call	error
.label_570:
	nop	
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b2c0

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	r14, rdi
	lea	rdi, [rdi]
	call	qset_acl
	mov	ebx, eax
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_571
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r15d
	nop	
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_571:
	lea	rsi, [rsi]
	mov	eax, ebx
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b350

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	nop	
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	mov	rbp, rbp
	cmovb	r12, rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_575
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_576:
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rsi, [rsi]
	call	readlink
	mov	r13, rax
	nop	
	test	r13, r13
	mov	rbp, rbp
	jns	.label_578
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	mov	rsp, rsp
	jne	.label_580
.label_578:
	mov	rsp, rsp
	cmp	r13, r12
	nop	
	jb	.label_574
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, r12
	mov	rsp, rsp
	shr	rax, 0x3e
	mov	rbp, rbp
	jne	.label_577
	add	r12, r12
	nop	
	jmp	.label_579
	nop	dword ptr [rax + rax]
.label_577:
	cmp	r12, r15
	mov	rsp, rsp
	mov	r12, r15
	jae	.label_572
.label_579:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_576
	mov	rsp, rsp
	jmp	.label_575
.label_574:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 0x10], rbx
	jmp	.label_575
.label_572:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jmp	.label_573
.label_580:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	mov	dword ptr [rbp], r14d
.label_573:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_575:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b4d0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x40b4e0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_587
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_581:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_585
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_582
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_586
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_583
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_585
.label_583:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_585
.label_586:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_585:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_581
	lea	rsi, [rsi]
	jmp	.label_584
.label_587:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_584:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_582:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b660
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_588
	mov	esi, OFFSET FLAT:.str.1_3
	nop	
	jmp	.label_589
.label_588:
	nop	
	mov	esi, OFFSET FLAT:.str_4
.label_589:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b700

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_592
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_594:
	test	r15, r15
	mov	rbp, rbp
	je	.label_593
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_591
.label_593:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_590
	nop	dword ptr [rax]
.label_591:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_590:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_594
.label_592:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_595
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_595:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b880

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_597
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_598
	mov	esi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	jmp	.label_596
.label_598:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_4
.label_596:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_597:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9a0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_599
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_600:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_599
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_600
.label_599:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ba30

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_601
	mov	edi, OFFSET FLAT:.str_5
	call	getenv
	nop	
	mov	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_602
.label_601:
	mov	eax, OFFSET FLAT:.str.1_4
	cmp	byte ptr [rbx], 0
	je	.label_602
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	last_component
	nop	
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	nop	
	cmove	rax, rbx
.label_602:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ba90

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x88
	mov	dword ptr [rsp + 0x84], ecx
	mov	r15d, edx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x40], rbp
	mov	dword ptr [rsp + 4], edi
	mov	rsp, rsp
	mov	rdi, rbp
	call	last_component
	mov	rbx, rax
	sub	rbx, rbp
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdi, rax
	mov	rbp, rbp
	call	strlen
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	add	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	lea	rsi, [rsi]
	test	rdi, rdi
	jne	.label_635
	mov	edi, OFFSET FLAT:.str_5
	lea	rsi, [rsi]
	call	getenv
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.1_4
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_610
	mov	edi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	cmp	byte ptr [rbx], 0
	nop	
	je	.label_610
	mov	rbp, rbp
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:.str.1_4
	cmove	rdi, rbx
.label_610:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rdi
.label_635:
	call	strlen
	nop	
	inc	rax
	mov	qword ptr [rsp + 0x30], rax
	cmp	rax, 9
	mov	rbp, rbp
	mov	ecx, 9
	nop	
	cmovae	rcx, rax
	lea	rdi, [rbp + rcx + 1]
	mov	qword ptr [rsp + 0x50], rdi
	nop	
	call	malloc
	nop	
	xor	r13d, r13d
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_618
	lea	rcx, [rbp + 1]
	mov	qword ptr [rsp + 0x58], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x6c], 0xffffffff
	lea	rcx, [rbp + 4]
	mov	qword ptr [rsp + 0x78], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbp
	xor	r12d, r12d
	mov	rsp, rsp
	mov	r13, rax
	nop	
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x70], rax
	nop	dword ptr [rax + rax]
.label_612:
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	cmp	r15d, 1
	lea	rsi, [rsi]
	jne	.label_637
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [r13 + rax]
	mov	r14, r13
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcpy
	mov	dword ptr [rsp + 0x14], 1
	mov	rbp, rbp
	jmp	.label_608
	nop	
.label_637:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	nop	
	call	base_len
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_617
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], r15d
	lea	rdi, [rdi]
	mov	rdi, r12
	call	rewinddir
	lea	rdi, [rdi]
	mov	r15, rbp
	lea	rdi, [rdi]
	jmp	.label_622
.label_617:
	nop	
	mov	r14w, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r13
	lea	rcx, [rsp + 0x6c]
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_628
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], r15d
	lea	rdi, [rdi]
	mov	word ptr [rbx], r14w
	nop	
	mov	r15, rbp
	mov	byte ptr [rbx + r15 + 4], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbx + r15], 0x7e317e2e
.label_622:
	mov	rdi, r12
	call	readdir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_606
	lea	rsi, [rsi]
	mov	r14, r13
	mov	rbp, rbp
	lea	r13, [r15 + 4]
	lea	rax, [r15 + 2]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	mov	eax, 2
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 1
	nop	
	mov	qword ptr [rsp + 0x48], rax
	nop	word ptr cs:[rax + rax]
.label_630:
	mov	rsp, rsp
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	nop	
	jb	.label_619
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rdi, [r14 + rax]
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcmp
	nop	
	test	eax, eax
	jne	.label_619
	mov	rsp, rsp
	mov	al, byte ptr [rbx + r15 + 0x15]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	add	cl, 0xcf
	lea	rdi, [rdi]
	movzx	ecx, cl
	mov	rbp, rbp
	cmp	ecx, 8
	mov	rbp, rbp
	ja	.label_619
	lea	rcx, [rbx + r15 + 0x13]
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0x39
	lea	rdi, [rdi]
	mov	rdx, r15
	lea	rsi, [rsi]
	sete	r15b
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	mov	rbp, rbp
	cmp	ecx, 9
	mov	rbp, rbp
	ja	.label_627
	lea	rsi, [rsi]
	lea	rcx, [rbx + rdx + 0x17]
	mov	qword ptr [rsp + 0x60], rdx
	lea	rsi, [rsi]
	xor	edx, edx
	nop	dword ptr [rax]
.label_634:
	mov	rbp, rbp
	mov	rbp, rdx
	nop	
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0x39
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	and	r15b, al
	movsx	eax, byte ptr [rcx + rbp]
	mov	esi, eax
	lea	rsi, [rsi]
	add	esi, -0x30
	lea	rdx, [rbp + 1]
	cmp	esi, 0xa
	jb	.label_634
	lea	rsi, [rsi]
	add	rbp, 2
	jmp	.label_605
.label_627:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], rdx
	lea	rsi, [rsi]
	mov	ebp, 1
.label_605:
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0x7e
	nop	
	jne	.label_611
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	lea	rbx, [rbx + rax + 0x15]
	cmp	byte ptr [rbp + rbx + 1], 0
	je	.label_613
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_619
.label_611:
	nop	
	mov	r15, qword ptr [rsp + 0x60]
	jmp	.label_619
.label_613:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x48], rbp
	lea	rdi, [rdi]
	jb	.label_620
	mov	rsp, rsp
	jne	.label_623
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	lea	rdi, [r14 + rax + 2]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	call	memcmp
	test	eax, eax
	jle	.label_620
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x60]
	jmp	.label_619
.label_620:
	lea	rdi, [rdi]
	movzx	edx, r15b
	mov	rsp, rsp
	lea	rcx, [rdx + rbp]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	lea	r15, [rax + rcx]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, r15
	nop	
	jae	.label_626
	lea	rdi, [rdi]
	mov	rax, r15
	lea	rdi, [rdi]
	shr	rax, 0x3e
	sete	cl
	lea	rsi, [rsi]
	shl	r15, cl
	nop	
	mov	rdi, r14
	mov	rsi, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rdi]
	call	realloc
	nop	
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x18], r15
	jne	.label_604
	jmp	.label_607
.label_626:
	mov	rax, r14
.label_604:
	mov	qword ptr [rsp + 8], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rax + rcx]
	mov	byte ptr [rax + rcx], 0x2e
	mov	rsp, rsp
	lea	r15, [rsi + rdx]
	mov	rsp, rsp
	mov	word ptr [rax + rcx + 1], 0x307e
	mov	r14, rax
	lea	rdi, [rdx + rsi + 2]
	lea	rdx, [rbp + 2]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	memcpy
	lea	rax, [rbp + r15 + 1]
	nop	
	movzx	ecx, byte ptr [rbp + r15 + 1]
	jmp	.label_621
	nop	dword ptr [rax]
.label_614:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_621:
	cmp	ecx, 0x39
	je	.label_614
	lea	rsi, [rsi]
	inc	cl
	nop	
	mov	byte ptr [rax], cl
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x60]
	jmp	.label_619
.label_623:
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x60]
	nop	dword ptr [rax]
.label_619:
	mov	rsp, rsp
	mov	rdi, r12
	call	readdir
	lea	rsi, [rsi]
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_630
	mov	r13, r14
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_631
.label_628:
	nop	
	mov	dword ptr [rsp + 0x14], r15d
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, 3
	cmp	dword ptr [rax], 0xc
	je	.label_636
	mov	ecx, 2
.label_636:
	mov	word ptr [rbx], r14w
	mov	byte ptr [rbx + rbp + 4], 0
	mov	rbp, rbp
	mov	dword ptr [rbx + rbp], 0x7e317e2e
	mov	rbp, rbp
	xor	r12d, r12d
.label_631:
	cmp	ecx, 1
	lea	rsi, [rsi]
	je	.label_603
	cmp	ecx, 2
	nop	
	je	.label_606
	mov	r14, r13
	nop	
	cmp	ecx, 3
	jne	.label_608
	mov	rbp, rbp
	jmp	.label_607
.label_606:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x14]
	cmp	eax, 2
	lea	rdi, [rdi]
	jne	.label_603
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [r13 + rax]
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	nop	
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	memcpy
	mov	dword ptr [rsp + 0x14], 1
.label_603:
	mov	r15d, dword ptr [rsp + 0x6c]
	mov	rbp, rbp
	mov	rdi, r13
	call	last_component
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsp, rsp
	call	base_len
	mov	rbp, rax
	nop	
	cmp	rbp, 0xf
	jb	.label_625
	mov	rax, qword ptr [rsp + 0x70]
	test	rax, rax
	jne	.label_616
	nop	
	mov	r14, r13
	mov	rsp, rsp
	test	r15d, r15d
	js	.label_629
	call	__errno_location
	mov	r13, rax
	nop	
	mov	dword ptr [r13], 0
	mov	esi, 3
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rbp, rbp
	call	fpathconf
	cmp	dword ptr [r13], 1
	lea	rdi, [rdi]
	sbb	rax, 0
	jmp	.label_633
.label_625:
	mov	eax, 0xff
	lea	rsi, [rsi]
	jmp	.label_616
.label_629:
	lea	rsi, [rsi]
	mov	r15w, word ptr [rbx]
	lea	rdi, [rdi]
	mov	word ptr [rbx], 0x2e
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r13, rax
	lea	rdi, [rdi]
	mov	dword ptr [r13], 0
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	pathconf
	cmp	dword ptr [r13], 1
	sbb	rax, 0
	nop	
	mov	word ptr [rbx], r15w
.label_633:
	nop	
	cmp	rax, -1
	mov	rdx, -1
	mov	ecx, 0xe
	cmovl	rdx, rcx
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	cmovns	rdx, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rdx
	mov	rax, rdx
	nop	
	mov	r13, r14
	nop	dword ptr [rax + rax]
.label_616:
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_624
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rcx, [r13 + rcx]
	mov	r14, r13
	mov	rbp, rbp
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	lea	rdi, [rdi]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	mov	rsp, rsp
	jmp	.label_608
.label_624:
	mov	r14, r13
	nop	word ptr [rax + rax]
.label_608:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x84]
	nop	
	test	al, al
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rsp + 0x14]
	nop	
	mov	r13, r14
	je	.label_609
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsp + 0x6c]
	test	edx, edx
	jns	.label_632
	nop	
	mov	dword ptr [rsp + 0x6c], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
.label_632:
	nop	
	cmp	r15d, 1
	setne	al
	movzx	r8d, al
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rcx, [r13 + rax]
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	renameatu
	test	eax, eax
	mov	rsp, rsp
	je	.label_609
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	nop	
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	cmp	ebp, 0x11
	je	.label_612
	test	r12, r12
	je	.label_615
	mov	rsp, rsp
	mov	rdi, r12
	call	closedir
.label_615:
	lea	rdi, [rdi]
	mov	rdi, r13
	call	free
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
	xor	r13d, r13d
	nop	
	jmp	.label_618
.label_609:
	test	r12, r12
	nop	
	je	.label_618
	nop	
	mov	rdi, r12
	call	closedir
	jmp	.label_618
.label_607:
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	xor	r13d, r13d
.label_618:
	lea	rdi, [rdi]
	mov	rax, r13
	add	rsp, 0x88
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c2c0

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	nop	
	mov	ecx, 1
	jmp	backupfile_internal
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c2d0

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	mov	rsp, rsp
	push	rax
	xor	ecx, ecx
	lea	rdi, [rdi]
	call	backupfile_internal
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_638
	pop	rcx
	nop	
	ret	
.label_638:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c2f0
	.globl get_version
	.type get_version, @function
get_version:

	mov	rbp, rbp
	mov	eax, 2
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_639
	cmp	byte ptr [rsi], 0
	je	.label_639
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsp, rsp
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_639:
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c340

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rax
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_640
	cmp	byte ptr [rsi], 0
	lea	rdi, [rdi]
	je	.label_640
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	nop	
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_641
.label_640:
	mov	edi, OFFSET FLAT:.str.1_5
	call	getenv
	nop	
	mov	ecx, 2
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_642
	nop	
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_642
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_6
	mov	edx, OFFSET FLAT:backup_args
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rbp, rbp
	mov	rsi, rax
.label_641:
	lea	rsi, [rsi]
	call	__xargmatch_internal
	nop	
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
.label_642:
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	pop	rcx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c3e0

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
	#Procedure 0x40c450
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	nop
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c460

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rsp, rsp
	push	r14
	nop	
	push	rbx
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	mov	rbp, rbp
	je	.label_650
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fseeko
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_650
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	setne	bpl
.label_650:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	nop	
	jne	.label_648
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_648
	pop	rbx
	pop	r14
	pop	rbp
	mov	rsp, rsp
	jmp	close_stdout
.label_648:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_649
	xor	edi, edi
	nop	
	mov	edx, OFFSET FLAT:.str_3
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_647
.label_649:
	nop	
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
.label_647:
	call	close_stdout
	nop	
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c570
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c580
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c590

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_652
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_651
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_651
.label_652:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_654
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_651:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_8
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name_0]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_653
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_654:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_653:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_6
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c690

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	call	mdir_name
	mov	rbp, rbp
	test	rax, rax
	je	.label_655
	pop	rcx
	ret	
.label_655:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c6b0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_657:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_656
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_657
.label_656:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c720

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	r15d, al
	nop	
	call	last_component
	nop	
	sub	rax, r14
	nop	dword ptr [rax]
.label_661:
	mov	rbx, rax
	mov	rsp, rsp
	cmp	r15, rbx
	mov	rsp, rsp
	jae	.label_658
	lea	rax, [rbx - 1]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	je	.label_661
.label_658:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	rdi, [rbx + rax + 1]
	mov	rsp, rsp
	call	malloc
	nop	
	mov	r15, rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	test	r15, r15
	je	.label_660
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	memcpy
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_659
	lea	rdi, [rdi]
	mov	byte ptr [r15], 0x2e
	nop	
	mov	ebx, 1
.label_659:
	mov	rbp, rbp
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_660:
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c7e0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_662:
	nop	
	movzx	edx, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	edx, 0x2f
	mov	rbp, rbp
	je	.label_662
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_663
	nop	dword ptr [rax + rax]
.label_664:
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	mov	r8b, cl
.label_663:
	mov	cl, 1
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0x2f
	je	.label_664
	mov	rsp, rsp
	test	dl, dl
	mov	rbp, rbp
	je	.label_666
	mov	cl, r8b
	mov	rsp, rsp
	and	cl, 1
	je	.label_665
	xor	r8d, r8d
.label_665:
	lea	rsi, [rsi]
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	nop	
	jmp	.label_664
.label_666:
	mov	rsp, rsp
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c860

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_668:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_667
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_668
.label_667:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c8a0

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
	#Procedure 0x40c8d0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c8e0
	.globl fadvise
	.type fadvise, @function
fadvise:

	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_670
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_670:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c910

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_671
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_671:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_672
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rsp, rsp
	lea	rax, [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x10
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_674
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_673
.label_674:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_673:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_672:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	open
	mov	edi, eax
	mov	rsp, rsp
	call	fd_safer
	mov	rbp, rbp
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca30

	.globl record_file
	.type record_file, @function
record_file:
	nop	
	push	r15
	nop	
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	nop	
	je	.label_675
	mov	edi, 0x18
	call	xmalloc
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	mov	rsp, rsp
	je	.label_676
	cmp	rax, rbx
	je	.label_675
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	jmp	triple_free
.label_675:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	ret	
.label_676:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cae0

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_677
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	nop	
	mov	rax, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	nop	
	ret	
.label_677:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cb30

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	rbp, rbp
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0x5fff
	mov	rbp, rbp
	jle	.label_688
	lea	rdi, [rdi]
	cmp	ecx, 0x9fff
	mov	rbp, rbp
	jg	.label_681
	cmp	ecx, 0x6000
	je	.label_686
	lea	rdi, [rdi]
	mov	dl, 0x2d
	mov	rsp, rsp
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	je	.label_682
	mov	rbp, rbp
	jmp	.label_680
.label_688:
	cmp	ecx, 0x1000
	je	.label_694
	nop	
	cmp	ecx, 0x2000
	je	.label_695
	cmp	ecx, 0x4000
	jne	.label_680
	mov	dl, 0x64
	mov	rbp, rbp
	jmp	.label_682
.label_681:
	lea	rsi, [rsi]
	cmp	ecx, 0xa000
	mov	rbp, rbp
	je	.label_679
	lea	rdi, [rdi]
	cmp	ecx, 0xc000
	jne	.label_680
	nop	
	mov	dl, 0x73
	jmp	.label_682
.label_686:
	lea	rsi, [rsi]
	mov	dl, 0x62
	jmp	.label_682
.label_694:
	mov	rbp, rbp
	mov	dl, 0x70
	mov	rbp, rbp
	jmp	.label_682
.label_679:
	mov	dl, 0x6c
	jmp	.label_682
.label_680:
	mov	dl, 0x3f
	mov	rsp, rsp
	jmp	.label_682
.label_695:
	mov	rbp, rbp
	mov	dl, 0x63
.label_682:
	nop	
	push	rbx
	mov	byte ptr [rsi], dl
	lea	rsi, [rsi]
	mov	bl, ah
	lea	rsi, [rsi]
	test	bl, 1
	mov	r9b, 0x72
	mov	rbp, rbp
	mov	cl, 0x72
	jne	.label_685
	mov	cl, 0x2d
.label_685:
	mov	byte ptr [rsi + 1], cl
	nop	
	mov	cl, al
	sar	cl, 7
	and	cl, 0x4a
	lea	rsi, [rsi]
	add	cl, 0x2d
	mov	byte ptr [rsi + 2], cl
	mov	ecx, eax
	and	ecx, 0x40
	mov	edx, ecx
	mov	rbp, rbp
	shr	edx, 1
	lea	rsi, [rsi]
	or	edx, 0x53
	lea	rsi, [rsi]
	test	ecx, ecx
	mov	rbp, rbp
	mov	r8b, 0x78
	lea	rdi, [rdi]
	mov	cl, 0x78
	jne	.label_692
	mov	cl, 0x2d
.label_692:
	test	bl, 8
	jne	.label_691
	mov	rsp, rsp
	mov	dl, cl
.label_691:
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	nop	
	jne	.label_693
	mov	cl, 0x2d
.label_693:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_678
	mov	rsp, rsp
	mov	cl, 0x2d
.label_678:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	nop	
	and	ecx, 8
	lea	rsi, [rsi]
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	lea	rsi, [rsi]
	jne	.label_684
	nop	
	mov	cl, 0x2d
.label_684:
	mov	rsp, rsp
	test	bl, 4
	jne	.label_689
	lea	rdi, [rdi]
	mov	dil, cl
.label_689:
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_696
	mov	r9b, 0x2d
.label_696:
	nop	
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_683
	mov	dl, 0x2d
.label_683:
	nop	
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	nop	
	jne	.label_687
	mov	rbp, rbp
	mov	r8b, 0x2d
.label_687:
	mov	rbp, rbp
	test	bl, 2
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	je	.label_690
	shl	eax, 5
	or	eax, 0x54
	mov	r8b, al
.label_690:
	mov	rbp, rbp
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ccd0
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	lea	rdi, [rdi]
	mov	edi, dword ptr [rdi + 0x18]
	nop	
	jmp	strmode
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cce0

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_697
	lea	rsi, [rsi]
	pop	rcx
	ret	
.label_697:
	mov	rsp, rsp
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40cd00

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	base_len
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	sub	rbx, r13
	add	rbx, rbp
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_702
	movzx	ecx, byte ptr [rbx + r13 - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_705
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_699
.label_702:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_704
	jmp	.label_700
.label_705:
	nop	
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_701
.label_700:
	xor	r12d, r12d
	jmp	.label_704
.label_701:
	mov	r12b, 0x2f
.label_704:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
.label_699:
	test	r12b, r12b
	nop	
	setne	cl
	movzx	ebp, cl
	nop	
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	lea	rdi, [rdi]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_698
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	lea	rsi, [rsi]
	add	rbp, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_703
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
.label_703:
	nop	
	mov	rcx, -1
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	nop	
	mov	rax, r14
.label_698:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ce50

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
	#Procedure 0x40ceb0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cec0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ced0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cee0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	nop	
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rcx, rdx
	jae	.label_709
	mov	rdi, rcx
	not	rdi
	nop	
	add	rdi, rdx
	mov	rsi, rdi
	mov	rbp, rbp
	shr	rsi, 4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	bt	rdi, 4
	jb	.label_715
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_716
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_713:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_713
.label_716:
	add	rcx, 0x10
.label_715:
	nop	
	test	rsi, rsi
	je	.label_709
	nop	word ptr cs:[rax + rax]
.label_712:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_710
	nop	word ptr cs:[rax + rax]
.label_711:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_711
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_710:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_717
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_714:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_714
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_717:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_712
.label_709:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cff0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_728
	mov	rbp, rbp
	mov	rax, rcx
	mov	rbp, rbp
	not	rax
	lea	rdi, [rdi]
	add	rax, r9
	mov	rbp, rbp
	mov	r8, rax
	shr	r8, 4
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rax, 4
	jb	.label_720
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_729
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_726:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_726
	mov	rsp, rsp
	jmp	.label_725
.label_720:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_727
.label_729:
	xor	esi, esi
.label_725:
	add	rcx, 0x10
.label_727:
	test	r8, r8
	nop	
	je	.label_728
	nop	dword ptr [rax]
.label_721:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_718
	nop	dword ptr [rax]
.label_723:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_723
	lea	rdi, [rdi]
	inc	rsi
.label_718:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_730
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_719:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_719
	inc	rsi
.label_730:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_721
.label_728:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_722
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_724
.label_722:
	xor	eax, eax
.label_724:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d100
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	rax, rdx
	lea	rdi, [rdi]
	jae	.label_731
	mov	rsp, rsp
	mov	rdi, rax
	not	rdi
	mov	rbp, rbp
	add	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 4
	mov	rsp, rsp
	xor	ebx, ebx
	bt	rdi, 4
	mov	rbp, rbp
	jb	.label_732
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_734
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_736:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_736
.label_734:
	add	rax, 0x10
.label_732:
	test	rsi, rsi
	je	.label_731
	nop	dword ptr [rax]
.label_742:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_735
	nop	word ptr cs:[rax + rax]
.label_737:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_737
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_735:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_733
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_738:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_738
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_733:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_742
.label_731:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_9
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_7
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_739]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_740]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_741]]
	mov	rsp, rsp
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	mov	rsp, rsp
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_2
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d310

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_747
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_744
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_744
	cmp	rsi, r12
	je	.label_743
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_745:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_746
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_744
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_745
.label_743:
	mov	r15, r12
	jmp	.label_744
.label_746:
	nop	
	mov	r15, qword ptr [rbx]
.label_744:
	lea	rsi, [rsi]
	mov	rax, r15
	nop	
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	ret	
.label_747:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d3d0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_748
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_751
	nop	dword ptr [rax]
.label_749:
	add	rcx, 0x10
.label_751:
	cmp	rcx, rdx
	jae	.label_750
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_749
.label_748:
	mov	rsp, rsp
	ret	
.label_750:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d410
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	jae	.label_756
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_757:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_753
	test	rdx, rdx
	jne	.label_757
	lea	rdi, [rdi]
	jmp	.label_754
.label_753:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_754
	mov	rax, qword ptr [rdx]
	jmp	.label_752
.label_754:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_755:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_752
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_755
.label_752:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_756:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d4b0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_758
	nop	word ptr cs:[rax + rax]
.label_760:
	add	r9, 0x10
.label_758:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_759
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_760
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_760
	nop	word ptr cs:[rax + rax]
.label_761:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_759
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10]
	nop	
	mov	qword ptr [rsi + rax*8], rcx
	lea	rdi, [rdi]
	inc	rax
	mov	rsp, rsp
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	nop	
	jne	.label_761
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_760
.label_759:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d530
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_765
	nop	dword ptr [rax]
.label_763:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_765:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_764
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_763
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_763
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_764
	nop	word ptr [rax + rax]
.label_766:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_762
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_766
	jmp	.label_764
	nop	word ptr cs:[rax + rax]
.label_762:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_763
.label_764:
	nop	
	mov	rax, rbx
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d600
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_768
	inc	rdi
	nop	
	xor	edx, edx
.label_767:
	mov	rcx, rdx
	nop	
	shl	rcx, 5
	sub	rcx, rdx
	nop	
	movzx	eax, al
	add	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_767
.label_768:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d640
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_769]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d660

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	r14, r8
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r12, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	r13, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	ebp, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	rbp, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r15, r15
	je	.label_778
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_773
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_780]]
	jbe	.label_770
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_784]]
	ucomiss	xmm1, xmm0
	jbe	.label_770
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_776]]
	lea	rsi, [rsi]
	jbe	.label_770
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_770
	addss	xmm1,  dword ptr [dword ptr [rip + label_780]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_770
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_781]]
	ucomiss	xmm2, xmm0
	jb	.label_770
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_770
.label_773:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_785
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_772
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_777
.label_772:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_777:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_782]]
	mov	rbp, rbp
	movaps	xmm2, xmm0
	mov	rbp, rbp
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_783]]
	nop	
	jae	.label_770
.label_785:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_775
.label_774:
	mov	rbp, rbp
	add	rbx, 2
.label_775:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_770
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_779
	nop	word ptr cs:[rax + rax]
.label_771:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_779
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_771
.label_779:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_774
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_770
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_770
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_770
	mov	rsp, rsp
	shl	rbx, 4
	nop	
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x30], r13
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	lea	rdi, [rdi]
	jmp	.label_778
.label_770:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_778:
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d940

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsp, rsp
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d960

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	cmp	rdi, rsi
	sete	al
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d970
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r15]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_790
.label_786:
	mov	rsp, rsp
	add	r14, 0x10
.label_790:
	cmp	r14, rax
	jae	.label_791
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_786
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_789
	nop	word ptr [rax + rax]
.label_788:
	nop	
	test	cl, 1
	je	.label_787
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_787:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	nop	
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	jne	.label_788
.label_789:
	test	cl, cl
	je	.label_792
	mov	rdi, qword ptr [r14]
	call	rax
.label_792:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_786
.label_791:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da50

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_797
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_797
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_802
	nop	word ptr [rax + rax]
.label_798:
	mov	rsp, rsp
	add	r15, 0x10
.label_802:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_797
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_798
	test	r15, r15
	je	.label_798
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_794
	nop	dword ptr [rax]
.label_793:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_794:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_793
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_798
.label_797:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_800
	nop	dword ptr [rax + rax]
.label_795:
	mov	rbp, rbp
	add	r15, 0x10
.label_800:
	cmp	r15, rax
	jae	.label_801
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_795
	nop	dword ptr [rax + rax]
.label_799:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_799
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_795
.label_801:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_803
	nop	word ptr cs:[rax + rax]
.label_796:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_796
.label_803:
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rbp, rbp
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40db80

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_804
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_815
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_822
.label_815:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_822:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_782]]
	mov	rsp, rsp
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rcx, rax
	lea	rsi, [rsi]
	cvttss2si	rsi, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovae	rsi, rcx
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_783]]
	mov	rbp, rbp
	jae	.label_806
.label_804:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_819
	nop	word ptr cs:[rax + rax]
.label_818:
	lea	rsi, [rsi]
	add	rbx, 2
.label_819:
	cmp	rbx, -1
	je	.label_806
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_810
.label_820:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_810
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_820
.label_810:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_818
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_806
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_814
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_806
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	mov	rsp, rsp
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	nop	
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_813
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_814
.label_813:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_812
.label_808:
	add	r12, 0x10
.label_812:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_811
	cmp	qword ptr [r12], 0
	je	.label_808
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_807
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_821:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_809
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_817
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_805
	nop	
.label_817:
	lea	rdi, [rdi]
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rbp
.label_805:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_821
.label_807:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_808
.label_811:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_816
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_806:
	mov	rbp, rbp
	xor	ebp, ebp
.label_814:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_809:
	mov	rbp, rbp
	call	abort
.label_816:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40def0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	mov	rbp, rbp
	mov	r14, qword ptr [r12]
	nop	
	mov	al, 1
	nop	
	cmp	r14, qword ptr [r12 + 8]
	nop	
	jae	.label_825
	nop	word ptr cs:[rax + rax]
.label_831:
	mov	r13, qword ptr [r14]
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_833
	lea	rdi, [rdi]
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_823
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x10]
	nop	word ptr [rax + rax]
.label_836:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	nop	
	call	qword ptr [rbp + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_832
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_824
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], r15
	nop	
	jmp	.label_828
	nop	word ptr cs:[rax + rax]
.label_824:
	mov	rbp, rbp
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	nop	
	mov	qword ptr [r15], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	nop	
	mov	qword ptr [rbp + 0x48], r15
.label_828:
	test	rcx, rcx
	mov	r15, rcx
	mov	rsp, rsp
	jne	.label_836
	mov	r13, qword ptr [r14]
.label_823:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], 0
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 4]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_833
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	mov	rbp, rbp
	call	qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	cmp	rbx, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	jae	.label_830
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	nop	
	cmp	qword ptr [r15 + rbx], 0
	je	.label_834
	mov	rax, qword ptr [rbp + 0x48]
	nop	
	test	rax, rax
	je	.label_826
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_827
.label_834:
	nop	
	add	r15, rbx
	nop	
	mov	qword ptr [r15], r13
	nop	
	inc	qword ptr [rbp + 0x18]
	mov	rsp, rsp
	jmp	.label_829
.label_826:
	mov	edi, 0x10
	nop	
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_835
.label_827:
	mov	qword ptr [rax], r13
	nop	
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_829:
	mov	rbp, rbp
	mov	qword ptr [r14], 0
	nop	
	dec	qword ptr [r12 + 0x18]
.label_833:
	mov	rbp, rbp
	add	r14, 0x10
	mov	rbp, rbp
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_831
	mov	al, 1
.label_825:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_835:
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_825
.label_832:
	call	abort
.label_830:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e100

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rbp
	mov	r13, rdi
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_837
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x30]
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	rbp, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	jae	.label_837
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_842
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_866
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_839
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_858
.label_866:
	mov	rax, r14
	jmp	.label_844
.label_839:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_842
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_860:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_850
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_857
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_860
	nop	
	jmp	.label_842
.label_850:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_858
.label_857:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_858:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_842
.label_844:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_841
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_841
.label_842:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_840
	cvtsi2ss	xmm1, rax
	jmp	.label_848
.label_840:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_848:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_859
	cvtsi2ss	xmm0, rcx
	jmp	.label_865
.label_859:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_865:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_838
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_847
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_780]]
	jbe	.label_851
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_784]]
	ucomiss	xmm3, xmm2
	jbe	.label_851
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_776]]
	jbe	.label_851
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_851
	addss	xmm3,  dword ptr [dword ptr [rip + label_780]]
	ucomiss	xmm2, xmm3
	jbe	.label_851
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_781]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_851
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_853
.label_851:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_852]]
	jmp	.label_853
.label_847:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_853:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_838
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_861
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_861:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_783]]
	mov	rsp, rsp
	jae	.label_841
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_782]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	lea	rdi, [rdi]
	je	.label_841
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_837
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_838
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_862
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_846
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_862
.label_846:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_838
	lea	rbp, [r15 + rbp + 8]
.label_864:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_856
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_863
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_864
	lea	rsi, [rsi]
	jmp	.label_838
.label_856:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_862
.label_863:
	mov	rax, qword ptr [rbp]
.label_862:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_843
.label_838:
	cmp	qword ptr [r12], 0
	je	.label_845
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_849
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_867
.label_845:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_854]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_855
.label_849:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_841
.label_867:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_855:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_841:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_837:
	mov	rsp, rsp
	call	abort
.label_843:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e540

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, -1
	je	.label_868
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_868:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e590

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_880
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_875
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_883
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_887
	mov	r14, qword ptr [r13]
.label_883:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_879
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax]
	lea	rsi, [rsi]
	movups	xmmword ptr [r13], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_874
.label_887:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_875
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_889:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_882
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_884
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_889
	lea	rsi, [rsi]
	jmp	.label_875
.label_879:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_874
.label_882:
	mov	rcx, rax
	jmp	.label_877
.label_884:
	mov	r14, qword ptr [rcx]
.label_877:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_874:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_875
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_870
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_885
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_872
.label_885:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_872:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_878
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_881
.label_878:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_881:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_870
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_886
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_780]]
	nop	
	jbe	.label_869
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_784]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_869
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_869
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_776]]
	jbe	.label_869
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_780]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_869
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_781]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_869
	ucomiss	xmm3, xmm4
	ja	.label_871
.label_869:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_871
.label_886:
	mov	eax, OFFSET FLAT:default_tuning
.label_871:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_870
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_876
	mulss	xmm0, dword ptr [rax + 8]
.label_876:
	movss	xmm1,  dword ptr [dword ptr [rip + label_782]]
	nop	
	movaps	xmm2, xmm0
	lea	rsi, [rsi]
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	mov	rbp, rbp
	test	al, al
	jne	.label_870
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_888
.label_873:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_873
.label_888:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_870:
	nop	
	mov	r12, r14
.label_875:
	mov	rax, r12
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_880:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e8e0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	xor	edx, edx
	div	r14
	mov	rsp, rsp
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e920

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	nop
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	nop	
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e930

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	nop
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_890
	nop	
	mov	rax, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_891
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	mov	rsp, rsp
	add	rsp, 8
	ret	
.label_890:
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_891:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e970
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_893
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_892
	mov	rbp, rbp
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	sete	al
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rbp, rbp
	ret	
.label_893:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	ret	
.label_892:
	lea	rsi, [rsi]
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e9c0

	.globl triple_free
	.type triple_free, @function
triple_free:
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e9f0

	.globl opendirat
	.type opendirat, @function
opendirat:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	r14, rcx
	mov	rsp, rsp
	or	edx, 0x90900
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	xor	eax, eax
	call	openat_safer
	lea	rsi, [rsi]
	mov	ebp, eax
	test	ebp, ebp
	js	.label_894
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_895
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_894
.label_895:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	mov	rsp, rsp
	call	close
	lea	rsi, [rsi]
	mov	dword ptr [rbx], r14d
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_894:
	nop	
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ea70

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_896
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_898
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_898
	mov	esi, OFFSET FLAT:.str.2_3
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_897
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_897:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_898:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_896:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_10
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40eb60

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	nop	
	push	rax
	mov	r14d, ecx
	mov	rsp, rsp
	mov	rbx, rdx
	mov	rsp, rsp
	lea	rcx, [rsp]
	mov	edx, r8d
	call	get_permissions
	lea	rsi, [rsi]
	mov	ebp, 0xfffffffe
	test	eax, eax
	mov	rbp, rbp
	jne	.label_899
	lea	r15, [rsp]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	nop	
	mov	ebp, eax
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free_permission_context
.label_899:
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
	#Procedure 0x40ebd0

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	eax, esi
	mov	rcx, rdi
	mov	dword ptr [rsp], edx
	mov	rsp, rsp
	lea	rbx, [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	edx, eax
	call	set_permissions
	mov	ebp, eax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	free_permission_context
	mov	rsp, rsp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ec20
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec70
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec90
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ecb0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ed20
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ed40
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_900
	test	rdx, rdx
	nop	
	je	.label_900
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_900:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ed80
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ee30

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_1003:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_983
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_989]]
.label_1435:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_1436:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_1007
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_1007
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_1025:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1021
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_1021:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_1025
.label_1007:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_915
.label_1428:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_915
.label_1431:
	lea	rsi, [rsi]
	mov	al, 1
.label_1429:
	mov	rbp, rbp
	mov	r12b, 1
.label_1432:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_938
	lea	rsi, [rsi]
	mov	cl, al
.label_938:
	mov	rsp, rsp
	mov	al, cl
.label_1430:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_947
	test	r10, r10
	je	.label_953
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_954
.label_947:
	xor	ecx, ecx
	jmp	.label_954
.label_1433:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_968
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_973
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_979
.label_1434:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_915
.label_953:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_954:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_915
.label_968:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_979
.label_973:
	lea	rdi, [rdi]
	mov	eax, 1
.label_979:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_915:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_1017
	nop	word ptr cs:[rax + rax]
.label_986:
	nop	
	inc	rdi
.label_1017:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_940
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_943
	jmp	.label_949
	nop	dword ptr [rax + rax]
.label_940:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_952
.label_943:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_960
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_965
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_965
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_965:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_997
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_975
	nop	dword ptr [rax + rax]
.label_960:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_975
	nop	word ptr cs:[rax + rax]
.label_997:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_1022
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_975
	jmp	.label_912
.label_1022:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_975:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_917
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_928]]
.label_1402:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_903
	mov	rbp, rbp
	jmp	.label_935
.label_1406:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_937
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_942
	nop	
	cmp	rbp, 1
	je	.label_935
	xor	r13d, r13d
	jmp	.label_901
.label_1395:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_955
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_912
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_969
	mov	al, r14b
	and	al, 1
	jne	.label_972
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_926
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_926:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_987
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_987:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_992
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_992:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_924
.label_1396:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_936
.label_1397:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_957
.label_1398:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_936
.label_1399:
	mov	bl, 0x66
	jmp	.label_936
.label_1400:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_957
.label_1403:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_1014
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_1015
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_974
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_974:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_914
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_914:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_923
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_923:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_1014:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_901
.label_1404:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_934
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_903
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_903
	mov	rbp, rbp
	jmp	.label_948
.label_1405:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_950
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_956
	lea	rdi, [rdi]
	jmp	.label_962
.label_917:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_998
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_906:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_991
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_991
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_901
.label_937:
	test	rdi, rdi
	jne	.label_1006
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_1006
.label_935:
	mov	dl, 1
.label_1401:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_1011
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_901
.label_955:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_986
	jmp	.label_903
.label_950:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_957
.label_956:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_1002
.label_957:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_1023
.label_936:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_901
	lea	rsi, [rsi]
	jmp	.label_944
.label_998:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_911
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_911:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_946:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_951
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_958
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_970
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_977
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_996:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_990
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_1019
.label_990:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_996
.label_977:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_963
	xor	r13d, r13d
.label_963:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_946
	mov	rsp, rsp
	jmp	.label_906
.label_1006:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_901
.label_934:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_903
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_903
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_903
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_909
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_1000
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_920
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_925
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_925:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_971
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_971:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_910
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_910:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_967
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_967:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_901
.label_903:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_901:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_1020
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_981
	lea	rsi, [rsi]
	jmp	.label_984
.label_1020:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_984
.label_981:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_988
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_993
	nop	word ptr cs:[rax + rax]
.label_984:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_993:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_1002
	mov	rsp, rsp
	jmp	.label_944
.label_988:
	mov	bl, r15b
.label_944:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_912
	nop	
	cmp	r9d, 2
	jne	.label_1010
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_1010
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_922
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_922:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_1018
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_1018:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1012
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_1012:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_1010:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_907
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_907:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_1004
.label_942:
	xor	r13d, r13d
	nop	
	jmp	.label_901
.label_991:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_918
	nop	dword ptr [rax + rax]
.label_932:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_918:
	test	cl, cl
	je	.label_927
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_941
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_933
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_933:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_941
	nop	dword ptr [rax]
.label_927:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_912
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_905
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_905
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1001
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_1001:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_913
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_913:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_961
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_961:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_905:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_994
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_994:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_999
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_999:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_1009
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_1009:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_941:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_1002
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_902
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_902
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_908
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_908:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_916
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_916:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_902:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_932
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_932
	nop	word ptr cs:[rax + rax]
.label_1002:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_945
	mov	rsp, rsp
	and	al, 1
	jne	.label_945
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_931
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_931:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_985
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_985:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_945:
	mov	rsp, rsp
	mov	bl, r15b
.label_1004:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_919
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_919:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_986
.label_969:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_924
.label_972:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_924:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_995
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_995:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_939
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_1005
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_1008
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1013
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_1013:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_1016
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_1016:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_901
.label_939:
	xor	r13d, r13d
.label_1353:
	mov	rbp, rbp
	jmp	.label_901
.label_1005:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_901
.label_1008:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_901
.label_958:
	xor	r13d, r13d
.label_951:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_906
.label_970:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_921
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_978:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_930
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_978
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_906
.label_921:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_906
.label_930:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_906
.label_909:
	xor	r13d, r13d
	jmp	.label_901
.label_1000:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_901
.label_949:
	nop	
	mov	r13, rdi
.label_952:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_966
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_980
.label_966:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_982
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_982
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_929
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_982
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_1003
.label_982:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_959
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_959
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_959
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1024:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_964
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_964:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_1024
.label_959:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_904
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_904
.label_1011:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_912
.label_1019:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_912
.label_980:
	nop	
	mov	rbp, r13
	jmp	.label_912
.label_1023:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_912:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_976:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_904:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_929:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_976
.label_1015:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_912
.label_962:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_912
.label_948:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_912
.label_920:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_912
.label_983:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4103b0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4104f0
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_1026
	mov	qword ptr [rax], rbx
.label_1026:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x48
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
	#Procedure 0x410640
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1027
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1029:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_1029
.label_1027:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_1030
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_1031]], OFFSET FLAT:slot0
.label_1030:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1028
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1028:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410700
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x410710

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_1038
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_1033
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1036
.label_1033:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_1034
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_1037
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1037:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_1036:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_1035
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_1032
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_1032:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_1035:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_1038:
	lea	rdi, [rdi]
	call	abort
.label_1034:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x410980
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410990
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4109c0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4109f0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_1039
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1039:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410a80
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_1040
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1040:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410b20

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_1041
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_1041:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410bb0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
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
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_1042:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x410c20
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_1043]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410cc0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_1043]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410d60

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_1043]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410dd0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_1043]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410e40

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_1046
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_1046:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x410f20
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_1043]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1047
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_1047
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_1047:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x410fb0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1043]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1048
	test	rdx, rdx
	je	.label_1048
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_1048:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411040
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_1043]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1049
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1049
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_1049:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4110e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1043]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1044]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1045]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1050
	test	rsi, rsi
	je	.label_1050
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_1050:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411180
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411190
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4111b0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4111d0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411200

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_1052
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_1054
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_1051
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1051
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_1051
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_1051
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_1051
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_1051
	nop	
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_1052
	mov	eax, OFFSET FLAT:.str.15_1
	jmp	.label_1052
.label_1054:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_1051
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_1051
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_1051
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_1051
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_1051
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_1051
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_1053
.label_1051:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_1052:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1053:
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_1052
	mov	eax, OFFSET FLAT:.str.18_2
	jmp	.label_1052
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411370

	.globl renameatu
	.type renameatu, @function
renameatu:
	mov	rsp, rsp
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x128
	mov	rsp, rsp
	mov	r12d, r8d
	mov	rsp, rsp
	mov	r13, rcx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	r15d, edi
	nop	
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	nop	
	mov	r8, r13
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rsi, [rsi]
	call	syscall
	mov	rsp, rsp
	mov	rbx, rax
	call	__errno_location
	nop	
	test	ebx, ebx
	jns	.label_1057
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x16
	je	.label_1062
	lea	rdi, [rdi]
	cmp	ecx, 0x5f
	je	.label_1062
	cmp	ecx, 0x26
	mov	rbp, rbp
	jne	.label_1057
.label_1062:
	mov	rbp, rbp
	test	r12d, r12d
	je	.label_1055
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	cmp	r12d, 2
	jb	.label_1058
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	jmp	.label_1057
.label_1055:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	xor	r12d, r12d
.label_1065:
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	strlen
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1060
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1060
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_1066
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + r13 - 1]
	cmp	eax, 0x2f
	mov	rsp, rsp
	jne	.label_1060
.label_1066:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	nop	
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	__fxstatat
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1057
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_1059
	lea	rdi, [rdi]
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_1060
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	dword ptr [rax], 2
	lea	rdi, [rdi]
	jmp	.label_1057
.label_1058:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	rbp, rbp
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	lea	rdi, [rdi]
	call	__fxstatat
	test	eax, eax
	je	.label_1064
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	r12b, 1
	cmp	eax, 2
	je	.label_1065
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_1057
.label_1064:
	nop	
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x11
	mov	rsp, rsp
	mov	ebx, 0xffffffff
	nop	
	jmp	.label_1057
.label_1059:
	lea	rcx, [rsp + 0x98]
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	mov	r8d, 0x100
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rdx, r13
	nop	
	call	__fxstatat
	nop	
	test	eax, eax
	je	.label_1063
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	jne	.label_1057
	mov	rsp, rsp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	jne	.label_1057
	mov	rbp, rbp
	jmp	.label_1060
.label_1063:
	nop	
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	nop	
	jne	.label_1056
	and	eax, dword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_1061
.label_1060:
	nop	
	mov	edi, r15d
	nop	
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	edx, r14d
	mov	rbp, rbp
	mov	rcx, r13
	call	renameat
	mov	rsp, rsp
	mov	ebx, eax
.label_1057:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1056:
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	dword ptr [rax], 0x14
	lea	rdi, [rdi]
	jmp	.label_1057
.label_1061:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x15
	jmp	.label_1057
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411650

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r14, rsi
	nop	
	mov	r15d, edi
	nop	word ptr cs:[rax + rax]
.label_1068:
	mov	rbp, rbp
	mov	edi, r15d
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	write
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	jns	.label_1067
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1068
	cmp	rbx, 0x7ff00001
	nop	
	jb	.label_1067
	nop	
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_1068
.label_1067:
	mov	rbp, rbp
	mov	rax, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4116e0

	.globl same_name
	.type same_name, @function
same_name:
	nop	
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	nop	
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411700

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x138
	lea	rsi, [rsi]
	mov	r15, rcx
	mov	dword ptr [rsp + 0x134], edx
	lea	rsi, [rsi]
	mov	r13, rsi
	mov	r12d, edi
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	last_component
	nop	
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rbp, rbp
	jne	.label_1073
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], r15
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], r12d
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rdx, r14
	nop	
	call	memcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1071
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_1072
.label_1073:
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_1072
.label_1071:
	mov	rdi, r13
	mov	rsp, rsp
	call	dir_name
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rcx, [rsp + 0x98]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	r8d, 0x100
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + 4]
	mov	rdx, rbp
	call	__fxstatat
	test	eax, eax
	nop	
	je	.label_1074
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	rcx, rbp
	mov	rbp, rbp
	call	error
.label_1074:
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	call	dir_name
	mov	rbx, rax
	nop	
	lea	rcx, [rsp + 8]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x134]
	mov	rdx, rbx
	call	__fxstatat
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1070
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rsi, [rsi]
	call	error
.label_1070:
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsp + 0x10]
	nop	
	jne	.label_1075
	nop	
	mov	rax, qword ptr [rsp + 0x98]
	cmp	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	sete	bpl
	jmp	.label_1069
.label_1075:
	xor	ebp, ebp
.label_1069:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
.label_1072:
	mov	rsp, rsp
	mov	al, bpl
	lea	rsi, [rsi]
	add	rsp, 0x138
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4118e0

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	mov	rbp, rbp
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x48
	mov	rbp, rbp
	mov	r13, rdi
	mov	rsp, rsp
	mov	ebx, esi
	nop	
	xor	r14d, r14d
	test	r13, r13
	je	.label_1090
	mov	rax,  qword ptr [word ptr [+ (rbx * 8) + comparison_function_table]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	dec	rbx
	mov	qword ptr [rsp + 0x40], rbx
	xor	r15d, r15d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_1081
	nop	dword ptr [rax]
.label_1079:
	nop	
	mov	qword ptr [rsp + 8], rbx
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	qword ptr [rbx + rcx], rax
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [rbx + rcx + 8], rax
	inc	r12
	lea	rdi, [rdi]
	add	r15, qword ptr [rsp]
	mov	rbx, qword ptr [rsp + 0x30]
.label_1081:
	mov	qword ptr [rsp + 0x30], rbx
	nop	dword ptr [rax]
.label_1095:
	nop	
	mov	dword ptr [rbp], 0
	nop	
	mov	rdi, r13
	mov	rsp, rsp
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_1086
	movzx	eax, byte ptr [r14 + 0x13]
	cmp	eax, 0x2e
	jne	.label_1088
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	mov	rsp, rsp
	mov	eax, 1
	jne	.label_1091
	mov	eax, 2
.label_1091:
	mov	al, byte ptr [r14 + rax + 0x13]
.label_1088:
	lea	rsi, [rsi]
	test	al, al
	je	.label_1095
	nop	
	mov	rbx, r14
	mov	rbp, rbp
	add	rbx, 0x13
	mov	rdi, rbx
	nop	
	call	strlen
	nop	
	mov	rdx, rax
	inc	rdx
	cmp	qword ptr [rsp + 0x40], 1
	ja	.label_1076
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	rax, r12
	jne	.label_1078
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_1083
	lea	rsi, [rsi]
	movabs	rax, 0x555555555555555
	lea	rdi, [rdi]
	cmp	r12, rax
	jae	.label_1080
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp], rdx
	mov	rax, r12
	shr	rax, 1
	lea	rcx, [r12 + rax + 1]
	jmp	.label_1087
	nop	word ptr cs:[rax + rax]
.label_1076:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	nop	
	mov	rax, rbx
	sub	rax, r15
	cmp	rax, rdx
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	ja	.label_1097
	lea	rdi, [rdi]
	mov	rbx, rdx
	add	rbx, r15
	nop	
	jb	.label_1080
	mov	rsp, rsp
	test	rax, rax
	je	.label_1084
	mov	rsp, rsp
	movabs	rcx, 0x5555555555555554
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rbp, rbp
	jae	.label_1080
	mov	r14, rdx
	mov	rbp, rbp
	mov	rcx, rbx
	nop	
	shr	rcx, 1
	mov	rbp, rbp
	lea	rbx, [rbx + rcx + 1]
	jmp	.label_1089
.label_1078:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp], rdx
	mov	rbx, qword ptr [rsp + 8]
	jmp	.label_1079
.label_1083:
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp], rdx
	test	r12, r12
	lea	rdi, [rdi]
	mov	rcx, r12
	mov	eax, 8
	mov	rbp, rbp
	cmove	rcx, rax
	lea	rsi, [rsi]
	mov	rax, rcx
	shr	rax, 0x3b
	jne	.label_1098
.label_1087:
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	shl	rsi, 4
	call	xrealloc
	mov	rbx, rax
	mov	rbp, rbp
	jmp	.label_1079
.label_1084:
	mov	r14, rdx
	test	rbx, rbx
	mov	ecx, 0x80
	nop	
	cmove	rbx, rcx
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	js	.label_1092
.label_1089:
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	xrealloc
	mov	rsp, rsp
	mov	rdx, r14
.label_1097:
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rax + r15]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r14, rdx
	call	memcpy
	mov	rbp, rbp
	add	r15, r14
	lea	rsi, [rsi]
	jmp	.label_1081
.label_1086:
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_1085
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 8]
	nop	
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r14d, r14d
	nop	
	jmp	.label_1090
.label_1085:
	nop	
	cmp	qword ptr [rsp + 0x40], 1
	nop	
	mov	r14, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	ja	.label_1093
	test	r12, r12
	nop	
	je	.label_1096
	mov	rsp, rsp
	mov	edx, 0x10
	mov	rbx, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	qsort
	inc	r15
	mov	rdi, r15
	nop	
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1094:
	lea	rbp, [r14 + r15]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	mov	rbp, rbp
	inc	r15
	sub	r15, rbp
	add	r15, rax
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	add	rbx, 0x10
	dec	r12
	lea	rsi, [rsi]
	jne	.label_1094
	nop	
	jmp	.label_1082
.label_1093:
	nop	
	cmp	qword ptr [rsp + 0x30], r15
	jne	.label_1077
	lea	rsi, [r15 + 1]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	xrealloc
	mov	r14, rax
	jmp	.label_1077
.label_1096:
	mov	rbp, rbp
	inc	r15
	mov	rbp, rbp
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	xor	r15d, r15d
.label_1082:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	free
.label_1077:
	lea	rdi, [rdi]
	mov	byte ptr [r14 + r15], 0
.label_1090:
	mov	rax, r14
	lea	rsi, [rsi]
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1080:
	call	xalloc_die
.label_1098:
	lea	rdi, [rdi]
	call	xalloc_die
.label_1092:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411d00

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	ebp, esi
	call	opendir_safer
	mov	rbx, rax
	mov	rbp, rbp
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1099
	nop	
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1099
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
	mov	rsp, rsp
	xor	r14d, r14d
.label_1099:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411d70

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	
	.section	.text
	.align	32
	#Procedure 0x411d80

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	seta	al
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	cmovae	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411db0

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r8
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, esi
	mov	rbp, rbp
	mov	r14, rdi
	nop	
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	r15d, dword ptr [rax]
	nop	
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	lea	rsi, [rsi]
	movsxd	r13, ebx
	lea	rsi, [rsi]
	lea	rax, [r13 + r12]
	lea	rdi, [rdi]
	cmp	rbp, rax
	mov	rsp, rsp
	jb	.label_1107
	mov	rbp, rbp
	mov	rax, rbp
	nop	
	sub	rax, r12
	sub	rax, r13
	add	rax, r14
	mov	rbp, rbp
	mov	rcx, -1
	nop	dword ptr [rax + rax]
.label_1106:
	nop	
	movzx	edx, byte ptr [rax + rcx + 1]
	inc	rcx
	nop	
	cmp	edx, 0x58
	nop	
	je	.label_1106
	mov	rsp, rsp
	cmp	rcx, r12
	jae	.label_1100
.label_1107:
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0x16
	mov	r12d, 0xffffffff
.label_1104:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1100:
	nop	
	mov	dword ptr [rsp + 0x34], r15d
	mov	qword ptr [rsp + 0x18], r14
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	call	randint_all_new
	mov	r15, rax
	nop	
	mov	rax, r12
	lea	rdi, [rdi]
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_1104
	mov	rsp, rsp
	sub	rbp, r13
	lea	rdi, [rdi]
	add	rbp, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rcx, rax
	neg	rcx
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rax
	nop	dword ptr [rax]
.label_1108:
	test	r13, r13
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	je	.label_1101
	nop	dword ptr [rax]
.label_1105:
	mov	rbp, rbp
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	nop	
	inc	rbx
	lea	rdi, [rdi]
	jne	.label_1105
.label_1101:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	call	qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r12d, eax
	test	r12d, r12d
	nop	
	jns	.label_1103
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	ebx, 0x11
	mov	r12d, 0xffffffff
	nop	
	jne	.label_1102
	lea	rsi, [rsi]
	inc	r14d
	cmp	r14d, 0x3a2f7
	lea	rdi, [rdi]
	jbe	.label_1108
	lea	rdi, [rdi]
	mov	rdi, r15
	call	randint_all_free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	mov	rbp, rbp
	jmp	.label_1104
.label_1103:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	dword ptr [rcx], eax
	mov	rsp, rsp
	mov	ebx, eax
.label_1102:
	mov	rdi, r15
	call	randint_all_free
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], ebx
	mov	rbp, rbp
	jmp	.label_1104
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411fb0
	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:

	mov	rbp, rbp
	push	rax
	mov	dword ptr [rsp + 4], edx
	nop	
	cmp	ecx, 3
	jae	.label_1109
	lea	rsi, [rsi]
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1110]]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1109:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rsp, rsp
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412000

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	lea	rdi, [rdi]
	or	esi, 0xc2
	mov	edx, 0x180
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	jmp	open
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412030

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	lea	rsi, [rsi]
	jmp	mkdir
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412040

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x90
	lea	rsi, [rsi]
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	__lxstat
	mov	ebx, eax
	call	__errno_location
	test	ebx, ebx
	je	.label_1112
	cmp	dword ptr [rax], 0x4b
	jne	.label_1111
.label_1112:
	mov	dword ptr [rax], 0x11
.label_1111:
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	nop	
	add	rsp, 0x90
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4120a0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	lea	rdi, [rdi]
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	mov	rsp, rsp
	jae	.label_1113
	mov	rsp, rsp
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1110]]
	lea	rdx, [rsp + 4]
	nop	
	mov	r8d, 6
	mov	rsp, rsp
	call	try_tempname_len
	pop	rcx
	mov	rbp, rbp
	ret	
.label_1113:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_11
	nop	
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412100
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	lea	rsi, [rsi]
	jmp	try_tempname_len
	nop	
	.section	.text
	.align	32
	#Procedure 0x412110

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	ja	.label_1114
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	mov	rsp, rsp
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	jmp	.label_1115
.label_1114:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_1115:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x412180

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	rbp, rbp
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	rcx, rdx
	mov	rdx, rsi
	lea	rsi, [rsi]
	mov	rsi, rdi
	nop	
	mov	edi, 0xffffff9c
	mov	r8d, eax
	jmp	utimecmpat
	nop	
	.section	.text
	.align	32
	#Procedure 0x4121a0

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	nop	
	sub	rsp, 0xe8
	mov	rbp, rdx
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x58]
	mov	rbp, rbp
	mov	r15, qword ptr [rbp + 0x60]
	nop	
	mov	r12, qword ptr [rcx + 0x58]
	mov	r13d, dword ptr [rcx + 0x60]
	lea	rsi, [rsi]
	test	r8b, 1
	mov	rsp, rsp
	je	.label_1120
	lea	rdi, [rdi]
	cmp	r14, r12
	jne	.label_1137
	xor	ecx, ecx
	cmp	r15d, r13d
	mov	rsp, rsp
	je	.label_1116
.label_1137:
	lea	rdi, [rdi]
	lea	rax, [r12 - 2]
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jle	.label_1116
	lea	rax, [r14 - 2]
	lea	rsi, [rsi]
	mov	ecx, 1
	cmp	r12, rax
	jle	.label_1116
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x1c], edi
	mov	qword ptr [rsp + 0x48], rsi
	nop	
	mov	rbx,  qword ptr [word ptr [rip + utimecmpat.ht]]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1123
	mov	edi, 0x10
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbx, rax
	nop	
	mov	qword ptr [word ptr [rip + utimecmpat.ht]],  rbx
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_1136
.label_1123:
	mov	rsi,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	test	rsi, rsi
	nop	
	jne	.label_1124
	lea	rdi, [rdi]
	mov	edi, 0x10
	lea	rdi, [rdi]
	call	malloc
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  rsi
	nop	
	test	rsi, rsi
	je	.label_1117
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 8], 0x77359400
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0xc], 0
.label_1124:
	nop	
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsi], rax
	mov	rdi, rbx
	call	hash_insert
	mov	r11, rax
	lea	rsi, [rsi]
	test	r11, r11
	je	.label_1129
	cmp	r11,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	jne	.label_1119
	nop	
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jmp	.label_1119
.label_1129:
	mov	rbx,  qword ptr [word ptr [rip + utimecmpat.ht]]
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1140
.label_1117:
	nop	
	mov	rax, qword ptr [rbp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	rdi, rbx
	call	hash_lookup
	lea	rdi, [rdi]
	mov	r11, rax
.label_1140:
	mov	rbp, rbp
	test	r11, r11
	jne	.label_1119
.label_1136:
	mov	dword ptr [rsp + 0x10], 0x77359400
	nop	
	mov	byte ptr [rsp + 0x14], 0
	mov	rsp, rsp
	lea	r11, [rsp + 8]
.label_1119:
	mov	r10, qword ptr [r11 + 8]
	lea	rdi, [rdi]
	movabs	rax, 0xff00000000
	test	r10, rax
	lea	rsi, [rsi]
	jne	.label_1127
	mov	rbx, qword ptr [rbp + 0x48]
	nop	
	mov	rax, qword ptr [rbp + 0x50]
	movsxd	r8, dword ptr [rbp + 0x70]
	mov	ecx, ebx
	mov	rbp, rbp
	or	ecx, r14d
	or	ecx, dword ptr [rbp + 0x68]
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	movsxd	rdx, eax
	lea	rsi, [rsi]
	imul	rsi, rdx, 0x66666667
	nop	
	mov	rdi, rsi
	shr	rdi, 0x3f
	lea	rsi, [rsi]
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	rbp, rbp
	sub	edx, esi
	imul	rsi, r8, 0x66666667
	mov	rsp, rsp
	mov	rdi, rsi
	shr	rdi, 0x3f
	mov	rbp, rbp
	sar	rsi, 0x22
	add	esi, edi
	mov	rsp, rsp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	edi, r8d
	sub	edi, esi
	nop	
	movsxd	rsi, r15d
	mov	rsp, rsp
	imul	rsi, rsi, 0x66666667
	mov	rbp, rsi
	mov	rsp, rsp
	shr	rbp, 0x3f
	mov	rsp, rsp
	sar	rsi, 0x22
	add	esi, ebp
	mov	rbp, rbp
	add	esi, esi
	lea	rdi, [rdi]
	lea	esi, [rsi + rsi*4]
	lea	rsi, [rsi]
	mov	ebp, r15d
	nop	
	sub	ebp, esi
	lea	rdi, [rdi]
	or	ebp, edx
	mov	rbp, rbp
	or	ebp, edi
	mov	rbp, rbp
	je	.label_1134
	lea	rsi, [rsi]
	mov	dword ptr [r11 + 8], 1
	mov	r10d, 1
.label_1126:
	mov	rbp, rbp
	mov	dword ptr [r11 + 8], r10d
	lea	rsi, [rsi]
	mov	byte ptr [r11 + 0xc], 1
.label_1127:
	nop	
	cmp	r10d, 0x77359400
	nop	
	sete	al
	nop	
	movzx	eax, al
	mov	rbp, rbp
	not	rax
	and	r12, rax
	mov	eax, r13d
	lea	rdi, [rdi]
	cdq	
	mov	rbp, rbp
	idiv	r10d
	mov	rsp, rsp
	sub	r13d, edx
.label_1120:
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	cmp	r14, r12
	jl	.label_1116
	mov	ecx, 1
	jg	.label_1116
	cmp	r15d, r13d
	mov	ecx, 0xffffffff
	jl	.label_1116
	setg	al
	mov	rbp, rbp
	movzx	ecx, al
.label_1116:
	mov	eax, ecx
	mov	rsp, rsp
	add	rsp, 0xe8
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1134:
	mov	ebp, 0xa
	nop	
	cmp	r10d, 0xa
	mov	rsp, rsp
	jle	.label_1122
	mov	qword ptr [rsp + 0xe0], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], r11
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	edi, r15d
.label_1131:
	mov	r9, rbp
	movsxd	rsi, edi
	imul	rdi, rsi, 0x66666667
	nop	
	mov	rsi, rdi
	shr	rsi, 0x3f
	lea	rdi, [rdi]
	sar	rdi, 0x22
	lea	rdi, [rdi]
	add	edi, esi
	movsxd	rax, r8d
	nop	
	imul	r8, rax, 0x66666667
	mov	rbp, rbp
	mov	rsi, r8
	lea	rdi, [rdi]
	shr	rsi, 0x3f
	sar	r8, 0x22
	mov	rsp, rsp
	add	r8d, esi
	mov	rsp, rsp
	movsxd	rdx, edx
	nop	
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	nop	
	shr	rsi, 0x3f
	lea	rsi, [rsi]
	sar	rdx, 0x22
	mov	rbp, rbp
	add	edx, esi
	movsxd	r11, edx
	mov	rbp, rbp
	imul	rsi, r11, 0x66666667
	mov	rbp, rsi
	mov	rsp, rsp
	shr	rbp, 0x3f
	mov	rsp, rsp
	sar	rsi, 0x22
	add	esi, ebp
	lea	rdi, [rdi]
	add	esi, esi
	mov	rbp, rbp
	lea	esi, [rsi + rsi*4]
	sub	r11d, esi
	mov	rbp, rbp
	movsxd	rsi, r8d
	mov	rsp, rsp
	imul	rbp, rsi, 0x66666667
	lea	rsi, [rsi]
	mov	rbx, rbp
	shr	rbx, 0x3f
	mov	rsp, rsp
	sar	rbp, 0x22
	nop	
	add	ebp, ebx
	add	ebp, ebp
	lea	rsi, [rsi]
	lea	ebx, [rbp + rbp*4]
	lea	rsi, [rsi]
	sub	esi, ebx
	or	esi, r11d
	movsxd	rbp, edi
	imul	rbx, rbp, 0x66666667
	mov	rax, rbx
	shr	rax, 0x3f
	sar	rbx, 0x22
	add	ebx, eax
	add	ebx, ebx
	mov	rsp, rsp
	lea	eax, [rbx + rbx*4]
	sub	ebp, eax
	or	ebp, esi
	nop	
	jne	.label_1132
	mov	rbp, rbp
	mov	rbp, r9
	cmp	ebp, 0x3b9aca00
	nop	
	je	.label_1128
	lea	rsi, [rsi]
	add	ebp, ebp
	lea	ebp, [rbp + rbp*4]
	mov	rsp, rsp
	cmp	ebp, r10d
	jl	.label_1131
	nop	
	jmp	.label_1139
.label_1122:
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	dword ptr [r11 + 8], ebp
	lea	rsi, [rsi]
	jmp	.label_1118
.label_1132:
	mov	rbp, r9
.label_1139:
	mov	r11, qword ptr [rsp + 0x40]
	mov	dword ptr [r11 + 8], ebp
	nop	
	cmp	ebp, 2
	mov	r10d, ebp
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0xe0]
	jl	.label_1126
	jmp	.label_1118
.label_1128:
	xor	ecx, 1
	mov	ebp, 0x3b9aca00
	shl	ebp, cl
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	dword ptr [r11 + 8], ebp
.label_1118:
	cmp	ebp, 0x77359400
	lea	rdi, [rdi]
	sete	al
	nop	
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, 1
	cmp	r12, r14
	jl	.label_1116
	cmp	r14, r12
	mov	rbp, rbp
	setne	al
	lea	rdi, [rdi]
	cmp	r13d, r15d
	jg	.label_1138
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	je	.label_1116
.label_1138:
	mov	rsp, rsp
	mov	rax, rdi
	not	rax
	nop	
	and	rax, r12
	mov	rbp, rbp
	mov	ecx, 0xffffffff
	cmp	r14, rax
	mov	rsp, rsp
	jl	.label_1116
	mov	rbp, rbp
	jne	.label_1121
	mov	eax, r13d
	nop	
	cdq	
	nop	
	idiv	ebp
	lea	rdi, [rdi]
	mov	eax, r13d
	nop	
	sub	eax, edx
	lea	rsi, [rsi]
	cmp	r15d, eax
	mov	rsp, rsp
	jl	.label_1116
.label_1121:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp]
	nop	
	cdqe	
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	or	rdi, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdi
	movsxd	rax, ebp
	mov	rsp, rsp
	imul	rax, rax, 0x38e38e39
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x21
	add	eax, ecx
	add	eax, r15d
	nop	
	cdqe	
	mov	qword ptr [rsp + 0x38], rax
	lea	rdx, [rsp + 0x20]
	lea	rdi, [rdi]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rbx, r11
	lea	rdi, [rdi]
	call	utimensat
	mov	rdx, rbx
	mov	rsp, rsp
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_1116
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x40], rdx
	lea	rcx, [rsp + 0x50]
	mov	edi, 1
	mov	rbp, rbp
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x1c]
	nop	
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rdx, rbp
	nop	
	call	__fxstatat
	mov	ebx, eax
	mov	rsp, rsp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	xor	rcx, r14
	or	rcx, rax
	mov	rbp, rbp
	movsxd	rax, r15d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	xor	rdx, rax
	or	rdx, rcx
	lea	rsi, [rsi]
	je	.label_1135
	nop	
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x38], rax
	lea	rdx, [rsp + 0x20]
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x1c]
	mov	rsi, rbp
	call	utimensat
.label_1135:
	test	ebx, ebx
	je	.label_1133
	mov	ecx, 0xfffffffe
	lea	rdi, [rdi]
	jmp	.label_1116
.label_1133:
	mov	eax, dword ptr [rsp + 0xa8]
	and	eax, 1
	neg	eax
	and	eax, 0x3b9aca00
	add	rax, qword ptr [rsp + 0xb0]
	movsxd	rdx, eax
	mov	rbp, rbp
	imul	rcx, rdx, 0x66666667
	mov	rsp, rsp
	mov	rsi, rcx
	shr	rsi, 0x3f
	sar	rcx, 0x22
	add	ecx, esi
	nop	
	add	ecx, ecx
	mov	rsp, rsp
	lea	esi, [rcx + rcx*4]
	lea	rsi, [rsi]
	mov	ecx, 1
	nop	
	cmp	edx, esi
	je	.label_1142
	nop	
	mov	r10d, 1
	mov	r11, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jmp	.label_1126
.label_1142:
	mov	rbp, qword ptr [rsp]
.label_1141:
	mov	r10d, 0x77359400
	mov	rbp, rbp
	cmp	ecx, 0x3b9aca00
	je	.label_1130
	mov	rsp, rsp
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	lea	rsi, [rsi]
	cmp	ecx, ebp
	nop	
	je	.label_1125
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	lea	rsi, [rsi]
	shr	rdx, 0x3f
	sar	rax, 0x22
	mov	rsp, rsp
	add	eax, edx
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	lea	rsi, [rsi]
	shr	rdi, 0x3f
	sar	rsi, 0x22
	nop	
	add	esi, edi
	lea	rsi, [rsi]
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	lea	rdi, [rdi]
	cmp	edx, esi
	lea	rsi, [rsi]
	mov	r10d, ecx
	mov	rbp, rbp
	je	.label_1141
.label_1130:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1126
.label_1125:
	lea	rdi, [rdi]
	mov	r10d, ebp
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1126
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4128e0

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	nop	
	div	rsi
	mov	rbp, rbp
	mov	rax, rdx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412900

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	nop	
	sete	al
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412910
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	lea	rsi, [rsi]
	mov	ecx, 0x100
	nop	
	jmp	utimensat
	nop	
	.section	.text
	.align	32
	#Procedure 0x412920

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0xf0
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	xor	r12d, r12d
	test	rdx, rdx
	lea	rbx, [rsp + 0xb0]
	lea	rdi, [rdi]
	cmove	rbx, rdx
	je	.label_1152
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdx]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rdx, rcx
	and	rdx, 0xfffffffffffffffe
	nop	
	cmp	rcx, 0x3b9aca00
	mov	rbp, rbp
	jb	.label_1160
	mov	rbp, rbp
	cmp	rdx, 0x3ffffffe
	jne	.label_1169
.label_1160:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdi, rax
	nop	
	and	rdi, 0xfffffffffffffffe
	mov	rbp, rbp
	cmp	rax, 0x3b9aca00
	jb	.label_1161
	cmp	rdi, 0x3ffffffe
	je	.label_1161
.label_1169:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	ebp, 0xffffffff
	mov	rbp, rbp
	jmp	.label_1151
.label_1161:
	lea	rsi, [rsi]
	xor	esi, esi
	cmp	rdx, 0x3ffffffe
	mov	rbp, rbp
	mov	edx, 0
	jne	.label_1179
	lea	rsi, [rsi]
	mov	qword ptr [rbx], 0
	mov	rbp, rbp
	cmp	rcx, 0x3ffffffe
	mov	rsp, rsp
	sete	cl
	movzx	edx, cl
	mov	rbp, rbp
	mov	esi, 1
.label_1179:
	cmp	rdi, 0x3ffffffe
	jne	.label_1148
	mov	qword ptr [rbx + 0x10], 0
	cmp	rax, 0x3ffffffe
	sete	al
	movzx	eax, al
	add	edx, eax
	nop	
	mov	esi, 1
.label_1148:
	lea	rdi, [rdi]
	cmp	edx, 1
	mov	rbp, rbp
	sete	al
	movzx	r12d, al
	mov	rsp, rsp
	add	r12d, esi
	lea	rdi, [rdi]
	mov	ebp, 0xffffffff
	mov	rbp, rbp
	js	.label_1151
.label_1152:
	test	r15d, r15d
	jns	.label_1162
	test	r14, r14
	jne	.label_1162
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebp, 0xffffffff
	jmp	.label_1151
.label_1162:
	nop	
	cmp	dword ptr [dword ptr [rip + utimensat_works_really]],  0
	lea	rdi, [rdi]
	js	.label_1156
	cmp	r12d, 2
	lea	rsi, [rsi]
	jne	.label_1168
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rbp, rbp
	test	r15d, r15d
	js	.label_1170
	nop	
	mov	esi, r15d
	mov	rsp, rsp
	call	__fxstat
	nop	
	jmp	.label_1174
.label_1170:
	lea	rsi, [rsi]
	mov	rsi, r14
	call	__xstat
.label_1174:
	mov	rsp, rsp
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1151
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1178
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movaps	xmmword ptr [rbx], xmm0
	mov	r12d, 3
	jmp	.label_1168
.label_1178:
	lea	rdi, [rdi]
	mov	r12d, 3
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	lea	rsi, [rsi]
	jne	.label_1168
	movups	xmm0, xmmword ptr [rsp + 0x78]
	movaps	xmmword ptr [rbx + 0x10], xmm0
.label_1168:
	mov	rbp, rbp
	test	r15d, r15d
	jns	.label_1150
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, r14
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1154
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x26
	nop	
	jmp	.label_1155
.label_1154:
	lea	rdi, [rdi]
	je	.label_1157
	call	__errno_location
.label_1155:
	nop	
	cmp	dword ptr [rax], 0x26
	lea	rsi, [rsi]
	jne	.label_1157
.label_1150:
	lea	rdi, [rdi]
	test	r15d, r15d
	lea	rsi, [rsi]
	js	.label_1156
	nop	
	mov	edi, r15d
	mov	rsi, rbx
	mov	rsp, rsp
	call	futimens
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	mov	rsp, rsp
	jle	.label_1166
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	rsp, rsp
	jmp	.label_1167
.label_1157:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1151
.label_1166:
	mov	rsp, rsp
	je	.label_1171
	lea	rdi, [rdi]
	call	__errno_location
.label_1167:
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	jne	.label_1171
.label_1156:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	nop	
	test	r12d, r12d
	mov	rbp, rbp
	je	.label_1165
	cmp	r12d, 3
	lea	rsi, [rsi]
	je	.label_1180
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	lea	rdi, [rdi]
	test	r15d, r15d
	mov	rsp, rsp
	js	.label_1181
	mov	rbp, rbp
	mov	esi, r15d
	call	__fxstat
	mov	rsp, rsp
	jmp	.label_1145
.label_1165:
	nop	
	xor	r12d, r12d
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1146
	jmp	.label_1144
.label_1171:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1151
.label_1181:
	nop	
	mov	rsi, r14
	call	__xstat
.label_1145:
	mov	rsp, rsp
	mov	ebp, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1151
.label_1180:
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1158
	mov	rax, qword ptr [rbx + 8]
	nop	
	cmp	rax, 0x3ffffffe
	je	.label_1159
	cmp	rax, 0x3fffffff
	mov	rsp, rsp
	jne	.label_1163
	nop	
	cmp	qword ptr [rbx + 0x18], 0x3fffffff
	lea	rsi, [rsi]
	jne	.label_1164
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_1144
.label_1158:
	lea	rdi, [rdi]
	xor	r12d, r12d
	jmp	.label_1144
.label_1159:
	xor	ebp, ebp
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	je	.label_1151
	lea	rbp, [rbx + 0x18]
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x68]
	mov	rsp, rsp
	movaps	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	jmp	.label_1172
.label_1163:
	lea	rbp, [rbx + 0x18]
	jmp	.label_1172
.label_1164:
	mov	rsp, rsp
	lea	rbp, [rbx + 0x18]
	mov	rdi, rbx
	call	gettime
.label_1172:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	cmp	rax, 0x3fffffff
	je	.label_1177
	cmp	rax, 0x3ffffffe
	mov	rsp, rsp
	jne	.label_1146
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rcx
	jmp	.label_1146
.label_1177:
	lea	rdi, [rdi]
	add	rbx, 0x10
	mov	rbp, rbp
	mov	rdi, rbx
	call	gettime
.label_1146:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsp + 0xb8]
	mov	rax, rdx
	mov	rsp, rsp
	shr	rax, 0x3f
	sar	rdx, 7
	nop	
	add	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xd8], rdx
	mov	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rax
	mov	rax, rcx
	lea	rsi, [rsi]
	imul	qword ptr [rsp + 0xc8]
	mov	rax, rdx
	mov	rbp, rbp
	shr	rax, 0x3f
	lea	rsi, [rsi]
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0xe8], rdx
	lea	r12, [rsp + 0xd0]
.label_1144:
	lea	rsi, [rsi]
	test	r15d, r15d
	js	.label_1173
	xor	ebp, ebp
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, r12
	mov	rsp, rsp
	call	futimesat
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1176
	mov	ebp, 0xffffffff
	test	r14, r14
	je	.label_1151
	nop	
	mov	rdi, r14
	mov	rsi, r12
	lea	rsi, [rsi]
	call	utimes
	jmp	.label_1182
.label_1173:
	mov	edi, 0xffffff9c
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r12
	call	futimesat
.label_1182:
	mov	ebp, eax
.label_1151:
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 0xf0
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1176:
	test	r12, r12
	mov	rbp, rbp
	je	.label_1151
	nop	
	mov	rbx, qword ptr [r12 + 8]
	mov	rbp, rbp
	mov	r14, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	cmp	rbx, 0x7a11f
	mov	rsp, rsp
	setg	al
	cmp	r14, 0x7a11f
	lea	rsi, [rsi]
	setg	cl
	lea	rdi, [rdi]
	or	cl, al
	movzx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_1151
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, r15d
	nop	
	call	__fxstat
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1151
	lea	rdx, [r12 + 0x10]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x78]
	sub	rcx, qword ptr [r12]
	sub	rax, qword ptr [r12 + 0x10]
	movups	xmm0, xmmword ptr [r12]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	cmp	rbx, 0x7a120
	lea	rdi, [rdi]
	jl	.label_1153
	lea	rdi, [rdi]
	cmp	rcx, 1
	jne	.label_1153
	mov	rbp, rbp
	xor	edx, edx
	cmp	qword ptr [rsp + 0x70], 0
	mov	rsp, rsp
	jne	.label_1153
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], 0
.label_1153:
	cmp	r14, 0x7a120
	nop	
	jl	.label_1175
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_1175
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x80], 0
	nop	
	je	.label_1143
.label_1175:
	lea	rdi, [rdi]
	test	rdx, rdx
	jne	.label_1147
	jmp	.label_1149
.label_1143:
	lea	rdx, [rsp]
	mov	qword ptr [rsp + 0x18], 0
.label_1147:
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, r15d
	nop	
	call	futimesat
.label_1149:
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_1151
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412f50

	.globl utimens
	.type utimens, @function
utimens:
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffffff
	nop	
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	fdutimens
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412f70

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	nop	
	sub	rsp, 0xb0
	mov	r14, rdi
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	rsi, rsi
	mov	rsp, rsp
	lea	r15, [rsp + 0x90]
	mov	r12, r15
	cmove	r12, rsi
	lea	rdi, [rdi]
	je	.label_1202
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rcx, qword ptr [r12 + 8]
	mov	rdx, rcx
	and	rdx, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1205
	lea	rdi, [rdi]
	cmp	rdx, 0x3ffffffe
	jne	.label_1195
.label_1205:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	and	rdi, 0xfffffffffffffffe
	nop	
	cmp	rax, 0x3b9aca00
	jb	.label_1199
	cmp	rdi, 0x3ffffffe
	mov	rsp, rsp
	je	.label_1199
.label_1195:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
.label_1193:
	mov	ebp, 0xffffffff
	nop	
	jmp	.label_1186
.label_1199:
	mov	rsp, rsp
	xor	esi, esi
	cmp	rdx, 0x3ffffffe
	mov	edx, 0
	nop	
	jne	.label_1188
	mov	qword ptr [r12], 0
	lea	rsi, [rsi]
	cmp	rcx, 0x3ffffffe
	mov	rbp, rbp
	sete	cl
	movzx	edx, cl
	mov	rbp, rbp
	mov	esi, 1
.label_1188:
	cmp	rdi, 0x3ffffffe
	lea	rsi, [rsi]
	jne	.label_1196
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], 0
	mov	rbp, rbp
	cmp	rax, 0x3ffffffe
	sete	al
	movzx	eax, al
	add	edx, eax
	mov	esi, 1
.label_1196:
	mov	rsp, rsp
	cmp	edx, 1
	lea	rsi, [rsi]
	sete	al
	movzx	ebx, al
	mov	rbp, rbp
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1186
.label_1202:
	nop	
	cmp	dword ptr [dword ptr [rip + lutimensat_works_really]],  0
	js	.label_1192
	cmp	ebx, 2
	nop	
	jne	.label_1187
	mov	rsp, rsp
	lea	rdx, [rsp]
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, r14
	nop	
	call	__lxstat
	mov	rsp, rsp
	mov	ebp, 0xffffffff
	test	eax, eax
	nop	
	jne	.label_1186
	mov	rsp, rsp
	cmp	qword ptr [r12 + 8], 0x3ffffffe
	jne	.label_1200
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [r12], xmm0
	mov	ebx, 3
	jmp	.label_1187
.label_1200:
	mov	rbp, rbp
	mov	ebx, 3
	mov	rsp, rsp
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	nop	
	jne	.label_1187
	movups	xmm0, xmmword ptr [rsp + 0x58]
	mov	rsp, rsp
	movaps	xmmword ptr [r12 + 0x10], xmm0
.label_1187:
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	call	utimensat
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1194
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x26
	mov	rbp, rbp
	jmp	.label_1198
.label_1194:
	je	.label_1201
	lea	rsi, [rsi]
	call	__errno_location
.label_1198:
	cmp	dword ptr [rax], 0x26
	jne	.label_1201
.label_1192:
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	mov	rsp, rsp
	test	ebx, ebx
	nop	
	je	.label_1183
	mov	rbp, rbp
	cmp	ebx, 3
	lea	rsi, [rsi]
	je	.label_1191
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	rsi, r14
	call	__lxstat
	lea	rdi, [rdi]
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_1186
.label_1191:
	xor	edx, edx
	test	r12, r12
	je	.label_1184
	mov	rax, qword ptr [r12 + 8]
	nop	
	cmp	rax, 0x3ffffffe
	mov	rbp, rbp
	je	.label_1197
	lea	rsi, [rsi]
	cmp	rax, 0x3fffffff
	lea	rdi, [rdi]
	jne	.label_1204
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	cmp	qword ptr [r12 + 0x18], 0x3fffffff
	je	.label_1184
	lea	rbx, [r12 + 0x18]
	mov	rdi, r12
	mov	rbp, rbp
	call	gettime
	mov	rbp, rbp
	jmp	.label_1185
.label_1201:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  1
	mov	rsp, rsp
	jmp	.label_1186
.label_1183:
	mov	rsp, rsp
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	mov	rdx, r12
	jne	.label_1186
	nop	
	jmp	.label_1184
.label_1197:
	xor	ebp, ebp
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	je	.label_1186
	lea	rbx, [r12 + 0x18]
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x48]
	movaps	xmmword ptr [r12], xmm0
	lea	rsi, [rsi]
	jmp	.label_1185
.label_1204:
	lea	rbx, [r12 + 0x18]
.label_1185:
	nop	
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1190
	nop	
	cmp	rax, 0x3ffffffe
	lea	rsi, [rsi]
	jne	.label_1189
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12 + 0x18], rcx
	mov	rdx, r15
	jmp	.label_1184
.label_1190:
	add	r12, 0x10
	mov	rdi, r12
	call	gettime
	mov	rdx, r15
	jmp	.label_1184
.label_1189:
	mov	rbp, rbp
	mov	rdx, r15
.label_1184:
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xa000
	lea	rsi, [rsi]
	jne	.label_1203
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x26
	lea	rdi, [rdi]
	jmp	.label_1193
.label_1203:
	mov	rsp, rsp
	mov	edi, 0xffffffff
	lea	rsi, [rsi]
	mov	rsi, r14
	nop	
	call	fdutimens
	lea	rsi, [rsi]
	mov	ebp, eax
.label_1186:
	mov	eax, ebp
	add	rsp, 0xb0
	pop	rbx
	pop	r12
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413360

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_1211
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_12
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_1213
.label_1211:
	mov	edx, OFFSET FLAT:.str.1_10
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_1213:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_3
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_1214
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1207]]
.label_1521:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_1214:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_1209
.label_1522:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_1523:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_1524:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_1210
.label_1525:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_1208
.label_1526:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_1206
.label_1527:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_1206:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_1208:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_1210:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_1215
.label_1529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_1209:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_1212
.label_1528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_1212:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_1215:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1520:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413750
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_1216:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_1216
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413780
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_1220:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_1217
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_1219
	nop	word ptr cs:[rax + rax]
.label_1217:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1219:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1218
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_1220
.label_1218:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413810

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_1221
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_1221:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_1223:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_1222
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_1224
	nop	dword ptr [rax + rax]
.label_1222:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_1224:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1225
	inc	r9
	cmp	r9, 0xa
	jb	.label_1223
.label_1225:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413950
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_2
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_2
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x4139e0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_1226
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	lea	rsi, [rsi]
	jmp	.label_1227
.label_1226:
	push	rax
	lea	rdi, [rdi]
	call	geteuid
	test	eax, eax
	sete	al
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	nop	
	add	rsp, 8
.label_1227:
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	setne	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x413a30
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_1228
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1229
	test	rax, rax
	je	.label_1228
.label_1229:
	nop	
	pop	rbx
	ret	
.label_1228:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413a80

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1230
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1231
.label_1230:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1231:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413ab0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_1233
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1232
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_1232
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1232:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1234
	test	rax, rax
	je	.label_1233
.label_1234:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_1233:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413b30

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_1235
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_1235
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_1235:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_1236
	test	rax, rax
	nop	
	je	.label_1237
.label_1236:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1237:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413b80
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1238
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_1242
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1241
.label_1238:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_1244
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_1244:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_1239
.label_1241:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1240
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_1240
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1240:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_1243
	test	rax, rax
	mov	rbp, rbp
	je	.label_1242
.label_1243:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1242:
	call	xalloc_die
.label_1239:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413c60
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1246
	test	rax, rax
	mov	rbp, rbp
	je	.label_1245
.label_1246:
	pop	rbx
	ret	
.label_1245:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x413c80
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_1247
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_1250
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1251
	call	free
	xor	eax, eax
	jmp	.label_1248
.label_1247:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_1249
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_1251:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1248
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1249
.label_1248:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1249:
	mov	rbp, rbp
	call	xalloc_die
.label_1250:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413d10
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1252
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_1253
.label_1252:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_1253:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413d70
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_1254
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_1254
	pop	rcx
	ret	
.label_1254:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x413da0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_1256
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1255
.label_1256:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_1255:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413e00

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_1257
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1258
.label_1257:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_1258:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x413e60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_11
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413eb0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rsp, rsp
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	call	__getdelim
	test	rax, rax
	jle	.label_1260
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rdi - 1]
	cmp	ecx, 0xa
	mov	rsp, rsp
	jne	.label_1261
	mov	byte ptr [rdi + rax - 1], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp]
.label_1261:
	call	rpmatch
	mov	rbp, rbp
	test	eax, eax
	setg	bl
	mov	rsp, rsp
	jmp	.label_1259
.label_1260:
	xor	ebx, ebx
.label_1259:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	al, bl
	nop	
	add	rsp, 0x10
	nop	
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413f40

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_1262
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1263
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1263
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_1262:
	mov	ecx, 1
.label_1263:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413fb0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1264
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1264
	test	byte ptr [rbx + 1], 1
	je	.label_1264
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_1264:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413ff0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	nop	
	ja	.label_1265
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	nop	
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	je	.label_1266
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1266:
	lea	rdi, [rdi]
	add	rax, rcx
.label_1265:
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414030

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_1267
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1267
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1268
.label_1267:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_1268:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_1269
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1269:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4140e0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_1270
	nop	
	cmp	r15, -2
	jb	.label_1270
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_1270
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_1270:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414170

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414180

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	lea	rdi, [rdi]
	mov	dword ptr [rcx], edx
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414190
	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:

	cmp	esi, -1
	je	.label_1271
	lea	rdi, [rdi]
	mov	edi, esi
	nop	
	mov	esi, edx
	mov	rsp, rsp
	jmp	fchmod
.label_1271:
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4141c0

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	nop	
	push	rax
	mov	rbp, rbp
	mov	rax, rsi
	mov	esi, dword ptr [rdi]
	nop	
	cmp	edx, -1
	mov	rsp, rsp
	je	.label_1272
	lea	rsi, [rsi]
	mov	edi, edx
	mov	rbp, rbp
	call	fchmod
	jmp	.label_1273
.label_1272:
	mov	rbp, rbp
	mov	rdi, rax
	call	chmod
.label_1273:
	neg	eax
	sbb	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414200

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_1274
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_1275
	test	cl, cl
	mov	rsp, rsp
	jne	.label_1275
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_1275
.label_1274:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1275
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_1275:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414290

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	push	rbx
	call	opendir
	mov	rsp, rsp
	mov	r14, rax
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	
	test	r14, r14
	mov	rbp, rbp
	je	.label_1277
	lea	rsi, [rsi]
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	nop	
	cmp	ecx, 2
	mov	rbp, rbp
	ja	.label_1278
	lea	rsi, [rsi]
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	lea	rdi, [rdi]
	js	.label_1280
	mov	edi, ebp
	call	fdopendir
	lea	rsi, [rsi]
	mov	rbx, rax
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1279
	mov	edi, ebp
	call	close
	jmp	.label_1276
.label_1278:
	lea	rdi, [rdi]
	mov	rbx, r14
	jmp	.label_1277
.label_1280:
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
.label_1276:
	xor	ebx, ebx
.label_1279:
	mov	rdi, r14
	nop	
	call	closedir
	lea	rdi, [rdi]
	mov	dword ptr [r15], r12d
.label_1277:
	nop	
	mov	rax, rbx
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414360

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	32
	#Procedure 0x414370
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	sub	rsp, 0x18
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4143a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_1282
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1281
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_1283
.label_1281:
	nop	
	mov	esi, OFFSET FLAT:.str.1_12
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1282
.label_1283:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1282:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4143f0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	lea	rsi, [rsi]
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_1284
	mov	rbp, rbp
	inc	rdi
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1285:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	lea	rdi, [rdi]
	mov	cl, byte ptr [rdi]
	mov	rbp, rbp
	inc	rdi
	test	cl, cl
	mov	rsp, rsp
	jne	.label_1285
.label_1284:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414440

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_13
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1286
	nop	
	mov	rax, rcx
.label_1286:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414480

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xd8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_1287
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x80], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1287:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_1289
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1290
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp], ecx
	jmp	.label_1288
.label_1290:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
.label_1288:
	mov	ecx, dword ptr [rax]
.label_1289:
	xor	eax, eax
	call	openat
	lea	rsi, [rsi]
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414580
	.globl randint_new
	.type randint_new, @function
randint_new:

	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	nop	
	call	xmalloc
	nop	
	mov	qword ptr [rax], rbx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4145b0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_1291
	mov	rsp, rsp
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rax + 8], xmm0
.label_1291:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4145f0
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	nop
	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414600

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	mov	rbp, rbp
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	nop	
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	mov	rsp, rsp
	lea	r12, [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_1296:
	nop	
	cmp	r14, r13
	jae	.label_1295
	mov	rax, r14
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_1292:
	lea	rsi, [rsi]
	shl	rax, 8
	or	rax, 0xff
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	cmp	rax, r13
	lea	rdi, [rdi]
	jb	.label_1292
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r12
	call	randread
	mov	rbp, rbp
	mov	rax, r12
	nop	word ptr cs:[rax + rax]
.label_1297:
	mov	rcx, rbx
	mov	rsp, rsp
	shl	rcx, 8
	mov	rsp, rsp
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	nop	
	inc	rax
	nop	
	cmp	r14, r13
	jb	.label_1297
.label_1295:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	lea	rdi, [rdi]
	je	.label_1293
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	nop	
	mov	rdi, rdx
	mov	rsp, rsp
	sub	r14, rdi
	nop	
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rcx
	div	rbp
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	rbp, rbp
	dec	rdi
	cmp	rcx, r14
	mov	r14, rdi
	ja	.label_1296
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, rbx
	jmp	.label_1294
.label_1293:
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_1294:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414770
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
	#Procedure 0x414790

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	lea	rsi, [rsi]
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	esi, 0x18
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	explicit_bzero
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4147f0

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	r12, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_1301
	nop	
	xor	ebx, ebx
	test	r14, r14
	je	.label_1302
	mov	esi, OFFSET FLAT:.str_13
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	fopen_safer
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1303
.label_1302:
	nop	
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	lea	rdi, [rdi]
	mov	qword ptr [r15], rbx
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1300
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	rdi, rbx
	call	setvbuf
	mov	rsp, rsp
	jmp	.label_1303
.label_1301:
	mov	edi, 0x1038
	mov	rbp, rbp
	call	xmalloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	mov	qword ptr [r15], 0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_1303
.label_1300:
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	mov	rsp, rsp
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:.str.3_4
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	call	open
	mov	rbp, rbp
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1299
	lea	rdi, [rdi]
	cmp	r12, 0x800
	mov	edx, 0x800
	mov	rsp, rsp
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	nop	
	mov	r12, rax
	mov	rbp, rbp
	mov	edi, ebx
	nop	
	call	close
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	r12, r12
	js	.label_1299
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	lea	rsi, [rsi]
	mov	r13, r12
	ja	.label_1298
.label_1299:
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	mov	rbp, rbp
	cmovbe	rbx, rax
	lea	rsi, [rsi]
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	lea	rdi, [rdi]
	call	gettimeofday
	mov	rsp, rsp
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_1298
	mov	eax, 0x800
	mov	rsp, rsp
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rdi, [rdi]
	cmovbe	r12, rax
	nop	
	call	getpid
	mov	rbp, rbp
	mov	dword ptr [rsp], eax
	nop	
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	add	r12, rbx
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	mov	rsp, rsp
	ja	.label_1298
	mov	eax, 0x800
	mov	rbp, rbp
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + r12]
	nop	
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_1298
	mov	eax, 0x800
	nop	
	sub	rax, rbx
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rsi, [rsi]
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	nop	
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	add	r12, rbx
	nop	
	cmp	r12, 0x7ff
	lea	rdi, [rdi]
	ja	.label_1298
	mov	rbp, rbp
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r12
	nop	
	cmp	rax, 4
	mov	rbp, rbp
	mov	ebx, 4
	cmovbe	rbx, rax
	mov	rbp, rbp
	call	getgid
	mov	rsp, rsp
	mov	dword ptr [rsp], eax
	mov	rbp, rbp
	add	r12, r14
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
.label_1298:
	mov	rdi, r14
	nop	
	call	isaac_seed
.label_1303:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414b20
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414b30
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414b40

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r15, rsi
	nop	
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	je	.label_1304
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	fread_unlocked
	mov	rbp, rax
	nop	
	call	__errno_location
	mov	r12, rax
	nop	
	cmp	rbp, rbx
	mov	rsp, rsp
	je	.label_1306
	nop	
.label_1308:
	lea	rdi, [rdi]
	sub	rbx, rbp
	add	r15, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	mov	rbp, rbp
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	cmp	rbx, rbp
	jne	.label_1308
	mov	rsp, rsp
	jmp	.label_1306
.label_1304:
	mov	r12, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	lea	rsi, [rsi]
	cmp	r12, rbx
	nop	
	jae	.label_1310
	lea	rbp, [r14 + 0x20]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	memcpy
	add	r15, r12
	lea	rsi, [rsi]
	sub	rbx, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1307:
	nop	
	cmp	rbx, 0x800
	jb	.label_1305
	mov	rdi, rbp
	mov	rsi, r15
	call	isaac_refill
	add	r15, 0x800
	mov	rbp, rbp
	add	rbx, -0x800
	jne	.label_1307
	mov	rbp, rbp
	jmp	.label_1309
.label_1305:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rsp, rsp
	call	isaac_refill
	lea	rdi, [rdi]
	mov	r12d, 0x800
	mov	rsi, r13
.label_1310:
	mov	rdi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
.label_1309:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], r12
.label_1306:
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414cc0

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	esi, 0x1038
	nop	
	call	explicit_bzero
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	test	r14, r14
	je	.label_1311
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_1311:
	xor	eax, eax
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x414d10

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_1312
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_1314
	mov	esi, OFFSET FLAT:.str.1_14
	jmp	.label_1313
.label_1314:
	mov	esi, OFFSET FLAT:.str.2_5
.label_1313:
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r14d
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_1312:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414da0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	mov	rax, qword ptr [rdi + 0x800]
	mov	rdx, qword ptr [rdi + 0x810]
	inc	rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x808]
	mov	rbp, rbp
	add	rcx, rdx
	mov	qword ptr [rdi + 0x810], rdx
	nop	
	lea	r9, [rdi + 0x400]
	mov	rsp, rsp
	mov	r8, rsi
	mov	r10, rdi
	nop	dword ptr [rax]
.label_1316:
	mov	r11, rax
	lea	rdi, [rdi]
	shl	r11, 0x15
	mov	rbp, rbp
	xor	r11, rax
	not	r11
	add	r11, qword ptr [r10 + 0x400]
	mov	rdx, qword ptr [r10]
	nop	
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	lea	rsi, [rsi]
	add	rcx, r11
	mov	qword ptr [r10], rcx
	lea	rsi, [rsi]
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8], rdx
	mov	rax, r11
	shr	rax, 5
	xor	rax, r11
	nop	
	add	rax, qword ptr [r10 + 0x408]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 8]
	lea	rdi, [rdi]
	mov	r11d, ecx
	lea	rdi, [rdi]
	and	r11d, 0x7f8
	add	rdx, rax
	lea	rsi, [rsi]
	add	rdx, qword ptr [rdi + r11]
	mov	rbp, rbp
	mov	qword ptr [r10 + 8], rdx
	mov	rsp, rsp
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 8], rcx
	mov	rsp, rsp
	mov	r11, rax
	shl	r11, 0xc
	xor	r11, rax
	lea	rdi, [rdi]
	add	r11, qword ptr [r10 + 0x410]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rsp, rsp
	mov	eax, edx
	lea	rdi, [rdi]
	and	eax, 0x7f8
	lea	rdi, [rdi]
	add	rcx, r11
	nop	
	add	rcx, qword ptr [rdi + rax]
	nop	
	mov	qword ptr [r10 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x10], rdx
	mov	rax, r11
	shr	rax, 0x21
	mov	rbp, rbp
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x418]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 0x18]
	lea	rsi, [rsi]
	mov	r11d, ecx
	and	r11d, 0x7f8
	lea	rsi, [rsi]
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	lea	rsi, [rsi]
	mov	qword ptr [r10 + 0x18], rdx
	shr	rdx, 8
	mov	rbp, rbp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 0x18], rcx
	add	r10, 0x20
	add	r8, 0x20
	mov	rbp, rbp
	cmp	r10, r9
	jb	.label_1316
	add	rsi, 0x400
	lea	r8, [rdi + 0x800]
	nop	word ptr cs:[rax + rax]
.label_1315:
	mov	r10, rax
	shl	r10, 0x15
	xor	r10, rax
	not	r10
	add	r10, qword ptr [r9 - 0x400]
	mov	rsp, rsp
	mov	rdx, qword ptr [r9]
	mov	rbp, rbp
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r10
	mov	rsp, rsp
	mov	qword ptr [r9], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	nop	
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [rsi], rdx
	mov	rax, r10
	nop	
	shr	rax, 5
	lea	rsi, [rsi]
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3f8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 8]
	mov	r10d, ecx
	and	r10d, 0x7f8
	nop	
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 8], rcx
	mov	r10, rax
	shl	r10, 0xc
	nop	
	xor	r10, rax
	nop	
	add	r10, qword ptr [r9 - 0x3f0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	eax, edx
	lea	rsi, [rsi]
	and	eax, 0x7f8
	add	rcx, r10
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r9 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rdx
	nop	
	mov	rax, r10
	nop	
	shr	rax, 0x21
	xor	rax, r10
	nop	
	add	rax, qword ptr [r9 - 0x3e8]
	mov	rcx, qword ptr [r9 + 0x18]
	mov	r10d, ecx
	mov	rsp, rsp
	and	r10d, 0x7f8
	mov	rbp, rbp
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 0x18], rdx
	shr	rdx, 8
	mov	rsp, rsp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 0x18], rcx
	add	r9, 0x20
	add	rsi, 0x20
	cmp	r9, r8
	nop	
	jb	.label_1315
	mov	qword ptr [rdi + 0x800], rax
	mov	qword ptr [rdi + 0x808], rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415080

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	nop	
	movabs	r8, 0xb9f8b322c73ac862
	mov	rbp, rbp
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	mov	rbp, rbp
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1317:
	mov	rbp, rbp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	mov	rbp, rbp
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rdi, [rdi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	lea	rsi, [rsi]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	mov	rbp, rbp
	shl	rdx, 9
	mov	r15, rdx
	nop	
	xor	r15, r10
	sub	rsi, r15
	lea	rdi, [rdi]
	mov	r10, r8
	nop	
	shr	r8, 0x17
	nop	
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	mov	rbp, rbp
	lea	r12, [rcx + rsi]
	lea	rsi, [rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	nop	
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	mov	rsp, rsp
	xor	r8, r10
	mov	r10, rcx
	nop	
	add	r10, rax
	mov	rbp, rbp
	sub	r14, r8
	nop	
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	mov	rsp, rsp
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	mov	rsp, rsp
	xor	rcx, r10
	mov	rbp, rbp
	mov	r11, r14
	mov	rbp, rbp
	add	r11, r15
	mov	rbp, rbp
	sub	r9, rcx
	lea	r10, [r9 + r15]
	lea	rdi, [rdi]
	shl	r15, 0xe
	mov	rsp, rsp
	mov	rax, r15
	xor	rax, r13
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	nop	
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	nop	
	add	rbx, 8
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jl	.label_1317
	xor	ebx, ebx
	nop	
.label_1318:
	mov	rsp, rsp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rsi, [rsi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	nop	
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	rsp, rsp
	mov	r14, r9
	shr	r14, 9
	mov	rbp, rbp
	xor	r14, r11
	mov	rbp, rbp
	add	r9, rdx
	lea	rdi, [rdi]
	sub	r8, r14
	lea	rsi, [rsi]
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	mov	rsp, rsp
	add	r8, rsi
	sub	rcx, r11
	mov	rbp, rbp
	lea	r9, [rcx + rsi]
	lea	rdi, [rdi]
	shl	rsi, 0xf
	mov	rsp, rsp
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	lea	rsi, [rsi]
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	lea	rsi, [rsi]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	lea	rdi, [rdi]
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	nop	
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	mov	rsp, rsp
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	mov	rbp, rbp
	xor	rdx, r12
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_1318
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4153b0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4153d0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	memset
	.section	.text
	.align	32
	#Procedure 0x4153e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_1319
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1321
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_1319
.label_1321:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1319
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_1320
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1320:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1319:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x415490

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	ebx, edi
	test	al, al
	je	.label_1325
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1325:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_1339
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_1334
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_1332
	mov	rsp, rsp
	test	esi, esi
	jne	.label_1339
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_1340
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1324
.label_1339:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_1331
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_1332
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1335
.label_1334:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1330
.label_1332:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_1337
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1341
.label_1337:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1341:
	mov	edx, dword ptr [rax]
.label_1338:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_1330:
	mov	ebp, eax
.label_1327:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1335:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_1331
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1336
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1333
.label_1331:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1322
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_1326
.label_1340:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1324:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_1338
.label_1336:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1333:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1342
	mov	esi, 0x406
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	jns	.label_1328
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1328
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rdi, [rdi]
	call	fcntl
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_1327
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_1323
.label_1328:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1327
.label_1322:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_1326:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_1330
.label_1342:
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	mov	ebp, eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_1323:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_1327
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_1327
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1329
	or	ecx, 1
	mov	esi, 2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_1327
.label_1329:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	jmp	.label_1327
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x415860

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x415880

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1345
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1346
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1343
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1347
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1345
.label_1347:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_1344
.label_1346:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_1345
.label_1343:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1344:
	xor	eax, eax
.label_1345:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]