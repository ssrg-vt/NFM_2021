	.section	.text
	.align	32
	#Procedure 0x4021e0

	.globl usage
	.type usage, @function
usage:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 8], 0
	mov	rbp, rbp
	je	.label_7
	lea	rsi, [rsi]
	jmp	.label_8
.label_8:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	call	gettext
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_9
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x10], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	nop	
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	call	emit_ancillary_info
.label_9:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402330

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x38], rax
.label_15:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x2d], cl
	lea	rdi, [rdi]
	je	.label_12
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x2d], cl
.label_12:
	mov	al, byte ptr [rbp - 0x2d]
	test	al, 1
	jne	.label_11
	nop	
	jmp	.label_14
.label_11:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_15
.label_14:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_13
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.23
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	nop	
	xor	ecx, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	call	setlocale
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_10
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.25
	mov	eax, 3
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	strncmp
	cmp	eax, 0
	je	.label_10
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.26
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.27
	mov	rsp, rsp
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.28
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	nop	
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.29
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rbp - 0x28]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	printf
	mov	dword ptr [rbp - 0x14], eax
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x402530

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x90
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x28], edi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	nop	
	movabs	rdi, OFFSET FLAT:.str.7
	movabs	rsi, OFFSET FLAT:.str.8
	mov	qword ptr [rbp - 0x38], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.7
	mov	qword ptr [rbp - 0x48], rax
	call	textdomain
	mov	qword ptr [rbp - 0x20], rax
	call	lbuf_alloc
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:lbuf_flush
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	call	atexit
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_26:
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	getopt_long
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_19
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	je	.label_23
	jmp	.label_16
.label_16:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	je	.label_18
	nop	
	jmp	.label_21
.label_21:
	nop	
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x80
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jne	.label_24
	jmp	.label_30
.label_30:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [dev_debug]],  1
	jmp	.label_17
.label_18:
	xor	edi, edi
	call	usage
.label_23:
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0x40], rax
	nop	
	call	proper_name_utf8
	nop	
	movabs	rdi, OFFSET FLAT:.str.13
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	call	proper_name_utf8
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.10
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rsp, rsp
	mov	ecx, r9d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x68], rcx
	mov	rcx, r10
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	version_etc
	nop	
	xor	edi, edi
	mov	rbp, rbp
	call	exit
.label_24:
	mov	edi, 1
	call	usage
.label_17:
	jmp	.label_26
.label_19:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	cmp	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	jg	.label_28
	lea	rdi, [rdi]
	call	do_stdin
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x59], al
	jmp	.label_20
.label_28:
	mov	byte ptr [rbp - 0x59], 1
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x6c], eax
.label_27:
	mov	eax, dword ptr [rbp - 0x6c]
	cmp	eax, dword ptr [rbp - 0x28]
	jge	.label_25
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x6c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	call	print_factors
	test	al, 1
	jne	.label_22
	mov	byte ptr [rbp - 0x59], 0
.label_22:
	jmp	.label_29
.label_29:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	jmp	.label_27
.label_25:
	mov	rbp, rbp
	jmp	.label_20
.label_20:
	mov	eax, 1
	xor	ecx, ecx
	nop	
	mov	dl, byte ptr [rbp - 0x59]
	nop	
	test	dl, 1
	mov	rbp, rbp
	cmovne	eax, ecx
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402830

	.globl lbuf_alloc
	.type lbuf_alloc, @function
lbuf_alloc:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	cmp	qword ptr [word ptr [lbuf]],  0
	lea	rdi, [rdi]
	je	.label_31
	nop	
	jmp	.label_32
.label_31:
	mov	rsp, rsp
	mov	eax, 0x400
	lea	rsi, [rsi]
	mov	edi, eax
	nop	
	call	xmalloc
	mov	qword ptr [word ptr [lbuf]],  rax
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [lbuf]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_33]],  rax
.label_32:
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402890

	.globl lbuf_flush
	.type lbuf_flush, @function
lbuf_flush:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	edi, 1
	mov	rax,  qword ptr [word ptr [label_33]]
	mov	rcx,  qword ptr [word ptr [lbuf]]
	lea	rsi, [rsi]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [lbuf]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	call	full_write
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_34
	mov	rbp, rbp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_34:
	mov	rax,  qword ptr [word ptr [lbuf]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [label_33]],  rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402940

	.globl do_stdin
	.type do_stdin, @function
do_stdin:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x18]
	mov	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	call	init_tokenbuffer
.label_37:
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.35
	mov	eax, 3
	nop	
	mov	edx, eax
	lea	rcx, [rbp - 0x18]
	mov	rdi,  qword ptr [word ptr [stdin]]
	lea	rdi, [rdi]
	call	readtoken
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_35
	lea	rdi, [rdi]
	jmp	.label_36
.label_35:
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_factors
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rbp, rbp
	and	edx, ecx
	cmp	edx, 0
	mov	rbp, rbp
	setne	al
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	jmp	.label_37
.label_36:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a10

	.globl print_factors
	.type print_factors, @function
print_factors:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdi
	mov	rbp, rbp
	lea	rax, [rbp - 0x50]
	lea	rsi, [rbp - 0x90]
	mov	qword ptr [rbp - 0x68], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	strto2uintmax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	nop	
	mov	ecx, eax
	test	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x70], ecx
	lea	rdi, [rdi]
	je	.label_39
	mov	rsp, rsp
	jmp	.label_47
.label_47:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
	nop	
	je	.label_51
	lea	rsi, [rsi]
	jmp	.label_38
.label_39:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	shl	rax, 1
	shr	rax, 1
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	nop	
	jne	.label_40
	jmp	.label_49
.label_49:
	test	byte ptr [byte ptr [dev_debug]],  1
	nop	
	je	.label_53
	movabs	rsi, OFFSET FLAT:.str.36
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	nop	
	mov	dword ptr [rbp - 4], eax
.label_53:
	lea	rsi, [rsi]
	jmp	.label_46
.label_46:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x90]
	call	print_factors_single
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x91], 1
	lea	rdi, [rdi]
	jmp	.label_42
.label_40:
	nop	
	jmp	.label_41
.label_51:
	jmp	.label_41
.label_38:
	movabs	rdi, OFFSET FLAT:.str.37
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	quote
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x91], 0
	nop	
	jmp	.label_42
.label_41:
	jmp	.label_44
.label_44:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [dev_debug]],  1
	nop	
	je	.label_50
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.38
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x10], eax
.label_50:
	mov	rbp, rbp
	jmp	.label_45
.label_45:
	mov	edx, 0xa
	mov	rsp, rsp
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	__gmpz_init_set_str
	movabs	rdi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x30]
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	mov	al, 0
	call	__gmp_printf
	lea	rsi, [rbp - 0x88]
	lea	rdi, [rbp - 0x30]
	mov	dword ptr [rbp - 0xc], eax
	call	mp_factor
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], 0
.label_43:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_54
	mov	dword ptr [rbp - 0x34], 0
.label_55:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rsi + rdx*8]
	mov	rbp, rbp
	jae	.label_48
	nop	
	movabs	rdi, OFFSET FLAT:.str.40
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 0x88]
	mov	rsi, rcx
	mov	rsp, rsp
	mov	al, 0
	call	__gmp_printf
	mov	dword ptr [rbp - 0x44], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_55
.label_48:
	jmp	.label_52
.label_52:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	jmp	.label_43
.label_54:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x88]
	mov	rbp, rbp
	call	mp_factor_clear
	lea	rdi, [rbp - 0x30]
	call	__gmpz_clear
	mov	rbp, rbp
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	call	fflush_unlocked
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	mov	dword ptr [rbp - 8], eax
.label_42:
	mov	al, byte ptr [rbp - 0x91]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d00

	.globl strto2uintmax
	.type strto2uintmax, @function
strto2uintmax:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdx
	mov	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 0x54], 4
.label_60:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x31], cl
	movsx	edx, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	cmp	edx, 0x20
	jne	.label_68
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_59
.label_68:
	movsx	eax, byte ptr [rbp - 0x31]
	lea	rdi, [rdi]
	cmp	eax, 0x2b
	jne	.label_65
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_58
.label_65:
	jmp	.label_58
.label_59:
	lea	rsi, [rsi]
	jmp	.label_60
.label_58:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
.label_61:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jne	.label_64
	lea	rsi, [rsi]
	jmp	.label_57
.label_64:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x30
	cmp	eax, 9
	mov	rsp, rsp
	setbe	cl
	lea	rsi, [rsi]
	xor	cl, 0xff
	nop	
	and	cl, 1
	movzx	eax, cl
	nop	
	movsxd	rdx, eax
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_63
	mov	dword ptr [rbp - 0x54], 4
	mov	rbp, rbp
	jmp	.label_57
.label_63:
	mov	dword ptr [rbp - 0x54], 0
	jmp	.label_61
.label_57:
	lea	rsi, [rsi]
	jmp	.label_62
.label_62:
	cmp	dword ptr [rbp - 0x54], 0
	nop	
	jne	.label_56
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rcx
	nop	
	movsx	edx, byte ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x44], edx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_69
	jmp	.label_56
.label_69:
	mov	rbp, rbp
	movabs	rax, 0x1999999999999999
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x44]
	sub	ecx, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], ecx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	seta	dl
	and	dl, 1
	movzx	ecx, dl
	mov	rbp, rbp
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_66
	mov	dword ptr [rbp - 0x54], 1
	jmp	.label_56
.label_66:
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x40], 0xa
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	shr	rax, 0x3d
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shr	rcx, 0x3f
	add	rax, rcx
	mov	rbp, rbp
	mov	edx, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], edx
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x30], 0xa
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rcx, 1
	cmp	rax, rcx
	setb	sil
	lea	rsi, [rsi]
	and	sil, 1
	movzx	edx, sil
	lea	rdi, [rdi]
	add	edx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x24], edx
	mov	rsp, rsp
	imul	rax, qword ptr [rbp - 0x30], 0xa
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	mov	eax, edx
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	ecx, edx
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	setb	sil
	lea	rdi, [rdi]
	and	sil, 1
	movzx	edx, sil
	mov	rbp, rbp
	add	edx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x24], edx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	eax, edx
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x24]
	mov	ecx, edx
	lea	rdi, [rdi]
	cmp	rax, rcx
	setb	sil
	mov	rsp, rsp
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_67
	mov	dword ptr [rbp - 0x54], 1
	nop	
	jmp	.label_56
.label_67:
	jmp	.label_62
.label_56:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fe0

	.globl print_factors_single
	.type print_factors_single, @function
print_factors_single:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x120
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x118], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	print_uintmaxes
	mov	rsp, rsp
	mov	edi, 0x3a
	nop	
	call	lbuf_putc
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x110]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsi, qword ptr [rbp - 0x10]
	call	factor
	mov	dword ptr [rbp - 4], 0
.label_74:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x16]
	cmp	eax, ecx
	jae	.label_71
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x11c], 0
.label_73:
	mov	eax, dword ptr [rbp - 0x11c]
	nop	
	mov	ecx, dword ptr [rbp - 4]
	mov	edx, ecx
	movzx	ecx, byte ptr [rbp + rdx - 0x30]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jae	.label_70
	mov	edi, 0x20
	nop	
	call	lbuf_putc
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsi, qword ptr [rbp + rcx*8 - 0x100]
	call	print_uintmaxes
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x11c]
	nop	
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x11c], eax
	lea	rsi, [rsi]
	jmp	.label_73
.label_70:
	jmp	.label_72
.label_72:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_74
.label_71:
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_75
	mov	rbp, rbp
	mov	edi, 0x20
	call	lbuf_putc
	mov	rdi, qword ptr [rbp - 0x108]
	nop	
	mov	rsi, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	call	print_uintmaxes
.label_75:
	mov	rsp, rsp
	mov	edi, 0xa
	call	lbuf_putc
	nop	
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403130

	.globl mp_factor
	.type mp_factor, @function
mp_factor:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	mp_factor_init
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 4], 0
	jge	.label_80
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 4], eax
	jmp	.label_84
.label_80:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 4], 0
	mov	rbp, rbp
	setg	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
.label_84:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, 0
	je	.label_78
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	call	mp_factor_using_division
	lea	rdi, [rdi]
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_76
	mov	rbp, rbp
	jmp	.label_79
.label_79:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_81
	movabs	rsi, OFFSET FLAT:.str.53
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 8], eax
.label_81:
	lea	rdi, [rdi]
	jmp	.label_77
.label_77:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	mp_prime_p
	test	al, 1
	jne	.label_82
	jmp	.label_83
.label_82:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	mp_factor_insert
	jmp	.label_85
.label_83:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	mp_factor_using_pollard_rho
.label_85:
	jmp	.label_76
.label_76:
	lea	rsi, [rsi]
	jmp	.label_78
.label_78:
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403270

	.globl mp_factor_clear
	.type mp_factor_clear, @function
mp_factor_clear:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0
.label_86:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_87
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rdx]
	mov	rdi, rcx
	call	__gmpz_clear
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jmp	.label_86
.label_87:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x403320

	.globl print_uintmaxes
	.type print_uintmaxes, @function
print_uintmaxes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_88
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	lbuf_putint
	jmp	.label_95
.label_88:
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	xor	edx, edx
	div	rcx
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, esi
	lea	rsi, [rsi]
	div	rcx
	mov	qword ptr [rbp - 0x58], rdx
	cmp	qword ptr [rbp - 0x58], 0x3b9aca00
	nop	
	jae	.label_97
	jmp	.label_89
.label_97:
	movabs	rdi, OFFSET FLAT:.str.41
	nop	
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x99c
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.print_uintmaxes
	call	__assert_fail
.label_89:
	mov	qword ptr [rbp - 0x38], 0x3b9aca00
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0x40
.label_94:
	cmp	dword ptr [rbp - 0x14], 0
	jbe	.label_91
	mov	rbp, rbp
	jmp	.label_93
.label_93:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shr	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shl	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	ja	.label_96
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_90
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_90
.label_96:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x20], rsi
	sub	rdx, qword ptr [rbp - 0x20]
	sbb	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x10], rdx
.label_90:
	mov	rsp, rsp
	jmp	.label_92
.label_92:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, -1
	nop	
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_94
.label_91:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	print_uintmaxes
	mov	rbp, rbp
	mov	eax, 9
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	lbuf_putint
.label_95:
	add	rsp, 0x60
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403530

	.globl lbuf_putc
	.type lbuf_putc, @function
lbuf_putc:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	al, dil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	al, byte ptr [rbp - 0x11]
	nop	
	mov	rcx,  qword ptr [word ptr [label_33]]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 1
	mov	qword ptr [word ptr [label_33]],  rdx
	nop	
	mov	byte ptr [rcx], al
	nop	
	movsx	edi, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	cmp	edi, 0xa
	mov	rsp, rsp
	jne	.label_100
	nop	
	mov	rax,  qword ptr [word ptr [label_33]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [lbuf]]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [lbuf_putc.line_buffered]],  -1
	mov	rsp, rsp
	jne	.label_98
	nop	
	xor	edi, edi
	nop	
	call	isatty
	mov	rsp, rsp
	mov	dword ptr [dword ptr [lbuf_putc.line_buffered]],  eax
.label_98:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [lbuf_putc.line_buffered]],  0
	je	.label_104
	mov	rbp, rbp
	call	lbuf_flush
	jmp	.label_102
.label_104:
	cmp	qword ptr [rbp - 0x20], 0x200
	nop	
	jb	.label_103
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [label_33]]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [lbuf]]
	add	rax, 0x200
	mov	qword ptr [rbp - 8], rax
.label_101:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0xa
	lea	rsi, [rsi]
	je	.label_99
	jmp	.label_101
.label_99:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [label_33]],  rax
	lea	rsi, [rsi]
	call	lbuf_flush
	mov	rdi,  qword ptr [word ptr [lbuf]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax,  qword ptr [word ptr [lbuf]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	sub	rcx, rdx
	lea	rsi, [rsi]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [label_33]],  rax
.label_103:
	jmp	.label_102
.label_102:
	lea	rdi, [rdi]
	jmp	.label_100
.label_100:
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036d0

	.globl factor
	.type factor, @function
factor:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + 0xfa], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_110
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 2
	jae	.label_110
	jmp	.label_106
.label_110:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	factor_using_division
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_107
	cmp	qword ptr [rbp - 8], 2
	mov	rbp, rbp
	jae	.label_107
	jmp	.label_106
.label_107:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	prime2_p
	test	al, 1
	jne	.label_105
	jmp	.label_108
.label_105:
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	call	factor_insert_large
	mov	rsp, rsp
	jmp	.label_106
.label_108:
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_109
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	factor_using_pollard_rho
	lea	rsi, [rsi]
	jmp	.label_111
.label_109:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	factor_using_pollard_rho2
.label_111:
	jmp	.label_106
.label_106:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403810

	.globl lbuf_putint
	.type lbuf_putint, @function
lbuf_putint:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	lea	rax, [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	umaxtostr
	mov	ecx, 0x15
	mov	rsp, rsp
	mov	esi, ecx
	nop	
	lea	rdi, [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, rdi
	mov	rbp, rbp
	sub	rsi, rax
	sub	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x40], rsi
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_113:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jae	.label_112
	mov	rax,  qword ptr [word ptr [label_33]]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [label_33]],  rcx
	mov	byte ptr [rax], 0x30
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_113
.label_112:
	mov	rdi,  qword ptr [word ptr [label_33]]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	call	memcpy
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rdx,  qword ptr [word ptr [label_33]]
	mov	qword ptr [word ptr [label_33]],  rdx
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403900

	.globl factor_using_division
	.type factor_using_division, @function
factor_using_division:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	and	rcx, 1
	cmp	rcx, 0
	jne	.label_114
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_143
	nop	
	jmp	.label_148
.label_148:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x60], rax
	bsf	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], ecx
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x30]
	nop	
	shr	rax, cl
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	nop	
	mov	edx, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	edx, 0x40
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], edx
	jmp	.label_139
.label_143:
	jmp	.label_126
.label_126:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	bsf	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], ecx
	jmp	.label_128
.label_128:
	mov	eax, 0x40
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 0x70], rcx
	mov	rbp, rbp
	mov	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	shr	rsi, cl
	mov	rsp, rsp
	or	rdx, rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x68]
	mov	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	shr	rdx, cl
	nop	
	mov	qword ptr [rbp - 0x68], rdx
	lea	rsi, [rsi]
	jmp	.label_139
.label_139:
	lea	rsi, [rsi]
	mov	eax, 2
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	factor_insert_multiplicity
.label_114:
	mov	qword ptr [rbp - 0x58], 3
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0
.label_141:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x29], cl
	lea	rdi, [rdi]
	jbe	.label_147
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	cmp	rcx, 0x29c
	mov	rbp, rbp
	setb	dl
	mov	byte ptr [rbp - 0x29], dl
.label_147:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	test	al, 1
	jne	.label_171
	jmp	.label_121
.label_171:
	lea	rsi, [rsi]
	jmp	.label_125
.label_125:
	movabs	rax, OFFSET FLAT:primes_dtab
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	mov	esi, edx
	mov	rbp, rbp
	shl	rsi, 4
	add	rax, rsi
	imul	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x18], rcx
	mul	qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	qword ptr [rbp - 8], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	jbe	.label_129
	mov	rbp, rbp
	jmp	.label_159
.label_129:
	movabs	rax, OFFSET FLAT:primes_dtab
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	edx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	esi, edx
	shl	rsi, 4
	mov	rdi, rax
	mov	rsp, rsp
	add	rdi, rsi
	imul	rcx, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0xc]
	mov	esi, edx
	shl	rsi, 4
	lea	rdi, [rdi]
	add	rax, rsi
	cmp	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	seta	r8b
	mov	rbp, rbp
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	edx, r8b
	movsxd	rax, edx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_115
	lea	rdi, [rdi]
	jmp	.label_159
