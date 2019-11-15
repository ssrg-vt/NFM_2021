	.section	.text
	.align	16
	#Procedure 0x401ad0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x20], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x20], 0
	je	.label_9
	nop	
	jmp	.label_8
.label_8:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x24], eax
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
	mov	dword ptr [rbp - 8], eax
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
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x1c], eax
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
	mov	dword ptr [rbp - 0x10], eax
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
	mov	dword ptr [rbp - 0xc], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	call	emit_ancillary_info
.label_7:
	nop	
	mov	edi, dword ptr [rbp - 0x20]
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
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rax
.label_15:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdx], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], cl
	nop	
	je	.label_11
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x41], cl
.label_11:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_12
	lea	rdi, [rdi]
	jmp	.label_14
.label_12:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_15
.label_14:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	je	.label_10
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
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
	mov	dword ptr [rbp - 0x40], eax
	call	setlocale
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.28
	mov	eax, 3
	mov	edx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
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
	mov	dword ptr [rbp - 0x24], eax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.30
	lea	rsi, [rsi]
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.31
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.32
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x30]
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
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x50
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
	mov	dword ptr [rbp - 0x14], 0
	nop	
	mov	dword ptr [rbp - 0x1c], edi
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
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0x40], rax
	call	bindtextdomain
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
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
	mov	edi, dword ptr [rbp - 0x1c]
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
	mov	dword ptr [rbp - 0x38], eax
	mov	al, r10b
	call	parse_gnu_standard_options_only
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	r9d,  dword ptr [dword ptr [rip + optind]]
	sub	edi, r9d
	mov	dword ptr [rbp - 0x18], edi
	lea	rsi, [rsi]
	je	.label_19
	nop	
	jmp	.label_17
.label_17:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
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
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
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
	sub	rsp, 0x20
	lea	rax, [rbp - 0x20]
	mov	rsp, rsp
	lea	rdx, [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 8], 0
	mov	rdi, qword ptr [rbp - 0x18]
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
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
.label_21:
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	call	print_uptime
	add	rsp, 0x20
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
	sub	rsp, 0x2100
	movabs	rax, OFFSET FLAT:.str.34
	nop	
	movabs	rcx, OFFSET FLAT:.str.35
	mov	qword ptr [rbp - 0x20b0], rdi
	nop	
	mov	qword ptr [rbp - 0x88], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20c8], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20e0], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	call	fopen
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_26
	nop	
	mov	esi, 0x2000
	lea	rdi, [rbp - 0x2090]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	fgets_unlocked
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x2090]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2098], rax
	mov	rax, qword ptr [rbp - 0x2098]
	mov	rsp, rsp
	cmp	rax, rdx
	mov	rsp, rsp
	jne	.label_22
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x2090]
	call	c_strtod
	nop	
	lea	rsi, [rbp - 0x2090]
	movsd	qword ptr [rbp - 0x20e8], xmm0
	mov	rsp, rsp
	cmp	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	je	.label_46
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movsd	xmm1, qword ptr [rbp - 0x20e8]
	ucomisd	xmm1, xmm0
	jb	.label_28
	movsd	xmm0,  qword ptr [word ptr [label_33]]
	ucomisd	xmm0, qword ptr [rbp - 0x20e8]
	mov	rbp, rbp
	jbe	.label_28
	movsd	xmm0, qword ptr [rbp - 0x20e8]
	movsd	qword ptr [rbp - 0x10], xmm0
	jmp	.label_40
.label_28:
	movsd	xmm0,  qword ptr [word ptr [label_42]]
	movsd	qword ptr [rbp - 0x10], xmm0
	nop	
	jmp	.label_40
.label_40:
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0x10]
	cvttsd2si	rax, xmm0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
.label_46:
	jmp	.label_22
.label_22:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp - 0x20a4], eax
.label_26:
	mov	rbp, rbp
	jmp	.label_29
.label_29:
	mov	rax, qword ptr [rbp - 0x20b0]
	mov	rcx, rax
	add	rcx, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20b0], rcx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_31
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rdx + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x51], cl
	lea	rsi, [rsi]
	je	.label_39
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, word ptr [rcx]
	lea	rdi, [rdi]
	cmp	edx, 7
	mov	byte ptr [rbp - 0x21], al
	je	.label_24
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
	jmp	.label_24
.label_24:
	mov	al, byte ptr [rbp - 0x21]
	nop	
	mov	byte ptr [rbp - 0x51], al
.label_39:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	add	rdx, qword ptr [rbp - 0x20c8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20c8], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	movsx	ecx, word ptr [rdx]
	nop	
	cmp	ecx, 2
	jne	.label_38
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rax + 0x154]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20e0], rax
.label_38:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	add	rax, 0x180
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_29
.label_31:
	xor	eax, eax
	mov	edi, eax
	call	time
	nop	
	mov	qword ptr [rbp - 0x20d0], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	jne	.label_30
	cmp	qword ptr [rbp - 0x20e0], 0
	jne	.label_35
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20d4], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x20d4]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_35:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20d0]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x20e0]
	mov	qword ptr [rbp - 0x78], rax
.label_30:
	lea	rdi, [rbp - 0x20d0]
	mov	rsp, rsp
	mov	eax, 0x3c
	mov	ecx, eax
	mov	eax, 0xe10
	mov	edx, eax
	mov	eax, 0x15180
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	cqo	
	lea	rsi, [rsi]
	idiv	rsi
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	imul	rsi, qword ptr [rbp - 0x68], 0x15180
	lea	rsi, [rsi]
	sub	rax, rsi
	lea	rsi, [rsi]
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	idiv	rsi
	mov	r8d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], r8d
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	imul	r9, qword ptr [rbp - 0x68], 0x15180
	sub	rax, r9
	imul	r8d, dword ptr [rbp - 0x14], 0xe10
	nop	
	movsxd	r9, r8d
	sub	rax, r9
	cqo	
	idiv	rcx
	lea	rsi, [rsi]
	mov	r8d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20f0], r8d
	call	localtime
	nop	
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	je	.label_36
	movabs	rdi, OFFSET FLAT:.str.37
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	call	gettext
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, rax
	call	fprintftime
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_27
.label_36:
	movabs	rdi, OFFSET FLAT:.str.38
	call	gettext
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
.label_27:
	cmp	qword ptr [rbp - 0x78], -1
	lea	rdi, [rdi]
	jne	.label_37
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20b8], eax
	jmp	.label_32
.label_37:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	jge	.label_47
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
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
	mov	rsi, qword ptr [rbp - 0x68]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x20f0]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x20ec], eax
	jmp	.label_43
.label_47:
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	esi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x20f0]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20f4], eax
.label_43:
	jmp	.label_32
.label_32:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20c8]
	call	select_plural
	movabs	rdi, OFFSET FLAT:.str.43
	movabs	rsi, OFFSET FLAT:.str.44
	mov	rbp, rbp
	mov	rdx, rax
	mov	rbp, rbp
	call	ngettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20c8]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	mov	esi, 3
	lea	rdi, [rbp - 0x50]
	mov	dword ptr [rbp - 0x209c], eax
	call	getloadavg
	mov	dword ptr [rbp - 0x20a0], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x20a0], -1
	lea	rsi, [rsi]
	jne	.label_23
	nop	
	mov	edi, 0xa
	nop	
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20c0], eax
	lea	rdi, [rdi]
	jmp	.label_45
.label_23:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x20a0], 0
	jle	.label_34
	movabs	rdi, OFFSET FLAT:.str.45
	call	gettext
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 1
	call	printf
	mov	dword ptr [rbp - 0x28], eax
.label_34:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x20a0], 1
	jle	.label_44
	movabs	rdi, OFFSET FLAT:.str.46
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	call	printf
	mov	dword ptr [rbp - 0x7c], eax
.label_44:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x20a0], 2
	jle	.label_25
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.46
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 0x40]
	nop	
	mov	al, 1
	mov	rsp, rsp
	call	printf
	mov	dword ptr [rbp - 0x20b4], eax
.label_25:
	nop	
	cmp	dword ptr [rbp - 0x20a0], 0
	jle	.label_41
	nop	
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20bc], eax
.label_41:
	mov	rsp, rsp
	jmp	.label_45
.label_45:
	lea	rsi, [rsi]
	add	rsp, 0x2100
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x402790

	.globl select_plural
	.type select_plural, @function
select_plural:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], -1
	ja	.label_48
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_49
.label_48:
	mov	eax, 0xf4240
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
.label_49:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027f0

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	call	c_locale
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_52
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_51
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_51:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 0x10], xmm0
	mov	rbp, rbp
	jmp	.label_50
.label_52:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	call	strtod_l
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 0x18], xmm0
	movsd	xmm0, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x10], xmm0
.label_50:
	movsd	xmm0, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402890

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
	#Procedure 0x4028e0
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
	#Procedure 0x402910
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
	#Procedure 0x402940

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
	je	.label_54
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_55
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_54
.label_55:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_58
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 4], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_56
.label_58:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_56:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_54:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_57
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_57:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a70

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
	lea	r10, [rbp - 0x31]
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	byte ptr [rbp - 0x31], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x28], r8d
	mov	r8d, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r10
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 8]
	mov	qword ptr [rsp + 8], r10
	mov	eax, dword ptr [rbp - 0x28]
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
	#Procedure 0x402b00

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0xba0
	mov	al, cl
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x540], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6e8], rsi
	mov	qword ptr [rbp - 0x708], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x8c9], al
	nop	
	mov	dword ptr [rbp - 0x524], r8d
	mov	dword ptr [rbp - 0x964], r9d
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x620], r11
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb98], r10
	mov	dword ptr [rbp - 0x4ac], ecx
	mov	qword ptr [rbp - 0x558], -1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rdx + 8]
	nop	
	mov	dword ptr [rbp - 0x624], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4c8], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x540]
	nop	
	mov	qword ptr [rbp - 0xa58], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c0], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x708]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x30]
	mov	qword ptr [rbp - 0x4c0], rdx
	cmp	qword ptr [rbp - 0x4c0], 0
	jne	.label_287
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 0x4c0], rax
.label_287:
	nop	
	cmp	dword ptr [rbp - 0x624], 0xc
	jle	.label_345
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x624]
	sub	eax, 0xc
	nop	
	mov	dword ptr [rbp - 0x624], eax
	jmp	.label_346
.label_345:
	cmp	dword ptr [rbp - 0x624], 0
	jne	.label_354
	nop	
	mov	dword ptr [rbp - 0x624], 0xc
.label_354:
	jmp	.label_346
.label_346:
	mov	rax, qword ptr [rbp - 0x6e8]
	mov	qword ptr [rbp - 0x7c0], rax
.label_316:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x7c0]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_361
	mov	dword ptr [rbp - 0x8d0], 0
	mov	dword ptr [rbp - 0x588], 0
	mov	byte ptr [rbp - 0x909], 0
	mov	al, byte ptr [rbp - 0x8c9]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xb19], al
	mov	byte ptr [rbp - 0x549], 0
	mov	rcx, qword ptr [rbp - 0x7c0]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_370
	jmp	.label_387
.label_387:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x938], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x964], 0
	lea	rdi, [rdi]
	jge	.label_388
	xor	eax, eax
	mov	dword ptr [rbp - 0x958], eax
	jmp	.label_398
.label_388:
	mov	eax, dword ptr [rbp - 0x964]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x958], eax
.label_398:
	mov	eax, dword ptr [rbp - 0x958]
	mov	rbp, rbp
	movsxd	rcx, eax
	nop	
	mov	qword ptr [rbp - 0x668], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x938]
	cmp	rcx, qword ptr [rbp - 0x668]
	mov	rsp, rsp
	jae	.label_406
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x748], rax
	jmp	.label_416
.label_406:
	mov	rax, qword ptr [rbp - 0x938]
	mov	qword ptr [rbp - 0x748], rax
.label_416:
	mov	rax, qword ptr [rbp - 0x748]
	mov	qword ptr [rbp - 0x630], rax
	nop	
	mov	rax, qword ptr [rbp - 0x630]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x558]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_425
	mov	qword ptr [rbp - 0xad8], 0
	mov	rbp, rbp
	jmp	.label_80
.label_425:
	cmp	qword ptr [rbp - 0xa58], 0
	nop	
	je	.label_440
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x588], 0
	lea	rdi, [rdi]
	jne	.label_444
	mov	rax, qword ptr [rbp - 0x938]
	cmp	rax, qword ptr [rbp - 0x668]
	mov	rbp, rbp
	jae	.label_444
	movsxd	rax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x938]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x8e8], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_456
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_470
.label_456:
	jmp	.label_473
.label_473:
	mov	qword ptr [rbp - 0x948], 0
.label_484:
	mov	rax, qword ptr [rbp - 0x948]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x8e8]
	lea	rdi, [rdi]
	jae	.label_475
	lea	rsi, [rsi]
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rsi, [rsi]
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa14], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x948]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x948], rax
	jmp	.label_484
.label_475:
	lea	rsi, [rsi]
	jmp	.label_493
.label_493:
	mov	rbp, rbp
	jmp	.label_494
.label_470:
	jmp	.label_495
.label_495:
	nop	
	mov	qword ptr [rbp - 0x780], 0
.label_595:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x780]
	nop	
	cmp	rax, qword ptr [rbp - 0x8e8]
	jae	.label_502
	mov	rbp, rbp
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x584], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x780]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x780], rax
	jmp	.label_595
.label_502:
	jmp	.label_525
.label_525:
	jmp	.label_494
.label_494:
	mov	rsp, rsp
	jmp	.label_444
.label_444:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	mov	rsi, qword ptr [rbp - 0xa58]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0xa40], eax
.label_440:
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_204
.label_370:
	lea	rsi, [rsi]
	jmp	.label_62
.label_62:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x7c0]
	nop	
	mov	rcx, rax
	nop	
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x7c0], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	esi, edx
	sub	esi, 0x23
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xaec], edx
	nop	
	mov	dword ptr [rbp - 0x87c], esi
	je	.label_539
	jmp	.label_363
.label_363:
	nop	
	mov	eax, dword ptr [rbp - 0xaec]
	sub	eax, 0x2b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x930], eax
	je	.label_60
	lea	rdi, [rdi]
	jmp	.label_568
.label_568:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xaec]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0xb50], eax
	je	.label_60
	jmp	.label_459
.label_459:
	mov	eax, dword ptr [rbp - 0xaec]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xa98], eax
	je	.label_60
	jmp	.label_583
.label_583:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xaec]
	lea	rdi, [rdi]
	sub	eax, 0x5e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa60], eax
	je	.label_508
	mov	rsp, rsp
	jmp	.label_592
.label_592:
	nop	
	mov	eax, dword ptr [rbp - 0xaec]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x7f0], eax
	lea	rsi, [rsi]
	jne	.label_593
	mov	rsp, rsp
	jmp	.label_60
.label_60:
	nop	
	mov	rax, qword ptr [rbp - 0x7c0]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8d0], ecx
	jmp	.label_62
