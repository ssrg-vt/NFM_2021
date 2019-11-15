	.section	.text
	.align	16
	#Procedure 0x401ad0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_8
	jmp	.label_7
.label_7:
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
	jmp	.label_9
.label_8:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.3
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.5
	movabs	rdx, OFFSET FLAT:.str.6
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x2c], eax
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401c10

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
.label_15:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_14
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_14:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_13
	jmp	.label_12
.label_13:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_15
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_10
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
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
	je	.label_11
	movabs	rsi, OFFSET FLAT:.str.28
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_11
	movabs	rdi, OFFSET FLAT:.str.29
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_11:
	movabs	rdi, OFFSET FLAT:.str.30
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.31
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.32
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
	#Procedure 0x401db0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	eax, OFFSET FLAT:.str_0
	mov	esi, eax
	mov	edi, 6
	call	setlocale
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, edi
	mov	edi, OFFSET FLAT:.str.12
	mov	ecx, edi
	mov	rdi, rsi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x20], rax
	call	bindtextdomain
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	call	textdomain
	mov	edx, OFFSET FLAT:close_stdout
	mov	edi, edx
	mov	qword ptr [rbp - 0x30], rax
	call	atexit
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	r8,  qword ptr [word ptr [rip + Version]]
	mov	rcx, rsp
	mov	qword ptr [rcx + 0x20], 0
	mov	qword ptr [word ptr [rcx + 24]], OFFSET FLAT:.str.16
	mov	qword ptr [word ptr [rcx + 16]], OFFSET FLAT:.str.15
	mov	qword ptr [word ptr [rcx + 8]], OFFSET FLAT:.str.14
	mov	qword ptr [word ptr [rcx]], OFFSET FLAT:usage
	mov	edx, OFFSET FLAT:.str.9
	mov	r9d, OFFSET FLAT:.str.17
	mov	ecx, r9d
	xor	r9d, r9d
	mov	r10b, r9b
	mov	r9d, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	al, r10b
	call	parse_gnu_standard_options_only
	mov	edi, dword ptr [rbp - 8]
	mov	r9d,  dword ptr [dword ptr [rip + optind]]
	sub	edi, r9d
	mov	dword ptr [rbp - 0x38], edi
	je	.label_20
	jmp	.label_16
.label_16:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_18
	jmp	.label_17
.label_20:
	movabs	rdi, OFFSET FLAT:.str.5
	mov	esi, 1
	call	uptime
	jmp	.label_19
.label_18:
	xor	esi, esi
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	uptime
	jmp	.label_19
.label_17:
	movabs	rdi, OFFSET FLAT:.str.17_0
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_19:
	xor	eax, eax
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f40

	.globl uptime
	.type uptime, @function
uptime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x18]
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsi, rax
	call	read_utmp
	cmp	eax, 0
	je	.label_21
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x24], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x24]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_21:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_uptime
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fc0

	.globl print_uptime
	.type print_uptime, @function
print_uptime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20e0
	movabs	rax, OFFSET FLAT:.str.34
	movabs	rcx, OFFSET FLAT:.str.35
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	rdi, rax
	mov	rsi, rcx
	call	fopen
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_25
	mov	esi, 0x2000
	lea	rdi, [rbp - 0x2070]
	mov	rdx, qword ptr [rbp - 0x70]
	call	fgets_unlocked
	lea	rdx, [rbp - 0x2070]
	mov	qword ptr [rbp - 0x2078], rax
	mov	rax, qword ptr [rbp - 0x2078]
	cmp	rax, rdx
	jne	.label_33
	lea	rsi, [rbp - 0x2080]
	lea	rdi, [rbp - 0x2070]
	call	c_strtod
	lea	rsi, [rbp - 0x2070]
	movsd	qword ptr [rbp - 0x2088], xmm0
	cmp	rsi, qword ptr [rbp - 0x2080]
	je	.label_41
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x2088]
	ucomisd	xmm1, xmm0
	jb	.label_28
	movsd	xmm0,  qword ptr [word ptr [label_27]]
	ucomisd	xmm0, qword ptr [rbp - 0x2088]
	jbe	.label_28
	movsd	xmm0, qword ptr [rbp - 0x2088]
	movsd	qword ptr [rbp - 0x2090], xmm0
	jmp	.label_32
.label_28:
	movsd	xmm0,  qword ptr [word ptr [label_37]]
	movsd	qword ptr [rbp - 0x2090], xmm0
	jmp	.label_32
.label_32:
	movsd	xmm0, qword ptr [rbp - 0x2090]
	cvttsd2si	rax, xmm0
	mov	qword ptr [rbp - 0x30], rax
.label_41:
	jmp	.label_33
.label_33:
	mov	rdi, qword ptr [rbp - 0x70]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x2094], eax
.label_25:
	jmp	.label_30
.label_30:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	je	.label_46
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x2095], cl
	je	.label_29
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	cmp	edx, 7
	mov	byte ptr [rbp - 0x2096], al
	je	.label_34
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x2096], cl
	jmp	.label_34
.label_34:
	mov	al, byte ptr [rbp - 0x2096]
	mov	byte ptr [rbp - 0x2095], al
.label_29:
	mov	al, byte ptr [rbp - 0x2095]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	add	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rdx]
	cmp	ecx, 2
	jne	.label_40
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rax, dword ptr [rax + 0x154]
	mov	qword ptr [rbp - 0x20], rax
.label_40:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x180
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_30
.label_46:
	xor	eax, eax
	mov	edi, eax
	call	time
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_35
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_38
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x209c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x209c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_38:
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_35:
	lea	rdi, [rbp - 0x28]
	mov	eax, 0x3c
	mov	ecx, eax
	mov	eax, 0xe10
	mov	edx, eax
	mov	eax, 0x15180
	mov	esi, eax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20a8], rdx
	cqo	
	idiv	rsi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	imul	rsi, qword ptr [rbp - 0x38], 0x15180
	sub	rax, rsi
	cqo	
	mov	rsi, qword ptr [rbp - 0x20a8]
	idiv	rsi
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r8d
	mov	rax, qword ptr [rbp - 0x30]
	imul	r9, qword ptr [rbp - 0x38], 0x15180
	sub	rax, r9
	imul	r8d, dword ptr [rbp - 0x3c], 0xe10
	movsxd	r9, r8d
	sub	rax, r9
	cqo	
	idiv	rcx
	mov	r8d, eax
	mov	dword ptr [rbp - 0x40], r8d
	call	localtime
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_24
	movabs	rdi, OFFSET FLAT:.str.37
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x20b0], rax
	call	gettext
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x20b0]
	mov	rsi, rax
	call	fprintftime
	mov	qword ptr [rbp - 0x20b8], rax
	jmp	.label_39
.label_24:
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20bc], eax
.label_39:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_45
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20c0], eax
	jmp	.label_31
.label_45:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	jge	.label_43
	mov	rdi, qword ptr [rbp - 0x38]
	call	select_plural
	movabs	rdi, OFFSET FLAT:.str.40
	movabs	rsi, OFFSET FLAT:.str.41
	mov	rdx, rax
	call	ngettext
	mov	rsi, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20c4], eax
	jmp	.label_44
.label_43:
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	esi, dword ptr [rbp - 0x3c]
	mov	edx, dword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20c8], eax
.label_44:
	jmp	.label_31
.label_31:
	mov	rdi, qword ptr [rbp - 0x18]
	call	select_plural
	movabs	rdi, OFFSET FLAT:.str.43
	movabs	rsi, OFFSET FLAT:.str.44
	mov	rdx, rax
	call	ngettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	esi, 3
	lea	rdi, [rbp - 0x60]
	mov	dword ptr [rbp - 0x20cc], eax
	call	getloadavg
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], -1
	jne	.label_47
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20d0], eax
	jmp	.label_22
.label_47:
	cmp	dword ptr [rbp - 0x64], 0
	jle	.label_26
	movabs	rdi, OFFSET FLAT:.str.45
	call	gettext
	movsd	xmm0, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	al, 1
	call	printf
	mov	dword ptr [rbp - 0x20d4], eax
.label_26:
	cmp	dword ptr [rbp - 0x64], 1
	jle	.label_36
	movabs	rdi, OFFSET FLAT:.str.46
	movsd	xmm0, qword ptr [rbp - 0x58]
	mov	al, 1
	call	printf
	mov	dword ptr [rbp - 0x20d8], eax
.label_36:
	cmp	dword ptr [rbp - 0x64], 2
	jle	.label_42
	movabs	rdi, OFFSET FLAT:.str.46
	movsd	xmm0, qword ptr [rbp - 0x50]
	mov	al, 1
	call	printf
	mov	dword ptr [rbp - 0x20dc], eax
.label_42:
	cmp	dword ptr [rbp - 0x64], 0
	jle	.label_23
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20e0], eax
.label_23:
	jmp	.label_22
.label_22:
	add	rsp, 0x20e0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024b0

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	ja	.label_48
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_49
.label_48:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_49:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402500

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	call	c_locale
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_51
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_50
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_50:
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_52
.label_51:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	strtod_l
	movsd	qword ptr [rbp - 0x20], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 8], xmm0
.label_52:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402580

	.globl c_locale
	.type c_locale, @function
c_locale:
	push	rbp
	mov	rbp, rsp
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	cmp	rax, 0
	jne	.label_53
	mov	edi, 0x1fbf
	movabs	rsi, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edx, eax
	call	newlocale
	mov	qword ptr [word ptr [c_locale_cache]],  rax
.label_53:
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025e0
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
	#Procedure 0x402600

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_56
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_58
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_56
.label_58:
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_55
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_57
.label_55:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_57:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_56:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_54
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_54:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026f0

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	r9d, 0xffffffff
	lea	r10, [rbp - 0x25]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	byte ptr [rbp - 0x25], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x30], rcx
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], r8d
	mov	r8d, eax
	mov	qword ptr [rsp], r10
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp + 8], r10
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0xb40
	mov	al, cl
	mov	ecx, dword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [rbp - 0x3c], r9d
	mov	qword ptr [rbp - 0x48], r11
	mov	qword ptr [rbp - 0x50], r10
	mov	dword ptr [rbp - 0x54], ecx
	mov	qword ptr [rbp - 0x60], -1
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rdx + 8]
	mov	dword ptr [rbp - 0x64], ecx
	mov	qword ptr [rbp - 0x78], 0
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rdx
	mov	qword ptr [rbp - 0x70], 0
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x30]
	mov	qword ptr [rbp - 0x70], rdx
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_562
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x70], rax
.label_562:
	cmp	dword ptr [rbp - 0x64], 0xc
	jle	.label_595
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_66
.label_595:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_60
	mov	dword ptr [rbp - 0x64], 0xc
.label_60:
	jmp	.label_66
.label_66:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x88], rax
.label_597:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_71
	mov	dword ptr [rbp - 0x8c], 0
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	byte ptr [rbp - 0xf1], 0
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_76
	jmp	.label_103
.label_103:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_105
	xor	eax, eax
	mov	dword ptr [rbp - 0x83c], eax
	jmp	.label_114
.label_105:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x83c], eax
.label_114:
	mov	eax, dword ptr [rbp - 0x83c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	jae	.label_121
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x848], rax
	jmp	.label_134
.label_121:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x848], rax
.label_134:
	mov	rax, qword ptr [rbp - 0x848]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_145
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_145:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_161
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_167
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	jae	.label_167
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_177
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_184
.label_177:
	jmp	.label_139
.label_139:
	mov	qword ptr [rbp - 0x128], 0
.label_202:
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x120]
	jae	.label_193
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x84c], eax
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 1
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_202
.label_193:
	jmp	.label_207
