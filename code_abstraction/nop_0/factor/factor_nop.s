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
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	je	.label_7
	lea	rsi, [rsi]
	jmp	.label_8
.label_8:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	nop	
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	call	emit_ancillary_info
.label_9:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
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
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_15:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	lea	rdi, [rdi]
	je	.label_12
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_12:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_11
	nop	
	jmp	.label_14
.label_11:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_15
.label_14:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_13
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
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
	mov	dword ptr [rbp - 0x28], eax
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
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.28
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	nop	
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.29
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
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
	sub	rsp, 0x80
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x28], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.7
	mov	qword ptr [rbp - 0x30], rax
	call	textdomain
	mov	qword ptr [rbp - 0x38], rax
	call	lbuf_alloc
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:lbuf_flush
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	call	atexit
	nop	
	mov	dword ptr [rbp - 0x40], eax
.label_26:
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	getopt_long
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_19
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x44], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], ecx
	mov	rsp, rsp
	je	.label_23
	jmp	.label_16
.label_16:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	je	.label_18
	nop	
	jmp	.label_21
.label_21:
	nop	
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x80
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], eax
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
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0x60], rax
	nop	
	call	proper_name_utf8
	nop	
	movabs	rdi, OFFSET FLAT:.str.13
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
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
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, r10
	mov	r9, qword ptr [rbp - 0x68]
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
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	jg	.label_28
	lea	rdi, [rdi]
	call	do_stdin
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x15], al
	jmp	.label_20
.label_28:
	mov	byte ptr [rbp - 0x15], 1
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x1c], eax
.label_27:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_25
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	call	print_factors
	test	al, 1
	jne	.label_22
	mov	byte ptr [rbp - 0x15], 0
.label_22:
	jmp	.label_29
.label_29:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	jmp	.label_27
.label_25:
	mov	rbp, rbp
	jmp	.label_20
.label_20:
	mov	eax, 1
	xor	ecx, ecx
	nop	
	mov	dl, byte ptr [rbp - 0x15]
	nop	
	test	dl, 1
	mov	rbp, rbp
	cmovne	eax, ecx
	add	rsp, 0x80
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
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [lbuf]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	call	full_write
	cmp	rax, qword ptr [rbp - 8]
	je	.label_34
	mov	rbp, rbp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xc]
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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	lea	rax, [rbp - 0x18]
	lea	rsi, [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	strto2uintmax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	nop	
	mov	ecx, eax
	test	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], ecx
	lea	rdi, [rdi]
	je	.label_50
	mov	rsp, rsp
	jmp	.label_46
.label_46:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x70], eax
	nop	
	je	.label_49
	lea	rsi, [rsi]
	jmp	.label_55
.label_50:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	shl	rax, 1
	shr	rax, 1
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jne	.label_40
	jmp	.label_48
.label_48:
	test	byte ptr [byte ptr [dev_debug]],  1
	nop	
	je	.label_51
	movabs	rsi, OFFSET FLAT:.str.36
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x74], eax
.label_51:
	lea	rsi, [rsi]
	jmp	.label_44
.label_44:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_factors_single
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jmp	.label_38
.label_40:
	nop	
	jmp	.label_39
.label_49:
	jmp	.label_39
.label_55:
	movabs	rdi, OFFSET FLAT:.str.37
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	call	quote
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_38
.label_39:
	jmp	.label_43
.label_43:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [dev_debug]],  1
	nop	
	je	.label_45
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.38
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
.label_45:
	mov	rbp, rbp
	jmp	.label_42
.label_42:
	mov	edx, 0xa
	mov	rsp, rsp
	lea	rdi, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__gmpz_init_set_str
	movabs	rdi, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x40]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	mov	al, 0
	call	__gmp_printf
	lea	rsi, [rbp - 0x58]
	lea	rdi, [rbp - 0x40]
	mov	dword ptr [rbp - 0x8c], eax
	call	mp_factor
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], 0
.label_54:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x48]
	jae	.label_52
	mov	dword ptr [rbp - 0x60], 0
.label_47:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rsi + rdx*8]
	mov	rbp, rbp
	jae	.label_41
	nop	
	movabs	rdi, OFFSET FLAT:.str.40
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 0x58]
	mov	rsi, rcx
	mov	rsp, rsp
	mov	al, 0
	call	__gmp_printf
	mov	dword ptr [rbp - 0x90], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x60]
	add	eax, 1
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_47
.label_41:
	jmp	.label_53
.label_53:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	jmp	.label_54
.label_52:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x58]
	mov	rbp, rbp
	call	mp_factor_clear
	lea	rdi, [rbp - 0x40]
	call	__gmpz_clear
	mov	rbp, rbp
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], eax
	call	fflush_unlocked
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	dword ptr [rbp - 0x98], eax
.label_38:
	mov	al, byte ptr [rbp - 1]
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
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 0x34], 4
.label_60:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movsx	edx, byte ptr [rbp - 0x35]
	lea	rsi, [rsi]
	cmp	edx, 0x20
	jne	.label_68
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_59
.label_68:
	movsx	eax, byte ptr [rbp - 0x35]
	lea	rdi, [rdi]
	cmp	eax, 0x2b
	jne	.label_65
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_58
.label_65:
	jmp	.label_58
.label_59:
	lea	rsi, [rsi]
	jmp	.label_60
.label_58:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_61:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x44], edx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 0
	mov	rbp, rbp
	jne	.label_64
	lea	rsi, [rsi]
	jmp	.label_57
.label_64:
	mov	eax, dword ptr [rbp - 0x44]
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
	mov	dword ptr [rbp - 0x34], 4
	mov	rbp, rbp
	jmp	.label_57
.label_63:
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_61
.label_57:
	lea	rsi, [rsi]
	jmp	.label_62
.label_62:
	cmp	dword ptr [rbp - 0x34], 0
	nop	
	jne	.label_56
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	movsx	edx, byte ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x48], edx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x48], 0
	jne	.label_69
	jmp	.label_56
.label_69:
	mov	rbp, rbp
	movabs	rax, 0x1999999999999999
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x48]
	sub	ecx, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], ecx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	seta	dl
	and	dl, 1
	movzx	ecx, dl
	mov	rbp, rbp
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_66
	mov	dword ptr [rbp - 0x34], 1
	jmp	.label_56
.label_66:
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x28], 0xa
	mov	qword ptr [rbp - 0x28], rax
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
	mov	dword ptr [rbp - 0x1c], edx
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
	add	edx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsp, rsp
	imul	rax, qword ptr [rbp - 0x30], 0xa
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x48]
	nop	
	mov	eax, edx
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x48]
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
	add	edx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	eax, edx
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x1c]
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
	mov	dword ptr [rbp - 0x34], 1
	nop	
	jmp	.label_56
.label_67:
	jmp	.label_62
.label_56:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	nop	
	mov	eax, dword ptr [rbp - 0x34]
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
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
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	factor
	mov	dword ptr [rbp - 0x114], 0
.label_73:
	mov	eax, dword ptr [rbp - 0x114]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x16]
	cmp	eax, ecx
	jae	.label_75
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x118], 0
.label_74:
	mov	eax, dword ptr [rbp - 0x118]
	nop	
	mov	ecx, dword ptr [rbp - 0x114]
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
	mov	eax, dword ptr [rbp - 0x114]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsi, qword ptr [rbp + rcx*8 - 0x100]
	call	print_uintmaxes
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x118]
	nop	
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	lea	rsi, [rsi]
	jmp	.label_74
.label_70:
	jmp	.label_72
.label_72:
	mov	eax, dword ptr [rbp - 0x114]
	mov	rbp, rbp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x114], eax
	jmp	.label_73
.label_75:
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_71
	mov	rbp, rbp
	mov	edi, 0x20
	call	lbuf_putc
	mov	rdi, qword ptr [rbp - 0x108]
	nop	
	mov	rsi, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	call	print_uintmaxes
.label_71:
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
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	mp_factor_init
	mov	rsi, qword ptr [rbp - 8]
	cmp	dword ptr [rsi + 4], 0
	jge	.label_80
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_84
.label_80:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 4], 0
	mov	rbp, rbp
	setg	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], edx
.label_84:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, 0
	je	.label_78
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	mp_factor_using_division
	lea	rdi, [rdi]
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
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
	mov	dword ptr [rbp - 0x18], eax
.label_81:
	lea	rdi, [rdi]
	jmp	.label_77
.label_77:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	call	mp_prime_p
	test	al, 1
	jne	.label_82
	jmp	.label_83
.label_82:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	mp_factor_insert
	jmp	.label_85
.label_83:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_88
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	lbuf_putint
	jmp	.label_95
.label_88:
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	xor	edx, edx
	div	rcx
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, esi
	lea	rsi, [rsi]
	div	rcx
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x20], 0x3b9aca00
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
	mov	qword ptr [rbp - 0x28], 0x3b9aca00
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], 0x40
.label_94:
	cmp	dword ptr [rbp - 0x4c], 0
	jbe	.label_91
	mov	rbp, rbp
	jmp	.label_93
.label_93:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shr	rax, 1
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	shl	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	ja	.label_96
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_90
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_90
.label_96:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0x60], rsi
	sub	rdx, qword ptr [rbp - 0x60]
	sbb	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], rdx
.label_90:
	mov	rsp, rsp
	jmp	.label_92
.label_92:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, -1
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_94
.label_91:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	print_uintmaxes
	mov	rbp, rbp
	mov	eax, 9
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	nop	
	mov	rcx,  qword ptr [word ptr [label_33]]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 1
	mov	qword ptr [word ptr [label_33]],  rdx
	nop	
	mov	byte ptr [rcx], al
	nop	
	movsx	edi, byte ptr [rbp - 1]
	mov	rbp, rbp
	cmp	edi, 0xa
	mov	rsp, rsp
	jne	.label_100
	nop	
	mov	rax,  qword ptr [word ptr [label_33]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [lbuf]]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
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
	cmp	qword ptr [rbp - 0x10], 0x200
	nop	
	jb	.label_103
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [label_33]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [lbuf]]
	add	rax, 0x200
	mov	qword ptr [rbp - 0x20], rax
.label_101:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0xa
	lea	rsi, [rsi]
	je	.label_99
	jmp	.label_101
.label_99:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [label_33]],  rax
	lea	rsi, [rsi]
	call	lbuf_flush
	mov	rdi,  qword ptr [word ptr [lbuf]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax,  qword ptr [word ptr [lbuf]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + 0xfa], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], 0
	cmp	qword ptr [rbp - 8], 0
	jne	.label_110
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 2
	jae	.label_110
	jmp	.label_106
.label_110:
	mov	rsp, rsp
	lea	rdi, [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	factor_using_division
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_107
	cmp	qword ptr [rbp - 0x10], 2
	mov	rbp, rbp
	jae	.label_107
	jmp	.label_106
.label_107:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	prime2_p
	test	al, 1
	jne	.label_105
	jmp	.label_108
.label_105:
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	call	factor_insert_large
	mov	rsp, rsp
	jmp	.label_106
.label_108:
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_109
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
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
	sub	rsp, 0x50
	lea	rax, [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
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
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, rdi
	mov	rbp, rbp
	sub	rsi, rax
	sub	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x40], rsi
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_113:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jae	.label_112
	mov	rax,  qword ptr [word ptr [label_33]]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [label_33]],  rcx
	mov	byte ptr [rax], 0x30
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_113
.label_112:
	mov	rdi,  qword ptr [word ptr [label_33]]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	call	memcpy
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rdx,  qword ptr [word ptr [label_33]]
	mov	qword ptr [word ptr [label_33]],  rdx
	add	rsp, 0x50
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	and	rcx, 1
	cmp	rcx, 0
	jne	.label_114
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_143
	nop	
	jmp	.label_148
.label_148:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x78], rax
	bsf	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x24]
	nop	
	shr	rax, cl
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	nop	
	mov	edx, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	add	edx, 0x40
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], edx
	jmp	.label_139
.label_143:
	jmp	.label_124
.label_124:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	bsf	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	jmp	.label_128
.label_128:
	mov	eax, 0x40
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 0x88], rcx
	mov	rbp, rbp
	mov	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x88]
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	shr	rsi, cl
	mov	rsp, rsp
	or	rdx, rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	ecx, eax
	shr	rdx, cl
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	jmp	.label_139
.label_139:
	lea	rsi, [rsi]
	mov	eax, 2
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	call	factor_insert_multiplicity
.label_114:
	mov	qword ptr [rbp - 0x30], 3
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], 0
.label_145:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x89], cl
	lea	rdi, [rdi]
	jbe	.label_149
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	cmp	rcx, 0x29c
	mov	rbp, rbp
	setb	dl
	mov	byte ptr [rbp - 0x89], dl
.label_149:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x89]
	mov	rsp, rsp
	test	al, 1
	jne	.label_116
	jmp	.label_129
.label_116:
	lea	rsi, [rsi]
	jmp	.label_144
.label_144:
	movabs	rax, OFFSET FLAT:primes_dtab
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x34]
	mov	esi, edx
	mov	rbp, rbp
	shl	rsi, 4
	add	rax, rsi
	imul	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x80], rcx
	mul	qword ptr [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	qword ptr [rbp - 0x50], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jbe	.label_134
	mov	rbp, rbp
	jmp	.label_115
.label_134:
	movabs	rax, OFFSET FLAT:primes_dtab
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	edx, dword ptr [rbp - 0x34]
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
	mov	edx, dword ptr [rbp - 0x34]
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
	je	.label_121
	lea	rdi, [rdi]
	jmp	.label_115
.label_121:
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	factor_insert_multiplicity
	jmp	.label_144
.label_115:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	add	eax, 1
	mov	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	jmp	.label_145
.label_129:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	je	.label_170
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_170:
	jmp	.label_122
.label_122:
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0x29c
	jae	.label_132
	movabs	rax, OFFSET FLAT:primes_dtab
	mov	ecx, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	edx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	add	rax, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	jmp	.label_138
.label_138:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 8]
	seta	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	nop	
	je	.label_159
	jmp	.label_131
.label_159:
	xor	ecx, ecx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	nop	
	jmp	.label_138
.label_131:
	lea	rdi, [rdi]
	jmp	.label_152
.label_152:
	mov	rbp, rbp
	jmp	.label_154
.label_154:
	lea	rsi, [rsi]
	jmp	.label_153
.label_153:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x18]
	seta	dl
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_161
	jmp	.label_135
.label_161:
	nop	
	mov	ecx, 1
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	nop	
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_153
.label_135:
	jmp	.label_155
.label_155:
	lea	rsi, [rsi]
	jmp	.label_158
.label_158:
	nop	
	jmp	.label_160
.label_160:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	imul	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
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
	jmp	.label_142
.label_163:
	lea	rdi, [rdi]
	mov	ecx, 2
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	add	edx, 1
	call	factor_insert_refind
	lea	rdi, [rdi]
	jmp	.label_160
.label_142:
	nop	
	jmp	.label_126
.label_126:
	lea	rdi, [rdi]
	jmp	.label_168
.label_168:
	lea	rdi, [rdi]
	jmp	.label_162
.label_162:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rcx + 0x30]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
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
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	mov	rsp, rsp
	call	factor_insert_refind
	jmp	.label_162
.label_150:
	lea	rdi, [rdi]
	jmp	.label_119
.label_119:
	nop	
	jmp	.label_120
.label_120:
	jmp	.label_123
.label_123:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	imul	rax, qword ptr [rcx + 0x40]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
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
	je	.label_125
	jmp	.label_157
.label_125:
	nop	
	mov	ecx, 4
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_123
.label_157:
	jmp	.label_127
.label_127:
	mov	rsp, rsp
	jmp	.label_165
.label_165:
	jmp	.label_133
.label_133:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x50]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
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
	je	.label_136
	nop	
	jmp	.label_167
.label_136:
	mov	ecx, 5
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	lea	rdi, [rdi]
	call	factor_insert_refind
	jmp	.label_133
.label_167:
	jmp	.label_156
.label_156:
	jmp	.label_171
.label_171:
	lea	rdi, [rdi]
	jmp	.label_130
.label_130:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	imul	rax, qword ptr [rcx + 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x68]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_151
	lea	rsi, [rsi]
	jmp	.label_166
.label_151:
	mov	ecx, 6
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	add	edx, 1
	lea	rdi, [rdi]
	call	factor_insert_refind
	lea	rsi, [rsi]
	jmp	.label_130
.label_166:
	nop	
	jmp	.label_137
.label_137:
	jmp	.label_140