.label_508:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb19], 1
	nop	
	jmp	.label_62
.label_539:
	mov	byte ptr [rbp - 0x549], 1
	jmp	.label_62
.label_593:
	mov	rbp, rbp
	jmp	.label_81
.label_81:
	jmp	.label_86
.label_86:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_88
	mov	dword ptr [rbp - 0x964], 0
.label_137:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x964], 0xccccccc
	jg	.label_265
	cmp	dword ptr [rbp - 0x964], 0xccccccc
	jne	.label_106
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7c0]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	nop	
	cmp	ecx, 7
	jle	.label_106
.label_265:
	mov	dword ptr [rbp - 0x964], 0x7fffffff
	jmp	.label_118
.label_106:
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x964], 0xa
	nop	
	mov	dword ptr [rbp - 0x964], eax
	mov	rcx, qword ptr [rbp - 0x7c0]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x964], eax
.label_118:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7c0]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7c0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x7c0]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_137
	mov	rsp, rsp
	jmp	.label_88
.label_88:
	mov	rax, qword ptr [rbp - 0x7c0]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	mov	rsp, rsp
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x92c], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x974], edx
	je	.label_173
	lea	rsi, [rsi]
	jmp	.label_479
.label_479:
	mov	eax, dword ptr [rbp - 0x92c]
	sub	eax, 0x4f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	jne	.label_70
	jmp	.label_173
.label_173:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rcx, rax
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7c0], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x63c], edx
	lea	rsi, [rsi]
	jmp	.label_175
.label_70:
	mov	dword ptr [rbp - 0x63c], 0
.label_175:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x7a4], ecx
	test	ecx, ecx
	mov	dword ptr [rbp - 0x828], ecx
	nop	
	je	.label_189
	lea	rsi, [rsi]
	jmp	.label_279
.label_279:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x25
	mov	dword ptr [rbp - 0xa28], eax
	mov	rbp, rbp
	je	.label_199
	jmp	.label_206
.label_206:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x3a
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94c], eax
	je	.label_207
	jmp	.label_218
.label_218:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x41
	mov	dword ptr [rbp - 0x8b0], eax
	je	.label_215
	jmp	.label_224
.label_224:
	mov	eax, dword ptr [rbp - 0x828]
	mov	rbp, rbp
	sub	eax, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa34], eax
	je	.label_428
	jmp	.label_235
.label_235:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x43
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_237
	mov	rbp, rbp
	jmp	.label_246
.label_246:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb0c], eax
	nop	
	je	.label_249
	mov	rsp, rsp
	jmp	.label_256
.label_256:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x46
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x86c], eax
	nop	
	je	.label_260
	nop	
	jmp	.label_268
.label_268:
	mov	eax, dword ptr [rbp - 0x828]
	nop	
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x72c], eax
	je	.label_270
	jmp	.label_275
.label_275:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x48
	nop	
	mov	dword ptr [rbp - 0xb68], eax
	je	.label_277
	jmp	.label_188
.label_188:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x49
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x81c], eax
	je	.label_285
	jmp	.label_291
.label_291:
	nop	
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x5ac], eax
	je	.label_293
	jmp	.label_296
.label_296:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x4e
	mov	dword ptr [rbp - 0x93c], eax
	je	.label_297
	jmp	.label_329
.label_329:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x828]
	mov	rsp, rsp
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x7f8], eax
	nop	
	je	.label_303
	mov	rsp, rsp
	jmp	.label_310
.label_310:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x52
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x544], eax
	lea	rsi, [rsi]
	je	.label_315
	jmp	.label_319
.label_319:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x53
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x564], eax
	je	.label_321
	jmp	.label_328
.label_328:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x6d0], eax
	lea	rsi, [rsi]
	je	.label_330
	lea	rsi, [rsi]
	jmp	.label_335
.label_335:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x828]
	lea	rdi, [rdi]
	sub	eax, 0x55
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa94], eax
	mov	rbp, rbp
	je	.label_337
	jmp	.label_343
.label_343:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x56
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x968], eax
	je	.label_270
	jmp	.label_350
.label_350:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x828]
	lea	rdi, [rdi]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x784], eax
	je	.label_99
	jmp	.label_357
.label_357:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0xafc], eax
	je	.label_577
	nop	
	jmp	.label_362
.label_362:
	mov	eax, dword ptr [rbp - 0x828]
	mov	rsp, rsp
	sub	eax, 0x59
	mov	dword ptr [rbp - 0x6a0], eax
	lea	rdi, [rdi]
	je	.label_203
	mov	rbp, rbp
	jmp	.label_371
.label_371:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x59c], eax
	lea	rsi, [rsi]
	je	.label_375
	nop	
	jmp	.label_381
.label_381:
	mov	eax, dword ptr [rbp - 0x828]
	mov	rsp, rsp
	sub	eax, 0x61
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa9c], eax
	mov	rsp, rsp
	je	.label_383
	jmp	.label_390
.label_390:
	mov	eax, dword ptr [rbp - 0x828]
	nop	
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x5ec], eax
	je	.label_393
	mov	rbp, rbp
	jmp	.label_196
.label_196:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x73c], eax
	je	.label_401
	nop	
	jmp	.label_408
.label_408:
	mov	eax, dword ptr [rbp - 0x828]
	mov	rbp, rbp
	sub	eax, 0x64
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x824], eax
	je	.label_410
	nop	
	jmp	.label_498
.label_498:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x65
	nop	
	mov	dword ptr [rbp - 0xb30], eax
	je	.label_511
	jmp	.label_424
.label_424:
	nop	
	mov	eax, dword ptr [rbp - 0x828]
	mov	rsp, rsp
	sub	eax, 0x67
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x548], eax
	mov	rbp, rbp
	je	.label_270
	mov	rsp, rsp
	jmp	.label_434
.label_434:
	mov	eax, dword ptr [rbp - 0x828]
	nop	
	sub	eax, 0x68
	nop	
	mov	dword ptr [rbp - 0x70], eax
	mov	rsp, rsp
	je	.label_393
	jmp	.label_438
.label_438:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x6a
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7fc], eax
	je	.label_439
	jmp	.label_445
.label_445:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x99c], eax
	lea	rdi, [rdi]
	je	.label_446
	nop	
	jmp	.label_455
.label_455:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x6c
	nop	
	mov	dword ptr [rbp - 0x5cc], eax
	je	.label_457
	jmp	.label_463
.label_463:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x5d4], eax
	je	.label_465
	mov	rsp, rsp
	jmp	.label_338
.label_338:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x6fc], eax
	je	.label_474
	jmp	.label_548
.label_548:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x70
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x518], eax
	lea	rsi, [rsi]
	je	.label_588
	jmp	.label_485
.label_485:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x7c4], eax
	je	.label_488
	jmp	.label_462
.label_462:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x83c], eax
	je	.label_492
	jmp	.label_496
.label_496:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rdi, [rdi]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x9dc], eax
	lea	rsi, [rsi]
	je	.label_499
	jmp	.label_507
.label_507:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x74
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x910], eax
	je	.label_556
	nop	
	jmp	.label_515
.label_515:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x828]
	nop	
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5d0], eax
	je	.label_517
	lea	rdi, [rdi]
	jmp	.label_526
.label_526:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x828]
	mov	rbp, rbp
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x6c8], eax
	je	.label_142
	jmp	.label_530
.label_530:
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x640], eax
	je	.label_531
	jmp	.label_536
.label_536:
	mov	eax, dword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	eax, 0x79
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x610], eax
	je	.label_286
	jmp	.label_111
.label_111:
	nop	
	mov	eax, dword ptr [rbp - 0x828]
	sub	eax, 0x7a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb80], eax
	je	.label_541
	jmp	.label_550
.label_199:
	nop	
	cmp	dword ptr [rbp - 0x63c], 0
	mov	rsp, rsp
	je	.label_552
	jmp	.label_72
.label_552:
	mov	rsp, rsp
	jmp	.label_560
.label_560:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x498], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x964], 0
	lea	rsi, [rsi]
	jge	.label_562
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c4], eax
	jmp	.label_570
.label_562:
	mov	eax, dword ptr [rbp - 0x964]
	nop	
	mov	dword ptr [rbp - 0x6c4], eax
.label_570:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c4]
	nop	
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8a0], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x498]
	cmp	rcx, qword ptr [rbp - 0x8a0]
	jae	.label_580
	mov	rax, qword ptr [rbp - 0x8a0]
	nop	
	mov	qword ptr [rbp - 0x878], rax
	lea	rsi, [rsi]
	jmp	.label_590
.label_580:
	mov	rax, qword ptr [rbp - 0x498]
	mov	qword ptr [rbp - 0x878], rax
.label_590:
	nop	
	mov	rax, qword ptr [rbp - 0x878]
	mov	qword ptr [rbp - 0xa10], rax
	mov	rax, qword ptr [rbp - 0xa10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x558]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_600
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xad8], 0
	lea	rdi, [rdi]
	jmp	.label_80
.label_600:
	nop	
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_87
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_92
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x498]
	cmp	rax, qword ptr [rbp - 0x8a0]
	mov	rbp, rbp
	jae	.label_92
	movsxd	rax, dword ptr [rbp - 0x964]
	nop	
	sub	rax, qword ptr [rbp - 0x498]
	mov	qword ptr [rbp - 0x988], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_105
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	nop	
	jne	.label_115
.label_105:
	nop	
	jmp	.label_120
.label_120:
	nop	
	mov	qword ptr [rbp - 0x688], 0
.label_140:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x988]
	mov	rsp, rsp
	jae	.label_127
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x820], eax
	mov	rax, qword ptr [rbp - 0x688]
	add	rax, 1
	mov	qword ptr [rbp - 0x688], rax
	mov	rbp, rbp
	jmp	.label_140
.label_127:
	lea	rdi, [rdi]
	jmp	.label_151
.label_151:
	nop	
	jmp	.label_153
.label_115:
	lea	rdi, [rdi]
	jmp	.label_528
.label_528:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb28], 0
.label_312:
	mov	rax, qword ptr [rbp - 0xb28]
	cmp	rax, qword ptr [rbp - 0x988]
	mov	rbp, rbp
	jae	.label_161
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	nop	
	mov	dword ptr [rbp - 0x6a4], eax
	mov	rax, qword ptr [rbp - 0xb28]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb28], rax
	jmp	.label_312
.label_161:
	lea	rsi, [rsi]
	jmp	.label_179
.label_179:
	lea	rsi, [rsi]
	jmp	.label_153
.label_153:
	mov	rsp, rsp
	jmp	.label_92
.label_92:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rdi, [rdi]
	call	fputc
	mov	dword ptr [rbp - 0x7b4], eax
.label_87:
	mov	rax, qword ptr [rbp - 0xa10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rsp, rsp
	jmp	.label_240
.label_383:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x63c], 0
	je	.label_201
	lea	rsi, [rsi]
	jmp	.label_72
.label_201:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x549], 1
	nop	
	je	.label_209
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb19], 1
	mov	byte ptr [rbp - 0x909], 0
.label_209:
	mov	rsp, rsp
	jmp	.label_74
.label_215:
	cmp	dword ptr [rbp - 0x63c], 0
	nop	
	je	.label_221
	mov	rsp, rsp
	jmp	.label_72
.label_221:
	test	byte ptr [rbp - 0x549], 1
	lea	rdi, [rdi]
	je	.label_228
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb19], 1
	mov	byte ptr [rbp - 0x909], 0
.label_228:
	lea	rdi, [rdi]
	jmp	.label_74
.label_393:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x549], 1
	lea	rdi, [rdi]
	je	.label_239
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb19], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x909], 0
.label_239:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	nop	
	jne	.label_252
	nop	
	jmp	.label_72
.label_252:
	nop	
	jmp	.label_74
.label_428:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rbp, rbp
	jne	.label_264
	jmp	.label_72
.label_264:
	test	byte ptr [rbp - 0x549], 1
	je	.label_101
	mov	byte ptr [rbp - 0xb19], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x909], 0
.label_101:
	jmp	.label_74
.label_401:
	cmp	dword ptr [rbp - 0x63c], 0x4f
	jne	.label_164
	jmp	.label_72
.label_164:
	lea	rdi, [rdi]
	jmp	.label_74
.label_322:
	mov	dword ptr [rbp - 0x68c], 0xffffffff
.label_533:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x790]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x708]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0xb19]
	mov	r8d, dword ptr [rbp - 0x8d0]
	mov	rsp, rsp
	mov	r9d, dword ptr [rbp - 0x68c]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x620]
	mov	r11, qword ptr [rbp - 0xb98]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4ac]
	and	cl, 1
	mov	rsp, rsp
	movzx	ecx, cl
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	nop	
	mov	dword ptr [rsp + 0x10], eax
	call	__strftime_internal
	nop	
	mov	qword ptr [rbp - 0x768], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x768]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x810], rax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_313
	xor	eax, eax
	mov	dword ptr [rbp - 0x8ec], eax
	mov	rbp, rbp
	jmp	.label_323
.label_313:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x8ec], eax
.label_323:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x8ec]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x960], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x810]
	cmp	rcx, qword ptr [rbp - 0x960]
	nop	
	jae	.label_332
	mov	rax, qword ptr [rbp - 0x960]
	mov	qword ptr [rbp - 0x928], rax
	nop	
	jmp	.label_340
.label_332:
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x928], rax
.label_340:
	mov	rax, qword ptr [rbp - 0x928]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb38], rax
	mov	rax, qword ptr [rbp - 0xb38]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_347
	mov	qword ptr [rbp - 0xad8], 0
	mov	rbp, rbp
	jmp	.label_80
.label_347:
	cmp	qword ptr [rbp - 0xa58], 0
	mov	rbp, rbp
	je	.label_364
	nop	
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_368
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x810]
	nop	
	cmp	rax, qword ptr [rbp - 0x960]
	lea	rsi, [rsi]
	jae	.label_368
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x980], rax
	nop	
	cmp	dword ptr [rbp - 0x8d0], 0x30
	lea	rsi, [rsi]
	je	.label_379
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_389
.label_379:
	mov	rbp, rbp
	jmp	.label_394
.label_394:
	nop	
	mov	qword ptr [rbp - 0x6e0], 0
.label_414:
	mov	rax, qword ptr [rbp - 0x6e0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x980]
	jae	.label_399
	lea	rdi, [rdi]
	mov	edi, 0x30
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa58]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x7ec], eax
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rsp, rsp
	jmp	.label_414
.label_399:
	nop	
	jmp	.label_419
.label_419:
	nop	
	jmp	.label_443
.label_389:
	jmp	.label_423
.label_423:
	mov	qword ptr [rbp - 0x580], 0
.label_437:
	mov	rax, qword ptr [rbp - 0x580]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x980]
	jae	.label_427
	mov	edi, 0x20
	nop	
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x990], eax
	mov	rax, qword ptr [rbp - 0x580]
	add	rax, 1
	mov	qword ptr [rbp - 0x580], rax
	jmp	.label_437
