	.section	.text
	.align	32
	#Procedure 0x401b40

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
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
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
	je	.label_8
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.5_0
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.5_0
	mov	ecx, OFFSET FLAT:.str.61
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	
	.section	.text
	.align	32
	#Procedure 0x401fc0

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
	mov	r15, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.29
	mov	esi, OFFSET FLAT:.str.30
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.29
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r14d, r14d
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	r12d, r12d
	jmp	.label_10
.label_23:
	mov	bpl, 1
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x28], rax
	nop	word ptr [rax + rax]
.label_10:
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x71
	jg	.label_29
	cmp	eax, 0x51
	jle	.label_32
	cmp	eax, 0x52
	mov	ecx, OFFSET FLAT:rfc_email_format
	je	.label_35
	cmp	eax, 0x64
	je	.label_37
	cmp	eax, 0x66
	jne	.label_14
	mov	rbx, qword ptr [rip + optarg]
	jmp	.label_10
	nop	dword ptr [rax + rax]
.label_29:
	cmp	eax, 0x74
	jle	.label_38
	cmp	eax, 0x75
	je	.label_39
	cmp	eax, 0x80
	je	.label_40
	cmp	eax, 0x81
	jne	.label_14
	or	byte ptr [rip + parse_datetime_flags],  1
	jmp	.label_10
	nop	word ptr cs:[rax + rax]
.label_32:
	cmp	eax, 0x48
	jle	.label_51
	cmp	eax, 0x49
	jne	.label_14
	mov	rsi, qword ptr [rip + optarg]
	xor	eax, eax
	test	rsi, rsi
	je	.label_53
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:.str.32
	mov	edx, OFFSET FLAT:time_spec_string
	mov	ecx, OFFSET FLAT:time_spec
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + time_spec]
.label_53:
	mov	eax, eax
	shl	rax, 5
	lea	rcx, qword ptr [rax + main.iso_8601_format]
	jmp	.label_17
.label_38:
	cmp	eax, 0x72
	je	.label_20
	cmp	eax, 0x73
	je	.label_23
	jmp	.label_14
.label_37:
	mov	r12, qword ptr [rip + optarg]
	jmp	.label_10
.label_39:
	mov	edi, OFFSET FLAT:.str.33
	call	putenv
	test	eax, eax
	je	.label_10
	jmp	.label_31
.label_40:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:.str.31
	mov	edx, OFFSET FLAT:label_33
	mov	ecx, OFFSET FLAT:label_34
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + label_34]
	shl	rax, 5
	lea	rcx, qword ptr [rax + main.rfc_3339_format]
.label_17:
	test	rcx, rcx
	je	.label_10
.label_35:
	cmp	qword ptr [rsp + 0x30], 0
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_10
	jmp	.label_21
.label_20:
	mov	r14, qword ptr [rip + optarg]
	jmp	.label_10
.label_51:
	cmp	eax, -1
	jne	.label_48
	test	r12, r12
	setne	al
	movzx	eax, al
	test	r14, r14
	mov	qword ptr [rsp + 0x18], r14
	setne	cl
	movzx	r14d, cl
	cmp	rbx, 1
	sbb	r14d, -1
	add	r14d, eax
	cmp	r14d, 2
	jae	.label_50
	test	bpl, bpl
	je	.label_57
	test	r14d, r14d
	jne	.label_9
.label_57:
	movsxd	rcx, dword ptr [rip + optind]
	cmp	ecx, r13d
	jge	.label_12
	lea	eax, [rcx + 1]
	cmp	eax, r13d
	jl	.label_15
	mov	rcx, qword ptr [r15 + rcx*8]
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x2b
	jne	.label_19
	mov	qword ptr [rsp + 0x10], r12
	cmp	qword ptr [rsp + 0x30], 0
	jne	.label_21
	mov	qword ptr [rsp + 0x20], rbp
	mov	dword ptr [rip + optind],  eax
	inc	rcx
	mov	qword ptr [rsp + 0x30], rcx
	jmp	.label_13
.label_19:
	test	bpl, bpl
	jne	.label_22
	test	r14d, r14d
	jne	.label_22
.label_12:
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x20], rbp
	cmp	qword ptr [rsp + 0x30], 0
	jne	.label_13
	mov	edi, 0x2006c
	call	rpl_nl_langinfo
	mov	qword ptr [rsp + 0x30], rax
	cmp	byte ptr [rax], 0
	jne	.label_13
	mov	eax, OFFSET FLAT:.str.41
	mov	qword ptr [rsp + 0x30], rax
.label_13:
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	qword ptr [rsp + 0x38], rax
	mov	rdi, rax
	call	tzalloc
	mov	r12, rax
	test	rbx, rbx
	je	.label_42
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_44
	cmp	byte ptr [rbx + 1], 0
	je	.label_45
.label_44:
	mov	esi, OFFSET FLAT:.str.82
	mov	rdi, rbx
	mov	qword ptr [rsp + 8], rdi
	call	fopen
	mov	r13, rax
	test	r13, r13
	jne	.label_16
	jmp	.label_52
.label_42:
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	jne	.label_55
	test	r14d, r14d
	jne	.label_55
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r13d
	jge	.label_56
	mov	rbx, qword ptr [r15 + rax*8]
	lea	rdi, [rsp + 0xd0]
	mov	edx, 7
	mov	rsi, rbx
	call	posixtime
	mov	qword ptr [rsp + 0xd8], 0
	test	al, al
	jne	.label_18
	jmp	.label_25
.label_55:
	mov	rbx, qword ptr [rsp + 0x18]
	test	rbx, rbx
	je	.label_26
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	jne	.label_30
	movups	xmm0, xmmword ptr [rsp + 0x98]
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	jmp	.label_27
.label_45:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	mov	r13, qword ptr [rip + stdin]
.label_16:
	mov	qword ptr [rsp + 0x100], 0
	mov	qword ptr [rsp + 0xf8], 0
	lea	rdi, [rsp + 0x100]
	lea	rsi, [rsp + 0xf8]
	mov	edx, 0xa
	mov	rcx, r13
	call	__getdelim
	mov	r15, rax
	mov	r14b, 1
	test	r15, r15
	js	.label_49
	mov	r14b, 1
	lea	rbx, [rsp + 0xe8]
	lea	rbp, [rsp + 0x100]
	nop	dword ptr [rax + rax]
.label_46:
	mov	rsi, qword ptr [rsp + 0x100]
	mov	ecx, dword ptr [rip + parse_datetime_flags]
	xor	edx, edx
	mov	rdi, rbx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x38]
	call	parse_datetime2
	test	al, al
	je	.label_11
	mov	rsi, qword ptr [rsp + 0xe8]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rcx, r12
	call	show_date
	and	al, r14b
	mov	r14b, al
	jmp	.label_28
	nop	dword ptr [rax]
.label_11:
	mov	r14, r13
	mov	r13, rbp
	mov	rbp, r12
	mov	r12, rbx
	mov	rax, qword ptr [rsp + 0x100]
	movzx	ecx, byte ptr [r15 + rax - 1]
	cmp	ecx, 0xa
	jne	.label_41
	mov	byte ptr [rax + r15 - 1], 0
.label_41:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x100]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbx, r12
	mov	r12, rbp
	mov	rbp, r13
	mov	r13, r14
	xor	r14d, r14d
.label_28:
	mov	edx, 0xa
	mov	rdi, rbp
	lea	rsi, [rsp + 0xf8]
	mov	rcx, r13
	call	__getdelim
	mov	r15, rax
	test	r15, r15
	jns	.label_46
.label_49:
	mov	rdi, r13
	call	rpl_fclose
	cmp	eax, -1
	je	.label_52
	mov	rdi, qword ptr [rsp + 0x100]
	call	free
	movzx	eax, r14b
	jmp	.label_54
.label_56:
	lea	rdi, [rsp + 0xd0]
	call	gettime
	jmp	.label_27
.label_26:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	mov	rsi, qword ptr [rsp + 0x10]
	cmovne	rsi, rax
	mov	ecx, dword ptr [rip + parse_datetime_flags]
	lea	rdi, [rsp + 0xd0]
	xor	edx, edx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x38]
	mov	rbx, rsi
	call	parse_datetime2
	test	al, al
	je	.label_25
.label_27:
	mov	ebx, 1
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	je	.label_24
.label_18:
	lea	rdi, [rsp + 0xd0]
	call	settime
	mov	ebx, 1
	test	eax, eax
	je	.label_24
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	call	error
.label_24:
	mov	rsi, qword ptr [rsp + 0xd0]
	mov	rdx, qword ptr [rsp + 0xd8]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rcx, r12
	call	show_date
	movzx	eax, al
	and	eax, ebx
.label_54:
	not	eax
	and	eax, 1
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_48:
	cmp	eax, 0xffffff7d
	je	.label_47
	cmp	eax, 0xffffff7e
	jne	.label_14
	xor	edi, edi
	call	usage
.label_47:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, OFFSET FLAT:.str.17_0
	mov	r8d, OFFSET FLAT:.str.35
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_14:
	mov	edi, 1
	call	usage
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_52:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_31:
	call	xalloc_die
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	jmp	.label_36
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
.label_36:
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
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8 + 8]
	jmp	.label_43
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
.label_43:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_30:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402760

	.globl show_date
	.type show_date, @function
show_date:
	push	r14
	push	rbx
	sub	rsp, 0x68
	mov	r14, rcx
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x58], rsi
	mov	qword ptr [rsp + 0x60], rdx
	lea	rsi, [rsp + 0x58]
	lea	rdx, [rsp + 0x20]
	mov	rdi, r14
	call	localtime_rz
	test	rax, rax
	je	.label_62
	mov	eax, OFFSET FLAT:rfc_email_format
	cmp	rbx, rax
	je	.label_59
	mov	rdi, qword ptr [rip + stdout]
	mov	r8d, dword ptr [rsp + 0x60]
	lea	rdx, [rsp + 0x20]
	mov	rsi, rbx
	mov	rcx, r14
	call	fprintftime
	jmp	.label_61
.label_62:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rsp]
	call	imaxtostr
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	jmp	.label_58
.label_59:
	mov	edi, 2
	mov	esi, OFFSET FLAT:.str.210
	call	setlocale
	mov	rdi, qword ptr [rip + stdout]
	mov	r8d, dword ptr [rsp + 0x60]
	lea	rdx, [rsp + 0x20]
	mov	esi, OFFSET FLAT:rfc_email_format
	mov	rcx, r14
	call	fprintftime
	mov	edi, 2
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
.label_61:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_60
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	mov	bl, 1
.label_58:
	mov	al, bl
	add	rsp, 0x68
	pop	rbx
	pop	r14
	ret	
.label_60:
	mov	esi, 0xa
	call	__overflow
	mov	bl, 1
	jmp	.label_58
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402870

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402880

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
	je	.label_64
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_63:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_68
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_66
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_67
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_69
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_68
.label_69:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_68
.label_67:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_68:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_63
	jmp	.label_65
.label_64:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_65:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_66:
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
	#Procedure 0x402980
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
	je	.label_70
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_71
.label_70:
	mov	esi, OFFSET FLAT:.str_3
.label_71:
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
	#Procedure 0x4029f0

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
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_73
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_76:
	test	r15, r15
	je	.label_72
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_75
.label_72:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_77
	nop	word ptr cs:[rax + rax]
.label_75:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_77:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_76
.label_73:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_74
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
.label_74:
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
	#Procedure 0x402b20

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
	jns	.label_79
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_80
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_78
.label_80:
	mov	esi, OFFSET FLAT:.str_3
.label_78:
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
.label_79:
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
	#Procedure 0x402be0
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
	je	.label_81
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_82:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_81
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_82
.label_81:
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
	#Procedure 0x402c50
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c60
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c70

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_86
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_85
	cmp	dword ptr [rbp], 0x20
	jne	.label_85
.label_86:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_84
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_83
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_84:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_83:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d30

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], r8d
	mov	qword ptr [rsp], rcx
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9d, 0xffffffff
	call	__strftime_internal
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d60

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x3c], r8d
	mov	dword ptr [rsp + 0x54], ecx
	mov	qword ptr [rsp + 0x58], rdx
	mov	r13, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 0x68], r14
	mov	eax, dword ptr [rdx + 8]
	mov	rcx, qword ptr [rdx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x28], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x24], edx
	mov	al, byte ptr [r13]
	test	al, al
	mov	r15d, 0
	je	.label_103
	lea	rcx, [rsp + 0x490]
	mov	rdx, -0x17
	sub	rdx, rcx
	mov	qword ptr [rsp + 0x18], rdx
	xor	r15d, r15d
	jmp	.label_172
.label_171:
	mov	r14d, 3
	jmp	.label_179
	nop	word ptr cs:[rax + rax]
.label_172:
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_182
	mov	eax, dword ptr [rsp + 0x54]
	mov	r11b, al
	xor	ebp, ebp
	movabs	rdi, 0x1000000000002500
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_182:
	test	r9d, r9d
	mov	ecx, r9d
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, r15
	not	rdx
	cmp	rbx, rdx
	jae	.label_92
	test	r14, r14
	je	.label_191
	cmp	ecx, 2
	jb	.label_192
	cmp	r9d, 1
	je	.label_192
	movsxd	rbp, r9d
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_197:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_197
	mov	al, byte ptr [r13]
.label_192:
	movsx	edi, al
	mov	rsi, r14
	call	fputc
.label_191:
	add	r15, rbx
	jmp	.label_100
	nop	dword ptr [rax]
.label_210:
	mov	r12b, 1
	mov	al, r11b
	jmp	.label_185
	nop	dword ptr [rax + rax]
.label_208:
	inc	r13
	mov	ebp, edx
.label_212:
	mov	cl, byte ptr [r13]
	movsx	edx, cl
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	ja	.label_204
	bt	rdi, rsi
	jb	.label_208
	mov	al, 1
	test	rsi, rsi
	je	.label_210
	cmp	rsi, 0x3b
	jne	.label_204
.label_185:
	mov	r11b, al
	inc	r13
	jmp	.label_212
	nop	
.label_204:
	add	edx, -0x30
	xor	eax, eax
	cmp	edx, 9
	ja	.label_165
	nop	word ptr [rax + rax]
.label_223:
	mov	r9d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_220
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_190
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_220
.label_190:
	lea	eax, [rax + rax*4]
	lea	r9d, [rcx + rax*2 - 0x30]
.label_220:
	movsx	ecx, byte ptr [r13 + 1]
	inc	r13
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r9d
	jb	.label_223
.label_165:
	movsx	r10d, cl
	cmp	r10d, 0x4f
	je	.label_228
	cmp	r10d, 0x45
	jne	.label_229
.label_228:
	mov	cl, byte ptr [r13 + 1]
	inc	r13
	jmp	.label_230
.label_229:
	xor	r10d, r10d
.label_230:
	movsx	r8d, cl
	xor	edx, edx
	mov	esi, 1
	lea	ebx, [r8 - 0x25]
	cmp	ebx, 0x55
	ja	.label_233
	mov	qword ptr [rsp + 0x78], r15
	mov	r15d, OFFSET FLAT:.str.3_1
	mov	dword ptr [rsp + 0x70], r9d
	mov	r9b, 0x72
	mov	r14d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rbx * 8) + label_236]
.label_1286:
	cmp	r10d, 0x45
	je	.label_94
	mov	qword ptr [rsp + 0x60], r11
	mov	rsi, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [rsi + 0x14]
	mov	r9d, dword ptr [rsi + 0x18]
	mov	eax, edx
	sar	eax, 0x1f
	and	eax, 0x190
	lea	r11d, [rdx + rax - 0x64]
	mov	ebx, dword ptr [rsi + 0x1c]
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	movsxd	rdi, eax
	imul	rax, rdi, -0x6db6db6d
	shr	rax, 0x20
	add	eax, edi
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edi, esi
	lea	r12d, [rbx + 3]
	sub	r12d, edi
	js	.label_231
	mov	edi, 0x16d
	test	r11b, 3
	jne	.label_249
	movsxd	rsi, r11d
	imul	rsi, rsi, 0x51eb851f
	mov	rdi, rsi
	sar	rdi, 0x25
	mov	r14, rsi
	shr	r14, 0x3f
	add	edi, r14d
	imul	edi, edi, 0x64
	sar	rsi, 0x27
	add	esi, r14d
	imul	esi, esi, 0x190
	cmp	r11d, esi
	sete	al
	movzx	eax, al
	add	eax, 0x16d
	cmp	r11d, edi
	mov	edi, 0x16e
	cmove	edi, eax
.label_249:
	sub	ebx, edi
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	cdqe	
	imul	rsi, rax, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, eax
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	eax, edi
	add	ebx, 3
	sub	ebx, eax
	cmovns	r12d, ebx
	shr	ebx, 0x1f
	xor	ebx, 1
	jmp	.label_104
	nop	
.label_119:
	inc	rsi
.label_1280:
	movzx	eax, byte ptr [r13 + rsi]
	cmp	eax, 0x3a
	je	.label_119
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_94
	add	r13, rsi
	mov	rdx, rsi
.label_1317:
	mov	r9, qword ptr [rsp + 0x58]
	cmp	dword ptr [r9 + 0x20], 0
	js	.label_124
	mov	rdi, rdx
	mov	r8d, dword ptr [r9 + 0x28]
	mov	r15b, 1
	test	r8d, r8d
	js	.label_116
	test	r8d, r8d
	je	.label_132
	xor	r15d, r15d
	jmp	.label_116
.label_1300:
	test	r12b, r12b
	je	.label_135
	mov	r11b, 1
.label_135:
	xor	eax, eax
	cmp	r10d, 0x45
	je	.label_94
	mov	r9b, cl
	jmp	.label_126
.label_233:
	test	r8d, r8d
	jne	.label_139
	mov	qword ptr [rsp + 0x78], r15
	mov	dword ptr [rsp + 0x70], r9d
	dec	r13
	jmp	.label_94
.label_1279:
	test	r10d, r10d
	jne	.label_94
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	r14, rcx
	jae	.label_92
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_93
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x68]
	jb	.label_152
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_155
	cmp	ebp, 0x2b
	jne	.label_158
.label_155:
	test	r15, r15
	je	.label_152
	dec	rbx
.label_163:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_163
	jmp	.label_152
.label_1281:
	test	r10d, r10d
	jne	.label_94
	test	r12b, r12b
	je	.label_183
	mov	r11b, 1
.label_183:
	xor	eax, eax
	mov	r9b, 0x41
	jmp	.label_126
.label_1282:
	cmp	r10d, 0x45
	je	.label_94
	test	r12b, r12b
	je	.label_201
	mov	r11b, 1
.label_201:
	xor	eax, eax
	mov	r9b, 0x42
	jmp	.label_126
.label_1283:
	cmp	r10d, 0x45
	jne	.label_176
	xor	eax, eax
	mov	r9b, 0x43
	jmp	.label_126
.label_1284:
	test	r10d, r10d
	jne	.label_94
	mov	r15d, OFFSET FLAT:.str.1_2
	jmp	.label_150
.label_1285:
	test	r10d, r10d
	jne	.label_94
	test	ebp, ebp
	mov	ecx, dword ptr [rsp + 0x70]
	jne	.label_184
	test	ecx, ecx
	jns	.label_184
	mov	r15d, OFFSET FLAT:.str.2_1
	mov	ebp, 0x2b
	mov	r14d, 4
	jmp	.label_150
.label_1287:
	cmp	r10d, 0x45
	je	.label_94
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 8]
	jmp	.label_118
.label_1288:
	cmp	r10d, 0x45
	je	.label_94
	mov	r14d, 2
	mov	eax, dword ptr [rsp + 0x24]
	mov	edx, eax
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_108
.label_1289:
	cmp	r10d, 0x45
	je	.label_94
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 4]
	jmp	.label_118
.label_1290:
	cmp	r10d, 0x45
	je	.label_94
	mov	edi, dword ptr [rsp + 0x70]
	cmp	edi, -1
	je	.label_198
	cmp	edi, 8
	jg	.label_199
	mov	esi, 9
	sub	esi, edi
	mov	eax, 8
	sub	eax, edi
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	ebx, edi
	je	.label_200
	and	esi, 3
	neg	esi
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	ebx, edi
	nop	
.label_206:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x22
	add	edx, edi
	inc	ebx
	inc	esi
	jne	.label_206
.label_200:
	cmp	eax, 3
	mov	r9, qword ptr [rsp + 0x58]
	jb	.label_213
	mov	eax, 9
	sub	eax, ebx
	nop	
.label_217:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x2c
	add	edx, esi
	add	eax, -4
	jne	.label_217
.label_213:
	mov	eax, dword ptr [rsp + 0x70]
	mov	r14d, eax
	jmp	.label_108
.label_1291:
	mov	dil, 1
.label_1309:
	xor	edx, edx
	test	r12b, r12b
	je	.label_224
	mov	r11d, 0
.label_224:
	je	.label_227
	mov	dil, 1
.label_227:
	mov	r9b, 0x70
	mov	al, dil
	jmp	.label_214
.label_1292:
	cmp	r10d, 0x45
	je	.label_94
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9]
	jmp	.label_118
.label_1293:
	mov	r15d, OFFSET FLAT:.str.4_1
.label_150:
	test	r11b, r11b
	mov	qword ptr [rsp + 0x60], r11
	setne	al
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x58]
	mov	r8d, ebp
	mov	r9d, r14d
	call	__strftime_internal
	mov	esi, dword ptr [rsp + 0x70]
	test	esi, esi
	cmovns	ebx, esi
	movsxd	rcx, ebx
	cmp	rax, rcx
	mov	rdi, rax
	cmovb	rdi, rcx
	mov	rdx, qword ptr [rsp + 0x78]
	not	rdx
	cmp	rdi, rdx
	jae	.label_92
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_246
	mov	dword ptr [rsp + 0x40], r14d
	mov	qword ptr [rsp + 0x48], rdi
	cmp	rax, rcx
	mov	r12, qword ptr [rsp + 0x68]
	jae	.label_88
	movsxd	rcx, esi
	mov	r14, rcx
	sub	r14, rax
	cmp	ebp, 0x30
	je	.label_250
	cmp	ebp, 0x2b
	jne	.label_253
.label_250:
	xor	ebx, ebx
	cmp	rcx, rax
	je	.label_88
	nop	
.label_91:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbx
	cmp	rbx, r14
	jb	.label_91
	jmp	.label_88
.label_1294:
	cmp	r10d, 0x45
	je	.label_94
	mov	r9, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [r9 + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [r9 + 0x18]
	movsxd	rdx, eax
	jmp	.label_99
.label_1295:
	cmp	r10d, 0x45
	je	.label_94
	mov	r9, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [r9 + 0x18]
	mov	edx, dword ptr [r9 + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	sub	esi, edi
	add	edx, 7
	sub	edx, esi
	movsxd	rdx, edx
.label_99:
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	edx, eax
	mov	eax, edx
	shr	eax, 0x1f
	sar	edx, 2
	add	edx, eax
	jmp	.label_118
.label_1296:
	cmp	r10d, 0x4f
	je	.label_94
	xor	eax, eax
	mov	r9b, 0x58
	jmp	.label_126
.label_1297:
	cmp	r10d, 0x45
	je	.label_128
	cmp	r10d, 0x4f
	je	.label_94
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0x14]
	cmp	edx, 0xfffff894
	setl	r15b
	add	edx, 0x76c
	mov	r14d, 4
	jmp	.label_134
.label_1298:
	mov	qword ptr [rsp + 0x60], r11
	mov	rdi, qword ptr [rsp + 0x28]
	call	strlen
	mov	rbx, rax
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	rbx, rax
	mov	rsi, rbx
	cmovb	rsi, rax
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	rsi, rcx
	jae	.label_92
	mov	qword ptr [rsp + 0x48], rsi
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_105
	cmp	rbx, rax
	jae	.label_110
	movsxd	rax, edx
	mov	r15, rax
	sub	r15, rbx
	cmp	ebp, 0x30
	je	.label_151
	cmp	ebp, 0x2b
	jne	.label_154
.label_151:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_110
	nop	word ptr cs:[rax + rax]
.label_161:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_161
	jmp	.label_110
.label_1299:
	test	r10d, r10d
	jne	.label_94
	test	r12b, r12b
	je	.label_174
	mov	r11b, 1
.label_174:
	xor	eax, eax
	mov	r9b, 0x61
	jmp	.label_126
.label_1301:
	cmp	r10d, 0x4f
	je	.label_94
	xor	eax, eax
	mov	r9b, 0x63
	jmp	.label_126
.label_1302:
	cmp	r10d, 0x45
	je	.label_94
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0xc]
	jmp	.label_118
.label_1303:
	cmp	r10d, 0x45
	je	.label_94
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0xc]
	jmp	.label_180
.label_1304:
	cmp	r10d, 0x45
	je	.label_94
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0x1c]
	cmp	edx, -1
	setl	r15b
	inc	edx
	mov	r14d, 3
	jmp	.label_181
.label_1305:
	cmp	r10d, 0x45
	je	.label_94
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 8]
	jmp	.label_180
.label_1306:
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x24]
	mov	edx, eax
	mov	r9, qword ptr [rsp + 0x58]
	je	.label_94
.label_180:
	test	ebp, ebp
	mov	eax, 0x5f
	cmove	ebp, eax
.label_118:
	mov	r14d, 2
	jmp	.label_108
.label_1307:
	cmp	r10d, 0x45
	je	.label_94
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0x10]
	cmp	edx, -1
	setl	r15b
	inc	edx
	mov	r14d, 2
	jmp	.label_181
.label_1308:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	r14, rcx
	jae	.label_92
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_93
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x68]
	jb	.label_143
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_122
	cmp	ebp, 0x2b
	jne	.label_207
.label_122:
	test	r15, r15
	je	.label_143
	dec	rbx
	nop	word ptr [rax + rax]
.label_216:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_216
	jmp	.label_143
.label_1310:
	mov	r9, qword ptr [rsp + 0x58]
	imul	edx, dword ptr [r9 + 0x10], 0xb
	sar	edx, 5
	inc	edx
	mov	r14d, 1
	xor	ebx, ebx
	xor	r8d, r8d
	xor	r15d, r15d
	jmp	.label_162
.label_1311:
	mov	qword ptr [rsp + 0x60], r11
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xb0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x4e0]
	call	mktime_z
	mov	rcx, rax
	mov	r15, rcx
	shr	r15, 0x3f
	lea	r12, [rsp + 0x4a7]
	nop	dword ptr [rax]
.label_240:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	neg	eax
	test	r15, r15
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_240
	mov	r14d, 1
	xor	r8d, r8d
	mov	r11, qword ptr [rsp + 0x60]
	mov	r9d, dword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	jmp	.label_248
.label_1312:
	xor	eax, eax
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	r14, rcx
	jae	.label_92
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_93
	cmp	eax, 2
	mov	r12, qword ptr [rsp + 0x68]
	jb	.label_97
	movsxd	rbx, edx
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_102
	cmp	ebp, 0x2b
	jne	.label_170
.label_102:
	test	r15, r15
	je	.label_97
	dec	rbx
.label_111:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_111
	jmp	.label_97
.label_1313:
	mov	r9, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [r9 + 0x18]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	inc	edx
	mov	r14d, 1
	jmp	.label_108
.label_1314:
	cmp	r10d, 0x45
	je	.label_94
	mov	r9, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [r9 + 0x18]
	mov	r14d, 1
	jmp	.label_108
.label_1315:
	cmp	r10d, 0x4f
	je	.label_94
	xor	eax, eax
	mov	r9b, 0x78
	jmp	.label_126
.label_1316:
	cmp	r10d, 0x45
	jne	.label_159
	xor	eax, eax
	mov	r9b, 0x79
	jmp	.label_126
.label_139:
	mov	qword ptr [rsp + 0x78], r15
	mov	dword ptr [rsp + 0x70], r9d
	jmp	.label_94
.label_231:
	dec	r11d
	mov	r14d, 0x16d
	test	r11b, 3
	jne	.label_141
	movsxd	rax, r11d
	imul	rax, rax, 0x51eb851f
	mov	rsi, rax
	sar	rsi, 0x25
	mov	rdi, rax
	shr	rdi, 0x3f
	add	esi, edi
	imul	esi, esi, 0x64
	sar	rax, 0x27
	add	eax, edi
	imul	eax, eax, 0x190
	cmp	r11d, eax
	sete	al
	movzx	edi, al
	add	edi, 0x16d
	cmp	r11d, esi
	mov	r14d, 0x16e
	cmove	r14d, edi