.label_207:
	jmp	.label_208
.label_184:
	jmp	.label_210
.label_210:
	mov	qword ptr [rbp - 0x130], 0
.label_222:
	mov	rax, qword ptr [rbp - 0x130]
	cmp	rax, qword ptr [rbp - 0x120]
	jae	.label_216
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x850], eax
	mov	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_222
.label_216:
	jmp	.label_230
.label_230:
	jmp	.label_208
.label_208:
	jmp	.label_167
.label_167:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	edi, byte ptr [rax]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x854], eax
.label_161:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_241
.label_76:
	jmp	.label_246
.label_246:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x858], edx
	mov	dword ptr [rbp - 0x85c], esi
	je	.label_494
	jmp	.label_260
.label_260:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x860], eax
	je	.label_263
	jmp	.label_270
.label_270:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x864], eax
	je	.label_263
	jmp	.label_280
.label_280:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x868], eax
	je	.label_263
	jmp	.label_285
.label_285:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x86c], eax
	je	.label_287
	jmp	.label_268
.label_268:
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x870], eax
	jne	.label_293
	jmp	.label_263
.label_263:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_246
.label_287:
	mov	byte ptr [rbp - 0xe2], 1
	jmp	.label_246
.label_494:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_246
.label_293:
	jmp	.label_305
.label_305:
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_307
	mov	dword ptr [rbp - 0x3c], 0
.label_514:
	cmp	dword ptr [rbp - 0x3c], 0xccccccc
	jg	.label_377
	cmp	dword ptr [rbp - 0x3c], 0xccccccc
	jne	.label_315
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_315
.label_377:
	mov	dword ptr [rbp - 0x3c], 0x7fffffff
	jmp	.label_454
.label_315:
	imul	eax, dword ptr [rbp - 0x3c], 0xa
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	add	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x3c], eax
.label_454:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_514
	jmp	.label_307
.label_307:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x874], ecx
	mov	dword ptr [rbp - 0x878], edx
	je	.label_342
	jmp	.label_350
.label_350:
	mov	eax, dword ptr [rbp - 0x874]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x87c], eax
	jne	.label_351
	jmp	.label_342
.label_342:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_359
.label_351:
	mov	dword ptr [rbp - 0x90], 0
.label_359:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x880], ecx
	je	.label_368
	jmp	.label_374
.label_374:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x25
	mov	dword ptr [rbp - 0x884], eax
	je	.label_376
	jmp	.label_317
.label_317:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x888], eax
	je	.label_380
	jmp	.label_384
.label_384:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x88c], eax
	je	.label_385
	jmp	.label_386
.label_386:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x42
	mov	dword ptr [rbp - 0x890], eax
	je	.label_389
	jmp	.label_394
.label_394:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x894], eax
	je	.label_395
	jmp	.label_399
.label_399:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x898], eax
	je	.label_402
	jmp	.label_410
.label_410:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x46
	mov	dword ptr [rbp - 0x89c], eax
	je	.label_411
	jmp	.label_417
.label_417:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x8a0], eax
	je	.label_420
	jmp	.label_424
.label_424:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x8a4], eax
	je	.label_425
	jmp	.label_432
.label_432:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x49
	mov	dword ptr [rbp - 0x8a8], eax
	je	.label_433
	jmp	.label_440
.label_440:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8ac], eax
	je	.label_442
	jmp	.label_445
.label_445:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x8b0], eax
	je	.label_446
	jmp	.label_455
.label_455:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x8b4], eax
	je	.label_458
	jmp	.label_464
.label_464:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x8b8], eax
	je	.label_465
	jmp	.label_467
.label_467:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x8bc], eax
	je	.label_468
	jmp	.label_475
.label_475:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x8c0], eax
	je	.label_478
	jmp	.label_484
.label_484:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x55
	mov	dword ptr [rbp - 0x8c4], eax
	je	.label_485
	jmp	.label_329
.label_329:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x56
	mov	dword ptr [rbp - 0x8c8], eax
	je	.label_420
	jmp	.label_492
.label_492:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x8cc], eax
	je	.label_495
	jmp	.label_502
.label_502:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x8d0], eax
	je	.label_505
	jmp	.label_508
.label_508:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x8d4], eax
	je	.label_511
	jmp	.label_516
.label_516:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x8d8], eax
	je	.label_518
	jmp	.label_526
.label_526:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x8dc], eax
	je	.label_527
	jmp	.label_529
.label_529:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x8e0], eax
	je	.label_530
	jmp	.label_534
.label_534:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x8e4], eax
	je	.label_536
	jmp	.label_541
.label_541:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x8e8], eax
	je	.label_542
	jmp	.label_276
.label_276:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x65
	mov	dword ptr [rbp - 0x8ec], eax
	je	.label_547
	jmp	.label_555
.label_555:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x8f0], eax
	je	.label_420
	jmp	.label_343
.label_343:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x8f4], eax
	je	.label_530
	jmp	.label_563
.label_563:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6a
	mov	dword ptr [rbp - 0x8f8], eax
	je	.label_565
	jmp	.label_415
.label_415:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x8fc], eax
	je	.label_570
	jmp	.label_578
.label_578:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x900], eax
	je	.label_579
	jmp	.label_581
.label_581:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x904], eax
	je	.label_582
	jmp	.label_589
.label_589:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x908], eax
	je	.label_406
	jmp	.label_596
.label_596:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x90c], eax
	je	.label_599
	jmp	.label_61
.label_61:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x910], eax
	je	.label_84
	jmp	.label_447
.label_447:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x914], eax
	je	.label_72
	jmp	.label_77
.label_77:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x918], eax
	je	.label_78
	jmp	.label_226
.label_226:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x91c], eax
	je	.label_86
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x920], eax
	je	.label_101
	jmp	.label_110
.label_110:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x924], eax
	je	.label_195
	jmp	.label_336
.label_336:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x928], eax
	je	.label_346
	jmp	.label_130
.label_130:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x79
	mov	dword ptr [rbp - 0x92c], eax
	je	.label_132
	jmp	.label_138
.label_138:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x930], eax
	je	.label_140
	jmp	.label_147
.label_376:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_148
	jmp	.label_151
.label_148:
	jmp	.label_154
.label_154:
	mov	qword ptr [rbp - 0x138], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_157
	xor	eax, eax
	mov	dword ptr [rbp - 0x934], eax
	jmp	.label_163
.label_157:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x934], eax
.label_163:
	mov	eax, dword ptr [rbp - 0x934]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x140], rcx
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rbp - 0x140]
	jae	.label_170
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x940], rax
	jmp	.label_180
.label_170:
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x940], rax
.label_180:
	mov	rax, qword ptr [rbp - 0x940]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_192
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_192:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_204
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_205
	mov	rax, qword ptr [rbp - 0x138]
	cmp	rax, qword ptr [rbp - 0x140]
	jae	.label_205
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_214
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_220
.label_214:
	jmp	.label_225
.label_225:
	mov	qword ptr [rbp - 0x158], 0
.label_238:
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0x150]
	jae	.label_381
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x944], eax
	mov	rax, qword ptr [rbp - 0x158]
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_238
.label_381:
	jmp	.label_244
.label_244:
	jmp	.label_116
.label_220:
	jmp	.label_249
.label_249:
	mov	qword ptr [rbp - 0x160], 0
.label_262:
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0x150]
	jae	.label_253
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x948], eax
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, 1
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_262
.label_253:
	jmp	.label_273
.label_273:
	jmp	.label_116
.label_116:
	jmp	.label_205
.label_205:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	edi, byte ptr [rax]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x94c], eax
.label_204:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_172
.label_527:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_290
	jmp	.label_151
.label_290:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_294
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_294:
	jmp	.label_215
.label_385:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_299
	jmp	.label_151
.label_299:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_302
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_302:
	jmp	.label_215
.label_530:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_308
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_308:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_313
	jmp	.label_151
.label_313:
	jmp	.label_215
.label_389:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_320
	jmp	.label_151
.label_320:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_324
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_324:
	jmp	.label_215
.label_536:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_330
	jmp	.label_151
.label_330:
	jmp	.label_215
.label_252:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_206:
	xor	eax, eax
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rbp - 0xe2]
	mov	r8d, dword ptr [rbp - 0x8c]
	mov	r9d, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	eax, dword ptr [rbp - 0x54]
	and	cl, 1
	movzx	ecx, cl
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	mov	qword ptr [rbp - 0x168], rax
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x170], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_355
	xor	eax, eax
	mov	dword ptr [rbp - 0x950], eax
	jmp	.label_363
.label_355:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x950], eax
.label_363:
	mov	eax, dword ptr [rbp - 0x950]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x178], rcx
	mov	rcx, qword ptr [rbp - 0x170]
	cmp	rcx, qword ptr [rbp - 0x178]
	jae	.label_366
	mov	rax, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x958], rax
	jmp	.label_373
.label_366:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x958], rax
.label_373:
	mov	rax, qword ptr [rbp - 0x958]
	mov	qword ptr [rbp - 0x180], rax
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_379
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_379:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_388
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_391
	mov	rax, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rbp - 0x178]
	jae	.label_391
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x188], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_398
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_408
.label_398:
	jmp	.label_413
.label_413:
	mov	qword ptr [rbp - 0x190], 0
.label_428:
	mov	rax, qword ptr [rbp - 0x190]
	cmp	rax, qword ptr [rbp - 0x188]
	jae	.label_418
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x95c], eax
	mov	rax, qword ptr [rbp - 0x190]
	add	rax, 1
	mov	qword ptr [rbp - 0x190], rax
	jmp	.label_428
.label_418:
	jmp	.label_437
.label_437:
	jmp	.label_438
.label_408:
	jmp	.label_515
.label_515:
	mov	qword ptr [rbp - 0x198], 0
.label_453:
	mov	rax, qword ptr [rbp - 0x198]
	cmp	rax, qword ptr [rbp - 0x188]
	jae	.label_443
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x960], eax
	mov	rax, qword ptr [rbp - 0x198]
	add	rax, 1
	mov	qword ptr [rbp - 0x198], rax
	jmp	.label_453
.label_443:
	jmp	.label_463
.label_463:
	jmp	.label_438
.label_438:
	jmp	.label_391
.label_391:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rbp - 0xe2]
	mov	r8d, dword ptr [rbp - 0x8c]
	mov	r9d, dword ptr [rbp - 0xfc]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r10, qword ptr [rbp - 0x50]
	mov	r11d, dword ptr [rbp - 0x54]
	and	al, 1
	movzx	ebx, al
	mov	qword ptr [rbp - 0x968], rcx
	mov	ecx, ebx
	mov	r14, qword ptr [rbp - 0x968]
	mov	qword ptr [rsp], r14
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	call	__strftime_internal
	mov	qword ptr [rbp - 0x970], rax
.label_388:
	mov	rax, qword ptr [rbp - 0x180]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_172
.label_215:
	lea	rax, [rbp - 0x19d]
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_491
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x1a8], rsi
	mov	byte ptr [rdx], cl
.label_491:
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x19d]
	lea	rdi, [rbp - 0x5b0]
	mov	eax, dword ptr [rbp - 0xf8]
	mov	cl, al
	mov	r8, qword ptr [rbp - 0x1a8]
	mov	r9, r8
	add	r9, 1
	mov	qword ptr [rbp - 0x1a8], r9
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0x1a8]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x30]
	call	strftime
	mov	qword ptr [rbp - 0x5b8], rax
	cmp	qword ptr [rbp - 0x5b8], 0
	je	.label_149
	jmp	.label_545