.label_140:
	lea	rsi, [rsi]
	jmp	.label_141
.label_141:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	imul	rax, qword ptr [rcx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
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
	je	.label_146
	jmp	.label_164
.label_146:
	mov	rsp, rsp
	mov	ecx, 7
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_141
.label_164:
	jmp	.label_169
.label_169:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff8]]
	mov	ecx, eax
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jbe	.label_147
	lea	rdi, [rdi]
	jmp	.label_132
.label_147:
	jmp	.label_117
.label_117:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_122
.label_132:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404140

	.globl prime2_p
	.type prime2_p, @function
prime2_p:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x2b0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_202
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	prime_p
	nop	
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	jmp	.label_175
.label_202:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rbp - 0x18], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rsi, edx
	sub	rax, rsi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jne	.label_173
	lea	rsi, [rsi]
	jmp	.label_203
.label_203:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x258], rax
	bsf	rcx, qword ptr [rbp - 0x258]
	mov	dword ptr [rbp - 0x7c], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	shr	rax, cl
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
	mov	edx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	add	edx, 0x40
	mov	dword ptr [rbp - 0x7c], edx
	lea	rdi, [rdi]
	jmp	.label_198
.label_173:
	nop	
	jmp	.label_181
.label_181:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x250], rax
	bsf	rcx, qword ptr [rbp - 0x250]
	nop	
	mov	dword ptr [rbp - 0x7c], ecx
	jmp	.label_184
.label_184:
	mov	rbp, rbp
	mov	eax, 0x40
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	sub	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	qword ptr [rbp - 0x2a8], rcx
	mov	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2a8]
	lea	rdi, [rdi]
	shl	rdx, cl
	mov	rsi, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, eax
	shr	rsi, cl
	or	rdx, rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, eax
	lea	rdi, [rdi]
	shr	rdx, cl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	jmp	.label_198
.label_198:
	nop	
	mov	qword ptr [rbp - 0x188], 2
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x190], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x190]
	nop	
	shr	rax, 1
	and	rax, 0x7f
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	nop	
	shl	rax, 1
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x198]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	sub	rax, rdx
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x198]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x198], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x198]
	shl	rax, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x190]
	nop	
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_186
.label_186:
	mov	rbp, rbp
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_188
	mov	qword ptr [rbp - 0x1a0], 1
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x1b0], 0x40
	jmp	.label_199
.label_188:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1a0], 0
	mov	qword ptr [rbp - 0x1a8], 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1b0], 0x80
.label_199:
	lea	rsi, [rsi]
	jmp	.label_172
.label_172:
	mov	rax, qword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1b0], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	jbe	.label_178
	jmp	.label_197
.label_197:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a0]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x1a8]
	shr	rcx, 0x3f
	or	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a0]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_200
	nop	
	mov	rax, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jne	.label_194
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_194
.label_200:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x298], rcx
	mov	qword ptr [rbp - 0x2a0], rsi
	sub	rdx, qword ptr [rbp - 0x2a0]
	sbb	rax, qword ptr [rbp - 0x298]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	qword ptr [rbp - 0x1a8], rdx
.label_194:
	lea	rdi, [rdi]
	jmp	.label_172
.label_178:
	mov	rax, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_176
.label_176:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x260], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x268], rsi
	add	rdx, qword ptr [rbp - 0x268]
	adc	rax, qword ptr [rbp - 0x260]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rdx
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_189
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_174
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jb	.label_174
.label_189:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x270], rcx
	mov	qword ptr [rbp - 0x278], rsi
	sub	rdx, qword ptr [rbp - 0x278]
	sbb	rax, qword ptr [rbp - 0x270]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rdx
.label_174:
	lea	rsi, [rsi]
	jmp	.label_208
.label_208:
	mov	rbp, rbp
	lea	r9, [rbp - 0x60]
	mov	rsp, rsp
	lea	rcx, [rbp - 0x30]
	lea	rdx, [rbp - 0x50]
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	r8d, dword ptr [rbp - 0x7c]
	call	millerrabin2
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_185
	mov	byte ptr [rbp - 1], 0
	jmp	.label_175
.label_185:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	lea	rsi, [rsi]
	je	.label_195
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x180]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	factor
.label_195:
	mov	dword ptr [rbp - 0x1b4], 0
.label_179:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_212
	mov	rbp, rbp
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_201
	mov	byte ptr [rbp - 0x1b5], 1
	nop	
	cmp	qword ptr [rbp - 0x178], 0
	mov	rsp, rsp
	je	.label_182
	lea	rsi, [rsi]
	jmp	.label_191
.label_191:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rax, qword ptr [rbp - 0x1f0]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rax, qword ptr [rbp - 0x1f8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x1f8]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1f8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x1f8]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rax, qword ptr [rbp - 0x1f8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f8]
	nop	
	imul	rdx, qword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x1f8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1e8], rax
	mov	rbp, rbp
	lea	r9, [rbp - 0x60]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x70]
	lea	rdx, [rbp - 0x1d0]
	nop	
	lea	rsi, [rbp - 0x50]
	lea	rax, [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1e8]
	imul	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d0], rdi
	mov	qword ptr [rbp - 0x1c8], 0
	add	rax, 8
	mov	r8, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	powm2
	mov	r10b, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1e0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2a9], r10b
	jne	.label_211
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x58]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2a9], cl
.label_211:
	mov	al, byte ptr [rbp - 0x2a9]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1b5], al
.label_182:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1fc], 0
.label_215:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1fc]
	nop	
	movzx	edx, byte ptr [rbp - 0x86]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x2aa], cl
	jae	.label_206
	nop	
	mov	al, byte ptr [rbp - 0x1b5]
	mov	byte ptr [rbp - 0x2aa], al
.label_206:
	mov	al, byte ptr [rbp - 0x2aa]
	test	al, 1
	mov	rsp, rsp
	jne	.label_220
	mov	rbp, rbp
	jmp	.label_177
.label_220:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	qword ptr [rbp + rcx*8 - 0x170], 2
	lea	rsi, [rsi]
	jne	.label_190
	nop	
	jmp	.label_196
.label_196:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x40]
	shr	rcx, 1
	lea	rsi, [rsi]
	or	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1d0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	shr	rax, 1
	mov	qword ptr [rbp - 0x1c8], rax
	jmp	.label_217
.label_190:
	jmp	.label_216
.label_216:
	lea	rsi, [rsi]
	jmp	.label_218
.label_218:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + rcx*8 - 0x170]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x218], rcx
	mov	rcx, qword ptr [rbp - 0x218]
	shr	rcx, 1
	lea	rdi, [rdi]
	and	rcx, 0x7f
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + binvert_table]]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x220], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	mov	rbp, rbp
	shl	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x220]
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x220]
	nop	
	imul	rdx, qword ptr [rbp - 0x218]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x220], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	lea	rdi, [rdi]
	shl	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x220]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x218]
	sub	rcx, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x220], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	mov	rbp, rbp
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x220], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	mov	qword ptr [rbp - 0x208], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x210], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x1fc]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	cmp	rax, qword ptr [rbp + rdx*8 - 0x170]
	mov	rsp, rsp
	jb	.label_222
	mov	rax, qword ptr [rbp - 0x210]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1fc]
	mov	edx, ecx
	mov	rdx, qword ptr [rbp + rdx*8 - 0x170]
	mov	qword ptr [rbp - 0x290], rdx
	mul	qword ptr [rbp - 0x290]
	mov	qword ptr [rbp - 0x230], rax
	nop	
	mov	qword ptr [rbp - 0x228], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x228]
	imul	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x210]
	nop	
	mov	qword ptr [rbp - 0x1d0], rax
	jmp	.label_221
.label_222:
	nop	
	mov	rax, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x1d0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c8], 0
.label_221:
	lea	rdi, [rdi]
	jmp	.label_204
.label_204:
	jmp	.label_217
.label_217:
	nop	
	lea	r9, [rbp - 0x60]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x70]
	nop	
	lea	rdx, [rbp - 0x1d0]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x50]
	lea	rax, [rbp - 0x1e0]
	add	rax, 8
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	powm2
	mov	r10b, 1
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2ab], r10b
	mov	rsp, rsp
	jne	.label_207
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x2ab], cl
.label_207:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x2ab]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1b5], al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1fc]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x1fc], eax
	jmp	.label_215
.label_177:
	lea	rdi, [rdi]
	jmp	.label_213
.label_201:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1b4], 0x18
	lea	rsi, [rsi]
	sete	al
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x1b5], al
.label_213:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1b5], 1
	mov	rbp, rbp
	je	.label_180
	nop	
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_175
.label_180:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	rbp, rbp
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x188]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x188], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x188]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_193
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x238], rax
	mov	qword ptr [rbp - 0x240], 0
	mov	qword ptr [rbp - 0x248], 0x40
	mov	rsp, rsp
	jmp	.label_214
.label_193:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x238], 0
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x240], rax
	mov	qword ptr [rbp - 0x248], 0x80
.label_214:
	jmp	.label_183
.label_183:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x248]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 0x248], rcx
	mov	rsp, rsp
	cmp	rax, 0
	jbe	.label_205
	jmp	.label_210
.label_210:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	shl	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x240]
	mov	rsp, rsp
	shr	rcx, 0x3f
	mov	rbp, rbp
	or	rax, rcx
	mov	qword ptr [rbp - 0x238], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x240]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x240], rax
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_219
	mov	rax, qword ptr [rbp - 0x238]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_192
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x240]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_192
.label_219:
	nop	
	mov	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x240]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x280], rcx
	mov	qword ptr [rbp - 0x288], rsi
	sub	rdx, qword ptr [rbp - 0x288]
	sbb	rax, qword ptr [rbp - 0x280]
	mov	qword ptr [rbp - 0x238], rax
	nop	
	mov	qword ptr [rbp - 0x240], rdx
.label_192:
	jmp	.label_183
.label_205:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x238]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x240]
	mov	qword ptr [rbp - 0x50], rax
	lea	r9, [rbp - 0x60]
	lea	rcx, [rbp - 0x30]
	lea	rdx, [rbp - 0x50]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	r8d, dword ptr [rbp - 0x7c]
	call	millerrabin2
	test	al, 1
	jne	.label_187
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_175
.label_187:
	jmp	.label_209
.label_209:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x1b4], eax
	jmp	.label_179
.label_212:
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
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	nop	
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x2b0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e00

	.globl factor_insert_large
	.type factor_insert_large, @function
factor_insert_large:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
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
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	rsi, qword ptr [rbp - 0x18]
	call	factor_insert_multiplicity
.label_225:
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ed0

	.globl factor_using_pollard_rho
	.type factor_using_pollard_rho, @function
factor_using_pollard_rho:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x58], 1
	mov	qword ptr [rbp - 0x60], 1
	lea	rsi, [rsi]
	jmp	.label_253
.label_253:
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 8]
	jae	.label_227
	jmp	.label_236
.label_227:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.44
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x5c2
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_using_pollard_rho
	nop	
	call	__assert_fail
.label_236:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x88], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], 0
	mov	dword ptr [rbp - 0x94], 0x40
.label_233:
	cmp	dword ptr [rbp - 0x94], 0
	jbe	.label_235
	jmp	.label_237
.label_237:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	shl	rax, 0x3f
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	shr	rcx, 1
	or	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	shl	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x70]
	ja	.label_239
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x70]
	jne	.label_228
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x78]
	nop	
	jb	.label_228
.label_239:
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xe8], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rsi
	sub	rdx, qword ptr [rbp - 0xf0]
	sbb	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_228:
	jmp	.label_230
.label_230:
	mov	eax, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	add	eax, -1
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_233
.label_235:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_240
.label_240:
	jmp	.label_248
.label_248:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	movzx	eax, dil
	nop	
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	and	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	sub	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rax
.label_249:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 1
	lea	rdi, [rdi]
	je	.label_242
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_251
	jmp	.label_256
.label_251:
	movabs	rdi, OFFSET FLAT:.str.50
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x5c8
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_using_pollard_rho
	call	__assert_fail
.label_256:
	jmp	.label_232
.label_232:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	shr	rax, 1
	lea	rsi, [rsi]
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	rsp, rsp
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xb0]
	nop	
	imul	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xa8]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	rax, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	shl	rax, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_234
.label_234:
	lea	rsi, [rsi]
	jmp	.label_231
.label_231:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	mulredc
	nop	
	mov	qword ptr [rbp - 0x20], rax
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	sub	rsi, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0xb8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	and	rcx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x10]
	sub	rcx, rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	jmp	.label_244
.label_244:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	cmp	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	setb	sil
	lea	rsi, [rsi]
	and	sil, 1
	nop	
	movzx	eax, sil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xc0]
	add	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	mulredc
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x58]
	and	rax, 0x1f
	mov	rbp, rbp
	cmp	rax, 1
	jne	.label_229
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	call	gcd_odd
	cmp	rax, 1
	je	.label_243
	mov	rsp, rsp
	jmp	.label_246
.label_243:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_229:
	lea	rdi, [rdi]
	jmp	.label_250
.label_250:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_231
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0xc8], 0
.label_252:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	jae	.label_255
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	mulredc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	sub	rsi, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	and	rcx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	jmp	.label_238
.label_238:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	jmp	.label_252
.label_255:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_234
.label_246:
	mov	rsp, rsp
	jmp	.label_259
.label_259:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	mulredc
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	sub	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	mov	rbp, rbp
	movzx	eax, dil
	movsxd	rdx, eax
	sub	rcx, rdx
	nop	
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	and	rcx, qword ptr [rbp - 0xd8]
	add	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_247
.label_247:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	nop	
	setb	sil
	mov	rsp, rsp
	and	sil, 1
	movzx	eax, sil
	lea	rdi, [rdi]
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	and	rcx, qword ptr [rbp - 0xe0]
	add	rcx, qword ptr [rbp - 0x28]
	nop	
	sub	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	call	gcd_odd
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 1
	nop	
	je	.label_259
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_258
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_242
.label_258:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	prime_p
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_245
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, rax
	call	factor_using_pollard_rho
	mov	rbp, rbp
	jmp	.label_257
.label_245:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	call	factor_insert_multiplicity
.label_257:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	call	prime_p
	test	al, 1
	jne	.label_254
	jmp	.label_241
.label_254:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	factor_insert_multiplicity
	jmp	.label_242
.label_241:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rdx
	jmp	.label_249
.label_242:
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405720

	.globl factor_using_pollard_rho2
	.type factor_using_pollard_rho2, @function
factor_using_pollard_rho2:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x1f0
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x98], 1
	mov	qword ptr [rbp - 0xa0], 1
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 8]
	nop	
	jae	.label_269
	mov	qword ptr [rbp - 0xa8], 1
	mov	qword ptr [rbp - 0xb0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], 0x40
	jmp	.label_283
.label_269:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], 0x80
.label_283:
	jmp	.label_298
.label_298:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rcx
	nop	
	cmp	rax, 0
	jbe	.label_304
	jmp	.label_315
.label_315:
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	shl	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	shr	rcx, 0x3f
	or	rax, rcx
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	shl	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	ja	.label_296
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_277
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jb	.label_277
.label_296:
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1d0], rcx
	nop	
	mov	qword ptr [rbp - 0x1d8], rsi
	sub	rdx, qword ptr [rbp - 0x1d8]
	sbb	rax, qword ptr [rbp - 0x1d0]
	nop	
	mov	qword ptr [rbp - 0xa8], rax
	mov	qword ptr [rbp - 0xb0], rdx
.label_277:
	lea	rdi, [rdi]
	jmp	.label_298
.label_304:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_300
.label_300:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rcx
	mov	qword ptr [rbp - 0x128], rsi
	add	rdx, qword ptr [rbp - 0x128]
	adc	rax, qword ptr [rbp - 0x120]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_314
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_272
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	jb	.label_272
.label_314:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x130], rcx
	mov	qword ptr [rbp - 0x138], rsi
	sub	rdx, qword ptr [rbp - 0x138]
	sbb	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
.label_272:
	jmp	.label_286
.label_286:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], rax
.label_308:
	nop	
	mov	al, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1d9], al
	lea	rsi, [rsi]
	jne	.label_297
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 1
	setne	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d9], al
.label_297:
	mov	al, byte ptr [rbp - 0x1d9]
	test	al, 1
	jne	.label_312
	jmp	.label_267
.label_312:
	mov	rsp, rsp
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	shr	rax, 1
	and	rax, 0x7f
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	shl	rax, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xc8]
	nop	
	imul	rdx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	nop	
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_261
.label_261:
	lea	rsi, [rsi]
	jmp	.label_275