.label_115:
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x58]
	call	factor_insert_multiplicity
	jmp	.label_125
.label_159:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	mov	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_141
.label_121:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	je	.label_167
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
.label_167:
	jmp	.label_124
.label_124:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0x29c
	jae	.label_123
	movabs	rax, OFFSET FLAT:primes_dtab
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	edx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	add	rax, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	jmp	.label_137
.label_137:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x80]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rcx + 8]
	seta	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	nop	
	je	.label_155
	jmp	.label_127
.label_155:
	xor	ecx, ecx
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	edx, dword ptr [rbp - 0xc]
	add	edx, 1
	call	factor_insert_refind
	nop	
	jmp	.label_137
.label_127:
	lea	rdi, [rdi]
	jmp	.label_149
.label_149:
	mov	rbp, rbp
	jmp	.label_152
.label_152:
	lea	rsi, [rsi]
	jmp	.label_131
.label_131:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x80]
	imul	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rcx + 0x18]
	seta	dl
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_160
	jmp	.label_132
.label_160:
	nop	
	mov	ecx, 1
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	edx, dword ptr [rbp - 0xc]
	nop	
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_131
.label_132:
	jmp	.label_154
.label_154:
	lea	rsi, [rsi]
	jmp	.label_156
.label_156:
	nop	
	jmp	.label_161
.label_161:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	imul	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x28]
	seta	dl
	lea	rsi, [rsi]
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	movsxd	rax, esi
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_163
	jmp	.label_140
.label_163:
	lea	rdi, [rdi]
	mov	ecx, 2
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	edx, 1
	call	factor_insert_refind
	lea	rdi, [rdi]
	jmp	.label_161
.label_140:
	nop	
	jmp	.label_165
.label_165:
	lea	rdi, [rdi]
	jmp	.label_168
.label_168:
	lea	rdi, [rdi]
	jmp	.label_116
.label_116:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rcx + 0x30]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rcx + 0x38]
	lea	rdi, [rdi]
	seta	dl
	and	dl, 1
	mov	rsp, rsp
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_118
	mov	rbp, rbp
	jmp	.label_150
.label_118:
	mov	ecx, 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xc]
	add	edx, 1
	mov	rsp, rsp
	call	factor_insert_refind
	jmp	.label_116
.label_150:
	lea	rdi, [rdi]
	jmp	.label_134
.label_134:
	nop	
	jmp	.label_136
.label_136:
	jmp	.label_146
.label_146:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	imul	rax, qword ptr [rcx + 0x40]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x48]
	mov	rsp, rsp
	seta	dl
	nop	
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_117
	jmp	.label_162
.label_117:
	nop	
	mov	ecx, 4
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xc]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_146
.label_162:
	jmp	.label_130
.label_130:
	mov	rsp, rsp
	jmp	.label_133
.label_133:
	jmp	.label_135
.label_135:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	imul	rax, qword ptr [rcx + 0x50]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x58]
	seta	dl
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_164
	nop	
	jmp	.label_170
.label_164:
	mov	ecx, 5
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x58]
	nop	
	mov	edx, dword ptr [rbp - 0xc]
	add	edx, 1
	lea	rdi, [rdi]
	call	factor_insert_refind
	jmp	.label_135
.label_170:
	jmp	.label_138
.label_138:
	jmp	.label_145
.label_145:
	lea	rdi, [rdi]
	jmp	.label_142
.label_142:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	imul	rax, qword ptr [rcx + 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rcx + 0x68]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_157
	lea	rsi, [rsi]
	jmp	.label_166
.label_157:
	mov	ecx, 6
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	edx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	edx, 1
	lea	rdi, [rdi]
	call	factor_insert_refind
	lea	rsi, [rsi]
	jmp	.label_142
.label_166:
	nop	
	jmp	.label_144
.label_144:
	jmp	.label_169
.label_169:
	lea	rsi, [rsi]
	jmp	.label_120
.label_120:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	imul	rax, qword ptr [rcx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x78]
	seta	dl
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	lea	rsi, [rsi]
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_158
	jmp	.label_122
.label_158:
	mov	rsp, rsp
	mov	ecx, 7
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_120
.label_122:
	jmp	.label_151
.label_151:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff8]]
	mov	ecx, eax
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x58]
	cmp	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jbe	.label_153
	lea	rdi, [rdi]
	jmp	.label_123
.label_153:
	jmp	.label_119
.label_119:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_124
.label_123:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404150

	.globl prime2_p
	.type prime2_p, @function
prime2_p:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x2c0
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x240], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_207
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x240]
	mov	rbp, rbp
	call	prime_p
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x259], al
	lea	rsi, [rsi]
	jmp	.label_175
.label_207:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rbp - 0x240], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rsi, edx
	sub	rax, rsi
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x240]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	jne	.label_178
	lea	rsi, [rsi]
	jmp	.label_214
.label_214:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
	bsf	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x208], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0x208]
	mov	rbp, rbp
	shr	rax, cl
	mov	qword ptr [rbp - 0x2b0], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2a8], 0
	mov	edx, dword ptr [rbp - 0x208]
	lea	rsi, [rsi]
	add	edx, 0x40
	mov	dword ptr [rbp - 0x208], edx
	lea	rdi, [rdi]
	jmp	.label_215
.label_178:
	nop	
	jmp	.label_196
.label_196:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x210], rax
	bsf	rcx, qword ptr [rbp - 0x210]
	nop	
	mov	dword ptr [rbp - 0x208], ecx
	jmp	.label_198
.label_198:
	mov	rbp, rbp
	mov	eax, 0x40
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	sub	eax, dword ptr [rbp - 0x208]
	lea	rdi, [rdi]
	mov	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	qword ptr [rbp - 0x248], rcx
	mov	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x248]
	lea	rdi, [rdi]
	shl	rdx, cl
	mov	rsi, qword ptr [rbp - 0x50]
	mov	eax, dword ptr [rbp - 0x208]
	mov	ecx, eax
	shr	rsi, cl
	or	rdx, rsi
	mov	qword ptr [rbp - 0x2b0], rdx
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x208]
	mov	ecx, eax
	lea	rdi, [rdi]
	shr	rdx, cl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2a8], rdx
	lea	rdi, [rdi]
	jmp	.label_215
.label_215:
	nop	
	mov	qword ptr [rbp - 0x60], 2
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x240]
	mov	qword ptr [rbp - 0x258], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	shr	rax, 1
	and	rax, 0x7f
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	shl	rax, 1
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rax, rdx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x258]
	nop	
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x1d8], rax
	nop	
	jmp	.label_211
.label_211:
	mov	rbp, rbp
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	jae	.label_220
	mov	qword ptr [rbp - 0x1e8], 1
	mov	qword ptr [rbp - 0xa8], 0
	mov	qword ptr [rbp - 0xb8], 0x40
	jmp	.label_205
.label_220:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1e8], 0
	mov	qword ptr [rbp - 0xa8], 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], 0x80
.label_205:
	lea	rsi, [rsi]
	jmp	.label_179
.label_179:
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	jbe	.label_184
	jmp	.label_203
.label_203:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e8]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0xa8]
	shr	rcx, 0x3f
	or	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e8]
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_206
	nop	
	mov	rax, qword ptr [rbp - 0x1e8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jne	.label_180
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x240]
	jb	.label_180
.label_206:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x240]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rcx
	mov	qword ptr [rbp - 0x288], rsi
	sub	rdx, qword ptr [rbp - 0x288]
	sbb	rax, qword ptr [rbp - 0x290]
	mov	qword ptr [rbp - 0x1e8], rax
	mov	qword ptr [rbp - 0xa8], rdx
.label_180:
	lea	rdi, [rdi]
	jmp	.label_179
.label_184:
	mov	rax, qword ptr [rbp - 0x1e8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_185
.label_185:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1d0], rsi
	add	rdx, qword ptr [rbp - 0x1d0]
	adc	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rdx
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_199
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_174
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x240]
	mov	rsp, rsp
	jb	.label_174
.label_199:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x240]
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x250], rsi
	sub	rdx, qword ptr [rbp - 0x250]
	sbb	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rdx
.label_174:
	lea	rsi, [rsi]
	jmp	.label_222
.label_222:
	mov	rbp, rbp
	lea	r9, [rbp - 0x80]
	mov	rsp, rsp
	lea	rcx, [rbp - 0x2b0]
	lea	rdx, [rbp - 0x20]
	lea	rdi, [rbp - 0x200]
	mov	rax, qword ptr [rbp - 0x240]
	nop	
	mov	qword ptr [rbp - 0x200], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x1f8], rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1d8]
	mov	r8d, dword ptr [rbp - 0x208]
	call	millerrabin2
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_204
	mov	byte ptr [rbp - 0x259], 0
	jmp	.label_175
.label_204:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	lea	rsi, [rsi]
	je	.label_216
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x1c0]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	call	factor
.label_216:
	mov	dword ptr [rbp - 0x8c], 0
.label_197:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x8c]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_189
	mov	rbp, rbp
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_193
	mov	byte ptr [rbp - 0x2b1], 1
	nop	
	cmp	qword ptr [rbp - 0x1b8], 0
	mov	rsp, rsp
	je	.label_201
	lea	rsi, [rsi]
	jmp	.label_213
.label_213:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2a0], rax
	mov	rax, qword ptr [rbp - 0x2a0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x2a0]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x2a0]
	imul	rdx, qword ptr [rbp - 0x1e0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x2a0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2a0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x2a0]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x2a0]
	imul	rdx, qword ptr [rbp - 0x1e0]
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2a0], rax
	mov	rax, qword ptr [rbp - 0x2a0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x2a0]
	imul	rdx, qword ptr [rbp - 0x2a0]
	nop	
	imul	rdx, qword ptr [rbp - 0x1e0]
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x2a0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x2a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x230], rax
	mov	rbp, rbp
	lea	r9, [rbp - 0x80]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x200]
	lea	rdx, [rbp - 0x220]
	nop	
	lea	rsi, [rbp - 0x20]
	lea	rax, [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x230]
	imul	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x220], rdi
	mov	qword ptr [rbp - 0x218], 0
	add	rax, 8
	mov	r8, qword ptr [rbp - 0x1d8]
	mov	rdi, rax
	call	powm2
	mov	r10b, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x201], r10b
	jne	.label_172
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x78]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x201], cl
.label_172:
	mov	al, byte ptr [rbp - 0x201]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2b1], al
.label_201:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2b8], 0
.label_212:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2b8]
	nop	
	movzx	edx, byte ptr [rbp - 0xc6]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x1c1], cl
	jae	.label_208
	nop	
	mov	al, byte ptr [rbp - 0x2b1]
	mov	byte ptr [rbp - 0x1c1], al
.label_208:
	mov	al, byte ptr [rbp - 0x1c1]
	test	al, 1
	mov	rsp, rsp
	jne	.label_188
	mov	rbp, rbp
	jmp	.label_195
.label_188:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2b8]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	qword ptr [rbp + rcx*8 - 0x1b0], 2
	lea	rsi, [rsi]
	jne	.label_218
	nop	
	jmp	.label_202
.label_202:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	lea	rsi, [rsi]
	or	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x220], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	shr	rax, 1
	mov	qword ptr [rbp - 0x218], rax
	jmp	.label_187
.label_218:
	jmp	.label_182
.label_182:
	lea	rsi, [rsi]
	jmp	.label_186
.label_186:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2b8]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + rcx*8 - 0x1b0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rcx
	mov	rcx, qword ptr [rbp - 0x98]
	shr	rcx, 1
	lea	rdi, [rdi]
	and	rcx, 0x7f
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + binvert_table]]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x280], rcx
	mov	rcx, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	shl	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x280]
	nop	
	imul	rdx, qword ptr [rbp - 0x98]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x280], rcx
	mov	rcx, qword ptr [rbp - 0x280]
	lea	rdi, [rdi]
	shl	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x280]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x280]
	imul	rdx, qword ptr [rbp - 0x98]
	sub	rcx, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x280], rcx
	mov	rcx, qword ptr [rbp - 0x280]
	mov	rbp, rbp
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x280]
	imul	rdx, qword ptr [rbp - 0x280]
	imul	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x280], rcx
	mov	rcx, qword ptr [rbp - 0x280]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x268], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0x2b8]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	cmp	rax, qword ptr [rbp + rdx*8 - 0x1b0]
	mov	rsp, rsp
	jb	.label_191
	mov	rax, qword ptr [rbp - 0x268]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x2b8]
	mov	edx, ecx
	mov	rdx, qword ptr [rbp + rdx*8 - 0x1b0]
	mov	qword ptr [rbp - 0x298], rdx
	mul	qword ptr [rbp - 0x298]
	mov	qword ptr [rbp - 0x1f0], rax
	nop	
	mov	qword ptr [rbp - 0xc0], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0xc0]
	imul	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x218], rax
	mov	rax, qword ptr [rbp - 0x268]
	nop	
	mov	qword ptr [rbp - 0x220], rax
	jmp	.label_177
.label_191:
	nop	
	mov	rax, qword ptr [rbp - 0x268]
	mov	qword ptr [rbp - 0x220], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x218], 0
.label_177:
	lea	rdi, [rdi]
	jmp	.label_209
.label_209:
	jmp	.label_187
.label_187:
	nop	
	lea	r9, [rbp - 0x80]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x200]
	nop	
	lea	rdx, [rbp - 0x220]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x20]
	lea	rax, [rbp - 0x30]
	add	rax, 8
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x1d8]
	mov	rdi, rax
	call	powm2
	mov	r10b, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x269], r10b
	mov	rsp, rsp
	jne	.label_181
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x269], cl
.label_181:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x269]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2b1], al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2b8]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x2b8], eax
	jmp	.label_212
.label_195:
	lea	rdi, [rdi]
	jmp	.label_176
.label_193:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x8c], 0x18
	lea	rsi, [rsi]
	sete	al
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x2b1], al
.label_176:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x2b1], 1
	mov	rbp, rbp
	je	.label_192
	nop	
	mov	byte ptr [rbp - 0x259], 1
	mov	rsp, rsp
	jmp	.label_175
.label_192:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x8c]
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	rbp, rbp
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_217
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x238], rax
	mov	qword ptr [rbp - 0x278], 0
	mov	qword ptr [rbp - 0xb0], 0x40
	mov	rsp, rsp
	jmp	.label_173
.label_217:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x238], 0
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x278], rax
	mov	qword ptr [rbp - 0xb0], 0x80
.label_173:
	jmp	.label_210
.label_210:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rsp, rsp
	cmp	rax, 0
	jbe	.label_219
	jmp	.label_190
.label_190:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	shl	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x278]
	mov	rsp, rsp
	shr	rcx, 0x3f
	mov	rbp, rbp
	or	rax, rcx
	mov	qword ptr [rbp - 0x238], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x278]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x278], rax
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_200
	mov	rax, qword ptr [rbp - 0x238]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_183
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x278]
	cmp	rax, qword ptr [rbp - 0x240]
	jb	.label_183
.label_200:
	nop	
	mov	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, qword ptr [rbp - 0x278]
	nop	
	mov	rsi, qword ptr [rbp - 0x240]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x228], rcx
	mov	qword ptr [rbp - 0xa0], rsi
	sub	rdx, qword ptr [rbp - 0xa0]
	sbb	rax, qword ptr [rbp - 0x228]
	mov	qword ptr [rbp - 0x238], rax
	nop	
	mov	qword ptr [rbp - 0x278], rdx
.label_183:
	jmp	.label_210
.label_219:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x278]
	mov	qword ptr [rbp - 0x20], rax
	lea	r9, [rbp - 0x80]
	lea	rcx, [rbp - 0x2b0]
	lea	rdx, [rbp - 0x20]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x200]
	mov	rsi, qword ptr [rbp - 0x1d8]
	mov	r8d, dword ptr [rbp - 0x208]
	call	millerrabin2
	test	al, 1
	jne	.label_221
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x259], 0
	lea	rdi, [rdi]
	jmp	.label_175
.label_221:
	jmp	.label_194
.label_194:
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x8c], eax
	jmp	.label_197
.label_189:
	movabs	rdi, OFFSET FLAT:.str.43
	mov	rbp, rbp
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	call	abort
.label_175:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x259]
	mov	rbp, rbp
	and	al, 1
	nop	
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x2c0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e30

	.globl factor_insert_large
	.type factor_insert_large, @function
factor_insert_large:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jbe	.label_223
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	nop	
	jne	.label_226
	lea	rdi, [rdi]
	jmp	.label_224
.label_226:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.49
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x235
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_insert_large
	call	__assert_fail
.label_224:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	jmp	.label_225
.label_223:
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	factor_insert_multiplicity
.label_225:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f00

	.globl factor_using_pollard_rho
	.type factor_using_pollard_rho, @function
factor_using_pollard_rho:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0xd0], rsi
	mov	qword ptr [rbp - 0xb8], rdx
	nop	
	mov	qword ptr [rbp - 0xa0], 1
	mov	qword ptr [rbp - 0x18], 1
	lea	rsi, [rsi]
	jmp	.label_227
.label_227:
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x40]
	jae	.label_236
	jmp	.label_251
.label_236:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.44
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x5c2
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_using_pollard_rho
	nop	
	call	__assert_fail
.label_251:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], 0
	mov	qword ptr [rbp - 0x50], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x5c], 0x40
.label_240:
	cmp	dword ptr [rbp - 0x5c], 0
	jbe	.label_246
	jmp	.label_250
.label_250:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0x3f
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc8]
	shr	rcx, 1
	or	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_252
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_239
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xc8]
	nop	
	jb	.label_239
.label_252:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xf0], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rsi
	sub	rdx, qword ptr [rbp - 0xd8]
	sbb	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	qword ptr [rbp - 0x70], rdx
.label_239:
	jmp	.label_233
.label_233:
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	eax, -1
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_240
.label_246:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_247
.label_247:
	jmp	.label_249
.label_249:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	sub	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	movzx	eax, dil
	nop	
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x98], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	and	rcx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	sub	rdx, qword ptr [rbp - 0x68]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x88], rax
.label_245:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], 1
	lea	rdi, [rdi]
	je	.label_231
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_238
	jmp	.label_229
.label_238:
	movabs	rdi, OFFSET FLAT:.str.50
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x5c8
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_using_pollard_rho
	call	__assert_fail
.label_229:
	jmp	.label_241
.label_241:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe8]
	shr	rax, 1
	lea	rsi, [rsi]
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	rsp, rsp
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x80]
	nop	
	imul	rdx, qword ptr [rbp - 0x80]
	imul	rdx, qword ptr [rbp - 0xe8]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x80]
	imul	rdx, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	sub	rax, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	shl	rax, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_228
.label_228:
	lea	rsi, [rsi]
	jmp	.label_230
.label_230:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	mulredc
	nop	
	mov	qword ptr [rbp - 0x38], rax
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	sub	rsi, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	mov	rbp, rbp
	movzx	eax, dil
	nop	
	movsxd	rdx, eax
	lea	rsi, [rsi]
	sub	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	and	rcx, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rdx, qword ptr [rbp - 0xd0]
	sub	rcx, rdx
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	jmp	.label_237
.label_237:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	nop	
	cmp	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	setb	sil
	lea	rsi, [rsi]
	and	sil, 1
	nop	
	movzx	eax, sil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	and	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x90]
	sub	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc0]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	mulredc
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0xa0]
	and	rax, 0x1f
	mov	rbp, rbp
	cmp	rax, 1
	jne	.label_258
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x40]
	call	gcd_odd
	cmp	rax, 1
	je	.label_243
	mov	rsp, rsp
	jmp	.label_248
.label_243:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
.label_258:
	lea	rdi, [rdi]
	jmp	.label_253