.label_141:
	lea	esi, [r14 + rbx + 0x17e]
	sub	esi, r9d
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	add	edi, esi
	mov	eax, edi
	shr	eax, 0x1f
	sar	edi, 2
	add	edi, eax
	lea	eax, [rdi*8]
	sub	eax, edi
	sub	esi, eax
	lea	r12d, [r14 + rbx + 3]
	sub	r12d, esi
	mov	ebx, 0xffffffff
.label_104:
	cmp	r8d, 0x47
	mov	r11, qword ptr [rsp + 0x60]
	je	.label_164
	cmp	r8d, 0x67
	jne	.label_167
	movsxd	rax, edx
	imul	rax, rax, 0x51eb851f
	mov	rdi, rdx
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	eax, eax, 0x64
	mov	edx, edi
	sub	edx, eax
	add	edx, ebx
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	sub	edx, eax
	mov	r14d, 2
	mov	r9, qword ptr [rsp + 0x58]
	js	.label_169
	xor	r15d, r15d
	jmp	.label_134
.label_124:
	mov	r14, qword ptr [rsp + 0x68]
	mov	r15, qword ptr [rsp + 0x78]
	jmp	.label_100
.label_176:
	mov	r9, qword ptr [rsp + 0x58]
	movsxd	rax, dword ptr [r9 + 0x14]
	cmp	rax, -0x76c
	setl	r15b
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x25
	add	edx, edi
	imul	edi, edx, 0x64
	cmp	eax, edi
	sets	al
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	r14d, 2
	jmp	.label_134
.label_159:
	mov	r9, qword ptr [rsp + 0x58]
	movsxd	rax, dword ptr [r9 + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	esi, edx, 0x64
	mov	edx, eax
	mov	r14d, 2
	sub	edx, esi
	js	.label_193
	xor	r15d, r15d
	jmp	.label_134
.label_164:
	mov	eax, 0xfffff894
	sub	eax, ebx
	cmp	edx, eax
	setl	r15b
	lea	edx, [rbx + rdx + 0x76c]
	mov	r14d, 4
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_134
.label_167:
	movsxd	rax, r12d
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	add	eax, edx
	mov	edx, eax
	sar	edx, 2
	shr	eax, 0x1f
	lea	edx, [rdx + rax + 1]
	mov	r14d, 2
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_108
.label_128:
	xor	eax, eax
	mov	r9b, 0x59
.label_126:
	xor	edx, edx
	jmp	.label_214
.label_253:
	xor	ebx, ebx
	cmp	rcx, rax
	je	.label_88
	nop	
.label_219:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	rbx
	cmp	rbx, r14
	jb	.label_219
.label_88:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4e8]
	mov	dword ptr [rsp + 8], ecx
	mov	rcx, qword ptr [rsp + 0x4e0]
	mov	qword ptr [rsp], rcx
	movzx	ecx, al
	mov	rdi, r12
	mov	qword ptr [rsp + 0x68], r12
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x58]
	mov	r8d, ebp
	mov	r9d, dword ptr [rsp + 0x40]
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x48]
.label_246:
	mov	r15, qword ptr [rsp + 0x78]
	add	r15, rdi
	mov	r14, qword ptr [rsp + 0x68]
	jmp	.label_100
.label_132:
	mov	rax, qword ptr [rsp + 0x28]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	sete	r15b
.label_116:
	mov	r14, rdi
	cmp	r14, 3
	ja	.label_94
	movsxd	rdx, r8d
	imul	rdi, rdx, -0x77777777
	shr	rdi, 0x20
	add	edi, r8d
	mov	ebx, edi
	shr	ebx, 0x1f
	sar	edi, 5
	add	edi, ebx
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	add	edx, r8d
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 0xb
	add	edx, ebx
	movsxd	rbx, edi
	imul	rdi, rbx, -0x77777777
	shr	rdi, 0x20
	add	edi, ebx
	mov	eax, edi
	shr	eax, 0x1f
	sar	edi, 5
	add	edi, eax
	imul	eax, edi, 0x3c
	imul	edi, ebx, 0x3c
	sub	ebx, eax
	sub	r8d, edi
	jmp	qword ptr [(r14 * 8) + label_238]
.label_1346:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	r14d, 5
.label_179:
	mov	r8b, 1
	xor	ebx, ebx
	jmp	.label_162
.label_94:
	mov	qword ptr [rsp + 0x60], r11
	lea	rbx, [r13 + 1]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_90:
	inc	r12
	movzx	eax, byte ptr [rbx - 1]
	dec	rbx
	cmp	eax, 0x25
	jne	.label_90
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	mov	eax, edx
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	rsi, rcx
	jae	.label_92
	mov	qword ptr [rsp + 0x48], rsi
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_105
	movsxd	rcx, r12d
	mov	qword ptr [rsp + 0x40], rcx
	cmp	r12d, eax
	mov	r15, r14
	jae	.label_109
	movsxd	r14, edx
	sub	r14, qword ptr [rsp + 0x40]
	cmp	ebp, 0x30
	je	.label_112
	cmp	ebp, 0x2b
	jne	.label_113
.label_112:
	cmp	edx, r12d
	mov	ebp, 0
	je	.label_109
	nop	dword ptr [rax + rax]
.label_120:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	inc	rbp
	cmp	rbp, r14
	jb	.label_120
	jmp	.label_109
.label_113:
	cmp	edx, r12d
	mov	ebp, 0
	je	.label_109
	nop	word ptr cs:[rax + rax]
.label_130:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	inc	rbp
	cmp	rbp, r14
	jb	.label_130
.label_109:
	mov	r14, r15
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_138
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x40]
.label_168:
	mov	rcx, r14
	call	fwrite
	jmp	.label_105
.label_138:
	call	__ctype_toupper_loc
	mov	r15, rax
	movsxd	rbp, r12d
	neg	rbp
	nop	word ptr cs:[rax + rax]
.label_146:
	movzx	eax, byte ptr [rbx]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbx
	inc	rbp
	jne	.label_146
.label_105:
	mov	r15, qword ptr [rsp + 0x78]
	add	r15, qword ptr [rsp + 0x48]
	jmp	.label_100
.label_184:
	xor	eax, eax
	mov	r14d, ecx
	add	r14d, -6
	cmovs	r14d, eax
	mov	r15d, OFFSET FLAT:.str.2_1
	jmp	.label_150
.label_198:
	mov	r14d, 9
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	edx, eax
	mov	dword ptr [rsp + 0x70], 9
	mov	r9, qword ptr [rsp + 0x58]
	jmp	.label_108
.label_169:
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	edi, eax
	jmp	.label_157
.label_193:
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	eax, 0xfffff894
.label_157:
	cmovl	edx, esi
	xor	r15d, r15d
.label_134:
	test	ebp, ebp
	cmove	ebp, dword ptr [rsp + 0x3c]
	xor	ebx, ebx
	cmp	ebp, 0x2b
	mov	r8d, 0
	jne	.label_162
	cmp	r14d, 2
	mov	eax, 0x63
	mov	edi, 0x270f
	cmove	edi, eax
	cmp	edi, edx
	setb	dil
	cmp	r14d, dword ptr [rsp + 0x70]
	setl	r8b
	or	r8b, dil
	jmp	.label_162
.label_1349:
	test	r8d, r8d
	je	.label_173
.label_1348:
	imul	edx, edx, 0x2710
	imul	eax, ebx, 0x64
	add	edx, r8d
	add	edx, eax
	mov	r14d, 9
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_162
.label_199:
	mov	eax, dword ptr [rsp + 0x4e8]
	mov	edx, eax
	mov	r14d, edi
	mov	r9, qword ptr [rsp + 0x58]
.label_108:
	mov	r15d, edx
	shr	r15d, 0x1f
.label_181:
	xor	ebx, ebx
	xor	r8d, r8d
.label_162:
	mov	qword ptr [rsp + 0x58], r9
	cmp	r10d, 0x4f
	jne	.label_186
	test	r15b, r15b
	jne	.label_186
	xor	eax, eax
	mov	r9b, cl
	mov	rdx, r14
.label_214:
	mov	dword ptr [rsp + 0x48], eax
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x60], r11
	mov	word ptr [rsp + 0x48b], 0x2520
	test	r10d, r10d
	lea	rcx, [rsp + 0x48d]
	je	.label_188
	mov	byte ptr [rsp + 0x48d], r10b
	lea	rcx, [rsp + 0x48e]
.label_188:
	mov	byte ptr [rcx], r9b
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x58]
	call	strftime
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x68]
	je	.label_196
	lea	rdi, [rax - 1]
	xor	ecx, ecx
	mov	edx, dword ptr [rsp + 0x70]
	test	edx, edx
	cmovns	ecx, edx
	movsxd	rsi, ecx
	cmp	rdi, rsi
	mov	r15, rdi
	cmovb	r15, rsi
	mov	rcx, qword ptr [rsp + 0x78]
	not	rcx
	cmp	r15, rcx
	jae	.label_92
	mov	qword ptr [rsp + 0x30], rax
	test	r14, r14
	mov	r12, r14
	je	.label_177
	cmp	rdi, rsi
	mov	qword ptr [rsp + 0x40], rdi
	setae	al
	test	ebx, ebx
	jne	.label_209
	test	al, al
	jne	.label_209
	movsxd	rax, edx
	mov	rbx, rax
	mov	rcx, qword ptr [rsp + 0x40]
	sub	rbx, rcx
	cmp	ebp, 0x30
	je	.label_215
	cmp	ebp, 0x2b
	jne	.label_218
.label_215:
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_209
	nop	dword ptr [rax]
.label_225:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_225
	jmp	.label_209
.label_186:
	mov	eax, edx
	neg	eax
	test	r15b, r15b
	cmove	eax, edx
	lea	r12, [rsp + 0x4a7]
	mov	r9d, dword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	nop	word ptr cs:[rax + rax]
.label_166:
	test	bl, 1
	je	.label_234
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_234:
	sar	ebx, 1
	mov	edi, eax
	mov	edx, 0xcccccccd
	imul	rdx, rdi
	shr	rdx, 0x23
	lea	edi, [rdx + rdx]
	lea	edi, [rdi + rdi*4]
	mov	ecx, eax
	sub	ecx, edi
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, edx
	ja	.label_166
	test	ebx, ebx
	mov	eax, edx
	jne	.label_166
.label_248:
	cmp	r14d, r9d
	cmovl	r14d, r9d
	test	r8b, r8b
	je	.label_242
	mov	r8b, 0x2b
.label_242:
	test	r15b, r15b
	mov	bl, 0x2d
	jne	.label_121
	mov	bl, r8b
.label_121:
	cmp	ebp, 0x2d
	jne	.label_243
	test	bl, bl
	mov	rdi, r14
	je	.label_244
	mov	qword ptr [rsp + 0x60], r11
	xor	eax, eax
	test	r9d, r9d
	cmovns	eax, r9d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r14d, 1
	cmova	r14, rcx
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x78], rsi
	not	rcx
	cmp	r14, rcx
	jae	.label_92
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_87
	mov	byte ptr [rsp + 0x40], bl
	mov	dword ptr [rsp + 0x70], r9d
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	qword ptr [rsp + 0x48], rdi
	mov	r15, qword ptr [rsp + 0x68]
	jne	.label_89
	test	al, al
	jne	.label_89
	cmp	dword ptr [rsp + 0x70], 1
	je	.label_89
	movsxd	rbx, dword ptr [rsp + 0x70]
	dec	rbx
	nop	dword ptr [rax + rax]
.label_232:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	dec	rbx
	jne	.label_232
.label_89:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r15
	call	fputc
	mov	r9d, dword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x48]
.label_87:
	mov	rsi, qword ptr [rsp + 0x78]
	add	rsi, r14
	jmp	.label_106
.label_196:
	mov	r15, qword ptr [rsp + 0x78]
	jmp	.label_100
.label_243:
	mov	rdi, r14
	movsxd	rax, edi
	mov	rcx, r12
	lea	rdx, [rsp + 0x4a7]
	sub	rcx, rdx
	mov	dl, bl
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_115
	mov	qword ptr [rsp + 0x60], r11
	cmp	ebp, 0x5f
	jne	.label_123
	mov	rax, rsi
	mov	qword ptr [rsp + 0x78], rax
	movsxd	r15, edx
	not	rax
	cmp	r15, rax
	jae	.label_92
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x40], bl
	mov	qword ptr [rsp + 0x48], rdi
	mov	dword ptr [rsp + 0x70], r9d
	mov	rbx, qword ptr [rsp + 0x68]
	test	rbx, rbx
	je	.label_131
	test	r15, r15
	mov	r14d, 0
	je	.label_131
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	inc	r14
	cmp	r14, r15
	jb	.label_142
.label_131:
	mov	rax, qword ptr [rsp + 0x78]
	add	rax, r15
	mov	rsi, rax
	mov	eax, dword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x30]
	sub	eax, ecx
	mov	edx, 0
	cmovg	edx, eax
	mov	al, byte ptr [rsp + 0x40]
	test	al, al
	je	.label_144
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x78], rsi
	not	rcx
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x48]
	jae	.label_92
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_156
	mov	qword ptr [rsp + 0x30], rbx
	mov	qword ptr [rsp + 0x70], rdx
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	r14, qword ptr [rsp + 0x68]
	jne	.label_129
	test	al, al
	jne	.label_129
	mov	rax, qword ptr [rsp + 0x70]
	movsxd	r15, eax
	xor	ebx, ebx
	dec	r15
	je	.label_129
	nop	word ptr cs:[rax + rax]
.label_194:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	inc	rbx
	cmp	rbx, r15
	jb	.label_194
.label_129:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r14
	call	fputc
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0x30]
.label_156:
	mov	rsi, qword ptr [rsp + 0x78]
	add	rsi, rbx
	mov	r9d, edx
	jmp	.label_106
.label_244:
	mov	qword ptr [rsp + 0x60], r11
	jmp	.label_106
.label_115:
	mov	qword ptr [rsp + 0x60], r11
	test	bl, bl
	je	.label_106
	xor	eax, eax
	test	r9d, r9d
	cmovns	eax, r9d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, rsi
	mov	r15, rsi
	not	rcx
	cmp	rdx, rcx
	jae	.label_92
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_252
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x40], bl
	mov	dword ptr [rsp + 0x70], r9d
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	qword ptr [rsp + 0x48], rdi
	mov	rsi, qword ptr [rsp + 0x68]
	jne	.label_147
	test	al, al
	jne	.label_147
	mov	rax, rsi
	movsxd	rbx, dword ptr [rsp + 0x70]
	lea	r14, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_175
	cmp	ebp, 0x2b
	jne	.label_195
.label_175:
	test	r14, r14
	mov	rsi, rax
	je	.label_147
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_202:
	mov	edi, 0x30
	mov	r14, rsi
	call	fputc
	mov	rsi, r14
	dec	rbx
	jne	.label_202
	jmp	.label_147
.label_123:
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x78], rsi
	not	rcx
	cmp	rax, rcx
	jae	.label_92
	test	bl, bl
	je	.label_205
	xor	eax, eax
	test	r9d, r9d
	cmovns	eax, r9d
	movsxd	r8, eax
	cmp	r8d, 1
	mov	esi, 1
	cmova	rsi, r8
	cmp	rsi, rcx
	jae	.label_92
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_101
	mov	qword ptr [rsp + 0x70], rsi
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x40], bl
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	qword ptr [rsp + 0x48], rdi
	jne	.label_178
	test	al, al
	jne	.label_178
	movsxd	rbx, r9d
	lea	r15, [rbx - 1]
	cmp	ebp, 0x30
	je	.label_226
	cmp	ebp, 0x2b
	jne	.label_235
.label_226:
	test	r15, r15
	je	.label_178
	dec	rbx
.label_96:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbx
	jne	.label_96
	jmp	.label_178
.label_218:
	xor	ebp, ebp
	cmp	rax, rcx
	je	.label_209
	nop	
.label_136:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_136
.label_209:
	mov	eax, dword ptr [rsp + 0x48]
	test	al, 1
	jne	.label_145
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	rsi, qword ptr [rsp + 0x40]
	jne	.label_239
	mov	edx, 1
	lea	rdi, [rsp + 0x81]
	mov	rcx, r12
	call	fwrite
	jmp	.label_177
.label_145:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_177
	call	__ctype_tolower_loc
	mov	r14, rax
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x30]
	lea	rbp, [rsp + 0x81]
	nop	dword ptr [rax + rax]
.label_251:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r14]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r12
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_251
	jmp	.label_177
.label_239:
	test	rsi, rsi
	je	.label_177
	call	__ctype_toupper_loc
	mov	r14, rax
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x30]
	lea	rbp, [rsp + 0x81]
	nop	dword ptr [rax + rax]
.label_98:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r14]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r12
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_98
.label_177:
	mov	rax, qword ptr [rsp + 0x78]
	add	rax, r15
	mov	r15, rax
	mov	r14, r12
	jmp	.label_100
.label_144:
	mov	r9d, edx
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_106
.label_205:
	mov	r14, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rsp + 0x78]
	jmp	.label_107
.label_154:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_110
.label_114:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_114
.label_110:
	test	r12b, r12b
	je	.label_117
	test	rbx, rbx
	je	.label_105
	call	__ctype_tolower_loc
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0x28]
.label_125:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	rbx
	jne	.label_125
	jmp	.label_105
.label_117:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_127
	test	rbx, rbx
	je	.label_105
	call	__ctype_toupper_loc
	mov	r15, rax
	mov	rbp, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_140:
	movzx	eax, byte ptr [rbp]
	mov	rcx, qword ptr [r15]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	rbx
	jne	.label_140
	jmp	.label_105
.label_207:
	test	r15, r15
	je	.label_143
	nop	word ptr cs:[rax + rax]
.label_148:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_148
.label_143:
	mov	edi, 0xa
	jmp	.label_149
.label_170:
	test	r15, r15
	je	.label_97
	nop	word ptr cs:[rax + rax]
.label_153:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_153
.label_97:
	mov	edi, 9
	jmp	.label_149
.label_195:
	test	r14, r14
	mov	rsi, rax
	je	.label_147
.label_160:
	mov	edi, 0x20
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	dec	r14
	jne	.label_160
.label_147:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x68], rsi
	call	fputc
	mov	r9d, dword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
.label_252:
	mov	rsi, r15
	add	rsi, rdx
	jmp	.label_106
.label_127:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	jmp	.label_168
.label_173:
	test	ebx, ebx
	je	.label_171
.label_1347:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	r14d, 6
	mov	r8b, 1
	mov	ebx, 4
	jmp	.label_162
.label_235:
	test	r15, r15
	je	.label_178
.label_245:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	r15
	jne	.label_245
.label_178:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, r14
	call	fputc
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x70]
.label_101:
	mov	rcx, qword ptr [rsp + 0x78]
	add	rcx, rsi
.label_107:
	test	r14, r14
	mov	rax, r14
	movsxd	r14, edx
	je	.label_187
	mov	qword ptr [rsp + 0x48], rdi
	mov	qword ptr [rsp + 0x78], rcx
	xor	ebx, ebx
	test	r14, r14
	mov	r15, rax
	je	.label_95
	nop	
.label_189:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	inc	rbx
	cmp	rbx, r14
	jb	.label_189
	mov	rbx, r14
	jmp	.label_95
.label_187:
	mov	qword ptr [rsp + 0x48], rdi
	mov	qword ptr [rsp + 0x78], rcx
	mov	rbx, r14
	mov	r15, rax
.label_95:
	mov	qword ptr [rsp + 0x68], r15
	mov	rsi, qword ptr [rsp + 0x78]
	add	rsi, rbx
	xor	r9d, r9d
	mov	rdi, qword ptr [rsp + 0x48]
.label_106:
	mov	qword ptr [rsp + 0x78], rsi
	lea	rbx, [rsp + 0x4a7]
	sub	rbx, r12
	xor	eax, eax
	test	r9d, r9d
	cmovns	eax, r9d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, rsi
	not	rcx
	cmp	rdx, rcx
	jae	.label_92
	mov	qword ptr [rsp + 0x70], rdx
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_203
	cmp	rbx, rax
	setae	al
	test	edi, edi
	jne	.label_133
	test	al, al
	jne	.label_133
	movsxd	rax, r9d
	mov	r15, rax
	sub	r15, rbx
	cmp	ebp, 0x30
	je	.label_137
	cmp	ebp, 0x2b
	jne	.label_211
.label_137:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_133
	nop	
.label_237:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_237
	jmp	.label_133
.label_211:
	xor	ebp, ebp
	cmp	rax, rbx
	je	.label_133
	nop	
.label_221:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	inc	rbp
	cmp	rbp, r15
	jb	.label_221
.label_133:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_222
	lea	rax, [rsp + 0x4a7]
	cmp	rax, r12
	je	.label_203
	call	__ctype_toupper_loc
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rbp, [rax + r12]
	nop	dword ptr [rax]
.label_247:
	movzx	eax, byte ptr [r12]
	mov	rcx, qword ptr [rbx]
	mov	edi, dword ptr [rcx + rax*4]
	mov	rsi, r14
	call	fputc
	inc	r12
	inc	rbp
	jne	.label_247
	jmp	.label_203
.label_222:
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	call	fwrite
.label_203:
	mov	r15, qword ptr [rsp + 0x78]
	add	r15, qword ptr [rsp + 0x70]
	jmp	.label_100
.label_158:
	test	r15, r15
	je	.label_152
.label_241:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	r15
	jne	.label_241
.label_152:
	movsx	edi, byte ptr [r13]
.label_149:
	mov	rsi, r12
	mov	qword ptr [rsp + 0x68], r12
	call	fputc
.label_93:
	mov	r15, qword ptr [rsp + 0x78]
	add	r15, r14
	mov	r14, qword ptr [rsp + 0x68]
	nop	word ptr cs:[rax + rax]
.label_100:
	mov	al, byte ptr [r13 + 1]
	inc	r13
	mov	r9d, 0xffffffff
	test	al, al
	jne	.label_172
	jmp	.label_103
.label_92:
	xor	r15d, r15d
.label_103:
	mov	rax, r15
	add	rsp, 0x4a8
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
	#Procedure 0x404800

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
	#Procedure 0x404810
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
	#Procedure 0x404830

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_254
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_255:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_255
	jmp	.label_256
.label_254:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_257:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_257
	mov	byte ptr [rsi - 2], 0x2d
	add	rsi, -2
.label_256:
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4048f0

	.globl yyparse
	.type yyparse, @function
yyparse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x598
	mov	r13, rdi
	lea	r8, [rsp + 0x550]
	lea	r15, [rsp + 0xf0]
	mov	word ptr [rsp + 0x550], 0
	lea	r9, [rsp + 0x576]
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rsp + 0x80], rax
	lea	rax, [r13 + 0x50]
	mov	qword ptr [rsp + 0x70], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 0x78], rax
	mov	r14d, 0xfffffffe
	movabs	rax, 0x3ffffff03ffffff
	movabs	rcx, 0x3ffffffffffffff
	and	rcx, rax
	mov	qword ptr [rsp + 0x58], rcx
	mov	r12d, 0x80001f
	mov	eax, 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x90], rcx
	mov	dword ptr [rsp + 0x9c], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x88], rcx
	jmp	.label_311
	nop	
.label_375:
	movsxd	rbp, eax
	movsx	edx, byte ptr [rbp + yypact]
	cmp	edx, -0x5d
	je	.label_349
	cmp	r14d, -2
	jne	.label_376
	mov	dword ptr [rsp + 0xe0], edx
	mov	qword ptr [rsp + 0xe8], rbp
	mov	rdx, qword ptr [r13]
	movabs	r10, 0x8000000000000000
	mov	r11d, 0xffffffff
	jmp	.label_348
	nop	word ptr cs:[rax + rax]
.label_364:
	inc	rdx
	mov	qword ptr [r13], rdx
.label_348:
	mov	bl, byte ptr [rdx]
	movzx	ecx, bl
	lea	eax, [rcx - 9]
	cmp	eax, 0x17
	ja	.label_361
	bt	r12d, eax
	jb	.label_364
.label_361:
	lea	eax, [rcx - 0x30]
	cmp	eax, 0xa
	jb	.label_366
	cmp	ecx, 0x2d
	je	.label_366
	cmp	ecx, 0x2b
	jne	.label_370
	nop	dword ptr [rax]
.label_366:
	cmp	ecx, 0x2d
	je	.label_373
	xor	eax, eax
	cmp	ecx, 0x2b
	jne	.label_374
.label_373:
	cmp	ecx, 0x2d
	mov	eax, 1
	cmove	eax, r11d
	inc	rdx
	mov	rdi, rdx
	nop	word ptr cs:[rax + rax]
.label_381:
	mov	rdx, rdi
	mov	qword ptr [r13], rdx
	mov	bl, byte ptr [rdx]
	movzx	ecx, bl
	lea	ebp, [rcx - 9]
	cmp	ebp, 0x17
	ja	.label_378
	lea	rdi, [rdx + 1]
	bt	r12d, ebp
	jb	.label_381
.label_378:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_348
	jmp	.label_374
.label_370:
	lea	eax, [rcx - 0x41]
	cmp	eax, 0x39
	ja	.label_385
	movabs	rsi, 0x3ffffff03ffffff
	bt	rsi, rax
	jb	.label_388
.label_385:
	cmp	ecx, 0x28
	jne	.label_389
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_410:
	mov	rax, rdx
	lea	rdx, [rax + 1]
	mov	qword ptr [r13], rdx
	movzx	esi, byte ptr [rax]
	cmp	esi, 0x28
	je	.label_396
	movzx	eax, sil
	cmp	eax, 0x29
	je	.label_401
	xor	eax, eax
	test	sil, sil
	jne	.label_402
	jmp	.label_405
	nop	word ptr cs:[rax + rax]
.label_401:
	dec	rcx
	jmp	.label_402
	nop	word ptr cs:[rax + rax]
.label_396:
	inc	rcx
.label_402:
	test	rcx, rcx
	jne	.label_410
	jmp	.label_348
.label_405:
	xor	r14d, r14d
	mov	rbp, qword ptr [rsp + 0xe8]
	mov	edx, dword ptr [rsp + 0xe0]
	jmp	.label_365
.label_374:
	mov	rdi, rdx
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_438:
	mov	rbp, rdi
	mov	r14d, 0x3f
	test	rcx, rcx
	js	.label_417
	movabs	rsi, 0xccccccccccccccc
	cmp	rcx, rsi
	jle	.label_419
	jmp	.label_422
	nop	word ptr cs:[rax + rax]
.label_417:
	movabs	rsi, 0xf333333333333334
	cmp	rcx, rsi
	jl	.label_422
.label_419:
	add	rcx, rcx
	movzx	edi, bl
	mov	ebx, 0x30
	sub	ebx, edi
	add	edi, -0x30
	test	eax, eax
	lea	rsi, [rcx + rcx*4]
	cmovs	edi, ebx
	movsxd	rcx, edi
	test	ecx, ecx
	js	.label_426
	lea	rdi, [r10 - 1]
	sub	rdi, rcx
	mov	r14d, 0x3f
	cmp	rdi, rsi
	jge	.label_431
	jmp	.label_422
	nop	word ptr [rax + rax]
.label_426:
	mov	rdi, r10
	sub	rdi, rcx
	mov	r14d, 0x3f
	cmp	rsi, rdi
	jl	.label_422
.label_431:
	add	rcx, rsi
	lea	rdi, [rbp + 1]
	movzx	ebx, byte ptr [rbp + 1]
	mov	esi, ebx
	add	esi, -0x30
	cmp	esi, 0xa
	jb	.label_438
	or	bl, 2
	movzx	esi, bl
	cmp	esi, 0x2e
	jne	.label_406
	movsx	esi, byte ptr [rbp + 2]
	add	esi, -0x30
	cmp	esi, 9
	ja	.label_406
	lea	edx, [rsi + rsi*4]
	movsx	esi, byte ptr [rbp + 3]
	add	esi, -0x30
	lea	rdi, [rbp + 3]
	add	rbp, 4
	cmp	esi, 0xa
	cmovae	rbp, rdi
	mov	ebx, 0
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	esi, [rdx + rdx*4]
	movsx	edi, byte ptr [rbp]
	add	edi, -0x30
	lea	rdx, [rbp + 1]
	cmp	edi, 0xa
	cmovae	rdx, rbp
	cmovae	edi, ebx
	lea	esi, [rdi + rsi*2]
	test	eax, eax
	jns	.label_308
	movsx	ebp, byte ptr [rdx]
	jmp	.label_395
	nop	word ptr cs:[rax + rax]