.label_545:
	mov	rax, qword ptr [rbp - 0x5b8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x5c0], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_546
	xor	eax, eax
	mov	dword ptr [rbp - 0x974], eax
	jmp	.label_552
.label_546:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x974], eax
.label_552:
	mov	eax, dword ptr [rbp - 0x974]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c8], rcx
	mov	rcx, qword ptr [rbp - 0x5c0]
	cmp	rcx, qword ptr [rbp - 0x5c8]
	jae	.label_558
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	qword ptr [rbp - 0x980], rax
	jmp	.label_564
.label_558:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x980], rax
.label_564:
	mov	rax, qword ptr [rbp - 0x980]
	mov	qword ptr [rbp - 0x5d0], rax
	mov	rax, qword ptr [rbp - 0x5d0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_572
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_572:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_189
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_133
	mov	rax, qword ptr [rbp - 0x5c0]
	cmp	rax, qword ptr [rbp - 0x5c8]
	jae	.label_133
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x5d8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_574
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_63
.label_574:
	jmp	.label_67
.label_67:
	mov	qword ptr [rbp - 0x5e0], 0
.label_80:
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5d8]
	jae	.label_73
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x984], eax
	mov	rax, qword ptr [rbp - 0x5e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x5e0], rax
	jmp	.label_80
.label_73:
	jmp	.label_94
.label_94:
	jmp	.label_96
.label_63:
	jmp	.label_100
.label_100:
	mov	qword ptr [rbp - 0x5e8], 0
.label_118:
	mov	rax, qword ptr [rbp - 0x5e8]
	cmp	rax, qword ptr [rbp - 0x5d8]
	jae	.label_107
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x988], eax
	mov	rax, qword ptr [rbp - 0x5e8]
	add	rax, 1
	mov	qword ptr [rbp - 0x5e8], rax
	jmp	.label_118
.label_107:
	jmp	.label_131
.label_131:
	jmp	.label_96
.label_96:
	jmp	.label_133
.label_133:
	jmp	.label_136
.label_136:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_137
	lea	rax, [rbp - 0x5b0]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsi, rax
	call	fwrite_lowcase
	jmp	.label_150
.label_137:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_152
	lea	rax, [rbp - 0x5b0]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsi, rax
	call	fwrite_uppcase
	jmp	.label_548
.label_152:
	mov	eax, 1
	mov	edx, eax
	lea	rcx, [rbp - 0x5b0]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x990], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x990]
	call	fwrite
	mov	qword ptr [rbp - 0x998], rax
.label_548:
	jmp	.label_150
.label_150:
	jmp	.label_187
.label_187:
	jmp	.label_189
.label_189:
	mov	rax, qword ptr [rbp - 0x5d0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_149
.label_149:
	jmp	.label_172
.label_395:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_198
	jmp	.label_215
.label_198:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x99c], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x99c]
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x5ec], eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rdi + 0x14]
	cdq	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x99d], cl
	jge	.label_201
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ec]
	setl	cl
	mov	byte ptr [rbp - 0x99d], cl
.label_201:
	mov	al, byte ptr [rbp - 0x99d]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ec]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x5ec], edx
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	edx, dword ptr [rbp - 0x5ec]
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_221
.label_346:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_457
	jmp	.label_151
.label_457:
	jmp	.label_215
.label_402:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_247
	jmp	.label_151
.label_247:
	movabs	rax, OFFSET FLAT:.str.1_1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_252
.label_542:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_258
	jmp	.label_151
.label_258:
	jmp	.label_266
.label_266:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_200
.label_547:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_289
	jmp	.label_151
.label_289:
	jmp	.label_282
.label_282:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_243
.label_347:
	mov	byte ptr [rbp - 0x9e], 1
	jmp	.label_196
.label_221:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_213
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x8c], eax
.label_213:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x99e], cl
	jne	.label_297
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x99f], al
	jb	.label_300
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x3c]
	setl	cl
	mov	byte ptr [rbp - 0x99f], cl
.label_300:
	mov	al, byte ptr [rbp - 0x99f]
	mov	byte ptr [rbp - 0x99e], al
.label_297:
	mov	al, byte ptr [rbp - 0x99e]
	and	al, 1
	mov	byte ptr [rbp - 0x9e], al
	jmp	.label_160
.label_243:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_318
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_318:
	jmp	.label_200
.label_200:
	cmp	dword ptr [rbp - 0x98], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_272:
	mov	byte ptr [rbp - 0x9e], 0
.label_160:
	mov	dword ptr [rbp - 0xa4], 0
.label_196:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_335
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_335
	jmp	.label_215
.label_335:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	qword ptr [rbp - 0xc0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_340
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_340:
	jmp	.label_352
.label_352:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	cmp	eax, 0
	je	.label_354
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_354:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9a4], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x9a4]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rdi - 1], sil
	mov	edx, dword ptr [rbp - 0x9c]
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x9c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0x9a5], al
	jne	.label_365
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	byte ptr [rbp - 0x9a5], al
.label_365:
	mov	al, byte ptr [rbp - 0x9a5]
	test	al, 1
	jne	.label_352
	jmp	.label_392
.label_392:
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x3c]
	jge	.label_393
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x94], eax
.label_393:
	test	byte ptr [rbp - 0x9d], 1
	je	.label_397
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x9ac], eax
	jmp	.label_401
.label_397:
	xor	eax, eax
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x9ac], eax
.label_401:
	mov	eax, dword ptr [rbp - 0x9ac]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_414
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_423
	jmp	.label_427
.label_427:
	mov	qword ptr [rbp - 0x5f8], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_62
	xor	eax, eax
	mov	dword ptr [rbp - 0x9b0], eax
	jmp	.label_435
.label_62:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9b0], eax
.label_435:
	mov	eax, dword ptr [rbp - 0x9b0]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x600], rcx
	mov	rcx, qword ptr [rbp - 0x5f8]
	cmp	rcx, qword ptr [rbp - 0x600]
	jae	.label_441
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x9b8], rax
	jmp	.label_448
.label_441:
	mov	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x9b8], rax
.label_448:
	mov	rax, qword ptr [rbp - 0x9b8]
	mov	qword ptr [rbp - 0x608], rax
	mov	rax, qword ptr [rbp - 0x608]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_461
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_461:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_473
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_477
	mov	rax, qword ptr [rbp - 0x5f8]
	cmp	rax, qword ptr [rbp - 0x600]
	jae	.label_477
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x610], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_486
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_489
.label_486:
	jmp	.label_493
.label_493:
	mov	qword ptr [rbp - 0x618], 0
.label_509:
	mov	rax, qword ptr [rbp - 0x618]
	cmp	rax, qword ptr [rbp - 0x610]
	jae	.label_499
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9bc], eax
	mov	rax, qword ptr [rbp - 0x618]
	add	rax, 1
	mov	qword ptr [rbp - 0x618], rax
	jmp	.label_509
.label_499:
	jmp	.label_517
.label_517:
	jmp	.label_521
.label_489:
	jmp	.label_59
.label_59:
	mov	qword ptr [rbp - 0x620], 0
.label_531:
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x610]
	jae	.label_89
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9c0], eax
	mov	rax, qword ptr [rbp - 0x620]
	add	rax, 1
	mov	qword ptr [rbp - 0x620], rax
	jmp	.label_531
.label_89:
	jmp	.label_539
.label_539:
	jmp	.label_521
.label_521:
	jmp	.label_477
.label_477:
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9c4], eax
.label_473:
	mov	rax, qword ptr [rbp - 0x608]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_423
.label_423:
	jmp	.label_533
.label_414:
	lea	rax, [rbp - 0xe0]
	movsxd	rcx, dword ptr [rbp - 0x94]
	add	rax, 0x17
	mov	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	sub	rcx, rax
	cmp	byte ptr [rbp - 0xb1], 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	sub	rcx, rax
	mov	edi, ecx
	mov	dword ptr [rbp - 0x624], edi
	cmp	dword ptr [rbp - 0x624], 0
	jle	.label_554
	cmp	dword ptr [rbp - 0x8c], 0x5f
	jne	.label_571
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_575
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_575:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_69
	jmp	.label_586
.label_586:
	mov	qword ptr [rbp - 0x630], 0
.label_600:
	mov	rax, qword ptr [rbp - 0x630]
	movsxd	rcx, dword ptr [rbp - 0x624]
	cmp	rax, rcx
	jae	.label_592
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9c8], eax
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, 1
	mov	qword ptr [rbp - 0x630], rax
	jmp	.label_600
.label_592:
	jmp	.label_120
.label_120:
	jmp	.label_69
.label_69:
	movsxd	rax, dword ptr [rbp - 0x624]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x3c]
	cmp	ecx, dword ptr [rbp - 0x624]
	jle	.label_70
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, dword ptr [rbp - 0x624]
	mov	dword ptr [rbp - 0x9cc], eax
	jmp	.label_79
.label_70:
	xor	eax, eax
	mov	dword ptr [rbp - 0x9cc], eax
	jmp	.label_79
.label_79:
	mov	eax, dword ptr [rbp - 0x9cc]
	mov	dword ptr [rbp - 0x3c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_91
	jmp	.label_104
.label_104:
	mov	qword ptr [rbp - 0x638], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_106
	xor	eax, eax
	mov	dword ptr [rbp - 0x9d0], eax
	jmp	.label_115
.label_106:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9d0], eax
.label_115:
	mov	eax, dword ptr [rbp - 0x9d0]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x640], rcx
	mov	rcx, qword ptr [rbp - 0x638]
	cmp	rcx, qword ptr [rbp - 0x640]
	jae	.label_122
	mov	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x9d8], rax
	jmp	.label_135
.label_122:
	mov	rax, qword ptr [rbp - 0x638]
	mov	qword ptr [rbp - 0x9d8], rax
.label_135:
	mov	rax, qword ptr [rbp - 0x9d8]
	mov	qword ptr [rbp - 0x648], rax
	mov	rax, qword ptr [rbp - 0x648]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_146
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_146:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_162
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_168
	mov	rax, qword ptr [rbp - 0x638]
	cmp	rax, qword ptr [rbp - 0x640]
	jae	.label_168
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x638]
	mov	qword ptr [rbp - 0x650], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_178
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_185
.label_178:
	jmp	.label_190
.label_190:
	mov	qword ptr [rbp - 0x658], 0
.label_203:
	mov	rax, qword ptr [rbp - 0x658]
	cmp	rax, qword ptr [rbp - 0x650]
	jae	.label_194
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9dc], eax
	mov	rax, qword ptr [rbp - 0x658]
	add	rax, 1
	mov	qword ptr [rbp - 0x658], rax
	jmp	.label_203
.label_194:
	jmp	.label_277
.label_277:
	jmp	.label_209
.label_185:
	jmp	.label_211
.label_211:
	mov	qword ptr [rbp - 0x660], 0
.label_223:
	mov	rax, qword ptr [rbp - 0x660]
	cmp	rax, qword ptr [rbp - 0x650]
	jae	.label_217
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9e0], eax
	mov	rax, qword ptr [rbp - 0x660]
	add	rax, 1
	mov	qword ptr [rbp - 0x660], rax
	jmp	.label_223
.label_217:
	jmp	.label_231
.label_231:
	jmp	.label_209
.label_209:
	jmp	.label_168
.label_168:
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9e4], eax
.label_162:
	mov	rax, qword ptr [rbp - 0x648]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_91
.label_91:
	jmp	.label_245
.label_571:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_248
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_248:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_239
	jmp	.label_261
.label_261:
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_264
	xor	eax, eax
	mov	dword ptr [rbp - 0x9e8], eax
	jmp	.label_271
