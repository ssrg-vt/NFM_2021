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
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	je	.label_9
	nop	
	jmp	.label_8
.label_8:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_7
.label_9:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.5
	movabs	rdx, OFFSET FLAT:.str.6
	nop	
	mov	rdi, rax
	mov	al, 0
	nop	
	call	printf
	movabs	rdi, OFFSET FLAT:.str.7
	nop	
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	call	emit_ancillary_info
.label_7:
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401c60

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_15:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], cl
	nop	
	je	.label_11
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], cl
.label_11:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_12
	lea	rdi, [rdi]
	jmp	.label_14
.label_12:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_15
.label_14:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	je	.label_10
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.17
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.28
	mov	eax, 3
	mov	edx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	strncmp
	cmp	eax, 0
	je	.label_13
	movabs	rdi, OFFSET FLAT:.str.29
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.30
	lea	rsi, [rsi]
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.31
	nop	
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.32
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmove	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e70

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 4], 0
	nop	
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	eax, OFFSET FLAT:.str_0
	mov	esi, eax
	mov	rbp, rbp
	mov	edi, 6
	lea	rdi, [rdi]
	call	setlocale
	mov	edi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	mov	esi, edi
	mov	edi, OFFSET FLAT:.str.12
	nop	
	mov	ecx, edi
	nop	
	mov	rdi, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0x20], rax
	call	bindtextdomain
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	call	textdomain
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:close_stdout
	mov	edi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	call	atexit
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	r8,  qword ptr [word ptr [rip + Version]]
	mov	rcx, rsp
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x20], 0
	mov	qword ptr [word ptr [rcx + 24]], OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rcx + 16]], OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rcx + 8]], OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rcx]], OFFSET FLAT:usage
	mov	edx, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	r9d, OFFSET FLAT:.str.17
	mov	ecx, r9d
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	r10b, r9b
	lea	rdi, [rdi]
	mov	r9d, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	mov	al, r10b
	call	parse_gnu_standard_options_only
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	r9d,  dword ptr [dword ptr [rip + optind]]
	sub	edi, r9d
	mov	dword ptr [rbp - 0x38], edi
	lea	rsi, [rsi]
	je	.label_19
	nop	
	jmp	.label_17
.label_17:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_16
	jmp	.label_18
.label_19:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.5
	mov	esi, 1
	call	uptime
	jmp	.label_20
.label_16:
	nop	
	xor	esi, esi
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	call	uptime
	mov	rbp, rbp
	jmp	.label_20
.label_18:
	movabs	rdi, OFFSET FLAT:.str.17_0
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 1
	movsxd	rdi, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_20:
	mov	rbp, rbp
	xor	eax, eax
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402070

	.globl uptime
	.type uptime, @function
uptime:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x18]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rsi, rax
	call	read_utmp
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_21
	mov	rsp, rsp
	call	__errno_location
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x24], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
.label_21:
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_uptime
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402120

	.globl print_uptime
	.type print_uptime, @function
print_uptime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20e0
	movabs	rax, OFFSET FLAT:.str.34
	nop	
	movabs	rcx, OFFSET FLAT:.str.35
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	call	fopen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_46
	nop	
	mov	esi, 0x2000
	lea	rdi, [rbp - 0x2070]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	call	fgets_unlocked
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x2070]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2078], rax
	mov	rax, qword ptr [rbp - 0x2078]
	mov	rsp, rsp
	cmp	rax, rdx
	mov	rsp, rsp
	jne	.label_23
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x2080]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x2070]
	call	c_strtod
	nop	
	lea	rsi, [rbp - 0x2070]
	movsd	qword ptr [rbp - 0x2088], xmm0
	mov	rsp, rsp
	cmp	rsi, qword ptr [rbp - 0x2080]
	lea	rdi, [rdi]
	je	.label_42
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movsd	xmm1, qword ptr [rbp - 0x2088]
	ucomisd	xmm1, xmm0
	jb	.label_25
	movsd	xmm0,  qword ptr [word ptr [label_31]]
	ucomisd	xmm0, qword ptr [rbp - 0x2088]
	mov	rbp, rbp
	jbe	.label_25
	movsd	xmm0, qword ptr [rbp - 0x2088]
	movsd	qword ptr [rbp - 0x2090], xmm0
	jmp	.label_34
.label_25:
	movsd	xmm0,  qword ptr [word ptr [label_39]]
	movsd	qword ptr [rbp - 0x2090], xmm0
	nop	
	jmp	.label_34
.label_34:
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0x2090]
	cvttsd2si	rax, xmm0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_42:
	jmp	.label_23
.label_23:
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp - 0x2094], eax
.label_46:
	mov	rbp, rbp
	jmp	.label_27
.label_27:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_29
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x2095], cl
	lea	rsi, [rsi]
	je	.label_35
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	lea	rdi, [rdi]
	cmp	edx, 7
	mov	byte ptr [rbp - 0x2096], al
	je	.label_22
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2096], cl
	jmp	.label_22
.label_22:
	mov	al, byte ptr [rbp - 0x2096]
	nop	
	mov	byte ptr [rbp - 0x2095], al
.label_35:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x2095]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	add	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	movsx	ecx, word ptr [rdx]
	nop	
	cmp	ecx, 2
	jne	.label_30
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rax + 0x154]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_30:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 0x180
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_27
.label_29:
	xor	eax, eax
	mov	edi, eax
	call	time
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jne	.label_26
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_32
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x209c], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x209c]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_32:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_26:
	lea	rdi, [rbp - 0x28]
	mov	rsp, rsp
	mov	eax, 0x3c
	mov	ecx, eax
	mov	eax, 0xe10
	mov	edx, eax
	mov	eax, 0x15180
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20a8], rdx
	lea	rsi, [rsi]
	cqo	
	lea	rsi, [rsi]
	idiv	rsi
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	imul	rsi, qword ptr [rbp - 0x38], 0x15180
	lea	rsi, [rsi]
	sub	rax, rsi
	lea	rsi, [rsi]
	cqo	
	mov	rsi, qword ptr [rbp - 0x20a8]
	mov	rbp, rbp
	idiv	rsi
	mov	r8d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], r8d
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	imul	r9, qword ptr [rbp - 0x38], 0x15180
	sub	rax, r9
	imul	r8d, dword ptr [rbp - 0x3c], 0xe10
	nop	
	movsxd	r9, r8d
	sub	rax, r9
	cqo	
	idiv	rcx
	lea	rsi, [rsi]
	mov	r8d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], r8d
	call	localtime
	nop	
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	je	.label_28
	movabs	rdi, OFFSET FLAT:.str.37
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20b0], rax
	nop	
	call	gettext
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20b0]
	lea	rsi, [rsi]
	mov	rsi, rax
	call	fprintftime
	mov	qword ptr [rbp - 0x20b8], rax
	jmp	.label_43
.label_28:
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20bc], eax
.label_43:
	cmp	qword ptr [rbp - 0x30], -1
	lea	rdi, [rdi]
	jne	.label_44
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20c0], eax
	jmp	.label_24
.label_44:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	jge	.label_41
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	select_plural
	movabs	rdi, OFFSET FLAT:.str.40
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.41
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rsp, rsp
	call	ngettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x40]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20c4], eax
	jmp	.label_38
.label_41:
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	esi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20c8], eax
.label_38:
	jmp	.label_24
.label_24:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	select_plural
	movabs	rdi, OFFSET FLAT:.str.43
	movabs	rsi, OFFSET FLAT:.str.44
	mov	rbp, rbp
	mov	rdx, rax
	mov	rbp, rbp
	call	ngettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	mov	esi, 3
	lea	rdi, [rbp - 0x60]
	mov	dword ptr [rbp - 0x20cc], eax
	call	getloadavg
	mov	dword ptr [rbp - 0x64], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x64], -1
	lea	rsi, [rsi]
	jne	.label_40
	nop	
	mov	edi, 0xa
	nop	
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20d0], eax
	lea	rdi, [rdi]
	jmp	.label_36
.label_40:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x64], 0
	jle	.label_47
	movabs	rdi, OFFSET FLAT:.str.45
	call	gettext
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 1
	call	printf
	mov	dword ptr [rbp - 0x20d4], eax
.label_47:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x64], 1
	jle	.label_37
	movabs	rdi, OFFSET FLAT:.str.46
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	call	printf
	mov	dword ptr [rbp - 0x20d8], eax
.label_37:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x64], 2
	jle	.label_45
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.46
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 0x50]
	nop	
	mov	al, 1
	mov	rsp, rsp
	call	printf
	mov	dword ptr [rbp - 0x20dc], eax
.label_45:
	nop	
	cmp	dword ptr [rbp - 0x64], 0
	jle	.label_33
	nop	
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20e0], eax
.label_33:
	mov	rsp, rsp
	jmp	.label_36
.label_36:
	lea	rsi, [rsi]
	add	rsp, 0x20e0
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl select_plural
	.type select_plural, @function
select_plural:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], -1
	ja	.label_48
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_49
.label_48:
	mov	eax, 0xf4240
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
.label_49:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027c0

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	call	c_locale
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_52
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_51
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_51:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 8], xmm0
	mov	rbp, rbp
	jmp	.label_50
.label_52:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	strtod_l
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 0x20], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 8], xmm0
.label_50:
	movsd	xmm0, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402860

	.globl c_locale
	.type c_locale, @function
c_locale:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	nop	
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_53
	mov	edi, 0x1fbf
	movabs	rsi, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edx, eax
	call	newlocale
	nop	
	mov	qword ptr [word ptr [c_locale_cache]],  rax
.label_53:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402910

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	close_stream
	cmp	eax, 0
	je	.label_56
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_58
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_56
.label_58:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_55
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_57
.label_55:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_57:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_56:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_54
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_54:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a40

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	r9d, 0xffffffff
	mov	rsp, rsp
	lea	r10, [rbp - 0x25]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	byte ptr [rbp - 0x25], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], r8d
	mov	r8d, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r10
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp + 8], r10
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	nop	
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ad0

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0xb40
	mov	al, cl
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	nop	
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [rbp - 0x3c], r9d
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r11
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], r10
	mov	dword ptr [rbp - 0x54], ecx
	mov	qword ptr [rbp - 0x60], -1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rdx + 8]
	nop	
	mov	dword ptr [rbp - 0x64], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x80], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x30]
	mov	qword ptr [rbp - 0x70], rdx
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_257
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 0x70], rax
.label_257:
	nop	
	cmp	dword ptr [rbp - 0x64], 0xc
	jle	.label_304
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0xc
	nop	
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_318
.label_304:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_314
	nop	
	mov	dword ptr [rbp - 0x64], 0xc
.label_314:
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x88], rax
.label_97:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_324
	mov	dword ptr [rbp - 0x8c], 0
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	al, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	byte ptr [rbp - 0xf1], 0
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_331
	jmp	.label_350
.label_350:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rdi, [rdi]
	jge	.label_352
	xor	eax, eax
	mov	dword ptr [rbp - 0x83c], eax
	jmp	.label_362
.label_352:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x83c], eax
.label_362:
	mov	eax, dword ptr [rbp - 0x83c]
	mov	rbp, rbp
	movsxd	rcx, eax
	nop	
	mov	qword ptr [rbp - 0x110], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	jae	.label_369
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x848], rax
	jmp	.label_381
.label_369:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x848], rax
.label_381:
	mov	rax, qword ptr [rbp - 0x848]
	mov	qword ptr [rbp - 0x118], rax
	nop	
	mov	rax, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_386
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_95
.label_386:
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_398
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x94], 0
	lea	rdi, [rdi]
	jne	.label_401
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	jae	.label_401
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_409
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_420
.label_409:
	jmp	.label_423
.label_423:
	mov	qword ptr [rbp - 0x128], 0
.label_439:
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	jae	.label_430
	lea	rsi, [rsi]
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84c], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_439
.label_430:
	lea	rsi, [rsi]
	jmp	.label_451
.label_451:
	mov	rbp, rbp
	jmp	.label_454
.label_420:
	jmp	.label_458
.label_458:
	nop	
	mov	qword ptr [rbp - 0x130], 0
.label_474:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x130]
	nop	
	cmp	rax, qword ptr [rbp - 0x120]
	jae	.label_285
	mov	rbp, rbp
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x850], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_474
.label_285:
	jmp	.label_483
.label_483:
	jmp	.label_454
.label_454:
	mov	rsp, rsp
	jmp	.label_401
.label_401:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x854], eax
.label_398:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_96
.label_331:
	lea	rsi, [rsi]
	jmp	.label_498
.label_498:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, rax
	nop	
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	esi, edx
	sub	esi, 0x23
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x858], edx
	nop	
	mov	dword ptr [rbp - 0x85c], esi
	je	.label_502
	jmp	.label_521