.label_312:
	movsx	ebp, byte ptr [rdx + 1]
	inc	rdx
.label_395:
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 0xa
	jae	.label_308
	movzx	edi, bpl
	cmp	edi, 0x30
	je	.label_312
	inc	esi
.label_308:
	dec	rdx
	nop	
.label_313:
	movsx	edi, byte ptr [rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_313
	test	eax, eax
	jns	.label_316
	test	esi, esi
	je	.label_316
	mov	r14d, 0x3f
	cmp	rcx, r10
	jne	.label_318
.label_422:
	mov	rcx, qword ptr [rsp + 0xc8]
	jmp	.label_322
.label_406:
	mov	esi, eax
	shr	esi, 0x1f
	mov	dword ptr [rsp + 0x9c], esi
	mov	qword ptr [r13], rdi
	sub	rdi, rdx
	test	eax, eax
	sete	al
	movzx	r14d, al
	or	r14d, 0x112
	mov	qword ptr [rsp + 0x90], rdi
.label_322:
	mov	rbp, qword ptr [rsp + 0xe8]
	mov	edx, dword ptr [rsp + 0xe0]
	jmp	.label_332
.label_389:
	lea	rax, [rdx + 1]
	mov	qword ptr [r13], rax
	movzx	r14d, byte ptr [rdx]
	jmp	.label_337
.label_388:
	lea	rdi, [rsp + 0x580]
	mov	rax, rdi
	mov	rsi, qword ptr [rsp + 0x58]
	nop	dword ptr [rax + rax]
.label_354:
	lea	rcx, [rsp + 0x593]
	cmp	rax, rcx
	jae	.label_344
	mov	byte ptr [rax], bl
	inc	rax
	mov	rdx, qword ptr [r13]
.label_344:
	mov	rcx, rdx
	lea	rdx, [rcx + 1]
	mov	qword ptr [r13], rdx
	movzx	ebx, byte ptr [rcx + 1]
	mov	ecx, ebx
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_346
	mov	rbp, rsi
	shr	rbp, cl
	and	ebp, 1
	jmp	.label_351
	nop	word ptr [rax + rax]
.label_346:
	xor	ebp, ebp
.label_351:
	movzx	ecx, bl
	cmp	ecx, 0x2e
	je	.label_354
	test	bpl, bpl
	jne	.label_354
	mov	qword ptr [rsp + 0xa0], r8
	mov	byte ptr [rax], 0
	mov	al, byte ptr [rsp + 0x580]
	test	al, al
	lea	rcx, [rsp + 0x581]
	je	.label_359
	nop	dword ptr [rax]
.label_352:
	movzx	edx, al
	add	edx, -0x61
	cmp	edx, 0x1a
	jae	.label_367
	add	al, 0xe0
.label_367:
	mov	byte ptr [rcx - 1], al
	mov	al, byte ptr [rcx]
	inc	rcx
	test	al, al
	jne	.label_352
.label_359:
	mov	esi, OFFSET FLAT:.str.99
	mov	rbp, rdi
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:meridian_table
	je	.label_263
	mov	esi, OFFSET FLAT:.str.100
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_353
	je	.label_263
	mov	esi, OFFSET FLAT:.str.101
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_386
	je	.label_263
	mov	esi, OFFSET FLAT:.str.102
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_350
	je	.label_263
	mov	rdi, rbp
	call	strlen
	mov	r14b, 1
	cmp	rax, 3
	je	.label_390
	cmp	rax, 4
	jne	.label_394
	movzx	ecx, byte ptr [rsp + 0x583]
	cmp	ecx, 0x2e
	sete	r14b
	jmp	.label_390
.label_318:
	dec	rcx
	mov	edi, 0x3b9aca00
	sub	edi, esi
	mov	esi, edi
.label_316:
	mov	rbp, qword ptr [rsp + 0xe8]
	mov	rdi, rcx
	shr	rdi, 8
	mov	qword ptr [rsp + 0x88], rdi
	mov	dword ptr [rsp + 0x9c], ecx
	movsxd	rcx, esi
	mov	qword ptr [r13], rdx
	test	eax, eax
	sete	al
	movzx	r14d, al
	or	r14d, 0x114
	mov	edx, dword ptr [rsp + 0xe0]
	jmp	.label_332
.label_394:
	xor	r14d, r14d
.label_390:
	mov	qword ptr [rsp + 0xd8], rax
	mov	esi, OFFSET FLAT:.str.103
	mov	ebx, OFFSET FLAT:month_and_day_table
.label_424:
	test	r14b, r14b
	mov	rdi, rbp
	je	.label_415
	mov	edx, 3
	mov	rbp, rdi
	call	strncmp
	jmp	.label_420
.label_415:
	mov	rbp, rdi
	call	strcmp
.label_420:
	test	eax, eax
	je	.label_263
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_424
	mov	rdi, r13
	mov	rsi, rbp
	call	lookup_zone
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_263
	mov	esi, OFFSET FLAT:.str.177
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:dst_table
	je	.label_263
	mov	esi, OFFSET FLAT:.str.178
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:time_units_table
	je	.label_263
	mov	esi, OFFSET FLAT:.str.179
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_305
	je	.label_263
	mov	esi, OFFSET FLAT:.str.180
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_338
	je	.label_263
	mov	esi, OFFSET FLAT:.str.181
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_314
	je	.label_263
	mov	esi, OFFSET FLAT:.str.182
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_342
	je	.label_263
	mov	esi, OFFSET FLAT:.str.183
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_284
	je	.label_263
	mov	esi, OFFSET FLAT:.str.184
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_269
	je	.label_263
	mov	esi, OFFSET FLAT:.str.185
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_276
	je	.label_263
	mov	esi, OFFSET FLAT:.str.186
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_286
	je	.label_263
	mov	esi, OFFSET FLAT:.str.187
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_291
	je	.label_263
	mov	rax, qword ptr [rsp + 0xd8]
	movzx	eax, byte ptr [rax + rbp - 1]
	cmp	eax, 0x53
	jne	.label_295
	mov	rax, qword ptr [rsp + 0xd8]
	mov	byte ptr [rsp + rax + 0x57f], 0
	mov	esi, OFFSET FLAT:.str.178
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:time_units_table
	je	.label_263
	mov	esi, OFFSET FLAT:.str.179
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_305
	je	.label_263
	mov	esi, OFFSET FLAT:.str.180
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_338
	je	.label_263
	mov	esi, OFFSET FLAT:.str.181
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_314
	je	.label_263
	mov	esi, OFFSET FLAT:.str.182
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_342
	je	.label_263
	mov	esi, OFFSET FLAT:.str.183
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_284
	je	.label_263
	mov	esi, OFFSET FLAT:.str.184
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_269
	je	.label_263
	mov	esi, OFFSET FLAT:.str.185
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_276
	je	.label_263
	mov	esi, OFFSET FLAT:.str.186
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_286
	je	.label_263
	mov	esi, OFFSET FLAT:.str.187
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_291
	je	.label_263
	mov	rax, qword ptr [rsp + 0xd8]
	mov	byte ptr [rsp + rax + 0x57f], 0x53
.label_295:
	mov	esi, OFFSET FLAT:.str.188
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:relative_time_table
	je	.label_263
	mov	esi, OFFSET FLAT:.str.189
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_356
	je	.label_263
	mov	esi, OFFSET FLAT:.str.190
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_362
	je	.label_263
	mov	esi, OFFSET FLAT:.str.191
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_371
	je	.label_263
	mov	esi, OFFSET FLAT:.str.192
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_323
	je	.label_263
	mov	esi, OFFSET FLAT:.str.193
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_377
	je	.label_263
	mov	esi, OFFSET FLAT:.str.194
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_383
	je	.label_263
	mov	esi, OFFSET FLAT:.str.195
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_387
	je	.label_263
	mov	esi, OFFSET FLAT:.str.196
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_391
	je	.label_263
	mov	esi, OFFSET FLAT:.str.197
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_397
	je	.label_263
	mov	esi, OFFSET FLAT:.str.198
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_404
	je	.label_263
	mov	esi, OFFSET FLAT:.str.199
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_408
	je	.label_263
	mov	esi, OFFSET FLAT:.str.200
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_412
	je	.label_263
	mov	esi, OFFSET FLAT:.str.201
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_416
	je	.label_263
	mov	esi, OFFSET FLAT:.str.202
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_421
	je	.label_263
	mov	esi, OFFSET FLAT:.str.203
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_372
	je	.label_263
	mov	esi, OFFSET FLAT:.str.204
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_294
	je	.label_263
	mov	esi, OFFSET FLAT:.str.205
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_432
	je	.label_263
	mov	esi, OFFSET FLAT:.str.206
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_433
	je	.label_263
	mov	esi, OFFSET FLAT:.str.207
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:label_439
	je	.label_263
	movzx	edi, word ptr [rsp + 0x580]
	cmp	qword ptr [rsp + 0xd8], 1
	mov	cl, dil
	jne	.label_440
	movzx	edx, cl
	cmp	edx, 0x41
	mov	ebx, OFFSET FLAT:military_table
	mov	rsi, rbp
	je	.label_263
	cmp	edx, 0x42
	mov	ebx, OFFSET FLAT:label_446
	je	.label_263
	cmp	edx, 0x43
	mov	ebx, OFFSET FLAT:label_407
	je	.label_263
	cmp	edx, 0x44
	mov	ebx, OFFSET FLAT:label_262
	je	.label_263
	cmp	edx, 0x45
	mov	ebx, OFFSET FLAT:label_266
	je	.label_263
	cmp	edx, 0x46
	mov	ebx, OFFSET FLAT:label_270
	je	.label_263
	cmp	edx, 0x47
	mov	ebx, OFFSET FLAT:label_330
	je	.label_263
	cmp	edx, 0x48
	mov	ebx, OFFSET FLAT:label_277
	je	.label_263
	cmp	edx, 0x49
	mov	ebx, OFFSET FLAT:label_282
	je	.label_263
	cmp	edx, 0x4b
	mov	ebx, OFFSET FLAT:label_380
	je	.label_263
	cmp	edx, 0x4c
	mov	ebx, OFFSET FLAT:label_289
	je	.label_263
	cmp	edx, 0x4d
	mov	ebx, OFFSET FLAT:label_293
	je	.label_263
	cmp	edx, 0x4e
	mov	ebx, OFFSET FLAT:label_296
	je	.label_263
	cmp	edx, 0x4f
	mov	ebx, OFFSET FLAT:label_297
	je	.label_263
	cmp	edx, 0x50
	mov	ebx, OFFSET FLAT:label_288
	je	.label_263
	cmp	edx, 0x51
	mov	ebx, OFFSET FLAT:label_301
	je	.label_263
	cmp	edx, 0x52
	mov	ebx, OFFSET FLAT:label_304
	je	.label_263
	cmp	edx, 0x53
	mov	ebx, OFFSET FLAT:label_306
	je	.label_263
	cmp	edx, 0x54
	mov	ebx, OFFSET FLAT:label_307
	je	.label_263
	cmp	edx, 0x55
	mov	ebx, OFFSET FLAT:label_403
	je	.label_263
	cmp	edx, 0x56
	mov	ebx, OFFSET FLAT:label_360
	je	.label_263
	cmp	edx, 0x57
	mov	ebx, OFFSET FLAT:label_315
	je	.label_263
	cmp	edx, 0x58
	mov	ebx, OFFSET FLAT:label_317
	je	.label_263
	cmp	edx, 0x59
	mov	ebx, OFFSET FLAT:label_321
	je	.label_263
	test	cl, cl
	je	.label_327
	cmp	edx, 0x5a
	mov	ebx, OFFSET FLAT:label_325
	je	.label_263
	jmp	.label_436
.label_440:
	test	cl, cl
	mov	rsi, rbp
	je	.label_327
.label_436:
	shr	edi, 8
	movzx	ecx, cl
	cmp	ecx, 0x2e
	sete	dl
	lea	rcx, [rsp + 0x581]
	cmove	rcx, rsi
	mov	rbp, rsi
	mov	byte ptr [rcx], dil
	test	dil, dil
	lea	rax, [rsp + 0x582]
	je	.label_449
.label_336:
	movzx	esi, byte ptr [rax - 1]
	lea	rdi, [rcx + 1]
	cmp	esi, 0x2e
	mov	sil, 1
	je	.label_437
	mov	sil, dl
.label_437:
	cmovne	rcx, rdi
	mov	dl, byte ptr [rax]
	mov	byte ptr [rcx], dl
	inc	rax
	test	dl, dl
	mov	dl, sil
	jne	.label_336
.label_449:
	test	dl, 1
	mov	rsi, rbp
	je	.label_327
	mov	rdi, r13
	call	lookup_zone
	mov	rbx, rax
	test	rbx, rbx
	je	.label_327
.label_263:
	mov	r14d, dword ptr [rbx + 8]
	mov	eax, dword ptr [rbx + 0xc]
	mov	dword ptr [rsp + 0x9c], eax
	sar	eax, 8
	cdqe	
	mov	qword ptr [rsp + 0x88], rax
.label_355:
	mov	r8, qword ptr [rsp + 0xa0]
	lea	r9, [rsp + 0x576]
.label_337:
	mov	rbp, qword ptr [rsp + 0xe8]
	mov	edx, dword ptr [rsp + 0xe0]
	nop	
.label_376:
	xor	eax, eax
	test	r14d, r14d
	jle	.label_363
	mov	eax, 2
	cmp	r14d, 0x115
	mov	rcx, qword ptr [rsp + 0xc8]
	ja	.label_365
.label_332:
	movsxd	rax, r14d
	movzx	eax, byte ptr [rax + yytranslate]
	mov	qword ptr [rsp + 0xc8], rcx
	jmp	.label_365
.label_363:
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_365:
	add	edx, eax
	cmp	edx, 0x70
	ja	.label_349
	movsxd	rcx, edx
	movsx	edx, byte ptr [rcx + yycheck]
	cmp	edx, eax
	jne	.label_349
	movzx	eax, byte ptr [rcx + yytable]
	or	rcx, 4
	cmp	rcx, 0x6f
	jne	.label_379
	neg	eax
	jmp	.label_384
	nop	
.label_349:
	movzx	eax, byte ptr [rbp + yydefact]
	test	eax, eax
	mov	ebp, 1
	je	.label_261
.label_384:
	movsxd	r10, eax
	movzx	r11d, byte ptr [r10 + yyr2]
	mov	eax, 1
	sub	rax, r11
	imul	rax, rax, 0x38
	mov	rsi, qword ptr [r15 + rax]
	mov	rdx, qword ptr [r15 + rax + 8]
	mov	rdi, qword ptr [r15 + rax + 0x10]
	mov	rcx, qword ptr [r15 + rax + 0x18]
	mov	qword ptr [rsp + 0xe8], rcx
	mov	rcx, qword ptr [r15 + rax + 0x20]
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rcx, qword ptr [r15 + rax + 0x28]
	mov	qword ptr [rsp + 0xd8], rcx
	mov	ecx, dword ptr [r15 + rax + 0x30]
	mov	dword ptr [rsp + 0xd4], ecx
	mov	ebx, dword ptr [r15 + rax + 0x34]
	lea	eax, [r10 - 4]
	cmp	eax, 0x57
	ja	.label_258
	jmp	qword ptr [(rax * 8) + label_409]
.label_1391:
	mov	rax, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r15]
	movups	xmm1, xmmword ptr [r15 + 0x10]
	movups	xmm2, xmmword ptr [r15 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rdi, r13
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r8
	mov	qword ptr [rsp + 0x60], r10
	mov	qword ptr [rsp + 0x68], r11
	mov	qword ptr [rsp + 0xc0], rdx
	call	apply_relative_time
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	r11, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0x60]
	lea	r9, [rsp + 0x576]
	mov	r8, rbx
	mov	ebx, dword ptr [rsp + 0xac]
	jmp	.label_425
.label_379:
	mov	rcx, qword ptr [rsp + 0x88]
	shl	rcx, 8
	mov	edx, dword ptr [rsp + 0x9c]
	movzx	edx, dl
	or	rdx, rcx
	mov	qword ptr [r15 + 0x38], rdx
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	qword ptr [r15 + 0x40], rcx
	mov	rcx, qword ptr [rsp + 0x90]
	mov	qword ptr [r15 + 0x48], rcx
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15 + 0x60], xmm0
	movdqu	xmmword ptr [r15 + 0x50], xmm0
	lea	rcx, [r15 + 0x38]
	mov	r14d, 0xfffffffe
	jmp	.label_357
.label_1399:
	mov	rdi, qword ptr [r15]
	lea	rcx, [r15 - 0x30]
	test	rdi, rdi
	jns	.label_445
	mov	rsi, qword ptr [r15 - 0x30]
	jmp	.label_447
.label_1411:
	mov	rsi, qword ptr [r15 + 8]
	xor	edx, edx
	jmp	.label_258
.label_1393:
	mov	rsi, qword ptr [r15 - 0x30]
	jmp	.label_260
.label_1405:
	mov	rax, qword ptr [r15 - 0x30]
	jmp	.label_264
.label_1396:
	mov	rdx, qword ptr [r15 - 0x30]
	xor	esi, esi
	jmp	.label_265
.label_1400:
	mov	rdi, qword ptr [r15]
	jmp	.label_268
.label_1402:
	mov	rax, qword ptr [r15 - 0x30]
	jmp	.label_272
.label_1408:
	mov	rax, qword ptr [r15 - 0x30]
	jmp	.label_273
.label_1409:
	mov	rax, qword ptr [r15 - 0x38]
	mov	qword ptr [rsp + 0xd8], rax
	mov	eax, dword ptr [r15 - 0x30]
	mov	dword ptr [rsp + 0xd4], eax
	xor	esi, esi
	xor	edx, edx
	xor	edi, edi
	xor	eax, eax
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xe0], rax
	jmp	.label_258
.label_1413:
	mov	qword ptr [rsp + 0xb0], rdi
	movdqu	xmm0, xmmword ptr [r15 - 0x38]
	mov	rdi, qword ptr [r15 - 0x28]
	mov	rax, qword ptr [r13 + 0xa8]
	test	rax, rax
	je	.label_292
	cmp	qword ptr [r13 + 0x30], 0
	jne	.label_292
	cmp	byte ptr [r13 + 0xa1], 0
	je	.label_435
.label_292:
	cmp	rdi, 5
	jl	.label_259
	mov	qword ptr [rsp + 0xc0], rdx
	mov	qword ptr [rsp + 0xb8], rsi
	mov	dword ptr [rsp + 0xac], ebx
	mov	qword ptr [rsp + 0x68], r11
	mov	qword ptr [rsp + 0x60], r10
	mov	rbx, r8
	inc	rax
	mov	qword ptr [r13 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rbp
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r13 + 0x40], rdx
	mov	rax, rsi
	imul	rbp
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r13 + 0x38], rsi
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r13 + 0x28], rdx
	add	rdi, -4
	mov	qword ptr [r13 + 0x30], rdi
	jmp	.label_300
.label_1398:
	mov	rdi, qword ptr [r15]
	lea	rcx, [r15 - 0x38]
	test	rdi, rdi
	js	.label_335
.label_445:
	test	rdi, rdi
	je	.label_310
	mov	rsi, qword ptr [rcx]
	movabs	rax, 0x8000000000000000
	test	rsi, rsi
	js	.label_340
	dec	rax
	jmp	.label_343
.label_1397:
	xor	esi, esi
	mov	edx, 1
	jmp	.label_265
.label_1390:
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, dword ptr [r15]
	mov	rax, qword ptr [r15 - 8]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r15 - 0x38]
	movups	xmm1, xmmword ptr [r15 - 0x28]
	movups	xmm2, xmmword ptr [r15 - 0x18]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0xa0], r8
	mov	rbp, r9
	mov	qword ptr [rsp + 0x60], r10
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r11
	mov	qword ptr [rsp + 0xc0], rdx
	call	apply_relative_time
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	r11, rbx
	mov	ebx, dword ptr [rsp + 0xac]
	mov	r10, qword ptr [rsp + 0x60]
	mov	r9, rbp
	mov	r8, qword ptr [rsp + 0xa0]
	mov	ebp, 1
.label_425:
	test	al, al
	jne	.label_258
	jmp	.label_261
.label_1389:
	mov	r9, rdx
	mov	rax, qword ptr [r15 - 0x60]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r15 - 0x70]
	movdqu	xmmword ptr [rcx], xmm0
	mov	rax, qword ptr [r15 - 0x30]
	mov	rcx, rax
	neg	rcx
	movabs	rdx, 0x8000000000000000
	cmp	rax, rdx
	mov	qword ptr [r13 + 0x38], rcx
	mov	ebp, 1
	je	.label_261
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, rdx
	mov	qword ptr [r13 + 0x40], rcx
	mov	rdx, r9
	lea	r9, [rsp + 0x576]
	jne	.label_258
	jmp	.label_261
.label_1387:
	mov	rax, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_258
.label_1414:
	mov	rsi, -1
	jmp	.label_258
.label_1369:
	mov	dword ptr [r13 + 0x14], 1
	inc	qword ptr [r13 + 0xc0]
	jmp	.label_258
.label_1372:
	mov	eax, dword ptr [r15 - 0x38]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_411
.label_1364:
	mov	rax, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x70]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_258
.label_1376:
	mov	eax, 0xe10
	add	eax, dword ptr [r15 - 0x38]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_258
.label_1374:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	rdx, qword ptr [r15 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r15 - 0x28], 3
	mov	rax, qword ptr [r15]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_423
	mov	qword ptr [rsp + 0xb8], rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	dl, byte ptr [r15 - 0x38]
	test	rcx, rcx
	js	.label_427
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	movabs	rdi, 0x8000000000000000
	jg	.label_320
	xor	esi, esi
	jmp	.label_398
.label_1361:
	mov	rax, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x70]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_303
.label_1384:
	mov	r9, rdx
	mov	rax, qword ptr [r15 - 0x70]
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r15 - 0x30]
	mov	rcx, rax
	neg	rcx
	movabs	rdx, 0x8000000000000000
	cmp	rax, rdx
	mov	qword ptr [r13 + 0x40], rcx
	mov	ebp, 1
	je	.label_261
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, rdx
	mov	qword ptr [r13 + 0x28], rcx
	mov	rdx, r9
	lea	r9, [rsp + 0x576]
	jne	.label_448
	jmp	.label_261
.label_1379:
	mov	rax, qword ptr [r15 - 0x38]
	jmp	.label_267
.label_1373:
	mov	dword ptr [r13 + 0x18], 0x6270
.label_411:
	mov	rax, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r15]
	movups	xmm1, xmmword ptr [r15 + 0x10]
	movups	xmm2, xmmword ptr [r15 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rdi, r13
	mov	qword ptr [rsp + 0xa0], r8
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r10
	mov	qword ptr [rsp + 0x68], r11
	mov	qword ptr [rsp + 0xc0], rdx
	call	apply_relative_time
	mov	rcx, qword ptr [rsp + 0x68]
	test	al, al
	je	.label_261
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	mov	rbp, rcx
	jmp	.label_298
.label_1363:
	mov	rax, qword ptr [r15 - 0x110]
	mov	rcx, qword ptr [r15 - 0xa0]
	mov	r9, rdx
	mov	rdx, qword ptr [r15 - 0x38]
	mov	rbp, rsi
	movsxd	rsi, dword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	mov	qword ptr [r13 + 0x58], rdx
	mov	rdx, r9
	lea	r9, [rsp + 0x576]
	mov	qword ptr [r13 + 0x60], rsi
	mov	rsi, rbp
	jmp	.label_303
.label_1370:
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_258
.label_1353:
	inc	qword ptr [r13 + 0xc8]
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.2_2
	jmp	.label_290
.label_1380:
	mov	rax, qword ptr [r15 - 0x30]
.label_267:
	mov	qword ptr [r13 + 8], rax
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x10], eax
	mov	byte ptr [r13 + 0xe0], 1
	jmp	.label_258
.label_1382:
	mov	rbp, qword ptr [r15 - 0xd0]
	mov	al, byte ptr [r13 + 0xd9]
	cmp	rbp, 4
	jl	.label_326
	lea	rcx, [r15 - 0xe0]
	mov	qword ptr [rsp + 0x68], rcx
	test	al, al
	je	.label_275
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xc0], rdx
	mov	edx, 5
	mov	qword ptr [rsp + 0xa0], r8
	mov	qword ptr [rsp + 0x60], r10
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r11
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r15 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbp
	call	dbg_printf
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	r11, rbx
	mov	ebx, dword ptr [rsp + 0xac]
	mov	r10, qword ptr [rsp + 0x60]
	lea	r9, [rsp + 0x576]
	mov	r8, qword ptr [rsp + 0xa0]
.label_275:
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [rbp]
	movdqu	xmmword ptr [rcx], xmm0
.label_1381:
	mov	rax, qword ptr [r15 - 0x68]
	jmp	.label_444
.label_1356:
	inc	qword ptr [r13 + 0xa8]
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_290
.label_1362:
	mov	rax, qword ptr [r15 - 0xa0]
	mov	rcx, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x80]
	movdqu	xmmword ptr [rax], xmm0
.label_303:
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x1c], eax
	jmp	.label_258
.label_1375:
	mov	eax, 0xe10
	add	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_258
.label_1351:
	movdqu	xmm0, xmmword ptr [r15]
	mov	rax, qword ptr [rsp + 0x80]
	movdqu	xmmword ptr [rax], xmm0
	mov	byte ptr [r13 + 0xa0], 1
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str_5
	jmp	.label_290
.label_1352:
	inc	qword ptr [r13 + 0xc8]
	inc	qword ptr [r13 + 0xa8]
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.1_3
	jmp	.label_290
.label_1357:
	inc	qword ptr [r13 + 0xb0]
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.6_0
	jmp	.label_290
.label_1358:
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.7_0
	jmp	.label_414
.label_1365:
	mov	rax, qword ptr [r15 - 0xa0]
	mov	rcx, qword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	jmp	.label_418
.label_1394:
	xor	edx, edx
	mov	esi, 1
	jmp	.label_265
.label_1366:
	mov	rax, qword ptr [r15 - 0x110]
	mov	rcx, qword ptr [r15 - 0xa0]
	mov	r9, rdx
	mov	rdx, qword ptr [r15 - 0x38]
	mov	rbp, rsi
	movsxd	rsi, dword ptr [r15 - 0x30]
	mov	qword ptr [r13 + 0x48], rax
	mov	qword ptr [r13 + 0x50], rcx
	mov	qword ptr [r13 + 0x58], rdx
	mov	rdx, r9
	lea	r9, [rsp + 0x576]
	mov	qword ptr [r13 + 0x60], rsi
	mov	rsi, rbp
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_258
.label_1354:
	inc	qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.3_2
	jmp	.label_290
.label_1415:
	mov	rsi, qword ptr [r15 + 8]
	jmp	.label_258
.label_1355:
	inc	qword ptr [r13 + 0xd0]
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.4_2
	jmp	.label_290
.label_1388:
	mov	rax, qword ptr [r15 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r15 - 0x38]
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_443
.label_1395:
	mov	rdx, qword ptr [r15 - 0x38]
	xor	esi, esi
	jmp	.label_265
.label_1360:
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.9_0
.label_414:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	edx, 5
	mov	qword ptr [rsp + 0xa0], r8
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r10
	mov	rbp, r11
.label_298:
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_relative_time
	jmp	.label_279
.label_1359:
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.8_0
.label_290:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	edx, 5
	mov	qword ptr [rsp + 0xa0], r8
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r10
	mov	rbp, r11
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	debug_print_current_time
.label_279:
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	r11, rbp
	mov	r10, rbx
	mov	ebx, dword ptr [rsp + 0xac]
	lea	r9, [rsp + 0x576]
	mov	r8, qword ptr [rsp + 0xa0]
	jmp	.label_258
.label_1368:
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x14], eax
	jmp	.label_258