.label_275:
	lea	rdi, [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x30]
	nop	
	mov	r9, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	r10, qword ptr [rbp - 0x78]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	lea	rsi, [rsi]
	call	mulredc2
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x140], rdx
	add	rcx, qword ptr [rbp - 0x140]
	adc	rax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	ja	.label_271
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	nop	
	jne	.label_281
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_281
.label_271:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x148], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x150], rsi
	sub	rdx, qword ptr [rbp - 0x150]
	sbb	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
.label_281:
	jmp	.label_310
.label_310:
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x158], rcx
	mov	qword ptr [rbp - 0x160], rsi
	sub	rdx, qword ptr [rbp - 0x160]
	sbb	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x68], 0
	jge	.label_313
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x168], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rsi
	add	rdx, qword ptr [rbp - 0x170]
	adc	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
.label_313:
	jmp	.label_290
.label_290:
	lea	rdi, [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r8, qword ptr [rbp - 0x70]
	mov	r9, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r10, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x98]
	and	rax, 0x1f
	mov	rbp, rbp
	cmp	rax, 1
	lea	rsi, [rsi]
	jne	.label_295
	lea	rdi, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	gcd2_odd
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	jne	.label_309
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x88], 1
	je	.label_266
.label_309:
	nop	
	jmp	.label_268
.label_266:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x50], rax
.label_295:
	jmp	.label_273
.label_273:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_275
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], 0
.label_305:
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x98]
	jae	.label_292
	nop	
	lea	rdi, [rbp - 0x90]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], rdx
	add	rcx, qword ptr [rbp - 0x178]
	adc	rax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	ja	.label_320
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jne	.label_279
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jb	.label_279
.label_320:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rcx
	nop	
	mov	qword ptr [rbp - 0x188], rsi
	sub	rdx, qword ptr [rbp - 0x188]
	sbb	rax, qword ptr [rbp - 0x180]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
.label_279:
	lea	rsi, [rsi]
	jmp	.label_299
.label_299:
	jmp	.label_303
.label_303:
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	jmp	.label_305
.label_292:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_261
.label_268:
	nop	
	jmp	.label_260
.label_260:
	lea	rdi, [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x190], rdx
	add	rcx, qword ptr [rbp - 0x190]
	adc	rax, 0
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_287
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	jne	.label_288
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_288
.label_287:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x198], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a0], rsi
	sub	rdx, qword ptr [rbp - 0x1a0]
	sbb	rax, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rdx
.label_288:
	jmp	.label_318
.label_318:
	jmp	.label_317
.label_317:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	qword ptr [rbp - 0x1b0], rsi
	sub	rdx, qword ptr [rbp - 0x1b0]
	sbb	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
	cmp	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	jge	.label_262
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1b8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c0], rsi
	add	rdx, qword ptr [rbp - 0x1c0]
	adc	rax, qword ptr [rbp - 0x1b8]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
.label_262:
	jmp	.label_285
.label_285:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x10]
	call	gcd2_odd
	mov	qword ptr [rbp - 0x88], rax
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1da], cl
	jne	.label_293
	cmp	qword ptr [rbp - 0x88], 1
	sete	al
	nop	
	mov	byte ptr [rbp - 0x1da], al
.label_293:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x1da]
	test	al, 1
	jne	.label_260
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_316
	nop	
	jmp	.label_319
.label_319:
	jmp	.label_263
.label_263:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xe8]
	shr	rax, 1
	mov	rbp, rbp
	and	rax, 0x7f
	mov	rsp, rsp
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	shl	rax, 1
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xe8]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xe8]
	sub	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0xf0]
	nop	
	imul	rdx, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	sub	rax, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xe0], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x88]
	nop	
	jb	.label_265
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x1c8], rcx
	mul	qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x100], rax
	mov	qword ptr [rbp - 0xf8], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_270
.label_265:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	qword ptr [rbp - 8], 0
.label_270:
	jmp	.label_289
.label_289:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x88]
	call	prime_p
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_294
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_311
.label_294:
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	call	factor_insert_multiplicity
.label_311:
	nop	
	jmp	.label_301
.label_316:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_264
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	jne	.label_264
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, rax
	call	factor_using_pollard_rho2
	lea	rsi, [rsi]
	jmp	.label_267
.label_264:
	mov	rbp, rbp
	jmp	.label_280
.label_280:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x110]
	shr	rax, 1
	and	rax, 0x7f
	mov	rsp, rsp
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	nop	
	mov	eax, ecx
	nop	
	mov	qword ptr [rbp - 0x118], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	shl	rax, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x118]
	nop	
	imul	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x110]
	nop	
	sub	rax, rdx
	mov	qword ptr [rbp - 0x118], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x118]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x118]
	nop	
	imul	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	shl	rax, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x110]
	sub	rax, rdx
	nop	
	mov	qword ptr [rbp - 0x118], rax
	nop	
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x108], rax
	mov	rax, qword ptr [rbp - 0x108]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	call	prime2_p
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_282
	nop	
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, rax
	nop	
	call	factor_using_pollard_rho2
	lea	rsi, [rsi]
	jmp	.label_291
.label_282:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	call	factor_insert_large
.label_291:
	lea	rsi, [rsi]
	jmp	.label_301
.label_301:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_306
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	prime_p
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_284
	jmp	.label_302
.label_284:
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	factor_insert_multiplicity
	jmp	.label_267
.label_302:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	factor_using_pollard_rho
	jmp	.label_267
.label_306:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	prime2_p
	mov	rbp, rbp
	test	al, 1
	jne	.label_276
	jmp	.label_307
.label_276:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	factor_insert_large
	lea	rsi, [rsi]
	jmp	.label_267
.label_307:
	lea	rdi, [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	mod2
	nop	
	lea	rdi, [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	call	mod2
	nop	
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	mod2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_308
.label_267:
	nop	
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065f0

	.globl factor_insert_multiplicity
	.type factor_insert_multiplicity, @function
factor_insert_multiplicity:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], edx
	mov	rsi, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rsi + 0xfa]
	nop	
	mov	dword ptr [rbp - 0x18], edx
	mov	rsi, qword ptr [rbp - 8]
	nop	
	add	rsi, 0x10
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	add	rsi, 0xe0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x18]
	sub	edx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], edx
.label_321:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	jl	.label_323
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_326
	lea	rsi, [rsi]
	jmp	.label_323
.label_326:
	mov	rsp, rsp
	jmp	.label_328
.label_328:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	add	eax, -1
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	jmp	.label_321
.label_323:
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jl	.label_325
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x2c]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	je	.label_322
.label_325:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	sub	eax, 1
	mov	dword ptr [rbp - 0x30], eax
.label_327:
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	jle	.label_324
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	edx, 1
	movsxd	rcx, edx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + rcx*8], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dil, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x30]
	add	edx, 1
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], dil
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x30]
	nop	
	add	eax, -1
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	jmp	.label_327
.label_324:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	add	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dil, cl
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x2c]
	nop	
	add	ecx, 1
	movsxd	rax, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rax], dil
	nop	
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	mov	dil, cl
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xfa], dil
	jmp	.label_329
.label_322:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	movsxd	rcx, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movzx	esi, byte ptr [rdx + rcx]
	add	esi, eax
	mov	dil, sil
	mov	byte ptr [rdx + rcx], dil
.label_329:
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4067d0

	.globl factor_insert_refind
	.type factor_insert_refind, @function
factor_insert_refind:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	dword ptr [rbp - 0x1c], 0
.label_331:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x18]
	nop	
	jae	.label_330
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, dword ptr [rbp - 0x1c]
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
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_331
.label_330:
	mov	rbp, rbp
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
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
	#Procedure 0x406870

	.globl prime_p
	.type prime_p, @function
prime_p:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x220
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 1
	lea	rdi, [rdi]
	ja	.label_368
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_339
.label_368:
	cmp	qword ptr [rbp - 0x10], 0x17ded79
	jae	.label_343
	mov	byte ptr [rbp - 1], 1
	jmp	.label_339
.label_343:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x138], rax
	mov	dword ptr [rbp - 0x14], 0
.label_366:
	mov	rax, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	and	rax, 1
	cmp	rax, 0
	nop	
	jne	.label_361
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x138]
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_366
.label_361:
	mov	qword ptr [rbp - 0x140], 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rax
	nop	
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x150], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x150], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x150], rax
	nop	
	mov	rax, qword ptr [rbp - 0x150]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x150]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x148]
	sub	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x150], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_340
.label_340:
	mov	rbp, rbp
	jmp	.label_332
.label_332:
	mov	eax, 1
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jae	.label_336
	mov	rbp, rbp
	jmp	.label_344
.label_336:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.42
	mov	rsp, rsp
	mov	edx, 0x4c4
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.prime_p
	call	__assert_fail
.label_344:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x160], rax
	nop	
	mov	qword ptr [rbp - 0x168], 0
	nop	
	mov	qword ptr [rbp - 0x178], 1
	nop	
	mov	qword ptr [rbp - 0x180], 0
	mov	qword ptr [rbp - 0x170], 0
	mov	dword ptr [rbp - 0x184], 0x40
.label_358:
	cmp	dword ptr [rbp - 0x184], 0
	mov	rsp, rsp
	jbe	.label_345
	lea	rsi, [rsi]
	jmp	.label_350
.label_350:
	nop	
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	shl	rax, 0x3f
	nop	
	mov	rcx, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	shr	rcx, 1
	mov	rsp, rsp
	or	rax, rcx
	mov	qword ptr [rbp - 0x168], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	shr	rax, 1
	nop	
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0x170], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x160]
	ja	.label_354
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	jne	.label_349
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x168]
	jb	.label_349
.label_354:
	nop	
	mov	rax, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x170], rax
	nop	
	mov	rax, qword ptr [rbp - 0x178]
	nop	
	mov	rcx, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x200], rcx
	mov	qword ptr [rbp - 0x208], rsi
	sub	rdx, qword ptr [rbp - 0x208]
	sbb	rax, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x178], rax
	mov	qword ptr [rbp - 0x180], rdx
.label_349:
	jmp	.label_357
.label_357:
	mov	eax, dword ptr [rbp - 0x184]
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x184], eax
	mov	rbp, rbp
	jmp	.label_358
.label_345:
	mov	rax, qword ptr [rbp - 0x180]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_363
.label_363:
	jmp	.label_333
.label_333:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	sub	rsi, qword ptr [rbp - 0x28]
	cmp	rdx, rsi
	mov	rsp, rsp
	setb	dil
	lea	rdi, [rdi]
	and	dil, 1
	movzx	eax, dil
	movsxd	rdx, eax
	mov	rbp, rbp
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x190], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	and	rcx, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x138]
	mov	r8d, dword ptr [rbp - 0x14]
	nop	
	mov	r9, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	millerrabin
	mov	rbp, rbp
	test	al, 1
	jne	.label_341
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_339
.label_341:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_353
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edi, eax
	lea	rdx, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rcx, 1
	mov	rsi, rcx
	call	factor
.label_353:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x194], 0
.label_334:
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, 0x29c
	jae	.label_369
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	mov	rbp, rbp
	je	.label_337
	mov	byte ptr [rbp - 0x15], 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x198], 0
.label_359:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x198]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 0x36]
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x209], cl
	jae	.label_348
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	mov	byte ptr [rbp - 0x209], al
.label_348:
	mov	al, byte ptr [rbp - 0x209]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_362
	jmp	.label_367
.label_362:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rax, 1
	mov	ecx, dword ptr [rbp - 0x198]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x218], rdx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	nop	
	div	qword ptr [rbp + rsi*8 - 0x120]
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	r9, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	rdx, r8
	lea	rdi, [rdi]
	mov	r8, r9
	call	powm
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	setne	r10b
	and	r10b, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], r10b
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x198]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x198], eax
	jmp	.label_359
.label_367:
	mov	rbp, rbp
	jmp	.label_370
.label_337:
	cmp	dword ptr [rbp - 0x194], 0x18
	sete	al
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
.label_370:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	je	.label_338
	mov	byte ptr [rbp - 1], 1
	jmp	.label_339
.label_338:
	nop	
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, eax
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	ecx, eax
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e8], rdx
	mov	rax, rcx
	mul	qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1a8], rax
	nop	
	mov	qword ptr [rbp - 0x1a0], rdx
	cmp	qword ptr [rbp - 0x1a0], 0
	sete	sil
	mov	rbp, rbp
	and	sil, 1
	movzx	edi, sil
	mov	rbp, rbp
	movsxd	rax, edi
	nop	
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_347
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1a8]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	jmp	.label_342
.label_347:
	jmp	.label_360
.label_360:
	mov	rax, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_352
	jmp	.label_364
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
.label_364:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	qword ptr [rbp - 0x1c0], 0
	mov	rax, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x1d8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1c8], 0
	mov	dword ptr [rbp - 0x1dc], 0x40
.label_356:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1dc], 0
	nop	
	jbe	.label_365
	mov	rbp, rbp
	jmp	.label_372
.label_372:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1b8]
	lea	rdi, [rdi]
	shl	rax, 0x3f
	nop	
	mov	rcx, qword ptr [rbp - 0x1c0]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x1b8]
	mov	rbp, rbp
	shr	rax, 1
	mov	qword ptr [rbp - 0x1b8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	shl	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x1d0]
	nop	
	cmp	rax, qword ptr [rbp - 0x1b8]
	lea	rdi, [rdi]
	ja	.label_371
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1d0]
	cmp	rax, qword ptr [rbp - 0x1b8]
	mov	rsp, rsp
	jne	.label_346
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x1c0]
	jb	.label_346
.label_371:
	nop	
	mov	rax, qword ptr [rbp - 0x1c8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1c8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rcx, qword ptr [rbp - 0x1b8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1d8]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f0], rcx
	mov	qword ptr [rbp - 0x1f8], rsi
	sub	rdx, qword ptr [rbp - 0x1f8]
	sbb	rax, qword ptr [rbp - 0x1f0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	qword ptr [rbp - 0x1d8], rdx
.label_346:
	jmp	.label_355
.label_355:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, -1
	mov	dword ptr [rbp - 0x1dc], eax
	jmp	.label_356
.label_365:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x1b0], rax
	jmp	.label_342
.label_342:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x138]
	nop	
	mov	r8d, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x28]
	nop	
	call	millerrabin
	nop	
	test	al, 1
	jne	.label_351
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_339
.label_351:
	jmp	.label_335
.label_335:
	mov	eax, dword ptr [rbp - 0x194]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x194], eax
	lea	rsi, [rsi]
	jmp	.label_334
.label_369:
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
.label_339:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x220
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407170

	.globl millerrabin2
	.type millerrabin2, @function
millerrabin2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rax, [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, rax
	call	powm2
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	jne	.label_375
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jne	.label_375
	mov	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jmp	.label_374
.label_375:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x70], rcx
	mov	qword ptr [rbp - 0x78], rsi
	sub	rdx, qword ptr [rbp - 0x78]
	sbb	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	jne	.label_373
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	jne	.label_373
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_374
.label_373:
	mov	dword ptr [rbp - 0x64], 1
.label_380:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	cmp	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	jae	.label_377
	mov	rbp, rbp
	lea	rdi, [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	r10, qword ptr [rbp - 0x18]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	jne	.label_376
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	jne	.label_376
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_374
.label_376:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	jne	.label_379
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jne	.label_379
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_374
.label_379:
	jmp	.label_378
.label_378:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_380
.label_377:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_374:
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x90
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4073b0

	.globl powm2
	.type powm2, @function
powm2:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rcx
	mov	dword ptr [rbp - 0x64], 0x40
.label_385:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x64], 0
	lea	rsi, [rsi]
	jbe	.label_386
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	je	.label_382
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	nop	
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_382:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x58]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	add	eax, -1
	mov	dword ptr [rbp - 0x64], eax
	mov	rcx, qword ptr [rbp - 0x70]
	shr	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rcx
	lea	rsi, [rsi]
	jmp	.label_385
.label_386:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
.label_383:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x70], 0
	mov	rbp, rbp
	jbe	.label_381
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	and	rax, 1
	cmp	rax, 0
	nop	
	je	.label_384
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x50]
	nop	
	mov	r9, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_384:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	rsp, rsp
	call	mulredc2
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	shr	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_383
.label_381:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rsp, 0x80
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407670

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
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	qword ptr [rbp - 0x38], r9
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	powm
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	je	.label_388
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	jne	.label_391
.label_388:
	nop	
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_393
.label_391:
	mov	dword ptr [rbp - 0x4c], 1