.label_427:
	jmp	.label_441
.label_441:
	mov	rsp, rsp
	jmp	.label_443
.label_443:
	jmp	.label_368
.label_368:
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rsi, qword ptr [rbp - 0x790]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb19]
	mov	r8d, dword ptr [rbp - 0x8d0]
	mov	r9d, dword ptr [rbp - 0x68c]
	mov	rcx, qword ptr [rbp - 0x620]
	mov	r10, qword ptr [rbp - 0xb98]
	mov	r11d, dword ptr [rbp - 0x4ac]
	and	al, 1
	movzx	ebx, al
	mov	qword ptr [rbp - 0xa48], rcx
	mov	ecx, ebx
	mov	r14, qword ptr [rbp - 0xa48]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r14
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	lea	rdi, [rdi]
	call	__strftime_internal
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x658], rax
.label_364:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb38]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_240
.label_74:
	lea	rax, [rbp - 0x70d]
	mov	qword ptr [rbp - 0xa50], rax
	mov	rax, qword ptr [rbp - 0xa50]
	mov	rcx, rax
	nop	
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa50], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0xa50]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xa50], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x25
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0
	je	.label_486
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x63c]
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0xa50]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa50], rsi
	mov	rbp, rbp
	mov	byte ptr [rdx], cl
.label_486:
	mov	eax, 0x400
	mov	esi, eax
	mov	rbp, rbp
	lea	rdx, [rbp - 0x70d]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x480]
	nop	
	mov	eax, dword ptr [rbp - 0x7a4]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0xa50]
	lea	rsi, [rsi]
	mov	r9, r8
	add	r9, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa50], r9
	lea	rdi, [rdi]
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0xa50]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	call	strftime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8b8], rax
	cmp	qword ptr [rbp - 0x8b8], 0
	mov	rsp, rsp
	je	.label_448
	jmp	.label_544
.label_544:
	mov	rax, qword ptr [rbp - 0x8b8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x7d0], rax
	nop	
	cmp	dword ptr [rbp - 0x964], 0
	nop	
	jge	.label_547
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x534], eax
	mov	rsp, rsp
	jmp	.label_557
.label_547:
	nop	
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x534], eax
.label_557:
	nop	
	mov	eax, dword ptr [rbp - 0x534]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0xae8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x7d0]
	cmp	rcx, qword ptr [rbp - 0xae8]
	mov	rsp, rsp
	jae	.label_567
	mov	rax, qword ptr [rbp - 0xae8]
	mov	qword ptr [rbp - 0x598], rax
	jmp	.label_579
.label_567:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7d0]
	mov	qword ptr [rbp - 0x598], rax
.label_579:
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x660], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x660]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	nop	
	cmp	rax, rcx
	jb	.label_342
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_80
.label_342:
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_63
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_68
	nop	
	mov	rax, qword ptr [rbp - 0x7d0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xae8]
	lea	rsi, [rsi]
	jae	.label_68
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x7d0]
	mov	qword ptr [rbp - 0x4e8], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_84
	nop	
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	nop	
	jne	.label_243
.label_84:
	nop	
	jmp	.label_102
.label_102:
	mov	qword ptr [rbp - 0x638], 0
.label_123:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x638]
	cmp	rax, qword ptr [rbp - 0x4e8]
	lea	rdi, [rdi]
	jae	.label_108
	lea	rdi, [rdi]
	mov	edi, 0x30
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x800], eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x638]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x638], rax
	jmp	.label_123
.label_108:
	jmp	.label_431
.label_431:
	lea	rdi, [rdi]
	jmp	.label_134
.label_243:
	nop	
	jmp	.label_138
.label_138:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x888], 0
.label_540:
	nop	
	mov	rax, qword ptr [rbp - 0x888]
	cmp	rax, qword ptr [rbp - 0x4e8]
	jae	.label_146
	mov	rbp, rbp
	mov	edi, 0x20
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	mov	rbp, rbp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa3c], eax
	mov	rax, qword ptr [rbp - 0x888]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_540
.label_146:
	mov	rbp, rbp
	jmp	.label_596
.label_596:
	jmp	.label_134
.label_134:
	jmp	.label_68
.label_68:
	jmp	.label_169
.label_169:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x909], 1
	lea	rdi, [rdi]
	je	.label_170
	lea	rax, [rbp - 0x480]
	mov	rdi, qword ptr [rbp - 0xa58]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x7d0]
	mov	rsi, rax
	mov	rsp, rsp
	call	fwrite_lowcase
	jmp	.label_184
.label_170:
	test	byte ptr [rbp - 0xb19], 1
	je	.label_185
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x480]
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rbp, rbp
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x7d0]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	fwrite_uppcase
	mov	rsp, rsp
	jmp	.label_200
.label_185:
	nop	
	mov	eax, 1
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x480]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x7d0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	qword ptr [rbp - 0x4f8], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4f8]
	mov	rsp, rsp
	call	fwrite
	nop	
	mov	qword ptr [rbp - 0x8e0], rax
.label_200:
	jmp	.label_184
.label_184:
	lea	rdi, [rdi]
	jmp	.label_226
.label_226:
	jmp	.label_63
.label_63:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x660]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_448
.label_448:
	jmp	.label_240
.label_237:
	cmp	dword ptr [rbp - 0x63c], 0x45
	nop	
	jne	.label_242
	nop	
	jmp	.label_74
.label_242:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x708]
	mov	rbp, rbp
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x798], eax
	lea	rdi, [rdi]
	mov	eax, esi
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0x798]
	mov	rbp, rbp
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x504], eax
	mov	rdi, qword ptr [rbp - 0x708]
	mov	eax, dword ptr [rdi + 0x14]
	lea	rdi, [rdi]
	cdq	
	idiv	esi
	mov	rsp, rsp
	cmp	edx, 0
	mov	byte ptr [rbp - 0xb49], cl
	jge	.label_251
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x504]
	mov	rsp, rsp
	setl	cl
	mov	byte ptr [rbp - 0xb49], cl
.label_251:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb49]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x504]
	sub	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x504], edx
	mov	dword ptr [rbp - 0x588], 2
	nop	
	mov	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x14], 0xfffff894
	mov	rbp, rbp
	setl	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0x7d1], cl
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x504]
	nop	
	mov	dword ptr [rbp - 0x4b0], edx
	mov	rbp, rbp
	jmp	.label_284
.label_531:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x4f
	nop	
	jne	.label_308
	lea	rdi, [rdi]
	jmp	.label_72
.label_308:
	jmp	.label_74
.label_249:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0
	je	.label_317
	mov	rsp, rsp
	jmp	.label_72
.label_317:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.1_1
	mov	qword ptr [rbp - 0x790], rax
	jmp	.label_322
.label_410:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_96
	mov	rbp, rbp
	jmp	.label_72
.label_96:
	lea	rdi, [rdi]
	jmp	.label_334
.label_334:
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0xa24], ecx
	lea	rsi, [rsi]
	jmp	.label_112
.label_511:
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_344
	mov	rsp, rsp
	jmp	.label_72
.label_344:
	jmp	.label_348
.label_348:
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0xa24], ecx
	nop	
	jmp	.label_349
.label_510:
	mov	byte ptr [rbp - 0xa15], 1
	mov	rbp, rbp
	jmp	.label_358
.label_284:
	cmp	dword ptr [rbp - 0x8d0], 0
	jne	.label_359
	nop	
	mov	eax, dword ptr [rbp - 0x524]
	mov	dword ptr [rbp - 0x8d0], eax
.label_359:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	byte ptr [rbp - 0x749], cl
	nop	
	jne	.label_366
	nop	
	mov	al, 1
	mov	ecx, 0x270f
	nop	
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x588], 2
	mov	rsp, rsp
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71d], al
	mov	rsp, rsp
	jb	.label_374
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x588]
	nop	
	cmp	eax, dword ptr [rbp - 0x964]
	setl	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71d], cl
.label_374:
	mov	al, byte ptr [rbp - 0x71d]
	mov	byte ptr [rbp - 0x749], al
.label_366:
	nop	
	mov	al, byte ptr [rbp - 0x749]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa15], al
	mov	rbp, rbp
	jmp	.label_400
.label_349:
	nop	
	cmp	dword ptr [rbp - 0x8d0], 0
	mov	rbp, rbp
	jne	.label_405
	mov	dword ptr [rbp - 0x8d0], 0x5f
.label_405:
	mov	rsp, rsp
	jmp	.label_112
.label_112:
	cmp	dword ptr [rbp - 0xa24], 0
	lea	rdi, [rdi]
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x7d1], al
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xa24]
	mov	dword ptr [rbp - 0x4b0], ecx
.label_78:
	mov	byte ptr [rbp - 0xa15], 0
.label_400:
	mov	dword ptr [rbp - 0x6ec], 0
.label_358:
	cmp	dword ptr [rbp - 0x63c], 0x4f
	mov	rsp, rsp
	jne	.label_429
	nop	
	test	byte ptr [rbp - 0x7d1], 1
	nop	
	jne	.label_429
	nop	
	jmp	.label_74
.label_429:
	lea	rax, [rbp - 0x680]
	add	rax, 0x17
	nop	
	mov	qword ptr [rbp - 0x5e0], rax
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7d1], 1
	mov	rbp, rbp
	je	.label_436
	mov	rbp, rbp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4b0], eax
.label_436:
	mov	rbp, rbp
	jmp	.label_450
.label_450:
	mov	eax, dword ptr [rbp - 0x6ec]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_452
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x5e0], rcx
	mov	rbp, rbp
	mov	byte ptr [rax - 1], 0x3a
.label_452:
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x6ec]
	lea	rsi, [rsi]
	sar	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6ec], ecx
	mov	ecx, dword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x904], eax
	mov	eax, ecx
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x904]
	lea	rsi, [rsi]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0x5e0]
	mov	r8, rdi
	add	r8, -1
	nop	
	mov	qword ptr [rbp - 0x5e0], r8
	mov	byte ptr [rdi - 1], sil
	mov	edx, dword ptr [rbp - 0x4b0]
	mov	eax, edx
	xor	edx, edx
	div	ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4b0], eax
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x4b0], 0
	mov	byte ptr [rbp - 0x6fd], al
	jne	.label_469
	cmp	dword ptr [rbp - 0x6ec], 0
	setne	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x6fd], al
.label_469:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x6fd]
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_450
	mov	rbp, rbp
	jmp	.label_512
.label_512:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x588]
	cmp	eax, dword ptr [rbp - 0x964]
	jge	.label_513
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x588], eax
.label_513:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7d1], 1
	je	.label_521
	mov	rbp, rbp
	mov	eax, 0x2d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x954], eax
	nop	
	jmp	.label_527
.label_521:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0xa15]
	test	dl, 1
	lea	rdi, [rdi]
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x954], eax
.label_527:
	mov	eax, dword ptr [rbp - 0x954]
	mov	cl, al
	mov	byte ptr [rbp - 0x801], cl
	cmp	dword ptr [rbp - 0x8d0], 0x2d
	jne	.label_537
	cmp	byte ptr [rbp - 0x801], 0
	lea	rsi, [rsi]
	je	.label_126
	jmp	.label_546
.label_546:
	mov	qword ptr [rbp - 0xa90], 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x964], 0
	nop	
	jge	.label_549
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_555
.label_549:
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x14], eax
.label_555:
	mov	eax, dword ptr [rbp - 0x14]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb70], rcx
	mov	rcx, qword ptr [rbp - 0xa90]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0xb70]
	lea	rdi, [rdi]
	jae	.label_566
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb70]
	mov	qword ptr [rbp - 0xb48], rax
	nop	
	jmp	.label_576
.label_566:
	mov	rax, qword ptr [rbp - 0xa90]
	mov	qword ptr [rbp - 0xb48], rax
.label_576:
	mov	rax, qword ptr [rbp - 0xb48]
	mov	qword ptr [rbp - 0x9f8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x9f8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_584
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_80
.label_584:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_61
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_65
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa90]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xb70]
	nop	
	jae	.label_65
	movsxd	rax, dword ptr [rbp - 0x964]
	nop	
	sub	rax, qword ptr [rbp - 0xa90]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_83
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	nop	
	jne	.label_95
.label_83:
	mov	rbp, rbp
	jmp	.label_271
.label_271:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa70], 0
.label_125:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	jae	.label_110
	mov	rbp, rbp
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	call	fputc
	mov	dword ptr [rbp - 0x5e4], eax
	mov	rax, qword ptr [rbp - 0xa70]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0xa70], rax
	jmp	.label_125
.label_110:
	jmp	.label_130
.label_130:
	lea	rdi, [rdi]
	jmp	.label_132
.label_95:
	mov	rbp, rbp
	jmp	.label_135
.label_135:
	mov	qword ptr [rbp - 0x8d8], 0
.label_154:
	mov	rax, qword ptr [rbp - 0x8d8]
	cmp	rax, qword ptr [rbp - 0x48]
	nop	
	jae	.label_144
	lea	rsi, [rsi]
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	call	fputc
	mov	dword ptr [rbp - 0xb7c], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x8d8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x8d8], rax
	jmp	.label_154
.label_144:
	mov	rsp, rsp
	jmp	.label_163
.label_163:
	jmp	.label_132
.label_132:
	nop	
	jmp	.label_65
.label_65:
	mov	rbp, rbp
	movsx	edi, byte ptr [rbp - 0x801]
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x908], eax
.label_61:
	mov	rax, qword ptr [rbp - 0x9f8]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_126
.label_126:
	lea	rsi, [rsi]
	jmp	.label_168
.label_537:
	nop	
	lea	rax, [rbp - 0x680]
	movsxd	rcx, dword ptr [rbp - 0x588]
	mov	rsp, rsp
	add	rax, 0x17
	mov	rdx, qword ptr [rbp - 0x5e0]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rbp, rbp
	sub	rcx, rax
	cmp	byte ptr [rbp - 0x801], 0
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
	mov	dword ptr [rbp - 0x4b4], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4b4], 0
	jle	.label_182
	cmp	dword ptr [rbp - 0x8d0], 0x5f
	lea	rdi, [rdi]
	jne	.label_212
	movsxd	rax, dword ptr [rbp - 0x4b4]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jb	.label_216
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_80
.label_216:
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_230
	mov	rsp, rsp
	jmp	.label_236
.label_236:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], 0
.label_257:
	mov	rax, qword ptr [rbp - 0x650]
	movsxd	rcx, dword ptr [rbp - 0x4b4]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jae	.label_241
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x4cc], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x650], rax
	nop	
	jmp	.label_257
.label_241:
	jmp	.label_91
.label_91:
	jmp	.label_230
.label_230:
	movsxd	rax, dword ptr [rbp - 0x4b4]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	ecx, dword ptr [rbp - 0x964]
	cmp	ecx, dword ptr [rbp - 0x4b4]
	mov	rbp, rbp
	jle	.label_272
	mov	eax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x4b4]
	nop	
	mov	dword ptr [rbp - 0x628], eax
	lea	rsi, [rsi]
	jmp	.label_281