.label_521:
	nop	
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x860], eax
	je	.label_522
	lea	rdi, [rdi]
	jmp	.label_527
.label_527:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x864], eax
	je	.label_522
	jmp	.label_534
.label_534:
	mov	eax, dword ptr [rbp - 0x858]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x868], eax
	je	.label_522
	jmp	.label_235
.label_235:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x858]
	lea	rdi, [rdi]
	sub	eax, 0x5e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x86c], eax
	je	.label_543
	mov	rsp, rsp
	jmp	.label_550
.label_550:
	nop	
	mov	eax, dword ptr [rbp - 0x858]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x870], eax
	lea	rsi, [rsi]
	jne	.label_307
	mov	rsp, rsp
	jmp	.label_522
.label_522:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_498
.label_543:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe2], 1
	nop	
	jmp	.label_498
.label_502:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_498
.label_307:
	mov	rbp, rbp
	jmp	.label_575
.label_575:
	jmp	.label_576
.label_576:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_88
	mov	dword ptr [rbp - 0x3c], 0
.label_72:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c], 0xccccccc
	jg	.label_589
	cmp	dword ptr [rbp - 0x3c], 0xccccccc
	jne	.label_593
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	nop	
	cmp	ecx, 7
	jle	.label_593
.label_589:
	mov	dword ptr [rbp - 0x3c], 0x7fffffff
	jmp	.label_60
.label_593:
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x3c], 0xa
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x3c], eax
.label_60:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_72
	mov	rsp, rsp
	jmp	.label_88
.label_88:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	mov	rsp, rsp
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x874], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x878], edx
	je	.label_92
	lea	rsi, [rsi]
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0x874]
	sub	eax, 0x4f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x87c], eax
	lea	rsi, [rsi]
	jne	.label_106
	jmp	.label_92
.label_92:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x90], edx
	lea	rsi, [rsi]
	jmp	.label_111
.label_106:
	mov	dword ptr [rbp - 0x90], 0
.label_111:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x880], ecx
	nop	
	je	.label_129
	lea	rsi, [rsi]
	jmp	.label_141
.label_141:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x25
	mov	dword ptr [rbp - 0x884], eax
	mov	rbp, rbp
	je	.label_519
	jmp	.label_554
.label_554:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x3a
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x888], eax
	je	.label_151
	jmp	.label_63
.label_63:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x88c], eax
	je	.label_158
	jmp	.label_163
.label_163:
	mov	eax, dword ptr [rbp - 0x880]
	mov	rbp, rbp
	sub	eax, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x890], eax
	je	.label_164
	jmp	.label_173
.label_173:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x43
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x894], eax
	je	.label_174
	mov	rbp, rbp
	jmp	.label_184
.label_184:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x898], eax
	nop	
	je	.label_229
	mov	rsp, rsp
	jmp	.label_190
.label_190:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x46
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x89c], eax
	nop	
	je	.label_191
	nop	
	jmp	.label_196
.label_196:
	mov	eax, dword ptr [rbp - 0x880]
	nop	
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x8a0], eax
	je	.label_199
	jmp	.label_204
.label_204:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x48
	nop	
	mov	dword ptr [rbp - 0x8a4], eax
	je	.label_208
	jmp	.label_214
.label_214:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x49
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8a8], eax
	je	.label_215
	jmp	.label_219
.label_219:
	nop	
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8ac], eax
	je	.label_220
	jmp	.label_222
.label_222:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x8b0], eax
	je	.label_224
	jmp	.label_234
.label_234:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x880]
	mov	rsp, rsp
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x8b4], eax
	nop	
	je	.label_237
	mov	rsp, rsp
	jmp	.label_245
.label_245:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x52
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8b8], eax
	lea	rsi, [rsi]
	je	.label_250
	jmp	.label_258
.label_258:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x53
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8bc], eax
	je	.label_261
	jmp	.label_266
.label_266:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x8c0], eax
	lea	rsi, [rsi]
	je	.label_267
	lea	rsi, [rsi]
	jmp	.label_272
.label_272:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x880]
	lea	rdi, [rdi]
	sub	eax, 0x55
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c4], eax
	mov	rbp, rbp
	je	.label_238
	jmp	.label_284
.label_284:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x56
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8c8], eax
	je	.label_199
	jmp	.label_290
.label_290:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x880]
	lea	rdi, [rdi]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x8cc], eax
	je	.label_293
	jmp	.label_391
.label_391:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x8d0], eax
	je	.label_300
	nop	
	jmp	.label_308
.label_308:
	mov	eax, dword ptr [rbp - 0x880]
	mov	rsp, rsp
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x8d4], eax
	lea	rdi, [rdi]
	je	.label_310
	mov	rbp, rbp
	jmp	.label_317
.label_317:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x8d8], eax
	lea	rsi, [rsi]
	je	.label_319
	nop	
	jmp	.label_328
.label_328:
	mov	eax, dword ptr [rbp - 0x880]
	mov	rsp, rsp
	sub	eax, 0x61
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8dc], eax
	mov	rsp, rsp
	je	.label_330
	jmp	.label_339
.label_339:
	mov	eax, dword ptr [rbp - 0x880]
	nop	
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x8e0], eax
	je	.label_341
	mov	rbp, rbp
	jmp	.label_345
.label_345:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x8e4], eax
	je	.label_347
	nop	
	jmp	.label_357
.label_357:
	mov	eax, dword ptr [rbp - 0x880]
	mov	rbp, rbp
	sub	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8e8], eax
	je	.label_169
	nop	
	jmp	.label_367
.label_367:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x65
	nop	
	mov	dword ptr [rbp - 0x8ec], eax
	je	.label_368
	jmp	.label_375
.label_375:
	nop	
	mov	eax, dword ptr [rbp - 0x880]
	mov	rsp, rsp
	sub	eax, 0x67
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8f0], eax
	mov	rbp, rbp
	je	.label_199
	mov	rsp, rsp
	jmp	.label_312
.label_312:
	mov	eax, dword ptr [rbp - 0x880]
	nop	
	sub	eax, 0x68
	nop	
	mov	dword ptr [rbp - 0x8f4], eax
	mov	rsp, rsp
	je	.label_341
	jmp	.label_388
.label_388:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6a
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8f8], eax
	je	.label_389
	jmp	.label_395
.label_395:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8fc], eax
	lea	rdi, [rdi]
	je	.label_117
	nop	
	jmp	.label_580
.label_580:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6c
	nop	
	mov	dword ptr [rbp - 0x900], eax
	je	.label_403
	jmp	.label_288
.label_288:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x904], eax
	je	.label_332
	mov	rsp, rsp
	jmp	.label_416
.label_416:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x908], eax
	je	.label_578
	jmp	.label_207
.label_207:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x70
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90c], eax
	lea	rsi, [rsi]
	je	.label_427
	jmp	.label_437
.label_437:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x910], eax
	je	.label_524
	jmp	.label_441
.label_441:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x914], eax
	je	.label_443
	jmp	.label_448
.label_448:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rdi, [rdi]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x918], eax
	lea	rsi, [rsi]
	je	.label_450
	jmp	.label_459
.label_459:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x74
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x91c], eax
	je	.label_530
	nop	
	jmp	.label_255
.label_255:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x880]
	nop	
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x920], eax
	je	.label_333
	lea	rdi, [rdi]
	jmp	.label_477
.label_477:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x880]
	mov	rbp, rbp
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x924], eax
	je	.label_480
	jmp	.label_428
.label_428:
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x928], eax
	je	.label_209
	jmp	.label_470
.label_470:
	mov	eax, dword ptr [rbp - 0x880]
	lea	rsi, [rsi]
	sub	eax, 0x79
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x92c], eax
	je	.label_494
	jmp	.label_297
.label_297:
	nop	
	mov	eax, dword ptr [rbp - 0x880]
	sub	eax, 0x7a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x930], eax
	je	.label_501
	jmp	.label_507
.label_519:
	nop	
	cmp	dword ptr [rbp - 0x90], 0
	mov	rsp, rsp
	je	.label_509
	jmp	.label_142
.label_509:
	mov	rsp, rsp
	jmp	.label_516
.label_516:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	jge	.label_520
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x934], eax
	jmp	.label_526
.label_520:
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x934], eax
.label_526:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x934]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x140], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x138]
	cmp	rcx, qword ptr [rbp - 0x140]
	jae	.label_194
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	mov	qword ptr [rbp - 0x940], rax
	lea	rsi, [rsi]
	jmp	.label_545
.label_194:
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x940], rax
.label_545:
	nop	
	mov	rax, qword ptr [rbp - 0x940]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_553
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_95
.label_553:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_571
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_115
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	cmp	rax, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	jae	.label_115
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	sub	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_585
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	nop	
	jne	.label_594
.label_585:
	nop	
	jmp	.label_596
.label_596:
	nop	
	mov	qword ptr [rbp - 0x158], 0
.label_69:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	jae	.label_600
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x944], eax
	mov	rax, qword ptr [rbp - 0x158]
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	mov	rbp, rbp
	jmp	.label_69
.label_600:
	lea	rdi, [rdi]
	jmp	.label_79
.label_79:
	nop	
	jmp	.label_82
.label_594:
	lea	rdi, [rdi]
	jmp	.label_83
.label_83:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], 0
.label_102:
	mov	rax, qword ptr [rbp - 0x160]
	cmp	rax, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	jae	.label_93
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	nop	
	mov	dword ptr [rbp - 0x948], eax
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x160], rax
	jmp	.label_102
.label_93:
	lea	rsi, [rsi]
	jmp	.label_110
.label_110:
	lea	rsi, [rsi]
	jmp	.label_82
.label_82:
	mov	rsp, rsp
	jmp	.label_115
.label_115:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	fputc
	mov	dword ptr [rbp - 0x94c], eax
.label_571:
	mov	rax, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	jmp	.label_91
.label_330:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_485
	lea	rsi, [rsi]
	jmp	.label_142
.label_485:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xf1], 1
	nop	
	je	.label_144
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_144:
	mov	rsp, rsp
	jmp	.label_137
.label_158:
	cmp	dword ptr [rbp - 0x90], 0
	nop	
	je	.label_155
	mov	rsp, rsp
	jmp	.label_142
.label_155:
	test	byte ptr [rbp - 0xf1], 1
	lea	rdi, [rdi]
	je	.label_159
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_159:
	lea	rdi, [rdi]
	jmp	.label_137
.label_341:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xf1], 1
	lea	rdi, [rdi]
	je	.label_171
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe2], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe1], 0
.label_171:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x45
	nop	
	jne	.label_180
	nop	
	jmp	.label_142
.label_180:
	nop	
	jmp	.label_137
.label_164:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_188
	jmp	.label_142
.label_188:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_192
	mov	byte ptr [rbp - 0xe2], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xe1], 0
.label_192:
	jmp	.label_137
.label_347:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_200
	jmp	.label_142
.label_200:
	lea	rdi, [rdi]
	jmp	.label_137
.label_217:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_396:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0xe2]
	mov	r8d, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	mov	r9d, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	and	cl, 1
	mov	rsp, rsp
	movzx	ecx, cl
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	nop	
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	nop	
	mov	qword ptr [rbp - 0x168], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x170], rax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_230
	xor	eax, eax
	mov	dword ptr [rbp - 0x950], eax
	mov	rbp, rbp
	jmp	.label_246
.label_230:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x950], eax
.label_246:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x950]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x178], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x170]
	cmp	rcx, qword ptr [rbp - 0x178]
	nop	
	jae	.label_256
	mov	rax, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x958], rax
	nop	
	jmp	.label_269
.label_256:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x958], rax
.label_269:
	mov	rax, qword ptr [rbp - 0x958]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], rax
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_274
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_95
.label_274:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_348
	nop	
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_189
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x170]
	nop	
	cmp	rax, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	jae	.label_189
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x188], rax
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rsi, [rsi]
	je	.label_306
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_487
.label_306:
	mov	rbp, rbp
	jmp	.label_322
.label_322:
	nop	
	mov	qword ptr [rbp - 0x190], 0
.label_64:
	mov	rax, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x188]
	jae	.label_329
	lea	rdi, [rdi]
	mov	edi, 0x30
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x95c], eax
	mov	rax, qword ptr [rbp - 0x190]
	add	rax, 1
	mov	qword ptr [rbp - 0x190], rax
	mov	rsp, rsp
	jmp	.label_64
.label_329:
	nop	
	jmp	.label_349
.label_349:
	nop	
	jmp	.label_351
.label_487:
	jmp	.label_353
.label_353:
	mov	qword ptr [rbp - 0x198], 0