.label_253:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0xa0], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_230
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x48], 0
.label_255:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	jae	.label_244
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	mulredc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	sub	rsi, qword ptr [rbp - 0xd0]
	cmp	rdx, rsi
	setb	dil
	mov	rbp, rbp
	and	dil, 1
	lea	rsi, [rsi]
	movzx	eax, dil
	mov	rbp, rbp
	movsxd	rdx, eax
	sub	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	and	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rbp - 0xd0]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	jmp	.label_259
.label_259:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_255
.label_244:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_228
.label_248:
	mov	rsp, rsp
	jmp	.label_232
.label_232:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	mulredc
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	sub	rsi, qword ptr [rbp - 0xd0]
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	mov	rbp, rbp
	movzx	eax, dil
	movsxd	rdx, eax
	sub	rcx, rdx
	nop	
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	and	rcx, qword ptr [rbp - 0xe0]
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rdx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_242
.label_242:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x88]
	nop	
	setb	sil
	mov	rsp, rsp
	and	sil, 1
	movzx	eax, sil
	lea	rdi, [rdi]
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	and	rcx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rbp - 0x90]
	nop	
	sub	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdi, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	call	gcd_odd
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 1
	nop	
	je	.label_232
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_235
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_231
.label_235:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	prime_p
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_234
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	rsi, rax
	call	factor_using_pollard_rho
	mov	rbp, rbp
	jmp	.label_254
.label_234:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	call	factor_insert_multiplicity
.label_254:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	prime_p
	test	al, 1
	jne	.label_256
	jmp	.label_257
.label_256:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x40]
	call	factor_insert_multiplicity
	jmp	.label_231
.label_257:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rax, rdx
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rdx
	jmp	.label_245
.label_231:
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405770

	.globl factor_using_pollard_rho2
	.type factor_using_pollard_rho2, @function
factor_using_pollard_rho2:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x200
	mov	qword ptr [rbp - 0x78], rdi
	nop	
	mov	qword ptr [rbp - 0x180], rsi
	mov	qword ptr [rbp - 0x110], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x148], rcx
	mov	qword ptr [rbp - 0x168], 1
	mov	qword ptr [rbp - 0xf0], 1
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	nop	
	jae	.label_287
	mov	qword ptr [rbp - 0x80], 1
	mov	qword ptr [rbp - 0x160], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], 0x40
	jmp	.label_311
.label_287:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x160], 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], 0x80
.label_311:
	jmp	.label_260
.label_260:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rcx
	nop	
	cmp	rax, 0
	jbe	.label_265
	jmp	.label_284
.label_284:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	shl	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	shr	rcx, 0x3f
	or	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	shl	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	ja	.label_276
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	cmp	rax, qword ptr [rbp - 0x78]
	jne	.label_295
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	cmp	rax, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	jb	.label_295
.label_276:
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x128], rcx
	nop	
	mov	qword ptr [rbp - 0xd0], rsi
	sub	rdx, qword ptr [rbp - 0xd0]
	sbb	rax, qword ptr [rbp - 0x128]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x160], rdx
.label_295:
	lea	rdi, [rdi]
	jmp	.label_260
.label_265:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	jmp	.label_262
.label_262:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e8], rcx
	mov	qword ptr [rbp - 0xf8], rsi
	add	rdx, qword ptr [rbp - 0xf8]
	adc	rax, qword ptr [rbp - 0x1e8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x78]
	ja	.label_268
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x78]
	jne	.label_267
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x180]
	nop	
	jb	.label_267
.label_268:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x180]
	nop	
	mov	qword ptr [rbp - 0x150], rcx
	mov	qword ptr [rbp - 0x188], rsi
	sub	rdx, qword ptr [rbp - 0x188]
	sbb	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdx
.label_267:
	jmp	.label_315
.label_315:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x198], rax
	mov	qword ptr [rbp - 0x170], rax
.label_320:
	nop	
	mov	al, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb1], al
	lea	rsi, [rsi]
	jne	.label_261
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x180], 1
	setne	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb1], al
.label_261:
	mov	al, byte ptr [rbp - 0xb1]
	test	al, 1
	jne	.label_272
	jmp	.label_264
.label_272:
	mov	rsp, rsp
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rax, qword ptr [rbp - 0x1b8]
	lea	rsi, [rsi]
	shr	rax, 1
	and	rax, 0x7f
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x1b8]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x90]
	imul	rdx, qword ptr [rbp - 0x1b8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	shl	rax, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x90]
	nop	
	imul	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rbp - 0x1b8]
	sub	rax, rdx
	nop	
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_280
.label_280:
	lea	rsi, [rsi]
	jmp	.label_294
.label_294:
	lea	rdi, [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x48]
	nop	
	mov	r9, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	mov	r10, qword ptr [rbp - 0xe8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	lea	rsi, [rsi]
	call	mulredc2
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x40], rdx
	add	rcx, qword ptr [rbp - 0x40]
	adc	rax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	ja	.label_291
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x78]
	nop	
	jne	.label_314
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x180]
	jb	.label_314
.label_291:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1e0], rsi
	sub	rdx, qword ptr [rbp - 0x1e0]
	sbb	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdx
.label_314:
	jmp	.label_299
.label_299:
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rcx
	mov	qword ptr [rbp - 0x1d8], rsi
	sub	rdx, qword ptr [rbp - 0x1d8]
	sbb	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x120], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x190], rdx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x120], 0
	jge	.label_275
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x120]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x178], rsi
	add	rdx, qword ptr [rbp - 0x178]
	adc	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x120], rax
	mov	qword ptr [rbp - 0x190], rdx
.label_275:
	jmp	.label_285
.label_285:
	lea	rdi, [rbp - 0x108]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x120]
	mov	r8, qword ptr [rbp - 0x190]
	mov	r9, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x180]
	mov	r10, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x168]
	and	rax, 0x1f
	mov	rbp, rbp
	cmp	rax, 1
	lea	rsi, [rsi]
	jne	.label_270
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	r8, qword ptr [rbp - 0x180]
	call	gcd2_odd
	mov	qword ptr [rbp - 0x1c8], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	jne	.label_289
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x1c8], 1
	je	.label_298
.label_289:
	nop	
	jmp	.label_301
.label_298:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x170], rax
.label_270:
	jmp	.label_309
.label_309:
	mov	rax, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	add	rax, -1
	mov	qword ptr [rbp - 0x168], rax
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_294
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x168], rax
	mov	rax, qword ptr [rbp - 0xf0]
	shl	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_283:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x168]
	jae	.label_269
	nop	
	lea	rdi, [rbp - 0x108]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x48]
	mov	r9, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rdx
	add	rcx, qword ptr [rbp - 0x138]
	adc	rax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	ja	.label_293
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	jne	.label_318
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	jb	.label_318
.label_293:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x140], rcx
	nop	
	mov	qword ptr [rbp - 0x100], rsi
	sub	rdx, qword ptr [rbp - 0x100]
	sbb	rax, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x48], rdx
.label_318:
	lea	rsi, [rsi]
	jmp	.label_279
.label_279:
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_283
.label_269:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x170], rax
	jmp	.label_280
.label_301:
	nop	
	jmp	.label_296
.label_296:
	lea	rdi, [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x170], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x28], rdx
	add	rcx, qword ptr [rbp - 0x28]
	adc	rax, 0
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x170], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x78]
	ja	.label_317
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	jne	.label_271
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rbp - 0x180]
	jb	.label_271
.label_317:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x118], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	sub	rdx, qword ptr [rbp - 0x10]
	sbb	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x170], rdx
.label_271:
	jmp	.label_302
.label_302:
	jmp	.label_303
.label_303:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rsi, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0xc0], rsi
	sub	rdx, qword ptr [rbp - 0xc0]
	sbb	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x120], rax
	mov	qword ptr [rbp - 0x190], rdx
	cmp	qword ptr [rbp - 0x120], 0
	mov	rbp, rbp
	jge	.label_304
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xa8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rsi
	add	rdx, qword ptr [rbp - 0x68]
	adc	rax, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rbp - 0x120], rax
	mov	qword ptr [rbp - 0x190], rdx
.label_304:
	jmp	.label_277
.label_277:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x120]
	nop	
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x180]
	call	gcd2_odd
	mov	qword ptr [rbp - 0x1c8], rax
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1c9], cl
	jne	.label_288
	cmp	qword ptr [rbp - 0x1c8], 1
	sete	al
	nop	
	mov	byte ptr [rbp - 0x1c9], al
.label_288:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x1c9]
	test	al, 1
	jne	.label_296
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_307
	nop	
	jmp	.label_310
.label_310:
	jmp	.label_312
.label_312:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x1c0]
	shr	rax, 1
	mov	rbp, rbp
	and	rax, 0x7f
	mov	rsp, rsp
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	shl	rax, 1
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0xd8]
	imul	rdx, qword ptr [rbp - 0x1c0]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0xd8]
	imul	rdx, qword ptr [rbp - 0x1c0]
	sub	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0xd8]
	nop	
	imul	rdx, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	sub	rax, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x1c8]
	nop	
	jb	.label_313
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x1b0], rcx
	mul	qword ptr [rbp - 0x1b0]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	qword ptr [rbp - 0x88], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x180], rax
	mov	rsp, rsp
	jmp	.label_319
.label_313:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x180], rax
	nop	
	mov	qword ptr [rbp - 0x78], 0
.label_319:
	jmp	.label_286
.label_286:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1c8]
	call	prime_p
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_290
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_305
.label_290:
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rsi, qword ptr [rbp - 0x1c8]
	nop	
	call	factor_insert_multiplicity
.label_305:
	nop	
	jmp	.label_306
.label_307:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_300
	mov	rax, qword ptr [rbp - 0x180]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	jne	.label_300
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	mov	rdx, rax
	call	factor_using_pollard_rho2
	lea	rsi, [rsi]
	jmp	.label_264
.label_300:
	mov	rbp, rbp
	jmp	.label_273
.label_273:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	shr	rax, 1
	and	rax, 0x7f
	mov	rsp, rsp
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	nop	
	mov	eax, ecx
	nop	
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	imul	rdx, qword ptr [rbp - 0x98]
	imul	rdx, qword ptr [rbp - 0x1a8]
	nop	
	sub	rax, rdx
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	imul	rdx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x98]
	imul	rdx, qword ptr [rbp - 0x98]
	imul	rdx, qword ptr [rbp - 0x1a8]
	sub	rax, rdx
	nop	
	mov	qword ptr [rbp - 0x98], rax
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x130], rax
	mov	rax, qword ptr [rbp - 0x130]
	imul	rax, qword ptr [rbp - 0x180]
	nop	
	mov	qword ptr [rbp - 0x180], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1c8]
	nop	
	call	prime2_p
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_281
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x1c8]
	nop	
	mov	rax, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	rdx, rax
	nop	
	call	factor_using_pollard_rho2
	lea	rsi, [rsi]
	jmp	.label_292
.label_281:
	mov	rdi, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	call	factor_insert_large
.label_292:
	lea	rsi, [rsi]
	jmp	.label_306
.label_306:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_308
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	call	prime_p
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_297
	jmp	.label_316
.label_297:
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	call	factor_insert_multiplicity
	jmp	.label_264
.label_316:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x180]
	mov	rsi, qword ptr [rbp - 0x110]
	mov	rdx, qword ptr [rbp - 0x148]
	call	factor_using_pollard_rho
	jmp	.label_264
.label_308:
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x180]
	call	prime2_p
	mov	rbp, rbp
	test	al, 1
	jne	.label_266
	jmp	.label_263
.label_266:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x180]
	call	factor_insert_large
	lea	rsi, [rsi]
	jmp	.label_264
.label_263:
	lea	rdi, [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	r8, qword ptr [rbp - 0x180]
	call	mod2
	nop	
	lea	rdi, [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x180]
	call	mod2
	nop	
	lea	rdi, [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x198], rax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	r8, qword ptr [rbp - 0x180]
	call	mod2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x170], rax
	lea	rsi, [rsi]
	jmp	.label_320
.label_264:
	nop	
	add	rsp, 0x200
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406720

	.globl factor_insert_multiplicity
	.type factor_insert_multiplicity, @function
factor_insert_multiplicity:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edx
	mov	rsi, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rsi + 0xfa]
	nop	
	mov	dword ptr [rbp - 0x24], edx
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	add	rsi, 0x10
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	add	rsi, 0xe0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x24]
	sub	edx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edx
.label_326:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_321
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_322
	lea	rsi, [rsi]
	jmp	.label_321
.label_322:
	mov	rsp, rsp
	jmp	.label_324
.label_324:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -1
	nop	
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_326
.label_321:
	cmp	dword ptr [rbp - 0x14], 0
	nop	
	jl	.label_323
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x14]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	je	.label_327
.label_323:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	sub	eax, 1
	mov	dword ptr [rbp - 0x10], eax
.label_328:
	mov	eax, dword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	jle	.label_329
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	edx, 1
	movsxd	rcx, edx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + rcx*8], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dil, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x10]
	add	edx, 1
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], dil
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	eax, -1
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_328
.label_329:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dil, cl
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x14]
	nop	
	add	ecx, 1
	movsxd	rax, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rdx + rax], dil
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	add	ecx, 1
	mov	dil, cl
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax + 0xfa], dil
	jmp	.label_325
.label_327:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movzx	esi, byte ptr [rdx + rcx]
	add	esi, eax
	mov	dil, sil
	mov	byte ptr [rdx + rcx], dil
.label_325:
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406900

	.globl factor_insert_refind
	.type factor_insert_refind, @function
factor_insert_refind:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 4], edx
	mov	dword ptr [rbp - 0x14], ecx
	mov	dword ptr [rbp - 8], 0
.label_331:
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x14]
	nop	
	jae	.label_330
	mov	eax, dword ptr [rbp - 4]
	add	eax, dword ptr [rbp - 8]
	mov	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	ecx, eax
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jmp	.label_331
.label_330:
	mov	rbp, rbp
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	factor_insert_multiplicity
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069a0

	.globl prime_p
	.type prime_p, @function
prime_p:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x220
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1a0], rdi
	cmp	qword ptr [rbp - 0x1a0], 1
	lea	rdi, [rdi]
	ja	.label_344
	mov	byte ptr [rbp - 0x15d], 0
	mov	rbp, rbp
	jmp	.label_337
.label_344:
	cmp	qword ptr [rbp - 0x1a0], 0x17ded79
	jae	.label_359
	mov	byte ptr [rbp - 0x15d], 1
	jmp	.label_337
.label_359:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x170], rax
	mov	dword ptr [rbp - 0x1b0], 0
.label_346:
	mov	rax, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	and	rax, 1
	cmp	rax, 0
	nop	
	jne	.label_341
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x170]
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x170], rax
	mov	eax, dword ptr [rbp - 0x1b0]
	add	eax, 1
	mov	dword ptr [rbp - 0x1b0], eax
	mov	rbp, rbp
	jmp	.label_346
.label_341:
	mov	qword ptr [rbp - 0x1b8], 2
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x188], rax
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x1f0]
	imul	rdx, qword ptr [rbp - 0x1f0]
	imul	rdx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1f0]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x1f0]
	imul	rdx, qword ptr [rbp - 0x1f0]
	imul	rdx, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x1f0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x1f0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x1f0]
	imul	rdx, qword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x188]
	sub	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1f0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	qword ptr [rbp - 0x210], rax
	jmp	.label_363
.label_363:
	mov	rbp, rbp
	jmp	.label_356
.label_356:
	mov	eax, 1
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	jae	.label_361
	mov	rbp, rbp
	jmp	.label_370
.label_361:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.42
	mov	rsp, rsp
	mov	edx, 0x4c4
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.prime_p
	call	__assert_fail
.label_370:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	qword ptr [rbp - 0x198], 0
	nop	
	mov	qword ptr [rbp - 0x190], 1
	nop	
	mov	qword ptr [rbp - 0x1e0], 0
	mov	qword ptr [rbp - 0x180], 0
	mov	dword ptr [rbp - 0x164], 0x40
.label_351:
	cmp	dword ptr [rbp - 0x164], 0
	mov	rsp, rsp
	jbe	.label_371
	lea	rsi, [rsi]
	jmp	.label_336
.label_336:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	shl	rax, 0x3f
	nop	
	mov	rcx, qword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	shr	rcx, 1
	mov	rsp, rsp
	or	rax, rcx
	mov	qword ptr [rbp - 0x198], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	shr	rax, 1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0x180], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_339
	mov	rax, qword ptr [rbp - 0x190]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	jne	.label_347
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x198]
	jb	.label_347
.label_339:
	nop	
	mov	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x180], rax
	nop	
	mov	rax, qword ptr [rbp - 0x190]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x208], rcx
	mov	qword ptr [rbp - 0x150], rsi
	sub	rdx, qword ptr [rbp - 0x150]
	sbb	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x190], rax
	mov	qword ptr [rbp - 0x1e0], rdx
.label_347:
	jmp	.label_335
.label_335:
	mov	eax, dword ptr [rbp - 0x164]
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x164], eax
	mov	rbp, rbp
	jmp	.label_351
.label_371:
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x200], rax
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_362
.label_362:
	jmp	.label_353
.label_353:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x200]
	nop	
	mov	rsi, qword ptr [rbp - 0x1a0]
	sub	rsi, qword ptr [rbp - 0x200]
	cmp	rdx, rsi
	mov	rsp, rsp
	setb	dil
	lea	rdi, [rdi]
	and	dil, 1
	movzx	eax, dil
	movsxd	rdx, eax
	mov	rbp, rbp
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x1c0], rcx
	mov	rcx, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	and	rcx, qword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x200]
	nop	
	mov	rdx, qword ptr [rbp - 0x1a0]
	sub	rdx, qword ptr [rbp - 0x200]
	lea	rsi, [rsi]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x218], rcx
	mov	rdi, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x210]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x170]
	mov	r8d, dword ptr [rbp - 0x1b0]
	nop	
	mov	r9, qword ptr [rbp - 0x200]
	lea	rsi, [rsi]
	call	millerrabin
	mov	rbp, rbp
	test	al, 1
	jne	.label_333
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15d], 0
	mov	rbp, rbp
	jmp	.label_337
.label_333:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_350
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edi, eax
	lea	rdx, [rbp - 0x140]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	sub	rcx, 1
	mov	rsi, rcx
	call	factor
.label_350:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x15c], 0
.label_367:
	mov	eax, dword ptr [rbp - 0x15c]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, 0x29c
	jae	.label_364
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	mov	rbp, rbp
	je	.label_372
	mov	byte ptr [rbp - 9], 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 0
.label_332:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 0x46]
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1a9], cl
	jae	.label_342
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x1a9], al
.label_342:
	mov	al, byte ptr [rbp - 0x1a9]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_354
	jmp	.label_358
.label_354:
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	rsp, rsp
	sub	rax, 1
	mov	ecx, dword ptr [rbp - 0x34]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x1d0], rdx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1d0]
	nop	
	div	qword ptr [rbp + rsi*8 - 0x130]
	mov	r8, qword ptr [rbp - 0x1a0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x210]
	nop	
	mov	r9, qword ptr [rbp - 0x200]
	mov	rsi, rax
	mov	rdx, r8
	lea	rdi, [rdi]
	mov	r8, r9
	call	powm
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x200]
	setne	r10b
	and	r10b, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], r10b
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_332
.label_358:
	mov	rbp, rbp
	jmp	.label_368
.label_372:
	cmp	dword ptr [rbp - 0x15c], 0x18
	sete	al
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 9], al
.label_368:
	mov	rbp, rbp
	test	byte ptr [rbp - 9], 1
	mov	rsp, rsp
	je	.label_334
	mov	byte ptr [rbp - 0x15d], 1
	jmp	.label_337