.label_272:
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x628], eax
	mov	rsp, rsp
	jmp	.label_281
.label_281:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x628]
	mov	dword ptr [rbp - 0x964], eax
	cmp	byte ptr [rbp - 0x801], 0
	nop	
	je	.label_294
	jmp	.label_300
.label_300:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x738], 1
	cmp	dword ptr [rbp - 0x964], 0
	nop	
	jge	.label_301
	xor	eax, eax
	mov	dword ptr [rbp - 0x508], eax
	mov	rbp, rbp
	jmp	.label_307
.label_301:
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x508], eax
.label_307:
	mov	eax, dword ptr [rbp - 0x508]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x578], rcx
	mov	rcx, qword ptr [rbp - 0x738]
	cmp	rcx, qword ptr [rbp - 0x578]
	mov	rsp, rsp
	jae	.label_247
	nop	
	mov	rax, qword ptr [rbp - 0x578]
	nop	
	mov	qword ptr [rbp - 0xa00], rax
	jmp	.label_327
.label_247:
	nop	
	mov	rax, qword ptr [rbp - 0x738]
	mov	qword ptr [rbp - 0xa00], rax
.label_327:
	mov	rax, qword ptr [rbp - 0xa00]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x570], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x570]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_336
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_80
.label_336:
	nop	
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_351
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_356
	mov	rax, qword ptr [rbp - 0x738]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x578]
	jae	.label_356
	movsxd	rax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x738]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa80], rax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_360
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	rbp, rbp
	jne	.label_373
.label_360:
	jmp	.label_378
.label_378:
	mov	qword ptr [rbp - 0x818], 0
.label_391:
	mov	rax, qword ptr [rbp - 0x818]
	cmp	rax, qword ptr [rbp - 0xa80]
	jae	.label_306
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0xb88], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x818]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x818], rax
	lea	rsi, [rsi]
	jmp	.label_391
.label_306:
	jmp	.label_403
.label_403:
	mov	rsp, rsp
	jmp	.label_404
.label_373:
	mov	rsp, rsp
	jmp	.label_466
.label_466:
	nop	
	mov	qword ptr [rbp - 0x728], 0
.label_422:
	mov	rax, qword ptr [rbp - 0x728]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xa80]
	jae	.label_412
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa58]
	nop	
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa64], eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x728]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x728], rax
	lea	rdi, [rdi]
	jmp	.label_422
.label_412:
	jmp	.label_433
.label_433:
	jmp	.label_404
.label_404:
	jmp	.label_356
.label_356:
	mov	rsp, rsp
	movsx	edi, byte ptr [rbp - 0x801]
	mov	rsi, qword ptr [rbp - 0xa58]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x8ac], eax
.label_351:
	nop	
	mov	rax, qword ptr [rbp - 0x570]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rbp, rbp
	jmp	.label_294
.label_294:
	jmp	.label_449
.label_212:
	movsxd	rax, dword ptr [rbp - 0x588]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_451
	mov	qword ptr [rbp - 0xad8], 0
	lea	rdi, [rdi]
	jmp	.label_80
.label_451:
	cmp	byte ptr [rbp - 0x801], 0
	je	.label_76
	mov	rbp, rbp
	jmp	.label_471
.label_471:
	mov	qword ptr [rbp - 0x850], 1
	nop	
	cmp	dword ptr [rbp - 0x964], 0
	lea	rsi, [rsi]
	jge	.label_472
	lea	rdi, [rdi]
	xor	eax, eax
	mov	dword ptr [rbp - 0xadc], eax
	jmp	.label_478
.label_472:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0xadc], eax
.label_478:
	mov	eax, dword ptr [rbp - 0xadc]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x848], rcx
	mov	rcx, qword ptr [rbp - 0x850]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x848]
	jae	.label_483
	mov	rax, qword ptr [rbp - 0x848]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xaa8], rax
	jmp	.label_490
.label_483:
	mov	rax, qword ptr [rbp - 0x850]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xaa8], rax
.label_490:
	mov	rax, qword ptr [rbp - 0xaa8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4a0], rax
	mov	rax, qword ptr [rbp - 0x4a0]
	mov	rcx, qword ptr [rbp - 0x558]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_501
	mov	qword ptr [rbp - 0xad8], 0
	mov	rsp, rsp
	jmp	.label_80
.label_501:
	cmp	qword ptr [rbp - 0xa58], 0
	lea	rdi, [rdi]
	je	.label_519
	nop	
	cmp	dword ptr [rbp - 0x588], 0
	lea	rdi, [rdi]
	jne	.label_59
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x850]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x848]
	jae	.label_59
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x850]
	mov	qword ptr [rbp - 0x6c0], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_190
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_263
.label_190:
	jmp	.label_282
.label_282:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
.label_561:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x6c0]
	mov	rsp, rsp
	jae	.label_545
	lea	rsi, [rsi]
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rsi, [rsi]
	call	fputc
	mov	dword ptr [rbp - 0x644], eax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	jmp	.label_561
.label_545:
	mov	rbp, rbp
	jmp	.label_569
.label_569:
	jmp	.label_571
.label_263:
	lea	rsi, [rsi]
	jmp	.label_572
.label_572:
	mov	qword ptr [rbp - 0x530], 0
.label_587:
	mov	rax, qword ptr [rbp - 0x530]
	cmp	rax, qword ptr [rbp - 0x6c0]
	lea	rdi, [rdi]
	jae	.label_578
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x600], eax
	nop	
	mov	rax, qword ptr [rbp - 0x530]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x530], rax
	lea	rdi, [rdi]
	jmp	.label_587
.label_578:
	lea	rdi, [rdi]
	jmp	.label_598
.label_598:
	jmp	.label_571
.label_571:
	lea	rsi, [rsi]
	jmp	.label_59
.label_59:
	movsx	edi, byte ptr [rbp - 0x801]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x71c], eax
.label_519:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4a0]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_76
.label_76:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xa58], 0
	nop	
	je	.label_128
	jmp	.label_93
.label_93:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x838], 0
.label_116:
	mov	rax, qword ptr [rbp - 0x838]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x4b4]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_97
	lea	rsi, [rsi]
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rsi, [rsi]
	call	fputc
	mov	dword ptr [rbp - 0xa5c], eax
	mov	rax, qword ptr [rbp - 0x838]
	add	rax, 1
	mov	qword ptr [rbp - 0x838], rax
	lea	rsi, [rsi]
	jmp	.label_116
.label_97:
	jmp	.label_386
.label_386:
	mov	rsp, rsp
	jmp	.label_128
.label_128:
	movsxd	rax, dword ptr [rbp - 0x4b4]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4c8], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x964], 0
.label_449:
	jmp	.label_141
.label_182:
	lea	rdi, [rdi]
	cmp	byte ptr [rbp - 0x801], 0
	nop	
	je	.label_145
	jmp	.label_148
.label_148:
	mov	qword ptr [rbp - 0x58], 1
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_150
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	jmp	.label_155
.label_150:
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x34], eax
.label_155:
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb40], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rcx, qword ptr [rbp - 0xb40]
	nop	
	jae	.label_162
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb40]
	mov	qword ptr [rbp - 0x560], rax
	nop	
	jmp	.label_171
.label_162:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x560], rax
.label_171:
	mov	rax, qword ptr [rbp - 0x560]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7e0], rax
	mov	rax, qword ptr [rbp - 0x7e0]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_181
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_80
.label_181:
	cmp	qword ptr [rbp - 0xa58], 0
	mov	rbp, rbp
	je	.label_197
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_202
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0xb40]
	mov	rsp, rsp
	jae	.label_202
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x964]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x998], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_214
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_223
.label_214:
	lea	rsi, [rsi]
	jmp	.label_227
.label_227:
	mov	qword ptr [rbp - 0x590], 0
.label_248:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x590]
	cmp	rax, qword ptr [rbp - 0x998]
	jae	.label_234
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb20], eax
	mov	rax, qword ptr [rbp - 0x590]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x590], rax
	mov	rbp, rbp
	jmp	.label_248
.label_234:
	jmp	.label_261
.label_261:
	lea	rsi, [rsi]
	jmp	.label_262
.label_223:
	jmp	.label_266
.label_266:
	mov	qword ptr [rbp - 0x898], 0
.label_280:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x898]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x998]
	jae	.label_269
	mov	edi, 0x20
	nop	
	mov	rsi, qword ptr [rbp - 0xa58]
	mov	rbp, rbp
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c8], eax
	mov	rax, qword ptr [rbp - 0x898]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x898], rax
	jmp	.label_280
.label_269:
	jmp	.label_290
.label_290:
	mov	rbp, rbp
	jmp	.label_262
.label_262:
	jmp	.label_202
.label_202:
	movsx	edi, byte ptr [rbp - 0x801]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x7e8], eax
.label_197:
	mov	rax, qword ptr [rbp - 0x7e0]
	nop	
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rbp, rbp
	jmp	.label_145
.label_145:
	mov	rbp, rbp
	jmp	.label_141
.label_141:
	mov	rbp, rbp
	jmp	.label_168
.label_168:
	jmp	.label_311
.label_311:
	lea	rax, [rbp - 0x680]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0x5e0]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa20], rax
	cmp	dword ptr [rbp - 0x964], 0
	mov	rbp, rbp
	jge	.label_314
	xor	eax, eax
	mov	dword ptr [rbp - 0x69c], eax
	lea	rsi, [rsi]
	jmp	.label_325
.label_314:
	mov	eax, dword ptr [rbp - 0x964]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x69c], eax
.label_325:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x69c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x698], rcx
	mov	rcx, qword ptr [rbp - 0xa20]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x698]
	jae	.label_333
	mov	rax, qword ptr [rbp - 0x698]
	mov	qword ptr [rbp - 0x5f8], rax
	jmp	.label_341
.label_333:
	mov	rax, qword ptr [rbp - 0xa20]
	mov	qword ptr [rbp - 0x5f8], rax
.label_341:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5f8]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	jb	.label_85
	nop	
	mov	qword ptr [rbp - 0xad8], 0
	mov	rsp, rsp
	jmp	.label_80
.label_85:
	nop	
	cmp	qword ptr [rbp - 0xa58], 0
	nop	
	je	.label_365
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x588], 0
	jne	.label_369
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa20]
	nop	
	cmp	rax, qword ptr [rbp - 0x698]
	lea	rsi, [rsi]
	jae	.label_369
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x964]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0xa20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x900], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_380
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_392
.label_380:
	nop	
	jmp	.label_396
.label_396:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5c8], 0
.label_411:
	mov	rax, qword ptr [rbp - 0x5c8]
	cmp	rax, qword ptr [rbp - 0x900]
	jae	.label_402
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x774], eax
	mov	rax, qword ptr [rbp - 0x5c8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x5c8], rax
	jmp	.label_411
.label_402:
	jmp	.label_417
.label_417:
	jmp	.label_420
.label_392:
	lea	rdi, [rdi]
	jmp	.label_421
.label_421:
	mov	qword ptr [rbp - 0xb18], 0
.label_435:
	mov	rax, qword ptr [rbp - 0xb18]
	cmp	rax, qword ptr [rbp - 0x900]
	lea	rdi, [rdi]
	jae	.label_426
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	nop	
	mov	dword ptr [rbp - 0x4fc], eax
	mov	rax, qword ptr [rbp - 0xb18]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb18], rax
	nop	
	jmp	.label_435
.label_426:
	lea	rdi, [rdi]
	jmp	.label_442
.label_442:
	nop	
	jmp	.label_420
.label_420:
	jmp	.label_369
.label_369:
	lea	rdi, [rdi]
	jmp	.label_447
.label_447:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x909], 1
	je	.label_305
	nop	
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5e0]
	mov	rdx, qword ptr [rbp - 0xa20]
	nop	
	call	fwrite_lowcase
	mov	rbp, rbp
	jmp	.label_461
.label_305:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xb19], 1
	lea	rdi, [rdi]
	je	.label_464
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5e0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa20]
	lea	rsi, [rsi]
	call	fwrite_uppcase
	jmp	.label_480
.label_464:
	nop	
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x5e0]
	mov	rsi, qword ptr [rbp - 0xa20]
	mov	rcx, qword ptr [rbp - 0xa58]
	mov	rsp, rsp
	call	fwrite
	mov	qword ptr [rbp - 0xab8], rax
.label_480:
	mov	rbp, rbp
	jmp	.label_461
.label_461:
	mov	rsp, rsp
	jmp	.label_489
.label_489:
	lea	rdi, [rdi]
	jmp	.label_365
.label_365:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x718]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	mov	rbp, rbp
	jmp	.label_240
.label_260:
	cmp	dword ptr [rbp - 0x63c], 0
	nop	
	je	.label_503
	jmp	.label_72
.label_503:
	cmp	dword ptr [rbp - 0x8d0], 0
	nop	
	jne	.label_509
	cmp	dword ptr [rbp - 0x964], 0
	mov	rbp, rbp
	jge	.label_509
	mov	dword ptr [rbp - 0x8d0], 0x2b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68c], 4
	jmp	.label_516
.label_509:
	mov	eax, dword ptr [rbp - 0x964]
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x68c], 0
	jge	.label_524
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68c], 0
.label_524:
	jmp	.label_516
.label_516:
	movabs	rax, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x790], rax
	lea	rdi, [rdi]
	jmp	.label_533
.label_277:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rsp, rsp
	jne	.label_538
	jmp	.label_72
.label_538:
	jmp	.label_542
.label_542:
	mov	dword ptr [rbp - 0x588], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_112
.label_285:
	nop	
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rsp, rsp
	jne	.label_554
	mov	rbp, rbp
	jmp	.label_72
.label_554:
	mov	rbp, rbp
	jmp	.label_563
.label_563:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x624]
	mov	dword ptr [rbp - 0xa24], eax
	nop	
	jmp	.label_112
.label_446:
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_574
	jmp	.label_72
.label_574:
	jmp	.label_581
.label_581:
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_349
.label_457:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_589
	lea	rdi, [rdi]
	jmp	.label_72
.label_589:
	jmp	.label_597
.label_597:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x624]
	mov	dword ptr [rbp - 0xa24], eax
	lea	rsi, [rsi]
	jmp	.label_349
.label_439:
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_66
	jmp	.label_72
.label_66:
	nop	
	jmp	.label_75
.label_75:
	mov	dword ptr [rbp - 0x588], 3
	mov	rax, qword ptr [rbp - 0x708]
	nop	
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x7d1], cl
	mov	rax, qword ptr [rbp - 0x708]
	nop	
	mov	edx, dword ptr [rax + 0x1c]
	nop	
	add	edx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4b0], edx
	lea	rdi, [rdi]
	jmp	.label_78
.label_293:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_98
	mov	rbp, rbp
	jmp	.label_72
.label_98:
	jmp	.label_109