.label_390:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	cmp	eax, dword ptr [rbp - 0x2c]
	jae	.label_392
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	mulredc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_394
	mov	byte ptr [rbp - 1], 1
	jmp	.label_393
.label_394:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_389
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_393
.label_389:
	mov	rbp, rbp
	jmp	.label_387
.label_387:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_390
.label_392:
	nop	
	mov	byte ptr [rbp - 1], 0
.label_393:
	nop	
	mov	al, byte ptr [rbp - 1]
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
	#Procedure 0x4077c0

	.globl powm
	.type powm, @function
powm:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, 1
	cmp	rcx, 0
	je	.label_395
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_395:
	jmp	.label_396
.label_396:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_398
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mulredc
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	and	rax, 1
	cmp	rax, 0
	nop	
	je	.label_397
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mulredc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_397:
	mov	rbp, rbp
	jmp	.label_396
.label_398:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078b0

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
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	rax, rcx
	mul	qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 0x30]
	imul	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	mul	qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x40], rdx
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_399
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x50], rax
.label_399:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407960

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	sub	rbx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rbx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 0x3f
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_404
	jmp	.label_407
.label_404:
	nop	
	movabs	rdi, OFFSET FLAT:.str.47
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x3e8
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	call	__assert_fail
.label_407:
	mov	rax, qword ptr [rbp - 0x38]
	shr	rax, 0x3f
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_406
	jmp	.label_403
.label_406:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.48
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.42
	nop	
	mov	edx, 0x3e9
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	lea	rsi, [rsi]
	call	__assert_fail
.label_403:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x120], rcx
	mul	qword ptr [rbp - 0x120]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	qword ptr [rbp - 0x78], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rcx
	mul	qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	imul	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rcx
	mul	qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rdx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rcx
	mul	qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x88], rdx
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	setne	sil
	mov	rbp, rbp
	and	sil, 1
	mov	rsp, rsp
	movzx	edi, sil
	movsxd	rax, edi
	nop	
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rdx
	add	rcx, qword ptr [rbp - 0x100]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xf8], rdx
	add	rcx, qword ptr [rbp - 0xf8]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	qword ptr [rbp - 0x58], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xe8], rcx
	mov	qword ptr [rbp - 0xf0], r8
	add	rdx, qword ptr [rbp - 0xf0]
	adc	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe0], rcx
	mul	qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x78], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd8], rcx
	mul	qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x88], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xd0], rdx
	add	rcx, qword ptr [rbp - 0xd0]
	adc	rax, 0
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x80], rcx
	mov	rax, qword ptr [rbp - 0x48]
	imul	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rdx
	add	rcx, qword ptr [rbp - 0xc8]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rcx
	mul	qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], rdx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb8], rcx
	mul	qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rdx
	cmp	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	movzx	edi, sil
	mov	rbp, rbp
	movsxd	rax, edi
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb0], rdx
	add	rcx, qword ptr [rbp - 0xb0]
	adc	rax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rdx
	add	rcx, qword ptr [rbp - 0xa8]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rcx
	mov	qword ptr [rbp - 0xa0], r8
	add	rdx, qword ptr [rbp - 0xa0]
	adc	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	ja	.label_401
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_402
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x40]
	jb	.label_402
.label_401:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x130], rsi
	sub	rdx, qword ptr [rbp - 0x130]
	sbb	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdx
.label_402:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rsp, 0x128
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e70

	.globl gcd_odd
	.type gcd_odd, @function
gcd_odd:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	and	rsi, 1
	mov	rbp, rbp
	cmp	rsi, 0
	mov	rsp, rsp
	jne	.label_412
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_412:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_413
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_409
.label_413:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_411:
	nop	
	jmp	.label_408
.label_408:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	and	rax, 1
	nop	
	cmp	rax, 0
	jne	.label_410
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_408
.label_410:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	shr	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_414
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	rax, 1
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_409
.label_414:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	sar	rax, 0x3f
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	xor	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_411
.label_409:
	nop	
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fc0

	.globl gcd2_odd
	.type gcd2_odd, @function
gcd2_odd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x30]
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
	mov	rax, qword ptr [rbp - 0x20]
	or	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_434
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_420
.label_434:
	jmp	.label_421
.label_421:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 1
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_429
	lea	rsi, [rsi]
	jmp	.label_416
.label_416:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rax, 0x3f
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	or	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_421
.label_429:
	mov	rsp, rsp
	jmp	.label_422
.label_422:
	mov	rax, qword ptr [rbp - 0x28]
	or	rax, qword ptr [rbp - 0x18]
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_418
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], 0
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	gcd_odd
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_420
.label_418:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_419
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_424
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jbe	.label_424
.label_419:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rsi
	sub	rdx, qword ptr [rbp - 0x50]
	sbb	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rdx
.label_427:
	jmp	.label_428
.label_428:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rax, 0x3f
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	shr	rcx, 1
	or	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shr	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_431
.label_431:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 1
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_427
	jmp	.label_417
.label_424:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ja	.label_436
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jne	.label_423
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jbe	.label_423
.label_436:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], rsi
	sub	rdx, qword ptr [rbp - 0x40]
	sbb	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
.label_425:
	nop	
	jmp	.label_432
.label_432:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_430
.label_430:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 1
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_425
	mov	rbp, rbp
	jmp	.label_435
.label_423:
	nop	
	jmp	.label_433
.label_435:
	jmp	.label_417
.label_417:
	nop	
	jmp	.label_422
.label_433:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_420:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082b0

	.globl mod2
	.type mod2, @function
mod2:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_444
	jmp	.label_439
.label_444:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.52
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x1a3
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mod2
	mov	rsp, rsp
	call	__assert_fail
.label_439:
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_447
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_442
.label_447:
	mov	rsp, rsp
	jmp	.label_445
.label_445:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	bsr	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	xor	rax, 0x3f
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_438
.label_438:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	bsr	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	xor	rax, 0x3f
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x38], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, dword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	mov	eax, 0x40
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x4c]
	mov	esi, edx
	nop	
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	shl	rsi, cl
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x4c]
	mov	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	shr	rdi, cl
	or	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	ecx, eax
	nop	
	shl	rsi, cl
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x50], 0
.label_446:
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	jge	.label_443
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_448
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_437
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jb	.label_437
.label_448:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x70], rsi
	sub	rdx, qword ptr [rbp - 0x70]
	sbb	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rdx
.label_437:
	jmp	.label_440
.label_440:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shr	rcx, 1
	or	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_441
.label_441:
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_446
.label_443:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_442:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x80
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408500

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
	#Procedure 0x408540

	.globl mp_factor_using_division
	.type mp_factor_using_division, @function
mp_factor_using_division:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	test	byte ptr [byte ptr [dev_debug]],  1
	mov	rsp, rsp
	je	.label_449
	nop	
	movabs	rsi, OFFSET FLAT:.str.54
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x30], eax
.label_449:
	jmp	.label_451
.label_451:
	lea	rdi, [rbp - 0x20]
	lea	rsi, [rsi]
	call	__gmpz_init
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	__gmpz_scan1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
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
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	mp_factor_insert_ui
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, -1
	mov	qword ptr [rbp - 0x28], rsi
	jmp	.label_456
.label_450:
	mov	qword ptr [rbp - 0x28], 3
	mov	dword ptr [rbp - 0x2c], 1
.label_454:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0x29c
	ja	.label_453
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	__gmpz_divisible_ui_p
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_457
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	add	ecx, 1
	mov	dword ptr [rbp - 0x2c], ecx
	mov	eax, eax
	mov	edx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rdx * 1) + primes_diff]]
	mov	edx, eax
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, qword ptr [rbp - 8]
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
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	__gmpz_tdiv_q_ui
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	call	mp_factor_insert_ui
.label_455:
	lea	rdi, [rdi]
	jmp	.label_454
.label_453:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x20]
	lea	rdi, [rdi]
	call	__gmpz_clear
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl mp_prime_p
	.type mp_prime_p, @function
mp_prime_p:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xa0
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
	jg	.label_466
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_471
.label_466:
	mov	eax, 0x17ded79
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_470
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_471
.label_470:
	xor	eax, eax
	mov	r8d, eax
	lea	rcx, [rbp - 0x60]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x50]
	nop	
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x30]
	mov	al, 0
	lea	rsi, [rsi]
	call	__gmpz_inits
	mov	rsp, rsp
	mov	r9d, 1
	mov	edx, r9d
	mov	rbp, rbp
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	__gmpz_sub_ui
	xor	r9d, r9d
	mov	rbp, rbp
	mov	esi, r9d
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x50]
	nop	
	call	__gmpz_scan1
	lea	rsi, [rbp - 0x50]
	lea	rdi, [rbp - 0x30]
	mov	qword ptr [rbp - 0x80], rax
	mov	rdx, qword ptr [rbp - 0x80]
	call	__gmpz_tdiv_q_2exp
	mov	r9d, 2
	mov	rbp, rbp
	mov	esi, r9d
	mov	rbp, rbp
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	call	__gmpz_set_ui
	mov	rsp, rsp
	lea	r8, [rbp - 0x30]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x60]
	lea	rdx, [rbp - 0x40]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	r9, qword ptr [rbp - 0x80]
	call	mp_millerrabin
	test	al, 1
	nop	
	jne	.label_465
	nop	
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_459
.label_465:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	lea	rdi, [rdi]
	je	.label_468
	lea	rsi, [rbp - 0x50]
	lea	rdi, [rbp - 0x60]
	call	__gmpz_set
	mov	rsp, rsp
	lea	rsi, [rbp - 0x78]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x60]
	nop	
	call	mp_factor
.label_468:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], 0
.label_472:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0x29c
	jae	.label_476
	mov	rsp, rsp
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_462
	nop	
	mov	byte ptr [rbp - 0x11], 1
	mov	qword ptr [rbp - 0x90], 0
.label_474:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x91], cl
	jae	.label_467
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x91], al
.label_467:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_473
	jmp	.label_469
.label_473:
	lea	rsi, [rbp - 0x50]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x78]
	mov	rdx, rax
	mov	rsp, rsp
	call	__gmpz_divexact
	lea	rax, [rbp - 0x60]
	lea	rsi, [rbp - 0x40]
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
	mov	byte ptr [rbp - 0x11], r9b
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_474
.label_469:
	lea	rsi, [rsi]
	jmp	.label_458
.label_462:
	cmp	dword ptr [rbp - 0x84], 0x18
	sete	al
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x11], al
.label_458:
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	je	.label_463
	lea	rdi, [rdi]
	jmp	.label_461
.label_463:
	nop	
	lea	rax, [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x84]
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
	lea	r8, [rbp - 0x30]
	lea	rcx, [rbp - 0x60]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x40]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x50]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	mp_millerrabin
	test	al, 1
	mov	rbp, rbp
	jne	.label_460
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_461
.label_460:
	jmp	.label_464
.label_464:
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_472
.label_476:
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
.label_461:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_475
	lea	rdi, [rbp - 0x78]
	call	mp_factor_clear
.label_475:
	mov	rsp, rsp
	jmp	.label_459
.label_459:
	xor	eax, eax
	mov	r8d, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x60]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x50]
	lea	rsi, [rbp - 0x40]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x30]
	mov	al, 0
	lea	rsi, [rsi]
	call	__gmpz_clears
	nop	
	mov	al, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
.label_471:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ae0

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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rsi, 1
	mov	qword ptr [rbp - 0x30], rsi
.label_477:
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	jl	.label_480
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	__gmpz_cmp
	cmp	eax, 0
	nop	
	jg	.label_478
	mov	rbp, rbp
	jmp	.label_480
.label_478:
	mov	rsp, rsp
	jmp	.label_482
.label_482:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_477
.label_480:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_483
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	call	__gmpz_cmp
	nop	
	cmp	eax, 0
	je	.label_485
.label_483:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
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
	mov	qword ptr [rbp - 0x20], rax
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
	add	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	call	__gmpz_init
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_484:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jle	.label_481
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	__gmpz_set
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rcx*8 + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_484
.label_481:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rsi, [rsi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	__gmpz_set
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rsi + rax*8 + 8], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_479
.label_485:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rdx, 1
	mov	qword ptr [rcx + rax*8], rdx
.label_479:
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d70

	.globl mp_factor_using_pollard_rho
	.type mp_factor_using_pollard_rho, @function
mp_factor_using_pollard_rho:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_504
	movabs	rsi, OFFSET FLAT:.str.55
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	dword ptr [rbp - 0x9c], eax
.label_504:
	jmp	.label_494
.label_494:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x80]
	lea	rdi, [rbp - 0x70]
	mov	al, 0
	call	__gmpz_inits
	mov	ecx, 2
	mov	rbp, rbp
	mov	esi, ecx
	lea	rdi, [rbp - 0x50]
	call	__gmpz_init_set_si
	lea	rdi, [rdi]
	mov	ecx, 2
	mov	rsp, rsp
	mov	esi, ecx
	mov	rsp, rsp
	lea	rdi, [rbp - 0x30]
	nop	
	call	__gmpz_init_set_si
	nop	
	mov	ecx, 2
	mov	esi, ecx
	lea	rdi, [rbp - 0x40]
	call	__gmpz_init_set_si
	nop	
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rsp, rsp
	lea	rdi, [rbp - 0x60]
	call	__gmpz_init_set_ui
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], 1
	nop	
	mov	qword ptr [rbp - 0x90], 1
.label_492:
	mov	rbp, rbp
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__gmpz_cmp_ui
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_502
	mov	rbp, rbp
	jmp	.label_487
.label_487:
	jmp	.label_488
.label_488:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x30]
	lea	rdi, [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rdx, rax
	call	__gmpz_mul
	mov	rbp, rbp
	lea	rsi, [rbp - 0x70]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_mod
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	nop	
	mov	rsi, rax
	call	__gmpz_add_ui
	mov	rsp, rsp
	lea	rdx, [rbp - 0x30]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rbp - 0x70]
	mov	rsp, rsp
	call	__gmpz_sub
	mov	rsp, rsp
	lea	rdx, [rbp - 0x70]
	lea	rsi, [rbp - 0x60]
	lea	rdi, [rbp - 0x80]
	call	__gmpz_mul
	lea	rsi, [rbp - 0x80]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	__gmpz_mod
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	and	rax, 0x1f
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_490
	mov	rsp, rsp
	lea	rsi, [rbp - 0x60]
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_gcd
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	nop	
	je	.label_500
	jmp	.label_503
.label_500:
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rbp - 0x50]
	mov	rsp, rsp
	call	__gmpz_set
.label_490:
	mov	rbp, rbp
	jmp	.label_486
.label_486:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_488
	mov	rbp, rbp
	lea	rsi, [rbp - 0x30]
	nop	
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	call	__gmpz_set
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x90]
	shl	rsi, 1
	mov	qword ptr [rbp - 0x90], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], 0
.label_498:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	jae	.label_505
	lea	rax, [rbp - 0x30]
	lea	rdi, [rbp - 0x70]
	mov	rsi, rax
	mov	rbp, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	call	__gmpz_mul
	mov	rsp, rsp
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_mod
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	jmp	.label_498
.label_505:
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x50]
	call	__gmpz_set
	jmp	.label_487
.label_503:
	jmp	.label_489
.label_489:
	lea	rax, [rbp - 0x50]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, rax
	nop	
	mov	rdx, rax
	call	__gmpz_mul
	mov	rbp, rbp
	lea	rsi, [rbp - 0x70]
	mov	rsp, rsp
	lea	rdi, [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_mod
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	mov	rbp, rbp
	lea	rdx, [rbp - 0x50]
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rbp - 0x70]
	mov	rsp, rsp
	call	__gmpz_sub
	lea	rax, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rax
	nop	
	call	__gmpz_gcd
	mov	rsp, rsp
	mov	eax, 1
	mov	esi, eax
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	nop	
	call	__gmpz_cmp_ui
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_489
	mov	rbp, rbp
	lea	rdx, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	call	__gmpz_divexact
	lea	rdi, [rbp - 0x70]
	call	mp_prime_p
	test	al, 1
	jne	.label_495
	mov	rbp, rbp
	jmp	.label_499
.label_499:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_497
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.56
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa0], eax
.label_497:
	jmp	.label_501
.label_501:
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	mp_factor_using_pollard_rho
	jmp	.label_493
.label_495:
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x20]
	call	mp_factor_insert