.label_264:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9e8], eax
.label_271:
	mov	eax, dword ptr [rbp - 0x9e8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_278
	mov	rax, qword ptr [rbp - 0x670]
	mov	qword ptr [rbp - 0x9f0], rax
	jmp	.label_288
.label_278:
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x9f0], rax
.label_288:
	mov	rax, qword ptr [rbp - 0x9f0]
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_295
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_295:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_304
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_306
	mov	rax, qword ptr [rbp - 0x668]
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_306
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_312
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_322
.label_312:
	jmp	.label_323
.label_323:
	mov	qword ptr [rbp - 0x688], 0
.label_334:
	mov	rax, qword ptr [rbp - 0x688]
	cmp	rax, qword ptr [rbp - 0x680]
	jae	.label_327
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9f4], eax
	mov	rax, qword ptr [rbp - 0x688]
	add	rax, 1
	mov	qword ptr [rbp - 0x688], rax
	jmp	.label_334
.label_327:
	jmp	.label_337
.label_337:
	jmp	.label_338
.label_322:
	jmp	.label_341
.label_341:
	mov	qword ptr [rbp - 0x690], 0
.label_126:
	mov	rax, qword ptr [rbp - 0x690]
	cmp	rax, qword ptr [rbp - 0x680]
	jae	.label_345
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9f8], eax
	mov	rax, qword ptr [rbp - 0x690]
	add	rax, 1
	mov	qword ptr [rbp - 0x690], rax
	jmp	.label_126
.label_345:
	jmp	.label_362
.label_362:
	jmp	.label_338
.label_338:
	jmp	.label_306
.label_306:
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9fc], eax
.label_304:
	mov	rax, qword ptr [rbp - 0x678]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_239
.label_239:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_275
	jmp	.label_375
.label_375:
	mov	qword ptr [rbp - 0x698], 0
.label_556:
	mov	rax, qword ptr [rbp - 0x698]
	movsxd	rcx, dword ptr [rbp - 0x624]
	cmp	rax, rcx
	jae	.label_310
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa00], eax
	mov	rax, qword ptr [rbp - 0x698]
	add	rax, 1
	mov	qword ptr [rbp - 0x698], rax
	jmp	.label_556
.label_310:
	jmp	.label_390
.label_390:
	jmp	.label_275
.label_275:
	movsxd	rax, dword ptr [rbp - 0x624]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x3c], 0
.label_245:
	jmp	.label_396
.label_554:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_460
	jmp	.label_403
.label_403:
	mov	qword ptr [rbp - 0x6a0], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_404
	xor	eax, eax
	mov	dword ptr [rbp - 0xa04], eax
	jmp	.label_412
.label_404:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa04], eax
.label_412:
	mov	eax, dword ptr [rbp - 0xa04]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6a8], rcx
	mov	rcx, qword ptr [rbp - 0x6a0]
	cmp	rcx, qword ptr [rbp - 0x6a8]
	jae	.label_419
	mov	rax, qword ptr [rbp - 0x6a8]
	mov	qword ptr [rbp - 0xa10], rax
	jmp	.label_431
.label_419:
	mov	rax, qword ptr [rbp - 0x6a0]
	mov	qword ptr [rbp - 0xa10], rax
.label_431:
	mov	rax, qword ptr [rbp - 0xa10]
	mov	qword ptr [rbp - 0x6b0], rax
	mov	rax, qword ptr [rbp - 0x6b0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_439
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_439:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_452
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_456
	mov	rax, qword ptr [rbp - 0x6a0]
	cmp	rax, qword ptr [rbp - 0x6a8]
	jae	.label_456
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x6a0]
	mov	qword ptr [rbp - 0x6b8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_466
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_471
.label_466:
	jmp	.label_476
.label_476:
	mov	qword ptr [rbp - 0x6c0], 0
.label_488:
	mov	rax, qword ptr [rbp - 0x6c0]
	cmp	rax, qword ptr [rbp - 0x6b8]
	jae	.label_482
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa14], eax
	mov	rax, qword ptr [rbp - 0x6c0]
	add	rax, 1
	mov	qword ptr [rbp - 0x6c0], rax
	jmp	.label_488
.label_482:
	jmp	.label_588
.label_588:
	jmp	.label_284
.label_471:
	jmp	.label_497
.label_497:
	mov	qword ptr [rbp - 0x6c8], 0
.label_512:
	mov	rax, qword ptr [rbp - 0x6c8]
	cmp	rax, qword ptr [rbp - 0x6b8]
	jae	.label_503
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa18], eax
	mov	rax, qword ptr [rbp - 0x6c8]
	add	rax, 1
	mov	qword ptr [rbp - 0x6c8], rax
	jmp	.label_512
.label_503:
	jmp	.label_523
.label_523:
	jmp	.label_284
.label_284:
	jmp	.label_456
.label_456:
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa1c], eax
.label_452:
	mov	rax, qword ptr [rbp - 0x6b0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_460
.label_460:
	jmp	.label_396
.label_396:
	jmp	.label_533
.label_533:
	jmp	.label_535
.label_535:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x6d0], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_537
	xor	eax, eax
	mov	dword ptr [rbp - 0xa20], eax
	jmp	.label_549
.label_537:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa20], eax
.label_549:
	mov	eax, dword ptr [rbp - 0xa20]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_551
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0xa28], rax
	jmp	.label_561
.label_551:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0xa28], rax
.label_561:
	mov	rax, qword ptr [rbp - 0xa28]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_566
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_566:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_171
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_124
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_124
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_587
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_598
.label_587:
	jmp	.label_601
.label_601:
	mov	qword ptr [rbp - 0x6f0], 0
.label_74:
	mov	rax, qword ptr [rbp - 0x6f0]
	cmp	rax, qword ptr [rbp - 0x6e8]
	jae	.label_64
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa2c], eax
	mov	rax, qword ptr [rbp - 0x6f0]
	add	rax, 1
	mov	qword ptr [rbp - 0x6f0], rax
	jmp	.label_74
.label_64:
	jmp	.label_82
.label_82:
	jmp	.label_83
.label_598:
	jmp	.label_227
.label_227:
	mov	qword ptr [rbp - 0x6f8], 0
.label_109:
	mov	rax, qword ptr [rbp - 0x6f8]
	cmp	rax, qword ptr [rbp - 0x6e8]
	jae	.label_93
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa30], eax
	mov	rax, qword ptr [rbp - 0x6f8]
	add	rax, 1
	mov	qword ptr [rbp - 0x6f8], rax
	jmp	.label_109
.label_93:
	jmp	.label_119
.label_119:
	jmp	.label_83
.label_83:
	jmp	.label_124
.label_124:
	jmp	.label_127
.label_127:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_128
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x6d0]
	call	fwrite_lowcase
	jmp	.label_141
.label_128:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_142
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x6d0]
	call	fwrite_uppcase
	jmp	.label_153
.label_142:
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0x6d0]
	mov	rcx, qword ptr [rbp - 0x80]
	call	fwrite
	mov	qword ptr [rbp - 0xa38], rax
.label_153:
	jmp	.label_141
.label_141:
	jmp	.label_169
.label_169:
	jmp	.label_171
.label_171:
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_172
.label_411:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_179
	jmp	.label_151
.label_179:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_182
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_182
	mov	dword ptr [rbp - 0x8c], 0x2b
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_191
.label_182:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 6
	mov	dword ptr [rbp - 0xfc], eax
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_197
	mov	dword ptr [rbp - 0xfc], 0
.label_197:
	jmp	.label_191
.label_191:
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_206
.label_425:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_212
	jmp	.label_151
.label_212:
	jmp	.label_218
.label_218:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_200
.label_433:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_224
	jmp	.label_151
.label_224:
	jmp	.label_229
.label_229:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_200
.label_570:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_237
	jmp	.label_151
.label_237:
	jmp	.label_240
.label_240:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_243
.label_579:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_250
	jmp	.label_151
.label_250:
	jmp	.label_256
.label_256:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_243
.label_565:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_265
	jmp	.label_151
.label_265:
	jmp	.label_269
.label_269:
	mov	dword ptr [rbp - 0x94], 3
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x1c]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_272
.label_442:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_286
	jmp	.label_151
.label_286:
	jmp	.label_291
.label_291:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_200
.label_582:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_298
	jmp	.label_151
.label_298:
	jmp	.label_301
.label_301:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_272
.label_446:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_311
	jmp	.label_151
.label_311:
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x3c], -1
	jne	.label_314
	mov	dword ptr [rbp - 0x3c], 9
	jmp	.label_321
.label_314:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x6fc], eax
.label_328:
	cmp	dword ptr [rbp - 0x6fc], 9
	jge	.label_325
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0xa3c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xa3c]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x6fc]
	add	eax, 1
	mov	dword ptr [rbp - 0x6fc], eax
	jmp	.label_328
.label_325:
	jmp	.label_321
.label_321:
	jmp	.label_560
.label_560:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_200
.label_406:
	jmp	.label_348
.label_348:
	mov	qword ptr [rbp - 0x708], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_349
	xor	eax, eax
	mov	dword ptr [rbp - 0xa40], eax
	jmp	.label_117
.label_349:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa40], eax
.label_117:
	mov	eax, dword ptr [rbp - 0xa40]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	cmp	rcx, qword ptr [rbp - 0x710]
	jae	.label_360
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0xa48], rax
	jmp	.label_367
.label_360:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0xa48], rax
.label_367:
	mov	rax, qword ptr [rbp - 0xa48]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_279
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_279:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_383
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_235
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	jae	.label_235
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_400
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_88
.label_400:
	jmp	.label_111
.label_111:
	mov	qword ptr [rbp - 0x728], 0
.label_165:
	mov	rax, qword ptr [rbp - 0x728]
	cmp	rax, qword ptr [rbp - 0x720]
	jae	.label_501
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa4c], eax
	mov	rax, qword ptr [rbp - 0x728]
	add	rax, 1
	mov	qword ptr [rbp - 0x728], rax
	jmp	.label_165
.label_501:
	jmp	.label_593
.label_593:
	jmp	.label_429
.label_88:
	jmp	.label_68
.label_68:
	mov	qword ptr [rbp - 0x730], 0
.label_444:
	mov	rax, qword ptr [rbp - 0x730]
	cmp	rax, qword ptr [rbp - 0x720]
	jae	.label_254
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa50], eax
	mov	rax, qword ptr [rbp - 0x730]
	add	rax, 1
	mov	qword ptr [rbp - 0x730], rax
	jmp	.label_444
.label_254:
	jmp	.label_451
.label_451:
	jmp	.label_429
.label_429:
	jmp	.label_235
.label_235:
	mov	edi, 0xa
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa54], eax
.label_383:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_172
.label_458:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_599:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_469
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_469:
	jmp	.label_215
.label_84:
	jmp	.label_481
.label_481:
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x30]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	sar	ecx, 5
	add	ecx, 1
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_272
.label_465:
	movabs	rax, OFFSET FLAT:.str.3_0
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_252
.label_72:
	jmp	.label_215
.label_468:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_496
	jmp	.label_151
.label_496:
	jmp	.label_504
.label_504:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_200
.label_78:
	lea	rax, [rbp - 0x768]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xa60], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa60]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x770], rax
	add	rdx, 0x17
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x770], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_559:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x770]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x774], esi
	mov	rdx, qword ptr [rbp - 0x770]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x770], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_369
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x774]
	mov	dword ptr [rbp - 0xa64], eax
	jmp	.label_296
.label_369:
	mov	eax, dword ptr [rbp - 0x774]
	mov	dword ptr [rbp - 0xa64], eax