.label_371:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x188]
	jae	.label_359
	mov	edi, 0x20
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x960], eax
	mov	rax, qword ptr [rbp - 0x198]
	add	rax, 1
	mov	qword ptr [rbp - 0x198], rax
	jmp	.label_371
.label_359:
	jmp	.label_377
.label_377:
	mov	rsp, rsp
	jmp	.label_351
.label_351:
	jmp	.label_189
.label_189:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
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
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r14
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	lea	rdi, [rdi]
	call	__strftime_internal
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x970], rax
.label_348:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_91
.label_137:
	lea	rax, [rbp - 0x19d]
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	nop	
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x25
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_407
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x1a8]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1a8], rsi
	mov	rbp, rbp
	mov	byte ptr [rdx], cl
.label_407:
	mov	eax, 0x400
	mov	esi, eax
	mov	rbp, rbp
	lea	rdx, [rbp - 0x19d]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x5b0]
	nop	
	mov	eax, dword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	mov	r9, r8
	add	r9, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a8], r9
	lea	rdi, [rdi]
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0x1a8]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	strftime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5b8], rax
	cmp	qword ptr [rbp - 0x5b8], 0
	mov	rsp, rsp
	je	.label_135
	jmp	.label_479
.label_479:
	mov	rax, qword ptr [rbp - 0x5b8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x5c0], rax
	nop	
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jge	.label_481
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x974], eax
	mov	rsp, rsp
	jmp	.label_488
.label_481:
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x974], eax
.label_488:
	nop	
	mov	eax, dword ptr [rbp - 0x974]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	cmp	rcx, qword ptr [rbp - 0x5c8]
	mov	rsp, rsp
	jae	.label_486
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	qword ptr [rbp - 0x980], rax
	jmp	.label_506
.label_486:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x980], rax
.label_506:
	mov	rax, qword ptr [rbp - 0x980]
	mov	qword ptr [rbp - 0x5d0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5d0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	nop	
	cmp	rax, rcx
	jb	.label_517
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_95
.label_517:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_133
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_71
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x5c8]
	lea	rsi, [rsi]
	jae	.label_71
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x5d8], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_541
	nop	
	cmp	dword ptr [rbp - 0x8c], 0x2b
	nop	
	jne	.label_295
.label_541:
	nop	
	jmp	.label_556
.label_556:
	mov	qword ptr [rbp - 0x5e0], 0
.label_572:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5d8]
	lea	rdi, [rdi]
	jae	.label_560
	lea	rdi, [rdi]
	mov	edi, 0x30
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x984], eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5e0], rax
	jmp	.label_572
.label_560:
	jmp	.label_582
.label_582:
	lea	rdi, [rdi]
	jmp	.label_128
.label_295:
	nop	
	jmp	.label_587
.label_587:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5e8], 0
.label_601:
	nop	
	mov	rax, qword ptr [rbp - 0x5e8]
	cmp	rax, qword ptr [rbp - 0x5d8]
	jae	.label_592
	mov	rbp, rbp
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x988], eax
	mov	rax, qword ptr [rbp - 0x5e8]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x5e8], rax
	jmp	.label_601
.label_592:
	mov	rbp, rbp
	jmp	.label_65
.label_65:
	jmp	.label_128
.label_128:
	jmp	.label_71
.label_71:
	jmp	.label_73
.label_73:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xe1], 1
	lea	rdi, [rdi]
	je	.label_76
	lea	rax, [rbp - 0x5b0]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsi, rax
	mov	rsp, rsp
	call	fwrite_lowcase
	jmp	.label_90
.label_76:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_94
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x5b0]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	fwrite_uppcase
	mov	rsp, rsp
	jmp	.label_108
.label_94:
	nop	
	mov	eax, 1
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x5b0]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x990], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x990]
	mov	rsp, rsp
	call	fwrite
	nop	
	mov	qword ptr [rbp - 0x998], rax
.label_108:
	jmp	.label_90
.label_90:
	lea	rdi, [rdi]
	jmp	.label_131
.label_131:
	jmp	.label_133
.label_133:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5d0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_135
.label_135:
	jmp	.label_91
.label_174:
	cmp	dword ptr [rbp - 0x90], 0x45
	nop	
	jne	.label_145
	nop	
	jmp	.label_137
.label_145:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x99c], eax
	lea	rdi, [rdi]
	mov	eax, esi
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0x99c]
	mov	rbp, rbp
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x5ec], eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rdi + 0x14]
	lea	rdi, [rdi]
	cdq	
	idiv	esi
	mov	rsp, rsp
	cmp	edx, 0
	mov	byte ptr [rbp - 0x99d], cl
	jge	.label_152
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ec]
	mov	rsp, rsp
	setl	cl
	mov	byte ptr [rbp - 0x99d], cl
.label_152:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x99d]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ec]
	sub	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5ec], edx
	mov	dword ptr [rbp - 0x94], 2
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x14], 0xfffff894
	mov	rbp, rbp
	setl	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x5ec]
	nop	
	mov	dword ptr [rbp - 0x9c], edx
	mov	rbp, rbp
	jmp	.label_179
.label_209:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x4f
	nop	
	jne	.label_202
	lea	rdi, [rdi]
	jmp	.label_142
.label_202:
	jmp	.label_137
.label_229:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_211
	mov	rsp, rsp
	jmp	.label_142
.label_211:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.1_1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_217
.label_169:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_182
	mov	rbp, rbp
	jmp	.label_142
.label_182:
	lea	rdi, [rdi]
	jmp	.label_225
.label_225:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	lea	rsi, [rsi]
	jmp	.label_228
.label_368:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_243
	mov	rsp, rsp
	jmp	.label_142
.label_243:
	jmp	.label_251
.label_251:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	nop	
	jmp	.label_122
.label_325:
	mov	byte ptr [rbp - 0x9e], 1
	mov	rbp, rbp
	jmp	.label_263
.label_179:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_198
	nop	
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x8c], eax
.label_198:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x99e], cl
	nop	
	jne	.label_270
	nop	
	mov	al, 1
	mov	ecx, 0x270f
	nop	
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	mov	rsp, rsp
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x99f], al
	mov	rsp, rsp
	jb	.label_253
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	nop	
	cmp	eax, dword ptr [rbp - 0x3c]
	setl	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x99f], cl
.label_253:
	mov	al, byte ptr [rbp - 0x99f]
	mov	byte ptr [rbp - 0x99e], al
.label_270:
	nop	
	mov	al, byte ptr [rbp - 0x99e]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9e], al
	mov	rbp, rbp
	jmp	.label_299
.label_122:
	nop	
	cmp	dword ptr [rbp - 0x8c], 0
	mov	rbp, rbp
	jne	.label_417
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_417:
	mov	rsp, rsp
	jmp	.label_228
.label_228:
	cmp	dword ptr [rbp - 0x98], 0
	lea	rdi, [rdi]
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_216:
	mov	byte ptr [rbp - 0x9e], 0
.label_299:
	mov	dword ptr [rbp - 0xa4], 0
.label_263:
	cmp	dword ptr [rbp - 0x90], 0x4f
	mov	rsp, rsp
	jne	.label_338
	nop	
	test	byte ptr [rbp - 0x9d], 1
	nop	
	jne	.label_338
	nop	
	jmp	.label_137
.label_338:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	mov	rsp, rsp
	test	byte ptr [rbp - 0x9d], 1
	mov	rbp, rbp
	je	.label_343
	mov	rbp, rbp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
.label_343:
	mov	rbp, rbp
	jmp	.label_361
.label_361:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_364
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rbp, rbp
	mov	byte ptr [rax - 1], 0x3a
.label_364:
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	sar	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9a4], eax
	mov	eax, ecx
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x9a4]
	lea	rsi, [rsi]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, rdi
	add	r8, -1
	nop	
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rdi - 1], sil
	mov	edx, dword ptr [rbp - 0x9c]
	mov	eax, edx
	xor	edx, edx
	div	ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0x9a5], al
	jne	.label_379
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9a5], al
.label_379:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x9a5]
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_361
	mov	rbp, rbp
	jmp	.label_344
.label_344:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x3c]
	jge	.label_419
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x94], eax
.label_419:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x9d], 1
	je	.label_429
	mov	rbp, rbp
	mov	eax, 0x2d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9ac], eax
	nop	
	jmp	.label_434
.label_429:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	lea	rdi, [rdi]
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9ac], eax
.label_434:
	mov	eax, dword ptr [rbp - 0x9ac]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_447
	cmp	byte ptr [rbp - 0xb1], 0
	lea	rsi, [rsi]
	je	.label_61
	jmp	.label_461
.label_461:
	mov	qword ptr [rbp - 0x5f8], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jge	.label_464
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9b0], eax
	lea	rdi, [rdi]
	jmp	.label_469
.label_464:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9b0], eax
.label_469:
	mov	eax, dword ptr [rbp - 0x9b0]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x600], rcx
	mov	rcx, qword ptr [rbp - 0x5f8]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x600]
	lea	rdi, [rdi]
	jae	.label_478
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x9b8], rax
	nop	
	jmp	.label_490
.label_478:
	mov	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x9b8], rax
.label_490:
	mov	rax, qword ptr [rbp - 0x9b8]
	mov	qword ptr [rbp - 0x608], rax
	nop	
	mov	rax, qword ptr [rbp - 0x608]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_497
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_95
.label_497:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_513
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_518
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5f8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x600]
	nop	
	jae	.label_518
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	sub	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x610], rax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_528
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	nop	
	jne	.label_535
.label_528:
	mov	rbp, rbp
	jmp	.label_539
.label_539:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x618], 0
.label_559:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x618]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x610]
	lea	rsi, [rsi]
	jae	.label_546
	mov	rbp, rbp
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	fputc
	mov	dword ptr [rbp - 0x9bc], eax
	mov	rax, qword ptr [rbp - 0x618]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x618], rax
	jmp	.label_559
.label_546:
	jmp	.label_566
.label_566:
	lea	rdi, [rdi]
	jmp	.label_567
.label_535:
	mov	rbp, rbp
	jmp	.label_570
.label_570:
	mov	qword ptr [rbp - 0x620], 0
.label_588:
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x610]
	nop	
	jae	.label_574
	lea	rsi, [rsi]
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	fputc
	mov	dword ptr [rbp - 0x9c0], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x620]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x620], rax
	jmp	.label_588
.label_574:
	mov	rsp, rsp
	jmp	.label_595
.label_595:
	jmp	.label_567
.label_567:
	nop	
	jmp	.label_518
.label_518:
	mov	rbp, rbp
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9c4], eax
.label_513:
	mov	rax, qword ptr [rbp - 0x608]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_61
.label_61:
	lea	rsi, [rsi]
	jmp	.label_66
.label_447:
	nop	
	lea	rax, [rbp - 0xe0]
	movsxd	rcx, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	add	rax, 0x17
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rbp, rbp
	sub	rcx, rax
	cmp	byte ptr [rbp - 0xb1], 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edi, sil
	mov	rsp, rsp
	movsxd	rax, edi
	sub	rcx, rax
	mov	rsp, rsp
	mov	edi, ecx
	mov	dword ptr [rbp - 0x624], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x624], 0
	jle	.label_70
	cmp	dword ptr [rbp - 0x8c], 0x5f
	lea	rdi, [rdi]
	jne	.label_100
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jb	.label_107
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_95
.label_107:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_119
	mov	rsp, rsp
	jmp	.label_121
.label_121:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x630], 0
.label_140:
	mov	rax, qword ptr [rbp - 0x630]
	movsxd	rcx, dword ptr [rbp - 0x624]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jae	.label_125
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9c8], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x630]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x630], rax
	nop	
	jmp	.label_140
.label_125:
	jmp	.label_390
.label_390:
	jmp	.label_119
.label_119:
	movsxd	rax, dword ptr [rbp - 0x624]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x3c]
	cmp	ecx, dword ptr [rbp - 0x624]
	mov	rbp, rbp
	jle	.label_154
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x624]
	nop	
	mov	dword ptr [rbp - 0x9cc], eax
	lea	rsi, [rsi]
	jmp	.label_161
.label_154:
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x9cc], eax
	mov	rsp, rsp
	jmp	.label_161
.label_161:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9cc]
	mov	dword ptr [rbp - 0x3c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	nop	
	je	.label_172
	jmp	.label_205
.label_205:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x638], 1
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jge	.label_183
	xor	eax, eax
	mov	dword ptr [rbp - 0x9d0], eax
	mov	rbp, rbp
	jmp	.label_187