.label_109:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rax + 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_112
.label_465:
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rsp, rsp
	jne	.label_119
	lea	rdi, [rdi]
	jmp	.label_72
.label_119:
	mov	rbp, rbp
	jmp	.label_395
.label_395:
	nop	
	mov	dword ptr [rbp - 0x588], 2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x708]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	mov	rbp, rbp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7d1], cl
	mov	rax, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rax + 0x10]
	lea	rsi, [rsi]
	add	edx, 1
	mov	dword ptr [rbp - 0x4b0], edx
	jmp	.label_78
.label_297:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	lea	rsi, [rsi]
	jne	.label_152
	jmp	.label_72
.label_152:
	nop	
	mov	eax, dword ptr [rbp - 0x4ac]
	mov	dword ptr [rbp - 0xa24], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x964], -1
	lea	rdi, [rdi]
	jne	.label_159
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x964], 9
	jmp	.label_192
.label_159:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9f0], eax
.label_178:
	nop	
	cmp	dword ptr [rbp - 0x9f0], 9
	jge	.label_174
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4d8], eax
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	ecx, dword ptr [rbp - 0x4d8]
	lea	rsi, [rsi]
	idiv	ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa24], eax
	mov	eax, dword ptr [rbp - 0x9f0]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x9f0], eax
	jmp	.label_178
.label_174:
	jmp	.label_192
.label_192:
	jmp	.label_194
.label_194:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x588], eax
	nop	
	mov	eax, dword ptr [rbp - 0xa24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa24], eax
	jmp	.label_112
.label_474:
	jmp	.label_208
.label_208:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x868], 1
	cmp	dword ptr [rbp - 0x964], 0
	lea	rsi, [rsi]
	jge	.label_210
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x794], eax
	nop	
	jmp	.label_220
.label_210:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x794], eax
.label_220:
	mov	eax, dword ptr [rbp - 0x794]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb78], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x868]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0xb78]
	lea	rsi, [rsi]
	jae	.label_229
	mov	rax, qword ptr [rbp - 0xb78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_245
.label_229:
	mov	rax, qword ptr [rbp - 0x868]
	mov	qword ptr [rbp - 0x40], rax
.label_245:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x760], rax
	mov	rax, qword ptr [rbp - 0x760]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jb	.label_254
	mov	qword ptr [rbp - 0xad8], 0
	mov	rbp, rbp
	jmp	.label_80
.label_254:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa58], 0
	lea	rsi, [rsi]
	je	.label_139
	cmp	dword ptr [rbp - 0x588], 0
	mov	rsp, rsp
	jne	.label_193
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x868]
	cmp	rax, qword ptr [rbp - 0xb78]
	mov	rsp, rsp
	jae	.label_193
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x868]
	nop	
	mov	qword ptr [rbp - 0xa08], rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x8d0], 0x30
	lea	rdi, [rdi]
	je	.label_292
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	rbp, rbp
	jne	.label_299
.label_292:
	jmp	.label_304
.label_304:
	mov	qword ptr [rbp - 0x78], 0
.label_318:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xa08]
	lea	rdi, [rdi]
	jae	.label_355
	mov	rbp, rbp
	mov	edi, 0x30
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5e8], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_318
.label_355:
	jmp	.label_326
.label_326:
	lea	rdi, [rdi]
	jmp	.label_107
.label_299:
	lea	rdi, [rdi]
	jmp	.label_481
.label_481:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x920], 0
.label_460:
	mov	rax, qword ptr [rbp - 0x920]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xa08]
	jae	.label_514
	nop	
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rdi, [rdi]
	call	fputc
	mov	dword ptr [rbp - 0x30], eax
	mov	rax, qword ptr [rbp - 0x920]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x920], rax
	jmp	.label_460
.label_514:
	mov	rbp, rbp
	jmp	.label_90
.label_90:
	lea	rsi, [rsi]
	jmp	.label_107
.label_107:
	jmp	.label_193
.label_193:
	mov	rbp, rbp
	mov	edi, 0xa
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x6cc], eax
.label_139:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x760]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_240
.label_303:
	mov	byte ptr [rbp - 0x909], 1
	mov	dword ptr [rbp - 0x7a4], 0x70
.label_588:
	test	byte ptr [rbp - 0x549], 1
	je	.label_372
	mov	byte ptr [rbp - 0xb19], 0
	nop	
	mov	byte ptr [rbp - 0x909], 1
.label_372:
	mov	rbp, rbp
	jmp	.label_74
.label_488:
	mov	rsp, rsp
	jmp	.label_382
.label_382:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 1
	mov	byte ptr [rbp - 0x7d1], 0
	mov	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	imul	ecx, dword ptr [rax + 0x10], 0xb
	mov	rsp, rsp
	sar	ecx, 5
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x4b0], ecx
	jmp	.label_78
.label_315:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.3_0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x790], rax
	jmp	.label_322
.label_492:
	jmp	.label_74
.label_321:
	cmp	dword ptr [rbp - 0x63c], 0x45
	lea	rsi, [rsi]
	jne	.label_409
	mov	rsp, rsp
	jmp	.label_72
.label_409:
	lea	rsi, [rsi]
	jmp	.label_415
.label_415:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	mov	rax, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_112
.label_499:
	nop	
	lea	rax, [rbp - 0x9d8]
	mov	rsp, rsp
	mov	ecx, 0x38
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0xb98]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	mktime_z
	lea	rdx, [rbp - 0x680]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6f8], rax
	add	rdx, 0x17
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5e0], rdx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x6f8], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x7d1], r8b
.label_367:
	lea	rdi, [rdi]
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x6f8]
	nop	
	cqo	
	idiv	rcx
	mov	esi, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x870], esi
	mov	rdx, qword ptr [rbp - 0x6f8]
	mov	rsp, rsp
	mov	rax, rdx
	nop	
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x6f8], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7d1], 1
	mov	rsp, rsp
	je	.label_454
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x870]
	mov	dword ptr [rbp - 0x978], eax
	mov	rsp, rsp
	jmp	.label_477
.label_454:
	nop	
	mov	eax, dword ptr [rbp - 0x870]
	mov	dword ptr [rbp - 0x978], eax
.label_477:
	mov	eax, dword ptr [rbp - 0x978]
	add	eax, 0x30
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5e0]
	nop	
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, -1
	mov	qword ptr [rbp - 0x5e0], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rdx - 1], cl
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x6f8], 0
	jne	.label_367
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x588], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa15], 0
	mov	rsp, rsp
	jmp	.label_512
.label_577:
	cmp	dword ptr [rbp - 0x63c], 0x4f
	lea	rdi, [rdi]
	jne	.label_553
	mov	rsp, rsp
	jmp	.label_72
.label_553:
	jmp	.label_74
.label_330:
	movabs	rax, OFFSET FLAT:.str.4_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x790], rax
	jmp	.label_322
.label_556:
	jmp	.label_114
.label_114:
	mov	qword ptr [rbp - 0xb90], 1
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_122
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x4d0], eax
	mov	rbp, rbp
	jmp	.label_491
.label_122:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x4d0], eax
.label_491:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4d0]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8c8], rcx
	mov	rcx, qword ptr [rbp - 0xb90]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x8c8]
	jae	.label_534
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x8c8]
	mov	qword ptr [rbp - 0xac0], rax
	mov	rbp, rbp
	jmp	.label_543
.label_534:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xac0], rax
.label_543:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xac0]
	mov	qword ptr [rbp - 0x858], rax
	mov	rax, qword ptr [rbp - 0x858]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	nop	
	cmp	rax, rcx
	jb	.label_558
	mov	qword ptr [rbp - 0xad8], 0
	nop	
	jmp	.label_80
.label_558:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xa58], 0
	mov	rsp, rsp
	je	.label_575
	cmp	dword ptr [rbp - 0x588], 0
	mov	rsp, rsp
	jne	.label_487
	mov	rax, qword ptr [rbp - 0xb90]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x8c8]
	lea	rdi, [rdi]
	jae	.label_487
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x964]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0xb90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x890], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_591
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	jne	.label_79
.label_591:
	jmp	.label_64
.label_64:
	mov	qword ptr [rbp - 0x510], 0
.label_89:
	mov	rax, qword ptr [rbp - 0x510]
	nop	
	cmp	rax, qword ptr [rbp - 0x890]
	lea	rdi, [rdi]
	jae	.label_73
	mov	edi, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa30], eax
	mov	rax, qword ptr [rbp - 0x510]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x510], rax
	jmp	.label_89
.label_73:
	mov	rbp, rbp
	jmp	.label_100
.label_100:
	jmp	.label_133
.label_79:
	lea	rsi, [rsi]
	jmp	.label_289
.label_289:
	mov	qword ptr [rbp - 0x8a8], 0
.label_124:
	mov	rax, qword ptr [rbp - 0x8a8]
	cmp	rax, qword ptr [rbp - 0x890]
	nop	
	jae	.label_476
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x4ec], eax
	nop	
	mov	rax, qword ptr [rbp - 0x8a8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x8a8], rax
	mov	rsp, rsp
	jmp	.label_124
.label_476:
	jmp	.label_131
.label_131:
	jmp	.label_133
.label_133:
	mov	rbp, rbp
	jmp	.label_487
.label_487:
	mov	edi, 9
	mov	rsi, qword ptr [rbp - 0xa58]
	lea	rdi, [rdi]
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac8], eax
.label_575:
	mov	rax, qword ptr [rbp - 0x858]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x4c8]
	nop	
	mov	qword ptr [rbp - 0x4c8], rax
	lea	rdi, [rdi]
	jmp	.label_240
.label_517:
	jmp	.label_158
.label_158:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x588], 1
	mov	rcx, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rcx + 0x18]
	nop	
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0xacc], eax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xacc]
	idiv	esi
	mov	rsp, rsp
	add	edx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa24], edx
	lea	rdi, [rdi]
	jmp	.label_112
.label_337:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_180
	mov	rsp, rsp
	jmp	.label_72
.label_180:
	jmp	.label_183
.label_183:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], 2
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	add	edx, 7
	mov	dword ptr [rbp - 0xac4], eax
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xac4]
	lea	rdi, [rdi]
	idiv	esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa24], eax
	jmp	.label_112
.label_270:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x45
	lea	rdi, [rdi]
	jne	.label_213
	mov	rsp, rsp
	jmp	.label_72
.label_213:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x708]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x538], esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x708]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x708]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5bc], eax
	cmp	dword ptr [rbp - 0x5bc], 0
	nop	
	jge	.label_250
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, 4
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x538]
	nop	
	sub	edi, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6a8], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x6a8]
	lea	rsi, [rsi]
	idiv	edi
	cmp	edx, 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa2c], esi
	mov	byte ptr [rbp - 0x7b5], cl
	jne	.label_255
	nop	
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x538]
	mov	rsp, rsp
	sub	edx, 1
	mov	byte ptr [rbp - 0xb61], al
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	nop	
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0xb61]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x859], sil
	lea	rsi, [rsi]
	jne	.label_283
	nop	
	mov	eax, 0x190
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x538]
	lea	rsi, [rsi]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x500], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x500]
	mov	rsp, rsp
	idiv	ecx
	mov	rbp, rbp
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x859], sil
.label_283:
	mov	al, byte ptr [rbp - 0x859]
	mov	byte ptr [rbp - 0x7b5], al
.label_255:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x7b5]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	nop	
	mov	edx, dword ptr [rbp - 0xa2c]
	add	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x708]
	mov	esi, dword ptr [rsi + 0x18]
	mov	rsp, rsp
	mov	edi, edx
	call	iso_week_days
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5bc], eax
	mov	rsp, rsp
	jmp	.label_331
.label_250:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x708]
	nop	
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x538]
	mov	dword ptr [rbp - 0x5fc], eax
	mov	eax, edi
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	edi, dword ptr [rbp - 0x5fc]
	lea	rdi, [rdi]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x514], esi
	mov	byte ptr [rbp - 0x489], cl
	mov	rbp, rbp
	jne	.label_504
	nop	
	mov	al, 1
	mov	ecx, 0x64
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x538]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x35], al
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x35]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x74a], sil
	jne	.label_352
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x538]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5f0], eax
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	ecx, dword ptr [rbp - 0x5f0]
	mov	rbp, rbp
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x74a], sil
.label_352:
	mov	al, byte ptr [rbp - 0x74a]
	mov	byte ptr [rbp - 0x489], al
.label_504:
	mov	al, byte ptr [rbp - 0x489]
	and	al, 1
	movzx	ecx, al
	nop	
	add	ecx, 0x16d
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x514]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x708]
	mov	rbp, rbp
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	mov	rbp, rbp
	call	iso_week_days
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb10], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0xb10]
	nop	
	jg	.label_397
	nop	
	mov	dword ptr [rbp - 0x18], 1
	nop	
	mov	eax, dword ptr [rbp - 0xb10]
	mov	dword ptr [rbp - 0x5bc], eax
.label_397:
	mov	rsp, rsp
	jmp	.label_331
.label_331:
	mov	rax, qword ptr [rbp - 0x7c0]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x950], ecx
	mov	dword ptr [rbp - 0x6c], edx
	je	.label_413
	mov	rsp, rsp
	jmp	.label_418
.label_418:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x950]
	mov	rbp, rbp
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x6d4], eax
	jne	.label_529
	mov	rsp, rsp
	jmp	.label_430
.label_430:
	mov	eax, 0x64
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x758], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x758]
	nop	
	idiv	esi
	add	edx, dword ptr [rbp - 0x18]
	mov	eax, edx
	cdq	
	nop	
	idiv	esi
	nop	
	mov	dword ptr [rbp - 0x914], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x588], 2
	mov	byte ptr [rbp - 0x7d1], 0
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x914]
	lea	rdi, [rdi]
	jg	.label_432
	mov	eax, dword ptr [rbp - 0x914]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_453
.label_432:
	mov	rbp, rbp
	mov	eax, 0xfffff894
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x18]
	cmp	edx, eax
	jge	.label_458
	xor	eax, eax
	nop	
	sub	eax, dword ptr [rbp - 0x914]
	mov	dword ptr [rbp - 0xaac], eax
	jmp	.label_467
.label_458:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x914]
	nop	
	add	eax, 0x64
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xaac], eax
.label_467:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xaac]
	mov	dword ptr [rbp - 0x5c], eax
.label_453:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_284
.label_413:
	jmp	.label_482
.label_482:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x588], 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	edx, eax
	setl	sil
	mov	rbp, rbp
	and	sil, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7d1], sil
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x708]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_284
.label_529:
	jmp	.label_505
.label_505:
	mov	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x588], 2
	mov	ecx, dword ptr [rbp - 0x5bc]
	mov	dword ptr [rbp - 0xb2c], eax
	nop	
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xb2c]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0xa24], eax
	jmp	.label_112
.label_99:
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rsp, rsp
	jne	.label_523
	jmp	.label_72
.label_523:
	jmp	.label_156