.label_296:
	mov	eax, dword ptr [rbp - 0xa64]
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x770], 0
	jne	.label_559
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9e], 0
	jmp	.label_392
.label_505:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_573
	jmp	.label_151
.label_573:
	jmp	.label_215
.label_478:
	movabs	rax, OFFSET FLAT:.str.4_0
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_252
.label_86:
	jmp	.label_174
.label_174:
	mov	qword ptr [rbp - 0x780], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_584
	xor	eax, eax
	mov	dword ptr [rbp - 0xa68], eax
	jmp	.label_591
.label_584:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa68], eax
.label_591:
	mov	eax, dword ptr [rbp - 0xa68]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x788], rcx
	mov	rcx, qword ptr [rbp - 0x780]
	cmp	rcx, qword ptr [rbp - 0x788]
	jae	.label_576
	mov	rax, qword ptr [rbp - 0x788]
	mov	qword ptr [rbp - 0xa70], rax
	jmp	.label_65
.label_576:
	mov	rax, qword ptr [rbp - 0x780]
	mov	qword ptr [rbp - 0xa70], rax
.label_65:
	mov	rax, qword ptr [rbp - 0xa70]
	mov	qword ptr [rbp - 0x790], rax
	mov	rax, qword ptr [rbp - 0x790]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_75
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_75:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_92
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_99
	mov	rax, qword ptr [rbp - 0x780]
	cmp	rax, qword ptr [rbp - 0x788]
	jae	.label_99
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x780]
	mov	qword ptr [rbp - 0x798], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_113
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_125
.label_113:
	jmp	.label_143
.label_143:
	mov	qword ptr [rbp - 0x7a0], 0
.label_449:
	mov	rax, qword ptr [rbp - 0x7a0]
	cmp	rax, qword ptr [rbp - 0x798]
	jae	.label_283
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa74], eax
	mov	rax, qword ptr [rbp - 0x7a0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7a0], rax
	jmp	.label_449
.label_283:
	jmp	.label_156
.label_156:
	jmp	.label_183
.label_125:
	jmp	.label_158
.label_158:
	mov	qword ptr [rbp - 0x7a8], 0
.label_176:
	mov	rax, qword ptr [rbp - 0x7a8]
	cmp	rax, qword ptr [rbp - 0x798]
	jae	.label_166
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa78], eax
	mov	rax, qword ptr [rbp - 0x7a8]
	add	rax, 1
	mov	qword ptr [rbp - 0x7a8], rax
	jmp	.label_176
.label_166:
	jmp	.label_95
.label_95:
	jmp	.label_183
.label_183:
	jmp	.label_99
.label_99:
	mov	edi, 9
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa7c], eax
.label_92:
	mov	rax, qword ptr [rbp - 0x790]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_172
.label_101:
	jmp	.label_480
.label_480:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x18]
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0xa80], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xa80]
	idiv	esi
	add	edx, 1
	mov	dword ptr [rbp - 0x98], edx
	jmp	.label_200
.label_485:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_303
	jmp	.label_151
.label_303:
	jmp	.label_219
.label_219:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	mov	dword ptr [rbp - 0xa84], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xa84]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_200
.label_420:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_234
	jmp	.label_151
.label_234:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x7ac], esi
	mov	dword ptr [rbp - 0x7b0], 0
	mov	rdx, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x7b4], eax
	cmp	dword ptr [rbp - 0x7b4], 0
	jge	.label_257
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x7b0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x7ac]
	sub	edi, 1
	mov	dword ptr [rbp - 0xa88], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0xa88]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0xa8c], esi
	mov	byte ptr [rbp - 0xa8d], cl
	jne	.label_569
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x7ac]
	sub	edx, 1
	mov	byte ptr [rbp - 0xa8e], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0xa8e]
	mov	byte ptr [rbp - 0xa8f], sil
	jne	.label_173
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x7ac]
	sub	ecx, 1
	mov	dword ptr [rbp - 0xa94], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xa94]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0xa8f], sil
.label_173:
	mov	al, byte ptr [rbp - 0xa8f]
	mov	byte ptr [rbp - 0xa8d], al
.label_569:
	mov	al, byte ptr [rbp - 0xa8d]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0xa8c]
	add	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	mov	dword ptr [rbp - 0x7b4], eax
	jmp	.label_371
.label_257:
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x7ac]
	mov	dword ptr [rbp - 0xa98], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0xa98]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0xa9c], esi
	mov	byte ptr [rbp - 0xa9d], cl
	jne	.label_316
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x7ac]
	mov	byte ptr [rbp - 0xa9e], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0xa9e]
	mov	byte ptr [rbp - 0xa9f], sil
	jne	.label_331
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x7ac]
	mov	dword ptr [rbp - 0xaa4], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xaa4]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0xa9f], sil
.label_331:
	mov	al, byte ptr [rbp - 0xa9f]
	mov	byte ptr [rbp - 0xa9d], al
.label_316:
	mov	al, byte ptr [rbp - 0xa9d]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0xa9c]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x7b8], eax
	cmp	ecx, dword ptr [rbp - 0x7b8]
	jg	.label_364
	mov	dword ptr [rbp - 0x7b0], 1
	mov	eax, dword ptr [rbp - 0x7b8]
	mov	dword ptr [rbp - 0x7b4], eax
.label_364:
	jmp	.label_371
.label_371:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0xaa8], ecx
	mov	dword ptr [rbp - 0xaac], edx
	je	.label_372
	jmp	.label_378
.label_378:
	mov	eax, dword ptr [rbp - 0xaa8]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xab0], eax
	jne	.label_326
	jmp	.label_550
.label_550:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0xab4], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xab4]
	idiv	esi
	add	edx, dword ptr [rbp - 0x7b0]
	mov	eax, edx
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x7bc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	cmp	eax, dword ptr [rbp - 0x7bc]
	jg	.label_583
	mov	eax, dword ptr [rbp - 0x7bc]
	mov	dword ptr [rbp - 0xab8], eax
	jmp	.label_479
.label_583:
	mov	eax, 0xfffff894
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x7b0]
	cmp	edx, eax
	jge	.label_407
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x7bc]
	mov	dword ptr [rbp - 0xabc], eax
	jmp	.label_416
.label_407:
	mov	eax, dword ptr [rbp - 0x7bc]
	add	eax, 0x64
	mov	dword ptr [rbp - 0xabc], eax
.label_416:
	mov	eax, dword ptr [rbp - 0xabc]
	mov	dword ptr [rbp - 0xab8], eax
.label_479:
	mov	eax, dword ptr [rbp - 0xab8]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_221
.label_372:
	jmp	.label_434
.label_434:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x7b0]
	cmp	edx, eax
	setl	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x9d], sil
	mov	rcx, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x7b0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_221
.label_326:
	jmp	.label_459
.label_459:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x7b4]
	mov	dword ptr [rbp - 0xac0], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xac0]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_200
.label_495:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_470
	jmp	.label_151
.label_470:
	jmp	.label_356
.label_356:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	add	esi, 7
	mov	dword ptr [rbp - 0xac4], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0xac8], edx
	cdq	
	mov	esi, dword ptr [rbp - 0xac4]
	idiv	esi
	mov	edi, dword ptr [rbp - 0xac8]
	sub	edi, edx
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_200
.label_195:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_498
	jmp	.label_151
.label_498:
	jmp	.label_506
.label_506:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_200
.label_511:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_513
	jmp	.label_215
.label_513:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_520
	jmp	.label_151
.label_520:
	jmp	.label_525
.label_525:
	mov	dword ptr [rbp - 0x94], 4
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_221
.label_132:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_538
	jmp	.label_215
.label_538:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0xacc], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xacc]
	idiv	esi
	mov	dword ptr [rbp - 0x7c0], edx
	cmp	dword ptr [rbp - 0x7c0], 0
	jge	.label_232
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_553
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x7c0]
	mov	dword ptr [rbp - 0xad0], eax
	jmp	.label_557
.label_553:
	mov	eax, dword ptr [rbp - 0x7c0]
	add	eax, 0x64
	mov	dword ptr [rbp - 0xad0], eax
.label_557:
	mov	eax, dword ptr [rbp - 0xad0]
	mov	dword ptr [rbp - 0x7c0], eax
.label_232:
	jmp	.label_567
.label_567:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x7c0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_221
.label_518:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_577
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_577:
	jmp	.label_580
.label_580:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x7c8], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_585
	xor	eax, eax
	mov	dword ptr [rbp - 0xad4], eax
	jmp	.label_590
.label_585:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xad4], eax
.label_590:
	mov	eax, dword ptr [rbp - 0xad4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x7d0], rcx
	mov	rcx, qword ptr [rbp - 0x7c8]
	cmp	rcx, qword ptr [rbp - 0x7d0]
	jae	.label_594
	mov	rax, qword ptr [rbp - 0x7d0]
	mov	qword ptr [rbp - 0xae0], rax
	jmp	.label_87
.label_594:
	mov	rax, qword ptr [rbp - 0x7c8]
	mov	qword ptr [rbp - 0xae0], rax
.label_87:
	mov	rax, qword ptr [rbp - 0xae0]
	mov	qword ptr [rbp - 0x7d8], rax
	mov	rax, qword ptr [rbp - 0x7d8]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_108
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_108:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_90
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_97
	mov	rax, qword ptr [rbp - 0x7c8]
	cmp	rax, qword ptr [rbp - 0x7d0]
	jae	.label_97
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x7c8]
	mov	qword ptr [rbp - 0x7e0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_112
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_123
.label_112:
	jmp	.label_129
.label_129:
	mov	qword ptr [rbp - 0x7e8], 0
.label_144:
	mov	rax, qword ptr [rbp - 0x7e8]
	cmp	rax, qword ptr [rbp - 0x7e0]
	jae	.label_274
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xae4], eax
	mov	rax, qword ptr [rbp - 0x7e8]
	add	rax, 1
	mov	qword ptr [rbp - 0x7e8], rax
	jmp	.label_144
.label_274:
	jmp	.label_155
.label_155:
	jmp	.label_102
.label_123:
	jmp	.label_507
.label_507:
	mov	qword ptr [rbp - 0x7f0], 0
.label_175:
	mov	rax, qword ptr [rbp - 0x7f0]
	cmp	rax, qword ptr [rbp - 0x7e0]
	jae	.label_164
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xae8], eax
	mov	rax, qword ptr [rbp - 0x7f0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7f0], rax
	jmp	.label_175
.label_164:
	jmp	.label_181
.label_181:
	jmp	.label_102
.label_102:
	jmp	.label_97
.label_97:
	jmp	.label_186
.label_186:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_188
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x7c8]
	call	fwrite_lowcase
	jmp	.label_199
.label_188:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_309
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x7c8]
	call	fwrite_uppcase
	jmp	.label_255
.label_309:
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x7c8]
	mov	rcx, qword ptr [rbp - 0x80]
	call	fwrite
	mov	qword ptr [rbp - 0xaf0], rax
.label_255:
	jmp	.label_199
.label_199:
	jmp	.label_319
.label_319:
	jmp	.label_90
.label_90:
	mov	rax, qword ptr [rbp - 0x7d8]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_172
.label_380:
	mov	qword ptr [rbp - 0xf0], 1
.label_236:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3a
	jne	.label_228
	jmp	.label_233
.label_233:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_236
.label_228:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7a
	je	.label_242
	jmp	.label_151
.label_242:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_251
.label_140:
	mov	qword ptr [rbp - 0xf0], 0
.label_251:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_259
	jmp	.label_172