.label_183:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9d0], eax
.label_187:
	mov	eax, dword ptr [rbp - 0x9d0]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x640], rcx
	mov	rcx, qword ptr [rbp - 0x638]
	cmp	rcx, qword ptr [rbp - 0x640]
	mov	rsp, rsp
	jae	.label_296
	nop	
	mov	rax, qword ptr [rbp - 0x640]
	nop	
	mov	qword ptr [rbp - 0x9d8], rax
	jmp	.label_201
.label_296:
	nop	
	mov	rax, qword ptr [rbp - 0x638]
	mov	qword ptr [rbp - 0x9d8], rax
.label_201:
	mov	rax, qword ptr [rbp - 0x9d8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x648], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x648]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_213
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_95
.label_213:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_223
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_227
	mov	rax, qword ptr [rbp - 0x638]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x640]
	jae	.label_227
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x638]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_244
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rbp, rbp
	jne	.label_120
.label_244:
	jmp	.label_262
.label_262:
	mov	qword ptr [rbp - 0x658], 0
.label_271:
	mov	rax, qword ptr [rbp - 0x658]
	cmp	rax, qword ptr [rbp - 0x650]
	jae	.label_265
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9dc], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x658]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x658], rax
	lea	rsi, [rsi]
	jmp	.label_271
.label_265:
	jmp	.label_283
.label_283:
	mov	rsp, rsp
	jmp	.label_286
.label_120:
	mov	rsp, rsp
	jmp	.label_287
.label_287:
	nop	
	mov	qword ptr [rbp - 0x660], 0
.label_303:
	mov	rax, qword ptr [rbp - 0x660]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x650]
	jae	.label_291
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9e0], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x660]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x660], rax
	lea	rdi, [rdi]
	jmp	.label_303
.label_291:
	jmp	.label_315
.label_315:
	jmp	.label_286
.label_286:
	jmp	.label_227
.label_227:
	mov	rsp, rsp
	movsx	edi, byte ptr [rbp - 0xb1]
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x9e4], eax
.label_223:
	nop	
	mov	rax, qword ptr [rbp - 0x648]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_172
.label_172:
	jmp	.label_334
.label_100:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_336
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_95
.label_336:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_346
	mov	rbp, rbp
	jmp	.label_132
.label_132:
	mov	qword ptr [rbp - 0x668], 1
	nop	
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	jge	.label_354
	lea	rdi, [rdi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x9e8], eax
	jmp	.label_363
.label_354:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x9e8], eax
.label_363:
	mov	eax, dword ptr [rbp - 0x9e8]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_372
	mov	rax, qword ptr [rbp - 0x670]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9f0], rax
	jmp	.label_380
.label_372:
	mov	rax, qword ptr [rbp - 0x668]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9f0], rax
.label_380:
	mov	rax, qword ptr [rbp - 0x9f0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_387
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jmp	.label_95
.label_387:
	cmp	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	je	.label_399
	nop	
	cmp	dword ptr [rbp - 0x94], 0
	lea	rdi, [rdi]
	jne	.label_150
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x668]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_150
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_410
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_421
.label_410:
	jmp	.label_425
.label_425:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x688], 0
.label_176:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x688]
	cmp	rax, qword ptr [rbp - 0x680]
	mov	rsp, rsp
	jae	.label_431
	lea	rsi, [rsi]
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	fputc
	mov	dword ptr [rbp - 0x9f4], eax
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x688], rax
	lea	rsi, [rsi]
	jmp	.label_176
.label_431:
	mov	rbp, rbp
	jmp	.label_452
.label_452:
	jmp	.label_455
.label_421:
	lea	rsi, [rsi]
	jmp	.label_457
.label_457:
	mov	qword ptr [rbp - 0x690], 0
.label_472:
	mov	rax, qword ptr [rbp - 0x690]
	cmp	rax, qword ptr [rbp - 0x680]
	lea	rdi, [rdi]
	jae	.label_462
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0x9f8], eax
	nop	
	mov	rax, qword ptr [rbp - 0x690]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x690], rax
	lea	rdi, [rdi]
	jmp	.label_472
.label_462:
	lea	rdi, [rdi]
	jmp	.label_482
.label_482:
	jmp	.label_455
.label_455:
	lea	rsi, [rsi]
	jmp	.label_150
.label_150:
	movsx	edi, byte ptr [rbp - 0xb1]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9fc], eax
.label_399:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x678]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_346
.label_346:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_500
	jmp	.label_504
.label_504:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x698], 0
.label_523:
	mov	rax, qword ptr [rbp - 0x698]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x624]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_511
	lea	rsi, [rsi]
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	fputc
	mov	dword ptr [rbp - 0xa00], eax
	mov	rax, qword ptr [rbp - 0x698]
	add	rax, 1
	mov	qword ptr [rbp - 0x698], rax
	lea	rsi, [rsi]
	jmp	.label_523
.label_511:
	jmp	.label_226
.label_226:
	mov	rsp, rsp
	jmp	.label_500
.label_500:
	movsxd	rax, dword ptr [rbp - 0x624]
	add	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 0
.label_334:
	jmp	.label_162
.label_70:
	lea	rdi, [rdi]
	cmp	byte ptr [rbp - 0xb1], 0
	nop	
	je	.label_156
	jmp	.label_547
.label_547:
	mov	qword ptr [rbp - 0x6a0], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_549
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa04], eax
	lea	rdi, [rdi]
	jmp	.label_555
.label_549:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa04], eax
.label_555:
	nop	
	mov	eax, dword ptr [rbp - 0xa04]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6a8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x6a0]
	cmp	rcx, qword ptr [rbp - 0x6a8]
	nop	
	jae	.label_562
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6a8]
	mov	qword ptr [rbp - 0xa10], rax
	nop	
	jmp	.label_433
.label_562:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6a0]
	mov	qword ptr [rbp - 0xa10], rax
.label_433:
	mov	rax, qword ptr [rbp - 0xa10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6b0], rax
	mov	rax, qword ptr [rbp - 0x6b0]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_586
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_95
.label_586:
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	je	.label_584
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_62
	mov	rax, qword ptr [rbp - 0x6a0]
	cmp	rax, qword ptr [rbp - 0x6a8]
	mov	rsp, rsp
	jae	.label_62
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x6a0]
	mov	qword ptr [rbp - 0x6b8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_558
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_81
.label_558:
	lea	rsi, [rsi]
	jmp	.label_84
.label_84:
	mov	qword ptr [rbp - 0x6c0], 0
.label_298:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x6c0]
	cmp	rax, qword ptr [rbp - 0x6b8]
	jae	.label_563
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa14], eax
	mov	rax, qword ptr [rbp - 0x6c0]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6c0], rax
	mov	rbp, rbp
	jmp	.label_298
.label_563:
	jmp	.label_101
.label_101:
	lea	rsi, [rsi]
	jmp	.label_113
.label_81:
	jmp	.label_118
.label_118:
	mov	qword ptr [rbp - 0x6c8], 0
.label_134:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x6c8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x6b8]
	jae	.label_123
	mov	edi, 0x20
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa18], eax
	mov	rax, qword ptr [rbp - 0x6c8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6c8], rax
	jmp	.label_134
.label_123:
	jmp	.label_147
.label_147:
	mov	rbp, rbp
	jmp	.label_113
.label_113:
	jmp	.label_62
.label_62:
	movsx	edi, byte ptr [rbp - 0xb1]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa1c], eax
.label_584:
	mov	rax, qword ptr [rbp - 0x6b0]
	nop	
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_156
.label_156:
	mov	rbp, rbp
	jmp	.label_162
.label_162:
	mov	rbp, rbp
	jmp	.label_66
.label_66:
	jmp	.label_167
.label_167:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6d0], rax
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	jge	.label_170
	xor	eax, eax
	mov	dword ptr [rbp - 0xa20], eax
	lea	rsi, [rsi]
	jmp	.label_181
.label_170:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa20], eax
.label_181:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa20]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_259
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0xa28], rax
	jmp	.label_195
.label_259:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0xa28], rax
.label_195:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa28]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_203
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jmp	.label_95
.label_203:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	je	.label_218
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_221
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6d0]
	nop	
	cmp	rax, qword ptr [rbp - 0x6d8]
	lea	rsi, [rsi]
	jae	.label_221
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_233
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_335
.label_233:
	nop	
	jmp	.label_254
.label_254:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6f0], 0
.label_268:
	mov	rax, qword ptr [rbp - 0x6f0]
	cmp	rax, qword ptr [rbp - 0x6e8]
	jae	.label_260
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa2c], eax
	mov	rax, qword ptr [rbp - 0x6f0]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x6f0], rax
	jmp	.label_268
.label_260:
	jmp	.label_273
.label_273:
	jmp	.label_275
.label_335:
	lea	rdi, [rdi]
	jmp	.label_277
.label_277:
	mov	qword ptr [rbp - 0x6f8], 0
.label_292:
	mov	rax, qword ptr [rbp - 0x6f8]
	cmp	rax, qword ptr [rbp - 0x6e8]
	lea	rdi, [rdi]
	jae	.label_282
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	nop	
	mov	dword ptr [rbp - 0xa30], eax
	mov	rax, qword ptr [rbp - 0x6f8]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6f8], rax
	nop	
	jmp	.label_292
.label_282:
	lea	rdi, [rdi]
	jmp	.label_301
.label_301:
	nop	
	jmp	.label_275
.label_275:
	jmp	.label_221
.label_221:
	lea	rdi, [rdi]
	jmp	.label_305
.label_305:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xe1], 1
	je	.label_309
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x6d0]
	nop	
	call	fwrite_lowcase
	mov	rbp, rbp
	jmp	.label_321
.label_309:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xe2], 1
	lea	rdi, [rdi]
	je	.label_326
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x6d0]
	lea	rsi, [rsi]
	call	fwrite_uppcase
	jmp	.label_264
.label_326:
	nop	
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0x6d0]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	fwrite
	mov	qword ptr [rbp - 0xa38], rax
.label_264:
	mov	rbp, rbp
	jmp	.label_321
.label_321:
	mov	rsp, rsp
	jmp	.label_356
.label_356:
	lea	rdi, [rdi]
	jmp	.label_218
.label_218:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_91
.label_191:
	cmp	dword ptr [rbp - 0x90], 0
	nop	
	je	.label_370
	jmp	.label_142
.label_370:
	cmp	dword ptr [rbp - 0x8c], 0
	nop	
	jne	.label_376
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	jge	.label_376
	mov	dword ptr [rbp - 0x8c], 0x2b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_382
.label_376:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xfc], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_385
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xfc], 0
.label_385:
	jmp	.label_382
.label_382:
	movabs	rax, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	jmp	.label_396
.label_208:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rsp, rsp
	jne	.label_402
	jmp	.label_142
.label_402:
	jmp	.label_406
.label_406:
	mov	dword ptr [rbp - 0x94], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_228
.label_215:
	nop	
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rsp, rsp
	jne	.label_414
	mov	rbp, rbp
	jmp	.label_142
.label_414:
	mov	rbp, rbp
	jmp	.label_422
.label_422:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	nop	
	jmp	.label_228
.label_117:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_435
	jmp	.label_142
.label_435:
	jmp	.label_438
.label_438:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_122
.label_403:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_446
	lea	rdi, [rdi]
	jmp	.label_142
.label_446:
	jmp	.label_456
.label_456:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	lea	rsi, [rsi]
	jmp	.label_122
.label_389:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_467
	jmp	.label_142
.label_467:
	nop	
	jmp	.label_471
.label_471:
	mov	dword ptr [rbp - 0x94], 3
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	edx, dword ptr [rax + 0x1c]
	nop	
	add	edx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], edx
	lea	rdi, [rdi]
	jmp	.label_216
.label_220:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_489
	mov	rbp, rbp
	jmp	.label_142
.label_489:
	jmp	.label_495
.label_495:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_228
.label_332:
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rsp, rsp
	jne	.label_538
	lea	rdi, [rdi]
	jmp	.label_142
.label_538:
	mov	rbp, rbp
	jmp	.label_510
.label_510:
	nop	
	mov	dword ptr [rbp - 0x94], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	mov	rbp, rbp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x10]
	lea	rsi, [rsi]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_216
.label_224:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rsi, [rsi]
	jne	.label_529
	jmp	.label_142
.label_529:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x98], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c], -1
	lea	rdi, [rdi]
	jne	.label_533
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], 9
	jmp	.label_540
.label_533:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6fc], eax
.label_552:
	nop	
	cmp	dword ptr [rbp - 0x6fc], 9
	jge	.label_548
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa3c], eax
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	ecx, dword ptr [rbp - 0xa3c]
	lea	rsi, [rsi]
	idiv	ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x6fc]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x6fc], eax
	jmp	.label_552
.label_548:
	jmp	.label_540
.label_540:
	jmp	.label_573
.label_573:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x94], eax
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_228
.label_578:
	jmp	.label_581