.label_493:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	mp_prime_p
	test	al, 1
	jne	.label_496
	mov	rsp, rsp
	jmp	.label_491
.label_496:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	mp_factor_insert
	nop	
	jmp	.label_502
.label_491:
	lea	rax, [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rax
	call	__gmpz_mod
	nop	
	lea	rax, [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rax
	mov	rsp, rsp
	call	__gmpz_mod
	lea	rax, [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_mod
	lea	rsi, [rsi]
	jmp	.label_492
.label_502:
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	lea	r9, [rbp - 0x50]
	lea	r8, [rbp - 0x30]
	lea	rdx, [rbp - 0x40]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x70]
	nop	
	lea	rdi, [rbp - 0x80]
	nop	
	lea	r10, [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rdi
	lea	rsi, [rsi]
	mov	rdi, r10
	mov	r10, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rsi
	mov	rsi, r10
	mov	r11, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdx
	lea	rsi, [rsi]
	mov	rdx, r11
	mov	rbx, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rcx
	nop	
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rsi, [rsi]
	mov	al, 0
	call	__gmpz_clears
	add	rsp, 0xc8
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4092e0

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
	#Procedure 0x409330

	.globl mp_millerrabin
	.type mp_millerrabin, @function
mp_millerrabin:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	__gmpz_powm
	mov	eax, 1
	mov	rsp, rsp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_513
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	__gmpz_cmp
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_509
.label_513:
	nop	
	mov	byte ptr [rbp - 1], 1
	jmp	.label_506
.label_509:
	mov	qword ptr [rbp - 0x40], 1
.label_507:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_508
	mov	eax, 2
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	call	__gmpz_powm_ui
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	__gmpz_cmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_510
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_506
.label_510:
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	jne	.label_512
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_506
.label_512:
	jmp	.label_511
.label_511:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_507
.label_508:
	nop	
	mov	byte ptr [rbp - 1], 0
.label_506:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
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
	#Procedure 0x409490
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
	#Procedure 0x4094c0
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
	#Procedure 0x4094f0

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
	je	.label_517
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_514
.label_517:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_515
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
	jmp	.label_518
.label_515:
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
.label_518:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_514:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_516
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_516:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409620

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
.label_521:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_520
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_522
	jmp	.label_520
.label_522:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_519
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_520
.label_519:
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
	jmp	.label_521
.label_520:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4096d0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x14
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_523
	jmp	.label_526
.label_526:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	nop	
	div	rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_526
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_525
.label_523:
	jmp	.label_524
.label_524:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	nop	
	jne	.label_524
	jmp	.label_525
.label_525:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409810

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
	jne	.label_529
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_529:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_527
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_531
.label_527:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_531:
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
	jl	.label_530
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_1
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
	jne	.label_530
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_0
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
	jne	.label_528
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_528:
	jmp	.label_530
.label_530:
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
	.align	32
	#Procedure 0x409990
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	je	.label_533
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_535
	lea	rdi, [rdi]
	jmp	.label_532
.label_535:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_534
.label_532:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	lea	rdi, [rdi]
	add	rax, 2
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rdi, [rdi]
	add	rdi, 1
	add	rdi, 1
	lea	rsi, [rsi]
	call	xmalloc
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_4
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	al, 0
	call	sprintf
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_534
.label_533:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_534:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a90

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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, eax
	mov	rsp, rsp
	call	trim2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	byte ptr [rbp - 0x19], 0
.label_556:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_536
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	mbsstr
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_553
	jmp	.label_536
.label_553:
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jbe	.label_542
	nop	
	xor	esi, esi
	mov	eax, 8
	mov	rsp, rsp
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0x68]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rdi
	mov	byte ptr [rbp - 0x68], 0
	mov	rsp, rsp
	add	rcx, 4
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memset
	mov	byte ptr [rbp - 0x5c], 0
	nop	
	mov	byte ptr [rbp - 0x69], 1
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	cmp	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_544
	jmp	.label_562
.label_562:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x68]
	nop	
	call	mbuiter_multi_next
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	nop	
	mov	byte ptr [rbp - 0x122], cl
	mov	rsp, rsp
	je	.label_565
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x122], al
.label_565:
	mov	al, byte ptr [rbp - 0x122]
	xor	al, 0xff
	test	al, 1
	nop	
	jne	.label_549
	lea	rsi, [rsi]
	call	abort
.label_549:
	mov	eax, 0x30
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xa0]
	nop	
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	add	rsi, 0x10
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x58], rcx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jb	.label_562
	mov	rsp, rsp
	test	byte ptr [rbp - 0x90], 1
	je	.label_558
	nop	
	mov	edi, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	call	iswalnum
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_558
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x69], 0
.label_558:
	jmp	.label_544
.label_544:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, 8
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rbp - 0xe0]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x68]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], r8
	nop	
	mov	byte ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], rsi
	mov	rbp, rbp
	mov	esi, eax
	mov	qword ptr [rbp - 0x138], rdx
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	call	memset
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x5c], 0
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rdx
	mov	byte ptr [rbp - 0xe0], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x130]
	nop	
	add	rdx, 4
	lea	rdi, [rdi]
	mov	rdi, rdx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x13c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memset
	mov	byte ptr [rbp - 0xd4], 0
.label_548:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xe0]
	mov	rsp, rsp
	call	mbuiter_multi_next
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	byte ptr [rbp - 0xc0], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x13d], cl
	je	.label_537
	cmp	dword ptr [rbp - 0xbc], 0
	mov	rsp, rsp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x13d], al
.label_537:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x13d]
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	jne	.label_557
	jmp	.label_559
.label_557:
	lea	rdi, [rbp - 0x68]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x13e], cl
	je	.label_551
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x13e], al
.label_551:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x13e]
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_538
	nop	
	call	abort
.label_538:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	byte ptr [rbp - 0xd4], 0
	mov	rsp, rsp
	jmp	.label_548
.label_559:
	lea	rdi, [rbp - 0x68]
	mov	byte ptr [rbp - 0x6a], 1
	call	mbuiter_multi_next
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x13f], cl
	lea	rdi, [rdi]
	je	.label_563
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x13f], al
.label_563:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x13f]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	rbp, rbp
	test	al, 1
	jne	.label_545
	jmp	.label_550
.label_545:
	mov	eax, 0x30
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x110]
	lea	rsi, [rbp - 0x68]
	add	rsi, 0x10
	mov	rdi, rcx
	call	memcpy
	nop	
	test	byte ptr [rbp - 0x100], 1
	je	.label_539
	mov	edi, dword ptr [rbp - 0xfc]
	lea	rdi, [rdi]
	call	iswalnum
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_539
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x6a], 0
.label_539:
	lea	rdi, [rdi]
	jmp	.label_550
.label_550:
	test	byte ptr [rbp - 0x69], 1
	mov	rbp, rbp
	je	.label_547
	test	byte ptr [rbp - 0x6a], 1
	je	.label_547
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_536
.label_547:
	lea	rax, [rbp - 0x68]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	ecx, 8
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rdi
	mov	byte ptr [rbp - 0x68], 0
	mov	rbp, rbp
	mov	rdi, rax
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x148], rax
	call	memset
	mov	byte ptr [rbp - 0x5c], 0
	mov	rdi, qword ptr [rbp - 0x148]
	call	mbuiter_multi_next
	mov	rbp, rbp
	xor	ecx, ecx
	mov	r8b, cl
	test	byte ptr [rbp - 0x48], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x149], r8b
	je	.label_564
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 0
	lea	rdi, [rdi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x149], al
.label_564:
	mov	al, byte ptr [rbp - 0x149]
	xor	al, 0xff
	nop	
	test	al, 1
	jne	.label_540
	mov	rbp, rbp
	jmp	.label_536
.label_540:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_546
.label_542:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x111], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_555
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax - 1]
	nop	
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x158], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rdi, [rdi]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_543
	mov	byte ptr [rbp - 0x111], 0
.label_543:
	mov	rbp, rbp
	jmp	.label_555
.label_555:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x160], rax
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	add	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rdi
	mov	byte ptr [rbp - 0x121], 1
	mov	rax, qword ptr [rbp - 0x120]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_560
	mov	rax, qword ptr [rbp - 0x120]
	movzx	ecx, byte ptr [rax]
	nop	
	movsxd	rax, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x168], rax
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x168]
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rsi, [rsi]
	and	ecx, 8
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_552
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x121], 0
.label_552:
	jmp	.label_560
.label_560:
	test	byte ptr [rbp - 0x111], 1
	lea	rdi, [rdi]
	je	.label_561
	test	byte ptr [rbp - 0x121], 1
	nop	
	je	.label_561
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_536
.label_561:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_541
	lea	rdi, [rdi]
	jmp	.label_536
.label_541:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_546:
	mov	rsp, rsp
	jmp	.label_554
.label_554:
	mov	rsp, rsp
	jmp	.label_556
.label_536:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
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
	#Procedure 0x40a0f0

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	je	.label_578
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	call	xstr_iconv
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x60], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 0xa
	add	rax, 1
	mov	rdi, rax
	nop	
	call	xmalloc
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x78], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi,  qword ptr [word ptr [.str.2_1]]
	mov	rbp, rbp
	mov	qword ptr [rax + rdx], rsi
	mov	rsp, rsp
	mov	cx,  word ptr [word ptr [label_580]]
	mov	word ptr [rax + rdx + 8], cx
	mov	r8b,  byte ptr [byte ptr [label_581]]
	mov	byte ptr [rax + rdx + 0xa], r8b
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	call	xstr_iconv
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	call	free
	nop	
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_572
	mov	esi, 0x3f
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	strchr
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_584
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	jmp	.label_585
.label_584:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_585:
	lea	rdi, [rdi]
	jmp	.label_572
.label_572:
	lea	rsi, [rsi]
	jmp	.label_570
.label_578:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
.label_570:
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	je	.label_571
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_573
.label_571:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_576
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_583
.label_576:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x88], rax
.label_583:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
.label_573:
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	je	.label_587
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	mbsstr_trimmed_wordbounded
	nop	
	test	al, 1
	jne	.label_566
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_582
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	mbsstr_trimmed_wordbounded
	nop	
	test	al, 1
	jne	.label_566
.label_582:
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	je	.label_586
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	mbsstr_trimmed_wordbounded
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_566
	jmp	.label_586
.label_566:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	je	.label_568
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_568:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_569
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	free
.label_569:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_579
.label_586:
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	add	rax, 2
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
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
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	al, 0
	call	sprintf
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], eax
	mov	rbp, rbp
	je	.label_577
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	free
.label_577:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_574
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	free
.label_574:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_579
.label_587:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_567
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_567
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	free
.label_567:
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	je	.label_575
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_575
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free
.label_575:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_579:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a520
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
	je	.label_589
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_588
.label_589:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_588
.label_588:
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
	.align	32
	#Procedure 0x40a5d0
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
	je	.label_590
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_591
.label_590:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_591
.label_591:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a630
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
	je	.label_592
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_593
.label_592:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_593
.label_593:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a690

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
	je	.label_594
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_595
.label_594:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_595
.label_595:
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
	.align	32
	#Procedure 0x40a790
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
	jne	.label_596
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_596:
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
	.align	32
	#Procedure 0x40a7f0

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
	jne	.label_597
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_597:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
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
	.align	32
	#Procedure 0x40a890
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
	je	.label_600
	mov	rax, qword ptr [rbp - 0x28]
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
	.align	32
	#Procedure 0x40a990

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
.label_678:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_736
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_739]]
	jmp	rcx
.label_1284:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1283:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_745
	jmp	.label_748
.label_748:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_752
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_752:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_745
.label_745:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_603
.label_1285:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_603
.label_1286:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_766
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
.label_766:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_777
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_796:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_784
	jmp	.label_786
.label_786:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_788
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_788:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_793
.label_793:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_796
.label_784:
	mov	rbp, rbp
	jmp	.label_777
.label_777:
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
	jmp	.label_603
.label_1281:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_1280:
	mov	byte ptr [rbp - 0x7b], 1
.label_1282:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_609
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_609:
	jmp	.label_616
.label_616:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_619
	jmp	.label_625
.label_625:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_717
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_717:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_619
.label_619:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_603
.label_1279:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_603
.label_736:
	call	abort
.label_603:
	mov	qword ptr [rbp - 0x58], 0
.label_614:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_655
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
	jmp	.label_658
.label_655:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_658:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_674
	mov	rbp, rbp
	jmp	.label_684
.label_674:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_687
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_687
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_687
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_698
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_698
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_710
.label_698:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_710:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_687
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
	jne	.label_687
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_726
	jmp	.label_615
.label_726:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_687:
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
	ja	.label_730
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_741]]
	nop	
	jmp	rcx
.label_1295:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_743
	mov	rsp, rsp
	jmp	.label_747
.label_747:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_604
	jmp	.label_615
.label_604:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_664
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_664
	nop	
	jmp	.label_757
.label_757:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_758
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_758:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_765
.label_765:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_769
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_769:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_775
.label_775:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_783
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_783:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_664:
	lea	rsi, [rsi]
	jmp	.label_789
.label_789:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_791
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_791:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_794
.label_794:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_605
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_605
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_605
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_605
	nop	
	jmp	.label_682
.label_682:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_617
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_617:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_626
.label_626:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_631
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_631:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_605
.label_605:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_660
.label_743:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_650
	mov	rbp, rbp
	jmp	.label_656
.label_650:
	jmp	.label_660
.label_660:
	jmp	.label_628
.label_1306:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_661
	mov	rbp, rbp
	jmp	.label_666
.label_666:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_669
	jmp	.label_675
.label_661:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_677
	jmp	.label_615
.label_677:
	jmp	.label_610
.label_669:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_685
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_685
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_685
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
	je	.label_700
	nop	
	jmp	.label_706
.label_706:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_700
	jmp	.label_712
.label_712:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_700
	jmp	.label_716
.label_716:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_700
	jmp	.label_632
.label_632:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_723
	jmp	.label_700
.label_700:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_693
	jmp	.label_615
.label_693:
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
	jae	.label_733
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_733:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_744
.label_744:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_751
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_751:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_755
.label_755:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_756
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_756:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_750
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_750:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_780
.label_723:
	jmp	.label_780
.label_780:
	jmp	.label_685
.label_685:
	jmp	.label_610
.label_675:
	jmp	.label_610
.label_610:
	jmp	.label_628
.label_1296:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_618
.label_1297:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_618
.label_1301:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_618
.label_1299:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_607
.label_1302:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_607
.label_1298:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_607
.label_1300:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_618
.label_1307:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_735
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_795
	nop	
	jmp	.label_615
.label_795:
	lea	rsi, [rsi]
	jmp	.label_606
.label_735:
	test	byte ptr [rbp - 0x79], 1
	je	.label_602
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_602
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_602
	jmp	.label_606
.label_602:
	jmp	.label_607
.label_607:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_608
	test	byte ptr [rbp - 0x7b], 1
	je	.label_608
	jmp	.label_615
.label_608:
	mov	rsp, rsp
	jmp	.label_618
.label_618:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_621
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_611
.label_621:
	jmp	.label_628
.label_1308:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_629
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_641
	jmp	.label_639
.label_629:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_641
.label_639:
	nop	
	jmp	.label_628
.label_641:
	jmp	.label_646
.label_646:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_648
	lea	rsi, [rsi]
	jmp	.label_628
.label_648:
	nop	
	jmp	.label_653
.label_653:
	mov	byte ptr [rbp - 0x83], 1
.label_1303:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_657
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_657
	jmp	.label_615
.label_657:
	lea	rsi, [rsi]
	jmp	.label_628
.label_1305:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_707
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_673
	jmp	.label_615
.label_673:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_680
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_680
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_680:
	jmp	.label_690
.label_690:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_801
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_801:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_697
.label_697:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_703
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_703:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_708
.label_708:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_711
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_711:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_707:
	lea	rsi, [rsi]
	jmp	.label_628
.label_1304:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_628
.label_730:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_724
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
	jmp	.label_702
.label_724:
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
	jne	.label_746
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_746:
	jmp	.label_644
.label_644:
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
	jne	.label_767
	jmp	.label_776
.label_767:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_774
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_776
.label_774:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_778
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_798:
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
	jae	.label_785
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_785:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_740
	jmp	.label_797
.label_740:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_798
.label_797:
	jmp	.label_776
.label_778:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_671
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_671
	mov	qword ptr [rbp - 0xb8], 1