.label_259:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x7f4], edx
	cmp	dword ptr [rbp - 0x7f4], 0
	mov	byte ptr [rbp - 0xaf1], al
	jl	.label_267
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x7f4], 0
	mov	byte ptr [rbp - 0xaf2], cl
	jne	.label_281
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0xaf2], dl
.label_281:
	mov	al, byte ptr [rbp - 0xaf2]
	mov	byte ptr [rbp - 0xaf1], al
.label_267:
	mov	al, byte ptr [rbp - 0xaf1]
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	movsxd	rcx, dword ptr [rbp - 0x7f4]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	dword ptr [rbp - 0x7f8], edx
	movsxd	rcx, dword ptr [rbp - 0x7f4]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	sub	esi, edx
	mov	dword ptr [rbp - 0x7fc], esi
	movsxd	rcx, dword ptr [rbp - 0x7f4]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	esi, esi, 0x3c
	sub	edx, esi
	mov	dword ptr [rbp - 0x800], edx
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0xb00], rcx
	mov	qword ptr [rbp - 0xb08], r8
	ja	.label_292
	mov	rax, qword ptr [rbp - 0xb00]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_339]]
	jmp	rcx
.label_1094:
	jmp	.label_344
.label_344:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	imul	eax, dword ptr [rbp - 0x7f8], 0x64
	add	eax, dword ptr [rbp - 0x7fc]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_347
.label_1095:
	jmp	.label_357
.label_357:
	jmp	.label_358
.label_358:
	mov	dword ptr [rbp - 0x94], 6
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x7f8], 0x64
	add	eax, dword ptr [rbp - 0x7fc]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_347
.label_1096:
	jmp	.label_353
.label_353:
	jmp	.label_370
.label_370:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x7f8], 0x2710
	imul	ecx, dword ptr [rbp - 0x7fc], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x800]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_347
.label_1097:
	cmp	dword ptr [rbp - 0x800], 0
	je	.label_382
	jmp	.label_353
.label_382:
	cmp	dword ptr [rbp - 0x7fc], 0
	je	.label_361
	jmp	.label_357
.label_361:
	jmp	.label_387
.label_387:
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x7f8]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_347
.label_292:
	jmp	.label_151
.label_368:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_147:
	jmp	.label_151
.label_151:
	mov	dword ptr [rbp - 0x804], 1
.label_422:
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	je	.label_409
	jmp	.label_421
.label_421:
	mov	eax, dword ptr [rbp - 0x804]
	add	eax, 1
	mov	dword ptr [rbp - 0x804], eax
	jmp	.label_422
.label_409:
	jmp	.label_426
.label_426:
	movsxd	rax, dword ptr [rbp - 0x804]
	mov	qword ptr [rbp - 0x810], rax
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_430
	xor	eax, eax
	mov	dword ptr [rbp - 0xb0c], eax
	jmp	.label_436
.label_430:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xb0c], eax
.label_436:
	mov	eax, dword ptr [rbp - 0xb0c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x818], rcx
	mov	rcx, qword ptr [rbp - 0x810]
	cmp	rcx, qword ptr [rbp - 0x818]
	jae	.label_159
	mov	rax, qword ptr [rbp - 0x818]
	mov	qword ptr [rbp - 0xb18], rax
	jmp	.label_450
.label_159:
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0xb18], rax
.label_450:
	mov	rax, qword ptr [rbp - 0xb18]
	mov	qword ptr [rbp - 0x820], rax
	mov	rax, qword ptr [rbp - 0x820]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_462
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_85
.label_462:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_474
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_483
	mov	rax, qword ptr [rbp - 0x810]
	cmp	rax, qword ptr [rbp - 0x818]
	jae	.label_483
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x828], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_487
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_490
.label_487:
	jmp	.label_472
.label_472:
	mov	qword ptr [rbp - 0x830], 0
.label_510:
	mov	rax, qword ptr [rbp - 0x830]
	cmp	rax, qword ptr [rbp - 0x828]
	jae	.label_500
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xb1c], eax
	mov	rax, qword ptr [rbp - 0x830]
	add	rax, 1
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_510
.label_500:
	jmp	.label_519
.label_519:
	jmp	.label_522
.label_490:
	jmp	.label_524
.label_524:
	mov	qword ptr [rbp - 0x838], 0
.label_532:
	mov	rax, qword ptr [rbp - 0x838]
	cmp	rax, qword ptr [rbp - 0x828]
	jae	.label_528
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xb20], eax
	mov	rax, qword ptr [rbp - 0x838]
	add	rax, 1
	mov	qword ptr [rbp - 0x838], rax
	jmp	.label_532
.label_528:
	jmp	.label_540
.label_540:
	jmp	.label_522
.label_522:
	jmp	.label_483
.label_483:
	jmp	.label_543
.label_543:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_544
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x810]
	mov	rsi, rcx
	call	fwrite_lowcase
	jmp	.label_81
.label_544:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_332
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x810]
	mov	rsi, rcx
	call	fwrite_uppcase
	jmp	.label_568
.label_332:
	mov	eax, 1
	mov	edx, eax
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x810]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xb28], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0xb28]
	call	fwrite
	mov	qword ptr [rbp - 0xb30], rax
.label_568:
	jmp	.label_81
.label_81:
	jmp	.label_405
.label_405:
	jmp	.label_474
.label_474:
	mov	rax, qword ptr [rbp - 0x820]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_172
.label_172:
	jmp	.label_241
.label_241:
	mov	dword ptr [rbp - 0x3c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_597
.label_71:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x18], rax
.label_85:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0xb40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406030

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_602:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_603
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	call	tolower
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	fputc
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 1
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_602
.label_603:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406090

	.globl fwrite_uppcase
	.type fwrite_uppcase, @function
fwrite_uppcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_604:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_605
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	call	toupper
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	fputc
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 1
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_604
.label_605:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060f0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	push	rbp
	mov	rbp, rsp
	mov	eax, 7
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	sub	edi, dword ptr [rbp - 8]
	add	edi, 4
	add	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x10]
	idiv	edi
	sub	esi, edx
	add	esi, 4
	sub	esi, 1
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406130
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1c0
	test	al, al
	movaps	xmmword ptr [rbp - 0x110], xmm7
	movaps	xmmword ptr [rbp - 0x120], xmm6
	movaps	xmmword ptr [rbp - 0x130], xmm5
	movaps	xmmword ptr [rbp - 0x140], xmm4
	movaps	xmmword ptr [rbp - 0x150], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	movaps	xmmword ptr [rbp - 0x170], xmm1
	movaps	xmmword ptr [rbp - 0x180], xmm0
	mov	dword ptr [rbp - 0x184], edi
	mov	qword ptr [rbp - 0x190], r9
	mov	qword ptr [rbp - 0x198], r8
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	qword ptr [rbp - 0x1b0], rsi
	je	.label_609
	movaps	xmm0, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_609:
	mov	rax, qword ptr [rbp - 0x190]
	mov	rcx, qword ptr [rbp - 0x198]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	r8d, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	cmp	dword ptr [rbp - 4], 2
	jne	.label_607
	movabs	rdx, OFFSET FLAT:.str_4
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, -1
	je	.label_607
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1b4], eax
	mov	dword ptr [rbp - 0x1b8], ecx
	je	.label_612
	jmp	.label_610
.label_610:
	mov	eax, dword ptr [rbp - 0x1b4]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	je	.label_611
	jmp	.label_606
.label_612:
	xor	edi, edi
	call	qword ptr [rbp - 0x30]
	jmp	.label_608
.label_611:
	lea	rax, [rbp - 0x50]
	mov	rcx, rax
	lea	rdx, [rbp - 0x100]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_606:
	jmp	.label_608
.label_608:
	jmp	.label_607
.label_607:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1c0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406360

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1d0
	test	al, al
	movaps	xmmword ptr [rbp - 0x140], xmm7
	movaps	xmmword ptr [rbp - 0x150], xmm6
	movaps	xmmword ptr [rbp - 0x160], xmm5
	movaps	xmmword ptr [rbp - 0x170], xmm4
	movaps	xmmword ptr [rbp - 0x180], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	movaps	xmmword ptr [rbp - 0x1a0], xmm1
	movaps	xmmword ptr [rbp - 0x1b0], xmm0
	mov	dword ptr [rbp - 0x1b4], edi
	mov	dword ptr [rbp - 0x1b8], r9d
	mov	qword ptr [rbp - 0x1c0], r8
	mov	qword ptr [rbp - 0x1c8], rcx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_613
	movaps	xmm0, xmmword ptr [rbp - 0x1b0]
	movaps	xmmword ptr [rbp - 0x100], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xf0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0xe0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm7
.label_613:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	cl, al
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, qword ptr [rbp - 0x1d0]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x1b4]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	movabs	r15, OFFSET FLAT:.str_4
	movabs	r12, OFFSET FLAT:.str_0
	mov	dword ptr [rbp - 0x24], r10d
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x48], rsi
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	mov	qword ptr [rbp - 0x58], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x60], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	mov	cl, byte ptr [rbp - 0x49]
	test	cl, 1
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x68], r15
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, r11
	mov	r8, r14
	call	getopt_long
	mov	dword ptr [rbp - 0x5c], eax
	cmp	eax, -1
	je	.label_615
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1dc], eax
	mov	dword ptr [rbp - 0x1e0], ecx
	je	.label_614
	jmp	.label_619
.label_619:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_616
	jmp	.label_618
.label_614:
	xor	edi, edi
	call	qword ptr [rbp - 0x58]
	jmp	.label_617
.label_616:
	lea	rax, [rbp - 0x80]
	mov	rcx, rax
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x18]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_618:
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_617:
	jmp	.label_615
.label_615:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	add	rsp, 0x1d0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065c0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_620
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_620:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_621
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_623
.label_621:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_623:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_622
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_622
	movabs	rsi, OFFSET FLAT:.str.2_1
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_624
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_624:
	jmp	.label_622
.label_622:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066e0
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
	je	.label_625
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_626
.label_625:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_626
.label_626:
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
	#Procedure 0x406760
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_627
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_628
.label_627:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_628
.label_628:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067a0
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
	je	.label_629
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_630
.label_629:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_630
.label_630:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067f0

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
	je	.label_631
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_632
.label_631:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_632
.label_632:
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
	#Procedure 0x4068a0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_633
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_633:
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
	#Procedure 0x4068e0

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
	jne	.label_634
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_634:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_636
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_635
.label_636:
	call	abort
.label_635:
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
	#Procedure 0x406950
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
	je	.label_637
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_638
.label_637:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_638
.label_638:
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
	#Procedure 0x406a20

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
.label_665:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_768
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_691]]
	jmp	rcx
.label_1070:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1069:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_761
	jmp	.label_782
.label_782:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_784
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_784:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_761
.label_761:
	movabs	rax, OFFSET FLAT:.str.10
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_641
.label_1071:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_641
.label_1072:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_802
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_802:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_720
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_833:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_818
	jmp	.label_822
.label_822:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_824
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_824:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_829
.label_829:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_833
.label_818:
	jmp	.label_720
.label_720:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_641
.label_1067:
	mov	byte ptr [rbp - 0x79], 1
.label_1066:
	mov	byte ptr [rbp - 0x7b], 1
.label_1068:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_647
	mov	byte ptr [rbp - 0x79], 1
.label_647:
	jmp	.label_649
.label_649:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_650
	jmp	.label_653
.label_653:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_654
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_654:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_650
.label_650:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_641
.label_1065:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_641
.label_768:
	call	abort
.label_641:
	mov	qword ptr [rbp - 0x58], 0