.label_581:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x708], 1
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	jge	.label_583
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0xa40], eax
	nop	
	jmp	.label_590
.label_583:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa40], eax
.label_590:
	mov	eax, dword ptr [rbp - 0xa40]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x710], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x708]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	jae	.label_597
	mov	rax, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa48], rax
	jmp	.label_67
.label_597:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0xa48], rax
.label_67:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jb	.label_78
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_95
.label_78:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x80], 0
	lea	rsi, [rsi]
	je	.label_240
	cmp	dword ptr [rbp - 0x94], 0
	mov	rsp, rsp
	jne	.label_104
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	mov	rsp, rsp
	jae	.label_104
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x708]
	nop	
	mov	qword ptr [rbp - 0x720], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8c], 0x30
	lea	rdi, [rdi]
	je	.label_114
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rbp, rbp
	jne	.label_124
.label_114:
	jmp	.label_130
.label_130:
	mov	qword ptr [rbp - 0x728], 0
.label_323:
	mov	rax, qword ptr [rbp - 0x728]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x720]
	lea	rdi, [rdi]
	jae	.label_136
	mov	rbp, rbp
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4c], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x728]
	add	rax, 1
	mov	qword ptr [rbp - 0x728], rax
	jmp	.label_323
.label_136:
	jmp	.label_80
.label_80:
	lea	rdi, [rdi]
	jmp	.label_75
.label_124:
	lea	rdi, [rdi]
	jmp	.label_160
.label_160:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x730], 0
.label_177:
	mov	rax, qword ptr [rbp - 0x730]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x720]
	jae	.label_165
	nop	
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	fputc
	mov	dword ptr [rbp - 0xa50], eax
	mov	rax, qword ptr [rbp - 0x730]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x730], rax
	jmp	.label_177
.label_165:
	mov	rbp, rbp
	jmp	.label_186
.label_186:
	lea	rsi, [rsi]
	jmp	.label_75
.label_75:
	jmp	.label_104
.label_104:
	mov	rbp, rbp
	mov	edi, 0xa
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xa54], eax
.label_240:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_91
.label_237:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_427:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_206
	mov	byte ptr [rbp - 0xe2], 0
	nop	
	mov	byte ptr [rbp - 0xe1], 1
.label_206:
	mov	rbp, rbp
	jmp	.label_137
.label_524:
	mov	rsp, rsp
	jmp	.label_493
.label_493:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	imul	ecx, dword ptr [rax + 0x10], 0xb
	mov	rsp, rsp
	sar	ecx, 5
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_216
.label_250:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.3_0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_217
.label_443:
	jmp	.label_137
.label_261:
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rsi, [rsi]
	jne	.label_241
	mov	rsp, rsp
	jmp	.label_142
.label_241:
	lea	rsi, [rsi]
	jmp	.label_247
.label_247:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_228
.label_450:
	nop	
	lea	rax, [rbp - 0x768]
	mov	rsp, rsp
	mov	ecx, 0x38
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa60], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa60]
	mov	rbp, rbp
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x770], rax
	add	rdx, 0x17
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x770], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_327:
	lea	rdi, [rdi]
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x770]
	nop	
	cqo	
	idiv	rcx
	mov	esi, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x774], esi
	mov	rdx, qword ptr [rbp - 0x770]
	mov	rsp, rsp
	mov	rax, rdx
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x770], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x9d], 1
	mov	rsp, rsp
	je	.label_432
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x774]
	mov	dword ptr [rbp - 0xa64], eax
	mov	rsp, rsp
	jmp	.label_476
.label_432:
	nop	
	mov	eax, dword ptr [rbp - 0x774]
	mov	dword ptr [rbp - 0xa64], eax
.label_476:
	mov	eax, dword ptr [rbp - 0xa64]
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rdx - 1], cl
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x770], 0
	jne	.label_327
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9e], 0
	mov	rsp, rsp
	jmp	.label_344
.label_300:
	cmp	dword ptr [rbp - 0x90], 0x4f
	lea	rdi, [rdi]
	jne	.label_153
	mov	rsp, rsp
	jmp	.label_142
.label_153:
	jmp	.label_137
.label_267:
	movabs	rax, OFFSET FLAT:.str.4_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_217
.label_530:
	jmp	.label_373
.label_373:
	mov	qword ptr [rbp - 0x780], 1
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_374
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0xa68], eax
	mov	rbp, rbp
	jmp	.label_242
.label_374:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa68], eax
.label_242:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa68]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x788], rcx
	mov	rcx, qword ptr [rbp - 0x780]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x788]
	jae	.label_473
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x788]
	mov	qword ptr [rbp - 0xa70], rax
	mov	rbp, rbp
	jmp	.label_400
.label_473:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x780]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa70], rax
.label_400:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa70]
	mov	qword ptr [rbp - 0x790], rax
	mov	rax, qword ptr [rbp - 0x790]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	nop	
	cmp	rax, rcx
	jb	.label_126
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_95
.label_126:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	mov	rsp, rsp
	je	.label_557
	cmp	dword ptr [rbp - 0x94], 0
	mov	rsp, rsp
	jne	.label_294
	mov	rax, qword ptr [rbp - 0x780]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x788]
	lea	rdi, [rdi]
	jae	.label_294
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x780]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x798], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_109
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_577
.label_109:
	jmp	.label_444
.label_444:
	mov	qword ptr [rbp - 0x7a0], 0
.label_463:
	mov	rax, qword ptr [rbp - 0x7a0]
	nop	
	cmp	rax, qword ptr [rbp - 0x798]
	lea	rdi, [rdi]
	jae	.label_449
	mov	edi, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa74], eax
	mov	rax, qword ptr [rbp - 0x7a0]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x7a0], rax
	jmp	.label_463
.label_449:
	mov	rbp, rbp
	jmp	.label_249
.label_249:
	jmp	.label_475
.label_577:
	lea	rsi, [rsi]
	jmp	.label_394
.label_394:
	mov	qword ptr [rbp - 0x7a8], 0
.label_491:
	mov	rax, qword ptr [rbp - 0x7a8]
	cmp	rax, qword ptr [rbp - 0x798]
	nop	
	jae	.label_280
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0xa78], eax
	nop	
	mov	rax, qword ptr [rbp - 0x7a8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x7a8], rax
	mov	rsp, rsp
	jmp	.label_491
.label_280:
	jmp	.label_311
.label_311:
	jmp	.label_475
.label_475:
	mov	rbp, rbp
	jmp	.label_294
.label_294:
	mov	edi, 9
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa7c], eax
.label_557:
	mov	rax, qword ptr [rbp - 0x790]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	jmp	.label_91
.label_333:
	jmp	.label_74
.label_74:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x18]
	nop	
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0xa80], eax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xa80]
	idiv	esi
	mov	rsp, rsp
	add	edx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	jmp	.label_228
.label_238:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_537
	mov	rsp, rsp
	jmp	.label_142
.label_537:
	jmp	.label_544
.label_544:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 2
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	add	edx, 7
	mov	dword ptr [rbp - 0xa84], eax
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xa84]
	lea	rdi, [rdi]
	idiv	esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_228
.label_199:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	lea	rdi, [rdi]
	jne	.label_568
	mov	rsp, rsp
	jmp	.label_142
.label_568:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x7ac], esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7b0], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7b4], eax
	cmp	dword ptr [rbp - 0x7b4], 0
	nop	
	jge	.label_569
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, 4
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7b0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x7ac]
	nop	
	sub	edi, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa88], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0xa88]
	lea	rsi, [rsi]
	idiv	edi
	cmp	edx, 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8c], esi
	mov	byte ptr [rbp - 0xa8d], cl
	jne	.label_59
	nop	
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x7ac]
	mov	rsp, rsp
	sub	edx, 1
	mov	byte ptr [rbp - 0xa8e], al
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	nop	
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0xa8e]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa8f], sil
	lea	rsi, [rsi]
	jne	.label_87
	nop	
	mov	eax, 0x190
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7ac]
	lea	rsi, [rsi]
	sub	ecx, 1
	mov	dword ptr [rbp - 0xa94], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xa94]
	mov	rsp, rsp
	idiv	ecx
	mov	rbp, rbp
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0xa8f], sil
.label_87:
	mov	al, byte ptr [rbp - 0xa8f]
	mov	byte ptr [rbp - 0xa8d], al
.label_59:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xa8d]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	nop	
	mov	edx, dword ptr [rbp - 0xa8c]
	add	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rsi + 0x18]
	mov	rsp, rsp
	mov	edi, edx
	call	iso_week_days
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7b4], eax
	mov	rsp, rsp
	jmp	.label_143
.label_569:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x7ac]
	mov	dword ptr [rbp - 0xa98], eax
	mov	eax, edi
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	edi, dword ptr [rbp - 0xa98]
	lea	rdi, [rdi]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0xa9c], esi
	mov	byte ptr [rbp - 0xa9d], cl
	mov	rbp, rbp
	jne	.label_149
	nop	
	mov	al, 1
	mov	ecx, 0x64
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x7ac]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa9e], al
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0xa9e]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa9f], sil
	jne	.label_168
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x7ac]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xaa4], eax
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	ecx, dword ptr [rbp - 0xaa4]
	mov	rbp, rbp
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa9f], sil
.label_168:
	mov	al, byte ptr [rbp - 0xa9f]
	mov	byte ptr [rbp - 0xa9d], al
.label_149:
	mov	al, byte ptr [rbp - 0xa9d]
	and	al, 1
	movzx	ecx, al
	nop	
	add	ecx, 0x16d
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xa9c]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	mov	rbp, rbp
	call	iso_week_days
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7b8], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x7b8]
	nop	
	jg	.label_212
	nop	
	mov	dword ptr [rbp - 0x7b0], 1
	nop	
	mov	eax, dword ptr [rbp - 0x7b8]
	mov	dword ptr [rbp - 0x7b4], eax
.label_212:
	mov	rsp, rsp
	jmp	.label_143
.label_143:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0xaa8], ecx
	mov	dword ptr [rbp - 0xaac], edx
	je	.label_515
	mov	rsp, rsp
	jmp	.label_236
.label_236:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xaa8]
	mov	rbp, rbp
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xab0], eax
	jne	.label_239
	mov	rsp, rsp
	jmp	.label_248
.label_248:
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0xab4], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xab4]
	nop	
	idiv	esi
	add	edx, dword ptr [rbp - 0x7b0]
	mov	eax, edx
	cdq	
	nop	
	idiv	esi
	nop	
	mov	dword ptr [rbp - 0x7bc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x7bc]
	lea	rdi, [rdi]
	jg	.label_252
	mov	eax, dword ptr [rbp - 0x7bc]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xab8], eax
	jmp	.label_276
.label_252:
	mov	rbp, rbp
	mov	eax, 0xfffff894
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x7b0]
	cmp	edx, eax
	jge	.label_281
	xor	eax, eax
	nop	
	sub	eax, dword ptr [rbp - 0x7bc]
	mov	dword ptr [rbp - 0xabc], eax
	jmp	.label_289
.label_281:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7bc]
	nop	
	add	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xabc], eax
.label_289:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xabc]
	mov	dword ptr [rbp - 0xab8], eax
.label_276:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xab8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_179
.label_515:
	jmp	.label_313
.label_313:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x7b0]
	lea	rdi, [rdi]
	cmp	edx, eax
	setl	sil
	mov	rbp, rbp
	and	sil, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9d], sil
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x7b0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_179
.label_239:
	jmp	.label_342
.label_342:
	mov	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x7b4]
	mov	dword ptr [rbp - 0xac0], eax
	nop	
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xac0]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_228
.label_293:
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rsp, rsp
	jne	.label_360
	jmp	.label_142
.label_360:
	jmp	.label_366
.label_366:
	lea	rdi, [rdi]
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	esi, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	sub	esi, 1
	add	esi, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac4], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	dword ptr [rbp - 0xac8], edx
	lea	rdi, [rdi]
	cdq	
	mov	esi, dword ptr [rbp - 0xac4]
	idiv	esi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xac8]
	mov	rsp, rsp
	sub	edi, edx
	mov	rbp, rbp
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_228
.label_480:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_392
	lea	rsi, [rsi]
	jmp	.label_142
.label_392:
	jmp	.label_397
.label_397:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_228
.label_310:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_405
	lea	rsi, [rsi]
	jmp	.label_137
.label_405:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x90], 0x4f
	lea	rsi, [rsi]
	jne	.label_408
	mov	rbp, rbp
	jmp	.label_142
.label_408:
	jmp	.label_418