.label_663:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_637
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
	jb	.label_612
	jmp	.label_633
.label_633:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_612
	jmp	.label_643
.label_643:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_612
	jmp	.label_651
.label_651:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_652
	mov	rsp, rsp
	jmp	.label_612
.label_612:
	mov	rsp, rsp
	jmp	.label_615
.label_652:
	jmp	.label_662
.label_662:
	mov	rsp, rsp
	jmp	.label_654
.label_654:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_663
.label_637:
	mov	rbp, rbp
	jmp	.label_671
.label_671:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_676
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_676:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_681
.label_681:
	lea	rsi, [rsi]
	jmp	.label_691
.label_691:
	jmp	.label_692
.label_692:
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
	jne	.label_644
.label_776:
	jmp	.label_702
.label_702:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_704
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_709
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_709
.label_704:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_683:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_718
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_718
	jmp	.label_720
.label_720:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_722
	jmp	.label_615
.label_722:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_725
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_725
	lea	rdi, [rdi]
	jmp	.label_731
.label_731:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_734
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_734:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_738
.label_738:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_742
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_742:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_753
.label_753:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_638
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_638:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_725:
	jmp	.label_759
.label_759:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_761
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_761:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_768
.label_768:
	jmp	.label_770
.label_770:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_772
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
.label_772:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_635
.label_635:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_679
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
.label_679:
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
	jmp	.label_689
.label_718:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_781
	lea	rdi, [rdi]
	jmp	.label_642
.label_642:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_802
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_802:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_781:
	nop	
	jmp	.label_689
.label_689:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_620
	jmp	.label_627
.label_620:
	lea	rsi, [rsi]
	jmp	.label_728
.label_728:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_630
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_630
	lea	rsi, [rsi]
	jmp	.label_636
.label_636:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_640
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_640:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_649
.label_649:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_647
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_647:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_630:
	nop	
	jmp	.label_668
.label_668:
	mov	rsp, rsp
	jmp	.label_623
.label_623:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_672
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_672:
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
	jmp	.label_683
.label_627:
	mov	rsp, rsp
	jmp	.label_606
.label_709:
	lea	rsi, [rsi]
	jmp	.label_628
.label_628:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_665
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_701
.label_665:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_705
.label_701:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_705
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
	jne	.label_715
.label_705:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_715
	mov	rsp, rsp
	jmp	.label_606
.label_715:
	nop	
	jmp	.label_611
.label_611:
	jmp	.label_624
.label_624:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_719
	jmp	.label_615
.label_719:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_659
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_659
	lea	rdi, [rdi]
	jmp	.label_729
.label_729:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_732
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_732:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_737
.label_737:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_771
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_771:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_749
.label_749:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_754
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_754:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_659:
	jmp	.label_760
.label_760:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_762
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_762:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_792
.label_792:
	nop	
	jmp	.label_606
.label_606:
	jmp	.label_773
.label_773:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_714
	test	byte ptr [rbp - 0x82], 1
	jne	.label_714
	lea	rdi, [rdi]
	jmp	.label_779
.label_779:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_782
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_782:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_787
.label_787:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_790
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_790:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_714:
	jmp	.label_763
.label_763:
	nop	
	jmp	.label_799
.label_799:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_800
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_800:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_613
	mov	byte ptr [rbp - 0x7e], 0
.label_613:
	mov	rbp, rbp
	jmp	.label_656
.label_656:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_614
.label_684:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_622
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_622
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_622
	nop	
	jmp	.label_615
.label_622:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_634
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_634
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_634
	test	byte ptr [rbp - 0x7e], 1
	je	.label_645
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
	jmp	.label_667
.label_645:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_670
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_670
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_678
.label_670:
	jmp	.label_686
.label_686:
	mov	rbp, rbp
	jmp	.label_634
.label_634:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_688
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_688
	mov	rbp, rbp
	jmp	.label_694
.label_694:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_695
	lea	rdi, [rdi]
	jmp	.label_696
.label_696:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_699
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_699:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_727
.label_727:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_694
.label_695:
	jmp	.label_688
.label_688:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_713
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_713:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_667
.label_615:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_721
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_721
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_721:
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
.label_667:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c2b0
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
	.align	32
	#Procedure 0x40c320

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
	je	.label_803
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_804
.label_803:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_804
.label_804:
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
	je	.label_805
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_805:
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
	.align	32
	#Procedure 0x40c4f0
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
	#Procedure 0x40c600

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
	.align	32
	#Procedure 0x40c650

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
	jge	.label_817
	call	abort
.label_817:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_812
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
	jge	.label_813
	call	xalloc_die
.label_813:
	test	byte ptr [rbp - 0x31], 1
	je	.label_814
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_818
.label_814:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_818:
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
	je	.label_816
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_806]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_816:
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
.label_812:
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
	ja	.label_815
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
	je	.label_811
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_811:
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
.label_815:
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
	.align	32
	#Procedure 0x40c980

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
	.align	32
	#Procedure 0x40c9c0
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
	#Procedure 0x40c9f0
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
	.align	32
	#Procedure 0x40ca30

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
	.align	32
	#Procedure 0x40ca90

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
	jne	.label_819
	call	abort
.label_819:
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
	.align	32
	#Procedure 0x40cb30

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
	.align	32
	#Procedure 0x40cba0
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
	.align	32
	#Procedure 0x40cbe0
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
	.align	32
	#Procedure 0x40cc20

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
	.align	32
	#Procedure 0x40ccd0

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
	#Procedure 0x40cd10

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
	#Procedure 0x40cd40
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
	#Procedure 0x40cd80
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
	.align	32
	#Procedure 0x40ce70

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
	.align	32
	#Procedure 0x40cec0

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
	.align	32
	#Procedure 0x40cf60
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
	.align	32
	#Procedure 0x40cfb0
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
	.align	32
	#Procedure 0x40d010

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
	.align	32
	#Procedure 0x40d050
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
	#Procedure 0x40d090

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
	#Procedure 0x40d0d0

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
	#Procedure 0x40d110

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
	je	.label_823
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_820
.label_823:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_821
	movabs	rax, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_820
.label_821:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_822
	nop	
	movabs	rax, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_820
.label_822:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_820:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d250

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
	#Procedure 0x40d280

	.globl readtoken
	.type readtoken, @function
readtoken:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x80
	xor	eax, eax
	mov	rsp, rsp
	mov	r8d, 0x20
	mov	r9d, r8d
	lea	r10, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, r10
	mov	esi, eax
	mov	rbp, rbp
	mov	rdx, r9
	call	memset
	mov	qword ptr [rbp - 0x40], 0
.label_829:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_832
	lea	rsi, [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], dl
	movzx	edi, byte ptr [rbp - 0x71]
	mov	rsp, rsp
	call	set_nth_bit
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_829
.label_832:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
.label_827:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	cmp	dword ptr [rbp - 0x34], 0
	mov	byte ptr [rbp - 0x72], cl
	mov	rbp, rbp
	jl	.label_837
	nop	
	lea	rsi, [rbp - 0x70]
	movsxd	rdi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	call	get_nth_bit
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x72], al
.label_837:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x72]
	test	al, 1
	jne	.label_826
	mov	rsp, rsp
	jmp	.label_836
.label_826:
	mov	rsp, rsp
	jmp	.label_838
.label_838:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_827
.label_836:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x40], 0
.label_833:
	cmp	dword ptr [rbp - 0x34], 0
	lea	rdi, [rdi]
	jge	.label_824
	cmp	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jne	.label_824
	mov	qword ptr [rbp - 8], -1
	jmp	.label_825
.label_824:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_835
	lea	rsi, [rbp - 0x48]
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	x2nrealloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_835:
	cmp	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	jge	.label_830
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	jmp	.label_831
.label_830:
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x70]
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	call	get_nth_bit
	test	al, 1
	jne	.label_834
	jmp	.label_828
.label_834:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_831
.label_828:
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, 1
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	byte ptr [rsi + rdx], cl
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	getc_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jmp	.label_833
.label_831:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_825:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x80
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d4f0

	.globl set_nth_bit
	.type set_nth_bit, @function
set_nth_bit:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x10]
	or	rsi, qword ptr [rax + rdi*8]
	mov	qword ptr [rax + rdi*8], rsi
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d550

	.globl get_nth_bit
	.type get_nth_bit, @function
get_nth_bit:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	shr	rsi, 6
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdi + rsi*8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
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
	#Procedure 0x40d5b0
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rax, [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	qword ptr [rbp - 0x30], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_843
	mov	qword ptr [rbp - 0x10], 0x40
	nop	
	jmp	.label_846
.label_843:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_846:
	mov	rbp, rbp
	mov	eax, 8
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	edx, 8
	mov	esi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], 0
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	call	init_tokenbuffer
.label_844:
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	call	readtoken
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_841
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x60]
	lea	rdi, [rdi]
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdi, rcx
	mov	rsp, rsp
	call	x2nrealloc
	mov	r8d, 8
	mov	edx, r8d
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xnrealloc
	nop	
	mov	qword ptr [rbp - 0x58], rax
.label_841:
	cmp	qword ptr [rbp - 0x78], -1
	lea	rsi, [rsi]
	jne	.label_842
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8], 0
	jmp	.label_845
.label_842:
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rdi, rcx
	call	xnmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x80], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8], rdx
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	jmp	.label_844
.label_845:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_840
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	jmp	.label_839
.label_840:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_839:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d820

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_847:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	call	write
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jg	.label_849
	mov	rax, qword ptr [rbp - 0x28]
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
	cmp	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_850
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_854
.label_850:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
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
	#Procedure 0x40d900

	.globl trim2
	.type trim2, @function
trim2:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	strdup
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_863
	call	xalloc_die
.label_863:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_871
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_873
	nop	
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 8
	nop	
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rdi
	mov	rbp, rbp
	mov	rdi, r8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0x98], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x58], 0
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	add	rax, 0xc
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x84]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memset
	nop	
	mov	byte ptr [rbp - 0x4c], 0
.label_886:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x99], cl
	lea	rsi, [rsi]
	jae	.label_867
	lea	rdi, [rbp - 0x60]
	nop	
	call	mbiter_multi_next
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	dl, 1
	test	dl, 1
	mov	byte ptr [rbp - 0x99], cl
	mov	rbp, rbp
	jne	.label_860
	nop	
	jmp	.label_867
.label_860:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	byte ptr [rbp - 0x38], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x9a], cl
	je	.label_874
	mov	edi, dword ptr [rbp - 0x34]
	nop	
	call	iswspace
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9a], cl
.label_874:
	mov	al, byte ptr [rbp - 0x9a]
	mov	byte ptr [rbp - 0x99], al
.label_867:
	mov	al, byte ptr [rbp - 0x99]
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_882
	jmp	.label_884
.label_882:
	lea	rsi, [rsi]
	jmp	.label_885
.label_885:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	jmp	.label_886
.label_884:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, rax
	nop	
	mov	qword ptr [rbp - 0xb0], rsi
	call	strlen
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	call	memmove
.label_873:
	cmp	dword ptr [rbp - 0xc], 1
	nop	
	je	.label_855
	xor	esi, esi
	lea	rsi, [rsi]
	mov	eax, 8
	nop	
	mov	edx, eax
	lea	rcx, [rbp - 0x60]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rdi
	lea	rsi, [rsi]
	mov	rdi, r8
	mov	dword ptr [rbp - 0xbc], esi
	nop	
	mov	qword ptr [rbp - 0xc8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rbp - 0x58], 0
	nop	
	mov	rax, qword ptr [rbp - 0xd0]
	nop	
	add	rax, 0xc
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_866:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd1], cl
	jae	.label_887
	lea	rdi, [rbp - 0x60]
	lea	rsi, [rsi]
	call	mbiter_multi_next
	mov	al, 1
	mov	byte ptr [rbp - 0xd1], al
.label_887:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xd1]
	test	al, 1
	jne	.label_890
	jmp	.label_891
.label_890:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x64], 0
	lea	rdi, [rdi]
	jne	.label_856
	test	byte ptr [rbp - 0x38], 1
	mov	rbp, rbp
	je	.label_856
	nop	
	mov	edi, dword ptr [rbp - 0x34]
	nop	
	call	iswspace
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_856
	jmp	.label_864
.label_856:
	cmp	dword ptr [rbp - 0x64], 0
	mov	rsp, rsp
	jne	.label_865
	test	byte ptr [rbp - 0x38], 1
	je	.label_870
	mov	edi, dword ptr [rbp - 0x34]
	nop	
	call	iswspace
	cmp	eax, 0
	jne	.label_865
.label_870:
	mov	dword ptr [rbp - 0x64], 1
	jmp	.label_864
.label_865:
	cmp	dword ptr [rbp - 0x64], 1
	lea	rdi, [rdi]
	jne	.label_878
	test	byte ptr [rbp - 0x38], 1
	je	.label_881
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_878
.label_881:
	lea	rdi, [rdi]
	jmp	.label_864
.label_878:
	cmp	dword ptr [rbp - 0x64], 1
	jne	.label_877
	test	byte ptr [rbp - 0x38], 1
	je	.label_877
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	iswspace
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_877
	mov	dword ptr [rbp - 0x64], 2
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_862
.label_877:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x64], 2
	jne	.label_888
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x38], 1
	je	.label_888
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_888
	lea	rsi, [rsi]
	jmp	.label_879
.label_888:
	mov	dword ptr [rbp - 0x64], 1
.label_879:
	mov	rbp, rbp
	jmp	.label_862
.label_862:
	lea	rdi, [rdi]
	jmp	.label_864
.label_864:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_866
.label_891:
	cmp	dword ptr [rbp - 0x64], 2
	jne	.label_872
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_872:
	mov	rsp, rsp
	jmp	.label_855
.label_855:
	jmp	.label_876
.label_871:
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_880
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x78], rax
.label_859:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd2], cl
	je	.label_883
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	movsxd	rax, ecx
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + rdx*2]
	lea	rdi, [rdi]
	and	ecx, 0x2000
	cmp	ecx, 0
	nop	
	setne	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd2], sil
.label_883:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xd2]
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_892
	jmp	.label_857
.label_892:
	lea	rdi, [rdi]
	jmp	.label_858
.label_858:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	jmp	.label_859
.label_857:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rdi, rax
	nop	
	mov	qword ptr [rbp - 0xf0], rsi
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rdx, rax
	call	memmove
.label_880:
	cmp	dword ptr [rbp - 0xc], 1
	mov	rsp, rsp
	je	.label_875
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rax
	call	strlen
	nop	
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	add	rdi, rax
	mov	rbp, rbp
	add	rdi, -1
	mov	qword ptr [rbp - 0x78], rdi
.label_869:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0xf9], cl
	jb	.label_889
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	movsxd	rax, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x108]
	movzx	ecx, word ptr [rax + rdx*2]
	mov	rbp, rbp
	and	ecx, 0x2000
	lea	rsi, [rsi]
	cmp	ecx, 0
	setne	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xf9], sil
.label_889:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xf9]
	mov	rsp, rsp
	test	al, 1
	jne	.label_861
	jmp	.label_868
.label_861:
	mov	rax, qword ptr [rbp - 0x78]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	jmp	.label_869
.label_868:
	mov	rsp, rsp
	jmp	.label_875
.label_875:
	jmp	.label_876
.label_876:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x110
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df80

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
	je	.label_893
	movabs	rsi, OFFSET FLAT:.str_5
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
	jmp	.label_897
.label_893:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_897:
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
	mov	ecx, OFFSET FLAT:.str.3_0
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
	ja	.label_896
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_895]]
	jmp	rcx
.label_1320:
	jmp	.label_894
.label_1321:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_0
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
	jmp	.label_894
.label_1322:
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
	jmp	.label_894
.label_1323:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6
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
	jmp	.label_894
.label_1324:
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
	jmp	.label_894
.label_1325:
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
	jmp	.label_894
.label_1326:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9
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
	jmp	.label_894
.label_1327:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
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
	jmp	.label_894
.label_1328:
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
	jmp	.label_894
.label_1329:
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
	jmp	.label_894
.label_896:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_894:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e6f0
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
.label_900:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_898
	mov	rbp, rbp
	jmp	.label_899
.label_899:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_900
.label_898:
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
	.align	32
	#Procedure 0x40e7a0

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
.label_907:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_906
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_902
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
	jmp	.label_903
.label_902:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_903:
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
.label_906:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_905
	mov	rsp, rsp
	jmp	.label_901
.label_905:
	jmp	.label_904