.label_334:
	nop	
	mov	eax, dword ptr [rbp - 0x15c]
	mov	ecx, eax
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	ecx, eax
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x1b8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x200]
	mov	rdx, qword ptr [rbp - 0x1b8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	rax, rcx
	mul	qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x20], 0
	sete	sil
	mov	rbp, rbp
	and	sil, 1
	movzx	edi, sil
	mov	rbp, rbp
	movsxd	rax, edi
	nop	
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_345
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x218], rdx
	nop	
	jmp	.label_343
.label_345:
	jmp	.label_349
.label_349:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x1a0]
	jae	.label_352
	jmp	.label_340
.label_352:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.45
	nop	
	movabs	rsi, OFFSET FLAT:.str.42
	mov	rsp, rsp
	mov	edx, 0x4f4
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.prime_p
	mov	rbp, rbp
	call	__assert_fail
.label_340:
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x158], rax
	mov	qword ptr [rbp - 0x1c8], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x174], 0x40
.label_348:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x174], 0
	nop	
	jbe	.label_357
	mov	rbp, rbp
	jmp	.label_366
.label_366:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	shl	rax, 0x3f
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	shr	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	shl	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x1f8]
	nop	
	cmp	rax, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	ja	.label_369
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1f8]
	cmp	rax, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	jne	.label_338
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x1c8]
	jb	.label_338
.label_369:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	rcx, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1d8], rcx
	mov	qword ptr [rbp - 0x148], rsi
	sub	rdx, qword ptr [rbp - 0x148]
	sbb	rax, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1f8], rax
	mov	qword ptr [rbp - 0x30], rdx
.label_338:
	jmp	.label_360
.label_360:
	nop	
	mov	eax, dword ptr [rbp - 0x174]
	add	eax, -1
	mov	dword ptr [rbp - 0x174], eax
	jmp	.label_348
.label_357:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x218], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_343
.label_343:
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0x210]
	mov	rdx, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x170]
	nop	
	mov	r8d, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x200]
	nop	
	call	millerrabin
	nop	
	test	al, 1
	jne	.label_355
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x15d], 0
	jmp	.label_337
.label_355:
	jmp	.label_365
.label_365:
	mov	eax, dword ptr [rbp - 0x15c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x15c], eax
	lea	rsi, [rsi]
	jmp	.label_367
.label_364:
	nop	
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	call	abort
.label_337:
	mov	al, byte ptr [rbp - 0x15d]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x220
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072d0

	.globl millerrabin2
	.type millerrabin2, @function
millerrabin2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rax, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], r9
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 8]
	mov	r9, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rdi, rax
	call	powm2
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rcx]
	jne	.label_376
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jne	.label_376
	mov	byte ptr [rbp - 0x3d], 1
	lea	rsi, [rsi]
	jmp	.label_375
.label_376:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x60], rsi
	sub	rdx, qword ptr [rbp - 0x60]
	sbb	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x38], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jne	.label_373
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	jne	.label_373
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x3d], 1
	mov	rsp, rsp
	jmp	.label_375
.label_373:
	mov	dword ptr [rbp - 0x3c], 1
.label_380:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	jae	.label_377
	mov	rbp, rbp
	lea	rdi, [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r9, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	r10, qword ptr [rbp - 8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	jne	.label_379
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	jne	.label_379
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3d], 1
	nop	
	jmp	.label_375
.label_379:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rcx]
	jne	.label_374
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jne	.label_374
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3d], 0
	jmp	.label_375
.label_374:
	jmp	.label_378
.label_378:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_380
.label_377:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x3d], 0
.label_375:
	mov	al, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407510

	.globl powm2
	.type powm2, @function
powm2:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x64], 0x40
.label_385:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x64], 0
	lea	rsi, [rsi]
	jbe	.label_384
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 1
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	je	.label_383
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	nop	
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_383:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x60]
	mov	r9, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	add	eax, -1
	mov	dword ptr [rbp - 0x64], eax
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	jmp	.label_385
.label_384:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_381:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jbe	.label_382
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 1
	cmp	rax, 0
	nop	
	je	.label_386
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x60]
	nop	
	mov	r9, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_386:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	rsp, rsp
	call	mulredc2
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	shr	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_381
.label_382:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x80
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077d0

	.globl millerrabin
	.type millerrabin, @function
millerrabin:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	qword ptr [rbp - 0x48], r9
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	powm
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	je	.label_388
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jne	.label_391
.label_388:
	nop	
	mov	byte ptr [rbp - 0x49], 1
	mov	rbp, rbp
	jmp	.label_393
.label_391:
	mov	dword ptr [rbp - 0x1c], 1
.label_390:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 0x34]
	jae	.label_392
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	mulredc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_394
	mov	byte ptr [rbp - 0x49], 1
	jmp	.label_393
.label_394:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_389
	mov	byte ptr [rbp - 0x49], 0
	mov	rsp, rsp
	jmp	.label_393
.label_389:
	mov	rbp, rbp
	jmp	.label_387
.label_387:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_390
.label_392:
	nop	
	mov	byte ptr [rbp - 0x49], 0
.label_393:
	nop	
	mov	al, byte ptr [rbp - 0x49]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407920

	.globl powm
	.type powm, @function
powm:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], r8
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	and	rcx, 1
	cmp	rcx, 0
	je	.label_395
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
.label_395:
	jmp	.label_397
.label_397:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_398
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	call	mulredc
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	and	rax, 1
	cmp	rax, 0
	nop	
	je	.label_396
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	call	mulredc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_396:
	mov	rbp, rbp
	jmp	.label_397
.label_398:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a10

	.globl mulredc
	.type mulredc, @function
mulredc:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	rax, rcx
	mul	qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x58], rdx
	mov	rax, qword ptr [rbp - 0x48]
	imul	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mul	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x50], rdx
	mov	rax, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_399
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_399:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ac0

	.globl mulredc2
	.type mulredc2, @function
mulredc2:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x128
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	xor	r11d, r11d
	mov	ebx, r11d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0xa8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x120], r9
	mov	qword ptr [rbp - 0x100], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	sub	rbx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xc8], rbx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	shr	rax, 0x3f
	nop	
	cmp	rax, 0
	jne	.label_400
	lea	rdi, [rdi]
	jmp	.label_405
.label_400:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.46
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x3e7
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	call	__assert_fail
.label_405:
	mov	rax, qword ptr [rbp - 0xb0]
	shr	rax, 0x3f
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_401
	jmp	.label_406
.label_401:
	nop	
	movabs	rdi, OFFSET FLAT:.str.47
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x3e8
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	call	__assert_fail
.label_406:
	mov	rax, qword ptr [rbp - 0x120]
	shr	rax, 0x3f
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_404
	jmp	.label_402
.label_404:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.48
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.42
	nop	
	mov	edx, 0x3e9
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	lea	rsi, [rsi]
	call	__assert_fail
.label_402:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rcx
	mul	qword ptr [rbp - 0xc0]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rcx
	mul	qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xd8], rax
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	imul	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rcx
	mul	qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], rcx
	mul	qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x108], rdx
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	setne	sil
	mov	rbp, rbp
	and	sil, 1
	mov	rsp, rsp
	movzx	edi, sil
	movsxd	rax, edi
	nop	
	add	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rdx
	add	rcx, qword ptr [rbp - 0x128]
	adc	rax, 0
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdx
	add	rcx, qword ptr [rbp - 0x10]
	adc	rax, 0
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0xd8], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	r8, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x130], rcx
	mov	qword ptr [rbp - 0xd0], r8
	add	rdx, qword ptr [rbp - 0xd0]
	adc	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0xd8], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x118], rcx
	mul	qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xa0], rcx
	mul	qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x108], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x48], rdx
	add	rcx, qword ptr [rbp - 0x48]
	adc	rax, 0
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0xc8]
	imul	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rdx
	add	rcx, qword ptr [rbp - 0xf8]
	adc	rax, 0
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mul	qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xb8], rax
	mov	qword ptr [rbp - 0x88], rdx
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x98], rcx
	mul	qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rdx
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	movzx	edi, sil
	mov	rbp, rbp
	movsxd	rax, edi
	add	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xe0], rdx
	add	rcx, qword ptr [rbp - 0xe0]
	adc	rax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rdx
	add	rcx, qword ptr [rbp - 0xe8]
	adc	rax, 0
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0xd8], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	r8, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rcx
	mov	qword ptr [rbp - 0x68], r8
	add	rdx, qword ptr [rbp - 0x68]
	adc	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	ja	.label_407
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x120]
	jne	.label_403
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x100]
	jb	.label_403
.label_407:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	qword ptr [rbp - 0x80], rsi
	sub	rdx, qword ptr [rbp - 0x80]
	sbb	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rdx
.label_403:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	add	rsp, 0x128
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408030

	.globl gcd_odd
	.type gcd_odd, @function
gcd_odd:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	and	rsi, 1
	mov	rbp, rbp
	cmp	rsi, 0
	mov	rsp, rsp
	jne	.label_412
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_412:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_413
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_409
.label_413:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	shr	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_411:
	nop	
	jmp	.label_408
.label_408:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	and	rax, 1
	nop	
	cmp	rax, 0
	jne	.label_410
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_408
.label_410:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	shr	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_414
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	shl	rax, 1
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_409
.label_414:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sar	rax, 0x3f
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	and	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	xor	rax, qword ptr [rbp - 8]
	sub	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_411
.label_409:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408180

	.globl gcd2_odd
	.type gcd2_odd, @function
gcd2_odd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], r8
	mov	rcx, qword ptr [rbp - 0x50]
	and	rcx, 1
	lea	rsi, [rsi]
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_415
	lea	rdi, [rdi]
	jmp	.label_426
.label_415:
	movabs	rdi, OFFSET FLAT:.str.51
	movabs	rsi, OFFSET FLAT:.str.42
	mov	rsp, rsp
	mov	edx, 0x1e3
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gcd2_odd
	call	__assert_fail
.label_426:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	or	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_433
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_420
.label_433:
	jmp	.label_421
.label_421:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	and	rax, 1
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_429
	lea	rsi, [rsi]
	jmp	.label_416
.label_416:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rax, 0x3f
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	shr	rcx, 1
	or	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_421
.label_429:
	mov	rsp, rsp
	jmp	.label_425
.label_425:
	mov	rax, qword ptr [rbp - 0x48]
	or	rax, qword ptr [rbp - 0x28]
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_418
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rax], 0
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	gcd_odd
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_420
.label_418:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	ja	.label_419
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_424
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	jbe	.label_424
.label_419:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	sub	rdx, qword ptr [rbp - 0x18]
	sbb	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x40], rdx
.label_427:
	jmp	.label_428
.label_428:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rax, 0x3f
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	shr	rcx, 1
	or	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shr	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_431
.label_431:
	mov	rax, qword ptr [rbp - 0x40]
	and	rax, 1
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_427
	jmp	.label_417
.label_424:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	ja	.label_436
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jne	.label_422
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jbe	.label_422
.label_436:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x38], rsi
	sub	rdx, qword ptr [rbp - 0x38]
	sbb	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rdx
.label_423:
	nop	
	jmp	.label_435
.label_435:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_430
.label_430:
	mov	rax, qword ptr [rbp - 0x50]
	and	rax, 1
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_423
	mov	rbp, rbp
	jmp	.label_434
.label_422:
	nop	
	jmp	.label_432
.label_434:
	jmp	.label_417
.label_417:
	nop	
	jmp	.label_425
.label_432:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_420:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408470

	.globl mod2
	.type mod2, @function
mod2:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x60], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x80], r8
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_443
	jmp	.label_438
.label_443:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.52
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x1a3
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mod2
	mov	rsp, rsp
	call	__assert_fail
.label_438:
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	jne	.label_446
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_441
.label_446:
	mov	rsp, rsp
	jmp	.label_444
.label_444:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	bsr	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	xor	rax, 0x3f
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], ecx
	jmp	.label_437
.label_437:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	bsr	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	xor	rax, 0x3f
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xc], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, dword ptr [rbp - 0xc]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	mov	eax, 0x40
	mov	rcx, qword ptr [rbp - 0x68]
	mov	edx, dword ptr [rbp - 0x54]
	mov	esi, edx
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	shl	rsi, cl
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x54]
	mov	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	shr	rdi, cl
	or	rsi, rdi
	mov	qword ptr [rbp - 0x68], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x80]
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, eax
	nop	
	shl	rsi, cl
	nop	
	mov	qword ptr [rbp - 0x80], rsi
	mov	dword ptr [rbp - 0x2c], 0
.label_448:
	mov	eax, dword ptr [rbp - 0x2c]
	cmp	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	jge	.label_442
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x68]
	ja	.label_447
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x68]
	jne	.label_445
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x80]
	nop	
	jb	.label_445
.label_447:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 8], rsi
	sub	rdx, qword ptr [rbp - 8]
	sbb	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x60], rdx
.label_445:
	jmp	.label_439
.label_439:
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	shr	rcx, 1
	or	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_440
.label_440:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_448
.label_442:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_441:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x80
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086c0

	.globl mp_factor_init
	.type mp_factor_init, @function
mp_factor_init:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl mp_factor_using_division
	.type mp_factor_using_division, @function
mp_factor_using_division:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	test	byte ptr [byte ptr [dev_debug]],  1
	mov	rsp, rsp
	je	.label_449
	nop	
	movabs	rsi, OFFSET FLAT:.str.54
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x2c], eax
.label_449:
	jmp	.label_451
.label_451:
	lea	rdi, [rbp - 0x40]
	lea	rsi, [rsi]
	call	__gmpz_init
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	__gmpz_scan1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	call	__gmpz_fdiv_q_2exp
.label_456:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_450
	mov	eax, 2
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	mp_factor_insert_ui
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, -1
	mov	qword ptr [rbp - 0x28], rsi
	jmp	.label_456
.label_450:
	mov	qword ptr [rbp - 0x28], 3
	mov	dword ptr [rbp - 0xc], 1
.label_454:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0x29c
	ja	.label_453
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	__gmpz_divisible_ui_p
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_457
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	add	ecx, 1
	mov	dword ptr [rbp - 0xc], ecx
	mov	eax, eax
	mov	edx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rdx * 1) + primes_diff]]
	mov	edx, eax
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rdx
	call	__gmpz_cmp_ui
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_452
	lea	rsi, [rsi]
	jmp	.label_453
.label_452:
	jmp	.label_455
.label_457:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	__gmpz_tdiv_q_ui
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	call	mp_factor_insert_ui
.label_455:
	lea	rdi, [rdi]
	jmp	.label_454
.label_453:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x40]
	lea	rdi, [rdi]
	call	__gmpz_clear
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088c0

	.globl mp_prime_p
	.type mp_prime_p, @function
mp_prime_p:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x90
	nop	
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	__gmpz_cmp_ui
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	jg	.label_472
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x89], 0
	jmp	.label_462
.label_472:
	mov	eax, 0x17ded79
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_460
	mov	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	jmp	.label_462
.label_460:
	xor	eax, eax
	mov	r8d, eax
	lea	rcx, [rbp - 0x60]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x30]
	nop	
	lea	rsi, [rbp - 0x50]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x20]
	mov	al, 0
	lea	rsi, [rsi]
	call	__gmpz_inits
	mov	rsp, rsp
	mov	r9d, 1
	mov	edx, r9d
	mov	rbp, rbp
	lea	rdi, [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	__gmpz_sub_ui
	xor	r9d, r9d
	mov	rbp, rbp
	mov	esi, r9d
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x30]
	nop	
	call	__gmpz_scan1
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdx, qword ptr [rbp - 0x38]
	call	__gmpz_tdiv_q_2exp
	mov	r9d, 2
	mov	rbp, rbp
	mov	esi, r9d
	mov	rbp, rbp
	lea	rdi, [rbp - 0x50]
	mov	rsp, rsp
	call	__gmpz_set_ui
	mov	rsp, rsp
	lea	r8, [rbp - 0x20]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x60]
	lea	rdx, [rbp - 0x50]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	r9, qword ptr [rbp - 0x38]
	call	mp_millerrabin
	test	al, 1
	nop	
	jne	.label_473
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_465
.label_473:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	lea	rdi, [rdi]
	je	.label_476
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rbp - 0x60]
	call	__gmpz_set
	mov	rsp, rsp
	lea	rsi, [rbp - 0x88]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x60]
	nop	
	call	mp_factor
.label_476:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], 0
.label_469:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0x29c
	jae	.label_467
	mov	rsp, rsp
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_471
	nop	
	mov	byte ptr [rbp - 1], 1
	mov	qword ptr [rbp - 0x70], 0
.label_458:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x78]
	mov	byte ptr [rbp - 0x61], cl
	jae	.label_474
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	mov	byte ptr [rbp - 0x61], al
.label_474:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x61]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_459
	jmp	.label_475
.label_459:
	lea	rsi, [rbp - 0x30]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x88]
	mov	rdx, rax
	mov	rsp, rsp
	call	__gmpz_divexact
	lea	rax, [rbp - 0x60]
	lea	rsi, [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rdx, rax
	call	__gmpz_powm
	lea	rsi, [rsi]
	mov	r8d, 1
	mov	rbp, rbp
	mov	esi, r8d
	lea	rdi, [rbp - 0x60]
	call	__gmpz_cmp_ui
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	setne	r9b
	and	r9b, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], r9b
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_458
.label_475:
	lea	rsi, [rsi]
	jmp	.label_463
.label_471:
	cmp	dword ptr [rbp - 8], 0x18
	sete	al
	and	al, 1
	nop	
	mov	byte ptr [rbp - 1], al
.label_463:
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	je	.label_468
	lea	rdi, [rdi]
	jmp	.label_470
.label_468:
	nop	
	lea	rax, [rbp - 0x50]
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rbp, rbp
	movzx	ecx,  byte ptr [byte ptr [+ (rdx * 1) + primes_diff]]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	lea	r8, [rbp - 0x20]
	lea	rcx, [rbp - 0x60]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x50]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	mp_millerrabin
	test	al, 1
	mov	rbp, rbp
	jne	.label_466
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_470
.label_466:
	jmp	.label_461
.label_461:
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	jmp	.label_469
.label_467:
	movabs	rdi, OFFSET FLAT:.str.43
	mov	rsp, rsp
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	call	abort
.label_470:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_464
	lea	rdi, [rbp - 0x88]
	call	mp_factor_clear
.label_464:
	mov	rsp, rsp
	jmp	.label_465
.label_465:
	xor	eax, eax
	mov	r8d, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x60]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x30]
	lea	rsi, [rbp - 0x50]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x20]
	mov	al, 0
	lea	rsi, [rsi]
	call	__gmpz_clears
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x89], al
.label_462:
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c90

	.globl mp_factor_insert
	.type mp_factor_insert, @function
mp_factor_insert:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rsi, 1
	mov	qword ptr [rbp - 0x20], rsi
.label_483:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jl	.label_482
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	__gmpz_cmp
	cmp	eax, 0
	nop	
	jg	.label_484
	mov	rbp, rbp
	jmp	.label_482
.label_484:
	mov	rsp, rsp
	jmp	.label_480
.label_480:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_483
.label_482:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	jl	.label_481
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, rax
	call	__gmpz_cmp
	nop	
	cmp	eax, 0
	je	.label_478
.label_481:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rcx, 1
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	nop	
	call	xrealloc
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	rbp, rbp
	shl	rcx, 3
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	xrealloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	__gmpz_init
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_479:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jle	.label_477
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	__gmpz_set
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rcx*8 + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_479
.label_477:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	lea	rsi, [rsi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	__gmpz_set
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rsi + rax*8 + 8], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_485
.label_478:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rdx, 1
	mov	qword ptr [rcx + rax*8], rdx
.label_485:
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f20

	.globl mp_factor_using_pollard_rho
	.type mp_factor_using_pollard_rho, @function