.label_156:
	lea	rdi, [rdi]
	mov	eax, 7
	mov	dword ptr [rbp - 0x588], 2
	mov	rcx, qword ptr [rbp - 0x708]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x708]
	nop	
	mov	esi, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	sub	esi, 1
	add	esi, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6b4], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	dword ptr [rbp - 0x98c], edx
	lea	rdi, [rdi]
	cdq	
	mov	esi, dword ptr [rbp - 0x6b4]
	idiv	esi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x98c]
	mov	rsp, rsp
	sub	edi, edx
	mov	rbp, rbp
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0xa24], eax
	jmp	.label_112
.label_142:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_594
	lea	rsi, [rsi]
	jmp	.label_72
.label_594:
	jmp	.label_565
.label_565:
	mov	dword ptr [rbp - 0x588], 1
	mov	rax, qword ptr [rbp - 0x708]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0xa24], ecx
	jmp	.label_112
.label_203:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x45
	jne	.label_573
	lea	rsi, [rsi]
	jmp	.label_74
.label_573:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x63c], 0x4f
	lea	rsi, [rsi]
	jne	.label_582
	mov	rbp, rbp
	jmp	.label_72
.label_582:
	jmp	.label_585
.label_585:
	mov	dword ptr [rbp - 0x588], 4
	mov	rax, qword ptr [rbp - 0x708]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	mov	rbp, rbp
	setl	cl
	nop	
	and	cl, 1
	mov	byte ptr [rbp - 0x7d1], cl
	mov	rax, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rax + 0x14]
	mov	rsp, rsp
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x4b0], edx
	jmp	.label_284
.label_286:
	cmp	dword ptr [rbp - 0x63c], 0x45
	mov	rbp, rbp
	jne	.label_67
	jmp	.label_74
.label_67:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x708]
	mov	edx, dword ptr [rcx + 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7e4], eax
	nop	
	mov	eax, edx
	lea	rdi, [rdi]
	cdq	
	mov	esi, dword ptr [rbp - 0x7e4]
	lea	rsi, [rsi]
	idiv	esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], edx
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_77
	mov	rax, qword ptr [rbp - 0x708]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_136
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6b8], eax
	mov	rsp, rsp
	jmp	.label_104
.label_136:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x6b8], eax
.label_104:
	mov	eax, dword ptr [rbp - 0x6b8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
.label_77:
	jmp	.label_117
.label_117:
	mov	dword ptr [rbp - 0x588], 2
	mov	byte ptr [rbp - 0x7d1], 0
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4b0], eax
	mov	rsp, rsp
	jmp	.label_284
.label_375:
	test	byte ptr [rbp - 0x549], 1
	lea	rsi, [rsi]
	je	.label_129
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb19], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x909], 1
.label_129:
	mov	rsp, rsp
	jmp	.label_468
.label_468:
	mov	rdi, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4a8], rax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_149
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa38], eax
	mov	rsp, rsp
	jmp	.label_157
.label_149:
	mov	eax, dword ptr [rbp - 0x964]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa38], eax
.label_157:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa38]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9e8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x4a8]
	cmp	rcx, qword ptr [rbp - 0x9e8]
	jae	.label_165
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x9e8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb58], rax
	lea	rdi, [rdi]
	jmp	.label_176
.label_165:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4a8]
	mov	qword ptr [rbp - 0xb58], rax
.label_176:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7a0], rax
	mov	rax, qword ptr [rbp - 0x7a0]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	cmp	rax, rcx
	nop	
	jb	.label_187
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_80
.label_187:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_320
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x588], 0
	mov	rsp, rsp
	jne	.label_211
	mov	rax, qword ptr [rbp - 0x4a8]
	nop	
	cmp	rax, qword ptr [rbp - 0x9e8]
	jae	.label_211
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x4a8]
	mov	qword ptr [rbp - 0xa78], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	je	.label_222
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	rbp, rbp
	jne	.label_232
.label_222:
	mov	rbp, rbp
	jmp	.label_238
.label_238:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x520], 0
.label_259:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x520]
	nop	
	cmp	rax, qword ptr [rbp - 0xa78]
	jae	.label_244
	mov	edi, 0x30
	nop	
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4d4], eax
	mov	rax, qword ptr [rbp - 0x520]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x520], rax
	lea	rdi, [rdi]
	jmp	.label_259
.label_244:
	nop	
	jmp	.label_103
.label_103:
	lea	rdi, [rdi]
	jmp	.label_273
.label_232:
	jmp	.label_274
.label_274:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x608], 0
.label_288:
	mov	rax, qword ptr [rbp - 0x608]
	nop	
	cmp	rax, qword ptr [rbp - 0xa78]
	jae	.label_278
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x4dc], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x608]
	add	rax, 1
	mov	qword ptr [rbp - 0x608], rax
	mov	rbp, rbp
	jmp	.label_288
.label_278:
	jmp	.label_295
.label_295:
	jmp	.label_273
.label_273:
	jmp	.label_211
.label_211:
	jmp	.label_298
.label_298:
	test	byte ptr [rbp - 0x909], 1
	je	.label_518
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rsi, qword ptr [rbp - 0x4c0]
	mov	rdx, qword ptr [rbp - 0x4a8]
	call	fwrite_lowcase
	mov	rbp, rbp
	jmp	.label_309
.label_518:
	mov	rsp, rsp
	test	byte ptr [rbp - 0xb19], 1
	lea	rdi, [rdi]
	je	.label_384
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rsi, qword ptr [rbp - 0x4c0]
	mov	rdx, qword ptr [rbp - 0x4a8]
	call	fwrite_uppcase
	nop	
	jmp	.label_324
.label_384:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x4c0]
	mov	rsi, qword ptr [rbp - 0x4a8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa58]
	call	fwrite
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8c0], rax
.label_324:
	mov	rsp, rsp
	jmp	.label_309
.label_309:
	jmp	.label_339
.label_339:
	jmp	.label_320
.label_320:
	mov	rax, qword ptr [rbp - 0x7a0]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x4c8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4c8], rax
	lea	rdi, [rdi]
	jmp	.label_240
.label_207:
	mov	qword ptr [rbp - 0x7b0], 1
.label_267:
	mov	rax, qword ptr [rbp - 0x7b0]
	nop	
	mov	rcx, qword ptr [rbp - 0x7c0]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x3a
	jne	.label_353
	nop	
	jmp	.label_166
.label_166:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x7b0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7b0], rax
	jmp	.label_267
.label_353:
	mov	rax, qword ptr [rbp - 0x7b0]
	mov	rcx, qword ptr [rbp - 0x7c0]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x7a
	je	.label_217
	jmp	.label_72
.label_217:
	mov	rax, qword ptr [rbp - 0x7b0]
	add	rax, qword ptr [rbp - 0x7c0]
	nop	
	mov	qword ptr [rbp - 0x7c0], rax
	lea	rsi, [rsi]
	jmp	.label_377
.label_541:
	mov	qword ptr [rbp - 0x7b0], 0
.label_377:
	nop	
	mov	rax, qword ptr [rbp - 0x708]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_385
	jmp	.label_240
.label_385:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x708]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x82c], edx
	cmp	dword ptr [rbp - 0x82c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f1], al
	jl	.label_376
	xor	eax, eax
	mov	cl, al
	nop	
	cmp	dword ptr [rbp - 0x82c], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x9e9], cl
	jne	.label_407
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	dl
	mov	byte ptr [rbp - 0x9e9], dl
.label_407:
	nop	
	mov	al, byte ptr [rbp - 0x9e9]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f1], al
.label_376:
	mov	al, byte ptr [rbp - 0x7f1]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x7d1], al
	movsxd	rcx, dword ptr [rbp - 0x82c]
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
	mov	dword ptr [rbp - 0xa84], edx
	movsxd	rcx, dword ptr [rbp - 0x82c]
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
	mov	dword ptr [rbp - 0x750], esi
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x82c]
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
	mov	dword ptr [rbp - 0x60c], edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x7b0]
	mov	r8, rcx
	sub	r8, 3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6b0], rcx
	nop	
	mov	qword ptr [rbp - 0x5b8], r8
	ja	.label_497
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x6b0]
	nop	
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_500]]
	jmp	rcx
.label_1117:
	mov	rbp, rbp
	jmp	.label_506
.label_506:
	mov	dword ptr [rbp - 0x588], 5
	mov	dword ptr [rbp - 0x6ec], 0
	nop	
	imul	eax, dword ptr [rbp - 0xa84], 0x64
	add	eax, dword ptr [rbp - 0x750]
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_510
.label_1118:
	mov	rbp, rbp
	jmp	.label_520
.label_520:
	jmp	.label_522
.label_522:
	mov	dword ptr [rbp - 0x588], 6
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6ec], 4
	imul	eax, dword ptr [rbp - 0xa84], 0x64
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x750]
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_510
.label_1119:
	mov	rsp, rsp
	jmp	.label_532
.label_532:
	jmp	.label_535
.label_535:
	mov	dword ptr [rbp - 0x588], 9
	mov	dword ptr [rbp - 0x6ec], 0x14
	imul	eax, dword ptr [rbp - 0xa84], 0x2710
	imul	ecx, dword ptr [rbp - 0x750], 0x64
	mov	rbp, rbp
	add	eax, ecx
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x60c]
	mov	dword ptr [rbp - 0x4b0], eax
	lea	rdi, [rdi]
	jmp	.label_510
.label_1120:
	cmp	dword ptr [rbp - 0x60c], 0
	mov	rbp, rbp
	je	.label_551
	nop	
	jmp	.label_532
.label_551:
	cmp	dword ptr [rbp - 0x750], 0
	je	.label_559
	jmp	.label_520
.label_559:
	nop	
	jmp	.label_564
.label_564:
	mov	dword ptr [rbp - 0x588], 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6ec], 0
	mov	eax, dword ptr [rbp - 0xa84]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4b0], eax
	jmp	.label_510
.label_497:
	lea	rsi, [rsi]
	jmp	.label_72
.label_189:
	mov	rax, qword ptr [rbp - 0x7c0]
	add	rax, -1
	mov	qword ptr [rbp - 0x7c0], rax
.label_550:
	jmp	.label_72
.label_72:
	mov	dword ptr [rbp - 0x754], 1
.label_601:
	mov	eax, 1
	nop	
	sub	eax, dword ptr [rbp - 0x754]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x7c0]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	mov	rsp, rsp
	je	.label_586
	jmp	.label_599
.label_599:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x754]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x754], eax
	jmp	.label_601
.label_586:
	jmp	.label_69
.label_69:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x754]
	mov	qword ptr [rbp - 0x5a8], rax
	nop	
	cmp	dword ptr [rbp - 0x964], 0
	jge	.label_71
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4b8], eax
	jmp	.label_82
.label_71:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x964]
	mov	dword ptr [rbp - 0x4b8], eax
.label_82:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x770], rcx
	mov	rcx, qword ptr [rbp - 0x5a8]
	cmp	rcx, qword ptr [rbp - 0x770]
	jae	.label_94
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x770]
	mov	qword ptr [rbp - 0xb60], rax
	jmp	.label_113
.label_94:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5a8]
	mov	qword ptr [rbp - 0xb60], rax
.label_113:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb60]
	mov	qword ptr [rbp - 0xaf8], rax
	nop	
	mov	rax, qword ptr [rbp - 0xaf8]
	mov	rcx, qword ptr [rbp - 0x558]
	sub	rcx, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jb	.label_121
	mov	qword ptr [rbp - 0xad8], 0
	jmp	.label_80
.label_121:
	nop	
	cmp	qword ptr [rbp - 0xa58], 0
	je	.label_143
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x588], 0
	mov	rbp, rbp
	jne	.label_147
	mov	rax, qword ptr [rbp - 0x5a8]
	cmp	rax, qword ptr [rbp - 0x770]
	lea	rsi, [rsi]
	jae	.label_147
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x964]
	sub	rax, qword ptr [rbp - 0x5a8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	dword ptr [rbp - 0x8d0], 0x30
	mov	rsp, rsp
	je	.label_160
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x8d0], 0x2b
	mov	rbp, rbp
	jne	.label_167
.label_160:
	mov	rsp, rsp
	jmp	.label_172
.label_172:
	mov	qword ptr [rbp - 0x488], 0
.label_186:
	mov	rax, qword ptr [rbp - 0x488]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_177
	lea	rsi, [rsi]
	mov	edi, 0x30
	nop	
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0x614], eax
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x488], rax
	jmp	.label_186
.label_177:
	lea	rsi, [rsi]
	jmp	.label_191
.label_191:
	lea	rsi, [rsi]
	jmp	.label_195
.label_167:
	mov	rsp, rsp
	jmp	.label_198
.label_198:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb08], 0
.label_219:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb08]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_205
	mov	edi, 0x20
	mov	rsi, qword ptr [rbp - 0xa58]
	call	fputc
	mov	dword ptr [rbp - 0xb84], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb08]
	add	rax, 1
	mov	qword ptr [rbp - 0xb08], rax
	jmp	.label_219
.label_205:
	jmp	.label_225
.label_225:
	jmp	.label_195
.label_195:
	jmp	.label_147
.label_147:
	nop	
	jmp	.label_231
.label_231:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x909], 1
	je	.label_233
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0xa58]
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x754]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x7c0]
	nop	
	mov	rdx, qword ptr [rbp - 0x5a8]
	mov	rsi, rcx
	mov	rbp, rbp
	call	fwrite_lowcase
	mov	rsp, rsp
	jmp	.label_253
.label_233:
	test	byte ptr [rbp - 0xb19], 1
	nop	
	je	.label_258
	mov	eax, 1
	nop	
	mov	rdi, qword ptr [rbp - 0xa58]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x754]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x7c0]
	nop	
	mov	rdx, qword ptr [rbp - 0x5a8]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	fwrite_uppcase
	lea	rsi, [rsi]
	jmp	.label_276
.label_258:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x754]
	mov	rbp, rbp
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x7c0]
	nop	
	mov	rsi, qword ptr [rbp - 0x5a8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x8f8], rdi
	mov	rdi, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x8f8]
	call	fwrite
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x970], rax
.label_276:
	jmp	.label_253
.label_253:
	jmp	.label_302
.label_302:
	jmp	.label_143
.label_143:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xaf8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x4c8]
	mov	qword ptr [rbp - 0x4c8], rax
	jmp	.label_240
.label_240:
	jmp	.label_204
.label_204:
	mov	dword ptr [rbp - 0x964], 0xffffffff
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x7c0]
	add	rax, 1
	mov	qword ptr [rbp - 0x7c0], rax
	jmp	.label_316