.label_1385:
	mov	rax, qword ptr [r15 - 0x38]
.label_444:
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r13 + 0x40], rax
	jmp	.label_258
.label_1367:
	mov	qword ptr [rsp + 0xc0], rdx
	inc	qword ptr [r13 + 0xd0]
	mov	rdx, qword ptr [r15 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r15 - 0x28], 3
	mov	rax, qword ptr [r15]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_345
	mov	qword ptr [rsp + 0xb8], rsi
	mov	rbp, rdi
	mov	dl, byte ptr [r15 - 0x38]
	test	rcx, rcx
	js	.label_319
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	movabs	rdi, 0x8000000000000000
	jg	.label_324
	xor	esi, esi
	jmp	.label_329
.label_1401:
	mov	rax, qword ptr [r15 - 0x38]
.label_272:
	mov	qword ptr [rsp + 0xe8], rax
	xor	esi, esi
	jmp	.label_331
.label_1406:
	xor	esi, esi
	mov	eax, 1
	mov	qword ptr [rsp + 0xe0], rax
	jmp	.label_334
.label_1407:
	mov	rax, qword ptr [r15 - 0x38]
.label_273:
	mov	qword ptr [rsp + 0xd8], rax
	xor	esi, esi
	jmp	.label_339
.label_1392:
	mov	rsi, qword ptr [r15 - 0x38]
.label_260:
	xor	edx, edx
.label_265:
	xor	edi, edi
	jmp	.label_341
.label_1371:
	mov	dword ptr [r13 + 0x18], 0x6270
	jmp	.label_258
.label_1403:
	xor	esi, esi
	mov	eax, 1
	mov	qword ptr [rsp + 0xe8], rax
.label_331:
	xor	edx, edx
	xor	edi, edi
	jmp	.label_347
.label_1412:
	mov	qword ptr [rsp + 0xb0], rdi
	movdqu	xmm0, xmmword ptr [r15]
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r13 + 0xa8]
	test	rax, rax
	je	.label_393
	cmp	qword ptr [r13 + 0x30], 0
	jne	.label_393
	cmp	byte ptr [r13 + 0xa1], 0
	je	.label_358
.label_393:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	qword ptr [rsp + 0xb8], rsi
	cmp	rdi, 5
	jl	.label_441
	inc	rax
	mov	qword ptr [r13 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rbp
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r13 + 0x40], rdx
	mov	rax, rsi
	imul	rbp
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r13 + 0x38], rsi
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r13 + 0x28], rdx
	add	rdi, -4
	mov	qword ptr [r13 + 0x30], rdi
	jmp	.label_368
.label_1378:
	mov	qword ptr [r13 + 8], 0
	mov	eax, dword ptr [r15 - 0x38]
	mov	dword ptr [r13 + 0x10], eax
	jmp	.label_258
.label_1377:
	mov	qword ptr [r13 + 8], 0
	mov	eax, dword ptr [r15]
	mov	dword ptr [r13 + 0x10], eax
	jmp	.label_258
.label_1386:
	mov	rax, qword ptr [r15 - 0xa8]
	jmp	.label_413
.label_1383:
	mov	rax, qword ptr [r15 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
	mov	rax, qword ptr [r15 - 0x38]
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, rax
	neg	rcx
	mov	rbp, rdx
	movabs	rdx, 0x8000000000000000
	cmp	rax, rdx
	mov	rdx, rbp
	mov	qword ptr [r13 + 0x28], rcx
	mov	ebp, 1
	je	.label_261
.label_448:
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r13 + 0x30], rax
	jmp	.label_258
.label_1410:
	xor	esi, esi
	mov	eax, 1
	mov	qword ptr [rsp + 0xd8], rax
.label_339:
	xor	edx, edx
	xor	edi, edi
	xor	eax, eax
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xe0], rax
	mov	dword ptr [rsp + 0xd4], 0
	jmp	.label_258
.label_1404:
	mov	rax, qword ptr [r15 - 0x38]
.label_264:
	mov	qword ptr [rsp + 0xe0], rax
	xor	esi, esi
.label_334:
	xor	edx, edx
	xor	edi, edi
	xor	eax, eax
	mov	qword ptr [rsp + 0xe8], rax
	jmp	.label_428
.label_326:
	test	al, al
	je	.label_430
	mov	qword ptr [rsp + 0xb0], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0xb8], rsi
	mov	esi, OFFSET FLAT:.str.11_0
	mov	qword ptr [rsp + 0xc0], rdx
	mov	edx, 5
	mov	qword ptr [rsp + 0xa0], r8
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbx, r10
	mov	rbp, r11
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r15 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	r11, rbp
	mov	r10, rbx
	mov	ebx, dword ptr [rsp + 0xac]
	lea	r9, [rsp + 0x576]
	mov	r8, qword ptr [rsp + 0xa0]
.label_430:
	mov	rax, qword ptr [r15 - 0xd8]
.label_413:
	mov	qword ptr [r13 + 0x38], rax
	mov	rax, qword ptr [r15 - 0x68]
	mov	qword ptr [r13 + 0x40], rax
.label_443:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r15]
	movdqu	xmmword ptr [rcx], xmm0
	jmp	.label_258
.label_259:
	inc	qword ptr [r13 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jge	.label_274
	mov	dword ptr [rsp + 0xac], ebx
	jmp	.label_283
.label_441:
	inc	qword ptr [r13 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_287
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rcx, rdx
.label_287:
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc0]
.label_333:
	mov	qword ptr [r13 + 0x48], rcx
	mov	qword ptr [r13 + 0x50], rax
.label_418:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x80]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r13 + 0x1c], 2
	jmp	.label_258
.label_335:
	mov	rsi, qword ptr [r15 - 0x38]
.label_447:
	test	rsi, rsi
	js	.label_309
	cmp	rdi, -1
	movabs	rax, 0x8000000000000000
	je	.label_310
.label_343:
	cqo	
	idiv	rdi
	mov	ebp, 1
	cmp	rax, rsi
	jge	.label_310
	jmp	.label_261
.label_309:
	movabs	rax, 0x8000000000000000
	dec	rax
.label_340:
	cqo	
	idiv	rdi
	mov	ebp, 1
	cmp	rsi, rax
	jl	.label_261
.label_310:
	imul	rdi, qword ptr [rcx]
.label_268:
	xor	esi, esi
	xor	edx, edx
.label_341:
	xor	eax, eax
	mov	qword ptr [rsp + 0xe8], rax
.label_347:
	xor	eax, eax
	mov	qword ptr [rsp + 0xe0], rax
.label_428:
	xor	eax, eax
	mov	qword ptr [rsp + 0xd8], rax
	mov	dword ptr [rsp + 0xd4], 0
.label_258:
	mov	rax, r11
	neg	rax
	imul	rax, rax, 0x38
	add	r11, r11
	sub	r8, r11
	lea	rcx, [r15 + rax + 0x38]
	mov	qword ptr [r15 + rax + 0x38], rsi
	mov	qword ptr [r15 + rax + 0x40], rdx
	mov	qword ptr [r15 + rax + 0x48], rdi
	mov	rdx, qword ptr [rsp + 0xe8]
	mov	qword ptr [r15 + rax + 0x50], rdx
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	qword ptr [r15 + rax + 0x58], rdx
	mov	rdx, qword ptr [rsp + 0xd8]
	mov	qword ptr [r15 + rax + 0x60], rdx
	mov	edx, dword ptr [rsp + 0xd4]
	mov	dword ptr [r15 + rax + 0x68], edx
	mov	dword ptr [r15 + rax + 0x6c], ebx
	movzx	eax, byte ptr [r10 + yyr1]
	movsx	esi, byte ptr [rax + label_280]
	movsx	edx, word ptr [r8]
	add	esi, edx
	cmp	esi, 0x70
	ja	.label_281
	movsxd	rsi, esi
	movsx	edi, byte ptr [rsi + yycheck]
	cmp	edi, edx
	jne	.label_281
	movzx	eax, byte ptr [rsi + yytable]
	jmp	.label_357
.label_281:
	movsx	eax, byte ptr [rax + label_434]
.label_357:
	mov	word ptr [r8 + 2], ax
	add	r8, 2
	mov	ebp, 2
	cmp	r9, r8
	mov	r15, rcx
	ja	.label_311
	jmp	.label_261
.label_423:
	mov	qword ptr [rsp + 0xb8], rsi
	mov	qword ptr [rsp + 0xb0], rdi
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	movabs	rdi, 0x8000000000000000
	jmp	.label_369
.label_345:
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	jmp	.label_382
.label_427:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	movabs	rdi, 0x8000000000000000
	jge	.label_392
.label_320:
	mov	sil, 1
	jmp	.label_398
.label_319:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	movabs	rdi, 0x8000000000000000
	jge	.label_400
.label_324:
	mov	sil, 1
	jmp	.label_329
.label_274:
	mov	dword ptr [rsp + 0xac], ebx
	mov	rbp, rdx
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	mov	rdi, rsi
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rsi, rdi
	mov	rcx, rdx
	mov	rdx, rbp
.label_283:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	qword ptr [rsp + 0xb8], rsi
	mov	qword ptr [rsp + 0x68], r11
	mov	qword ptr [rsp + 0x60], r10
	mov	rbx, r8
	mov	qword ptr [r13 + 0x48], rcx
	mov	qword ptr [r13 + 0x50], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x80]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r13 + 0x1c], 2
.label_300:
	mov	rax, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r15]
	movups	xmm1, xmmword ptr [r15 + 0x10]
	movups	xmm2, xmmword ptr [r15 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	esi, 1
	mov	rdi, r13
	call	apply_relative_time
	test	al, al
	mov	r8, rbx
	lea	r9, [rsp + 0x576]
	mov	r10, qword ptr [rsp + 0x60]
	mov	r11, qword ptr [rsp + 0x68]
	mov	ebx, dword ptr [rsp + 0xac]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc0]
	jne	.label_258
	jmp	.label_261
.label_392:
	xor	esi, esi
.label_398:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_442
	mov	rdx, rax
	xor	rdx, rdi
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_429
.label_442:
	lea	rdx, [rdi - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_429:
	or	dl, sil
	sete	al
.label_369:
	mov	ebp, 1
	test	al, al
	je	.label_261
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_261
	movabs	rsi, 0x3c00000000
	imul	eax, ecx, 0x3c
	mov	dword ptr [r13 + 0x18], eax
	mov	rdx, qword ptr [r15 - 0x70]
	test	rdx, rdx
	js	.label_271
	dec	rdi
	sub	rdi, rdx
	imul	rcx, rsi
	sar	rcx, 0x20
	cmp	rdi, rcx
	jge	.label_278
	jmp	.label_285
.label_271:
	imul	rcx, rsi
	sar	rcx, 0x20
	mov	rsi, rdi
	sub	rsi, rdx
	cmp	rcx, rsi
	jl	.label_285
.label_278:
	add	rcx, rdx
	sub	rcx, -0x80000000
	shr	rcx, 0x20
	jne	.label_285
	add	edx, eax
	mov	dword ptr [r13 + 0x18], edx
.label_368:
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc0]
	jmp	.label_258
.label_400:
	xor	esi, esi
.label_329:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_299
	mov	rdx, rax
	xor	rdx, rdi
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_302
.label_299:
	lea	rdx, [rdi - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_302:
	or	dl, sil
	sete	al
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
.label_382:
	mov	ebp, 1
	test	al, al
	mov	rdx, qword ptr [rsp + 0xc0]
	je	.label_261
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_261
	imul	eax, ecx, 0x3c
	mov	dword ptr [r13 + 0x18], eax
	jmp	.label_258
.label_435:
	cmp	rdi, 2
	jg	.label_399
	mov	rax, qword ptr [r13 + 0xc8]
	test	rax, rax
	jne	.label_399
	mov	dword ptr [rsp + 0xac], ebx
	mov	qword ptr [r13 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_283
.label_358:
	cmp	rdi, 2
	jg	.label_328
	mov	rax, qword ptr [r13 + 0xc8]
	test	rax, rax
	jne	.label_328
	mov	qword ptr [r13 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0xb0]
	jmp	.label_333
.label_399:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	qword ptr [rsp + 0xb8], rsi
	mov	dword ptr [rsp + 0xac], ebx
	mov	qword ptr [rsp + 0x68], r11
	mov	qword ptr [rsp + 0x60], r10
	mov	rbx, r8
	mov	byte ptr [r13 + 0xd8], 1
	movdqu	xmmword ptr [r13 + 0x20], xmm0
	mov	qword ptr [r13 + 0x30], rdi
	jmp	.label_300
.label_328:
	mov	byte ptr [r13 + 0xd8], 1
	movdqu	xmmword ptr [r13 + 0x20], xmm0
	mov	qword ptr [r13 + 0x30], rdi
	mov	rdi, qword ptr [rsp + 0xb0]
	jmp	.label_258
.label_327:
	mov	r14d, 0x3f
	cmp	byte ptr [r13 + 0xd9], 0
	je	.label_355
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.98
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	lea	rsi, [rsp + 0x580]
	call	dbg_printf
	jmp	.label_355
	nop	word ptr cs:[rax + rax]
.label_311:
	cmp	eax, 0xc
	jne	.label_375
	xor	ebp, ebp
.label_261:
	mov	eax, ebp
	add	rsp, 0x598
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_285:
	add	edx, eax
	mov	dword ptr [r13 + 0x18], edx
	jmp	.label_261
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a60

	.globl debug_print_current_time
	.type debug_print_current_time, @function
debug_print_current_time:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x70
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [r15 + 0xd9], 0
	jne	.label_463
.label_452:
	add	rsp, 0x70
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_463:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	cmp	qword ptr [r15 + 0xa8], 0
	je	.label_453
	cmp	byte ptr [r15 + 0xda], 0
	jne	.label_462
	mov	rdi, qword ptr [rip + stderr]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	r8, qword ptr [r15 + 0x38]
	mov	r9, qword ptr [r15 + 0x40]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.78
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xda], 1
	mov	r12b, 1
	jmp	.label_453
.label_462:
	xor	r12d, r12d
.label_453:
	mov	rax, qword ptr [r15 + 0xd8]
	mov	rcx, rax
	shr	rcx, 0x38
	movzx	edx, al
	cmp	edx, ecx
	je	.label_468
	test	r12b, r12b
	je	.label_460
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_460:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rax, qword ptr [r15 + 0xd8]
	mov	byte ptr [r15 + 0xdf], al
	mov	r12b, 1
.label_468:
	cmp	qword ptr [r15 + 0xc8], 0
	je	.label_464
	shr	rax, 0x28
	test	al, al
	jne	.label_464
	mov	r9, qword ptr [r15 + 0x58]
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + .str.80]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	r8, qword ptr [r15 + 0x50]
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r15 + 0x60]
	test	rcx, rcx
	je	.label_454
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.81_0
	xor	eax, eax
	call	__fprintf_chk
.label_454:
	cmp	dword ptr [r15 + 0x1c], 1
	jne	.label_458
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:.str.41_0
	mov	esi, 2
	mov	edx, 1
	call	fwrite
.label_458:
	mov	byte ptr [r15 + 0xdd], 1
	mov	r12b, 1
.label_464:
	cmp	qword ptr [r15 + 0xb0], 0
	je	.label_467
	cmp	byte ptr [r15 + 0xdb], 0
	jne	.label_467
	test	r12b, r12b
	je	.label_451
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_451:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp]
	mov	rdi, r15
	call	str_days
	mov	rcx, rax
	mov	r8, qword ptr [r15 + 8]
	mov	r9d, dword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rbx
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdb], 1
	mov	r12b, 1
.label_467:
	cmp	qword ptr [r15 + 0xb8], 0
	je	.label_466
	cmp	byte ptr [r15 + 0xdc], 0
	jne	.label_466
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + .str.83]
	mov	ecx, dword ptr [r15 + 0x14]
	mov	r8d, OFFSET FLAT:.str.84_0
	cmp	qword ptr [r15 + 0xc0], 0
	jne	.label_450
	mov	r8d, OFFSET FLAT:.str_0
.label_450:
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdc], 1
	mov	r12b, 1
.label_466:
	cmp	qword ptr [r15 + 0xd0], 0
	je	.label_459
	cmp	byte ptr [r15 + 0xde], 0
	jne	.label_459
	mov	r14, qword ptr [rip + stderr]
	xor	r12b, 1
	movsxd	r13, dword ptr [r15 + 0x18]
	mov	eax, r13d
	shr	eax, 0x1f
	imul	rbx, r13, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r13d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r13, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:.str.233
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r13d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r13d, edx
	movzx	edx, r12b
	lea	rdx, qword ptr [rdx + .str.85]
	je	.label_457
	cdqe	
	lea	rax, [rsp + rax]
	movsxd	r9, ecx
	imul	rsi, r9, -0x77777777
	shr	rsi, 0x20
	add	esi, r9d
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	r8d, esi, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rsi, esi
	imul	rcx, rsi, 0x66666667
	mov	rdi, rcx
	shr	rdi, 0x3f
	sar	rcx, 0x22
	add	ecx, edi
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	esi, ecx
	add	esi, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], sil
	jne	.label_465
	add	rax, 3
	jmp	.label_461
.label_465:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rsi, rcx
	shr	rsi, 0x3f
	sar	rcx, 0x22
	lea	edi, [rcx + rsi]
	lea	ecx, [rcx + rsi + 0x30]
	mov	byte ptr [rax + 4], cl
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_461:
	mov	byte ptr [rax], 0
.label_457:
	lea	rcx, [rsp]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xde], 1
	mov	r12b, 1
.label_459:
	cmp	byte ptr [r15 + 0xa0], 0
	je	.label_455
	mov	r14, qword ptr [r15 + 0x58]
	test	r12b, r12b
	je	.label_456
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_456:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
.label_455:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_452
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ea0

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [r14 + 0xd9], 0
	je	.label_477
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	mov	rcx, qword ptr [r14 + 0x68]
	test	rcx, rcx
	je	.label_475
	mov	rdi, qword ptr [rip + stderr]
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_476
	mov	r8d, OFFSET FLAT:.str.88
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r14 + 0x70]
	mov	al, 1
	test	rcx, rcx
	jne	.label_484
	jmp	.label_471
.label_477:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_475:
	mov	rcx, qword ptr [r14 + 0x70]
	mov	ebx, 1
	test	rcx, rcx
	je	.label_482
.label_484:
	mov	rdi, qword ptr [rip + stderr]
	lea	rdx, qword ptr [rbx + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.89
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_471:
	mov	rcx, qword ptr [r14 + 0x78]
	test	rcx, rcx
	je	.label_470
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.90
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_470:
	mov	rcx, qword ptr [r14 + 0x80]
	test	rcx, rcx
	je	.label_483
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.91
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_483:
	mov	rcx, qword ptr [r14 + 0x88]
	test	rcx, rcx
	je	.label_480
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.92
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_480:
	mov	rcx, qword ptr [r14 + 0x90]
	test	rcx, rcx
	je	.label_474
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.93
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_474:
	movsxd	rcx, dword ptr [r14 + 0x98]
	test	rcx, rcx
	je	.label_472
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + .str.95]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:.str.94
	xor	eax, eax
	call	__fprintf_chk
.label_472:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputc
.label_482:
	cmp	qword ptr [r14 + 0x78], 0
	je	.label_478
	xor	eax, eax
	jmp	.label_471
.label_478:
	cmp	qword ptr [r14 + 0x80], 0
	je	.label_481
	xor	eax, eax
	jmp	.label_471
.label_481:
	cmp	qword ptr [r14 + 0x88], 0
	je	.label_469
	xor	eax, eax
	jmp	.label_471
.label_469:
	cmp	qword ptr [r14 + 0x90], 0
	je	.label_473
	xor	eax, eax
	jmp	.label_471
.label_473:
	cmp	dword ptr [r14 + 0x98], 0
	je	.label_479
	xor	eax, eax
	jmp	.label_471
.label_479:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputs
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4070e0

	.globl apply_relative_time
	.type apply_relative_time, @function
apply_relative_time:
	lea	r8, [rsp + 8]
	movabs	r10, 0x7fffffffffffffff
	mov	edx, dword ptr [rsp + 0x38]
	test	esi, esi
	js	.label_533
	test	edx, edx
	js	.label_538
	mov	esi, 0x7fffffff
	sub	esi, edx
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jl	.label_541
	jmp	.label_489
.label_533:
	test	edx, edx
	js	.label_515
	lea	rcx, [rdi + 0x98]
	mov	esi, dword ptr [rdi + 0x98]
	mov	eax, edx
	xor	eax, 0x80000000
	cmp	esi, eax
	jl	.label_524
	jmp	.label_498
.label_538:
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, 0x80000000
	sub	esi, edx
	cmp	eax, esi
	jge	.label_489
.label_541:
	add	edx, eax
	mov	dword ptr [rcx], edx
	mov	r9d, 1
	jmp	.label_506
.label_489:
	add	edx, eax
	mov	dword ptr [rcx], edx
	xor	r9d, r9d
.label_506:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_513
	mov	rsi, r10
	sub	rsi, rdx
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	cmp	rsi, rax
	jl	.label_537
	jmp	.label_517
.label_513:
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	lea	rsi, [r10 + 1]
	sub	rsi, rdx
	cmp	rax, rsi
	jge	.label_517
.label_537:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	mov	edx, 1
	jmp	.label_521
.label_517:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	xor	edx, edx
.label_521:
	or	edx, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_509
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	cmp	rcx, rax
	jl	.label_529
	jmp	.label_504
.label_509:
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_504
.label_529:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_542
.label_504:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_542:
	or	edx, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_488
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x80]
	mov	rax, qword ptr [rdi + 0x80]
	cmp	rcx, rax
	jl	.label_492
	jmp	.label_497
.label_488:
	lea	r9, [rdi + 0x80]
	mov	rax, qword ptr [rdi + 0x80]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_497
.label_492:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_503
.label_497:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_503:
	or	edx, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_508
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rcx, rax
	jl	.label_522
	jmp	.label_516
.label_508:
	lea	r9, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_516
.label_522:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_519
.label_516:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_519:
	or	edx, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_525
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rcx, rax
	jl	.label_507
	jmp	.label_530
.label_525:
	lea	r9, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_530
.label_507:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_535
.label_530:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_535:
	or	edx, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_540
	sub	r10, rcx
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	cmp	r10, rax
	jl	.label_486
	jmp	.label_490
.label_540:
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	inc	r10
	sub	r10, rcx
	cmp	rax, r10
	jge	.label_490
.label_486:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	mov	eax, 1
	jmp	.label_496
.label_490:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	xor	eax, eax
.label_496:
	or	edx, eax
	je	.label_501
	xor	eax, eax
	ret	
.label_515:
	lea	eax, [rdx + 0x7fffffff]
	lea	rcx, [rdi + 0x98]
	mov	esi, dword ptr [rdi + 0x98]
	cmp	eax, esi
	jge	.label_498
.label_524:
	sub	esi, edx
	mov	dword ptr [rcx], esi
	mov	r9d, 1
	jmp	.label_499
.label_498:
	sub	esi, edx
	mov	dword ptr [rcx], esi
	xor	r9d, r9d
.label_499:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_511
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	lea	rax, [r10 + 1]
	xor	rax, rdx
	cmp	rsi, rax
	jl	.label_514
	jmp	.label_518
.label_511:
	lea	rax, [rdx + r10]
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	cmp	rax, rsi
	jge	.label_518
.label_514:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	mov	edx, 1
	jmp	.label_523
.label_518:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	xor	edx, edx
.label_523:
	or	edx, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_528
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_531
	jmp	.label_536
.label_528:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	cmp	rax, rcx
	jge	.label_536
.label_531:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_485
.label_536:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_485:
	or	edx, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_491
	lea	r9, [rdi + 0x80]
	mov	rcx, qword ptr [rdi + 0x80]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_493
	jmp	.label_500
.label_491:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x80]
	mov	rcx, qword ptr [rdi + 0x80]
	cmp	rax, rcx
	jge	.label_500
.label_493:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_505
.label_500:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_505:
	or	edx, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_510
	lea	r9, [rdi + 0x78]
	mov	rcx, qword ptr [rdi + 0x78]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_512
	jmp	.label_502
.label_510:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x78]
	mov	rcx, qword ptr [rdi + 0x78]
	cmp	rax, rcx
	jge	.label_502
.label_512:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_520
.label_502:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_520:
	or	edx, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_526
	lea	r9, [rdi + 0x70]
	mov	rcx, qword ptr [rdi + 0x70]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_527
	jmp	.label_532
.label_526:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x70]
	mov	rcx, qword ptr [rdi + 0x70]
	cmp	rax, rcx
	jge	.label_532
.label_527:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_534
.label_532:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_534:
	or	edx, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_539
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	inc	r10
	xor	r10, rcx
	cmp	rsi, r10
	jl	.label_487
	jmp	.label_494
.label_539:
	add	r10, rcx
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	cmp	r10, rsi
	jge	.label_494
.label_487:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	mov	eax, 1
	jmp	.label_495
.label_494:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	xor	eax, eax
.label_495:
	or	edx, eax
	je	.label_501
	xor	eax, eax
	ret	
.label_501:
	mov	byte ptr [rdi + 0xa1], 1
	mov	al, 1
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407550

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rdi
	test	al, al
	je	.label_543
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_543:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:.str.96
	mov	esi, 6
	mov	edx, 1
	call	fwrite
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 8
	mov	rdi, qword ptr [rip + stderr]
	lea	rcx, [rsp + 0xb0]
	mov	esi, 1
	mov	rdx, rbx
	call	__vfprintf_chk
	add	rsp, 0xd0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407620
	.globl parse_datetime
	.type parse_datetime, @function
parse_datetime:

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
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	r13, rax
	mov	rdi, r13
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_545
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	mov	r8, rbx
	mov	r9, r13
	call	parse_datetime2
	mov	bpl, al
	mov	rdi, rbx
	call	tzfree
	jmp	.label_544
.label_545:
	xor	ebp, ebp
.label_544:
	mov	al, bpl
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
	#Procedure 0x407690

	.globl parse_datetime2
	.type parse_datetime2, @function
parse_datetime2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x408
	mov	qword ptr [rsp + 0x78], r9
	mov	r13, r8
	mov	r14d, ecx
	mov	r15, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x70], rax
	test	r15, r15
	jne	.label_661
	lea	r15, [rsp + 0x220]
	mov	rdi, r15
	call	gettime
.label_661:
	mov	rax, qword ptr [r15]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rsp + 0x80], rax
	movzx	eax, byte ptr [r12]
	add	eax, -9
	cmp	eax, 0x17
	mov	rbp, r12
	ja	.label_592
	mov	ecx, 0x80001f
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_677:
	bt	ecx, eax
	jae	.label_592
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -9
	cmp	eax, 0x18
	jb	.label_677
.label_592:
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 4
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	jne	.label_681
	lea	rbx, [rbp + 4]
	mov	edi, 1
	mov	rax, rbx
	jmp	.label_684
	nop	dword ptr [rax + rax]
.label_689:
	inc	rax
	inc	rdi
.label_684:
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	je	.label_687
	test	cl, cl
	je	.label_681
	movzx	ecx, cl
	cmp	ecx, 0x22
	jne	.label_689
	jmp	.label_568
	nop	
.label_687:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	ecx, 0x22
	je	.label_689
	movzx	ecx, cl
	cmp	ecx, 0x5c
	je	.label_689
.label_681:
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	mov	rbx, r13
.label_593:
	lea	rdx, [rsp + 0x1e8]
	mov	rdi, rbx
	mov	rsi, r15
	call	localtime_rz
	test	rax, rax
	je	.label_700
	movabs	r15, 0x7fffffffffffffff
	mov	eax, OFFSET FLAT:.str.20_0
	cmp	byte ptr [rbp], 0
	je	.label_639
	mov	rax, rbp