mp_factor_using_pollard_rho:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0xf8
	mov	qword ptr [rbp - 0xa8], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_496
	movabs	rsi, OFFSET FLAT:.str.55
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	dword ptr [rbp - 0x2c], eax
.label_496:
	jmp	.label_503
.label_503:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x20]
	lea	rdi, [rbp - 0x60]
	mov	al, 0
	call	__gmpz_inits
	mov	ecx, 2
	mov	rbp, rbp
	mov	esi, ecx
	lea	rdi, [rbp - 0x90]
	call	__gmpz_init_set_si
	lea	rdi, [rdi]
	mov	ecx, 2
	mov	rsp, rsp
	mov	esi, ecx
	mov	rsp, rsp
	lea	rdi, [rbp - 0xa0]
	nop	
	call	__gmpz_init_set_si
	nop	
	mov	ecx, 2
	mov	esi, ecx
	lea	rdi, [rbp - 0xf0]
	call	__gmpz_init_set_si
	nop	
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rsp, rsp
	lea	rdi, [rbp - 0xd0]
	call	__gmpz_init_set_ui
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], 1
	nop	
	mov	qword ptr [rbp - 0x48], 1
.label_498:
	mov	rbp, rbp
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	call	__gmpz_cmp_ui
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_487
	mov	rbp, rbp
	jmp	.label_490
.label_490:
	jmp	.label_492
.label_492:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0xa0]
	lea	rdi, [rbp - 0x60]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rdx, rax
	call	__gmpz_mul
	mov	rbp, rbp
	lea	rsi, [rbp - 0x60]
	mov	rbp, rbp
	lea	rdi, [rbp - 0xa0]
	nop	
	mov	rdx, qword ptr [rbp - 0xa8]
	call	__gmpz_mod
	lea	rsi, [rsi]
	lea	rax, [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	nop	
	mov	rsi, rax
	call	__gmpz_add_ui
	mov	rsp, rsp
	lea	rdx, [rbp - 0xa0]
	mov	rsp, rsp
	lea	rsi, [rbp - 0xf0]
	lea	rdi, [rbp - 0x60]
	mov	rsp, rsp
	call	__gmpz_sub
	mov	rsp, rsp
	lea	rdx, [rbp - 0x60]
	lea	rsi, [rbp - 0xd0]
	lea	rdi, [rbp - 0x20]
	call	__gmpz_mul
	lea	rsi, [rbp - 0x20]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	call	__gmpz_mod
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	and	rax, 0x1f
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_501
	mov	rsp, rsp
	lea	rsi, [rbp - 0xd0]
	lea	rdi, [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	call	__gmpz_gcd
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rdi, [rbp - 0x60]
	lea	rdi, [rdi]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	nop	
	je	.label_493
	jmp	.label_497
.label_493:
	lea	rsi, [rbp - 0xa0]
	lea	rdi, [rbp - 0x90]
	mov	rsp, rsp
	call	__gmpz_set
.label_501:
	mov	rbp, rbp
	jmp	.label_500
.label_500:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_492
	mov	rbp, rbp
	lea	rsi, [rbp - 0xa0]
	nop	
	lea	rdi, [rbp - 0xf0]
	mov	rsp, rsp
	call	__gmpz_set
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	shl	rsi, 1
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], 0
.label_489:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	jae	.label_499
	lea	rax, [rbp - 0xa0]
	lea	rdi, [rbp - 0x60]
	mov	rsi, rax
	mov	rbp, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	call	__gmpz_mul
	mov	rsp, rsp
	lea	rsi, [rbp - 0x60]
	lea	rdi, [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0xa8]
	call	__gmpz_mod
	lea	rsi, [rsi]
	lea	rax, [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	jmp	.label_489
.label_499:
	lea	rsi, [rbp - 0xa0]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x90]
	call	__gmpz_set
	jmp	.label_490
.label_497:
	jmp	.label_486
.label_486:
	lea	rax, [rbp - 0x90]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, rax
	nop	
	mov	rdx, rax
	call	__gmpz_mul
	mov	rbp, rbp
	lea	rsi, [rbp - 0x60]
	mov	rsp, rsp
	lea	rdi, [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0xa8]
	call	__gmpz_mod
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	mov	rbp, rbp
	lea	rdx, [rbp - 0x90]
	lea	rsi, [rbp - 0xf0]
	lea	rdi, [rbp - 0x60]
	mov	rsp, rsp
	call	__gmpz_sub
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	mov	rsi, rax
	nop	
	call	__gmpz_gcd
	mov	rsp, rsp
	mov	eax, 1
	mov	esi, eax
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x60]
	nop	
	call	__gmpz_cmp_ui
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_486
	mov	rbp, rbp
	lea	rdx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0xa8]
	nop	
	mov	rsi, qword ptr [rbp - 0xa8]
	call	__gmpz_divexact
	lea	rdi, [rbp - 0x60]
	call	mp_prime_p
	test	al, 1
	jne	.label_491
	mov	rbp, rbp
	jmp	.label_495
.label_495:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_488
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.56
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xac], eax
.label_488:
	jmp	.label_504
.label_504:
	lea	rdi, [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	mp_factor_using_pollard_rho
	jmp	.label_494
.label_491:
	lea	rsi, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x28]
	call	mp_factor_insert
.label_494:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	call	mp_prime_p
	test	al, 1
	jne	.label_505
	mov	rsp, rsp
	jmp	.label_502
.label_505:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	call	mp_factor_insert
	nop	
	jmp	.label_487
.label_502:
	lea	rax, [rbp - 0xa0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rax
	call	__gmpz_mod
	nop	
	lea	rax, [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	mov	rsi, rax
	mov	rsp, rsp
	call	__gmpz_mod
	lea	rax, [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_mod
	lea	rsi, [rsi]
	jmp	.label_498
.label_487:
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	lea	r9, [rbp - 0x90]
	lea	r8, [rbp - 0xa0]
	lea	rdx, [rbp - 0xf0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x60]
	nop	
	lea	rdi, [rbp - 0x20]
	nop	
	lea	r10, [rbp - 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rdi
	lea	rsi, [rsi]
	mov	rdi, r10
	mov	r10, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, r10
	mov	r11, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xb8], rdx
	lea	rsi, [rsi]
	mov	rdx, r11
	mov	rbx, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rsi, [rsi]
	mov	al, 0
	call	__gmpz_clears
	add	rsp, 0xf8
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094f0

	.globl mp_factor_insert_ui
	.type mp_factor_insert_ui, @function
mp_factor_insert_ui:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rax, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	__gmpz_init_set_ui
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	mp_factor_insert
	lea	rdi, [rbp - 0x20]
	lea	rdi, [rdi]
	call	__gmpz_clear
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409540

	.globl mp_millerrabin
	.type mp_millerrabin, @function
mp_millerrabin:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x38], r9
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	__gmpz_powm
	mov	eax, 1
	mov	rsp, rsp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_513
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	__gmpz_cmp
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_510
.label_513:
	nop	
	mov	byte ptr [rbp - 0x21], 1
	jmp	.label_507
.label_510:
	mov	qword ptr [rbp - 0x20], 1
.label_508:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_509
	mov	eax, 2
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	call	__gmpz_powm_ui
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	__gmpz_cmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_511
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 1
	nop	
	jmp	.label_507
.label_511:
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	jne	.label_506
	mov	byte ptr [rbp - 0x21], 0
	nop	
	jmp	.label_507
.label_506:
	jmp	.label_512
.label_512:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_508
.label_509:
	nop	
	mov	byte ptr [rbp - 0x21], 0
.label_507:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4096a0
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
	.align	32
	#Procedure 0x4096d0
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
	.align	32
	#Procedure 0x409700

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
	je	.label_514
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_516
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_514
.label_516:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_518
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
	jmp	.label_517
.label_518:
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
.label_517:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_514:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_515
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_515:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409830

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x1c], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rdx
.label_520:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_521
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	safe_write
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], -1
	lea	rdi, [rdi]
	jne	.label_522
	jmp	.label_521
.label_522:
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_519
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	lea	rdi, [rdi]
	jmp	.label_521
.label_519:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_520
.label_521:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409900

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x14
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 0x20], 0
	jae	.label_523
	jmp	.label_526
.label_526:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edx, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	div	rdi
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	nop	
	div	rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_526
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_525
.label_523:
	jmp	.label_524
.label_524:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, -1
	mov	qword ptr [rbp - 8], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	nop	
	jne	.label_524
	jmp	.label_525
.label_525:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a40

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
	jne	.label_527
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_527:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_529
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_530
.label_529:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_530:
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
	jl	.label_528
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_1
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
	jne	.label_528
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_0
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
	jne	.label_531
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_531:
	jmp	.label_528
.label_528:
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
	.align	32
	#Procedure 0x409bc0
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	je	.label_535
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_532
	lea	rdi, [rdi]
	jmp	.label_533
.label_532:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_534
.label_533:
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	lea	rdi, [rdi]
	add	rax, 2
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rdi, [rdi]
	add	rdi, 1
	add	rdi, 1
	lea	rsi, [rsi]
	call	xmalloc
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_4
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	al, 0
	call	sprintf
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_534
.label_535:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_534:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409cc0

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	eax, 2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	esi, eax
	mov	rsp, rsp
	call	trim2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	mov	byte ptr [rbp - 0xc9], 0
.label_550:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_540
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	call	mbsstr
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_552
	jmp	.label_540
.label_552:
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jbe	.label_559
	nop	
	xor	esi, esi
	mov	eax, 8
	mov	rsp, rsp
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0xc8]
	nop	
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	byte ptr [rbp - 0xc8], 0
	mov	rsp, rsp
	add	rcx, 4
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memset
	mov	byte ptr [rbp - 0xbc], 0
	nop	
	mov	byte ptr [rbp - 0xdb], 1
	mov	rcx, qword ptr [rbp - 0xb8]
	nop	
	cmp	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	jae	.label_549
	jmp	.label_555
.label_555:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	nop	
	call	mbuiter_multi_next
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	byte ptr [rbp - 0xa8], 1
	nop	
	mov	byte ptr [rbp - 0x169], cl
	mov	rsp, rsp
	je	.label_560
	cmp	dword ptr [rbp - 0xa4], 0
	sete	al
	mov	byte ptr [rbp - 0x169], al
.label_560:
	mov	al, byte ptr [rbp - 0x169]
	xor	al, 0xff
	test	al, 1
	nop	
	jne	.label_538
	lea	rsi, [rsi]
	call	abort
.label_538:
	mov	eax, 0x30
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x110]
	nop	
	lea	rsi, [rbp - 0xc8]
	lea	rsi, [rsi]
	add	rsi, 0x10
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xbc], 0
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	jb	.label_555
	mov	rsp, rsp
	test	byte ptr [rbp - 0x100], 1
	je	.label_536
	nop	
	mov	edi, dword ptr [rbp - 0xfc]
	lea	rdi, [rdi]
	call	iswalnum
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_536
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xdb], 0
.label_536:
	jmp	.label_549
.label_549:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, 8
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rbp - 0x58]
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb8], r8
	nop	
	mov	byte ptr [rbp - 0xc8], 0
	lea	rdi, [rdi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rsi
	mov	rbp, rbp
	mov	esi, eax
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsp, rsp
	call	memset
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xbc], 0
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rbp - 0x58], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x120]
	nop	
	add	rdx, 4
	lea	rdi, [rdi]
	mov	rdi, rdx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_539:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x58]
	mov	rsp, rsp
	call	mbuiter_multi_next
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd9], cl
	je	.label_563
	cmp	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd9], al
.label_563:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd9]
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	jne	.label_545
	jmp	.label_546
.label_545:
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xa8], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 2], cl
	je	.label_556
	cmp	dword ptr [rbp - 0xa4], 0
	sete	al
	mov	byte ptr [rbp - 2], al
.label_556:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 2]
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_565
	nop	
	call	abort
.label_565:
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	byte ptr [rbp - 0xbc], 0
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	jmp	.label_539
.label_546:
	lea	rdi, [rbp - 0xc8]
	mov	byte ptr [rbp - 0x122], 1
	call	mbuiter_multi_next
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xa8], 1
	mov	byte ptr [rbp - 0x159], cl
	lea	rdi, [rdi]
	je	.label_541
	cmp	dword ptr [rbp - 0xa4], 0
	sete	al
	mov	byte ptr [rbp - 0x159], al
.label_541:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x159]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	rbp, rbp
	test	al, 1
	jne	.label_537
	jmp	.label_548
.label_537:
	mov	eax, 0x30
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x158]
	lea	rsi, [rbp - 0xc8]
	add	rsi, 0x10
	mov	rdi, rcx
	call	memcpy
	nop	
	test	byte ptr [rbp - 0x148], 1
	je	.label_553
	mov	edi, dword ptr [rbp - 0x144]
	lea	rdi, [rdi]
	call	iswalnum
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_553
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x122], 0
.label_553:
	lea	rdi, [rdi]
	jmp	.label_548
.label_548:
	test	byte ptr [rbp - 0xdb], 1
	mov	rbp, rbp
	je	.label_544
	test	byte ptr [rbp - 0x122], 1
	je	.label_544
	mov	byte ptr [rbp - 0xc9], 1
	nop	
	jmp	.label_540
.label_544:
	lea	rax, [rbp - 0xc8]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	ecx, 8
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	byte ptr [rbp - 0xc8], 0
	mov	rbp, rbp
	mov	rdi, rax
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	call	memset
	mov	byte ptr [rbp - 0xbc], 0
	mov	rdi, qword ptr [rbp - 0x78]
	call	mbuiter_multi_next
	mov	rbp, rbp
	xor	ecx, ecx
	mov	r8b, cl
	test	byte ptr [rbp - 0xa8], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], r8b
	je	.label_564
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa4], 0
	lea	rdi, [rdi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
.label_564:
	mov	al, byte ptr [rbp - 1]
	xor	al, 0xff
	nop	
	test	al, 1
	jne	.label_543
	mov	rbp, rbp
	jmp	.label_540
.label_543:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	jmp	.label_557
.label_559:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x121], 1
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_558
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	movzx	ecx, byte ptr [rax - 1]
	nop	
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x168], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rdi, [rdi]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_547
	mov	byte ptr [rbp - 0x121], 0
.label_547:
	mov	rbp, rbp
	jmp	.label_558
.label_558:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x118], rax
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	add	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0xda], 1
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_561
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	nop	
	movsxd	rax, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rsi, [rsi]
	and	ecx, 8
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_551
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xda], 0
.label_551:
	jmp	.label_561
.label_561:
	test	byte ptr [rbp - 0x121], 1
	lea	rdi, [rdi]
	je	.label_562
	test	byte ptr [rbp - 0xda], 1
	nop	
	je	.label_562
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc9], 1
	jmp	.label_540
.label_562:
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_542
	lea	rdi, [rdi]
	jmp	.label_540
.label_542:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
.label_557:
	mov	rsp, rsp
	jmp	.label_554
.label_554:
	mov	rsp, rsp
	jmp	.label_550
.label_540:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x88]
	call	free
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xc9]
	and	al, 1
	nop	
	movzx	eax, al
	nop	
	add	rsp, 0x170
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a380

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	nop	
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	call	c_strcasecmp
	cmp	eax, 0
	je	.label_585
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	call	xstr_iconv
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	call	strlen
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	add	rax, 0xa
	add	rax, 1
	mov	rdi, rax
	nop	
	call	xmalloc
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x88], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsi,  qword ptr [word ptr [.str.2_1]]
	mov	rbp, rbp
	mov	qword ptr [rax + rdx], rsi
	mov	rsp, rsp
	mov	cx,  word ptr [word ptr [label_567]]
	mov	word ptr [rax + rdx + 8], cx
	mov	r8b,  byte ptr [byte ptr [label_568]]
	mov	byte ptr [rax + rdx + 0xa], r8b
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	call	xstr_iconv
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	free
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_576
	mov	esi, 0x3f
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	strchr
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_569
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_571
.label_569:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
.label_571:
	lea	rdi, [rdi]
	jmp	.label_576
.label_576:
	lea	rsi, [rsi]
	jmp	.label_577
.label_585:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x78], rax
.label_577:
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	je	.label_581
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_583
.label_581:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_587
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_575
.label_587:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
.label_575:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
.label_583:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	je	.label_579
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	mbsstr_trimmed_wordbounded
	nop	
	test	al, 1
	jne	.label_573
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_584
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	mbsstr_trimmed_wordbounded
	nop	
	test	al, 1
	jne	.label_573
.label_584:
	cmp	qword ptr [rbp - 0x78], 0
	nop	
	je	.label_570
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	mbsstr_trimmed_wordbounded
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_573
	jmp	.label_570
.label_573:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_572
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
.label_572:
	cmp	qword ptr [rbp - 8], 0
	je	.label_582
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	free
.label_582:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_574
.label_570:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 2
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rbp - 0x90], rax
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rdi, rax
	lea	rdi, [rdi]
	add	rdi, 1
	add	rdi, 1
	call	xmalloc
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_4
	mov	qword ptr [rbp - 0x60], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	al, 0
	call	sprintf
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	je	.label_586
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	free
.label_586:
	cmp	qword ptr [rbp - 8], 0
	je	.label_566
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	free
.label_566:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_574
.label_579:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_578
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x68]
	je	.label_578
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	free
.label_578:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_580
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x68]
	je	.label_580
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	free
.label_580:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
.label_574:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a7c0
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
	je	.label_588
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_589
.label_588:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_589
.label_589:
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
	.align	32
	#Procedure 0x40a870
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
	je	.label_590
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_591
.label_590:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_591
.label_591:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a8d0
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
	je	.label_592
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_593
.label_592:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_593
.label_593:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a930

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
	je	.label_594
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_595
.label_594:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_595
.label_595:
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
	.align	32
	#Procedure 0x40aa30
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
	jne	.label_596
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_596:
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
	.align	32
	#Procedure 0x40aa90

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
	jne	.label_597
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_597:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_599
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_598
.label_599:
	call	abort
.label_598:
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
	.align	32
	#Procedure 0x40ab30
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
	je	.label_600
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_601
.label_600:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_601
.label_601:
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
	.align	32
	#Procedure 0x40ac30

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
.label_726:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_757
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_675]]
	jmp	rcx
.label_1261:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_1260:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_684
	jmp	.label_615
.label_615:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_690
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_690:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_684
.label_684:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_704
.label_1262:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_704
.label_1263:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_717
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
.label_717:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_730
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_749:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_735
	jmp	.label_737
.label_737:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_738
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_738:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_745
.label_745:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_749
.label_735:
	mov	rbp, rbp
	jmp	.label_730
.label_730:
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
	jmp	.label_704
.label_1258:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_1257:
	mov	byte ptr [rbp - 0x3e], 1
.label_1259:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_767
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_767:
	jmp	.label_782
.label_782:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_771
	jmp	.label_776
.label_776:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_619
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_619:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_771
.label_771:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_704
.label_1256:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_704
.label_757:
	call	abort
.label_704:
	mov	qword ptr [rbp - 0xd8], 0
.label_799:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_794
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
	jmp	.label_796
.label_794:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_796:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_616
	mov	rbp, rbp
	jmp	.label_629
.label_616:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_631
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_631
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_631
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_649
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_649
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_659
.label_649:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_659:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_631
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
	jne	.label_631
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_682
	jmp	.label_617
.label_682:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_631:
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
	ja	.label_688
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_701]]
	nop	
	jmp	rcx
.label_1268:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_707
	mov	rsp, rsp
	jmp	.label_712
.label_712:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_714
	jmp	.label_617
.label_714:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_720
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_720
	nop	
	jmp	.label_721
.label_721:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_724
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_724:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_731
.label_731:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_733
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_733:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_739
.label_739:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_743
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_743:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_720:
	lea	rsi, [rsi]
	jmp	.label_753