.label_361:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4c8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xad8], rax
.label_80:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xad8]
	lea	rdi, [rdi]
	add	rsp, 0xba0
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073d0

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
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
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	tolower
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	fputc
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, 1
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	dword ptr [rbp - 4], eax
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
	#Procedure 0x407450

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
.label_604:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	jbe	.label_605
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movzx	edi, byte ptr [rax]
	call	toupper
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edi, eax
	nop	
	call	fputc
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_604
.label_605:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074d0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	mov	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], esi
	mov	dword ptr [rbp - 4], 0x17a
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	sub	edi, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	edi, 4
	nop	
	add	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	eax, edi
	cdq	
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 8]
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
	#Procedure 0x407530
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1f0
	test	al, al
	movaps	xmmword ptr [rbp - 0x180], xmm7
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmmword ptr [rbp - 0x1a0], xmm5
	movaps	xmmword ptr [rbp - 0x90], xmm4
	movaps	xmmword ptr [rbp - 0x40], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x1e0], xmm1
	movaps	xmmword ptr [rbp - 0x50], xmm0
	mov	dword ptr [rbp - 0x94], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], r9
	mov	qword ptr [rbp - 0x1e8], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x168], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rdx
	mov	qword ptr [rbp - 0x70], rsi
	je	.label_610
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x130], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1e0]
	movaps	xmmword ptr [rbp - 0x120], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0x110], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x40]
	nop	
	movaps	xmmword ptr [rbp - 0x100], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x90]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xf0], xmm4
	mov	rsp, rsp
	movaps	xmm5, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xe0], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x60]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xd0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xc0], xmm7
.label_610:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1e8]
	mov	rdx, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	r8d, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], r8d
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x1c8], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x1cc], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_606
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_4
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 8]
	call	getopt_long
	mov	dword ptr [rbp - 0x16c], eax
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_606
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x16c]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 0x68
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x98], ecx
	je	.label_609
	jmp	.label_611
.label_611:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x64], eax
	mov	rbp, rbp
	je	.label_608
	mov	rbp, rbp
	jmp	.label_612
.label_609:
	xor	edi, edi
	call	qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	jmp	.label_607
.label_608:
	lea	rax, [rbp - 0x1c0]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdx, [rbp - 0x160]
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
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	r8, rax
	call	version_etc_va
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_612:
	mov	rsp, rsp
	jmp	.label_607
.label_607:
	jmp	.label_606
.label_606:
	mov	eax, dword ptr [rbp - 0x1cc]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1f0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077d0

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
	sub	rsp, 0x210
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x60], xmm7
	movaps	xmmword ptr [rbp - 0x140], xmm6
	movaps	xmmword ptr [rbp - 0x1a0], xmm5
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x40], xmm4
	movaps	xmmword ptr [rbp - 0x200], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	movaps	xmmword ptr [rbp - 0x1c0], xmm1
	movaps	xmmword ptr [rbp - 0x220], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x124], edi
	mov	dword ptr [rbp - 0x1cc], r9d
	mov	qword ptr [rbp - 0x228], r8
	mov	qword ptr [rbp - 0x190], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_617
	movaps	xmm0, xmmword ptr [rbp - 0x220]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xf0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1c0]
	movaps	xmmword ptr [rbp - 0xe0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xd0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x200]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xc0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x40]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm4
	nop	
	movaps	xmm5, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xa0], xmm5
	lea	rdi, [rdi]
	movaps	xmm6, xmmword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x90], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0x80], xmm7
.label_617:
	mov	eax, dword ptr [rbp - 0x1cc]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x228]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x190]
	mov	r8, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x124]
	lea	rsi, [rsi]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	mov	rsp, rsp
	movabs	r15, OFFSET FLAT:.str_4
	mov	rbp, rbp
	movabs	r12, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], r10d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e8], r9
	mov	qword ptr [rbp - 0x48], r8
	mov	qword ptr [rbp - 0x1e0], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x185], cl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x150], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x1a8], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x185]
	test	cl, 1
	lea	rsi, [rsi]
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x1c8], r15
	mov	edi, dword ptr [rbp - 0x1ec]
	nop	
	mov	rsi, qword ptr [rbp - 0x1e8]
	nop	
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	rcx, r11
	lea	rsi, [rsi]
	mov	r8, r14
	nop	
	call	getopt_long
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x184], eax
	cmp	eax, -1
	je	.label_615
	mov	eax, dword ptr [rbp - 0x184]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0x68
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x204], eax
	mov	dword ptr [rbp - 0x1a4], ecx
	je	.label_618
	jmp	.label_619
.label_619:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x204]
	nop	
	sub	eax, 0x76
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x144], eax
	je	.label_614
	nop	
	jmp	.label_613
.label_618:
	xor	edi, edi
	call	qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	jmp	.label_616
.label_614:
	nop	
	lea	rax, [rbp - 0x180]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x120]
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
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r8, rax
	nop	
	call	version_etc_va
	nop	
	xor	edi, edi
	call	exit
.label_613:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_616:
	lea	rdi, [rdi]
	jmp	.label_615
.label_615:
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	lea	rdi, [rdi]
	add	rsp, 0x210
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ae0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_620
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_620:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_623
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_622
.label_623:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_622:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_621
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_621
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	strncmp
	cmp	eax, 0
	jne	.label_624
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_624:
	jmp	.label_621
.label_621:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c60
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_626
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_625
.label_626:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_625
.label_625:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d10
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_627
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_628
.label_627:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_628
.label_628:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d70
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	je	.label_629
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_630
.label_629:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_630
.label_630:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407dd0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_631
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_632
.label_631:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_632
.label_632:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x30], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x30]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 8]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 4]
	nop	
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ed0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_633
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_633:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f30

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_634
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_634:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
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
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fd0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], r8
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_637
	mov	rax, qword ptr [rbp - 0x50]
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
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	r8d, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080d0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x168
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0xa0], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x150], rdx
	mov	qword ptr [rbp - 0x68], rcx
	mov	dword ptr [rbp - 0x58], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], r9d
	mov	qword ptr [rbp - 0x100], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x140], 0
	mov	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], 0
	mov	byte ptr [rbp - 0x89], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb5], bl
	mov	r8d, dword ptr [rbp - 0xa4]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3e], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x42], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa5], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb7], 1
.label_729:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_656
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_807]]
	jmp	rcx
.label_1090:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1089:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_750
	jmp	.label_755
.label_755:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_757
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_757:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_750
.label_750:
	movabs	rax, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_657
.label_1091:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_657
.label_1092:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_782
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x120], rax
	mov	esi, dword ptr [rbp - 0x58]
	call	gettext_quote
	mov	qword ptr [rbp - 0xc0], rax
.label_782:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_794
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_809:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_798
	jmp	.label_816
.label_816:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_800
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_800:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_827
.label_827:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_809
.label_798:
	mov	rbp, rbp
	jmp	.label_794
.label_794:
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x108]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbp, rbp
	jmp	.label_657
.label_1087:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1086:
	mov	byte ptr [rbp - 0x3e], 1
.label_1088:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_829
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_829:
	jmp	.label_833
.label_833:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_648
	jmp	.label_837
.label_837:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_836
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_836:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_648
.label_648:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_657
.label_1085:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_657
.label_656:
	call	abort
.label_657:
	mov	qword ptr [rbp - 0xd8], 0
.label_670:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_665
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	jmp	.label_667
.label_665:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_667:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_685
	mov	rbp, rbp
	jmp	.label_693
.label_685:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_695
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_695
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_695
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_713
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_713
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_724
.label_713:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_724:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_695
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_695
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_747
	jmp	.label_644
.label_747:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_695:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3d], dl
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x18], rcx
	ja	.label_754
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_766]]
	nop	
	jmp	rcx
.label_1132:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_770
	mov	rsp, rsp
	jmp	.label_775
.label_775:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_777
	jmp	.label_644
.label_777:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_779
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_779
	nop	
	jmp	.label_784
.label_784:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_787
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_787:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_795
.label_795:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_797
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_797:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_801
.label_801:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_804
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_804:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_779:
	lea	rsi, [rsi]
	jmp	.label_812
.label_812:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_813
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_813:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_818
.label_818:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_824
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_824
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_824
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_824
	nop	
	jmp	.label_643
.label_643:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_645
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_645:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_717
.label_717:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_727
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_727:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_824
.label_824:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_671
.label_770:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_674
	mov	rbp, rbp
	jmp	.label_650
.label_674:
	jmp	.label_671
.label_671:
	jmp	.label_668
.label_1143:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_682
	mov	rbp, rbp
	jmp	.label_689
.label_689:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_692
	jmp	.label_699
.label_682:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_700
	jmp	.label_644
.label_700:
	jmp	.label_703
.label_692:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_706
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_706
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_706
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x144], edx
	mov	dword ptr [rbp - 0xdc], esi
	lea	rdi, [rdi]
	je	.label_731
	nop	
	jmp	.label_730
.label_730:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_731
	jmp	.label_738
.label_738:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_731
	jmp	.label_744
.label_744:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_731
	jmp	.label_684
.label_684:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_830
	jmp	.label_731
.label_731:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_759
	jmp	.label_644
.label_759:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3d], dl
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_763
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_763:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_783
.label_783:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_785
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_785:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_791
.label_791:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_714
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_714:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_828
.label_828:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_789
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_789:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_646
.label_830:
	jmp	.label_646
.label_646:
	jmp	.label_706
.label_706:
	jmp	.label_703
.label_699:
	jmp	.label_703
.label_703:
	jmp	.label_668
.label_1133:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_661
.label_1134:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_661
.label_1138:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_661
.label_1136:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_658
.label_1139:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_658
.label_1135:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_658
.label_1137:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_661
.label_1144:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_831
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_834
	nop	
	jmp	.label_644
.label_834:
	lea	rsi, [rsi]
	jmp	.label_639
.label_831:
	test	byte ptr [rbp - 0x89], 1
	je	.label_641
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_641
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_641
	jmp	.label_639
.label_641:
	jmp	.label_658
.label_658:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_659
	test	byte ptr [rbp - 0x3e], 1
	je	.label_659
	jmp	.label_644
.label_659:
	mov	rsp, rsp
	jmp	.label_661
.label_661:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_664
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_666
.label_664:
	jmp	.label_668
.label_1145:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_672
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_675
	jmp	.label_681
.label_672:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_675
.label_681:
	nop	
	jmp	.label_668
.label_675:
	jmp	.label_686
.label_686:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_687
	lea	rsi, [rsi]
	jmp	.label_668
.label_687:
	nop	
	jmp	.label_694
.label_694:
	mov	byte ptr [rbp - 0x91], 1
.label_1140:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_698
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_698
	jmp	.label_644
.label_698:
	lea	rsi, [rsi]
	jmp	.label_668
.label_1142:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_704
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_821
	jmp	.label_644
.label_821:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_711
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_711
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_711:
	jmp	.label_725
.label_725:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_726
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_726:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_735
.label_735:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_741
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_741:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_748
.label_748:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_752
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_752:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_704:
	lea	rsi, [rsi]
	jmp	.label_668
.label_1141:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_668
.label_754:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_771
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], 1
	movzx	eax, byte ptr [rbp - 0x3d]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40], sil
	lea	rsi, [rsi]
	jmp	.label_753
.label_771:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x118]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x68], -1
	mov	rsp, rsp
	jne	.label_796
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_796:
	jmp	.label_712
.label_712:
	lea	rdi, [rbp - 0x74]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x118]
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	add	rax, qword ptr [rbp - 0x150]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd8]
	add	rsi, qword ptr [rbp - 0x110]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_811
	jmp	.label_649
.label_811:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_815
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_649
.label_815:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_820
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_642:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x41], cl
	mov	rsp, rsp
	jae	.label_722
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_722:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_838
	jmp	.label_655
.label_838:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_642
.label_655:
	jmp	.label_649
.label_820:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_652
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_652
	mov	qword ptr [rbp - 0xe8], 1
.label_702:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_660
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x124], esi
	jb	.label_662
	jmp	.label_678
.label_678:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_662
	jmp	.label_683
.label_683:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_662
	jmp	.label_691
.label_691:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_720
	mov	rsp, rsp
	jmp	.label_662
.label_662:
	mov	rsp, rsp
	jmp	.label_644
.label_720:
	jmp	.label_701
.label_701:
	mov	rsp, rsp
	jmp	.label_772
.label_772:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_702
.label_660:
	mov	rbp, rbp
	jmp	.label_652
.label_652:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_709
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_709:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_839
.label_839:
	lea	rsi, [rsi]
	jmp	.label_718
.label_718:
	jmp	.label_721
.label_721:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x118]
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
	jne	.label_712
.label_649:
	jmp	.label_753
.label_753:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_732
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_743
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_743
.label_732:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_716:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_758
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_758
	jmp	.label_760
.label_760:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_761
	jmp	.label_644
.label_761:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_765
	test	byte ptr [rbp - 0x42], 1
	jne	.label_765
	lea	rdi, [rdi]
	jmp	.label_773
.label_773:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_778
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_778:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_728
.label_728:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_640
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_640:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_792
.label_792:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_710
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_710:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_765:
	jmp	.label_802
.label_802:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_803
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_803:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_805
.label_805:
	jmp	.label_808
.label_808:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_810
	nop	
	movzx	eax, byte ptr [rbp - 0x3d]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_810:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_819
.label_819:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_825
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x3d]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	byte ptr [rsi + rdx], cl
.label_825:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x3d], cl
	jmp	.label_663
.label_758:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_790
	lea	rdi, [rdi]
	jmp	.label_647
.label_647:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_697
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_697:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_790:
	nop	
	jmp	.label_663
.label_663:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_781
	jmp	.label_669
.label_781:
	lea	rsi, [rsi]
	jmp	.label_673
.label_673:
	test	byte ptr [rbp - 0x42], 1
	je	.label_676
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_676
	lea	rsi, [rsi]
	jmp	.label_679
.label_679:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_680
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_680:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_688
.label_688:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_696
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_696:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_676:
	nop	
	jmp	.label_705
.label_705:
	mov	rsp, rsp
	jmp	.label_707
.label_707:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_708
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_708:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x3d], dl
	jmp	.label_716
.label_669:
	mov	rsp, rsp
	jmp	.label_639
.label_743:
	lea	rsi, [rsi]
	jmp	.label_668
.label_668:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_736
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_739
.label_736:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_742
.label_739:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_742
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x100]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x3d]
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
	jne	.label_745
.label_742:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_745
	mov	rsp, rsp
	jmp	.label_639
.label_745:
	nop	
	jmp	.label_666
.label_666:
	jmp	.label_767
.label_767:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_769
	jmp	.label_644
.label_769:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_774
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_774
	lea	rdi, [rdi]
	jmp	.label_780
.label_780:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_733
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_733:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_788
.label_788:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_793
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_793:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_734
.label_734:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_799
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_799:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_774:
	jmp	.label_822
.label_822:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_806
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_806:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_814
.label_814:
	nop	
	jmp	.label_639
.label_639:
	jmp	.label_817
.label_817:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_715
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_715
	lea	rdi, [rdi]
	jmp	.label_823
.label_823:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_826
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_826:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_832
.label_832:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_835
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_835:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_715:
	jmp	.label_651
.label_651:
	nop	
	jmp	.label_653