.label_831:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_671
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_674
.label_671:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_674:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_687
	jmp	.label_739
.label_687:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_696
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_696
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_696
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_705
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_705
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_716
.label_705:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_716:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_696
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_696
	test	byte ptr [rbp - 0x7b], 1
	je	.label_731
	jmp	.label_640
.label_731:
	mov	byte ptr [rbp - 0x81], 1
.label_696:
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
	ja	.label_787
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_740]]
	jmp	rcx
.label_1100:
	test	byte ptr [rbp - 0x79], 1
	je	.label_741
	jmp	.label_796
.label_796:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_685
	jmp	.label_640
.label_685:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_722
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_722
	jmp	.label_753
.label_753:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_738
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_738:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_755
.label_755:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_783
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_783:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_763
.label_763:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_767
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_767:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_722:
	jmp	.label_773
.label_773:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_775
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_775:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_727
.label_727:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_786
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_786
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_786
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_786
	jmp	.label_800
.label_800:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_839
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_839:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_669
.label_669:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_812
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_812:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_786
.label_786:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_823
.label_741:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_702
	jmp	.label_762
.label_702:
	jmp	.label_823
.label_823:
	jmp	.label_729
.label_1111:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_830
	jmp	.label_836
.label_836:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_837
	jmp	.label_652
.label_830:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_680
	jmp	.label_640
.label_680:
	jmp	.label_646
.label_837:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_648
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_648
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_648
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_657
	jmp	.label_662
.label_662:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_657
	jmp	.label_668
.label_668:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_657
	jmp	.label_675
.label_675:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_657
	jmp	.label_679
.label_679:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_686
	jmp	.label_657
.label_657:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_689
	jmp	.label_640
.label_689:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_695
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_695:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_704
.label_704:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_707
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_707:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_712
.label_712:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_666
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_666:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_721
.label_721:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_807
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_807:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_726
.label_686:
	jmp	.label_726
.label_726:
	jmp	.label_648
.label_648:
	jmp	.label_646
.label_652:
	jmp	.label_646
.label_646:
	jmp	.label_729
.label_1101:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_735
.label_1102:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_735
.label_1106:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_735
.label_1104:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_737
.label_1107:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_737
.label_1103:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_737
.label_1105:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_735
.label_1112:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_744
	test	byte ptr [rbp - 0x7b], 1
	je	.label_747
	jmp	.label_640
.label_747:
	jmp	.label_728
.label_744:
	test	byte ptr [rbp - 0x79], 1
	je	.label_750
	test	byte ptr [rbp - 0x7b], 1
	je	.label_750
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_750
	jmp	.label_728
.label_750:
	jmp	.label_737
.label_737:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_754
	test	byte ptr [rbp - 0x7b], 1
	je	.label_754
	jmp	.label_640
.label_754:
	jmp	.label_735
.label_735:
	test	byte ptr [rbp - 0x79], 1
	je	.label_759
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_746
.label_759:
	jmp	.label_729
.label_1113:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_765
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_664
	jmp	.label_770
.label_765:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_664
.label_770:
	jmp	.label_729
.label_664:
	jmp	.label_772
.label_772:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_774
	jmp	.label_729
.label_774:
	jmp	.label_778
.label_778:
	mov	byte ptr [rbp - 0x83], 1
.label_1108:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_781
	test	byte ptr [rbp - 0x7b], 1
	je	.label_781
	jmp	.label_640
.label_781:
	jmp	.label_729
.label_1110:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_788
	test	byte ptr [rbp - 0x7b], 1
	je	.label_792
	jmp	.label_640
.label_792:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_798
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_798
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_798:
	jmp	.label_804
.label_804:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_806
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_806:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_811
.label_811:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_814
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_814:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_821
.label_821:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_827
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_827:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_788:
	jmp	.label_729
.label_1109:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_729
.label_787:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_819
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
	jmp	.label_645
.label_819:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_658
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_658:
	jmp	.label_663
.label_663:
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
	jne	.label_677
	jmp	.label_683
.label_677:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_684
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_683
.label_684:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_692
	mov	byte ptr [rbp - 0x91], 0
.label_713:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_697
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_697:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_709
	jmp	.label_711
.label_709:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_713
.label_711:
	jmp	.label_683
.label_692:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_719
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_719
	mov	qword ptr [rbp - 0xb8], 1
.label_752:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_725
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
	jb	.label_656
	jmp	.label_736
.label_736:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_656
	jmp	.label_639
.label_639:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_656
	jmp	.label_743
.label_743:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_745
	jmp	.label_656
.label_656:
	jmp	.label_640
.label_745:
	jmp	.label_718
.label_718:
	jmp	.label_724
.label_724:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_752
.label_725:
	jmp	.label_719
.label_719:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_756
	mov	byte ptr [rbp - 0x91], 0
.label_756:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_758
.label_758:
	jmp	.label_817
.label_817:
	jmp	.label_764
.label_764:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_663
.label_683:
	jmp	.label_645
.label_645:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_771
	test	byte ptr [rbp - 0x79], 1
	je	.label_780
	test	byte ptr [rbp - 0x91], 1
	jne	.label_780
.label_771:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_710:
	test	byte ptr [rbp - 0x79], 1
	je	.label_789
	test	byte ptr [rbp - 0x91], 1
	jne	.label_789
	jmp	.label_793
.label_793:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_794
	jmp	.label_640
.label_794:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_799
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_799
	jmp	.label_803
.label_803:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_805
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_805:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_810
.label_810:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_813
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_813:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_820
.label_820:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_825
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_825:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_799:
	jmp	.label_832
.label_832:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_834
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_834:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_838
.label_838:
	jmp	.label_643
.label_643:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_644
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_644:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_651
.label_651:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_655
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_655:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_660
.label_789:
	test	byte ptr [rbp - 0x81], 1
	je	.label_667
	jmp	.label_670
.label_670:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_672
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_672:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_667:
	jmp	.label_660
.label_660:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_682
	jmp	.label_688
.label_682:
	jmp	.label_690
.label_690:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_693
	test	byte ptr [rbp - 0x82], 1
	jne	.label_693
	jmp	.label_698
.label_698:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_699
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_699:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_703
.label_703:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_706
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_706:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_693:
	jmp	.label_714
.label_714:
	jmp	.label_715
.label_715:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_717
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_717:
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
	jmp	.label_710
.label_688:
	jmp	.label_728
.label_780:
	jmp	.label_729
.label_729:
	test	byte ptr [rbp - 0x79], 1
	je	.label_732
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_733
.label_732:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_734
.label_733:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_734
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
	jne	.label_742
.label_734:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_742
	jmp	.label_728
.label_742:
	jmp	.label_746
.label_746:
	jmp	.label_748
.label_748:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_749
	jmp	.label_640
.label_749:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_751
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_751
	jmp	.label_776
.label_776:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_809
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_809:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_757
.label_757:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_760
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_760:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_766
.label_766:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_769
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_769:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_751:
	jmp	.label_777
.label_777:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_779
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_779:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_785
.label_785:
	jmp	.label_728
.label_728:
	jmp	.label_790
.label_790:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_791
	test	byte ptr [rbp - 0x82], 1
	jne	.label_791
	jmp	.label_795
.label_795:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_797
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_797:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_801
.label_801:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_808
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_808:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_791:
	jmp	.label_815
.label_815:
	jmp	.label_816
.label_816:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_723
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_723:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_826
	mov	byte ptr [rbp - 0x7e], 0
.label_826:
	jmp	.label_762
.label_762:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_831
.label_739:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_835
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_835
	test	byte ptr [rbp - 0x7b], 1
	je	.label_835
	jmp	.label_640
.label_835:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_642
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_642
	test	byte ptr [rbp - 0x7d], 1
	je	.label_642
	test	byte ptr [rbp - 0x7e], 1
	je	.label_694
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
	jmp	.label_659
.label_694:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_661
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_661
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_665
.label_661:
	jmp	.label_828
.label_828:
	jmp	.label_642
.label_642:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_673
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_673
	jmp	.label_676
.label_676:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_678
	jmp	.label_681
.label_681:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_701
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_701:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_730
.label_730:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_676
.label_678:
	jmp	.label_673
.label_673:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_700
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_700:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_659
.label_640:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_708
	test	byte ptr [rbp - 0x79], 1
	je	.label_708
	mov	dword ptr [rbp - 0x34], 4
.label_708:
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
.label_659:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407dc0
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
	#Procedure 0x407e00

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
	je	.label_840
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_841
.label_840:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_841
.label_841:
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
	je	.label_842
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_842:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_847:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_844
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_847
.label_844:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_846
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_845]],  rax
.label_846:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_843
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_843:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408040

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
	#Procedure 0x408080

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
	jge	.label_850
	call	abort
.label_850:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_855
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_849
	call	xalloc_die
.label_849:
	test	byte ptr [rbp - 0x31], 1
	je	.label_854
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_848
.label_854:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_848:
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
	je	.label_853
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_845]]
	mov	qword ptr [rax + 8], rcx
.label_853:
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
.label_855:
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
	ja	.label_851
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_852
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_852:
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
.label_851:
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
	#Procedure 0x408300

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
	#Procedure 0x408340
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
	#Procedure 0x408360
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
	#Procedure 0x408390

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
	#Procedure 0x4083d0

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
	jne	.label_856
	call	abort
.label_856:
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
	#Procedure 0x408440

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
	#Procedure 0x408480
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
	#Procedure 0x4084b0
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
	#Procedure 0x4084e0

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
	#Procedure 0x408560

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
	#Procedure 0x408590

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
	#Procedure 0x4085b0
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
	#Procedure 0x4085e0

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
	#Procedure 0x408690

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
	#Procedure 0x4086d0

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
	#Procedure 0x408750
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
	#Procedure 0x408780
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
	#Procedure 0x4087c0

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
	#Procedure 0x408800
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
	#Procedure 0x408830

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
	#Procedure 0x408860

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
	#Procedure 0x408880

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
	je	.label_859
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_857
.label_859:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_858
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_857
.label_858:
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_860
	movabs	rax, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_857
.label_860:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_857:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408980

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
	je	.label_861
	movabs	rsi, OFFSET FLAT:.str_6
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_864
.label_861:
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_864:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_2
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
	mov	ecx, OFFSET FLAT:.str.3_1
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
	ja	.label_863
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_865]]
	jmp	rcx
.label_1045:
	jmp	.label_862
.label_1046:
	movabs	rdi, OFFSET FLAT:.str.4_1
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
	jmp	.label_862
.label_1047:
	movabs	rdi, OFFSET FLAT:.str.5_0
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
	jmp	.label_862
.label_1048:
	movabs	rdi, OFFSET FLAT:.str.6_0
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
	jmp	.label_862
.label_1049:
	movabs	rdi, OFFSET FLAT:.str.7_0
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
	jmp	.label_862
.label_1050:
	movabs	rdi, OFFSET FLAT:.str.8_0
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
	jmp	.label_862
.label_1051:
	movabs	rdi, OFFSET FLAT:.str.9_0
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
	jmp	.label_862
.label_1052:
	movabs	rdi, OFFSET FLAT:.str.10_0
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
	jmp	.label_862
.label_1053:
	movabs	rdi, OFFSET FLAT:.str.11_1
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
	jmp	.label_862
.label_1054:
	movabs	rdi, OFFSET FLAT:.str.12_1
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
	jmp	.label_862
.label_863:
	movabs	rdi, OFFSET FLAT:.str.13_0
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
.label_862:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f40
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
.label_868:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_866
	jmp	.label_867
.label_867:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_868
.label_866:
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
	#Procedure 0x408fb0

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
.label_869:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_873
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_871
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_870
.label_871:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_870:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_873:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_875
	jmp	.label_874