.label_753:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_754
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_754:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_747
.label_747:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_662
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_662
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_662
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_662
	nop	
	jmp	.label_780
.label_780:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_781
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_781:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_786
.label_786:
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
	jmp	.label_662
.label_662:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_610
.label_707:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_793
	mov	rbp, rbp
	jmp	.label_639
.label_793:
	jmp	.label_610
.label_610:
	jmp	.label_612
.label_1279:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_613
	mov	rbp, rbp
	jmp	.label_622
.label_622:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_626
	jmp	.label_636
.label_613:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_638
	jmp	.label_617
.label_638:
	jmp	.label_644
.label_626:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_645
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_645
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_645
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
	je	.label_663
	nop	
	jmp	.label_664
.label_664:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_663
	jmp	.label_668
.label_668:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_663
	jmp	.label_676
.label_676:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_663
	jmp	.label_633
.label_633:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_802
	jmp	.label_663
.label_663:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_692
	jmp	.label_617
.label_692:
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
	jae	.label_698
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_698:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_719
.label_719:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_722
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_722:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_728
.label_728:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_711
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_711:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_742
.label_742:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_763
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_763:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_634
.label_802:
	jmp	.label_634
.label_634:
	jmp	.label_645
.label_645:
	jmp	.label_644
.label_636:
	jmp	.label_644
.label_644:
	jmp	.label_612
.label_1269:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_756
.label_1270:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_756
.label_1274:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_756
.label_1272:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_703
.label_1275:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_703
.label_1271:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_703
.label_1273:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_756
.label_1280:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_768
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_773
	nop	
	jmp	.label_617
.label_773:
	lea	rsi, [rsi]
	jmp	.label_627
.label_768:
	test	byte ptr [rbp - 0x89], 1
	je	.label_642
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_642
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_642
	jmp	.label_627
.label_642:
	jmp	.label_703
.label_703:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_788
	test	byte ptr [rbp - 0x3e], 1
	je	.label_788
	jmp	.label_617
.label_788:
	mov	rsp, rsp
	jmp	.label_756
.label_756:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_775
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_702
.label_775:
	jmp	.label_612
.label_1281:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_800
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_611
	jmp	.label_609
.label_800:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_611
.label_609:
	nop	
	jmp	.label_612
.label_611:
	jmp	.label_618
.label_618:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_620
	lea	rsi, [rsi]
	jmp	.label_612
.label_620:
	nop	
	jmp	.label_630
.label_630:
	mov	byte ptr [rbp - 0x91], 1
.label_1276:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_635
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_635
	jmp	.label_617
.label_635:
	lea	rsi, [rsi]
	jmp	.label_612
.label_1278:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_646
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_795
	jmp	.label_617
.label_795:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_623
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_623
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_623:
	jmp	.label_660
.label_660:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_661
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_661:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_666
.label_666:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_678
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_678:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_683
.label_683:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_686
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_686:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_646:
	lea	rsi, [rsi]
	jmp	.label_612
.label_1277:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_612
.label_688:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_708
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
	jmp	.label_607
.label_708:
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
	jne	.label_732
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_732:
	jmp	.label_697
.label_697:
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
	jne	.label_752
	jmp	.label_672
.label_752:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_758
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_672
.label_758:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_762
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_779:
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
	jae	.label_677
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_677:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_777
	jmp	.label_778
.label_777:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_779
.label_778:
	jmp	.label_672
.label_762:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_648
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_648
	mov	qword ptr [rbp - 0xe8], 1
.label_643:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_790
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
	jb	.label_606
	jmp	.label_604
.label_604:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_606
	jmp	.label_614
.label_614:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_606
	jmp	.label_625
.label_625:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_628
	mov	rsp, rsp
	jmp	.label_606
.label_606:
	mov	rsp, rsp
	jmp	.label_617
.label_628:
	jmp	.label_640
.label_640:
	mov	rsp, rsp
	jmp	.label_744
.label_744:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_643
.label_790:
	mov	rbp, rbp
	jmp	.label_648
.label_648:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_651
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_651:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_653
.label_653:
	lea	rsi, [rsi]
	jmp	.label_655
.label_655:
	jmp	.label_657
.label_657:
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
	jne	.label_697
.label_672:
	jmp	.label_607
.label_607:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_665
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_674
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_674
.label_665:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_654:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_689
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_689
	jmp	.label_695
.label_695:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_696
	jmp	.label_617
.label_696:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_700
	test	byte ptr [rbp - 0x42], 1
	jne	.label_700
	lea	rdi, [rdi]
	jmp	.label_709
.label_709:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_710
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_710:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_718
.label_718:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_770
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_770:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_729
.label_729:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_693
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_693:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_700:
	jmp	.label_740
.label_740:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_741
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_741:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_687
.label_687:
	jmp	.label_748
.label_748:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_750
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
.label_750:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_761
.label_761:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_765
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
.label_765:
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
	jmp	.label_772
.label_689:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_652
	lea	rdi, [rdi]
	jmp	.label_783
.label_783:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_785
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_785:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_652:
	nop	
	jmp	.label_772
.label_772:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_792
	jmp	.label_798
.label_792:
	lea	rsi, [rsi]
	jmp	.label_801
.label_801:
	test	byte ptr [rbp - 0x42], 1
	je	.label_602
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_602
	lea	rsi, [rsi]
	jmp	.label_605
.label_605:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_608
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_608:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_621
.label_621:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_632
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_632:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_602:
	nop	
	jmp	.label_647
.label_647:
	mov	rsp, rsp
	jmp	.label_787
.label_787:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_650
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_650:
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
	jmp	.label_654
.label_798:
	mov	rsp, rsp
	jmp	.label_627
.label_674:
	lea	rsi, [rsi]
	jmp	.label_612
.label_612:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_667
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_670
.label_667:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_673
.label_670:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_673
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
	jne	.label_679
.label_673:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_679
	mov	rsp, rsp
	jmp	.label_627
.label_679:
	nop	
	jmp	.label_702
.label_702:
	jmp	.label_705
.label_705:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_736
	jmp	.label_617
.label_736:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_715
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_715
	lea	rdi, [rdi]
	jmp	.label_716
.label_716:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_789
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_789:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_725
.label_725:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_669
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_669:
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
	jae	.label_751
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_751:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_715:
	jmp	.label_694
.label_694:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_746
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_746:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_755
.label_755:
	nop	
	jmp	.label_627
.label_627:
	jmp	.label_759
.label_759:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_760
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_760
	lea	rdi, [rdi]
	jmp	.label_764
.label_764:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_766
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_766:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_769
.label_769:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_774
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_774:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_760:
	jmp	.label_784
.label_784:
	nop	
	jmp	.label_681
.label_681:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_691
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_691:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_791
	mov	byte ptr [rbp - 0xb7], 0
.label_791:
	mov	rbp, rbp
	jmp	.label_639
.label_639:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_799
.label_629:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_603
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_603
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_603
	nop	
	jmp	.label_617
.label_603:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_624
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_624
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_624
	test	byte ptr [rbp - 0xb7], 1
	je	.label_637
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
	jmp	.label_656
.label_637:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_658
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_658
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_726
.label_658:
	jmp	.label_641
.label_641:
	mov	rbp, rbp
	jmp	.label_624
.label_624:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_671
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_671
	mov	rbp, rbp
	jmp	.label_706
.label_706:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_680
	lea	rdi, [rdi]
	jmp	.label_797
.label_797:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_685
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_685:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_699
.label_699:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_706
.label_680:
	jmp	.label_671
.label_671:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_713
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_713:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_656
.label_617:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_723
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_723
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_723:
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
.label_656:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c6d0
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
	.align	32
	#Procedure 0x40c740

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
	je	.label_803
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_804
.label_803:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_804
.label_804:
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
	je	.label_805
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_805:
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
	.align	32
	#Procedure 0x40c910
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
.label_810:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_809
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
	jmp	.label_810
.label_809:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_808
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_806]],  rax
.label_808:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_807
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_807:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca20

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
	.align	32
	#Procedure 0x40ca70

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
	jge	.label_815
	call	abort
.label_815:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_818
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
	jge	.label_811
	call	xalloc_die
.label_811:
	test	byte ptr [rbp - 0x51], 1
	je	.label_812
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_816
.label_812:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_816:
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
	je	.label_814
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_806]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_814:
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
.label_818:
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
	ja	.label_813
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
	je	.label_817
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_817:
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
.label_813:
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
	.align	32
	#Procedure 0x40cda0

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
	.align	32
	#Procedure 0x40cde0
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
	.align	32
	#Procedure 0x40ce10
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
	.align	32
	#Procedure 0x40ce50

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
	.align	32
	#Procedure 0x40ceb0

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
	jne	.label_819
	call	abort
.label_819:
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
	.align	32
	#Procedure 0x40cf50

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
	.align	32
	#Procedure 0x40cfc0
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
	.align	32
	#Procedure 0x40d000
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
	.align	32
	#Procedure 0x40d040

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
	.align	32
	#Procedure 0x40d0f0

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
	.align	32
	#Procedure 0x40d130

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
	.align	32
	#Procedure 0x40d160
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
	.align	32
	#Procedure 0x40d1a0
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
	.align	32
	#Procedure 0x40d280

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
	.align	32
	#Procedure 0x40d2d0

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
	.align	32
	#Procedure 0x40d370
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
	.align	32
	#Procedure 0x40d3c0
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
	.align	32
	#Procedure 0x40d420

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
	.align	32
	#Procedure 0x40d460
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
	.align	32
	#Procedure 0x40d4a0

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
	.align	32
	#Procedure 0x40d4e0

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
	.align	32
	#Procedure 0x40d520

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
	je	.label_823
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_821
.label_823:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_822
	movabs	rax, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_821
.label_822:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_820
	nop	
	movabs	rax, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_821
.label_820:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_821:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d660

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdi], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d690

	.globl readtoken
	.type readtoken, @function
readtoken:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	xor	eax, eax
	mov	rsp, rsp
	mov	r8d, 0x20
	mov	r9d, r8d
	lea	r10, [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x58], rsi
	mov	qword ptr [rbp - 0x60], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rcx
	mov	rdi, r10
	mov	esi, eax
	mov	rbp, rbp
	mov	rdx, r9
	call	memset
	mov	qword ptr [rbp - 0x18], 0
.label_827:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	jae	.label_831
	lea	rsi, [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	dl, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], dl
	movzx	edi, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	call	set_nth_bit
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_827
.label_831:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
.label_838:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	cmp	dword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	jl	.label_837
	nop	
	lea	rsi, [rbp - 0x40]
	movsxd	rdi, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	get_nth_bit
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
.label_837:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_834
	mov	rsp, rsp
	jmp	.label_836
.label_834:
	mov	rsp, rsp
	jmp	.label_825
.label_825:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_838
.label_836:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 0x18], 0
.label_832:
	cmp	dword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	jge	.label_824
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_824
	mov	qword ptr [rbp - 0x68], -1
	jmp	.label_835
.label_824:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_833
	lea	rsi, [rbp - 8]
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	x2nrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
.label_833:
	cmp	dword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jge	.label_829
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	jmp	.label_830
.label_829:
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x40]
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	get_nth_bit
	test	al, 1
	jne	.label_826
	jmp	.label_828
.label_826:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_830
.label_828:
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	mov	byte ptr [rsi + rdx], cl
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	getc_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
	nop	
	jmp	.label_832
.label_830:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
.label_835:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rsp, 0x70
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8f0

	.globl set_nth_bit
	.type set_nth_bit, @function
set_nth_bit:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x10], 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	and	rdi, 0x3f
	lea	rdi, [rdi]
	mov	rcx, rdi
	nop	
	shl	rsi, cl
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	shr	rdi, 6
	mov	rax, qword ptr [rbp - 0x18]
	or	rsi, qword ptr [rax + rdi*8]
	mov	qword ptr [rax + rdi*8], rsi
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d950

	.globl get_nth_bit
	.type get_nth_bit, @function
get_nth_bit:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shr	rsi, 6
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdi + rsi*8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	rdi, 0x3f
	mov	rcx, rdi
	nop	
	shr	rsi, cl
	lea	rdi, [rdi]
	and	rsi, 1
	cmp	rsi, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d9b0
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rax, [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x60], r8
	nop	
	mov	qword ptr [rbp - 8], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x68], 0
	mov	rsp, rsp
	jne	.label_844
	mov	qword ptr [rbp - 0x68], 0x40
	nop	
	jmp	.label_846
.label_844:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
.label_846:
	mov	rbp, rbp
	mov	eax, 8
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	call	xnmalloc
	mov	edx, 8
	mov	esi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	call	xnmalloc
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	init_tokenbuffer
.label_840:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	readtoken
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	rax, qword ptr [rbp - 0x48]
	jb	.label_842
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdi, rcx
	mov	rsp, rsp
	call	x2nrealloc
	mov	r8d, 8
	mov	edx, r8d
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xnrealloc
	nop	
	mov	qword ptr [rbp - 0x58], rax
.label_842:
	cmp	qword ptr [rbp - 0x30], -1
	lea	rsi, [rsi]
	jne	.label_843
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8], 0
	jmp	.label_845
.label_843:
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	rdi, rcx
	call	xnmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x28], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8], rdx
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_840
.label_845:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_841
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	jmp	.label_839
.label_841:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_839:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dc20

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
.label_847:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	call	write
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jg	.label_849
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_848
.label_849:
	call	__errno_location
	cmp	dword ptr [rax], 4
	nop	
	jne	.label_852
	nop	
	jmp	.label_847
.label_852:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_850
	mov	eax, 0x7ff00000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_850
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0x7ff00000
	jmp	.label_854
.label_850:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_848
.label_854:
	jmp	.label_851
.label_851:
	jmp	.label_853
.label_853:
	jmp	.label_847
.label_848:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd00

	.globl trim2
	.type trim2, @function
trim2:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	call	strdup
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	jne	.label_859
	call	xalloc_die
.label_859:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_882
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x64], 0
	je	.label_888
	nop	
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 8
	nop	
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	rdi, r8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x28], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, rax
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd0], 0
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 0xc
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	rdx, qword ptr [rbp - 0x60]
	call	memset
	nop	
	mov	byte ptr [rbp - 0xc4], 0
.label_884:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xc0]
	cmp	rdx, qword ptr [rbp - 0xd8]
	mov	byte ptr [rbp - 0x52], cl
	lea	rsi, [rsi]
	jae	.label_863
	lea	rdi, [rbp - 0xd8]
	nop	
	call	mbiter_multi_next
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	dl, 1
	test	dl, 1
	mov	byte ptr [rbp - 0x52], cl
	mov	rbp, rbp
	jne	.label_855
	nop	
	jmp	.label_863
.label_855:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	byte ptr [rbp - 0xb0], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x15], cl
	je	.label_866
	mov	edi, dword ptr [rbp - 0xac]
	nop	
	call	iswspace
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], cl
.label_866:
	mov	al, byte ptr [rbp - 0x15]
	mov	byte ptr [rbp - 0x52], al
.label_863:
	mov	al, byte ptr [rbp - 0x52]
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_878
	jmp	.label_881
.label_878:
	lea	rsi, [rsi]
	jmp	.label_883
.label_883:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc4], 0
	lea	rsi, [rsi]
	jmp	.label_884
.label_881:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x100], rdi
	mov	rdi, rax
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	call	strlen
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	memmove
.label_888:
	cmp	dword ptr [rbp - 0x64], 1
	nop	
	je	.label_857
	xor	esi, esi
	lea	rsi, [rsi]
	mov	eax, 8
	nop	
	mov	edx, eax
	lea	rcx, [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	mov	rdi, r8
	mov	dword ptr [rbp - 0x44], esi
	nop	
	mov	qword ptr [rbp - 0xf8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	byte ptr [rbp - 0xd0], 0
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 0xc
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	call	memset
	mov	byte ptr [rbp - 0xc4], 0
.label_874:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	cmp	rdx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x53], cl
	jae	.label_886
	lea	rdi, [rbp - 0xd8]
	lea	rsi, [rsi]
	call	mbiter_multi_next
	mov	al, 1
	mov	byte ptr [rbp - 0x53], al
.label_886:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x53]
	test	al, 1
	jne	.label_890
	jmp	.label_892
.label_890:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	jne	.label_858
	test	byte ptr [rbp - 0xb0], 1
	mov	rbp, rbp
	je	.label_858
	nop	
	mov	edi, dword ptr [rbp - 0xac]
	nop	
	call	iswspace
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_858
	jmp	.label_862
.label_858:
	cmp	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	jne	.label_864
	test	byte ptr [rbp - 0xb0], 1
	je	.label_869
	mov	edi, dword ptr [rbp - 0xac]
	nop	
	call	iswspace
	cmp	eax, 0
	jne	.label_864
.label_869:
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_862
.label_864:
	cmp	dword ptr [rbp - 0x14], 1
	lea	rdi, [rdi]
	jne	.label_876
	test	byte ptr [rbp - 0xb0], 1
	je	.label_880
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xac]
	call	iswspace
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_876
.label_880:
	lea	rdi, [rdi]
	jmp	.label_862
.label_876:
	cmp	dword ptr [rbp - 0x14], 1
	jne	.label_868
	test	byte ptr [rbp - 0xb0], 1
	je	.label_868
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	call	iswspace
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_868
	mov	dword ptr [rbp - 0x14], 2
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_870
.label_868:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_856
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xb0], 1
	je	.label_856
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xac]
	call	iswspace
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_856
	lea	rsi, [rsi]
	jmp	.label_871
.label_856:
	mov	dword ptr [rbp - 0x14], 1
.label_871:
	mov	rbp, rbp
	jmp	.label_870
.label_870:
	lea	rdi, [rdi]
	jmp	.label_862
.label_862:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	byte ptr [rbp - 0xc4], 0
	jmp	.label_874
.label_892:
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_879
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_879:
	mov	rsp, rsp
	jmp	.label_857
.label_857:
	jmp	.label_877
.label_882:
	cmp	dword ptr [rbp - 0x64], 0
	je	.label_885
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_865:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x51], cl
	je	.label_887
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	movsxd	rax, ecx
	nop	
	mov	qword ptr [rbp - 0x88], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rdi, [rdi]
	and	ecx, 0x2000
	cmp	ecx, 0
	nop	
	setne	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], sil
.label_887:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x51]
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_891
	jmp	.label_860
.label_891:
	lea	rdi, [rdi]
	jmp	.label_861
.label_861:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_865
.label_860:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rdi
	mov	rdi, rax
	nop	
	mov	qword ptr [rbp - 0xe0], rsi
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	rdx, rax
	call	memmove
.label_885:
	cmp	dword ptr [rbp - 0x64], 1
	mov	rsp, rsp
	je	.label_875
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rax
	call	strlen
	nop	
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	add	rdi, rax
	mov	rbp, rbp
	add	rdi, -1
	mov	qword ptr [rbp - 8], rdi
.label_873:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	nop	
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x79], cl
	jb	.label_889
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	movsxd	rax, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	movzx	ecx, word ptr [rax + rdx*2]
	mov	rbp, rbp
	and	ecx, 0x2000
	lea	rsi, [rsi]
	cmp	ecx, 0
	setne	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], sil
.label_889:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x79]
	mov	rsp, rsp
	test	al, 1
	jne	.label_867
	jmp	.label_872
.label_867:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, -1
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_873
.label_872:
	mov	rsp, rsp
	jmp	.label_875
.label_875:
	jmp	.label_877
.label_877:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x100
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e3a0

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
	je	.label_897
	movabs	rsi, OFFSET FLAT:.str_5
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
	jmp	.label_895
.label_897:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_895:
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
	mov	ecx, OFFSET FLAT:.str.3_0
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
	ja	.label_896
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_894]]
	jmp	rcx
.label_1234:
	jmp	.label_893