.label_418:
	mov	dword ptr [rbp - 0x94], 4
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	mov	rbp, rbp
	setl	cl
	nop	
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rax + 0x14]
	mov	rsp, rsp
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_179
.label_494:
	cmp	dword ptr [rbp - 0x90], 0x45
	mov	rbp, rbp
	jne	.label_411
	jmp	.label_137
.label_411:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xacc], eax
	nop	
	mov	eax, edx
	lea	rdi, [rdi]
	cdq	
	mov	esi, dword ptr [rbp - 0xacc]
	lea	rsi, [rsi]
	idiv	esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c0], edx
	cmp	dword ptr [rbp - 0x7c0], 0
	jge	.label_442
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_460
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x7c0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xad0], eax
	mov	rsp, rsp
	jmp	.label_466
.label_460:
	mov	eax, dword ptr [rbp - 0x7c0]
	add	eax, 0x64
	mov	dword ptr [rbp - 0xad0], eax
.label_466:
	mov	eax, dword ptr [rbp - 0xad0]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c0], eax
.label_442:
	jmp	.label_393
.label_393:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x7c0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	mov	rsp, rsp
	jmp	.label_179
.label_319:
	test	byte ptr [rbp - 0xf1], 1
	lea	rsi, [rsi]
	je	.label_492
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe2], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe1], 1
.label_492:
	mov	rsp, rsp
	jmp	.label_499
.label_499:
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7c8], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_505
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xad4], eax
	mov	rsp, rsp
	jmp	.label_512
.label_505:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xad4], eax
.label_512:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xad4]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7d0], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x7c8]
	cmp	rcx, qword ptr [rbp - 0x7d0]
	jae	.label_98
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x7d0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xae0], rax
	lea	rdi, [rdi]
	jmp	.label_532
.label_98:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x7c8]
	mov	qword ptr [rbp - 0xae0], rax
.label_532:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xae0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7d8], rax
	mov	rax, qword ptr [rbp - 0x7d8]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	nop	
	jb	.label_542
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_95
.label_542:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_148
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x94], 0
	mov	rsp, rsp
	jne	.label_99
	mov	rax, qword ptr [rbp - 0x7c8]
	nop	
	cmp	rax, qword ptr [rbp - 0x7d0]
	jae	.label_99
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x7c8]
	mov	qword ptr [rbp - 0x7e0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_445
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rbp, rbp
	jne	.label_579
.label_445:
	mov	rbp, rbp
	jmp	.label_279
.label_279:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7e8], 0
.label_598:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7e8]
	nop	
	cmp	rax, qword ptr [rbp - 0x7e0]
	jae	.label_591
	mov	edi, 0x30
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xae4], eax
	mov	rax, qword ptr [rbp - 0x7e8]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x7e8], rax
	lea	rdi, [rdi]
	jmp	.label_598
.label_591:
	nop	
	jmp	.label_531
.label_531:
	lea	rdi, [rdi]
	jmp	.label_68
.label_579:
	jmp	.label_138
.label_138:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x7f0], 0
.label_231:
	mov	rax, qword ptr [rbp - 0x7f0]
	nop	
	cmp	rax, qword ptr [rbp - 0x7e0]
	jae	.label_77
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xae8], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x7f0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7f0], rax
	mov	rbp, rbp
	jmp	.label_231
.label_77:
	jmp	.label_278
.label_278:
	jmp	.label_68
.label_68:
	jmp	.label_99
.label_99:
	jmp	.label_302
.label_302:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_105
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x7c8]
	call	fwrite_lowcase
	mov	rbp, rbp
	jmp	.label_112
.label_105:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xe2], 1
	lea	rdi, [rdi]
	je	.label_116
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x7c8]
	call	fwrite_uppcase
	nop	
	jmp	.label_127
.label_116:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x7c8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	call	fwrite
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xaf0], rax
.label_127:
	mov	rsp, rsp
	jmp	.label_112
.label_112:
	jmp	.label_146
.label_146:
	jmp	.label_148
.label_148:
	mov	rax, qword ptr [rbp - 0x7d8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	jmp	.label_91
.label_151:
	mov	qword ptr [rbp - 0xf0], 1
.label_139:
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x3a
	jne	.label_157
	nop	
	jmp	.label_166
.label_166:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_139
.label_157:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x7a
	je	.label_175
	jmp	.label_142
.label_175:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	jmp	.label_185
.label_501:
	mov	qword ptr [rbp - 0xf0], 0
.label_185:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_193
	jmp	.label_91
.label_193:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7f4], edx
	cmp	dword ptr [rbp - 0x7f4], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xaf1], al
	jl	.label_197
	xor	eax, eax
	mov	cl, al
	nop	
	cmp	dword ptr [rbp - 0x7f4], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xaf2], cl
	jne	.label_210
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	dl
	mov	byte ptr [rbp - 0xaf2], dl
.label_210:
	nop	
	mov	al, byte ptr [rbp - 0xaf2]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xaf1], al
.label_197:
	mov	al, byte ptr [rbp - 0xaf1]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	movsxd	rcx, dword ptr [rbp - 0x7f4]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	nop	
	mov	edx, esi
	lea	rsi, [rsi]
	shr	edx, 0x1f
	mov	rsp, rsp
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	mov	rsp, rsp
	imul	rcx, rcx, -0x77777777
	lea	rdi, [rdi]
	shr	rcx, 0x20
	lea	rsi, [rsi]
	mov	edx, ecx
	add	edx, esi
	lea	rdi, [rdi]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	dword ptr [rbp - 0x7f8], edx
	movsxd	rcx, dword ptr [rbp - 0x7f4]
	mov	edx, ecx
	nop	
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	mov	rbp, rbp
	add	esi, edx
	mov	rbp, rbp
	mov	edx, esi
	nop	
	shr	edx, 0x1f
	mov	rsp, rsp
	sar	esi, 5
	mov	rbp, rbp
	add	esi, edx
	movsxd	rcx, esi
	nop	
	imul	rcx, rcx, -0x77777777
	nop	
	shr	rcx, 0x20
	mov	rbp, rbp
	mov	edx, ecx
	add	edx, esi
	lea	rsi, [rsi]
	mov	edi, edx
	nop	
	shr	edi, 0x1f
	sar	edx, 5
	lea	rdi, [rdi]
	add	edx, edi
	mov	rbp, rbp
	imul	edx, edx, 0x3c
	sub	esi, edx
	mov	dword ptr [rbp - 0x7fc], esi
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x7f4]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	lea	rdi, [rdi]
	add	esi, edx
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, 0x1f
	sar	esi, 5
	lea	rdi, [rdi]
	add	esi, edi
	lea	rdi, [rdi]
	imul	esi, esi, 0x3c
	lea	rdi, [rdi]
	sub	edx, esi
	mov	dword ptr [rbp - 0x800], edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rcx
	sub	r8, 3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb00], rcx
	nop	
	mov	qword ptr [rbp - 0xb08], r8
	ja	.label_468
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb00]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_316]]
	jmp	rcx
.label_1069:
	mov	rbp, rbp
	jmp	.label_320
.label_320:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	nop	
	imul	eax, dword ptr [rbp - 0x7f8], 0x64
	add	eax, dword ptr [rbp - 0x7fc]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_325
.label_1070:
	mov	rbp, rbp
	jmp	.label_337
.label_337:
	jmp	.label_340
.label_340:
	mov	dword ptr [rbp - 0x94], 6
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x7f8], 0x64
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x7fc]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_325
.label_1071:
	mov	rsp, rsp
	jmp	.label_355
.label_355:
	jmp	.label_358
.label_358:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x7f8], 0x2710
	imul	ecx, dword ptr [rbp - 0x7fc], 0x64
	mov	rbp, rbp
	add	eax, ecx
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x800]
	mov	dword ptr [rbp - 0x9c], eax
	lea	rdi, [rdi]
	jmp	.label_325
.label_1072:
	cmp	dword ptr [rbp - 0x800], 0
	mov	rbp, rbp
	je	.label_378
	nop	
	jmp	.label_355
.label_378:
	cmp	dword ptr [rbp - 0x7fc], 0
	je	.label_383
	jmp	.label_337
.label_383:
	nop	
	jmp	.label_384
.label_384:
	mov	dword ptr [rbp - 0x94], 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x7f8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_325
.label_468:
	lea	rsi, [rsi]
	jmp	.label_142
.label_129:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_507:
	jmp	.label_142
.label_142:
	mov	dword ptr [rbp - 0x804], 1
.label_415:
	mov	eax, 1
	nop	
	sub	eax, dword ptr [rbp - 0x804]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	mov	rsp, rsp
	je	.label_404
	jmp	.label_413
.label_413:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x804]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x804], eax
	jmp	.label_415
.label_404:
	jmp	.label_424
.label_424:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x804]
	mov	qword ptr [rbp - 0x810], rax
	nop	
	cmp	dword ptr [rbp - 0x3c], 0
	jge	.label_426
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb0c], eax
	jmp	.label_436
.label_426:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xb0c], eax
.label_436:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xb0c]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x818], rcx
	mov	rcx, qword ptr [rbp - 0x810]
	cmp	rcx, qword ptr [rbp - 0x818]
	jae	.label_440
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x818]
	mov	qword ptr [rbp - 0xb18], rax
	jmp	.label_453
.label_440:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0xb18], rax
.label_453:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb18]
	mov	qword ptr [rbp - 0x820], rax
	nop	
	mov	rax, qword ptr [rbp - 0x820]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jb	.label_465
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_95
.label_465:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_89
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x94], 0
	mov	rbp, rbp
	jne	.label_412
	mov	rax, qword ptr [rbp - 0x810]
	cmp	rax, qword ptr [rbp - 0x818]
	lea	rsi, [rsi]
	jae	.label_412
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x3c]
	sub	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x828], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	mov	rsp, rsp
	je	.label_484
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	rbp, rbp
	jne	.label_503
.label_484:
	mov	rsp, rsp
	jmp	.label_508
.label_508:
	mov	qword ptr [rbp - 0x830], 0
.label_525:
	mov	rax, qword ptr [rbp - 0x830]
	cmp	rax, qword ptr [rbp - 0x828]
	mov	rbp, rbp
	jae	.label_514
	lea	rsi, [rsi]
	mov	edi, 0x30
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xb1c], eax
	mov	rax, qword ptr [rbp - 0x830]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_525
.label_514:
	lea	rsi, [rsi]
	jmp	.label_178
.label_178:
	lea	rsi, [rsi]
	jmp	.label_365
.label_503:
	mov	rsp, rsp
	jmp	.label_536
.label_536:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x838], 0
.label_551:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x838]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x828]
	jae	.label_232
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0x80]
	call	fputc
	mov	dword ptr [rbp - 0xb20], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x838]
	add	rax, 1
	mov	qword ptr [rbp - 0x838], rax
	jmp	.label_551
.label_232:
	jmp	.label_561
.label_561:
	jmp	.label_365
.label_365:
	jmp	.label_412
.label_412:
	nop	
	jmp	.label_564
.label_564:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xe1], 1
	je	.label_565
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x810]
	mov	rsi, rcx
	mov	rbp, rbp
	call	fwrite_lowcase
	mov	rsp, rsp
	jmp	.label_85
.label_565:
	test	byte ptr [rbp - 0xe2], 1
	nop	
	je	.label_496
	mov	eax, 1
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x804]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x810]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	fwrite_uppcase
	lea	rsi, [rsi]
	jmp	.label_599
.label_496:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x804]
	mov	rbp, rbp
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	rsi, qword ptr [rbp - 0x810]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb28], rdi
	mov	rdi, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb28]
	call	fwrite
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb30], rax
.label_599:
	jmp	.label_85
.label_85:
	jmp	.label_86
.label_86:
	jmp	.label_89
.label_89:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x820]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_91
.label_91:
	jmp	.label_96
.label_96:
	mov	dword ptr [rbp - 0x3c], 0xffffffff
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_97
.label_324:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_95:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0xb40
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070e0

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
.label_602:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	cmp	rax, 0
	nop	
	jbe	.label_603
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	tolower
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	fputc
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 1
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	jmp	.label_602
.label_603:
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407160

	.globl fwrite_uppcase
	.type fwrite_uppcase, @function