.label_904:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_907
.label_901:
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
	.align	32
	#Procedure 0x40e900

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
	je	.label_908
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
.label_908:
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
	.align	32
	#Procedure 0x40eab0
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
	.align	32
	#Procedure 0x40eb60

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
	#Procedure 0x40ebc0

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
	jne	.label_910
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_910
	lea	rdi, [rdi]
	call	xalloc_die
.label_910:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec20

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
	jae	.label_911
	mov	rsp, rsp
	call	xalloc_die
.label_911:
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
	.align	32
	#Procedure 0x40eca0

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
	jne	.label_912
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_912
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_914
.label_912:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_913
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_913
	lea	rsi, [rsi]
	call	xalloc_die
.label_913:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_914:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed50

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
	jne	.label_915
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_917
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
.label_917:
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
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_916
	call	xalloc_die
.label_916:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_918:
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
	.align	32
	#Procedure 0x40ee80

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
	#Procedure 0x40eeb0
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
	#Procedure 0x40eef0
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
	#Procedure 0x40ef40
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
	jb	.label_920
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_921
.label_920:
	lea	rsi, [rsi]
	call	xalloc_die
.label_921:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40efb0

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
	.align	32
	#Procedure 0x40f000
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
	.align	32
	#Procedure 0x40f060

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
	#Procedure 0x40f0c0
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	mem_cd_iconv
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
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
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x30
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f150
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	str_cd_iconv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
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
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f1d0

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
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
	#Procedure 0x40f240

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
	jne	.label_925
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_925:
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
	ja	.label_926
	nop	
	cmp	qword ptr [rbp - 0x20], 0
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
	jmp	.label_927
.label_926:
	mov	rax, qword ptr [rbp - 0x30]
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
	#Procedure 0x40f330

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
	jne	.label_928
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_932
.label_928:
	mov	rbp, rbp
	jmp	.label_929
.label_929:
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
	jne	.label_930
	jmp	.label_931
.label_930:
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
	je	.label_929
.label_931:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
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
	#Procedure 0x40f420

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
	jne	.label_935
	test	byte ptr [rbp - 0x13], 1
	je	.label_934
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_935
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_934
.label_935:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_933
	call	__errno_location
	mov	dword ptr [rax], 0
.label_933:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_936
.label_934:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_936:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f500

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
	je	.label_938
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_6
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_939
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_937
.label_939:
	mov	byte ptr [rbp - 5], 0
.label_937:
	jmp	.label_938
.label_938:
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
	.align	32
	#Procedure 0x40f5a0

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
	#Procedure 0x40f620

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	test	byte ptr [rdi + 0x14], 1
	je	.label_953
	lea	rdi, [rdi]
	jmp	.label_944
.label_953:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	test	byte ptr [rax + 8], 1
	nop	
	je	.label_948
	jmp	.label_942
.label_948:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	movsx	edi, byte ptr [rax]
	nop	
	call	is_basic
	test	al, 1
	jne	.label_951
	mov	rbp, rbp
	jmp	.label_945
.label_951:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x2c], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rax + 0x28], 1
	jmp	.label_947
.label_945:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 0xc
	mov	rdi, rax
	mov	rbp, rbp
	call	mbsinit
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_952
	lea	rsi, [rsi]
	jmp	.label_956
.label_952:
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x8e
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_956:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 8], 1
.label_942:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 0x18
	lea	rdi, [rdi]
	add	rax, 0x14
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0xc
	mov	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], -1
	mov	rbp, rbp
	jne	.label_959
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	jmp	.label_946
.label_959:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x20], -2
	jne	.label_957
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	jmp	.label_949
.label_957:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_943
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_954
	jmp	.label_960
.label_954:
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
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_958
	jmp	.label_950
.label_958:
	movabs	rdi, OFFSET FLAT:.str.3_1
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	edx, 0xaa
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	lea	rsi, [rsi]
	call	__assert_fail
.label_950:
	jmp	.label_943
.label_943:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x28], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc
	mov	rdi, rax
	mov	rbp, rbp
	call	mbsinit
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_955
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rax + 8], 0
.label_955:
	jmp	.label_949
.label_949:
	jmp	.label_946
.label_946:
	jmp	.label_947
.label_947:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x14], 1
.label_944:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f920
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsi, qword ptr [rdi + 0x18]
	mov	qword ptr [rdi + 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsi, qword ptr [rdi]
	mov	qword ptr [rdi], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f960
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
	#Procedure 0x40fa40

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x250
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	lea	rsi, [rsi]
	jbe	.label_988
	mov	rbp, rbp
	lea	rax, [rbp - 0x58]
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	ecx, 8
	mov	rbp, rbp
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	byte ptr [rbp - 0x58], 0
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	add	rdi, 4
	nop	
	mov	qword ptr [rbp - 0x1e8], rax
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x4c], 0
	mov	rdi, qword ptr [rbp - 0x1e8]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	r8b, cl
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x1e9], r8b
	lea	rdi, [rdi]
	je	.label_1007
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x1e9], al
.label_1007:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x1e9]
	mov	rbp, rbp
	xor	al, 0xff
	test	al, 1
	jne	.label_1011
	jmp	.label_967
.label_1011:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	ecx, 8
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsp, rsp
	lea	rsi, [rbp - 0xf8]
	lea	rdi, [rbp - 0xb8]
	nop	
	mov	byte ptr [rbp - 0x59], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], 0
	nop	
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	nop	
	mov	r8, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0xa8], r8
	mov	byte ptr [rbp - 0xb8], 0
	add	rdi, 4
	mov	qword ptr [rbp - 0x1f8], rsi
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x200], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x204], eax
	mov	rbp, rbp
	call	memset
	mov	byte ptr [rbp - 0xac], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rdx
	mov	byte ptr [rbp - 0xf8], 0
	mov	rdx, qword ptr [rbp - 0x1f8]
	nop	
	add	rdx, 4
	mov	rbp, rbp
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x204]
	mov	rdx, qword ptr [rbp - 0x200]
	call	memset
	mov	byte ptr [rbp - 0xec], 0
.label_1000:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xf8]
	mov	rbp, rbp
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	byte ptr [rbp - 0xd8], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x205], cl
	lea	rdi, [rdi]
	je	.label_991
	cmp	dword ptr [rbp - 0xd4], 0
	lea	rsi, [rsi]
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x205], al
.label_991:
	mov	al, byte ptr [rbp - 0x205]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_971
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_974
.label_971:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x59], 1
	lea	rdi, [rdi]
	je	.label_982
	cmp	qword ptr [rbp - 0x68], 0xa
	jb	.label_982
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	imul	rcx, qword ptr [rbp - 0x68], 5
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jb	.label_982
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], rax
.label_992:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	mov	byte ptr [rbp - 0x206], cl
	jbe	.label_997
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xb8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	byte ptr [rbp - 0x98], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x207], cl
	je	.label_989
	cmp	dword ptr [rbp - 0x94], 0
	nop	
	sete	al
	mov	byte ptr [rbp - 0x207], al
.label_989:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x207]
	lea	rdi, [rdi]
	xor	al, 0xff
	nop	
	mov	byte ptr [rbp - 0x206], al
.label_997:
	mov	al, byte ptr [rbp - 0x206]
	mov	rbp, rbp
	test	al, 1
	jne	.label_1012
	jmp	.label_968
.label_1012:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	mov	byte ptr [rbp - 0xac], 0
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, -1
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_992
.label_968:
	lea	rdi, [rbp - 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	nop	
	call	mbuiter_multi_next
	mov	rbp, rbp
	xor	ecx, ecx
	mov	dl, cl
	test	byte ptr [rbp - 0x98], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x208], dl
	mov	rbp, rbp
	je	.label_987
	cmp	dword ptr [rbp - 0x94], 0
	nop	
	sete	al
	mov	byte ptr [rbp - 0x208], al
.label_987:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x208]
	xor	al, 0xff
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_998
	lea	rdx, [rbp - 0x108]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	knuth_morris_pratt_multibyte
	and	al, 1
	mov	byte ptr [rbp - 0x109], al
	test	byte ptr [rbp - 0x109], 1
	lea	rsi, [rsi]
	je	.label_1002
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_974
.label_1002:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x59], 0
.label_998:
	lea	rsi, [rsi]
	jmp	.label_982
.label_982:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xd8], 1
	je	.label_972
	test	byte ptr [rbp - 0x38], 1
	je	.label_972
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x34]
	je	.label_978
	lea	rsi, [rsi]
	jmp	.label_980
.label_972:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_980
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	call	memcmp
	cmp	eax, 0
	nop	
	jne	.label_980
.label_978:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x190]
	lea	rsi, [rsi]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	ecx, 0x40
	mov	edi, ecx
	lea	r8, [rbp - 0xf8]
	lea	r9, [rbp - 0x150]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x210], rdi
	lea	rsi, [rsi]
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x214], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x210]
	nop	
	mov	qword ptr [rbp - 0x220], rdx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x228], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x144], 0
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x180], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x190], 0
	mov	rax, qword ptr [rbp - 0x228]
	add	rax, 4
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0x214]
	mov	rdx, qword ptr [rbp - 0x220]
	mov	rbp, rbp
	call	memset
	nop	
	mov	byte ptr [rbp - 0x184], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x228]
	mov	rsp, rsp
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r10b, cl
	test	byte ptr [rbp - 0x170], 1
	mov	byte ptr [rbp - 0x229], r10b
	nop	
	je	.label_990
	cmp	dword ptr [rbp - 0x16c], 0
	mov	rsp, rsp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x229], al
.label_990:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x229]
	xor	al, 0xff
	test	al, 1
	nop	
	jne	.label_1001
	call	abort
.label_1001:
	mov	rax, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x180], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x184], 0
.label_981:
	lea	rdi, [rbp - 0x190]
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	byte ptr [rbp - 0x170], 1
.label_1244:
	mov	byte ptr [rbp - 0x22a], cl
	mov	rbp, rbp
	je	.label_1009
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x16c], 0
	sete	al
	mov	byte ptr [rbp - 0x22a], al
.label_1009:
	mov	al, byte ptr [rbp - 0x22a]
	lea	rdi, [rdi]
	xor	al, 0xff
	test	al, 1
	mov	rsp, rsp
	jne	.label_973
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_974
.label_973:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x150]
	call	mbuiter_multi_next
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x130], 1
	mov	byte ptr [rbp - 0x22b], cl
	je	.label_984
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x12c], 0
	nop	
	sete	al
	mov	byte ptr [rbp - 0x22b], al
.label_984:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x22b]
	xor	al, 0xff
	test	al, 1
	jne	.label_995
	mov	qword ptr [rbp - 8], 0
	jmp	.label_974
.label_995:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x130], 1
	je	.label_964
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x170], 1
	mov	rbp, rbp
	je	.label_964
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x12c]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x16c]
	je	.label_975
	jmp	.label_1010
.label_964:
	mov	rax, qword ptr [rbp - 0x138]
	nop	
	cmp	rax, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	jne	.label_1010
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	call	memcmp
	cmp	eax, 0
	je	.label_975
.label_1010:
	jmp	.label_979
.label_975:
	jmp	.label_993
.label_993:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rax
	mov	byte ptr [rbp - 0x144], 0
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x180], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x184], 0
	mov	rbp, rbp
	jmp	.label_981
.label_979:
	jmp	.label_980
.label_980:
	nop	
	jmp	.label_986
.label_986:
	nop	
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xec], 0
	mov	rbp, rbp
	jmp	.label_1000
.label_967:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_974
.label_988:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1006
	mov	byte ptr [rbp - 0x191], 1
	mov	qword ptr [rbp - 0x1a0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x1b0], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x1b9], dl
.label_969:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	jne	.label_977
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_974
.label_977:
	test	byte ptr [rbp - 0x191], 1
	je	.label_985
	cmp	qword ptr [rbp - 0x1a0], 0xa
	lea	rsi, [rsi]
	jb	.label_985
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x1a0], 5
	lea	rsi, [rsi]
	cmp	rax, rcx
	jb	.label_985
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1b8], 0
	mov	rbp, rbp
	je	.label_999
	mov	rdi, qword ptr [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x1b0]
	mov	rsi, rax
	call	strnlen
	add	rax, qword ptr [rbp - 0x1b8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rax, qword ptr [rbp - 0x1b8]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jne	.label_1005
	mov	qword ptr [rbp - 0x1b8], 0
.label_1005:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1b0], rax
.label_999:
	nop	
	cmp	qword ptr [rbp - 0x1b8], 0
	mov	rsp, rsp
	jne	.label_970
	mov	rsp, rsp
	lea	rcx, [rbp - 0x1c8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x238], rdi
	lea	rdi, [rdi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x240], rcx
	mov	qword ptr [rbp - 0x248], rax
	lea	rdi, [rdi]
	call	strlen
	nop	
	mov	rdi, qword ptr [rbp - 0x238]
	mov	rsi, qword ptr [rbp - 0x248]
	nop	
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x240]
	call	knuth_morris_pratt
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1c9], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1c9], 1
	je	.label_996
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_974
.label_996:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x191], 0
.label_970:
	lea	rsi, [rsi]
	jmp	.label_985
.label_985:
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x1b9]
	nop	
	cmp	ecx, edx
	jne	.label_965
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1e0], rax
.label_1008:
	mov	rax, qword ptr [rbp - 0x1e0]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_976
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_974
.label_976:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1d8]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_983
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_974
.label_983:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	mov	rsp, rsp
	je	.label_994
	jmp	.label_1003
.label_994:
	jmp	.label_1004
.label_1004:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e0], rax
	lea	rdi, [rdi]
	jmp	.label_1008
.label_1003:
	jmp	.label_965
.label_965:
	jmp	.label_966
.label_966:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_969
.label_1006:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_974:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x250
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410550

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	call	mbslen
	movabs	rdx, 0x249249249249249
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1047
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	lea	rdi, [rdi]
	jmp	.label_1020
.label_1047:
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x28], 0x38
	nop	
	cmp	rax, 0xfa1
	mov	rbp, rbp
	jae	.label_1027
	nop	
	mov	rax, qword ptr [rbp - 0x28]
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
	mov	qword ptr [rbp - 0x148], rcx
	nop	
	jmp	.label_1036
.label_1027:
	nop	
	imul	rdi, qword ptr [rbp - 0x28], 0x38
	lea	rsi, [rsi]
	call	mmalloca
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x148], rax
.label_1036:
	mov	rax, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], rax
.label_1020:
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1025
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1032
.label_1025:
	mov	rbp, rbp
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	imul	r8, qword ptr [rbp - 0x28], 0x30
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rdi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x88], 0
	add	rcx, 4
	mov	rsp, rsp
	mov	rdi, rcx
	call	memset
	nop	
	mov	byte ptr [rbp - 0x7c], 0
.label_1029:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x88]
	mov	rsp, rsp
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x68], 1
	mov	byte ptr [rbp - 0x149], cl
	je	.label_1039
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x64], 0
	sete	al
	mov	byte ptr [rbp - 0x149], al
.label_1039:
	mov	al, byte ptr [rbp - 0x149]
	mov	rbp, rbp
	xor	al, 0xff
	test	al, 1
	jne	.label_1045
	jmp	.label_1015
.label_1045:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x90]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rsi, rax
	call	mb_copy
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7c], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	nop	
	jmp	.label_1029
.label_1015:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 1
	mov	qword ptr [rbp - 0xa0], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], 2
.label_1037:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1018
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax, 1
	imul	rax, rax, 0x30
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
.label_1046:
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x10], 1
	je	.label_1017
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	imul	rax, rax, 0x30
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1017
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x14]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rax + 0x14]
	je	.label_1048
	nop	
	jmp	.label_1021
.label_1017:
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1021
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rax + 8]
	call	memcmp
	cmp	eax, 0
	jne	.label_1021
.label_1048:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1024
.label_1021:
	cmp	qword ptr [rbp - 0xa0], 0
	nop	
	jne	.label_1031
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	jmp	.label_1024
.label_1031:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_1046
.label_1024:
	mov	rsp, rsp
	jmp	.label_1033
.label_1033:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1037
.label_1018:
	xor	eax, eax
	nop	
	mov	ecx, 8
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	lea	rsi, [rbp - 0x130]
	lea	rdi, [rbp - 0xf0]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [r8], 0
	mov	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe0], r8
	mov	byte ptr [rbp - 0xf0], 0
	add	rdi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rsi
	mov	rbp, rbp
	mov	esi, eax
	mov	qword ptr [rbp - 0x160], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x164], eax
	mov	rsp, rsp
	call	memset
	mov	byte ptr [rbp - 0xe4], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], rdx
	nop	
	mov	byte ptr [rbp - 0x130], 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	add	rdx, 4
	mov	rdi, rdx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x164]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	call	memset
	mov	byte ptr [rbp - 0x124], 0