.label_639:
	mov	qword ptr [rsp + 0xd0], rax
	and	r14b, 1
	mov	byte ptr [rsp + 0x1a9], r14b
	movsxd	rax, dword ptr [rsp + 0x1fc]
	add	rax, 0x76c
	mov	qword ptr [rsp + 0xf8], rax
	mov	qword ptr [rsp + 0x100], 0
	movsxd	rax, dword ptr [rsp + 0x1f8]
	inc	rax
	mov	qword ptr [rsp + 0x108], rax
	movsxd	rax, dword ptr [rsp + 0x1f4]
	mov	qword ptr [rsp + 0x110], rax
	movsxd	rax, dword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x118], rax
	movsxd	rax, dword ptr [rsp + 0x1ec]
	mov	qword ptr [rsp + 0x120], rax
	movsxd	rax, dword ptr [rsp + 0x1e8]
	mov	qword ptr [rsp + 0x128], rax
	mov	rax, qword ptr [rsp + 0x80]
	cdqe	
	mov	qword ptr [rsp + 0x130], rax
	mov	eax, dword ptr [rsp + 0x208]
	mov	dword ptr [rsp + 0x388], eax
	mov	dword ptr [rsp + 0xec], 2
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x162], xmm0
	movups	xmmword ptr [rsp + 0x158], xmm0
	movups	xmmword ptr [rsp + 0x148], xmm0
	movups	xmmword ptr [rsp + 0x138], xmm0
	movups	xmmword ptr [rsp + 0x198], xmm0
	movups	xmmword ptr [rsp + 0x188], xmm0
	movups	xmmword ptr [rsp + 0x178], xmm0
	mov	byte ptr [rsp + 0x1a8], 0
	mov	byte ptr [rsp + 0x1b0], 0
	mov	word ptr [rsp + 0x1ae], 0
	mov	dword ptr [rsp + 0x1aa], 0
	mov	rcx, qword ptr [rsp + 0x218]
	mov	qword ptr [rsp + 0x1b8], rcx
	mov	dword ptr [rsp + 0x1c0], 0x10d
	mov	dword ptr [rsp + 0x1c4], eax
	mov	qword ptr [rsp + 0x1c8], 0
	lea	rax, [r15 - 0x76a700]
	mov	rbp, qword ptr [rsp + 0x88]
	cmp	rbp, rax
	jg	.label_608
	lea	rax, [rbp + 0x76a700]
	mov	qword ptr [rsp + 0x98], rax
	lea	rsi, [rsp + 0x98]
	lea	rdx, [rsp + 0x3a0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_602
	mov	rax, qword ptr [rsp + 0x3d0]
	test	rax, rax
	je	.label_602
	mov	ecx, dword ptr [rsp + 0x3c0]
	cmp	ecx, dword ptr [rsp + 0x1c4]
	jne	.label_547
.label_602:
	lea	rax, [r15 - 0xed4e00]
	cmp	rbp, rax
	jg	.label_608
	lea	rax, [rbp + 0xed4e00]
	mov	qword ptr [rsp + 0x98], rax
	lea	rsi, [rsp + 0x98]
	lea	rdx, [rsp + 0x3a0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_622
	mov	rax, qword ptr [rsp + 0x3d0]
	test	rax, rax
	je	.label_622
	mov	ecx, dword ptr [rsp + 0x3c0]
	cmp	ecx, dword ptr [rsp + 0x1c4]
	jne	.label_547
.label_622:
	lea	rax, [r15 - 0x163f500]
	cmp	rbp, rax
	jg	.label_608
	add	rbp, 0x163f500
	mov	qword ptr [rsp + 0x98], rbp
	lea	rsi, [rsp + 0x98]
	lea	rdx, [rsp + 0x3a0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_608
	mov	rax, qword ptr [rsp + 0x3d0]
	test	rax, rax
	je	.label_608
	mov	ecx, dword ptr [rsp + 0x3c0]
	cmp	ecx, dword ptr [rsp + 0x1c4]
	je	.label_608
.label_547:
	mov	qword ptr [rsp + 0x1c8], rax
	mov	dword ptr [rsp + 0x1d0], 0x10d
	mov	dword ptr [rsp + 0x1d4], ecx
	mov	qword ptr [rsp + 0x1d8], 0
.label_608:
	mov	rdi, qword ptr [rsp + 0x1b8]
	test	rdi, rdi
	je	.label_632
	mov	rsi, qword ptr [rsp + 0x1c8]
	test	rsi, rsi
	je	.label_632
	call	strcmp
	test	eax, eax
	jne	.label_632
	mov	dword ptr [rsp + 0x1c4], 0xffffffff
	mov	qword ptr [rsp + 0x1c8], 0
.label_632:
	lea	rdi, [rsp + 0xd0]
	call	yyparse
	test	eax, eax
	mov	al, byte ptr [rsp + 0x1a9]
	je	.label_654
	test	al, al
	je	.label_655
	add	r12, qword ptr [rsp + 0x70]
	cmp	r12, qword ptr [rsp + 0xd0]
	jbe	.label_656
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23_0
	jmp	.label_659
.label_700:
	xor	ebp, ebp
	jmp	.label_560
.label_654:
	test	al, al
	mov	r12, qword ptr [rsp + 0x68]
	jne	.label_662
.label_597:
	cmp	byte ptr [rsp + 0x170], 0
	je	.label_665
	lea	rax, [rsp + 0x128]
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r12], xmm0
.label_598:
	mov	rdi, qword ptr [rsp + 0x78]
	mov	bpl, 1
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_560
	test	rdi, rdi
	je	.label_673
	mov	esi, OFFSET FLAT:.str.28
	mov	r14, rdi
	call	strcmp
	mov	r15, rbx
	xor	edi, edi
	test	eax, eax
	je	.label_678
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	jmp	.label_685
.label_655:
	xor	ebp, ebp
	jmp	.label_560
.label_568:
	xor	eax, eax
	cmp	rdi, 0x65
	jl	.label_686
	call	malloc
	mov	rsi, rax
	xor	ebp, ebp
	test	rsi, rsi
	mov	edi, 0
	jne	.label_688
	jmp	.label_691
.label_656:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22_0
.label_659:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0xd0]
	xor	ebp, ebp
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_560
.label_665:
	mov	rax, qword ptr [rsp + 0x178]
	mov	rcx, qword ptr [rsp + 0x198]
	mov	rdx, rax
	or	rdx, rcx
	or	rdx, qword ptr [rsp + 0x180]
	or	rdx, qword ptr [rsp + 0x190]
	mov	rsi, qword ptr [rsp + 0x1a0]
	add	rsi, qword ptr [rsp + 0x188]
	or	rsi, rdx
	mov	r14b, byte ptr [rsp + 0x1a9]
	cmp	rsi, 2
	jl	.label_701
	test	r14b, r14b
	je	.label_698
	cmp	rcx, 2
	jl	.label_705
	mov	edi, OFFSET FLAT:.str.34
	xor	eax, eax
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x178]
.label_705:
	cmp	rax, 2
	jl	.label_548
	mov	edi, OFFSET FLAT:.str.35_0
	xor	eax, eax
	call	dbg_printf
.label_548:
	cmp	qword ptr [rsp + 0x180], 2
	jl	.label_553
	mov	edi, OFFSET FLAT:.str.36_0
	xor	eax, eax
	call	dbg_printf
.label_553:
	cmp	qword ptr [rsp + 0x190], 2
	jl	.label_607
	mov	edi, OFFSET FLAT:.str.37_0
	xor	eax, eax
	call	dbg_printf
.label_607:
	mov	rax, qword ptr [rsp + 0x1a0]
	add	rax, qword ptr [rsp + 0x188]
	xor	ebp, ebp
	cmp	rax, 2
	jl	.label_560
	mov	edi, OFFSET FLAT:.str.38_0
	xor	eax, eax
	call	dbg_printf
	jmp	.label_560
.label_686:
	lea	rsi, [rsp + 0x230]
.label_688:
	mov	qword ptr [rsp + 0x90], rax
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x22
	jne	.label_571
	mov	qword ptr [rsp + 0x60], r13
	mov	r13, rbx
	mov	rax, rsi
	jmp	.label_574
.label_571:
	mov	qword ptr [rsp + 0x60], r13
	mov	rax, rsi
	nop	dword ptr [rax]
.label_552:
	movzx	ecx, cl
	cmp	ecx, 0x5c
	sete	cl
	movzx	ecx, cl
	mov	dl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], dl
	inc	rax
	lea	r13, [rbx + rcx + 1]
	movzx	ecx, byte ptr [rbx + rcx + 1]
	cmp	ecx, 0x22
	mov	rbx, r13
	jne	.label_552
.label_574:
	mov	byte ptr [rax], 0
	mov	rdi, rsi
	mov	qword ptr [rsp + 0x78], rsi
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_582
	inc	r13
	mov	eax, 0x80001f
	nop	word ptr [rax + rax]
.label_588:
	mov	rbp, r13
	movzx	ecx, byte ptr [rbp]
	add	ecx, -9
	cmp	ecx, 0x17
	ja	.label_586
	lea	r13, [rbp + 1]
	bt	eax, ecx
	jb	.label_588
.label_586:
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_593
.label_701:
	mov	r12, rbx
	mov	rbx, qword ptr [rsp + 0xf8]
	test	rbx, rbx
	js	.label_635
	cmp	qword ptr [rsp + 0x100], 2
	jne	.label_600
	cmp	rbx, 0x45
	mov	eax, 0x7d0
	mov	ebp, 0x76c
	cmovl	rbp, rax
	add	rbp, rbx
	test	r14b, r14b
	je	.label_601
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.234
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	mov	rdx, rbp
	call	dbg_printf
.label_601:
	test	rbp, rbp
	jns	.label_591
	jmp	.label_617
.label_582:
	xor	ebp, ebp
	jmp	.label_604
.label_673:
	mov	r15, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	jmp	.label_619
.label_678:
	mov	esi, OFFSET FLAT:.str.71
.label_619:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_685:
	mov	r14, qword ptr [r12]
	mov	ebx, dword ptr [r12 + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	mov	edx, ebx
	call	dbg_printf
	lea	rsi, [rsp + 0x3a0]
	mov	rdi, r12
	call	gmtime_r
	test	rax, rax
	je	.label_638
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	r14, [rsp + 0x2a0]
	lea	rcx, [rsp + 0x3a0]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:.str.254
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r14
	call	nstrftime
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r14
	call	dbg_printf
.label_638:
	lea	rdx, [rsp + 0x98]
	mov	rbx, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	localtime_rz
	test	rax, rax
	je	.label_560
	mov	r12, rbx
	movsxd	r15, dword ptr [rsp + 0xc0]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rsp + 0x2a0]
	lea	rcx, [rsp + 0x98]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:.str.254
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	eax, r15d
	shr	eax, 0x1f
	imul	rbx, r15, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r15d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r15, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp + 0x310]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:.str.233
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r15d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r15d, edx
	je	.label_672
	cdqe	
	lea	rax, [rsp + rax + 0x310]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, r9, 0x1b4e81b5
	mov	rbx, rdi
	shr	rbx, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rsi, rdx, 0x66666667
	mov	rcx, rsi
	shr	rcx, 0x3f
	sar	rsi, 0x22
	add	esi, ecx
	add	esi, esi
	lea	ecx, [rsi + rsi*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rdi + rbx + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_679
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	esi, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	esi, esi
	lea	ecx, [rsi + rsi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_695
.label_698:
	xor	ebp, ebp
	jmp	.label_560
.label_635:
	mov	rbp, rbx
.label_617:
	lea	rdx, [rbp + r15]
	mov	ecx, 0x7ffff894
	mov	eax, 0xfffff894
	sub	eax, ebp
	cmp	rdx, -0x76c
	mov	rbx, r12
	jl	.label_668
	sub	rcx, rbp
	shr	rcx, 0x20
	je	.label_564
	jmp	.label_668
.label_662:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0x170], 0
	jne	.label_551
	cmp	qword ptr [rsp + 0x1a0], 0
	jne	.label_555
	mov	rax, qword ptr [rsp + 0x78]
	test	rax, rax
	jne	.label_556
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31_0
	jmp	.label_614
.label_600:
	mov	rbp, rbx
.label_591:
	lea	rcx, [rbp + 0x7ffff894]
	lea	eax, [rbp - 0x76c]
	shr	rcx, 0x20
	mov	rbx, r12
	je	.label_564
.label_668:
	mov	dword ptr [rsp + 0x37c], eax
	test	r14b, r14b
	je	.label_567
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.235
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbp
	call	dbg_printf
	jmp	.label_567
.label_564:
	mov	dword ptr [rsp + 0x37c], eax
	mov	rax, qword ptr [rsp + 0x108]
	lea	ecx, [rax - 1]
	cmp	rax, -0x7fffffff
	mov	dword ptr [rsp + 0x378], ecx
	jl	.label_567
	dec	rax
	cmp	rax, 0x7fffffff
	jg	.label_567
	mov	r12d, 0x80000000
	mov	rax, qword ptr [rsp + 0x110]
	mov	dword ptr [rsp + 0x374], eax
	sub	rax, -0x80000000
	shr	rax, 0x20
	je	.label_580
.label_567:
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_584
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_560
.label_584:
	xor	ebp, ebp
	jmp	.label_560
.label_679:
	add	rax, 3
.label_695:
	mov	byte ptr [rax], 0
.label_672:
	lea	rsi, [rsp + 0x2a0]
	lea	rdx, [rsp + 0x310]
	xor	eax, eax
	mov	rdi, r14
	call	dbg_printf
	mov	rbx, r12
.label_560:
	cmp	rbx, r13
	je	.label_604
	mov	rdi, rbx
	call	tzfree
.label_604:
	mov	rdi, qword ptr [rsp + 0x90]
.label_691:
	call	free
	mov	al, bpl
	add	rsp, 0x408
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_551:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	jmp	.label_614
.label_580:
	mov	rax, qword ptr [rsp + 0x198]
	test	rax, rax
	jne	.label_618
	cmp	byte ptr [rsp + 0x171], 0
	je	.label_620
	mov	rcx, qword ptr [rsp + 0x180]
	or	rcx, qword ptr [rsp + 0x178]
	jne	.label_620
.label_618:
	mov	rdx, qword ptr [rsp + 0x118]
	mov	ecx, dword ptr [rsp + 0xec]
	test	ecx, ecx
	je	.label_630
	cmp	ecx, 1
	jne	.label_680
	lea	rdi, [rdx - 1]
	lea	rbp, [rdx + 0xc]
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rdx
	cmp	rdi, 0xb
	cmovb	rsi, rbp
	jmp	.label_634
.label_555:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26_0
.label_614:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
.label_703:
	mov	rdx, rcx
	call	__fprintf_chk
.label_623:
	mov	rax, qword ptr [rsp + 0x1a0]
	cmp	qword ptr [rsp + 0x188], 0
	mov	rbx, rbp
	je	.label_644
	test	rax, rax
	jne	.label_644
	cmp	dword ptr [rsp + 0xe4], 0
	jle	.label_650
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.32_0
	xor	eax, eax
	call	__fprintf_chk
	mov	rax, qword ptr [rsp + 0x1a0]
.label_644:
	test	rax, rax
	je	.label_650
	mov	r12, rbx
	mov	r14, qword ptr [rip + stderr]
	movsxd	rbx, dword ptr [rsp + 0xe8]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x310]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:.str.233
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	je	.label_615
	cdqe	
	lea	rax, [rsp + rax + 0x310]
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rcx, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	add	ebx, ebx
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	add	edx, 0x30
	sub	ecx, r8d
	mov	byte ptr [rax], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rax + 1], sil
	mov	byte ptr [rax + 2], dl
	jne	.label_674
	add	rax, 3
	jmp	.label_693
.label_556:
	cmp	rbx, r13
	jne	.label_694
	mov	esi, OFFSET FLAT:.str.28
	mov	rdi, rax
	mov	r14, rax
	call	strcmp
	mov	rcx, qword ptr [rip + stderr]
	mov	qword ptr [rsp + 0x88], rcx
	mov	rbp, rbx
	xor	edi, edi
	test	eax, eax
	jne	.label_696
	mov	esi, OFFSET FLAT:.str.29_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x88]
	jmp	.label_703
.label_630:
	lea	rdi, [rdx - 1]
	xor	ebp, ebp
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rbp
	cmp	rdi, 0xb
	cmovb	rsi, rdx
	jmp	.label_634
.label_680:
	cmp	rdx, 0x18
	mov	rsi, -1
	cmovb	rsi, rdx
.label_634:
	mov	dword ptr [rsp + 0x370], esi
	test	esi, esi
	js	.label_546
	mov	ecx, dword ptr [rsp + 0x120]
	mov	dword ptr [rsp + 0x36c], ecx
	mov	ecx, dword ptr [rsp + 0x128]
	mov	dword ptr [rsp + 0x368], ecx
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_566
	mov	r14, rbx
	xor	edi, edi
	test	rax, rax
	je	.label_609
	mov	esi, OFFSET FLAT:.str.44_0
	jmp	.label_558
.label_546:
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_561
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:.str.41_0
	mov	edx, OFFSET FLAT:.str_0
	cmove	rdx, rax
	test	ecx, ecx
	mov	r14, rbx
	mov	ebx, OFFSET FLAT:.str.40_0
	cmovne	rbx, rdx
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x118]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbx
	mov	rbx, r14
	call	dbg_printf
	jmp	.label_560
.label_674:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rdx, ecx
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rax + 4], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_693:
	mov	byte ptr [rax], 0
.label_615:
	lea	rcx, [rsp + 0x310]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.33_0
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x68]
.label_650:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_597
.label_620:
	mov	dword ptr [rsp + 0x368], 0
	mov	dword ptr [rsp + 0x36c], 0
	mov	dword ptr [rsp + 0x370], 0
	mov	qword ptr [rsp + 0x130], 0
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_566
	mov	edi, OFFSET FLAT:.str.46_0
	xor	eax, eax
	call	dbg_printf
	jmp	.label_566
.label_694:
	mov	rbp, rbx
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	mov	rbx, rax
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rcx
	mov	rcx, rbx
	call	__fprintf_chk
	jmp	.label_623
.label_609:
	mov	esi, OFFSET FLAT:.str.45_0
.label_558:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	r9d, dword ptr [rsp + 0x370]
	mov	eax, dword ptr [rsp + 0x368]
	mov	ecx, dword ptr [rsp + 0x36c]
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp], ecx
	lea	rbp, [rsp + 0x2a0]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:.str.236
	xor	eax, eax
	mov	rdi, rbp
	call	__snprintf_chk
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rbp
	call	dbg_printf
	mov	rbx, r14
.label_566:
	mov	rax, qword ptr [rsp + 0x180]
	or	rax, qword ptr [rsp + 0x178]
	or	rax, qword ptr [rsp + 0x198]
	je	.label_641
	mov	dword ptr [rsp + 0x388], 0xffffffff
.label_641:
	cmp	qword ptr [rsp + 0x188], 0
	je	.label_645
	mov	eax, dword ptr [rsp + 0xe4]
	mov	dword ptr [rsp + 0x388], eax
	jmp	.label_649
.label_645:
	mov	eax, dword ptr [rsp + 0x388]
.label_649:
	mov	qword ptr [rsp + 0x60], r13
	mov	rcx, qword ptr [rsp + 0x368]
	mov	dword ptr [rsp + 0x330], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x334], ecx
	mov	rcx, qword ptr [rsp + 0x370]
	mov	dword ptr [rsp + 0x338], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x33c], ecx
	mov	rcx, qword ptr [rsp + 0x378]
	mov	dword ptr [rsp + 0x340], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x344], ecx
	mov	dword ptr [rsp + 0x350], eax
	mov	dword ptr [rsp + 0x380], 0xffffffff
	lea	rsi, [rsp + 0x368]
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x88], rbx
	call	mktime_z
	mov	r14, rax
	cmp	dword ptr [rsp + 0x380], 0
	js	.label_589
	mov	rax, qword ptr [rsp + 0x368]
	mov	rcx, qword ptr [rsp + 0x370]
	xor	rax, qword ptr [rsp + 0x330]
	xor	rcx, qword ptr [rsp + 0x338]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x378]
	xor	rax, qword ptr [rsp + 0x340]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	je	.label_667
.label_589:
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_612
	mov	byte ptr [rsp + 0x3a2], 0x58
	mov	word ptr [rsp + 0x3a0], 0x5858
	movsxd	rbx, dword ptr [rsp + 0xe8]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	rdi, [rsp + 0x3a3]
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:.str.233
	xor	eax, eax
	call	__sprintf_chk
	imul	ecx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, ecx
	mov	edx, esi
	neg	edx
	cmovl	edx, esi
	cmp	ebx, ecx
	je	.label_702
	cdqe	
	lea	rcx, [rsp + rax + 0x3a3]
	movsxd	rax, edx
	imul	rdx, rax, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rax, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	add	ebx, ebx
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	add	edx, 0x30
	sub	eax, r8d
	mov	byte ptr [rcx], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rcx + 1], sil
	mov	byte ptr [rcx + 2], dl
	lea	rcx, [rcx + 3]
	je	.label_704
	mov	byte ptr [rcx], 0x3a
	movsxd	rdx, eax
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rcx + 1], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	eax, [rax + rdx + 0x30]
	mov	byte ptr [rcx + 2], al
	add	rcx, 3
.label_704:
	mov	byte ptr [rcx], 0
.label_702:
	lea	rdi, [rsp + 0x3a0]
	call	tzalloc
	mov	r13, rax
	test	r13, r13
	mov	rbx, qword ptr [rsp + 0x88]
	je	.label_570
	mov	rax, qword ptr [rsp + 0x330]
	mov	dword ptr [rsp + 0x368], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x36c], eax
	mov	rax, qword ptr [rsp + 0x338]
	mov	dword ptr [rsp + 0x370], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x374], eax
	mov	rax, qword ptr [rsp + 0x340]
	mov	dword ptr [rsp + 0x378], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x37c], eax
	mov	eax, dword ptr [rsp + 0x350]
	mov	dword ptr [rsp + 0x388], eax
	mov	dword ptr [rsp + 0x380], 0xffffffff
	lea	rsi, [rsp + 0x368]
	mov	rdi, r13
	call	mktime_z
	mov	r14, rax
	cmp	dword ptr [rsp + 0x380], 0
	js	.label_590
	mov	rax, qword ptr [rsp + 0x368]
	mov	rcx, qword ptr [rsp + 0x370]
	xor	rax, qword ptr [rsp + 0x330]
	xor	rcx, qword ptr [rsp + 0x338]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp + 0x378]
	xor	rbx, qword ptr [rsp + 0x340]
	mov	ebp, ebx
	or	ebp, ecx
	or	ebp, edx
	shr	rbx, 0x20
	mov	rdi, r13
	call	tzfree
	or	ebx, ebp
	jne	.label_612
.label_667:
	cmp	qword ptr [rsp + 0x180], 0
	mov	r13, qword ptr [rsp + 0x60]
	je	.label_599
	mov	rax, qword ptr [rsp + 0x178]
	test	rax, rax
	jne	.label_599
	mov	rcx, qword ptr [rsp + 0xd8]
	test	rcx, rcx
	jle	.label_629
	mov	eax, dword ptr [rsp + 0x380]
	cmp	eax, dword ptr [rsp + 0xe0]
	setne	al
	jmp	.label_626
.label_570:
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_631
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsp + 0x3a0]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_631:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_560
.label_561:
	xor	ebp, ebp
	jmp	.label_560
.label_696:
	mov	esi, OFFSET FLAT:.str.30_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
	jmp	.label_623
.label_590:
	mov	rdi, r13
	call	tzfree
.label_612:
	mov	r9, qword ptr [rsp + 0x330]
	mov	rsi, qword ptr [rsp + 0x338]
	mov	qword ptr [rsp + 0x78], rsi
	mov	r11, qword ptr [rsp + 0x368]
	mov	rdi, qword ptr [rsp + 0x370]
	mov	qword ptr [rsp + 0x70], rdi
	cmp	r9d, r11d
	sete	r14b
	mov	rax, r9
	shr	rax, 0x20
	mov	qword ptr [rsp + 0x68], rax
	mov	rcx, r11
	shr	rcx, 0x20
	mov	qword ptr [rsp + 0x58], rcx
	cmp	eax, ecx
	sete	al
	mov	rcx, rsi
	shr	rcx, 0x20
	mov	r15, rdi
	shr	r15, 0x20
	cmp	ecx, r15d
	sete	byte ptr [rsp + 0x57]
	mov	rbp, qword ptr [rsp + 0x340]
	mov	rbx, qword ptr [rsp + 0x378]
	cmp	ebp, ebx
	sete	dl
	mov	r13, rbp
	shr	r13, 0x20
	mov	r12, rbx
	shr	r12, 0x20
	cmp	r13d, r12d
	sete	r10b
	cmp	esi, edi
	setne	r8b
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_648
	and	dl, r10b
	and	r14b, r8b
	and	al, r14b
	and	al, byte ptr [rsp + 0x57]
	and	al, dl
	mov	byte ptr [rsp + 0x57], al
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.237
	mov	edx, 5
	mov	qword ptr [rsp + 0x38], rbp
	mov	r14, rcx
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x30], rbx
	mov	qword ptr [rsp + 0x40], r11
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.238
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x330]
	lea	rsi, [rsp + 0xd0]
	lea	rbp, [rsp + 0x3a0]
	mov	rdx, rbp
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.239
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x368]
	lea	rsi, [rsp + 0xd0]
	mov	rdx, rbp
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	cmp	r13d, r12d
	mov	r8d, OFFSET FLAT:.str_0
	mov	r9d, OFFSET FLAT:.str.241
	cmove	r9, r8
	mov	r12, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x30]
	cmp	r12d, r13d
	mov	ecx, OFFSET FLAT:.str.242
	mov	edx, OFFSET FLAT:.str.242
	cmove	rdx, r8
	cmp	r14d, r15d
	mov	esi, OFFSET FLAT:.str.242
	cmove	rsi, r8
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rbp, qword ptr [rsp + 0x70]
	cmp	edi, ebp
	mov	edi, OFFSET FLAT:.str.242
	cmove	rdi, r8
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	ebp, ebx
	mov	ebp, OFFSET FLAT:.str.242
	cmove	rbp, r8
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	ebx, eax
	cmove	rcx, r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdx
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:.str.240
	xor	eax, eax
	lea	rdi, [rsp + 0x3a0]
	call	__snprintf_chk
	test	eax, eax
	mov	rbx, r12
	mov	rbp, r13
	js	.label_563
	cmp	eax, 0x63
	mov	ecx, 0x63
	cmovb	ecx, eax
	inc	ecx
	not	eax
	cmp	eax, -0x64
	mov	edx, 0xffffff9c
	cmova	edx, eax
	mov	eax, 0xfffffffe
	sub	eax, edx
	cdqe	
	lea	rdx, [rsp + rax + 0x3a0]
.label_699:
	mov	rax, rcx
	cmp	rax, 2
	jl	.label_573
	lea	rcx, [rax - 1]
	movzx	esi, byte ptr [rdx]
	dec	rdx
	cmp	esi, 0x20
	je	.label_699
.label_573:
	dec	rax
	cdqe	
	mov	byte ptr [rsp + rax + 0x3a0], 0
.label_563:
	lea	rsi, [rsp + 0x3a0]
	mov	edi, OFFSET FLAT:.str.243
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.244
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0x57], 0
	je	.label_613
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.245
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_613:
	cmp	r14d, r15d
	je	.label_651
	cmp	ebx, ebp
	je	.label_651
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.246
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_651:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.247
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_605
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.249
	jmp	.label_606
.label_605:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.250
.label_606:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:.str.248
	xor	eax, eax
	mov	rsi, rcx
	call	dbg_printf
.label_648:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x60]
	mov	rbx, qword ptr [rsp + 0x88]
	jmp	.label_560
.label_629:
	xor	eax, eax
.label_626:
	movzx	eax, al
	cmp	rcx, rax
	jge	.label_621
	test	rcx, rcx
	jle	.label_636
	mov	eax, dword ptr [rsp + 0x380]
	cmp	eax, dword ptr [rsp + 0xe0]
	setne	al
	jmp	.label_640
.label_621:
	test	rcx, rcx
	jle	.label_628
	mov	eax, dword ptr [rsp + 0x380]
	cmp	eax, dword ptr [rsp + 0xe0]
	setne	al
	jmp	.label_657
.label_636:
	xor	eax, eax
.label_640:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0xedb6db6db6db6db7
	cmp	rdx, rax
	jge	.label_633
	jmp	.label_637
.label_628:
	xor	eax, eax
.label_657:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0x1249249249249249
	cmp	rdx, rax
	jg	.label_637