fwrite_uppcase:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
.label_604:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_605
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movzx	edi, byte ptr [rax]
	call	toupper
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	edi, eax
	nop	
	call	fputc
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 1
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_604
.label_605:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071e0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	mov	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	sub	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	add	edi, 4
	nop	
	add	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	mov	eax, edi
	cdq	
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x10]
	idiv	edi
	sub	esi, edx
	add	esi, 4
	nop	
	sub	esi, 1
	mov	rsp, rsp
	mov	eax, esi
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407240
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1c0
	test	al, al
	movaps	xmmword ptr [rbp - 0x110], xmm7
	movaps	xmmword ptr [rbp - 0x120], xmm6
	movaps	xmmword ptr [rbp - 0x130], xmm5
	movaps	xmmword ptr [rbp - 0x140], xmm4
	movaps	xmmword ptr [rbp - 0x150], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x170], xmm1
	movaps	xmmword ptr [rbp - 0x180], xmm0
	mov	dword ptr [rbp - 0x184], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x190], r9
	mov	qword ptr [rbp - 0x198], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	qword ptr [rbp - 0x1b0], rsi
	je	.label_606
	movaps	xmm0, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x150]
	nop	
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x90], xmm4
	mov	rsp, rsp
	movaps	xmm5, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_606:
	nop	
	mov	rax, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x198]
	mov	rdx, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	r8d, dword ptr [rbp - 0x184]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], r8d
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 2
	jne	.label_607
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_4
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_607
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 0x68
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	mov	dword ptr [rbp - 0x1b8], ecx
	je	.label_608
	jmp	.label_609
.label_609:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	mov	rbp, rbp
	je	.label_612
	mov	rbp, rbp
	jmp	.label_611
.label_608:
	xor	edi, edi
	call	qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jmp	.label_610
.label_612:
	lea	rax, [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdx, [rbp - 0x100]
	nop	
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rcx], 0x30
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, rax
	call	version_etc_va
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_611:
	mov	rsp, rsp
	jmp	.label_610
.label_610:
	jmp	.label_607
.label_607:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1c0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074e0

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	nop	
	sub	rsp, 0x1d0
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x140], xmm7
	movaps	xmmword ptr [rbp - 0x150], xmm6
	movaps	xmmword ptr [rbp - 0x160], xmm5
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x170], xmm4
	movaps	xmmword ptr [rbp - 0x180], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	movaps	xmmword ptr [rbp - 0x1a0], xmm1
	movaps	xmmword ptr [rbp - 0x1b0], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], edi
	mov	dword ptr [rbp - 0x1b8], r9d
	mov	qword ptr [rbp - 0x1c0], r8
	mov	qword ptr [rbp - 0x1c8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_613
	movaps	xmm0, xmmword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x100], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xf0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0xe0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x180]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xd0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm4
	nop	
	movaps	xmm5, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm5
	lea	rdi, [rdi]
	movaps	xmm6, xmmword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0xa0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm7
.label_613:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x1c0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	mov	rsp, rsp
	movabs	r15, OFFSET FLAT:.str_4
	mov	rbp, rbp
	movabs	r12, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], r10d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
	nop	
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x49], cl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x60], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x49]
	test	cl, 1
	lea	rsi, [rsi]
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x68], r15
	mov	edi, dword ptr [rbp - 0x24]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, r11
	lea	rsi, [rsi]
	mov	r8, r14
	nop	
	call	getopt_long
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	cmp	eax, -1
	je	.label_614
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0x68
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1dc], eax
	mov	dword ptr [rbp - 0x1e0], ecx
	je	.label_617
	jmp	.label_618
.label_618:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x76
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_615
	nop	
	jmp	.label_619
.label_617:
	xor	edi, edi
	call	qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	jmp	.label_616
.label_615:
	nop	
	lea	rax, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rcx + 0x10], rdx
	mov	rbp, rbp
	lea	rdx, [rbp + 0x18]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rcx], 0x30
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	r8, rax
	nop	
	call	version_etc_va
	nop	
	xor	edi, edi
	call	exit
.label_619:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_616:
	lea	rdi, [rdi]
	jmp	.label_614
.label_614:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	lea	rdi, [rdi]
	add	rsp, 0x1d0
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_622
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_622:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_620
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_624
.label_620:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_624:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_623
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_623
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_621
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_621:
	jmp	.label_623
.label_623:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407950
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_626
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_625
.label_626:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_625
.label_625:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a00
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_627
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_628
.label_627:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_628
.label_628:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a60
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], esi
	je	.label_629
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_630
.label_629:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_630
.label_630:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ac0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_631
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_632
.label_631:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_632
.label_632:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407bc0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_633
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_633:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c20

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_634
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_634:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_636
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_635
.label_636:
	call	abort
.label_635:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cc0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_637
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_638
.label_637:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_638
.label_638:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407dc0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7b], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7d], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7e], 1
.label_720:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_776
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_781]]
	jmp	rcx
.label_1062:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1061:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_787
	jmp	.label_789
.label_789:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_709
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_709:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_787
.label_787:
	movabs	rax, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_653
.label_1063:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_653
.label_1064:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_808
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_808:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_644
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_839:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_822
	jmp	.label_825
.label_825:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_827
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_827:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_835
.label_835:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_839
.label_822:
	mov	rbp, rbp
	jmp	.label_644
.label_644:
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_653
.label_1059:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_1058:
	mov	byte ptr [rbp - 0x7b], 1
.label_1060:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_657
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_657:
	jmp	.label_662
.label_662:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_665
	jmp	.label_671
.label_671:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_802
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_802:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_665
.label_665:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_653
.label_1057:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_653
.label_776:
	call	abort
.label_653:
	mov	qword ptr [rbp - 0x58], 0
.label_661:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_696
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_698
.label_696:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_698:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_715
	mov	rbp, rbp
	jmp	.label_724
.label_715:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_727
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_727
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_727
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_741
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_741
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_755
.label_741:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_755:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_727
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_727
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_769
	jmp	.label_642
.label_769:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_727:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_771
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_782]]
	nop	
	jmp	rcx
.label_1073:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_785
	mov	rsp, rsp
	jmp	.label_699
.label_699:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_792
	jmp	.label_642
.label_792:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_794
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_794
	nop	
	jmp	.label_800
.label_800:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_801
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_801:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_807
.label_807:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_811
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_811:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_816
.label_816:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_820
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_820:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_794:
	lea	rsi, [rsi]
	jmp	.label_830
.label_830:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_832
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_832:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_836
.label_836:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_641
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_641
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_641
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_641
	nop	
	jmp	.label_829
.label_829:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_663
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_663:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_672
.label_672:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_678
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_678:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_641
.label_641:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_700
.label_785:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_692
	mov	rbp, rbp
	jmp	.label_658
.label_692:
	jmp	.label_700
.label_700:
	jmp	.label_646
.label_1084:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_701
	mov	rbp, rbp
	jmp	.label_705
.label_705:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_708
	jmp	.label_716
.label_701:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_834
	jmp	.label_642
.label_834:
	jmp	.label_714
.label_708:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_725
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_725
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_725
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	lea	rdi, [rdi]
	je	.label_743
	nop	
	jmp	.label_750
.label_750:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_743
	jmp	.label_757
.label_757:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_743
	jmp	.label_688
.label_688:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_743
	jmp	.label_734
.label_734:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_766
	jmp	.label_743
.label_743:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_837
	jmp	.label_642
.label_837:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_774
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_774:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_786
.label_786:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_791
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_791:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_796
.label_796:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_799
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_799:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_806
.label_806:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_828
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_828:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_814
.label_766:
	jmp	.label_814
.label_814:
	jmp	.label_725
.label_725:
	jmp	.label_714
.label_716:
	jmp	.label_714
.label_714:
	jmp	.label_646
.label_1074:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_664
.label_1075:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_664
.label_1079:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_664
.label_1077:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_655
.label_1080:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_655
.label_1076:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_655
.label_1078:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_664
.label_1085:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_728
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_838
	nop	
	jmp	.label_642
.label_838:
	lea	rsi, [rsi]
	jmp	.label_643
.label_728:
	test	byte ptr [rbp - 0x79], 1
	je	.label_647
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_647
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_647
	jmp	.label_643
.label_647:
	jmp	.label_655
.label_655:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_656
	test	byte ptr [rbp - 0x7b], 1
	je	.label_656
	jmp	.label_642
.label_656:
	mov	rsp, rsp
	jmp	.label_664
.label_664:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_668
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_670
.label_668:
	jmp	.label_646
.label_1086:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_675
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_679
	jmp	.label_683
.label_675:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_679
.label_683:
	nop	
	jmp	.label_646
.label_679:
	jmp	.label_687
.label_687:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_689
	lea	rsi, [rsi]
	jmp	.label_646
.label_689:
	nop	
	jmp	.label_695
.label_695:
	mov	byte ptr [rbp - 0x83], 1
.label_1081:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_697
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_697
	jmp	.label_642
.label_697:
	lea	rsi, [rsi]
	jmp	.label_646
.label_1083:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_704
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_713
	jmp	.label_642
.label_713:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_718
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_718
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_718:
	jmp	.label_730
.label_730:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_732
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_732:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_740
.label_740:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_747
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_747:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_752
.label_752:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_756
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_756:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_704:
	lea	rsi, [rsi]
	jmp	.label_646
.label_1082:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_646
.label_771:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_767
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x91], sil
	lea	rsi, [rsi]
	jmp	.label_746
.label_767:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	mov	rsp, rsp
	jne	.label_788
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_788:
	jmp	.label_744
.label_744:
	lea	rdi, [rbp - 0xa4]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xa0]
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	jne	.label_809
	jmp	.label_648
.label_809:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_815
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_648
.label_815:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_817
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_649:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	mov	rsp, rsp
	jae	.label_823
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_823:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_824
	jmp	.label_639
.label_824:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_649
.label_639:
	jmp	.label_648
.label_817:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_650
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_650
	mov	qword ptr [rbp - 0xb8], 1
.label_703:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_737
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x130], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_659
	jmp	.label_680
.label_680:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_659
	jmp	.label_685
.label_685:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_659
	jmp	.label_693
.label_693:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_694
	mov	rsp, rsp
	jmp	.label_659
.label_659:
	mov	rsp, rsp
	jmp	.label_642
.label_694:
	jmp	.label_702
.label_702:
	mov	rsp, rsp
	jmp	.label_777
.label_777:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_703
.label_737:
	mov	rbp, rbp
	jmp	.label_650
.label_650:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_717
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_717:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_721
.label_721:
	lea	rsi, [rsi]
	jmp	.label_731
.label_731:
	jmp	.label_733
.label_733:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xa0]
	nop	
	call	mbsinit
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_744
.label_648:
	jmp	.label_746
.label_746:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_748
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_753
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_753
.label_748:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_723:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_690
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_690
	jmp	.label_762
.label_762:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_765
	jmp	.label_642
.label_765:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_768
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_768
	lea	rdi, [rdi]
	jmp	.label_772
.label_772:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_775
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_775:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_780
.label_780:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_784
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_784:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_793
.label_793:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_738
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_738:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_768:
	jmp	.label_803
.label_803:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_805
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_805:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_810
.label_810:
	jmp	.label_813
.label_813:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_667
	nop	
	movzx	eax, byte ptr [rbp - 0x7f]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_667:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_666
.label_666:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_764
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_764:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_677
.label_690:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_645
	lea	rdi, [rdi]
	jmp	.label_651
.label_651:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_652
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_652:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_645:
	nop	
	jmp	.label_677
.label_677:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_778
	jmp	.label_674
.label_778:
	lea	rsi, [rsi]
	jmp	.label_812
.label_812:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_676
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_676
	lea	rsi, [rsi]
	jmp	.label_682
.label_682:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_684
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_684:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_691
.label_691:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_797
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_797:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_676:
	nop	
	jmp	.label_707
.label_707:
	mov	rsp, rsp
	jmp	.label_710
.label_710:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_712
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_712:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_723
.label_674:
	mov	rsp, rsp
	jmp	.label_643
.label_753:
	lea	rsi, [rsi]
	jmp	.label_646
.label_646:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_759
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_745
.label_759:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_749
.label_745:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_749
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	mov	ecx, esi
	and	rcx, 0x1f
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_760
.label_749:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_760
	mov	rsp, rsp
	jmp	.label_643
.label_760:
	nop	
	jmp	.label_670
.label_670:
	jmp	.label_821
.label_821:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_761
	jmp	.label_642
.label_761:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_754
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_754
	lea	rdi, [rdi]
	jmp	.label_770
.label_770:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_773
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_773:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_779
.label_779:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_783
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_783:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_790
.label_790:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_795
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_795:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_754:
	jmp	.label_804
.label_804:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_798
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_798:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_833
.label_833:
	nop	
	jmp	.label_643
.label_643:
	jmp	.label_673
.label_673:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_722
	test	byte ptr [rbp - 0x82], 1
	jne	.label_722
	lea	rdi, [rdi]
	jmp	.label_818
.label_818:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_819
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_819:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_826
.label_826:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_831
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_831:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_722:
	jmp	.label_640
.label_640:
	nop	
	jmp	.label_654
.label_654:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_660
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_660:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_719
	mov	byte ptr [rbp - 0x7e], 0