.label_1043:
	lea	rdi, [rbp - 0x130]
	nop	
	call	mbuiter_multi_next
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	byte ptr [rbp - 0x110], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x165], cl
	je	.label_1030
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x10c], 0
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x165], al
.label_1030:
	mov	al, byte ptr [rbp - 0x165]
	mov	rbp, rbp
	xor	al, 0xff
	test	al, 1
	jne	.label_1044
	mov	rsp, rsp
	jmp	.label_1014
.label_1044:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1016
	nop	
	test	byte ptr [rbp - 0x110], 1
	mov	rbp, rbp
	je	.label_1016
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x14]
	cmp	ecx, dword ptr [rbp - 0x10c]
	mov	rsp, rsp
	je	.label_1035
	lea	rdi, [rdi]
	jmp	.label_1026
.label_1016:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	jne	.label_1026
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	imul	rax, rax, 0x30
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 8]
	call	memcmp
	cmp	eax, 0
	jne	.label_1026
.label_1035:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x120]
	nop	
	mov	qword ptr [rbp - 0x120], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x124], 0
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1042
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	nop	
	jmp	.label_1014
.label_1042:
	lea	rsi, [rsi]
	jmp	.label_1034
.label_1026:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rsp, rsp
	jbe	.label_1038
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	nop	
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	sub	rcx, rax
	mov	qword ptr [rbp - 0xb0], rcx
.label_1013:
	nop	
	cmp	qword ptr [rbp - 0x138], 0
	jbe	.label_1022
	mov	rbp, rbp
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	byte ptr [rbp - 0xd0], 1
	mov	byte ptr [rbp - 0x166], cl
	je	.label_1028
	cmp	dword ptr [rbp - 0xcc], 0
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x166], al
.label_1028:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x166]
	mov	rbp, rbp
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	jne	.label_1041
	lea	rsi, [rsi]
	call	abort
.label_1041:
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rax
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	add	rax, -1
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_1013
.label_1022:
	mov	rsp, rsp
	jmp	.label_1019
.label_1038:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	byte ptr [rbp - 0xd0], 1
	mov	byte ptr [rbp - 0x167], cl
	mov	rsp, rsp
	je	.label_1040
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xcc], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0x167], al
.label_1040:
	mov	al, byte ptr [rbp - 0x167]
	xor	al, 0xff
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1023
	mov	rsp, rsp
	call	abort
.label_1023:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x120], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x124], 0
.label_1019:
	lea	rsi, [rsi]
	jmp	.label_1034
.label_1034:
	jmp	.label_1043
.label_1014:
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	freea
	mov	byte ptr [rbp - 1], 1
.label_1032:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410da0

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x80
	movabs	rax, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rcx
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1055
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	mov	rbp, rbp
	jmp	.label_1058
.label_1055:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rax, 3
	lea	rsi, [rsi]
	cmp	rax, 0xfa1
	jae	.label_1064
	mov	rax, qword ptr [rbp - 0x30]
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
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_1051
.label_1064:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	shl	rax, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	call	mmalloca
	mov	qword ptr [rbp - 0x78], rax
.label_1051:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
.label_1058:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jne	.label_1056
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1068
.label_1056:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 2
.label_1066:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jae	.label_1062
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x49], dl
.label_1052:
	movzx	eax, byte ptr [rbp - 0x49]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	movzx	esi, byte ptr [rdx + rcx]
	cmp	eax, esi
	jne	.label_1054
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	jmp	.label_1065
.label_1054:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	jne	.label_1057
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	jmp	.label_1065
.label_1057:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_1052
.label_1065:
	mov	rbp, rbp
	jmp	.label_1063
.label_1063:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1066
.label_1062:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
.label_1061:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_1053
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x68]
	movzx	esi, byte ptr [rax]
	cmp	edx, esi
	jne	.label_1050
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jne	.label_1060
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	nop	
	jmp	.label_1053
.label_1060:
	nop	
	jmp	.label_1059
.label_1050:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	jbe	.label_1067
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_1049
.label_1067:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
.label_1049:
	jmp	.label_1059
.label_1059:
	jmp	.label_1061
.label_1053:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, rax
	call	freea
	nop	
	mov	byte ptr [rbp - 1], 1
.label_1068:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4110d0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	test	byte ptr [rdi + 0xc], 1
	je	.label_1074
	lea	rsi, [rsi]
	jmp	.label_1083
.label_1074:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax], 1
	je	.label_1086
	jmp	.label_1070
.label_1086:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	mov	rbp, rbp
	jne	.label_1079
	jmp	.label_1081
.label_1079:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x24], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	jmp	.label_1076
.label_1081:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	nop	
	mov	rdi, rax
	nop	
	call	mbsinit
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1084
	lea	rdi, [rdi]
	jmp	.label_1087
.label_1084:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_7
	nop	
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0x96
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	mov	rsp, rsp
	call	__assert_fail
.label_1087:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 1
.label_1070:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	nop	
	add	rax, 0x14
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdi
	call	__ctype_get_mb_cur_max
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	strnlen1
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	rpl_mbrtowc
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], -1
	lea	rsi, [rsi]
	jne	.label_1078
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x20], 0
	mov	rbp, rbp
	jmp	.label_1075
.label_1078:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], -2
	nop	
	jne	.label_1080
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	nop	
	call	strlen
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_1069
.label_1080:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_1073
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_1072
	mov	rbp, rbp
	jmp	.label_1077
.label_1072:
	movabs	rdi, OFFSET FLAT:.str.2_3
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0xb2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	mov	rbp, rbp
	call	__assert_fail
.label_1077:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x24], 0
	lea	rsi, [rsi]
	jne	.label_1082
	jmp	.label_1071
.label_1082:
	nop	
	movabs	rdi, OFFSET FLAT:.str.3_1
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	rsp, rsp
	mov	edx, 0xb3
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_1071:
	jmp	.label_1073
.label_1073:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x20], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	lea	rsi, [rsi]
	call	mbsinit
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1085
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rax], 0
.label_1085:
	jmp	.label_1069
.label_1069:
	jmp	.label_1075
.label_1075:
	jmp	.label_1076
.label_1076:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xc], 1
.label_1083:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4113b0
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
	#Procedure 0x4113e0
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
	#Procedure 0x4114b0

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
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, r9
	mov	rdx, r9
	mov	rcx, r9
	mov	rbp, rbp
	mov	r8, r9
	lea	rdi, [rdi]
	call	iconv
	nop	
	mov	qword ptr [rbp - 0x48], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1050], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1058], rcx
	mov	qword ptr [rbp - 0x10c8], rax
.label_1108:
	cmp	qword ptr [rbp - 0x1058], 0
	nop	
	jbe	.label_1092
	lea	rsi, [rbp - 0x1050]
	lea	rdx, [rbp - 0x1058]
	lea	rcx, [rbp - 0x1060]
	lea	r8, [rbp - 0x1068]
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x1048]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1060], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1068], 0x1000
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	iconv
	mov	qword ptr [rbp - 0x1070], rax
	cmp	qword ptr [rbp - 0x1070], -1
	jne	.label_1091
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 7
	jne	.label_1096
	jmp	.label_1098
.label_1096:
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_1100
	jmp	.label_1092
.label_1100:
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1097
.label_1098:
	jmp	.label_1091
.label_1091:
	lea	rax, [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x1060]
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rcx
	lea	rdi, [rdi]
	jmp	.label_1108
.label_1092:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x1078]
	nop	
	lea	r8, [rbp - 0x1080]
	nop	
	lea	rsi, [rbp - 0x1048]
	mov	qword ptr [rbp - 0x1078], rsi
	mov	qword ptr [rbp - 0x1080], 0x1000
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10d0], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10d0]
	lea	rdi, [rdi]
	call	iconv
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1088], rax
	cmp	qword ptr [rbp - 0x1088], -1
	jne	.label_1106
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1097
.label_1106:
	mov	rbp, rbp
	lea	rax, [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x1078]
	nop	
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1104
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1097
.label_1104:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1103
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jb	.label_1103
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1102
.label_1103:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	jne	.label_1094
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1097
.label_1094:
	jmp	.label_1102
.label_1102:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10d8], rcx
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x10d8]
	lea	rsi, [rsi]
	call	iconv
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x1090], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1098], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10a0], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10a8], rcx
	mov	qword ptr [rbp - 0x10e0], rax
.label_1099:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1098], 0
	jbe	.label_1101
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1090]
	mov	rbp, rbp
	lea	rdx, [rbp - 0x1098]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x10a0]
	mov	rbp, rbp
	lea	r8, [rbp - 0x10a8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	iconv
	nop	
	mov	qword ptr [rbp - 0x10b0], rax
	cmp	qword ptr [rbp - 0x10b0], -1
	jne	.label_1110
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x16
	jne	.label_1095
	jmp	.label_1101
.label_1095:
	jmp	.label_1093
.label_1110:
	mov	rsp, rsp
	jmp	.label_1099
.label_1101:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x10a0]
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x10a8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10e8], rdx
	nop	
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10e8]
	lea	rdi, [rdi]
	call	iconv
	nop	
	mov	qword ptr [rbp - 0x10b8], rax
	cmp	qword ptr [rbp - 0x10b8], -1
	jne	.label_1109
	jmp	.label_1093
.label_1109:
	cmp	qword ptr [rbp - 0x10a8], 0
	mov	rsp, rsp
	je	.label_1107
	call	abort
.label_1107:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1097
.label_1093:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1105
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10bc], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	ecx, dword ptr [rbp - 0x10bc]
	mov	dword ptr [rbp - 0x10ec], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x10ec]
	lea	rdi, [rdi]
	mov	dword ptr [rax], ecx
.label_1105:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1097:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x10f0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x411930

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rcx
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	shr	rsi, 4
	cmp	rcx, rsi
	ja	.label_1133
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	mov	qword ptr [rbp - 0x28], rax
.label_1133:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1125
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1119
.label_1125:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0xb8]
	call	iconv
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rax
.label_1118:
	lea	rsi, [rbp - 0x38]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x40]
	lea	rcx, [rbp - 0x50]
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	iconv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_1111
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_1117
	lea	rdi, [rdi]
	jmp	.label_1116
.label_1117:
	call	__errno_location
	cmp	dword ptr [rax], 7
	mov	rsp, rsp
	jne	.label_1120
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_1123
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1112
.label_1123:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	jne	.label_1114
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jmp	.label_1112
.label_1114:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	rax, 1
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1122
.label_1120:
	mov	rbp, rbp
	jmp	.label_1112
.label_1122:
	mov	rbp, rbp
	jmp	.label_1121
.label_1121:
	nop	
	jmp	.label_1130
.label_1111:
	lea	rdi, [rdi]
	jmp	.label_1116
.label_1130:
	nop	
	jmp	.label_1118
.label_1116:
	jmp	.label_1127
.label_1127:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x50]
	lea	r8, [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	call	iconv
	nop	
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], -1
	mov	rsp, rsp
	jne	.label_1126
	call	__errno_location
	cmp	dword ptr [rax], 7
	lea	rsi, [rsi]
	jne	.label_1134
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_1113
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1112
.label_1113:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x90]
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	mov	rbp, rbp
	jne	.label_1128
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jmp	.label_1112
.label_1128:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	sub	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1115
.label_1134:
	lea	rsi, [rsi]
	jmp	.label_1112
.label_1115:
	mov	rsp, rsp
	jmp	.label_1129
.label_1126:
	lea	rsi, [rsi]
	jmp	.label_1131
.label_1129:
	jmp	.label_1127
.label_1131:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x50], rcx
	mov	byte ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1132
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	realloc
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	cmp	qword ptr [rbp - 0xa0], 0
	mov	rsp, rsp
	je	.label_1124
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1124:
	mov	rbp, rbp
	jmp	.label_1132
.label_1132:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_1119
.label_1112:
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	free
	nop	
	mov	ecx, dword ptr [rbp - 0xa4]
	nop	
	mov	dword ptr [rbp - 0xcc], ecx
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_1119:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xd0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411df0

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1140
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	call	c_strcasecmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1142
.label_1140:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1135
.label_1142:
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	iconv_open
	mov	rsi, -1
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	qword ptr [rbp - 0x30], rsi
	jne	.label_1138
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_1135
.label_1138:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	str_cd_iconv
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jne	.label_1136
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rdi, qword ptr [rbp - 0x30]
	call	iconv_close
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
	mov	dword ptr [rbp - 0x48], ecx
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	jmp	.label_1139
.label_1136:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	iconv_close
	cmp	eax, 0
	jge	.label_1141
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], ecx
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_1135
.label_1141:
	jmp	.label_1139
.label_1139:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1135:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411f90

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	xor	esi, esi
	lea	rdi, [rdi]
	call	memchr
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1143
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	sub	rax, rcx
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1144
.label_1143:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_1144:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412010

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
	jge	.label_1149
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1147
.label_1149:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1146
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
	je	.label_1145
.label_1146:
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1148
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
.label_1148:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1147:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412130

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
	je	.label_1150
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1151
.label_1150:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1152
.label_1151:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1152:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4121a0

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
	je	.label_1153
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
.label_1153:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412200

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
	jne	.label_1154
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1154
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1154
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
	jne	.label_1155
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1156
.label_1155:
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
	jmp	.label_1156
.label_1154:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_1156:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412310

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
	#Procedure 0x412370
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
	jmp	.label_1163
.label_1163:
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
	ja	.label_1162
	jmp	.label_1160
.label_1160:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1164
.label_1162:
	mov	byte ptr [rbp - 1], 0
.label_1164:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4123e0
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
	#Procedure 0x412430
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
	#Procedure 0x412460
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
	#Procedure 0x412490
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
	#Procedure 0x4124e0
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
	#Procedure 0x412520
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
	#Procedure 0x412560
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
	#Procedure 0x4125a0
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
	#Procedure 0x4125e0
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
	#Procedure 0x412660
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
	jmp	.label_1198
.label_1198:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1197
	jmp	.label_1195
.label_1195:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1196
.label_1197:
	mov	byte ptr [rbp - 1], 0
.label_1196:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4126b0
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
	#Procedure 0x4126f0
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
	jmp	.label_1204
.label_1204:
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
	ja	.label_1205
	jmp	.label_1202
.label_1202:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1206
.label_1205:
	mov	byte ptr [rbp - 1], 0
.label_1206:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412760

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
	#Procedure 0x4127a0
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
	#Procedure 0x4127e0

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 1
	add	rdi, 0x20
	lea	rdi, [rdi]
	sub	rdi, 1
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jb	.label_1213
	mov	rdi, qword ptr [rbp - 0x18]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1214
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	add	rax, 0x10
	sub	rax, 1
	and	rax, 0xffffffffffffffe0
	lea	rdi, [rdi]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	dl, al
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax - 1], dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_1215
.label_1214:
	jmp	.label_1213
.label_1213:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
.label_1215:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4128c0

	.globl freea
	.type freea, @function
freea:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	and	rdi, 0xf
	cmp	rdi, 0
	je	.label_1216
	call	abort
.label_1216:
	mov	rax, qword ptr [rbp - 8]
	nop	
	and	rax, 0x10
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1217
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	movzx	eax, byte ptr [rsi - 1]
	lea	rdi, [rdi]
	movsxd	rsi, eax
	sub	rcx, rsi
	lea	rsi, [rsi]
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
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
	#Procedure 0x412950
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
	#Procedure 0x4129c0

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
	#Procedure 0x412ac0

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
	#Procedure 0x412b20

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1227
	xor	esi, esi
	mov	eax, 8
	nop	
	mov	edx, eax
	lea	rcx, [rbp - 0x58]
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rdi
	mov	byte ptr [rbp - 0x58], 0
	add	rcx, 4
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4c], 0
.label_1225:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x58]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x59], cl
	mov	rsp, rsp
	je	.label_1229
	cmp	dword ptr [rbp - 0x34], 0
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x59], al
.label_1229:
	mov	al, byte ptr [rbp - 0x59]
	nop	
	xor	al, 0xff
	test	al, 1
	jne	.label_1228
	jmp	.label_1224
.label_1228:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4c], 0
	nop	
	jmp	.label_1225
.label_1224:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1226
.label_1227:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1226:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