.label_875:
	jmp	.label_872
.label_872:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_869
.label_874:
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
	#Procedure 0x4090c0
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
	je	.label_876
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
.label_876:
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
	#Procedure 0x409230
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_1
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.19
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
	#Procedure 0x4092c0
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
	jae	.label_877
	call	xalloc_die
.label_877:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409310

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
	jne	.label_878
	cmp	qword ptr [rbp - 8], 0
	je	.label_878
	call	xalloc_die
.label_878:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409350
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
	jae	.label_879
	call	xalloc_die
.label_879:
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
	#Procedure 0x4093a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_880
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_880
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_882
.label_880:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_881
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_881
	call	xalloc_die
.label_881:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_882:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409420

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
	jne	.label_883
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_886
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
.label_886:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_884
	call	xalloc_die
.label_884:
	jmp	.label_885
.label_883:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_887
	call	xalloc_die
.label_887:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_885:
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
	#Procedure 0x409510

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
	#Procedure 0x409530
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
	#Procedure 0x409560
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
	#Procedure 0x4095a0
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
	jb	.label_888
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_889
.label_888:
	call	xalloc_die
.label_889:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409600

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
	#Procedure 0x409640
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
	#Procedure 0x409680

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_4
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4096c0

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
	jge	.label_890
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_893
.label_890:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_891
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_892
.label_891:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_892
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_892:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_894
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_894:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_893:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409790

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_895
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_896
.label_895:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_897
.label_896:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_897:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4097f0

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
	je	.label_898
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_898:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409830

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
	jne	.label_899
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_899
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_899
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_901
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_900
.label_901:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_900
.label_899:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_900:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409900

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
	jne	.label_902
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_902:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_903
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_903
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_903
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_904
.label_903:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_904:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4099b0
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x21
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	edx, 0x20
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x2c
	mov	rsi, rax
	call	strncpy
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + 0x20], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_906:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x29], cl
	jae	.label_905
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x20
	sete	dl
	mov	byte ptr [rbp - 0x29], dl
.label_905:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_907
	jmp	.label_908
.label_907:
	jmp	.label_909
.label_909:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax - 1], 0
	jmp	.label_906
.label_908:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a70

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 8]
	call	utmpxname
	mov	dword ptr [rbp - 0x44], eax
	call	setutxent
.label_912:
	call	getutxent
	mov	qword ptr [rbp - 0x40], rax
	cmp	rax, 0
	je	.label_913
	mov	rdi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rbp - 0x1c]
	call	desirable_utmp_entry
	test	al, 1
	jne	.label_911
	jmp	.label_910
.label_911:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_914
	lea	rsi, [rbp - 0x30]
	mov	eax, 0x180
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [rbp - 0x38], rax
.label_914:
	mov	eax, 0x180
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	add	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
	imul	rcx, rcx, 0x180
	add	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memcpy
.label_910:
	jmp	.label_912
.label_913:
	call	endutxent
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx], rcx
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b60

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x16], cl
	je	.label_915
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	cmp	edx, 7
	mov	byte ptr [rbp - 0x17], al
	je	.label_917
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x17], cl
	jmp	.label_917
.label_917:
	mov	al, byte ptr [rbp - 0x17]
	mov	byte ptr [rbp - 0x16], al
.label_915:
	mov	al, byte ptr [rbp - 0x16]
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_916
	test	byte ptr [rbp - 0x15], 1
	jne	.label_916
	mov	byte ptr [rbp - 1], 0
	jmp	.label_919
.label_916:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	cmp	eax, 0
	je	.label_918
	test	byte ptr [rbp - 0x15], 1
	je	.label_918
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 4]
	jge	.label_918
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	call	kill
	cmp	eax, 0
	jge	.label_918
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_918
	mov	byte ptr [rbp - 1], 0
	jmp	.label_919
.label_918:
	mov	byte ptr [rbp - 1], 1
.label_919:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c40

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_920
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_921
.label_920:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_921
.label_921:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0x77
	jae	.label_925
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_923
.label_925:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_923:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_922
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 8], cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_924
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	extend_abbrs
.label_924:
	jmp	.label_922
.label_922:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d40

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rdx], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d80

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	je	.label_926
	jmp	.label_928
.label_928:
	cmp	qword ptr [rbp - 8], 0
	je	.label_927
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_928
.label_927:
	jmp	.label_926
.label_926:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409de0
	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_929
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gmtime_r
	mov	qword ptr [rbp - 8], rax
	jmp	.label_930
.label_929:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_932
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_934
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_934:
	mov	al, byte ptr [rbp - 0x2a]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	test	al, 1
	jne	.label_931
	jmp	.label_933
.label_931:
	test	byte ptr [rbp - 0x29], 1
	je	.label_933
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_930
.label_933:
	jmp	.label_932
.label_932:
	mov	qword ptr [rbp - 8], 0
.label_930:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409eb0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	call	getenv_TZ
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_936
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_937
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_940
	jmp	.label_937
.label_936:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 8], 0
	jne	.label_937
.label_940:
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_939
.label_937:
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_938
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_939
.label_938:
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_935
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzfree
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_939
.label_935:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_939:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fa0

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_949
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_951
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	cmp	rax, rcx
	jae	.label_951
.label_949:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_941
.label_951:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_945
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_952:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcmp
	cmp	eax, 0
	je	.label_948
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_947
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 9
	cmp	rax, rcx
	jne	.label_944
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	jne	.label_947
.label_944:
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 9
	sub	rax, rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_942
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	byte ptr [rbp - 1], 0
	jmp	.label_941
.label_942:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_943
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	extend_abbrs
	jmp	.label_950
.label_943:
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_953
	mov	byte ptr [rbp - 1], 0
	jmp	.label_941
.label_953:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_950:
	jmp	.label_948
.label_947:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_946
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_946
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_946:
	jmp	.label_952
.label_948:
	jmp	.label_945
.label_945:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	byte ptr [rbp - 1], 1
.label_941:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a1a0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_954
	mov	byte ptr [rbp - 1], 1
	jmp	.label_956
.label_954:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_955
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_955:
	mov	rdi, qword ptr [rbp - 0x10]
	call	tzfree
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_956:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a230

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_960
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	mov	qword ptr [rbp - 8], rax
	jmp	.label_961
.label_960:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_958
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_963
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x68]
	call	localtime_r
	cmp	rax, 0
	je	.label_959
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	cmp	eax, 0
	je	.label_959
.label_963:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	test	al, 1
	jne	.label_959
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_959:
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	test	al, 1
	jne	.label_957
	jmp	.label_962
.label_957:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_961
.label_962:
	jmp	.label_958
.label_958:
	mov	qword ptr [rbp - 8], -1
.label_961:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a320

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 4]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 8]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x14]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	mov	dword ptr [rbp - 0x14], eax
	call	isdst_differ
	and	al, 1
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 0x14]
	or	esi, ecx
	cmp	esi, 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a3c0

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:.str_7
	call	getenv
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a3e0

	.globl change_env
	.type change_env, @function
change_env:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 8]
	cmp	eax, 0
	je	.label_964
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_967
.label_964:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_967
.label_967:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	cmp	eax, 0
	je	.label_966
	mov	byte ptr [rbp - 1], 0
	jmp	.label_965
.label_966:
	call	tzset
	mov	byte ptr [rbp - 1], 1
.label_965:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a450

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_968
	movabs	rdi, OFFSET FLAT:.str_7
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_969
.label_968:
	movabs	rdi, OFFSET FLAT:.str_7
	call	unsetenv
	mov	dword ptr [rbp - 0xc], eax
.label_969:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4b0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	eax, dl
	cmp	dword ptr [rbp - 8], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	je	.label_970
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 9], cl
	jg	.label_970
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_970:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a510

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
	jne	.label_971
	mov	dword ptr [rbp - 4], 0
	jmp	.label_975
.label_971:
	jmp	.label_972
.label_972:
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
	jne	.label_974
	jmp	.label_973
.label_974:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_972
.label_973:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_975:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a5d0

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
	jne	.label_976
	test	byte ptr [rbp - 0x13], 1
	je	.label_977
	test	byte ptr [rbp - 0x11], 1
	jne	.label_976
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_977
.label_976:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_978
	call	__errno_location
	mov	dword ptr [rax], 0
.label_978:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_979
.label_977:
	mov	dword ptr [rbp - 4], 0
.label_979:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a680

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
	je	.label_980
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_982
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_5
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_981
.label_982:
	mov	byte ptr [rbp - 5], 0
.label_981:
	jmp	.label_980
.label_980:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a700

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
	jne	.label_983
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_983:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_984
	movabs	rax, OFFSET FLAT:.str.1_6
	mov	qword ptr [rbp - 8], rax
.label_984:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a760

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
	ja	.label_985
	jmp	.label_987
.label_987:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_986
.label_985:
	jmp	.label_986
.label_986:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a7b0
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
	jb	.label_988
	jmp	.label_990
.label_990:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_988
	jmp	.label_989
.label_989:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_991
	jmp	.label_988
.label_988:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_992
.label_991:
	mov	byte ptr [rbp - 1], 0
.label_992:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a820
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
	jb	.label_993
	jmp	.label_996
.label_996:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_994
	jmp	.label_993
.label_993:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_995
.label_994:
	mov	byte ptr [rbp - 1], 0
.label_995:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a870
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_997
	jmp	.label_999
.label_999:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_998
.label_997:
	mov	byte ptr [rbp - 1], 0
.label_998:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8a0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1000
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1000:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8d0
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
	jb	.label_1001
	jmp	.label_1003
.label_1003:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1004
	jmp	.label_1001
.label_1001:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1002
.label_1004:
	mov	byte ptr [rbp - 1], 0
.label_1002:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a920
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1005
	jmp	.label_1007
.label_1007:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1006
.label_1005:
	mov	byte ptr [rbp - 1], 0
.label_1006:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a960
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1008
	jmp	.label_1010
.label_1010:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1009
.label_1008:
	mov	byte ptr [rbp - 1], 0
.label_1009:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a9a0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1011
	jmp	.label_1013
.label_1013:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1012
.label_1011:
	mov	byte ptr [rbp - 1], 0
.label_1012:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a9e0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1014
	jmp	.label_1016
.label_1016:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1015
.label_1014:
	mov	byte ptr [rbp - 1], 0
.label_1015:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aa20
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
	jb	.label_1017
	jmp	.label_1020
.label_1020:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1017
	jmp	.label_1021
.label_1021:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1017
	jmp	.label_1019
.label_1019:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_1022
	jmp	.label_1017
.label_1017:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1018
.label_1022:
	mov	byte ptr [rbp - 1], 0
.label_1018:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aaa0
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
	jb	.label_1023
	jmp	.label_1025
.label_1025:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1026
	jmp	.label_1023
.label_1023:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1024
.label_1026:
	mov	byte ptr [rbp - 1], 0
.label_1024:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aaf0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1027
	jmp	.label_1029
.label_1029:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1028
.label_1027:
	mov	byte ptr [rbp - 1], 0
.label_1028:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab30
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
	jb	.label_1030
	jmp	.label_1033
.label_1033:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1030
	jmp	.label_1031
.label_1031:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1032
	jmp	.label_1030
.label_1030:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1034
.label_1032:
	mov	byte ptr [rbp - 1], 0
.label_1034:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aba0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1035
	jmp	.label_1037
.label_1037:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1036
.label_1035:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1036:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40abe0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1038
	jmp	.label_1040
.label_1040:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1039
.label_1038:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1039:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