.label_1235:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_0
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
	jmp	.label_893
.label_1236:
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
	jmp	.label_893
.label_1237:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6
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
	jmp	.label_893
.label_1238:
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
	jmp	.label_893
.label_1239:
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
	jmp	.label_893
.label_1240:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9
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
	jmp	.label_893
.label_1241:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
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
	jmp	.label_893
.label_1242:
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
	jmp	.label_893
.label_1243:
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
	jmp	.label_893
.label_896:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_893:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ebe0
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
.label_898:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_899
	mov	rbp, rbp
	jmp	.label_900
.label_900:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_898
.label_899:
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
	.align	32
	#Procedure 0x40ec90

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
.label_905:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_901
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_907
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
	jmp	.label_906
.label_907:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_906:
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
.label_901:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_904
	mov	rsp, rsp
	jmp	.label_902
.label_904:
	jmp	.label_903
.label_903:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_905
.label_902:
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
	.align	32
	#Procedure 0x40edf0

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
	je	.label_908
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
.label_908:
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
	.align	32
	#Procedure 0x40efb0
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
	movabs	rsi, OFFSET FLAT:.str.15_0
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_0
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
	.align	32
	#Procedure 0x40f060

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
	jae	.label_909
	mov	rbp, rbp
	call	xalloc_die
.label_909:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f0c0

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
	jne	.label_910
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_910
	lea	rdi, [rdi]
	call	xalloc_die
.label_910:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f120

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
	jae	.label_911
	mov	rsp, rsp
	call	xalloc_die
.label_911:
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
	.align	32
	#Procedure 0x40f1a0

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
	jne	.label_912
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_912
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_914
.label_912:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_913
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_913
	lea	rsi, [rsi]
	call	xalloc_die
.label_913:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_914:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f250

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
	jne	.label_915
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_917
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
.label_917:
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
	jae	.label_919
	call	xalloc_die
.label_919:
	lea	rsi, [rsi]
	jmp	.label_918
.label_915:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_916
	call	xalloc_die
.label_916:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_918:
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
	.align	32
	#Procedure 0x40f380

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
	.align	32
	#Procedure 0x40f3b0
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
	.align	32
	#Procedure 0x40f3f0
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
	.align	32
	#Procedure 0x40f440
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
	jb	.label_920
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_921
.label_920:
	lea	rsi, [rsi]
	call	xalloc_die
.label_921:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f4b0

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
	.align	32
	#Procedure 0x40f500
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
	.align	32
	#Procedure 0x40f560

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_3
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
	.align	32
	#Procedure 0x40f5c0
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], r8
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	mem_cd_iconv
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_922
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jne	.label_922
	mov	rbp, rbp
	call	xalloc_die
.label_922:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x30
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f650
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	nop	
	call	str_cd_iconv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_923
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	jne	.label_923
	mov	rsp, rsp
	call	xalloc_die
.label_923:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f6d0

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	call	str_iconv
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_924
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	jne	.label_924
	call	xalloc_die
.label_924:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f740

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
	jne	.label_925
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_925:
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
	ja	.label_926
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_926
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_926
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
	jmp	.label_927
.label_926:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_927:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f830

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
	jne	.label_928
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_932
.label_928:
	mov	rbp, rbp
	jmp	.label_929
.label_929:
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
	jne	.label_930
	jmp	.label_931
.label_930:
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
	je	.label_929
.label_931:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_932:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f920

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
	jne	.label_935
	test	byte ptr [rbp - 0x15], 1
	je	.label_934
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_935
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_934
.label_935:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_933
	call	__errno_location
	mov	dword ptr [rax], 0
.label_933:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_936
.label_934:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_936:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fa00

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
	je	.label_938
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_6
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_939
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_937
.label_939:
	mov	byte ptr [rbp - 0xd], 0
.label_937:
	jmp	.label_938
.label_938:
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
	.align	32
	#Procedure 0x40faa0

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
	jne	.label_941
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_941:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_940
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_940:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fb20

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rdi + 0x14], 1
	je	.label_952
	lea	rdi, [rdi]
	jmp	.label_945
.label_952:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rax + 8], 1
	nop	
	je	.label_948
	jmp	.label_943
.label_948:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	movsx	edi, byte ptr [rax]
	nop	
	call	is_basic
	test	al, 1
	jne	.label_958
	mov	rbp, rbp
	jmp	.label_950
.label_958:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x2c], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rax + 0x28], 1
	jmp	.label_947
.label_950:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 0xc
	mov	rdi, rax
	mov	rbp, rbp
	call	mbsinit
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_951
	lea	rsi, [rsi]
	jmp	.label_955
.label_951:
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x8e
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_955:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 8], 1
.label_943:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0x18
	lea	rdi, [rdi]
	add	rax, 0x14
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0xc
	mov	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], -1
	mov	rbp, rbp
	jne	.label_959
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	jmp	.label_946
.label_959:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x20], -2
	jne	.label_956
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x28], 0
	jmp	.label_949
.label_956:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_944
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 1
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_953
	jmp	.label_960
.label_953:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.2_3
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_6
	lea	rdi, [rdi]
	mov	edx, 0xa9
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	mov	rsp, rsp
	call	__assert_fail
.label_960:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_957
	jmp	.label_942
.label_957:
	movabs	rdi, OFFSET FLAT:.str.3_1
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	edx, 0xaa
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	lea	rsi, [rsi]
	call	__assert_fail
.label_942:
	jmp	.label_944
.label_944:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x28], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0xc
	mov	rdi, rax
	mov	rbp, rbp
	call	mbsinit
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_954
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rax + 8], 0
.label_954:
	jmp	.label_949
.label_949:
	jmp	.label_946
.label_946:
	jmp	.label_947
.label_947:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x14], 1
.label_945:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fe20
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsi, qword ptr [rdi + 0x18]
	mov	qword ptr [rdi + 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsi, qword ptr [rdi]
	mov	qword ptr [rdi], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fe60
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	and	cl, 1
	mov	byte ptr [rsi + 8], cl
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_961
	jmp	.label_962
.label_961:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0xc]
	mov	qword ptr [rax + 0xc], rcx
	jmp	.label_963
.label_962:
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rcx, 0xc
	mov	rsp, rsp
	mov	rdi, rcx
	mov	rsp, rsp
	call	memset
.label_963:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rax + 0x14], cl
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	mov	rsi, rdx
	lea	rdi, [rdi]
	call	mb_copy
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ff40

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x240
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rsi
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	lea	rsi, [rsi]
	jbe	.label_986
	mov	rbp, rbp
	lea	rax, [rbp - 0x1a0]
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	ecx, 8
	mov	rbp, rbp
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x190], rdi
	mov	byte ptr [rbp - 0x1a0], 0
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	add	rdi, 4
	nop	
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x194], 0
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	r8b, cl
	test	byte ptr [rbp - 0x180], 1
	mov	byte ptr [rbp - 0x111], r8b
	lea	rdi, [rdi]
	je	.label_1008
	cmp	dword ptr [rbp - 0x17c], 0
.label_1358:
	sete	al
	mov	byte ptr [rbp - 0x111], al
.label_1008:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x111]
	mov	rbp, rbp
	xor	al, 0xff
	test	al, 1
	jne	.label_967
	jmp	.label_969
.label_967:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	ecx, 8
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsp, rsp
	lea	rsi, [rbp - 0x158]
	lea	rdi, [rbp - 0xf0]
	nop	
	mov	byte ptr [rbp - 0x221], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], 0
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x238], 0
	nop	
	mov	r8, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0xe0], r8
	mov	byte ptr [rbp - 0xf0], 0
	add	rdi, 4
	mov	qword ptr [rbp - 0x108], rsi
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x23c], eax
	mov	rbp, rbp
	call	memset
	mov	byte ptr [rbp - 0xe4], 0
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x148], rdx
	mov	byte ptr [rbp - 0x158], 0
	mov	rdx, qword ptr [rbp - 0x108]
	nop	
	add	rdx, 4
	mov	rbp, rbp
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x23c]
	mov	rdx, qword ptr [rbp - 0x88]
	call	memset
	mov	byte ptr [rbp - 0x14c], 0
.label_995:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x158]
	mov	rbp, rbp
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x138], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x201], cl
	lea	rdi, [rdi]
	je	.label_965
	cmp	dword ptr [rbp - 0x134], 0
	lea	rsi, [rsi]
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x201], al
.label_965:
	mov	al, byte ptr [rbp - 0x201]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_978
	mov	qword ptr [rbp - 0x1b0], 0
	lea	rsi, [rsi]
	jmp	.label_979
.label_978:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x221], 1
	lea	rdi, [rdi]
	je	.label_972
	cmp	qword ptr [rbp - 0xa8], 0xa
	jb	.label_972
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	imul	rcx, qword ptr [rbp - 0xa8], 5
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_972
	mov	rax, qword ptr [rbp - 8]
	sub	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rax
.label_990:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x90], 0
	nop	
	mov	byte ptr [rbp - 0x212], cl
	jbe	.label_982
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	byte ptr [rbp - 0xd0], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x91], cl
	je	.label_1009
	cmp	dword ptr [rbp - 0xcc], 0
	nop	
	sete	al
	mov	byte ptr [rbp - 0x91], al
.label_1009:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	xor	al, 0xff
	nop	
	mov	byte ptr [rbp - 0x212], al
.label_982:
	mov	al, byte ptr [rbp - 0x212]
	mov	rbp, rbp
	test	al, 1
	jne	.label_971
	jmp	.label_977
.label_971:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
	nop	
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, -1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_990
.label_977:
	lea	rdi, [rbp - 0xf0]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x238], rax
	nop	
	call	mbuiter_multi_next
	mov	rbp, rbp
	xor	ecx, ecx
	mov	dl, cl
	test	byte ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x211], dl
	mov	rbp, rbp
	je	.label_994
	cmp	dword ptr [rbp - 0xcc], 0
	nop	
	sete	al
	mov	byte ptr [rbp - 0x211], al
.label_994:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x211]
	xor	al, 0xff
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1002
	lea	rdx, [rbp - 0x1b8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	call	knuth_morris_pratt_multibyte
	and	al, 1
	mov	byte ptr [rbp - 0x15a], al
	test	byte ptr [rbp - 0x15a], 1
	lea	rsi, [rsi]
	je	.label_1011
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x1b0], rax
	jmp	.label_979
.label_1011:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x221], 0
.label_1002:
	lea	rsi, [rsi]
	jmp	.label_972
.label_972:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x138], 1
	je	.label_974
	test	byte ptr [rbp - 0x180], 1
	je	.label_974
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x134]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x17c]
	je	.label_989
	lea	rsi, [rsi]
	jmp	.label_973
.label_974:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_973
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rsi, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	call	memcmp
	cmp	eax, 0
	nop	
	jne	.label_973
.label_989:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x58]
	lea	rsi, [rsi]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	ecx, 0x40
	mov	edi, ecx
	lea	r8, [rbp - 0x158]
	lea	r9, [rbp - 0x1f8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rdi
	lea	rsi, [rsi]
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x64], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0xf8]
	nop	
	mov	qword ptr [rbp - 0x100], rdx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1e8], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1ec], 0
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 4
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	call	memset
	nop	
	mov	byte ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r10b, cl
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x159], r10b
	nop	
	je	.label_998
	cmp	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x159], al
.label_998:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x159]
	xor	al, 0xff
	test	al, 1
	nop	
	jne	.label_1005
	call	abort
.label_1005:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4c], 0
.label_981:
	lea	rdi, [rbp - 0x58]
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x23d], cl
	mov	rbp, rbp
	je	.label_966
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x23d], al
.label_966:
	mov	al, byte ptr [rbp - 0x23d]
	lea	rdi, [rdi]
	xor	al, 0xff
	test	al, 1
	mov	rsp, rsp
	jne	.label_975
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x1b0], rax
	jmp	.label_979
.label_975:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x1f8]
	call	mbuiter_multi_next
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1d8], 1
	mov	byte ptr [rbp - 0x15b], cl
	je	.label_987
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1d4], 0
	nop	
	sete	al
	mov	byte ptr [rbp - 0x15b], al
.label_987:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x15b]
	xor	al, 0xff
	test	al, 1
	jne	.label_997
	mov	qword ptr [rbp - 0x1b0], 0
	jmp	.label_979
.label_997:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x1d8], 1
	je	.label_984
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x38], 1
	mov	rbp, rbp
	je	.label_984
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1d4]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x34]
	je	.label_988
	jmp	.label_964
.label_984:
	mov	rax, qword ptr [rbp - 0x1e0]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	jne	.label_964
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x1e8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	call	memcmp
	cmp	eax, 0
	je	.label_988
.label_964:
	jmp	.label_980
.label_988:
	jmp	.label_999
.label_999:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1e8], rax
	mov	byte ptr [rbp - 0x1ec], 0
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4c], 0
	mov	rbp, rbp
	jmp	.label_981
.label_980:
	jmp	.label_973
.label_973:
	nop	
	jmp	.label_993
.label_993:
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x14c], 0
	mov	rbp, rbp
	jmp	.label_995
.label_969:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x1b0], rax
	jmp	.label_979
.label_986:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1010
	mov	byte ptr [rbp - 0x113], 1
	mov	qword ptr [rbp - 0x200], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x10], 0
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x112], dl
.label_1012:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	jne	.label_976
	mov	qword ptr [rbp - 0x1b0], 0
	nop	
	jmp	.label_979
.label_976:
	test	byte ptr [rbp - 0x113], 1
	je	.label_985
	cmp	qword ptr [rbp - 0x200], 0xa
	lea	rsi, [rsi]
	jb	.label_985
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x200], 5
	lea	rsi, [rsi]
	cmp	rax, rcx
	jb	.label_985
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	je	.label_996
	mov	rdi, qword ptr [rbp - 0x110]
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	strnlen
	add	rax, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x110]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jne	.label_1006
	mov	qword ptr [rbp - 0x110], 0
.label_1006:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_996:
	nop	
	cmp	qword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jne	.label_968
	mov	rsp, rsp
	lea	rcx, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	mov	rdx, qword ptr [rbp - 0x78]
	add	rdx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rdi
	lea	rdi, [rdi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x210], rcx
	mov	qword ptr [rbp - 0x220], rax
	lea	rdi, [rdi]
	call	strlen
	nop	
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0x220]
	nop	
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x210]
	call	knuth_morris_pratt
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x23e], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x23e], 1
	je	.label_992
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x1b0], rax
	lea	rdi, [rdi]
	jmp	.label_979
.label_992:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x113], 0
.label_968:
	lea	rsi, [rsi]
	jmp	.label_985
.label_985:
	mov	rax, qword ptr [rbp - 0x200]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x200], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x60]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x112]
	nop	
	cmp	ecx, edx
	jne	.label_1004
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x230], rax
.label_1003:
	mov	rax, qword ptr [rbp - 0x230]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_970
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x1b0], rax
	lea	rsi, [rsi]
	jmp	.label_979
.label_970:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_983
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1b0], 0
	lea	rsi, [rsi]
	jmp	.label_979
.label_983:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	mov	rsp, rsp
	je	.label_991
	jmp	.label_1000
.label_991:
	jmp	.label_1001
.label_1001:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x230]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	jmp	.label_1003
.label_1000:
	jmp	.label_1004
.label_1004:
	jmp	.label_1007
.label_1007:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1012
.label_1010:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x1b0], rax
.label_979:
	nop	
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	add	rsp, 0x240
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410a40

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0x128], rdi
	mov	qword ptr [rbp - 0xb8], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x170], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0xb8]
	call	mbslen
	movabs	rdx, 0x249249249249249
	mov	qword ptr [rbp - 0x158], rax
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	jae	.label_1042
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x120], rcx
	lea	rdi, [rdi]
	jmp	.label_1018
.label_1042:
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x158], 0x38
	nop	
	cmp	rax, 0xfa1
	mov	rbp, rbp
	jae	.label_1025
	nop	
	mov	rax, qword ptr [rbp - 0x158]
	imul	rax, rax, 0x38
	add	rax, 0x2e
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	mov	rbp, rbp
	sub	rcx, rax
	mov	rsp, rsp
	mov	rsp, rcx
	add	rcx, 0x1f
	and	rcx, 0xffffffffffffffe0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	nop	
	jmp	.label_1033
.label_1025:
	nop	
	imul	rdi, qword ptr [rbp - 0x158], 0x38
	lea	rsi, [rsi]
	call	mmalloca
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
.label_1033:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rax
.label_1018:
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x108], 0
	jne	.label_1027
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x14a], 0
	mov	rsp, rsp
	jmp	.label_1035
.label_1027:
	mov	rbp, rbp
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	imul	r8, qword ptr [rbp - 0x158], 0x30
	add	rdi, r8
	mov	qword ptr [rbp - 0x138], rdi
	mov	rdi, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x160], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x118], 0
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40], 0
	add	rcx, 4
	mov	rsp, rsp
	mov	rdi, rcx
	call	memset
	nop	
	mov	byte ptr [rbp - 0x34], 0
.label_1037:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x95], cl
	je	.label_1041
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	sete	al
	mov	byte ptr [rbp - 0x95], al
.label_1041:
	mov	al, byte ptr [rbp - 0x95]
	mov	rbp, rbp
	xor	al, 0xff
	test	al, 1
	jne	.label_1045
	jmp	.label_1022
.label_1045:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x118]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rbp - 0xb0]
	add	rax, 0x10
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rsi, rax
	call	mb_copy
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x34], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, 1
	mov	qword ptr [rbp - 0x118], rax
	nop	
	jmp	.label_1037
.label_1022:
	mov	rax, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 1
	mov	qword ptr [rbp - 0x168], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], 2
.label_1014:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x158]
	jae	.label_1030
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, 1
	imul	rax, rax, 0x30
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rax
.label_1036:
	mov	rax, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x10], 1
	je	.label_1017
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	imul	rax, rax, 0x30
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb0]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1017
	mov	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x14]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x168]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rax + 0x14]
	je	.label_1024
	nop	
	jmp	.label_1034
.label_1017:
	mov	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1034
	mov	rax, qword ptr [rbp - 0x110]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x168]
	imul	rax, rax, 0x30
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	mov	rdx, qword ptr [rax + 8]
	call	memcmp
	cmp	eax, 0
	jne	.label_1034
.label_1024:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x168], rcx
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1023
.label_1034:
	cmp	qword ptr [rbp - 0x168], 0
	nop	
	jne	.label_1020
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	jmp	.label_1023
.label_1020:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x168]
	mov	rcx, qword ptr [rbp - 0x168]
	nop	
	mov	rdx, qword ptr [rbp - 0x160]
	nop	
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x168], rax
	mov	rbp, rbp
	jmp	.label_1036
.label_1023:
	mov	rsp, rsp
	jmp	.label_1047
.label_1047:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1014
.label_1030:
	xor	eax, eax
	nop	
	mov	ecx, 8
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	lea	rsi, [rbp - 0x100]
	lea	rdi, [rbp - 0x80]
	mov	r8, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	qword ptr [r8], 0
	mov	qword ptr [rbp - 0xc0], 0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x70], r8
	mov	byte ptr [rbp - 0x80], 0
	add	rdi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], rsi
	mov	rbp, rbp
	mov	esi, eax
	mov	qword ptr [rbp - 0x148], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], eax
	mov	rsp, rsp
	call	memset
	mov	byte ptr [rbp - 0x74], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rdx
	nop	
	mov	byte ptr [rbp - 0x100], 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	add	rdx, 4
	mov	rdi, rdx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	call	memset
	mov	byte ptr [rbp - 0xf4], 0