.label_719:
	mov	rbp, rbp
	jmp	.label_658
.label_658:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_661
.label_724:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_669
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_669
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_669
	nop	
	jmp	.label_642
.label_669:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_681
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_681
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_681
	test	byte ptr [rbp - 0x7e], 1
	je	.label_686
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_706
.label_686:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_711
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_711
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_720
.label_711:
	jmp	.label_726
.label_726:
	mov	rbp, rbp
	jmp	.label_681
.label_681:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_729
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_729
	mov	rbp, rbp
	jmp	.label_735
.label_735:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_736
	lea	rdi, [rdi]
	jmp	.label_739
.label_739:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_742
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_742:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_751
.label_751:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_735
.label_736:
	jmp	.label_729
.label_729:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_758
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_758:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_706
.label_642:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_763
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_763
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_763:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_706:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096e0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409750

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_840
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_841
.label_840:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_841
.label_841:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	nop	
	mov	rbx, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_842
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_842:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409920
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_847:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_846
	nop	
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_847
.label_846:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_845
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_843]],  rax
.label_845:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_844
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_844:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a30

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a80

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_853
	call	abort
.label_853:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_848
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	jge	.label_849
	call	xalloc_die
.label_849:
	test	byte ptr [rbp - 0x31], 1
	je	.label_850
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_854
.label_850:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_854:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	lea	rdi, [rdi]
	je	.label_852
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_843]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_852:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	nop	
	add	edx, 1
	mov	rbp, rbp
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_848:
	movsxd	rax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	movsxd	rax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x20]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	ja	.label_851
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	je	.label_855
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_855:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_851:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409db0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
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
	#Procedure 0x409df0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e20
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e60

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ec0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_856
	call	abort
.label_856:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f60

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	nop	
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fd0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a010
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
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
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a050

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x64], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a100

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a140

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a170
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	quotearg_char_mem
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a1b0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x48]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a2a0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a2f0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a390
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a3e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a440

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a480
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quote_n_mem
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4c0

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a500

	.globl quote
	.type quote, @function
quote:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quote_n
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a540

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_860
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_858
.label_860:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_859
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_858
.label_859:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_857
	nop	
	movabs	rax, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_858
.label_857:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_858:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a680

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_861
	movabs	rsi, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	jmp	.label_865
.label_861:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_865:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_2
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	lea	rsi, [rsi]
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	rbp, rbp
	mov	ecx, 0x7e3
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, r8b
	nop	
	call	fprintf
	nop	
	mov	ecx, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	mov	rbp, rbp
	ja	.label_864
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_862]]
	jmp	rcx
.label_1129:
	jmp	.label_863
.label_1130:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_863
.label_1131:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	jmp	.label_863
.label_1132:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	jmp	.label_863
.label_1133:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_863
.label_1134:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_863
.label_1135:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_863
.label_1136:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_0
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	jmp	.label_863
.label_1137:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_863
.label_1138:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_863
.label_864:
	movabs	rdi, OFFSET FLAT:.str.13_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x15c], eax
.label_863:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40adf0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_866:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_867
	mov	rbp, rbp
	jmp	.label_868
.label_868:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_866
.label_867:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aea0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_875:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_874
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_870
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_871
.label_870:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_871:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], dl
.label_874:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_873
	mov	rsp, rsp
	jmp	.label_869
.label_873:
	jmp	.label_872
.label_872:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_875
.label_869:
	nop	
	lea	r8, [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b000
	.globl version_etc
	.type version_etc, @function
version_etc:

	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1a0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	lea	rsi, [rsi]
	je	.label_876
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_876:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	nop	
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b1b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b260
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_877
	mov	rbp, rbp
	call	xalloc_die
.label_877:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b2c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_878
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_878
	lea	rdi, [rdi]
	call	xalloc_die
.label_878:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b320
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_879
	mov	rsp, rsp
	call	xalloc_die
.label_879:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_880
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_880
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_882
.label_880:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_881
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_881
	lea	rsi, [rsi]
	call	xalloc_die
.label_881:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_882:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b450

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_883
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_885
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_885:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_887
	call	xalloc_die
.label_887:
	lea	rsi, [rsi]
	jmp	.label_886
.label_883:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_884
	call	xalloc_die
.label_884:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_886:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b580

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b5b0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b5f0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b640
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
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
	lea	rsi, [rsi]
	call	xalloc_die
.label_889:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b6b0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b700
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b760

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40b7c0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_893
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_891
.label_893:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_890
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	mov	rbp, rbp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_892
.label_890:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_892
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_892:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_894
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_894:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_891:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b8e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_895
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_896
.label_895:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_897
.label_896:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_897:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b950

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_898
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_898:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b9b0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_899
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_899
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_899
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_900
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_901
.label_900:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_901
.label_899:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_901:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bac0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_902
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_902:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_903
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_903
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_903
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_904
.label_903:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_904:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bbb0
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	eax, 0x21
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, rcx
	mov	rsp, rsp
	call	xmalloc
	mov	edx, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x2c
	mov	rsi, rax
	lea	rsi, [rsi]
	call	strncpy
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x20], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_908:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x29], cl
	mov	rsp, rsp
	jae	.label_906
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x20
	sete	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], dl
.label_906:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_905
	jmp	.label_909
.label_905:
	lea	rsi, [rsi]
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax - 1], 0
	jmp	.label_908
.label_909:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bcc0

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	utmpxname
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	call	setutxent
.label_912:
	call	getutxent
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	cmp	rax, 0
	je	.label_911
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	call	desirable_utmp_entry
	test	al, 1
	jne	.label_913
	jmp	.label_910
.label_913:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_914
	lea	rsi, [rbp - 0x30]
	mov	rsp, rsp
	mov	eax, 0x180
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	x2nrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_914:
	mov	eax, 0x180
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, rcx
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	imul	rcx, rcx, 0x180
	add	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memcpy
.label_910:
	jmp	.label_912
.label_911:
	lea	rdi, [rdi]
	call	endutxent
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40be00

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	nop	
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	eax, byte ptr [rdi + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x16], cl
	lea	rdi, [rdi]
	je	.label_915
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	cmp	edx, 7
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x17], al
	je	.label_918
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x17], cl
	jmp	.label_918
.label_918:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x17]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x16], al
.label_915:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x16]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], al
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	and	ecx, 2
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_917
	nop	
	test	byte ptr [rbp - 0x15], 1
	jne	.label_917
	mov	byte ptr [rbp - 1], 0
	jmp	.label_919
.label_917:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	je	.label_916
	nop	
	test	byte ptr [rbp - 0x15], 1
	je	.label_916
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 4]
	jge	.label_916
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edi, dword ptr [rax + 4]
	nop	
	call	kill
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	jge	.label_916
	call	__errno_location
	cmp	dword ptr [rax], 3
	lea	rdi, [rdi]
	jne	.label_916
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_919
.label_916:
	mov	byte ptr [rbp - 1], 1
.label_919:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf30

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_922
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_921
.label_922:
	nop	
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	jmp	.label_921
.label_921:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0x77
	lea	rdi, [rdi]
	jae	.label_925
	mov	rbp, rbp
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	jmp	.label_924
.label_925:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_924:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	je	.label_920
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 8], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_923
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	extend_abbrs
.label_923:
	jmp	.label_920
.label_920:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c070

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c0c0

	.globl tzfree
	.type tzfree, @function
tzfree:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	lea	rsi, [rsi]
	je	.label_926
	mov	rbp, rbp
	jmp	.label_927
.label_927:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_928
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_927
.label_928:
	jmp	.label_926
.label_926:
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c140
	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_929
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	gmtime_r
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_931
.label_929:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	je	.label_932
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	cmp	rax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_934
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_934:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x2a]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_930
	lea	rdi, [rdi]
	jmp	.label_933
.label_930:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x29], 1
	lea	rsi, [rsi]
	je	.label_933
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_931
.label_933:
	jmp	.label_932
.label_932:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_931:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c260

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	call	getenv_TZ
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_939
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_936
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_940
	jmp	.label_936
.label_939:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 8], 0
	jne	.label_936
.label_940:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_935
.label_936:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	tzalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_937
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_935
.label_937:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_938
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzfree
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_935
.label_938:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_935:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c3a0

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_951
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_949
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	nop	
	cmp	rax, rcx
	jae	.label_949
.label_951:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_944
.label_949:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_943
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_941:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_950
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	jne	.label_947
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, 9
	cmp	rax, rcx
	nop	
	jne	.label_953
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_947
.label_953:
	lea	rdi, [rdi]
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rdi, 9
	sub	rax, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_942
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_944
.label_942:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_948
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	extend_abbrs
	mov	rsp, rsp
	jmp	.label_945
.label_948:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_952
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_944
.label_952:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_945:
	jmp	.label_950
.label_947:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_946
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_946
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_946:
	lea	rdi, [rdi]
	jmp	.label_941
.label_950:
	mov	rbp, rbp
	jmp	.label_943
.label_943:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	byte ptr [rbp - 1], 1
.label_944:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c640

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_954
	mov	byte ptr [rbp - 1], 1
	jmp	.label_955
.label_954:
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_956
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_956:
	mov	rdi, qword ptr [rbp - 0x10]
	call	tzfree
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], dl
.label_955:
	nop	
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c6f0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_961
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_961:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_959
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jne	.label_963
	mov	rsp, rsp
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	call	localtime_r
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_957
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	nop	
	cmp	eax, 0
	je	.label_957
.label_963:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_957
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_957:
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	revert_tz
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_960
	mov	rsp, rsp
	jmp	.label_958
.label_960:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_962
.label_958:
	jmp	.label_959
.label_959:
	mov	qword ptr [rbp - 8], -1
.label_962:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c830

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 4]
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	call	isdst_differ
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 0x14]
	or	esi, ecx
	lea	rdi, [rdi]
	cmp	esi, 0
	setne	al
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c920

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_7
	nop	
	call	getenv
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c950

	.globl change_env
	.type change_env, @function
change_env:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 8]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_964
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_966
.label_964:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_966
.label_966:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_965
	mov	byte ptr [rbp - 1], 0
	jmp	.label_967
.label_965:
	call	tzset
	nop	
	mov	byte ptr [rbp - 1], 1
.label_967:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c9e0

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_968
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_7
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_969
.label_968:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_7
	call	unsetenv
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_969:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ca50

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	cmp	dword ptr [rbp - 8], 0
	nop	
	setne	dl
	xor	dl, 0xff
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	je	.label_970
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
	jg	.label_970
	mov	rsp, rsp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_970:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cae0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jne	.label_971
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_973
.label_971:
	mov	rbp, rbp
	jmp	.label_972
.label_972:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_975
	jmp	.label_974
.label_975:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_972
.label_974:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_973:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cbd0

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	__fpending
	cmp	rax, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	nop	
	test	byte ptr [rbp - 0x12], 1
	lea	rsi, [rsi]
	jne	.label_978
	test	byte ptr [rbp - 0x13], 1
	je	.label_977
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_978
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_977
.label_978:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_976
	call	__errno_location
	mov	dword ptr [rax], 0
.label_976:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_979
.label_977:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_979:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ccb0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_981
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_982
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_980
.label_982:
	mov	byte ptr [rbp - 5], 0
.label_980:
	jmp	.label_981
.label_981:
	mov	al, byte ptr [rbp - 5]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cd50

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	edi, 0xe
	lea	rdi, [rdi]
	call	rpl_nl_langinfo
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_984
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_984:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_983
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_983:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cdd0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, 0xffffd828
	lea	rsi, [rsi]
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_985
	jmp	.label_987
.label_987:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_986
.label_985:
	lea	rsi, [rsi]
	jmp	.label_986
.label_986:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ce30
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
	jmp	.label_991
.label_991:
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
	ja	.label_990
	jmp	.label_988
.label_988:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_992
.label_990:
	mov	byte ptr [rbp - 1], 0
.label_992:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cea0
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
	#Procedure 0x40cef0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_997
	jmp	.label_998
.label_998:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_999
.label_997:
	mov	byte ptr [rbp - 1], 0
.label_999:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cf20
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
	#Procedure 0x40cf50
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
	#Procedure 0x40cfa0
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
	#Procedure 0x40cfe0
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
	#Procedure 0x40d020
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
	#Procedure 0x40d060
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
	#Procedure 0x40d0a0
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
	#Procedure 0x40d120
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
	jmp	.label_1026
.label_1026:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1025
	jmp	.label_1023
.label_1023:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1024
.label_1025:
	mov	byte ptr [rbp - 1], 0
.label_1024:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d170
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
	#Procedure 0x40d1b0
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
	#Procedure 0x40d220

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
	#Procedure 0x40d260
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