.label_633:
	test	rcx, rcx
	jle	.label_642
	mov	eax, dword ptr [rsp + 0x380]
	cmp	eax, dword ptr [rsp + 0xe0]
	setne	al
	jmp	.label_575
.label_642:
	xor	eax, eax
.label_575:
	movzx	eax, al
	sub	rcx, rax
	lea	rax, [rcx*8]
	sub	rax, rcx
	js	.label_595
	mov	rsi, r15
	sub	rsi, rax
	mov	ecx, dword ptr [rsp + 0xe0]
	mov	edx, dword ptr [rsp + 0x380]
	lea	edi, [rcx + 7]
	sub	edi, edx
	movsxd	rdi, edi
	imul	rbp, rdi, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edi
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edi, ebx
	movsxd	rdi, edi
	jmp	.label_647
.label_595:
	mov	ecx, dword ptr [rsp + 0xe0]
	mov	edx, dword ptr [rsp + 0x380]
	lea	esi, [rcx + 7]
	sub	esi, edx
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	add	edi, esi
	mov	ebp, edi
	shr	ebp, 0x1f
	sar	edi, 2
	add	edi, ebp
	lea	ebp, [rdi*8]
	sub	ebp, edi
	sub	esi, ebp
	movsxd	rsi, esi
	lea	rdi, [r15 + 1]
	sub	rdi, rax
.label_647:
	cmp	rsi, rdi
	jl	.label_637
	add	ecx, 7
	sub	ecx, edx
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	ecx, esi
	movsxd	rcx, ecx
	add	rcx, rax
	movsxd	rax, dword ptr [rsp + 0x374]
	test	rax, rax
	js	.label_664
	mov	rdx, r15
	sub	rdx, rax
	cmp	rdx, rcx
	jl	.label_675
	jmp	.label_653
.label_664:
	lea	rdx, [r15 + 1]
	sub	rdx, rax
	cmp	rcx, rdx
	jl	.label_675
.label_653:
	lea	rdx, [rcx + r12]
	add	rdx, rax
	shr	rdx, 0x20
	je	.label_683
.label_675:
	add	ecx, eax
	mov	dword ptr [rsp + 0x374], ecx
.label_637:
	cmp	byte ptr [rsp + 0x1a9], 0
	jne	.label_682
	jmp	.label_550
.label_683:
	add	ecx, eax
	mov	dword ptr [rsp + 0x374], ecx
	mov	dword ptr [rsp + 0x388], 0xffffffff
	lea	rsi, [rsp + 0x368]
	mov	rdi, qword ptr [rsp + 0x88]
	call	mktime_z
	mov	r14, rax
	mov	al, byte ptr [rsp + 0x1a9]
	cmp	r14, -1
	je	.label_692
	test	al, al
	je	.label_599
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x80], rax
	lea	rbp, [rsp + 0xd0]
	lea	rsi, [rsp + 0x3a0]
	mov	rdi, rbp
	call	str_days
	mov	rbx, rax
	lea	rdi, [rsp + 0x368]
	lea	rdx, [rsp + 0x2a0]
	mov	rsi, rbp
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, rcx
	call	dbg_printf
.label_599:
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_707
	mov	rax, qword ptr [rsp + 0x178]
	mov	rcx, qword ptr [rsp + 0x180]
	mov	rdx, rcx
	or	rdx, rax
	jne	.label_708
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x60], r13
	mov	r13, rax
	movsxd	rax, dword ptr [rsp + 0x37c]
	cmp	rax, -0x76d
	setg	cl
	movzx	ecx, cl
	lea	rcx, qword ptr [rcx + .str.257]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	mov	r8d, 0xffffffed
	sub	r8d, edi
	test	edx, edx
	cmovns	r8d, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	lea	rbx, [rsp + 0x98]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, rbx
	call	__sprintf_chk
	mov	eax, dword ptr [rsp + 0x374]
	mov	ecx, dword ptr [rsp + 0x378]
	inc	ecx
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp], ecx
	lea	rbp, [rsp + 0x2a0]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:.str.256
	xor	eax, eax
	mov	rdi, rbp
	mov	r9, rbx
	call	__snprintf_chk
	xor	eax, eax
	mov	rdi, r13
	mov	r13, qword ptr [rsp + 0x60]
	mov	rsi, rbp
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x178]
	mov	rcx, qword ptr [rsp + 0x180]
.label_708:
	test	rcx, rcx
	je	.label_587
	test	rax, rax
	je	.label_587
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0xd0]
	lea	rsi, [rsp + 0x3a0]
	call	str_days
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
.label_587:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x368]
	lea	rsi, [rsp + 0xd0]
	lea	rdx, [rsp + 0x2a0]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
.label_707:
	mov	rcx, qword ptr [rsp + 0x140]
	mov	rax, qword ptr [rsp + 0x148]
	or	rcx, qword ptr [rsp + 0x138]
	mov	rdx, rcx
	or	rdx, rax
	je	.label_616
	mov	rbp, r13
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_625
	test	rcx, rcx
	je	.label_627
	cmp	dword ptr [rsp + 0x374], 0xf
	je	.label_627
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x148]
.label_627:
	test	rax, rax
	je	.label_625
	cmp	dword ptr [rsp + 0x370], 0xc
	je	.label_625
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_625:
	mov	r13, qword ptr [rsp + 0x138]
	test	r13, r13
	js	.label_643
	mov	rcx, r15
	sub	rcx, r13
	movsxd	rax, dword ptr [rsp + 0x37c]
	cmp	rcx, rax
	jl	.label_579
	jmp	.label_646
.label_643:
	movsxd	rax, dword ptr [rsp + 0x37c]
	lea	rcx, [r15 + 1]
	sub	rcx, r13
	cmp	rax, rcx
	jl	.label_579
.label_646:
	movsxd	rcx, eax
	lea	rdx, [r13 + r12]
	add	rdx, rcx
	shr	rdx, 0x20
	jne	.label_579
	mov	rbx, qword ptr [rsp + 0x140]
	test	rbx, rbx
	js	.label_652
	mov	rdx, r15
	sub	rdx, rbx
	movsxd	rcx, dword ptr [rsp + 0x378]
	cmp	rdx, rcx
	jl	.label_579
	jmp	.label_690
.label_652:
	movsxd	rcx, dword ptr [rsp + 0x378]
	lea	rdx, [r15 + 1]
	sub	rdx, rbx
	cmp	rcx, rdx
	jl	.label_579
.label_690:
	movsxd	rdx, ecx
	lea	rsi, [rbx + r12]
	add	rsi, rdx
	shr	rsi, 0x20
	jne	.label_579
	mov	rdi, qword ptr [rsp + 0x148]
	test	rdi, rdi
	js	.label_569
	mov	rsi, r15
	sub	rsi, rdi
	movsxd	rdx, dword ptr [rsp + 0x374]
	cmp	rsi, rdx
	jl	.label_579
	jmp	.label_610
.label_692:
	test	al, al
	je	.label_550
.label_682:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x80], rax
	lea	r15, [rsp + 0xd0]
	lea	rsi, [rsp + 0x3a0]
	mov	rdi, r15
	call	str_days
	mov	r12, rax
	mov	r14, r13
	mov	r13, qword ptr [rsp + 0xd8]
	mov	ebx, dword ptr [rsp + 0xe0]
	lea	rdi, [rsp + 0x368]
	lea	rdx, [rsp + 0x2a0]
	mov	rsi, r15
	call	debug_strfdatetime
	mov	rbp, rax
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rsi, r12
	mov	rdx, r13
	mov	r13, r14
	mov	ecx, ebx
	mov	r8, rbp
	call	dbg_printf
	jmp	.label_550
.label_569:
	movsxd	rdx, dword ptr [rsp + 0x374]
	lea	rsi, [r15 + 1]
	sub	rsi, rdi
	cmp	rdx, rsi
	jl	.label_579
.label_610:
	movsxd	rsi, edx
	add	r12, rdi
	add	r12, rsi
	shr	r12, 0x20
	je	.label_603
.label_579:
	cmp	byte ptr [rsp + 0x1a9], 0
	mov	r13, rbp
	je	.label_550
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 0x877
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_550
.label_603:
	add	r13d, eax
	add	ebx, ecx
	add	edi, edx
	mov	qword ptr [rsp + 0x80], rdi
	mov	dword ptr [rsp + 0x37c], r13d
	mov	dword ptr [rsp + 0x378], ebx
	mov	dword ptr [rsp + 0x374], edi
	mov	eax, dword ptr [rsp + 0x338]
	mov	dword ptr [rsp + 0x370], eax
	mov	eax, dword ptr [rsp + 0x334]
	mov	dword ptr [rsp + 0x36c], eax
	mov	eax, dword ptr [rsp + 0x330]
	mov	dword ptr [rsp + 0x368], eax
	mov	eax, dword ptr [rsp + 0x350]
	mov	dword ptr [rsp + 0x388], eax
	lea	rsi, [rsp + 0x368]
	mov	rdi, qword ptr [rsp + 0x88]
	call	mktime_z
	mov	r14, rax
	cmp	r14, -1
	mov	al, byte ptr [rsp + 0x1a9]
	je	.label_611
	test	al, al
	je	.label_559
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x138]
	mov	rdx, qword ptr [rsp + 0x140]
	mov	rcx, qword ptr [rsp + 0x148]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	lea	rdi, [rsp + 0x368]
	lea	rsi, [rsp + 0xd0]
	lea	rdx, [rsp + 0x2a0]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, rcx
	call	dbg_printf
	mov	eax, dword ptr [rsp + 0x350]
	cmp	eax, -1
	je	.label_581
	cmp	dword ptr [rsp + 0x388], eax
	je	.label_581
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_581:
	cmp	qword ptr [rsp + 0x148], 0
	jne	.label_559
	mov	rax, qword ptr [rsp + 0x80]
	cmp	dword ptr [rsp + 0x374], eax
	jne	.label_596
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_559
	cmp	dword ptr [rsp + 0x378], ebx
	je	.label_559
.label_596:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x70], rax
	cmp	r13d, 0xfffff893
	setg	al
	movzx	eax, al
	lea	rcx, qword ptr [rax + .str.257]
	movsxd	rax, r13d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	lea	esi, [rax + rdx]
	lea	eax, [rax + rdx + 0x13]
	mov	r12d, 0xffffffed
	mov	r8d, 0xffffffed
	sub	r8d, esi
	test	eax, eax
	cmovns	r8d, eax
	imul	eax, esi, 0x64
	sub	r13d, eax
	mov	r9d, r13d
	neg	r9d
	cmovl	r9d, r13d
	lea	r13, [rsp + 0x98]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	call	__sprintf_chk
	inc	ebx
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rsi, r13
	mov	edx, ebx
	mov	rcx, qword ptr [rsp + 0x80]
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rsp + 0x37c]
	cmp	rax, -0x76d
	setg	cl
	movzx	ecx, cl
	lea	rcx, qword ptr [rcx + .str.257]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	sub	r12d, edi
	test	edx, edx
	cmovns	r12d, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	mov	r8d, r12d
	call	__sprintf_chk
	mov	ecx, dword ptr [rsp + 0x374]
	mov	edx, dword ptr [rsp + 0x378]
	inc	edx
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r13
	call	dbg_printf
.label_559:
	mov	r13, rbp
.label_616:
	cmp	qword ptr [rsp + 0x1a0], 0
	je	.label_658
	movsxd	rax, dword ptr [rsp + 0xe8]
	mov	rdx, qword ptr [rsp + 0x390]
	test	rdx, rdx
	js	.label_660
	lea	rsi, [r15 + 1]
	xor	rsi, rdx
	mov	ecx, 1
	cmp	rax, rsi
	jl	.label_663
	jmp	.label_666
.label_660:
	lea	rsi, [rdx + r15]
	mov	ecx, 1
	cmp	rsi, rax
	jl	.label_663
.label_666:
	xor	ecx, ecx
.label_663:
	sub	rax, rdx
	js	.label_669
	lea	rsi, [r15 + 1]
	xor	rsi, rax
	mov	edx, 1
	cmp	r14, rsi
	jl	.label_670
	jmp	.label_671
.label_669:
	lea	rsi, [rax + r15]
	mov	edx, 1
	cmp	rsi, r14
	jl	.label_670
.label_671:
	xor	edx, edx
.label_670:
	or	edx, ecx
	je	.label_676
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_550
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, dword ptr [rsp + 0xe8]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_550
.label_676:
	sub	r14, rax
.label_658:
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_706
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x368]
	lea	rsi, [rsp + 0xd0]
	lea	rdx, [rsp + 0x2a0]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	mov	rdx, r14
	call	dbg_printf
.label_706:
	movsxd	rdi, dword ptr [rsp + 0x168]
	mov	rsi, qword ptr [rsp + 0x130]
	add	rsi, rdi
	movabs	rbp, 0x112e0be826d694b3
	mov	rax, rsi
	imul	rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rcx, rsi
	sub	rcx, rax
	add	rcx, 0x3b9aca00
	mov	rax, rcx
	imul	rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	sub	rcx, rax
	sub	rsi, rcx
	mov	rax, rsi
	imul	rbp
	mov	rax, qword ptr [rsp + 0x150]
	test	rax, rax
	js	.label_697
	movabs	rsi, 0x91a2b3c4d5e6f
	cmp	rax, rsi
	jg	.label_549
	jmp	.label_554
.label_697:
	movabs	rsi, 0xfff6e5d4c3b2a191
	cmp	rax, rsi
	jl	.label_549
.label_554:
	imul	rbx, rax, 0xe10
	test	rbx, rbx
	js	.label_557
	mov	rsi, r15
	sub	rsi, rbx
	cmp	rsi, r14
	jl	.label_549
	jmp	.label_562
.label_557:
	lea	rsi, [r15 + 1]
	sub	rsi, rbx
	cmp	r14, rsi
	jl	.label_549
.label_562:
	mov	rsi, qword ptr [rsp + 0x158]
	test	rsi, rsi
	js	.label_565
	movabs	rbp, 0x222222222222222
	cmp	rsi, rbp
	jg	.label_549
	jmp	.label_572
.label_565:
	movabs	rbp, 0xfdddddddddddddde
	cmp	rsi, rbp
	jl	.label_549
.label_572:
	add	rbx, r14
	imul	r14, rsi, 0x3c
	test	r14, r14
	js	.label_576
	mov	rbp, r15
	sub	rbp, r14
	cmp	rbp, rbx
	jl	.label_549
	jmp	.label_577
.label_576:
	lea	rbp, [r15 + 1]
	sub	rbp, r14
	cmp	rbx, rbp
	jl	.label_549
.label_577:
	add	r14, rbx
	mov	rbx, qword ptr [rsp + 0x160]
	test	rbx, rbx
	js	.label_578
	mov	rbp, r15
	sub	rbp, rbx
	cmp	rbp, r14
	jl	.label_549
	jmp	.label_583
.label_578:
	lea	rbp, [r15 + 1]
	sub	rbp, rbx
	cmp	r14, rbp
	jl	.label_549
.label_583:
	mov	rbp, rdx
	shr	rbp, 0x3f
	sar	rdx, 0x1a
	add	rdx, rbp
	add	r14, rbx
	movsxd	rdx, edx
	test	edx, edx
	js	.label_585
	sub	r15, rdx
	cmp	r15, r14
	jl	.label_549
	jmp	.label_594
.label_611:
	test	al, al
	mov	r13, rbp
	je	.label_550
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x368]
	lea	rsi, [rsp + 0xd0]
	lea	rdx, [rsp + 0x2a0]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	jmp	.label_550
.label_585:
	inc	r15
	sub	r15, rdx
	cmp	r14, r15
	jge	.label_594
.label_549:
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_550
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_550:
	xor	ebp, ebp
	mov	rbx, qword ptr [rsp + 0x88]
	jmp	.label_560
.label_594:
	add	r14, rdx
	mov	rdx, qword ptr [rsp + 0x68]
	mov	qword ptr [rdx], r14
	mov	qword ptr [rdx + 8], rcx
	mov	rbp, rdx
	cmp	byte ptr [rsp + 0x1a9], 0
	je	.label_624
	or	rsi, rax
	or	rsi, rbx
	or	rsi, rdi
	je	.label_624
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x150]
	mov	rdx, qword ptr [rsp + 0x158]
	mov	rcx, qword ptr [rsp + 0x160]
	mov	r8d, dword ptr [rsp + 0x168]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	cmp	dword ptr [rsp + 0x388], -1
	je	.label_624
	lea	rdx, [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rsi, rbp
	call	localtime_rz
	test	rax, rax
	je	.label_624
	mov	eax, dword ptr [rsp + 0x388]
	cmp	eax, dword ptr [rsp + 0xb8]
	je	.label_624
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_624:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	r12, rbp
	jmp	.label_598
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409aa0

	.globl str_days
	.type str_days, @function
str_days:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xe0], 0
	je	.label_709
	mov	r9, qword ptr [rbx + 8]
	lea	rax, [r9 + 1]
	cmp	rax, 0xd
	ja	.label_711
	imul	rax, rax, 0xb
	lea	r9, qword ptr [rax + str_days.ordinal_values]
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:.str_1
	jmp	.label_710
.label_709:
	mov	byte ptr [r14], 0
	xor	eax, eax
	jmp	.label_712
.label_711:
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:.str.252
.label_710:
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_712:
	movsxd	rcx, dword ptr [rbx + 0x10]
	test	rcx, rcx
	js	.label_713
	cmp	eax, 0x63
	ja	.label_713
	cmp	ecx, 6
	jg	.label_713
	movsxd	rdi, eax
	add	rdi, r14
	mov	edx, 0x64
	sub	edx, eax
	movsxd	rsi, edx
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	r8, qword ptr [rax + .str.253]
	lea	r9, qword ptr [(rcx * 4) + str_days.days_values]
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	call	__snprintf_chk
.label_713:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b70

	.globl debug_strfdatetime
	.type debug_strfdatetime, @function
debug_strfdatetime:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdx
	mov	rbx, rsi
	mov	rax, rdi
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:.str.254
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r15
	mov	rcx, rax
	call	nstrftime
	test	rbx, rbx
	je	.label_714
	cmp	eax, 0x63
	jg	.label_714
	cmp	qword ptr [rbx + 0xd0], 0
	je	.label_714
	movsxd	rbx, dword ptr [rbx + 0x18]
	cdqe	
	lea	r14, [r15 + rax]
	mov	r12d, 0x64
	sub	r12d, eax
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:.str.233
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rsi, r12d
	je	.label_717
	cdqe	
	lea	rax, [rsp + rax]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	r8d, edx, 0x3c
	imul	rbp, r9, 0x1b4e81b5
	mov	rbx, rbp
	shr	rbx, 0x3f
	shr	rbp, 0x26
	movsxd	rdx, edx
	imul	rdi, rdx, 0x66666667
	mov	rcx, rdi
	shr	rcx, 0x3f
	sar	rdi, 0x22
	add	edi, ecx
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbp + rbx + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_716
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	edi, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_715
.label_716:
	add	rax, 3
.label_715:
	mov	byte ptr [rax], 0
.label_717:
	lea	r9, [rsp]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:.str.255
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_714:
	mov	rax, r15
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d20

	.globl lookup_zone
	.type lookup_zone, @function
lookup_zone:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	esi, OFFSET FLAT:.str.127
	mov	rdi, r15
	call	strcmp
	mov	ebx, OFFSET FLAT:universal_time_zone_table
	test	eax, eax
	je	.label_718
	mov	esi, OFFSET FLAT:.str.128
	mov	rdi, r15
	call	strcmp
	mov	ebx, OFFSET FLAT:label_721
	test	eax, eax
	je	.label_718
	mov	esi, OFFSET FLAT:.str.129
	mov	rdi, r15
	call	strcmp
	mov	ebx, OFFSET FLAT:label_720
	test	eax, eax
	je	.label_718
	mov	rsi, qword ptr [r14 + 0xe8]
	mov	r13d, OFFSET FLAT:time_zone_table
	mov	r12d, OFFSET FLAT:.str.130
	test	rsi, rsi
	je	.label_722
	add	r14, 0xe8
	mov	r13d, OFFSET FLAT:time_zone_table
	mov	r12d, OFFSET FLAT:.str.130
	mov	rbx, r14
	nop	word ptr [rax + rax]
.label_719:
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_718
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_719
	nop	dword ptr [rax]
.label_722:
	mov	rdi, r15
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_723
	mov	r12, qword ptr [r13 + 0x10]
	add	r13, 0x10
	xor	ebx, ebx
	test	r12, r12
	jne	.label_722
	jmp	.label_718
.label_723:
	mov	rbx, r13
.label_718:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e00

	.globl posixtime
	.type posixtime, @function
posixtime:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r14d, edx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	xor	r12d, r12d
	test	r14b, 4
	je	.label_735
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	xor	r12d, r12d
	test	rax, rax
	je	.label_735
	mov	rcx, rax
	sub	rcx, r13
	sub	rbp, rcx
	cmp	rbp, 3
	mov	r12, rax
	mov	rbp, rcx
	jne	.label_725
.label_735:
	lea	rcx, [rbp - 8]
	mov	eax, ebp
	and	eax, 1
	cmp	rcx, 4
	ja	.label_725
	test	rax, rax
	jne	.label_725
	xor	ebx, ebx
	test	rbp, rbp
	je	.label_731
	nop	word ptr cs:[rax + rax]
.label_730:
	movsx	eax, byte ptr [r13 + rbx]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_725
	inc	rbx
	cmp	rbx, rbp
	jb	.label_730
	xor	ebx, ebx
	mov	rax, rbp
	shr	rax, 1
	je	.label_731
	mov	rcx, rbp
	shr	rcx, 1
	xor	esi, esi
	bt	rbp, 1
	jae	.label_733
	movsx	edx, byte ptr [r13]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [r13 + 1]
	lea	edx, [rsi + rdx*2 - 0x210]
	mov	dword ptr [rsp + 0x50], edx
	mov	esi, 1
.label_733:
	cmp	rcx, 1
	je	.label_741
	sub	rcx, rsi
	lea	rdx, [rsp + rsi*4 + 0x54]
	lea	rsi, [r13 + rsi*2 + 3]
	nop	word ptr [rax + rax]
.label_724:
	movsx	edi, byte ptr [rsi - 3]
	lea	edi, [rdi + rdi*4]
	movsx	ebp, byte ptr [rsi - 2]
	lea	edi, [rbp + rdi*2 - 0x210]
	mov	dword ptr [rdx - 4], edi
	movsx	edi, byte ptr [rsi - 1]
	lea	edi, [rdi + rdi*4]
	movsx	ebp, byte ptr [rsi]
	lea	edi, [rbp + rdi*2 - 0x210]
	mov	dword ptr [rdx], edi
	add	rdx, 8
	add	rsi, 4
	add	rcx, -2
	jne	.label_724
.label_741:
	mov	rbx, rax
.label_731:
	mov	r15d, r14d
	and	r15d, 1
	je	.label_734
	lea	rax, [rsp + 0x50]
	jmp	.label_728
.label_734:
	cmp	rbx, 4
	je	.label_736
	cmp	rbx, 6
	je	.label_738
	cmp	rbx, 5
	jne	.label_739
	mov	r10d, dword ptr [rsp + 0x50]
	cmp	r10d, 0x44
	jg	.label_729
	test	r14b, 8
	jne	.label_725
	add	r10d, 0x64
	jmp	.label_729
.label_736:
	lea	rbp, [rsp + 0x70]
	mov	rdi, rbp
	call	time
	mov	rdi, rbp
	call	localtime
	test	rax, rax
	je	.label_725
	mov	r10d, dword ptr [rax + 0x14]
	jmp	.label_729
.label_738:
	test	r14b, 2
	je	.label_725
	mov	rax, qword ptr [rsp + 0x50]
	imul	ecx, eax, 0x64
	shr	rax, 0x20
	lea	r10d, [rax + rcx - 0x76c]
.label_729:
	add	rbx, -4
	lea	rax, [rsp + rbx*4 + 0x50]
	mov	ebx, 4
.label_728:
	mov	esi, dword ptr [rax]
	mov	r9d, dword ptr [rax + 4]
	mov	r8d, dword ptr [rax + 8]
	mov	edi, dword ptr [rax + 0xc]
	test	r15d, r15d
	je	.label_727
	cmp	rbx, 4
	je	.label_740
	cmp	rbx, 6
	je	.label_743
	cmp	rbx, 5
	jne	.label_739
	mov	r10d, dword ptr [rax + 0x10]
	cmp	r10d, 0x44
	jg	.label_727
	test	r14b, 8
	jne	.label_725
	add	r10d, 0x64
	jmp	.label_727
.label_740:
	mov	dword ptr [rsp + 8], r9d
	mov	dword ptr [rsp + 0xc], r8d
	mov	r15d, edi
	mov	ebp, esi
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	time
	mov	rdi, rbx
	call	localtime
	test	rax, rax
	je	.label_725
	mov	r10d, dword ptr [rax + 0x14]
	mov	esi, ebp
	mov	edi, r15d
	mov	r8d, dword ptr [rsp + 0xc]
	mov	r9d, dword ptr [rsp + 8]
	jmp	.label_727
.label_743:
	test	r14b, 2
	je	.label_725
	imul	ecx, dword ptr [rax + 0x10], 0x64
	mov	eax, dword ptr [rax + 0x14]
	lea	r10d, [rax + rcx - 0x76c]
.label_727:
	xor	eax, eax
	test	r12, r12
	je	.label_744
	movsx	eax, byte ptr [r12 + 1]
	lea	ecx, [rax - 0x30]
	cmp	ecx, 9
	ja	.label_725
	movsx	ecx, byte ptr [r12 + 2]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_725
	lea	eax, [rax + rax*4]
	lea	eax, [rcx + rax*2 - 0x210]
.label_744:
	mov	dword ptr [rsp + 0xc], eax
	mov	dword ptr [rsp + 8], r14d
	dec	esi
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rsp + 0x1c], edi
	mov	dword ptr [rsp + 0x20], r8d
	mov	dword ptr [rsp + 0x24], r9d
	mov	dword ptr [rsp + 0x28], esi
	mov	dword ptr [rsp + 0x2c], r10d
	mov	dword ptr [rsp + 0x30], 0xffffffff
	mov	dword ptr [rsp + 0x38], 0xffffffff
	mov	ebx, edi
	lea	rdi, [rsp + 0x18]
	mov	ebp, esi
	mov	r12d, r8d
	mov	r15d, r9d
	mov	r14d, r10d
	call	mktime
	mov	rcx, rax
	cmp	dword ptr [rsp + 0x30], 0
	js	.label_745
	xor	r14d, dword ptr [rsp + 0x2c]
	xor	ebp, dword ptr [rsp + 0x28]
	xor	r15d, dword ptr [rsp + 0x24]
	or	r15d, r14d
	xor	r12d, dword ptr [rsp + 0x20]
	or	r12d, r15d
	xor	ebx, dword ptr [rsp + 0x1c]
	or	ebx, r12d
	or	ebx, ebp
	mov	eax, dword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0xc]
	xor	eax, edx
	or	eax, ebx
	je	.label_737
	mov	rbp, rcx
	cmp	edx, 0x3c
	jne	.label_732
	lea	rbx, [rsp + 0x50]
	mov	edx, 0x10
	mov	rdi, rbx
	mov	rsi, r13
	call	__stpcpy_chk
	mov	byte ptr [rax], 0
	mov	word ptr [rax - 2], 0x3935
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 8]
	call	posixtime
	test	al, al
	mov	rcx, rbp
	je	.label_742
.label_737:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rcx
	mov	al, 1
	jmp	.label_726
.label_725:
	xor	eax, eax
.label_726:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_745:
	xor	eax, eax
	jmp	.label_726
.label_732:
	xor	eax, eax
	jmp	.label_726
.label_742:
	xor	eax, eax
	jmp	.label_726
.label_739:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_746
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_747
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_747
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_748
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_748:
	mov	rbx, r14
.label_747:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_746:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a250
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
	#Procedure 0x40a290
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
	#Procedure 0x40a2a0
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
	#Procedure 0x40a2b0
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
	#Procedure 0x40a2f0
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
	#Procedure 0x40a310
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_749
	test	rdx, rdx
	je	.label_749
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_749:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a340
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
	#Procedure 0x40a3c0

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
.label_848:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_785
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_789]
.label_1343:
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_1344:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_811
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_811
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_833:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_825
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_825:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_833
.label_811:
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
	jmp	.label_765