.label_653:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_654
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_654:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_762
	mov	byte ptr [rbp - 0xb7], 0
.label_762:
	mov	rbp, rbp
	jmp	.label_650
.label_650:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_670
.label_693:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_677
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_677
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_677
	nop	
	jmp	.label_644
.label_677:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_690
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_690
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_690
	test	byte ptr [rbp - 0xb7], 1
	je	.label_756
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0xa4]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	jmp	.label_719
.label_756:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_723
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_723
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_729
.label_723:
	jmp	.label_737
.label_737:
	mov	rbp, rbp
	jmp	.label_690
.label_690:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_740
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_740
	mov	rbp, rbp
	jmp	.label_768
.label_768:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_746
	lea	rdi, [rdi]
	jmp	.label_749
.label_749:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_751
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_751:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_768
.label_746:
	jmp	.label_740
.label_740:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_776
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_776:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_719
.label_644:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_786
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_786
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_786:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	r8, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	r9d, dword ptr [rbp - 0xa4]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x138], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_719:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b70
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
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
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
	#Procedure 0x409be0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_840
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_841
.label_840:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_841
.label_841:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x58], rax
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
	mov	dword ptr [rbp - 0x1c], edi
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x58]
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
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	xcharalloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x34]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x64], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x64]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_842
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_842:
	mov	rax, qword ptr [rbp - 0x30]
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
	#Procedure 0x409db0
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
	#Procedure 0x409ec0

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
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 8]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f10

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 0x64], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_854
	call	abort
.label_854:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_849
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0xc]
	cmp	edx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	jge	.label_850
	call	xalloc_die
.label_850:
	test	byte ptr [rbp - 0x51], 1
	je	.label_851
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_855
.label_851:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_855:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x64]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x51], 1
	lea	rdi, [rdi]
	je	.label_853
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_843]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_853:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 0x64]
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
	mov	esi, dword ptr [rbp - 0x64]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_849:
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x28]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	ja	.label_852
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x64]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	je	.label_848
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_848:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	xcharalloc
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x28]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
.label_852:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a240

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
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a280
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
	#Procedure 0x40a2b0
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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
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
	#Procedure 0x40a2f0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 4], esi
	nop	
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x40]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a350

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
	mov	dword ptr [rbp - 0x44], esi
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 0x44], 0xa
	jne	.label_856
	call	abort
.label_856:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a3f0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], edi
	nop	
	mov	dword ptr [rbp - 0x44], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x40]
	nop	
	mov	edi, dword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 8]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a460
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4a0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4e0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x68]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 4]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a590

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
	#Procedure 0x40a5d0

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
	#Procedure 0x40a600
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
	#Procedure 0x40a640

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	dword ptr [rbp - 0x54], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x90]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x40]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x94], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	esi, dword ptr [rbp - 0x94]
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x90]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xb0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a720

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
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a770

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 0x3c], edi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 0x68], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x60], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x38]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a810
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
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
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
	#Procedure 0x40a860
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
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a8c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a900
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
	#Procedure 0x40a940

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
	#Procedure 0x40a980

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
	#Procedure 0x40a9c0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_860
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_858
.label_860:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_858
.label_859:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_858
.label_857:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_858:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab00

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0xb8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0x48], r9
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_861
	movabs	rsi, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
	lea	rsi, [rsi]
	jmp	.label_864
.label_861:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_864:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_2
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdi
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
	mov	rdi, qword ptr [rbp - 0xc8]
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
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0xac], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rdx
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rbp, rbp
	ja	.label_865
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_863]]
	jmp	rcx
.label_1069:
	jmp	.label_862
.label_1070:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_862
.label_1071:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_862
.label_1072:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_862
.label_1073:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xd0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_862
.label_1074:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], eax
	nop	
	jmp	.label_862
.label_1075:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x140], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x68], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x110], eax
	jmp	.label_862
.label_1076:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_0
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0x128], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0x50], eax
	nop	
	jmp	.label_862
.label_1077:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x120], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	jmp	.label_862
.label_1078:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
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
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_862
.label_865:
	movabs	rdi, OFFSET FLAT:.str.13_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
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
	mov	dword ptr [rbp - 0x10c], eax
.label_862:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b340
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 8], 0
.label_866:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_867
	mov	rbp, rbp
	jmp	.label_868
.label_868:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_866
.label_867:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 8]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b3f0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_872:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_869
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_874
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_873
.label_874:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_873:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
.label_869:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_871
	mov	rsp, rsp
	jmp	.label_875
.label_871:
	jmp	.label_870
.label_870:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_872
.label_875:
	nop	
	lea	r8, [rbp - 0x90]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x40]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b550
	.globl version_etc
	.type version_etc, @function
version_etc:

	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1d0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x120], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x1c0], xmm6
	movaps	xmmword ptr [rbp - 0x1a0], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x100], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x160], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x20], xmm1
	movaps	xmmword ptr [rbp - 0xf0], xmm0
	nop	
	mov	qword ptr [rbp - 0x1c8], rdi
	mov	qword ptr [rbp - 0x1a8], r9
	mov	qword ptr [rbp - 0x108], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	je	.label_876
	movaps	xmm0, xmmword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x60], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x1c0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_876:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	mov	r8, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], rsi
	mov	qword ptr [rbp - 0x148], rdx
	lea	rdx, [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x180], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], 0x30
	mov	dword ptr [rbp - 0x190], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	lea	r8, [rbp - 0x190]
	call	version_etc_va
	add	rsp, 0x1d0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b710
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
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b7c0
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
	#Procedure 0x40b820

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_878
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_878
	lea	rdi, [rdi]
	call	xalloc_die
.label_878:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b880
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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_879
	mov	rsp, rsp
	call	xalloc_die
.label_879:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 8]
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
	#Procedure 0x40b900

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jne	.label_880
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_880
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_882
.label_880:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_881
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_881
	lea	rsi, [rsi]
	call	xalloc_die
.label_881:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_882:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b9b0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_883
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_885
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_885:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
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
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_884
	call	xalloc_die
.label_884:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_886:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bae0

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
	#Procedure 0x40bb10
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
	#Procedure 0x40bb50
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
	#Procedure 0x40bba0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_888
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_889
.label_888:
	lea	rsi, [rsi]
	call	xalloc_die
.label_889:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc10

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc60
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bcc0

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
	#Procedure 0x40bd20

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_893
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_891
.label_893:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_890
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
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
	mov	rdi, qword ptr [rbp - 8]
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
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_894
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_894:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_891:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40be40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_895
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_896
.label_895:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_897
.label_896:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_897:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40beb0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_898:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf10

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0xc], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_899
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_899
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_899
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_901
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_900
.label_901:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jmp	.label_900
.label_899:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_900:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c020

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
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x40], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_902
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_902:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_903
	nop	
	cmp	qword ptr [rbp - 0x28], 0
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
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x31], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_904
.label_903:
	mov	rax, qword ptr [rbp - 0x20]
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
	#Procedure 0x40c110
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
	mov	qword ptr [rbp - 0x30], rdi
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
	mov	rax, qword ptr [rbp - 0x30]
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
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rcx, rax
	mov	qword ptr [rbp - 8], rcx
.label_908:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	mov	rsp, rsp
	jae	.label_906
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x20
	sete	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], dl
.label_906:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_905
	jmp	.label_909
.label_905:
	lea	rsi, [rsi]
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
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
	#Procedure 0x40c220

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x34], ecx
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	utmpxname
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	call	setutxent
.label_912:
	call	getutxent
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	je	.label_913
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	call	desirable_utmp_entry
	test	al, 1
	jne	.label_914
	jmp	.label_910
.label_914:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_911
	lea	rsi, [rbp - 0x10]
	mov	rsp, rsp
	mov	eax, 0x180
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	x2nrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_911:
	mov	eax, 0x180
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, rcx
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x48], rsi
	mov	rbp, rbp
	imul	rcx, rcx, 0x180
	add	rcx, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memcpy
.label_910:
	jmp	.label_912
.label_913:
	lea	rdi, [rdi]
	call	endutxent
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
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
	#Procedure 0x40c360

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
	mov	dword ptr [rbp - 4], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	eax, byte ptr [rdi + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	je	.label_915
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	cmp	edx, 7
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x12], al
	je	.label_918
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x12], cl
	jmp	.label_918
.label_918:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x12]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
.label_915:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 6], al
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	ecx, 2
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_917
	nop	
	test	byte ptr [rbp - 6], 1
	jne	.label_917
	mov	byte ptr [rbp - 5], 0
	jmp	.label_919
.label_917:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	je	.label_916
	nop	
	test	byte ptr [rbp - 6], 1
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
	mov	byte ptr [rbp - 5], 0
	mov	rsp, rsp
	jmp	.label_919
.label_916:
	mov	byte ptr [rbp - 5], 1
.label_919:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c490

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_922
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], 0x77
	lea	rdi, [rdi]
	jae	.label_925
	mov	rbp, rbp
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	jmp	.label_924
.label_925:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_924:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_920
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 0x20], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 8], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_923
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rbp, rbp
	call	extend_abbrs
.label_923:
	jmp	.label_920
.label_920:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c5d0

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
	#Procedure 0x40c620

	.globl tzfree
	.type tzfree, @function
tzfree:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	lea	rsi, [rsi]
	je	.label_926
	mov	rbp, rbp
	jmp	.label_927
.label_927:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_928
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
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
	#Procedure 0x40c6a0
	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_929
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	gmtime_r
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_931
.label_929:
	mov	rdi, qword ptr [rbp - 8]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_933
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	call	localtime_r
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	cmp	rax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
	je	.label_934
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	save_abbr
	mov	byte ptr [rbp - 0x11], al
.label_934:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_930
	lea	rdi, [rdi]
	jmp	.label_932
.label_930:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x31], 1
	lea	rsi, [rsi]
	je	.label_932
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_931
.label_932:
	jmp	.label_933
.label_933:
	nop	
	mov	qword ptr [rbp - 0x28], 0
.label_931:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c7c0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	call	getenv_TZ
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_938
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_937
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 9
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_939
	jmp	.label_937
.label_938:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 8], 0
	jne	.label_937
.label_939:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_935
.label_937:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	tzalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_936
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_935
.label_936:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	change_env
	test	al, 1
	jne	.label_940
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	tzfree
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_935
.label_940:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
.label_935:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c900

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_941
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	ja	.label_944
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x38
	nop	
	cmp	rax, rcx
	jae	.label_944
.label_941:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_945
.label_944:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_943
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 9
	mov	qword ptr [rbp - 8], rax
.label_948:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_942
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	jne	.label_946
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rcx, 9
	cmp	rax, rcx
	nop	
	jne	.label_947
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_946
.label_947:
	lea	rdi, [rdi]
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rdi, 9
	sub	rax, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_949
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	mov	byte ptr [rbp - 9], 0
	jmp	.label_945
.label_949:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	cmp	rax, 0x77
	jae	.label_953
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	extend_abbrs
	mov	rsp, rsp
	jmp	.label_951
.label_953:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_950
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_945
.label_950:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 9
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_951:
	jmp	.label_942
.label_946:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_952
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_952
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_952:
	lea	rdi, [rdi]
	jmp	.label_948
.label_942:
	mov	rbp, rbp
	jmp	.label_943
.label_943:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	byte ptr [rbp - 9], 1
.label_945:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cba0

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
	mov	byte ptr [rbp - 5], 1
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
	mov	dword ptr [rbp - 4], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], dl
.label_955:
	nop	
	mov	al, byte ptr [rbp - 5]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc50

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rdi
	nop	
	mov	qword ptr [rbp - 0x68], rsi
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	jne	.label_961
	mov	rdi, qword ptr [rbp - 0x68]
	call	timegm
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_963
.label_961:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	set_tz
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	je	.label_960
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	call	mktime
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], -1
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jne	.label_962
	mov	rsp, rsp
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	call	localtime_r
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_958
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	call	equal_tm
	nop	
	cmp	eax, 0
	je	.label_958
.label_962:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x68]
	call	save_abbr
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_958
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_958:
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	revert_tz
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_957
	mov	rsp, rsp
	jmp	.label_959
.label_957:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_963
.label_959:
	jmp	.label_960
.label_960:
	mov	qword ptr [rbp - 0x18], -1
.label_963:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cd90

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 4]
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	xor	ecx, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	or	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rsi + 0x14]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	call	isdst_differ
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 4]
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
	#Procedure 0x40ce80

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
	#Procedure 0x40ceb0

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
	mov	qword ptr [rbp - 8], rax
	jmp	.label_966
.label_964:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_966
.label_966:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	setenv_TZ
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_965
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_967
.label_965:
	call	tzset
	nop	
	mov	byte ptr [rbp - 0x11], 1
.label_967:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cf40

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_968
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_7
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	setenv
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_969
.label_968:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_7
	call	unsetenv
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_969:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cfb0

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
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0xc], esi
	cmp	dword ptr [rbp - 8], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	cmp	dword ptr [rbp - 0xc], 0
	nop	
	setne	dl
	xor	dl, 0xff
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	byte ptr [rbp - 1], cl
	je	.label_970
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	jg	.label_970
	mov	rsp, rsp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	setle	cl
	mov	byte ptr [rbp - 1], cl
.label_970:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d040

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jne	.label_971
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_975
.label_971:
	mov	rbp, rbp
	jmp	.label_972
.label_972:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x19], cl
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0
	jne	.label_973
	jmp	.label_974
.label_973:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	movzx	ecx, byte ptr [rbp - 0x1a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_972
.label_974:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_975:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d130

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
	mov	byte ptr [rbp - 0x16], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x15], cl
	nop	
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jne	.label_978
	test	byte ptr [rbp - 0x15], 1
	je	.label_977
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_978
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_977
.label_978:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_976
	call	__errno_location
	mov	dword ptr [rax], 0
.label_976:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_979
.label_977:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_979:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d210

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
	mov	dword ptr [rbp - 0xc], edi
	mov	byte ptr [rbp - 0xd], 1
	mov	edi, dword ptr [rbp - 0xc]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_981
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_982
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_980
.label_982:
	mov	byte ptr [rbp - 0xd], 0
.label_980:
	jmp	.label_981
.label_981:
	mov	al, byte ptr [rbp - 0xd]
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
	#Procedure 0x40d2b0

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
	#Procedure 0x40d330

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
	jmp	.label_986
.label_986:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_987
.label_985:
	lea	rsi, [rsi]
	jmp	.label_987
.label_987:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d390
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
	#Procedure 0x40d400
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
	#Procedure 0x40d450
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
	#Procedure 0x40d480
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
	#Procedure 0x40d4b0
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
	#Procedure 0x40d500
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
	#Procedure 0x40d540
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
	#Procedure 0x40d580
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
	#Procedure 0x40d5c0
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
	#Procedure 0x40d600
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
	#Procedure 0x40d680
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
	#Procedure 0x40d6d0
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
	#Procedure 0x40d710
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
	#Procedure 0x40d780

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
	#Procedure 0x40d7c0
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