.label_1043:
	lea	rdi, [rbp - 0x100]
	nop	
	call	mbuiter_multi_next
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	byte ptr [rbp - 0xe0], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa1], cl
	je	.label_1044
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xdc], 0
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa1], al
.label_1044:
	mov	al, byte ptr [rbp - 0xa1]
	mov	rbp, rbp
	xor	al, 0xff
	test	al, 1
	jne	.label_1026
	mov	rsp, rsp
	jmp	.label_1013
.label_1026:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1021
	nop	
	test	byte ptr [rbp - 0xe0], 1
	mov	rbp, rbp
	je	.label_1021
	mov	rax, qword ptr [rbp - 0xc0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x14]
	cmp	ecx, dword ptr [rbp - 0xdc]
	mov	rsp, rsp
	je	.label_1015
	lea	rdi, [rdi]
	jmp	.label_1028
.label_1021:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	imul	rax, rax, 0x30
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	jne	.label_1028
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	imul	rax, rax, 0x30
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 8]
	call	memcmp
	cmp	eax, 0
	jne	.label_1028
.label_1015:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xf4], 0
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0x158]
	jne	.label_1029
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	qword ptr [rcx], rax
	nop	
	jmp	.label_1013
.label_1029:
	lea	rsi, [rsi]
	jmp	.label_1016
.label_1028:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xc0], 0
	mov	rsp, rsp
	jbe	.label_1019
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	mov	rcx, qword ptr [rbp - 0x160]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	sub	rcx, rax
	mov	qword ptr [rbp - 0xc0], rcx
.label_1032:
	nop	
	cmp	qword ptr [rbp - 0x90], 0
	jbe	.label_1039
	mov	rbp, rbp
	lea	rdi, [rbp - 0x80]
	call	mbuiter_multi_next
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	byte ptr [rbp - 0x60], 1
	mov	byte ptr [rbp - 0x149], cl
	je	.label_1040
	cmp	dword ptr [rbp - 0x5c], 0
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x149], al
.label_1040:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x149]
	mov	rbp, rbp
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	jne	.label_1046
	lea	rsi, [rsi]
	call	abort
.label_1046:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x74], 0
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	add	rax, -1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1032
.label_1039:
	mov	rsp, rsp
	jmp	.label_1048
.label_1019:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x80]
	call	mbuiter_multi_next
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	byte ptr [rbp - 0x60], 1
	mov	byte ptr [rbp - 0x129], cl
	mov	rsp, rsp
	je	.label_1038
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0x129], al
.label_1038:
	mov	al, byte ptr [rbp - 0x129]
	xor	al, 0xff
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1031
	mov	rsp, rsp
	call	abort
.label_1031:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x74], 0
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xf4], 0
.label_1048:
	lea	rsi, [rsi]
	jmp	.label_1016
.label_1016:
	jmp	.label_1043
.label_1013:
	mov	rdi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	call	freea
	mov	byte ptr [rbp - 0x14a], 1
.label_1035:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x14a]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4112d0

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x80
	movabs	rax, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rcx
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1052
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	jmp	.label_1049
.label_1052:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	shl	rax, 3
	lea	rsi, [rsi]
	cmp	rax, 0xfa1
	jae	.label_1061
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	lea	rax, [rax*8 + 0x2e]
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rbp, rbp
	mov	rsp, rcx
	add	rcx, 0x1f
	mov	rbp, rbp
	and	rcx, 0xffffffffffffffe0
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_1067
.label_1061:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	shl	rax, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	call	mmalloca
	mov	qword ptr [rbp - 0x48], rax
.label_1067:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_1049:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1053
	mov	byte ptr [rbp - 0x51], 0
	jmp	.label_1064
.label_1053:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rax + 8], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 2
.label_1062:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jae	.label_1058
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], dl
.label_1068:
	movzx	eax, byte ptr [rbp - 1]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	movzx	esi, byte ptr [rdx + rcx]
	cmp	eax, esi
	jne	.label_1051
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	jmp	.label_1060
.label_1051:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jne	.label_1054
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	jmp	.label_1060
.label_1054:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1068
.label_1060:
	mov	rbp, rbp
	jmp	.label_1059
.label_1059:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1062
.label_1058:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x68], rax
.label_1057:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_1050
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x68]
	movzx	esi, byte ptr [rax]
	cmp	edx, esi
	jne	.label_1066
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	nop	
	jne	.label_1056
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	nop	
	jmp	.label_1050
.label_1056:
	nop	
	jmp	.label_1055
.label_1066:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	nop	
	jbe	.label_1063
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1065
.label_1063:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
.label_1065:
	jmp	.label_1055
.label_1055:
	jmp	.label_1057
.label_1050:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rdi, rax
	call	freea
	nop	
	mov	byte ptr [rbp - 0x51], 1
.label_1064:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411600

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	test	byte ptr [rdi + 0xc], 1
	je	.label_1069
	lea	rsi, [rsi]
	jmp	.label_1081
.label_1069:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax], 1
	je	.label_1084
	jmp	.label_1086
.label_1084:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	mov	rbp, rbp
	jne	.label_1075
	jmp	.label_1078
.label_1075:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x18], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x20], 1
	jmp	.label_1080
.label_1078:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 4
	nop	
	mov	rdi, rax
	nop	
	call	mbsinit
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1082
	lea	rdi, [rdi]
	jmp	.label_1085
.label_1082:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_7
	nop	
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0x96
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	mov	rsp, rsp
	call	__assert_fail
.label_1085:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], 1
.label_1086:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	nop	
	add	rax, 0x14
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x18], rdi
	call	__ctype_get_mb_cur_max
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	strnlen1
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 4
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, rax
	call	rpl_mbrtowc
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], -1
	lea	rsi, [rsi]
	jne	.label_1074
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x20], 0
	mov	rbp, rbp
	jmp	.label_1070
.label_1074:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], -2
	nop	
	jne	.label_1079
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 0x10]
	nop	
	call	strlen
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_1073
.label_1079:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_1072
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_1076
	mov	rbp, rbp
	jmp	.label_1071
.label_1076:
	movabs	rdi, OFFSET FLAT:.str.2_3
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0xb2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	mov	rbp, rbp
	call	__assert_fail
.label_1071:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x24], 0
	lea	rsi, [rsi]
	jne	.label_1087
	jmp	.label_1077
.label_1087:
	nop	
	movabs	rdi, OFFSET FLAT:.str.3_1
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	rsp, rsp
	mov	edx, 0xb3
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_1077:
	jmp	.label_1072
.label_1072:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x20], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 4
	mov	rdi, rax
	lea	rsi, [rsi]
	call	mbsinit
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1083
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rax], 0
.label_1083:
	jmp	.label_1073
.label_1073:
	jmp	.label_1070
.label_1070:
	jmp	.label_1080
.label_1080:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0xc], 1
.label_1081:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4118e0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	add	rsi, qword ptr [rdi + 0x10]
	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411910
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	al, byte ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	lea	rsi, [rsi]
	and	cl, 1
	nop	
	mov	byte ptr [rsi], cl
	test	al, 1
	mov	rbp, rbp
	jne	.label_1088
	jmp	.label_1089
.label_1088:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 4]
	mov	rsp, rsp
	mov	qword ptr [rax + 4], rcx
	jmp	.label_1090
.label_1089:
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
.label_1090:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rax + 0xc], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdx, 0x10
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rdx
	call	mb_copy
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4119e0

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10f0
	xor	eax, eax
	nop	
	mov	r9d, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10f0], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rdx
	mov	qword ptr [rbp - 0x98], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], r8
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, r9
	mov	rdx, r9
	mov	rcx, r9
	mov	rbp, rbp
	mov	r8, r9
	lea	rdi, [rdi]
	call	iconv
	nop	
	mov	qword ptr [rbp - 0x90], 0
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x10f0]
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0xb0], rax
.label_1093:
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	jbe	.label_1109
	lea	rsi, [rbp - 0x18]
	lea	rdx, [rbp - 0x28]
	lea	rcx, [rbp - 0xa8]
	lea	r8, [rbp - 0xb8]
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x10e0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], 0x1000
	nop	
	mov	rdi, qword ptr [rbp - 0xc8]
	call	iconv
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1091
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 7
	jne	.label_1104
	jmp	.label_1095
.label_1104:
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_1107
	jmp	.label_1109
.label_1107:
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1097
.label_1095:
	jmp	.label_1091
.label_1091:
	lea	rax, [rbp - 0x10e0]
	mov	rcx, qword ptr [rbp - 0xa8]
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rcx
	lea	rdi, [rdi]
	jmp	.label_1093
.label_1109:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x88]
	nop	
	lea	r8, [rbp - 0xd0]
	nop	
	lea	rsi, [rbp - 0x10e0]
	mov	qword ptr [rbp - 0x88], rsi
	mov	qword ptr [rbp - 0xd0], 0x1000
	nop	
	mov	rdi, qword ptr [rbp - 0xc8]
	nop	
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10e8], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10e8]
	lea	rdi, [rdi]
	call	iconv
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rax
	cmp	qword ptr [rbp - 0xe0], -1
	jne	.label_1094
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1097
.label_1094:
	mov	rbp, rbp
	lea	rax, [rbp - 0x10e0]
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rcx
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1099
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 0x1c], 0
	jmp	.label_1097
.label_1099:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1092
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jb	.label_1092
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1100
.label_1092:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	jne	.label_1105
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	nop	
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1097
.label_1105:
	jmp	.label_1100
.label_1100:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, rcx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	call	iconv
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10f0]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x68], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x40], rax
.label_1108:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xd8], 0
	jbe	.label_1096
	mov	rsp, rsp
	lea	rsi, [rbp - 0x48]
	mov	rbp, rbp
	lea	rdx, [rbp - 0xd8]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x68]
	mov	rbp, rbp
	lea	r8, [rbp - 8]
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	call	iconv
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	cmp	qword ptr [rbp - 0xc0], -1
	jne	.label_1101
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x16
	jne	.label_1106
	jmp	.label_1096
.label_1106:
	jmp	.label_1102
.label_1101:
	mov	rsp, rsp
	jmp	.label_1108
.label_1096:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x68]
	lea	rsi, [rsi]
	lea	r8, [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	iconv
	nop	
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1098
	jmp	.label_1102
.label_1098:
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_1103
	call	abort
.label_1103:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x1c], 0
	jmp	.label_1097
.label_1102:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rcx]
	je	.label_1110
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x7c], ecx
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	mov	dword ptr [rax], ecx
.label_1110:
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1097:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x10f0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x411e60

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	eax, 0xffffffff
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0xc0], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rsi, 4
	cmp	rcx, rsi
	ja	.label_1115
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 4
	mov	qword ptr [rbp - 0x40], rax
.label_1115:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	call	malloc
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1113
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_1116
.label_1113:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0xb0]
	call	iconv
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
.label_1133:
	lea	rsi, [rbp - 0xc0]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0xc8]
	lea	rcx, [rbp - 0xa0]
	lea	rdi, [rdi]
	lea	r8, [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	iconv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1124
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_1129
	lea	rdi, [rdi]
	jmp	.label_1132
.label_1129:
	call	__errno_location
	cmp	dword ptr [rax], 7
	mov	rsp, rsp
	jne	.label_1122
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_1134
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1114
.label_1134:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x58]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x98], 0
	lea	rsi, [rsi]
	jne	.label_1118
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jmp	.label_1114
.label_1118:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	sub	rax, 1
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1111
.label_1122:
	mov	rbp, rbp
	jmp	.label_1114
.label_1111:
	mov	rbp, rbp
	jmp	.label_1127
.label_1127:
	nop	
	jmp	.label_1123
.label_1124:
	lea	rdi, [rdi]
	jmp	.label_1132
.label_1123:
	nop	
	jmp	.label_1133
.label_1132:
	jmp	.label_1130
.label_1130:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0xa0]
	lea	r8, [rbp - 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x88]
	call	iconv
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], -1
	mov	rsp, rsp
	jne	.label_1120
	call	__errno_location
	cmp	dword ptr [rax], 7
	lea	rsi, [rsi]
	jne	.label_1125
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_1126
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1114
.label_1126:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x80]
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	jne	.label_1117
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jmp	.label_1114
.label_1117:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	sub	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1128
.label_1125:
	lea	rsi, [rsi]
	jmp	.label_1114
.label_1128:
	mov	rsp, rsp
	jmp	.label_1121
.label_1120:
	lea	rsi, [rsi]
	jmp	.label_1131
.label_1121:
	jmp	.label_1130
.label_1131:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0xa0], rcx
	mov	byte ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x40]
	nop	
	jae	.label_1119
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	realloc
	mov	qword ptr [rbp - 0xd0], rax
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rsp, rsp
	je	.label_1112
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1112:
	mov	rbp, rbp
	jmp	.label_1119
.label_1119:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	jmp	.label_1116
.label_1114:
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	free
	nop	
	mov	ecx, dword ptr [rbp - 0x8c]
	nop	
	mov	dword ptr [rbp - 0xb4], ecx
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xb4]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
.label_1116:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	add	rsp, 0xd0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412330

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	eax, byte ptr [rdx]
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1140
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	c_strcasecmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1142
.label_1140:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	call	strdup
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	jne	.label_1137
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1137:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1135
.label_1142:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	call	iconv_open
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rax
	nop	
	cmp	qword ptr [rbp - 8], rsi
	jne	.label_1138
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jmp	.label_1135
.label_1138:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	str_cd_iconv
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jne	.label_1136
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rdi, qword ptr [rbp - 8]
	call	iconv_close
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
	mov	dword ptr [rbp - 0x10], ecx
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	jmp	.label_1139
.label_1136:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	iconv_close
	cmp	eax, 0
	jge	.label_1141
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jmp	.label_1135
.label_1141:
	jmp	.label_1139
.label_1139:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_1135:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4124d0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	xor	esi, esi
	lea	rdi, [rdi]
	call	memchr
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1143
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	sub	rax, rcx
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_1144
.label_1143:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1144:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412550

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
	jge	.label_1149
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_1147
.label_1149:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1146
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
	je	.label_1145
.label_1146:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1145
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_1145:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1148
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
.label_1148:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_1147:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412670

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
	je	.label_1150
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_1151
.label_1150:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1152
.label_1151:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_1152:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4126e0

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
	je	.label_1153
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
.label_1153:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412740

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
	jne	.label_1154
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1154
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1154
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
	jne	.label_1155
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1156
.label_1155:
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
	jmp	.label_1156
.label_1154:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_1156:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412850

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
	ja	.label_1157
	jmp	.label_1158
.label_1158:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1159
.label_1157:
	lea	rsi, [rsi]
	jmp	.label_1159
.label_1159:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4128b0
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
	jb	.label_1160
	jmp	.label_1162
.label_1162:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1160
	jmp	.label_1161
.label_1161:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1163
	jmp	.label_1160
.label_1160:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1164
.label_1163:
	mov	byte ptr [rbp - 1], 0
.label_1164:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412920
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
	jb	.label_1165
	jmp	.label_1168
.label_1168:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1166
	jmp	.label_1165
.label_1165:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1167
.label_1166:
	mov	byte ptr [rbp - 1], 0
.label_1167:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412970
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1169
	jmp	.label_1171
.label_1171:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1170
.label_1169:
	mov	byte ptr [rbp - 1], 0
.label_1170:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4129a0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1172
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1172:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4129d0
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
	jb	.label_1173
	jmp	.label_1175
.label_1175:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1176
	jmp	.label_1173
.label_1173:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1174
.label_1176:
	mov	byte ptr [rbp - 1], 0
.label_1174:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412a20
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1177
	jmp	.label_1179
.label_1179:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1178
.label_1177:
	mov	byte ptr [rbp - 1], 0
.label_1178:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412a60
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1180
	jmp	.label_1182
.label_1182:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1181
.label_1180:
	mov	byte ptr [rbp - 1], 0
.label_1181:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412aa0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1183
	jmp	.label_1185
.label_1185:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1184
.label_1183:
	mov	byte ptr [rbp - 1], 0
.label_1184:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ae0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1186
	jmp	.label_1188
.label_1188:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1187
.label_1186:
	mov	byte ptr [rbp - 1], 0
.label_1187:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412b20
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
	jb	.label_1189
	jmp	.label_1192
.label_1192:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1189
	jmp	.label_1193
.label_1193:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_1189
	jmp	.label_1191
.label_1191:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_1194
	jmp	.label_1189
.label_1189:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1190
.label_1194:
	mov	byte ptr [rbp - 1], 0
.label_1190:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ba0
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
	jb	.label_1195
	jmp	.label_1197
.label_1197:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1198
	jmp	.label_1195
.label_1195:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1196
.label_1198:
	mov	byte ptr [rbp - 1], 0
.label_1196:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412bf0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1199
	jmp	.label_1201
.label_1201:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1200
.label_1199:
	mov	byte ptr [rbp - 1], 0
.label_1200:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c30
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
	jb	.label_1202
	jmp	.label_1205
.label_1205:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1202
	jmp	.label_1203
.label_1203:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1204
	jmp	.label_1202
.label_1202:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1206
.label_1204:
	mov	byte ptr [rbp - 1], 0
.label_1206:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ca0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1207
	jmp	.label_1209
.label_1209:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1208
.label_1207:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1208:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ce0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1210
	jmp	.label_1212
.label_1212:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1211
.label_1210:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1211:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412d20

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	add	rdi, 1
	add	rdi, 0x20
	lea	rdi, [rdi]
	sub	rdi, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jb	.label_1213
	mov	rdi, qword ptr [rbp - 0x10]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_1214
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 1
	add	rax, 0x10
	sub	rax, 1
	and	rax, 0xffffffffffffffe0
	lea	rdi, [rdi]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	dl, al
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax - 1], dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_1215
.label_1214:
	jmp	.label_1213
.label_1213:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
.label_1215:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412e00

	.globl freea
	.type freea, @function
freea:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	and	rdi, 0xf
	cmp	rdi, 0
	je	.label_1216
	call	abort
.label_1216:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	and	rax, 0x10
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1217
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [rsi - 1]
	lea	rdi, [rdi]
	movsxd	rsi, eax
	sub	rcx, rsi
	lea	rsi, [rsi]
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	free
.label_1217:
	lea	rdi, [rdi]
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412e90
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	wcwidth
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jl	.label_1218
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_1219
.label_1218:
	mov	edi, dword ptr [rbp - 4]
	call	iswcntrl
	mov	edi, 1
	xor	ecx, ecx
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0xc], edi
.label_1219:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412f00

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdi, 0x18
	mov	rbp, rbp
	cmp	rsi, rdi
	mov	rbp, rbp
	jne	.label_1220
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x18
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_1223
.label_1220:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_1223:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	sil, dl
	and	sil, 1
	mov	byte ptr [rax + 0x10], sil
	lea	rdi, [rdi]
	test	dl, 1
	jne	.label_1222
	jmp	.label_1221
.label_1222:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_1221:
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413000

	.globl is_basic
	.type is_basic, @function
is_basic:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	nop	
	movzx	edi, byte ptr [rbp - 1]
	mov	rsp, rsp
	sar	edi, 5
	lea	rsi, [rsi]
	movsxd	rcx, edi
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	movzx	edx, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	edx, 0x1f
	mov	rbp, rbp
	mov	ecx, edx
	mov	rsp, rsp
	shr	edi, cl
	and	edi, 1
	cmp	edi, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413060

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1228
	xor	esi, esi
	mov	eax, 8
	nop	
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	byte ptr [rbp - 0x40], 0
	add	rcx, 4
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x34], 0
.label_1227:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x40]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x49], cl
	mov	rsp, rsp
	je	.label_1225
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], al
.label_1225:
	mov	al, byte ptr [rbp - 0x49]
	nop	
	xor	al, 0xff
	test	al, 1
	jne	.label_1229
	jmp	.label_1224
.label_1229:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x34], 0
	nop	
	jmp	.label_1227
.label_1224:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1226
.label_1228:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
.label_1226:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rsp, 0x60
	pop	rbp
	ret	