.label_1336:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_765
.label_1339:
	mov	al, 1
.label_1337:
	mov	r12b, 1
.label_1340:
	test	r12b, 1
	mov	cl, 1
	je	.label_859
	mov	cl, al
.label_859:
	mov	al, cl
.label_1338:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_863
	test	r10, r10
	je	.label_866
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_868
.label_863:
	xor	ecx, ecx
	jmp	.label_868
.label_1341:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_867
	test	r10, r10
	je	.label_755
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_758
.label_1342:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_765
.label_866:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_868:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_765
.label_867:
	xor	eax, eax
	jmp	.label_758
.label_755:
	mov	eax, 1
.label_758:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_765:
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
	jmp	.label_786
.label_847:
	inc	rdi
.label_786:
	cmp	rbp, -1
	je	.label_838
	cmp	rdi, rbp
	jne	.label_840
	jmp	.label_843
	nop	word ptr cs:[rax + rax]
.label_838:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_817
.label_840:
	test	r12b, r12b
	je	.label_850
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_852
	cmp	rbp, -1
	jne	.label_852
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
.label_852:
	cmp	rbx, rbp
	jbe	.label_872
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_757
	nop	word ptr [rax + rax]
.label_850:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_757
.label_872:
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
	jne	.label_775
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_757
	jmp	.label_764
.label_775:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_757:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_860
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_806]
.label_1328:
	test	rdi, rdi
	jne	.label_791
	jmp	.label_813
.label_1332:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_814
	test	rdi, rdi
	jne	.label_816
	cmp	rbp, 1
	je	.label_813
	xor	r13d, r13d
	jmp	.label_753
.label_1321:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_822
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_764
	cmp	r9d, 2
	jne	.label_826
	mov	al, r14b
	and	al, 1
	jne	.label_829
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_832
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_832:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_778
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_778:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_820
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_820:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_800
.label_1322:
	mov	bl, 0x62
	jmp	.label_856
.label_1323:
	mov	cl, 0x74
	jmp	.label_781
.label_1324:
	mov	bl, 0x76
	jmp	.label_856
.label_1325:
	mov	bl, 0x66
	jmp	.label_856
.label_1326:
	mov	cl, 0x72
	jmp	.label_781
.label_1329:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_864
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_869
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
	jae	.label_874
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_874:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_772
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_772:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_770
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_770:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_864:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_753
.label_1330:
	cmp	r9d, 5
	je	.label_845
	cmp	r9d, 2
	jne	.label_791
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_791
	jmp	.label_796
.label_1331:
	cmp	r9d, 2
	jne	.label_798
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_801
	jmp	.label_808
.label_860:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_809
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
.label_760:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_823
	test	cl, cl
	je	.label_823
	xor	eax, eax
	jmp	.label_753
.label_814:
	test	rdi, rdi
	jne	.label_836
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_836
.label_813:
	mov	dl, 1
.label_1327:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_782
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_753
.label_822:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_847
	jmp	.label_791
.label_798:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_781
.label_801:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_780
.label_781:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_853
.label_856:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_753
	jmp	.label_783
.label_809:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_861
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_861:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_841:
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
	je	.label_771
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_774
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_779
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_804
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_797:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_793
	bt	rsi, rdx
	jb	.label_794
.label_793:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_797
.label_804:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_799
	xor	r13d, r13d
.label_799:
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
	je	.label_841
	jmp	.label_760
.label_836:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_753
.label_845:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_791
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_791
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_791
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_807
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_834
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_818
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_844
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_844:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_849
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_849:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_855
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_855:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_795
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_795:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_753
.label_791:
	xor	eax, eax
	xor	r13d, r13d
.label_753:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_750
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_754
	jmp	.label_759
	nop	word ptr [rax + rax]
.label_750:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_759
.label_754:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_766
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_773
	nop	word ptr cs:[rax + rax]
.label_759:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_773:
	mov	bl, r15b
	je	.label_780
	jmp	.label_783
.label_766:
	mov	bl, r15b
.label_783:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_764
	cmp	r9d, 2
	jne	.label_787
	mov	al, r14b
	and	al, 1
	jne	.label_787
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_842
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_842:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_763
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_763:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_805
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_805:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_787:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_815
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_815:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_784
.label_816:
	xor	r13d, r13d
	jmp	.label_753
.label_823:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_824
	nop	word ptr [rax + rax]
.label_819:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_824:
	test	cl, cl
	je	.label_835
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_837
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_839
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_839:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_837
	nop	word ptr [rax + rax]
.label_835:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_764
	cmp	r9d, 2
	jne	.label_767
	mov	al, r14b
	and	al, 1
	jne	.label_767
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_857
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_857:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_812
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_812:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_873
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_873:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_767:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_762
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_762:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_788
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_788:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_802
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_802:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_837:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_780
	test	r14b, 1
	je	.label_751
	mov	bl, al
	and	bl, 1
	jne	.label_751
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_777
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_777:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_810
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_810:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_751:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_819
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_819
	nop	dword ptr [rax]
.label_780:
	test	r14b, 1
	je	.label_831
	and	al, 1
	jne	.label_831
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_769
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_769:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_858
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_858:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_831:
	mov	bl, r15b
.label_784:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_851
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_851:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_847
.label_826:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_800
.label_829:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_800:
	cmp	rcx, r10
	jae	.label_865
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_865:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_871
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_752
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_776
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_761
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_761:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_768
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_768:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_753
.label_871:
	xor	r13d, r13d
	jmp	.label_753
.label_752:
	xor	r13d, r13d
	jmp	.label_753
.label_776:
	xor	r13d, r13d
	jmp	.label_753
.label_774:
	xor	r13d, r13d
.label_771:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_760
.label_779:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_792
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_790:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_828
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_790
	xor	r13d, r13d
	jmp	.label_760
.label_792:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_760
.label_828:
	xor	r13d, r13d
	jmp	.label_760
.label_807:
	xor	r13d, r13d
	jmp	.label_753
.label_834:
	xor	r13d, r13d
	jmp	.label_753
	nop	dword ptr [rax]
.label_843:
	mov	r13, rdi
.label_817:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_821
	or	al, dl
	je	.label_830
.label_821:
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
	je	.label_827
	or	al, dl
	jne	.label_827
	test	r8b, 1
	jne	.label_846
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_827
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_848
.label_827:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_854
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_854
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_854
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_870:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_862
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_862:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_870
.label_854:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_756
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_756
.label_782:
	mov	r9d, 2
	jmp	.label_764
.label_794:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_764
.label_830:
	mov	rbp, r13
	jmp	.label_764
.label_853:
	mov	r9d, 2
.label_764:
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
.label_803:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_756:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_846:
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
	jmp	.label_803
.label_869:
	mov	r9d, 2
	jmp	.label_764
.label_808:
	mov	r9d, 2
	jmp	.label_764
.label_796:
	mov	r9d, 2
	jmp	.label_764
.label_818:
	mov	r9d, 5
	jmp	.label_764
.label_785:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b550
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
	#Procedure 0x40b620
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
	je	.label_875
	mov	qword ptr [rax], rbx
.label_875:
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
	#Procedure 0x40b720
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_876
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_878:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_878
.label_876:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_880
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_879], OFFSET FLAT:slot0
.label_880:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_877
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_877:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b7d0

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
	js	.label_881
	mov	ecx, dword ptr [rax]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_886
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_882
.label_886:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_885
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_884
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_884:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_882:
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
	ja	.label_887
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_883
	mov	rdi, rbx
	call	free
.label_883:
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
.label_887:
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
.label_881:
	call	abort
.label_885:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9b0
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
	#Procedure 0x40b9d0
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
	#Procedure 0x40b9f0

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
	je	.label_888
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
.label_888:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ba60
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
	je	.label_889
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
.label_889:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bad0
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
	je	.label_890
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
.label_890:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb40
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
	je	.label_891
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
.label_891:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bbb0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_892]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_893]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_894]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x40bc20
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_892]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_893]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_894]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x40bc90

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_892]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_893]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_894]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x40bcf0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_892]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_893]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_894]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x40bd50

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
	je	.label_895
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
.label_895:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40be00
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_892]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_893]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_894]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_896
	test	rdx, rdx
	je	.label_896
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_896:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40be70
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_892]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_893]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_894]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_897
	test	rdx, rdx
	je	.label_897
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_897:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bee0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_892]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_893]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_894]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_898
	test	rsi, rsi
	je	.label_898
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_898:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40bf50
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_892]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_893]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_894]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_899
	test	rsi, rsi
	je	.label_899
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
.label_899:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bfc0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bfd0
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
	#Procedure 0x40bff0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c010

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
	#Procedure 0x40c030

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
	jne	.label_901
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_902
	cmp	ecx, 0x55
	jne	.label_900
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_900
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_900
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_900
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_900
	cmp	byte ptr [rax + 5], 0
	jne	.label_900
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_901
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_901
.label_902:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_900
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_900
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_900
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_900
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_900
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_900
	cmp	byte ptr [rax + 7], 0
	je	.label_903
.label_900:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_901:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_903:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_901
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_901
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c120

	.globl settime
	.type settime, @function
settime:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rdi
	xor	ebp, ebp
	xor	edi, edi
	mov	rsi, r14
	call	clock_settime
	mov	ebx, eax
	test	ebx, ebx
	je	.label_904
	call	__errno_location
	cmp	dword ptr [rax], 1
	mov	ebp, ebx
	je	.label_904
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp], rax
	movabs	rax, 0x20c49ba5e353f7cf
	imul	qword ptr [r14 + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rsp]
	xor	esi, esi
	call	settimeofday
	mov	ebp, eax
.label_904:
	mov	eax, ebp
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c190

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
	je	.label_908
	mov	edx, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_907
.label_908:
	mov	edx, OFFSET FLAT:.str.1_5
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_907:
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
	ja	.label_912
	jmp	qword ptr [(r12 * 8) + label_913]
.label_1432:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_3
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
.label_912:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_911
.label_1433:
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
.label_1434:
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
.label_1435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_914
.label_1436:
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
	jmp	.label_910
.label_1437:
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
	jmp	.label_906
.label_1438:
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
.label_906:
	mov	qword ptr [rsp + 0x10], rdi
.label_910:
	mov	qword ptr [rsp + 8], rsi
.label_914:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_905
.label_1440:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_911:
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
	jmp	.label_909
.label_1439:
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
.label_909:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_905:
	call	__fprintf_chk
.label_1431:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c480
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_915:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_915
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c4b0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_918:
	cmp	r10d, 0x28
	ja	.label_916
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_917
	nop	word ptr cs:[rax + rax]
.label_916:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_917:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_919
	inc	r9
	cmp	r9, 0xa
	jb	.label_918
.label_919:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c510

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_920
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_920:
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
.label_922:
	cmp	r8d, 0x28
	ja	.label_921
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_923
	nop	
.label_921:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_923:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_924
	inc	r9
	cmp	r9, 0xa
	jb	.label_922
.label_924:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c610
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c690
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_925
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_926
	test	rax, rax
	je	.label_925
.label_926:
	pop	rbx
	ret	
.label_925:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_927
	test	rax, rax
	je	.label_928
.label_927:
	pop	rbx
	ret	
.label_928:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_929
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_930
	test	rbx, rbx
	jne	.label_930
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_930:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_931
	test	rax, rax
	je	.label_929
.label_931:
	pop	rbx
	ret	
.label_929:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c740

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_932
	test	rbx, rbx
	jne	.label_932
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_932:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_934
	test	rax, rax
	je	.label_933
.label_934:
	pop	rbx
	ret	
.label_933:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40c770
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_939
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_940
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_935
.label_939:
	test	rcx, rcx
	jne	.label_941
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_941:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_937
.label_935:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_936
	test	rbx, rbx
	jne	.label_936
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_936:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_938
	test	rax, rax
	je	.label_940
.label_938:
	pop	rbx
	ret	
.label_940:
	call	xalloc_die
.label_937:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c810
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_942
	test	rax, rax
	je	.label_943
.label_942:
	pop	rbx
	ret	
.label_943:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c830
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_946
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_948
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_945
	call	free
	xor	eax, eax
	jmp	.label_947
.label_946:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_944
	mov	qword ptr [rsi], rbx
.label_945:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_947
	test	rax, rax
	je	.label_944
.label_947:
	pop	rbx
	ret	
.label_944:
	call	xalloc_die
.label_948:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c8a0
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
	je	.label_950
	test	r14, r14
	je	.label_949
.label_950:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_949:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c8e0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_951
	call	rpl_calloc
	test	rax, rax
	je	.label_951
	pop	rcx
	ret	
.label_951:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c910

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
	je	.label_952
	test	r15, r15
	je	.label_953
.label_952:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_953:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c950
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
	je	.label_955
	test	r15, r15
	je	.label_954
.label_955:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_954:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c9a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c9d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_956
	test	rsi, rsi
	mov	ecx, 1
	je	.label_957
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_957
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_956:
	mov	ecx, 1
.label_957:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca20

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_958
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_960
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_958
.label_960:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_958
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_959
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_959:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_958:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40caa0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_961
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_961
	test	byte ptr [rbx + 1], 1
	je	.label_961
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_961:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cae0

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
	jne	.label_962
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_962
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_963
.label_962:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_963:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_964
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_964:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40cb50

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
	je	.label_965
	cmp	r15, -2
	jb	.label_965
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_965
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_965:
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
	#Procedure 0x40cbb0

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
	#Procedure 0x40cbd0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_966
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_966:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_967
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_967
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_967:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cc50

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_968
	nop	word ptr [rax + rax]
.label_969:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_969
.label_968:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cc80

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_970
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_971
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_972
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	bpl, al
	xor	bpl, 1
.label_972:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_973
.label_970:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_971:
	xor	eax, eax
.label_973:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd10

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:.str_2
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_980
	test	bl, bl
	je	.label_982
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_975
.label_982:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_977
.label_980:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_975
.label_977:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_975
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_979
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_979:
	test	bl, bl
	je	.label_976
	add	r14, 9
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_981
.label_976:
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_981:
	test	eax, eax
	je	.label_983
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_974
	nop	dword ptr [rax]
.label_978:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_978
.label_974:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_975
.label_983:
	call	tzset
	mov	rax, r13
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
	.align	32
	#Procedure 0x40ce50

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_987
	cmp	r15, rbx
	ja	.label_994
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_987
.label_994:
	mov	ebp, OFFSET FLAT:.str_0
	cmp	byte ptr [rbx], 0
	je	.label_989
	lea	rbp, [r12 + 9]
	jmp	.label_988
.label_993:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_988:
	lea	r13, [r12 + 9]
.label_990:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_989
	cmp	byte ptr [rbp], 0
	jne	.label_984
	cmp	rbp, r13
	jne	.label_985
	cmp	byte ptr [r12 + 8], 0
	je	.label_986
.label_984:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax + rbp + 1]
	cmp	byte ptr [rax + rbp + 1], 0
	mov	rbp, rcx
	jne	.label_990
	jmp	.label_993
.label_986:
	mov	rbp, r13
.label_985:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_996
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_992:
	xor	r14d, r14d
	jmp	.label_987
.label_996:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_991
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	mov	qword ptr [r15 + 0x30], rbp
	jmp	.label_987
.label_991:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	cmp	rdx, 0x77
	mov	r13, rdx
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_995
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_989:
	mov	qword ptr [r15 + 0x30], rbp
.label_987:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_995:
	mov	qword ptr [r12], 0
	jmp	.label_992
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cfc0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_997
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_1003
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:.str_2
	mov	edx, 1
	call	setenv
	jmp	.label_1001
.label_1003:
	mov	edi, OFFSET FLAT:.str_2
	call	unsetenv
.label_1001:
	test	eax, eax
	je	.label_998
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_999
.label_998:
	call	tzset
	mov	r12b, 1
.label_999:
	cmp	rbp, 2
	jb	.label_1002
	nop	
.label_1000:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_1000
.label_1002:
	mov	dword ptr [r14], r15d
.label_997:
	mov	al, r12b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d050

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1007
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1004
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp + 0x38], rax
	cmp	rax, -1
	jne	.label_1005
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp]
	call	localtime_r
	test	rax, rax
	je	.label_1006
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x20]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_1006
.label_1005:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_1006
	mov	qword ptr [rsp + 0x38], -1
.label_1006:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_1004
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_1008
.label_1004:
	mov	rax, -1
.label_1008:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1007:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d150

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
	jne	.label_1010
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1009
	test	cl, cl
	jne	.label_1009
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1009
.label_1010:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1009
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1009:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d1b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1012
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1013
	cmp	byte ptr [rax + 1], 0
	je	.label_1011
.label_1013:
	mov	esi, OFFSET FLAT:.str.1_7
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1012
.label_1011:
	xor	ebx, ebx
.label_1012:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d1f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	je	.label_1014
	mov	rax, rcx
.label_1014:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d220

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0x10], r9d
	mov	qword ptr [rsp + 8], r8
	mov	dword ptr [rsp], 0xffffffff
	xor	r8d, r8d
	xor	r9d, r9d
	call	__strftime_internal_0
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x40d250

	.globl __strftime_internal_0
	.type __strftime_internal_0, @function
__strftime_internal_0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x5c], r8d
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x70], rsi
	mov	eax, dword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x30]
	test	rdx, rdx
	mov	esi, OFFSET FLAT:.str_0
	cmovne	rsi, rdx
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebx, 0xc
	cmovne	ebx, eax
	cmp	eax, 0xc
	cmovg	ebx, edx
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1118
	mov	dword ptr [rsp + 0x2c], ebx
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x48], rcx
	mov	dword ptr [rsp + 0x3c], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	movabs	r15, 0x1000000000002500
	xor	esi, esi
	jmp	.label_1127
.label_1118:
	xor	esi, esi
	jmp	.label_1135
.label_1071:
	mov	edi, 3
	jmp	.label_1137
	nop	word ptr cs:[rax + rax]
.label_1127:
	movzx	ecx, al
	xor	r12d, r12d
	cmp	ecx, 0x25
	jne	.label_1140
	mov	qword ptr [rsp + 0x78], rsi
	mov	eax, dword ptr [rsp + 0x5c]
	mov	bl, al
	xor	r13d, r13d
	jmp	.label_1142
	nop	
.label_1140:
	test	r14d, r14d
	mov	ecx, r14d
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x70]
	sub	rdx, rsi
	cmp	rbx, rdx
	jae	.label_1033
	test	rdi, rdi
	mov	edx, 0
	je	.label_1049
	cmp	ecx, 2
	jb	.label_1152
	movsxd	r14, r14d
	lea	rdx, [r14 - 1]
	mov	r12, rsi
	mov	esi, 0x20
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	lea	rdi, [rdi + r14 - 1]
	mov	al, byte ptr [rbp]
.label_1152:
	mov	byte ptr [rdi], al
.label_1081:
	inc	rdi
	mov	rdx, rdi
.label_1049:
	add	rsi, rbx
	mov	rdi, rdx
	jmp	.label_1117
	nop	word ptr cs:[rax + rax]
.label_1171:
	mov	r12b, 1
	mov	al, bl
	jmp	.label_1142
	nop	word ptr [rax + rax]
.label_1170:
	inc	rbp
	mov	r13d, edx
.label_1173:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	lea	esi, [rdx - 0x23]
	cmp	esi, 0x3c
	ja	.label_1076
	bt	r15, rsi
	jb	.label_1170
	mov	al, 1
	test	rsi, rsi
	je	.label_1171
	cmp	rsi, 0x3b
	jne	.label_1076
.label_1142:
	mov	bl, al
	inc	rbp
	jmp	.label_1173
	nop	
.label_1076:
	mov	qword ptr [rsp + 0x68], rdi
	add	edx, -0x30
	xor	eax, eax
	cmp	edx, 9
	ja	.label_1175
	nop	
.label_1177:
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_1179
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_1183
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_1179
.label_1183:
	lea	eax, [rax + rax*4]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_1179:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r14d
	jb	.label_1177
.label_1175:
	movsx	r9d, cl
	cmp	r9d, 0x4f
	je	.label_1018
	cmp	r9d, 0x45
	jne	.label_1019
.label_1018:
	mov	qword ptr [rsp + 0x60], rbx
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_1021
.label_1019:
	mov	qword ptr [rsp + 0x60], rbx
	xor	r9d, r9d
.label_1021:
	movsx	r11d, cl
	xor	ebx, ebx
	mov	esi, 1
	lea	edx, [r11 - 0x25]
	cmp	edx, 0x55
	ja	.label_1024
	mov	eax, OFFSET FLAT:.str.3_1
	mov	qword ptr [rsp + 0x50], rax
	mov	r8b, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rdx * 8) + label_1032]
.label_1235:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r8d, dword ptr [rdx + 0x14]
	mov	r9d, dword ptr [rdx + 0x18]
	mov	eax, r8d
	sar	eax, 0x1f
	and	eax, 0x190
	lea	r12d, [r8 + rax - 0x64]
	mov	ebx, dword ptr [rdx + 0x1c]
	lea	eax, [rbx + 0x17e]
	sub	eax, r9d
	movsxd	rdx, eax
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	eax, edx
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	sub	edx, edi
	lea	eax, [rbx + 3]
	sub	eax, edx
	js	.label_1039
	mov	edx, 0x16d
	test	r12b, 3
	jne	.label_1056
	movsxd	rdx, r12d
	imul	rdx, rdx, 0x51eb851f
	mov	rdi, rdx
	sar	rdi, 0x25
	mov	rsi, rdx
	shr	rsi, 0x3f
	add	edi, esi
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	add	edx, esi
	imul	edx, edx, 0x190
	cmp	r12d, edx
	sete	dl
	movzx	esi, dl
	add	esi, 0x16d
	cmp	r12d, edi
	mov	edx, 0x16e
	cmove	edx, esi
.label_1056:
	sub	ebx, edx
	lea	edx, [rbx + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	edx, edi
	add	ebx, 3
	sub	ebx, edx
	cmovns	eax, ebx
	shr	ebx, 0x1f
	xor	ebx, 1
	jmp	.label_1128
	nop	dword ptr [rax]
.label_1034:
	inc	rsi
.label_1229:
	movzx	eax, byte ptr [rbp + rsi]
	cmp	eax, 0x3a
	je	.label_1034
	movzx	eax, al
	cmp	eax, 0x7a
	jne	.label_1037
	add	rbp, rsi
	mov	rbx, rsi
.label_1266:
	mov	rax, qword ptr [rsp + 0x48]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_1083
	mov	r8d, dword ptr [rax + 0x28]
	mov	sil, 1
	test	r8d, r8d
	js	.label_1084
	test	r8d, r8d
	je	.label_1088
	xor	esi, esi
	jmp	.label_1084
.label_1249:
	test	r12b, r12b
	je	.label_1091
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_1091:
	xor	eax, eax
	cmp	r9d, 0x45
	je	.label_1037
	mov	r8b, cl
	jmp	.label_1067
.label_1024:
	test	r11d, r11d
	jne	.label_1037
	dec	rbp
	jmp	.label_1037
.label_1228:
	test	r9d, r9d
	jne	.label_1037
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebx, 1
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rdx, rsi
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_1033
	xor	edx, edx
	test	rdi, rdi
	je	.label_1049
	cmp	eax, 2
	jb	.label_1111
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_1112
	cmp	r13d, 0x2b
	jne	.label_1090
.label_1112:
	mov	r12, rsi
	mov	esi, 0x30
	jmp	.label_1089
.label_1230:
	test	r9d, r9d
	jne	.label_1037
	test	r12b, r12b
	je	.label_1119
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_1119:
	xor	eax, eax
	mov	r8b, 0x41
	jmp	.label_1067
.label_1231:
	cmp	r9d, 0x45
	je	.label_1037
	test	r12b, r12b
	je	.label_1123
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_1123:
	xor	eax, eax
	mov	r8b, 0x42
	jmp	.label_1067
.label_1232:
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_1126
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x43
	jmp	.label_1067
.label_1233:
	test	r9d, r9d
	jne	.label_1037
	mov	eax, OFFSET FLAT:.str.1_2
	mov	qword ptr [rsp + 0x50], rax
	mov	r10d, 0xffffffff
	jmp	.label_1133
.label_1234:
	test	r9d, r9d
	jne	.label_1037
	test	r13d, r13d
	jne	.label_1139
	test	r14d, r14d
	jns	.label_1139
	mov	eax, OFFSET FLAT:.str.2_1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13d, 0x2b
	mov	r10d, 4
	jmp	.label_1133
.label_1236:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 8]
	jmp	.label_1040
.label_1237:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	edi, 2
	mov	eax, dword ptr [rsp + 0x2c]
	mov	edx, eax
	jmp	.label_1052
.label_1238:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 4]
	jmp	.label_1040
.label_1239:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	cmp	r14d, -1
	je	.label_1023
	cmp	r14d, 8
	jg	.label_1038
	mov	esi, 9
	sub	esi, r14d
	mov	eax, 8
	sub	eax, r14d
	test	sil, 3
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	ebx, r14d
	je	.label_1164
	and	esi, 3
	neg	esi
	mov	edx, dword ptr [rsp + 0x4f0]
	mov	ebx, r14d
.label_1168:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x22
	add	edx, edi
	inc	ebx
	inc	esi
	jne	.label_1168
.label_1164:
	cmp	eax, 3
	jae	.label_1174
	mov	edi, r14d
	jmp	.label_1052
.label_1240:
	mov	dil, 1
.label_1258:
	xor	ebx, ebx
	test	r12b, r12b
	je	.label_1141
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
.label_1141:
	je	.label_1184
	mov	dil, 1
.label_1184:
	mov	r8b, 0x70
	mov	al, dil
	jmp	.label_1149
.label_1241:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax]
	jmp	.label_1040
.label_1242:
	mov	eax, OFFSET FLAT:.str.4_1
.label_1188:
	mov	qword ptr [rsp + 0x50], rax
.label_1133:
	mov	dword ptr [rsp + 0x40], r10d
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], r10d
	movzx	r8d, al
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r9d, r13d
	call	__strftime_internal_0
	mov	rdi, qword ptr [rsp + 0x68]
	test	r14d, r14d
	cmovns	ebx, r14d
	movsxd	rdx, ebx
	cmp	rax, rdx
	mov	rbx, rax
	cmovb	rbx, rdx
	mov	r12, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	r12, rsi
	cmp	rbx, r12
	jae	.label_1033
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1041
	cmp	rax, rdx
	jae	.label_1046
	movsxd	rcx, r14d
	sub	rcx, rax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r13d, 0x30
	je	.label_1050
	cmp	r13d, 0x2b
	jne	.label_1053
.label_1050:
	mov	esi, 0x30
	jmp	.label_1054
.label_1243:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	rdx, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rdx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rdx + 0x18]
	movsxd	rdx, eax
	jmp	.label_1058
.label_1244:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	rdx, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rdx + 0x18]
	mov	edx, dword ptr [rdx + 0x1c]
	lea	esi, [rax + 6]
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	lea	eax, [rdi + rax + 6]
	mov	edi, eax
	shr	edi, 0x1f
	sar	eax, 2
	add	eax, edi
	lea	edi, [rax*8]
	sub	edi, eax
	sub	esi, edi
	add	edx, 7
	sub	edx, esi
	movsxd	rdx, edx
.label_1058:
	imul	rax, rdx, -0x6db6db6d
	shr	rax, 0x20
	add	edx, eax
	mov	eax, edx
	shr	eax, 0x1f
	sar	edx, 2
	add	edx, eax
	jmp	.label_1040
.label_1245:
	cmp	r9d, 0x4f
	je	.label_1037
	xor	eax, eax
	mov	r8b, 0x58
	jmp	.label_1067
.label_1246:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1077
	cmp	r10d, 0x4f
	je	.label_1037
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x14]
	cmp	edx, 0xfffff894
	setl	sil
	add	edx, 0x76c
	mov	edi, 4
	jmp	.label_1059
.label_1247:
	mov	rdi, qword ptr [rsp + 0x30]
	call	strlen
	mov	rdi, qword ptr [rsp + 0x68]
	mov	r9, rax
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	r9, rax
	mov	rbx, r9
	cmovb	rbx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_1033
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1041
	cmp	r9, rax
	jae	.label_1159
	movsxd	r14, r14d
	sub	r14, r9
	mov	qword ptr [rsp + 0x50], r9
	cmp	r13d, 0x30
	je	.label_1105
	cmp	r13d, 0x2b
	jne	.label_1106
.label_1105:
	mov	esi, 0x30
	jmp	.label_1025
.label_1248:
	test	r9d, r9d
	jne	.label_1037
	test	r12b, r12b
	je	.label_1109
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_1109:
	xor	eax, eax
	mov	r8b, 0x61
	jmp	.label_1067
.label_1250:
	cmp	r9d, 0x4f
	je	.label_1037
	xor	eax, eax
	mov	r8b, 0x63
	jmp	.label_1067
.label_1251:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0xc]
	jmp	.label_1040
.label_1252:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0xc]
	jmp	.label_1016
.label_1253:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x1c]
	cmp	edx, -1
	setl	sil
	inc	edx
	mov	edi, 3
	jmp	.label_1125
.label_1254:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 8]
	jmp	.label_1016
.label_1255:
	mov	r10d, r9d
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x2c]
	mov	edx, eax
	je	.label_1037
.label_1016:
	test	r13d, r13d
	mov	eax, 0x5f
	cmove	r13d, eax
	jmp	.label_1040
.label_1256:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x10]
	cmp	edx, -1
	setl	sil
	inc	edx
	mov	edi, 2
	jmp	.label_1125
.label_1257:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_1033
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1041
	cmp	eax, 2
	jb	.label_1154
	mov	r12, rsi
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_1156
	cmp	r13d, 0x2b
	jne	.label_1147
.label_1156:
	mov	esi, 0x30
	jmp	.label_1161
.label_1259:
	mov	rax, qword ptr [rsp + 0x48]
	imul	edx, dword ptr [rax + 0x10], 0xb
	sar	edx, 5
	inc	edx
	mov	edi, 1
	xor	ebx, ebx
	xor	r8d, r8d
	xor	esi, esi
	mov	r10d, r9d
	jmp	.label_1027
.label_1260:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xb0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x4e8]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0x4a7]
	nop	dword ptr [rax + rax]
.label_1187:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	neg	eax
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_1187
	mov	r10d, 1
	xor	r8d, r8d
	jmp	.label_1029
.label_1261:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_1033
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1041
	cmp	eax, 2
	jb	.label_1044
	mov	r12, rsi
	movsxd	r14, r14d
	dec	r14
	cmp	r13d, 0x30
	je	.label_1162
	cmp	r13d, 0x2b
	jne	.label_1048
.label_1162:
	mov	esi, 0x30
	jmp	.label_1051
.label_1262:
	mov	rax, qword ptr [rsp + 0x48]
	mov	eax, dword ptr [rax + 0x18]
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	inc	edx
	mov	edi, 1
	mov	r10d, r9d
	jmp	.label_1052
.label_1263:
	mov	r10d, r9d
	cmp	r10d, 0x45
	je	.label_1037
	mov	rax, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [rax + 0x18]
	mov	edi, 1
	jmp	.label_1052
.label_1264:
	cmp	r9d, 0x4f
	je	.label_1037
	xor	eax, eax
	mov	r8b, 0x78
	jmp	.label_1067
.label_1265:
	mov	r10d, r9d
	cmp	r10d, 0x45
	jne	.label_1068
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x79
	jmp	.label_1067
.label_1046:
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1072
.label_1039:
	dec	r12d
	mov	eax, 0x16d
	test	r12b, 3
	jne	.label_1074
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	sar	rdx, 0x25
	mov	rdi, rax
	shr	rdi, 0x3f
	add	edx, edi
	imul	edx, edx, 0x64
	sar	rax, 0x27
	add	eax, edi
	imul	eax, eax, 0x190
	cmp	r12d, eax
	sete	al
	movzx	edi, al
	add	edi, 0x16d
	cmp	r12d, edx
	mov	eax, 0x16e
	cmove	eax, edi
.label_1074:
	lea	edx, [rax + rbx + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 2
	add	esi, edi
	lea	edi, [rsi*8]
	sub	edi, esi
	sub	edx, edi
	lea	eax, [rax + rbx + 3]
	sub	eax, edx
	mov	ebx, 0xffffffff
.label_1128:
	cmp	r11d, 0x47
	je	.label_1098
	cmp	r11d, 0x67
	jne	.label_1102
	movsxd	rax, r8d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	add	eax, edx
	imul	eax, eax, 0x64
	mov	edx, r8d
	sub	edx, eax
	add	edx, ebx
	movsxd	rdx, edx
	imul	rax, rdx, 0x51eb851f
	mov	rsi, rax
	shr	rsi, 0x3f
	sar	rax, 0x25
	add	eax, esi
	imul	eax, eax, 0x64
	sub	edx, eax
	mov	edi, 2
	jns	.label_1104
	mov	eax, 0xfffff894
	sub	eax, ebx
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	r8d, eax
	jmp	.label_1113
.label_1083:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, qword ptr [rsp + 0x68]
	jmp	.label_1117
.label_1126:
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	sil
	setg	bl
	imul	rdx, rax, 0x51eb851f
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x25
	add	edx, edi
	imul	edi, edx, 0x64
	cmp	eax, edi
	sets	al
	and	al, bl
	movzx	eax, al
	sub	edx, eax
	add	edx, 0x13
	mov	edi, 2
	jmp	.label_1059
.label_1068:
	mov	rax, qword ptr [rsp + 0x48]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	esi, edx, 0x64
	mov	edx, eax
	mov	edi, 2
	sub	edx, esi
	js	.label_1082
.label_1104:
	xor	esi, esi
	jmp	.label_1059
.label_1098:
	mov	eax, 0xfffff894
	sub	eax, ebx
	cmp	r8d, eax
	setl	sil
	lea	edx, [rbx + r8 + 0x76c]
	mov	edi, 4
	jmp	.label_1059
.label_1102:
	cdqe	
	imul	rdx, rax, -0x6db6db6d
	shr	rdx, 0x20
	add	eax, edx
	mov	edx, eax
	sar	edx, 2
	shr	eax, 0x1f
	lea	edx, [rdx + rax + 1]
.label_1040:
	mov	edi, 2
.label_1052:
	mov	esi, edx
	shr	esi, 0x1f
.label_1125:
	xor	ebx, ebx
	xor	r8d, r8d
.label_1027:
	cmp	r10d, 0x4f
	jne	.label_1148
	test	sil, sil
	jne	.label_1148
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, cl
	mov	rbx, rdi
	jmp	.label_1149
.label_1148:
	mov	r10, rdi
	mov	eax, edx
	neg	eax
	test	sil, sil
	cmove	eax, edx
	lea	r12, [rsp + 0x4a7]
	nop	
.label_1160:
	test	bl, 1
	je	.label_1020
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_1020:
	sar	ebx, 1
	mov	edi, eax
	mov	edx, 0xcccccccd
	imul	rdx, rdi
	shr	rdx, 0x23
	lea	edi, [rdx + rdx]
	lea	edi, [rdi + rdi*4]
	mov	ecx, eax
	sub	ecx, edi
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, edx
	ja	.label_1160
	test	ebx, ebx
	mov	eax, edx
	jne	.label_1160
.label_1029:
	mov	rdi, qword ptr [rsp + 0x68]
	cmp	r10d, r14d
	cmovl	r10d, r14d
	mov	qword ptr [rsp + 0x50], r10
	test	r8b, r8b
	je	.label_1166
	mov	r8b, 0x2b
.label_1166:
	test	sil, sil
	mov	r9b, 0x2d
	jne	.label_1062
	mov	r9b, r8b
.label_1062:
	cmp	r13d, 0x2d
	mov	rsi, qword ptr [rsp + 0x78]
	jne	.label_1114
	test	r9b, r9b
	je	.label_1060
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_1033
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1093
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_1015
	test	al, al
	jne	.label_1015
	movsxd	rax, r14d
	mov	qword ptr [rsp + 0x20], rax
	lea	rdx, [rax - 1]
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x40], r9b
	mov	qword ptr [rsp + 0x68], rdi
	call	memset
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi + rax - 1]
	jmp	.label_1015
.label_1114:
	mov	rax, qword ptr [rsp + 0x50]
	cdqe	
	mov	rcx, r12
	lea	rdx, [rsp + 0x4a7]
	sub	rcx, rdx
	mov	dl, r9b
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_1035
	cmp	r13d, 0x5f
	jne	.label_1043
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x70]
	sub	rax, rsi
	cmp	rdx, rax
	jae	.label_1033
	xor	r10d, r10d
	test	rdi, rdi
	mov	r8d, 0
	je	.label_1180
	mov	esi, 0x20
	mov	byte ptr [rsp + 0x40], r9b
	mov	qword ptr [rsp + 0x20], rdx
	call	memset
	mov	rdx, qword ptr [rsp + 0x20]
	xor	r10d, r10d
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x68]
	add	rax, rdx
	mov	r8, rax
.label_1180:
	add	rsi, rdx
	sub	r14d, ebx
	cmovg	r10d, r14d
	test	r9b, r9b
	je	.label_1061
	xor	eax, eax
	test	r10d, r10d
	cmovns	eax, r10d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_1033
	xor	edi, edi
	test	r8, r8
	je	.label_1045
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_1101
	mov	byte ptr [rsp + 0x40], r9b
	test	al, al
	jne	.label_1070
	movsxd	r14, r10d
	mov	qword ptr [rsp + 0x68], r10
	lea	rdx, [r14 - 1]
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
	mov	rdi, r8
	mov	qword ptr [rsp + 0x20], r8
	call	memset
	mov	r8, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x78]
	lea	r8, [r8 + r14 - 1]
	jmp	.label_1079
.label_1035:
	test	r9b, r9b
	je	.label_1060
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rbx, rcx
	jae	.label_1033
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1093
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_1015
	test	al, al
	jne	.label_1015
	mov	byte ptr [rsp + 0x40], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	je	.label_1099
	cmp	r13d, 0x2b
	jne	.label_1165
.label_1099:
	mov	esi, 0x30
	jmp	.label_1085
.label_1043:
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rax, rcx
	jae	.label_1033
	test	r9b, r9b
	je	.label_1108
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	r8, eax
	cmp	r8d, 1
	mov	edx, 1
	cmova	rdx, r8
	cmp	rdx, rcx
	jae	.label_1033
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1096
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_1116
	test	al, al
	jne	.label_1116
	mov	qword ptr [rsp + 0x20], rdx
	mov	byte ptr [rsp + 0x40], r9b
	movsxd	rax, r14d
	dec	rax
	cmp	r13d, 0x30
	je	.label_1115
	cmp	r13d, 0x2b
	jne	.label_1122
.label_1115:
	mov	esi, 0x30
	jmp	.label_1124
.label_1061:
	mov	rdi, r8
	mov	r14d, r10d
	jmp	.label_1060
.label_1077:
	mov	r9d, r10d
	xor	eax, eax
	mov	r8b, 0x59
.label_1067:
	xor	ebx, ebx
.label_1149:
	mov	dword ptr [rsp + 0x50], eax
	mov	r12, qword ptr [rsp + 0x68]
	mov	word ptr [rsp + 0x48b], 0x2520
	test	r9d, r9d
	lea	rcx, [rsp + 0x48d]
	je	.label_1129
	mov	byte ptr [rsp + 0x48d], r9b
	lea	rcx, [rsp + 0x48e]
.label_1129:
	mov	byte ptr [rcx], r8b
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x80]
	lea	rdx, [rsp + 0x48b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x48]
	call	strftime
	test	rax, rax
	je	.label_1145
	mov	r8, rbx
	lea	r9, [rax - 1]
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	r9, rax
	mov	rdx, r9
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	rdx, rcx
	mov	ebx, dword ptr [rsp + 0x50]
	jae	.label_1033
	xor	ecx, ecx
	mov	rdi, r12
	test	rdi, rdi
	je	.label_1153
	cmp	r9, rax
	setae	al
	mov	r12, rdx
	test	r8d, r8d
	jne	.label_1155
	test	al, al
	jne	.label_1155
	movsxd	r14, r14d
	sub	r14, r9
	mov	qword ptr [rsp + 0x20], r9
	cmp	r13d, 0x30
	je	.label_1158
	cmp	r13d, 0x2b
	jne	.label_1036
.label_1158:
	mov	esi, 0x30
	jmp	.label_1042
.label_1145:
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r12
	jmp	.label_1117
.label_1036:
	mov	esi, 0x20
.label_1042:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	rdi, rbx
	mov	r9, qword ptr [rsp + 0x20]
	mov	ebx, dword ptr [rsp + 0x50]
.label_1155:
	test	bl, 1
	jne	.label_1167
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_1169
	lea	rsi, [rsp + 0x81]
	mov	rdx, r9
	mov	r14, rdi
	mov	rbx, r9
	call	memcpy
	mov	r9, rbx
	mov	rdi, r14
	jmp	.label_1022
.label_1167:
	test	r9, r9
	je	.label_1022
	mov	r14, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	r9, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	lea	ecx, [rdx + 3]
	mov	r8, rdx
	add	r8, -2
	test	cl, 3
	mov	rcx, r9
	je	.label_1185
	lea	esi, [rdx + 3]
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	
.label_1064:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_1064
.label_1185:
	cmp	r8, 3
	jb	.label_1022
	nop	word ptr cs:[rax + rax]
.label_1030:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7f]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_1030
	jmp	.label_1022
.label_1169:
	test	r9, r9
	je	.label_1022
	mov	r14, rdi
	mov	rbx, r9
	call	__ctype_toupper_loc
	mov	r9, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	lea	ecx, [rdx + 3]
	mov	r8, rdx
	add	r8, -2
	test	cl, 3
	mov	rcx, r9
	je	.label_1047
	lea	esi, [rdx + 3]
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	word ptr [rax + rax]
.label_1057:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_1057
.label_1047:
	cmp	r8, 3
	jb	.label_1022
.label_1063:
	movzx	edx, byte ptr [rsp + rcx + 0x80]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7f]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7e]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [rsp + rcx + 0x7d]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_1063
.label_1022:
	add	rdi, r9
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, r12
	jmp	.label_1153
.label_1159:
	mov	r14, qword ptr [rsp + 0x30]
	jmp	.label_1073
.label_1053:
	mov	esi, 0x20
.label_1054:
	mov	rdx, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x18]
	mov	rdi, r14
.label_1072:
	mov	edx, dword ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	setne	al
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	dword ptr [rsp + 0x10], ecx
	mov	rcx, qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], edx
	movzx	r8d, al
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r14, rdi
	mov	r9d, r13d
	call	__strftime_internal_0
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, r14
	mov	rcx, rax
	jmp	.label_1094
.label_1088:
	mov	rax, qword ptr [rsp + 0x30]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	sete	sil
.label_1084:
	cmp	rbx, 3
	mov	r10d, r9d
	ja	.label_1037
	movsxd	rdx, r8d
	imul	rdi, rdx, -0x77777777
	shr	rdi, 0x20
	add	edi, r8d
	mov	r9, rbx
	mov	ebx, edi
	shr	ebx, 0x1f
	sar	edi, 5
	add	edi, ebx
	imul	rdx, rdx, -0x6e5d4c3b
	shr	rdx, 0x20
	add	edx, r8d
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 0xb
	add	edx, ebx
	movsxd	rbx, edi
	imul	rdi, rbx, -0x77777777
	shr	rdi, 0x20
	add	edi, ebx
	mov	eax, edi
	shr	eax, 0x1f
	sar	edi, 5
	add	edi, eax
	imul	eax, edi, 0x3c
	imul	edi, ebx, 0x3c
	sub	ebx, eax
	sub	r8d, edi
	jmp	qword ptr [(r9 * 8) + label_1100]
.label_1270:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	edi, 5
.label_1137:
	mov	r8b, 1
	xor	ebx, ebx
	jmp	.label_1027
.label_1037:
	lea	rbx, [rbp + 1]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1120:
	inc	r12
	movzx	eax, byte ptr [rbx - 1]
	dec	rbx
	cmp	eax, 0x25
	jne	.label_1120
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	r8, ecx
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0x78]
	sub	rcx, rsi
	cmp	r8, rcx
	mov	rdi, qword ptr [rsp + 0x68]
	jae	.label_1033
	test	rdi, rdi
	mov	ecx, 0
	je	.label_1130
	movsxd	rdx, r12d
	cmp	r12d, eax
	jae	.label_1132
	movsxd	r14, r14d
	sub	r14, rdx
	cmp	r13d, 0x30
	je	.label_1134
	cmp	r13d, 0x2b
	jne	.label_1136
.label_1134:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], r8
	mov	esi, 0x30
	jmp	.label_1138
.label_1136:
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], r8
	mov	esi, 0x20
.label_1138:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	add	rdi, r14
	mov	rsi, qword ptr [rsp + 0x78]
	mov	r8, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
.label_1132:
	mov	qword ptr [rsp + 0x50], r8
	mov	qword ptr [rsp + 0x78], rsi
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	jne	.label_1146
	mov	rsi, rbx
	mov	r14, rdi
	mov	rbx, rdx
	call	memcpy
	mov	r10, rbx
	mov	r9, r14
	mov	r8, qword ptr [rsp + 0x50]
	jmp	.label_1150
.label_1146:
	mov	r13, rdi
	mov	r14, rdx
	call	__ctype_toupper_loc
	mov	r10, r14
	mov	r9, r13
	movsxd	rcx, r12d
	lea	r8, [rcx - 1]
	test	cl, 3
	mov	rcx, r10
	je	.label_1172
	and	r12d, 3
	neg	r12
	mov	rcx, r10
	nop	word ptr [rax + rax]
.label_1163:
	movzx	esi, byte ptr [rbx + rcx - 1]
	mov	rdi, qword ptr [rax]
	mov	dl, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rcx - 1], dl
	dec	rcx
	inc	r12
	jne	.label_1163
.label_1172:
	cmp	r8, 3
	mov	r8, qword ptr [rsp + 0x50]
	jb	.label_1150
	nop	word ptr cs:[rax + rax]
.label_1095:
	movzx	edx, byte ptr [rbx + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 1], dl
	movzx	edx, byte ptr [rbx + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 2], dl
	movzx	edx, byte ptr [rbx + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 3], dl
	movzx	edx, byte ptr [rbx + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [r9 + rcx - 4], dl
	add	rcx, -4
	jne	.label_1095
.label_1150:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x78]
.label_1130:
	add	rsi, r8
	jmp	.label_1069
.label_1139:
	xor	eax, eax
	mov	r10d, r14d
	add	r10d, -6
	cmovs	r10d, eax
	mov	eax, OFFSET FLAT:.str.2_1
	jmp	.label_1188
.label_1023:
	mov	edi, 9
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	r14d, 9
	jmp	.label_1052
.label_1082:
	mov	esi, edx
	neg	esi
	add	edx, 0x64
	cmp	eax, 0xfffff894
.label_1113:
	cmovl	edx, esi
	xor	esi, esi
.label_1059:
	mov	eax, dword ptr [rsp + 0x3c]
	mov	dword ptr [rsp + 0x3c], eax
	test	r13d, r13d
	cmove	r13d, eax
	xor	ebx, ebx
	cmp	r13d, 0x2b
	mov	r8d, 0
	jne	.label_1027
	mov	rax, rdi
	cmp	eax, 2
	mov	r8d, 0x63
	mov	edi, 0x270f
	cmove	edi, r8d
	cmp	edi, edx
	setb	r9b
	cmp	eax, r14d
	mov	rdi, rax
	setl	r8b
	or	r8b, r9b
	jmp	.label_1027
.label_1273:
	test	r8d, r8d
	je	.label_1151
.label_1272:
	imul	edx, edx, 0x2710
	imul	eax, ebx, 0x64
	add	edx, r8d
	add	edx, eax
	mov	edi, 9
	mov	r8b, 1
	mov	ebx, 0x14
	jmp	.label_1027
.label_1038:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	edx, eax
	mov	edi, r14d
	jmp	.label_1052
.label_1101:
	mov	qword ptr [rsp + 0x68], r10
	jmp	.label_1055
.label_1070:
	mov	qword ptr [rsp + 0x68], r10
.label_1079:
	mov	r9b, byte ptr [rsp + 0x40]
.label_1055:
	mov	byte ptr [r8], r9b
	inc	r8
	mov	rdi, r8
	mov	r10, qword ptr [rsp + 0x68]
.label_1045:
	add	rsi, rbx
	mov	r14d, r10d
	jmp	.label_1060
.label_1106:
	mov	esi, 0x20
.label_1025:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdi, r13
	mov	r9, qword ptr [rsp + 0x50]
.label_1073:
	test	r12b, r12b
	je	.label_1065
	test	r9, r9
	je	.label_1066
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_tolower_loc
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	je	.label_1144
	mov	esi, r9d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	mov	rdi, r13
	nop	dword ptr [rax + rax]
.label_1075:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_1075
	jmp	.label_1078
.label_1065:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_1080
	test	r9, r9
	je	.label_1066
	mov	r12, rbx
	mov	r13, rdi
	mov	rbx, r9
	call	__ctype_toupper_loc
	mov	r9, rbx
	lea	r8, [r9 - 1]
	test	r9b, 3
	je	.label_1086
	mov	esi, r9d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	mov	rdi, r13
.label_1092:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rbx, qword ptr [rax]
	mov	bl, byte ptr [rbx + rdx*4]
	mov	byte ptr [rdi + rcx - 1], bl
	dec	rcx
	inc	rsi
	jne	.label_1092
	jmp	.label_1097
.label_1147:
	mov	esi, 0x20
.label_1161:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_1154:
	mov	byte ptr [rdi], 0xa
	jmp	.label_1103
.label_1048:
	mov	esi, 0x20
.label_1051:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	add	r13, r14
	mov	rsi, r12
	mov	rdi, r13
.label_1044:
	mov	byte ptr [rdi], 9
.label_1103:
	inc	rdi
	mov	rcx, rdi
	add	rsi, rbx
	jmp	.label_1069
.label_1165:
	mov	esi, 0x20
.label_1085:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x20], rdx
	call	memset
	mov	rax, qword ptr [rsp + 0x68]
	add	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, rax
	mov	r9b, byte ptr [rsp + 0x40]
.label_1015:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_1093:
	add	rsi, rbx
	mov	rdi, rcx
	jmp	.label_1060
.label_1144:
	mov	rcx, r9
	mov	rdi, r13
.label_1078:
	cmp	r8, 3
	mov	rbx, r12
	jb	.label_1066
	nop	word ptr cs:[rax + rax]
.label_1121:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_1121
	jmp	.label_1066
.label_1080:
	mov	rsi, r14
	mov	rdx, r9
	mov	r13, rdi
	mov	r12, rbx
	mov	rbx, r9
	call	memcpy
	mov	r9, rbx
	mov	rbx, r12
	mov	rdi, r13
	jmp	.label_1066
.label_1174:
	mov	eax, 9
	sub	eax, ebx
	nop	word ptr cs:[rax + rax]
.label_1143:
	movsxd	rdx, edx
	imul	rdx, rdx, 0x68db8bad
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x2c
	add	edx, esi
	add	eax, -4
	jne	.label_1143
	mov	edi, r14d
	jmp	.label_1052
.label_1122:
	mov	esi, 0x20
.label_1124:
	mov	rdx, rax
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rdi
	call	memset
	add	r14, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdi, r14
	mov	r9b, byte ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x20]
.label_1116:
	mov	byte ptr [rdi], r9b
	inc	rdi
	mov	rcx, rdi
.label_1096:
	add	rsi, rdx
	mov	rdi, rcx
.label_1108:
	xor	r14d, r14d
	test	rdi, rdi
	movsxd	rcx, ebx
	mov	ebx, 0
	je	.label_1157
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	mov	qword ptr [rsp + 0x68], rcx
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x78]
	add	rbx, rcx
.label_1157:
	add	rsi, rcx
	mov	rdi, rbx
.label_1060:
	lea	rbx, [rsp + 0x4a7]
	sub	rbx, r12
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x70]
	sub	rcx, rsi
	cmp	rdx, rcx
	jae	.label_1033
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_1153
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x50]
	test	ecx, ecx
	jne	.label_1131
	test	al, al
	jne	.label_1181
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r13d, 0x30
	je	.label_1182
	cmp	r13d, 0x2b
	jne	.label_1028
.label_1182:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x30
	jmp	.label_1186
.label_1153:
	add	rsi, rdx
	jmp	.label_1069
.label_1131:
	mov	qword ptr [rsp + 0x78], rsi
	jmp	.label_1017
.label_1181:
	mov	qword ptr [rsp + 0x78], rsi
	jmp	.label_1017
.label_1028:
	mov	qword ptr [rsp + 0x78], rsi
	mov	esi, 0x20
.label_1186:
	mov	qword ptr [rsp + 0x68], rdx
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rdi, r13
	add	rdi, r14
.label_1017:
	mov	r13, rdx
	mov	rax, qword ptr [rsp + 0x60]
	test	al, al
	je	.label_1026
	lea	rax, [rsp + 0x4a7]
	cmp	rax, r12
	je	.label_1031
	mov	r14, rdi
	call	__ctype_toupper_loc
	mov	rdi, r14
	lea	rcx, [rsp + 0x4a7]
	sub	ecx, r12d
	lea	r8, [rsp + 0x4a6]
	sub	r8, r12
	test	cl, 3
	mov	rcx, rbx
	mov	r9, rbx
	je	.label_1110
	lea	rsi, [rsp + 0x4a7]
	sub	esi, r12d
	and	esi, 3
	neg	rsi
	mov	rcx, r9
	nop	word ptr cs:[rax + rax]
.label_1176:
	movzx	ebx, byte ptr [r12 + rcx - 1]
	mov	rdx, qword ptr [rax]
	mov	dl, byte ptr [rdx + rbx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	dec	rcx
	inc	rsi
	jne	.label_1176
.label_1110:
	cmp	r8, 3
	mov	rbx, r9
	jb	.label_1031
	nop	word ptr cs:[rax + rax]
.label_1178:
	movzx	edx, byte ptr [r12 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r12 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r12 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r12 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_1178
	jmp	.label_1031
.label_1026:
	mov	rsi, r12
	mov	rdx, rbx
	mov	r14, rdi
	call	memcpy
	mov	rdi, r14
.label_1031:
	add	rdi, rbx
	mov	rcx, rdi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, r13
	add	rsi, rdx
	jmp	.label_1069
.label_1151:
	test	ebx, ebx
	je	.label_1071
.label_1271:
	imul	edx, edx, 0x64
	add	edx, ebx
	mov	edi, 6
	mov	r8b, 1
	mov	ebx, 4
	jmp	.label_1027
.label_1090:
	mov	r12, rsi
	mov	esi, 0x20
.label_1089:
	mov	rdx, r14
	mov	r13, rdi
	call	memset
	mov	rdi, r13
	mov	rsi, r12
	add	rdi, r14
	mov	cl, byte ptr [rbp]
.label_1111:
	mov	byte ptr [rdi], cl
	jmp	.label_1081
.label_1086:
	mov	rcx, r9
	mov	rdi, r13
.label_1097:
	cmp	r8, 3
	mov	rbx, r12
	jb	.label_1066
.label_1087:
	movzx	edx, byte ptr [r14 + rcx - 1]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 1], dl
	movzx	edx, byte ptr [r14 + rcx - 2]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 2], dl
	movzx	edx, byte ptr [r14 + rcx - 3]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 3], dl
	movzx	edx, byte ptr [r14 + rcx - 4]
	mov	rsi, qword ptr [rax]
	mov	dl, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rcx - 4], dl
	add	rcx, -4
	jne	.label_1087
.label_1066:
	mov	qword ptr [rsp + 0x30], r14
	add	rdi, r9
	mov	rcx, rdi
.label_1094:
	mov	rsi, qword ptr [rsp + 0x78]
.label_1041:
	add	rsi, rbx
	nop	dword ptr [rax]
.label_1069:
	mov	rdi, rcx
.label_1117:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	r14d, 0xffffffff
	test	al, al
	jne	.label_1127
.label_1135:
	cmp	qword ptr [rsp + 0x70], 0
	je	.label_1107
	test	rdi, rdi
	je	.label_1107
	mov	byte ptr [rdi], 0
	jmp	.label_1107
.label_1033:
	xor	esi, esi
.label_1107:
	mov	rax, rsi
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]