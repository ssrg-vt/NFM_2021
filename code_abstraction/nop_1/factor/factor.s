	.section	.text
	.align	32
	#Procedure 0x4021e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	jmp	.label_9
.label_9:
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
	jmp	.label_8
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4022e0

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
.label_11:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_10
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_10:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_14
	jmp	.label_15
.label_14:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_11
.label_15:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_12
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.23
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
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.25
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_13
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_13:
	movabs	rdi, OFFSET FLAT:.str.27
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.28
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.29
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
	.align	32
	#Procedure 0x402480

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.7
	movabs	rsi, OFFSET FLAT:.str.8
	mov	qword ptr [rbp - 0x28], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.7
	mov	qword ptr [rbp - 0x30], rax
	call	textdomain
	mov	qword ptr [rbp - 0x38], rax
	call	lbuf_alloc
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	movabs	rdi, OFFSET FLAT:lbuf_flush
	mov	dword ptr [rbp - 0x3c], eax
	call	atexit
	mov	dword ptr [rbp - 0x40], eax
.label_20:
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_29
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x44], eax
	mov	dword ptr [rbp - 0x48], ecx
	je	.label_18
	jmp	.label_25
.label_25:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_23
	jmp	.label_28
.label_28:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x50], eax
	jne	.label_24
	jmp	.label_19
.label_19:
	mov	byte ptr [byte ptr [dev_debug]],  1
	jmp	.label_21
.label_23:
	xor	edi, edi
	call	usage
.label_18:
	movabs	rdi, OFFSET FLAT:.str.11
	movabs	rsi, OFFSET FLAT:.str.12
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0x60], rax
	call	proper_name_utf8
	movabs	rdi, OFFSET FLAT:.str.13
	movabs	rsi, OFFSET FLAT:.str.14
	mov	qword ptr [rbp - 0x68], rax
	call	proper_name_utf8
	movabs	rsi, OFFSET FLAT:.str.5
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.10
	xor	r9d, r9d
	mov	ecx, r9d
	mov	rdi, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, r10
	mov	r9, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_24:
	mov	edi, 1
	call	usage
.label_21:
	jmp	.label_20
.label_29:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_22
	call	do_stdin
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	jmp	.label_17
.label_22:
	mov	byte ptr [rbp - 0x15], 1
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x1c], eax
.label_27:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_30
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	print_factors
	test	al, 1
	jne	.label_16
	mov	byte ptr [rbp - 0x15], 0
.label_16:
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_27
.label_30:
	jmp	.label_17
.label_17:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026e0

	.globl lbuf_alloc
	.type lbuf_alloc, @function
lbuf_alloc:
	push	rbp
	mov	rbp, rsp
	cmp	qword ptr [word ptr [lbuf]],  0
	je	.label_31
	jmp	.label_32
.label_31:
	mov	eax, 0x400
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [word ptr [lbuf]],  rax
	mov	rax,  qword ptr [word ptr [lbuf]]
	mov	qword ptr [word ptr [label_33]],  rax
.label_32:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402720

	.globl lbuf_flush
	.type lbuf_flush, @function
lbuf_flush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 1
	mov	rax,  qword ptr [word ptr [label_33]]
	mov	rcx,  qword ptr [word ptr [lbuf]]
	sub	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsi,  qword ptr [word ptr [lbuf]]
	mov	rdx, qword ptr [rbp - 8]
	call	full_write
	cmp	rax, qword ptr [rbp - 8]
	je	.label_34
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_34:
	mov	rax,  qword ptr [word ptr [lbuf]]
	mov	qword ptr [word ptr [label_33]],  rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027b0

	.globl do_stdin
	.type do_stdin, @function
do_stdin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x18]
	mov	byte ptr [rbp - 1], 1
	call	init_tokenbuffer
.label_35:
	movabs	rsi, OFFSET FLAT:.str.35
	mov	eax, 3
	mov	edx, eax
	lea	rcx, [rbp - 0x18]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	readtoken
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_37
	jmp	.label_36
.label_37:
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_factors
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_35
.label_36:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402840

	.globl print_factors
	.type print_factors, @function
print_factors:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	lea	rax, [rbp - 0x18]
	lea	rsi, [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rax
	mov	rdx, qword ptr [rbp - 0x68]
	call	strto2uintmax
	mov	dword ptr [rbp - 0x24], eax
	mov	ecx, eax
	test	eax, eax
	mov	dword ptr [rbp - 0x6c], ecx
	je	.label_48
	jmp	.label_53
.label_53:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x70], eax
	je	.label_55
	jmp	.label_39
.label_48:
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 1
	shr	rax, 1
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_40
	jmp	.label_47
.label_47:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_49
	movabs	rsi, OFFSET FLAT:.str.36
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
.label_49:
	jmp	.label_42
.label_42:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_factors_single
	mov	byte ptr [rbp - 1], 1
	jmp	.label_45
.label_40:
	jmp	.label_50
.label_55:
	jmp	.label_50
.label_39:
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x80], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_45
.label_50:
	jmp	.label_52
.label_52:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_54
	movabs	rsi, OFFSET FLAT:.str.38
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
.label_54:
	jmp	.label_46
.label_46:
	mov	edx, 0xa
	lea	rdi, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	call	__gmpz_init_set_str
	movabs	rdi, OFFSET FLAT:.str.39
	lea	rsi, [rbp - 0x40]
	mov	dword ptr [rbp - 0x88], eax
	mov	al, 0
	call	__gmp_printf
	lea	rsi, [rbp - 0x58]
	lea	rdi, [rbp - 0x40]
	mov	dword ptr [rbp - 0x8c], eax
	call	mp_factor
	mov	dword ptr [rbp - 0x5c], 0
.label_43:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	jae	.label_51
	mov	dword ptr [rbp - 0x60], 0
.label_44:
	mov	eax, dword ptr [rbp - 0x60]
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x5c]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x50]
	cmp	rcx, qword ptr [rsi + rdx*8]
	jae	.label_38
	movabs	rdi, OFFSET FLAT:.str.40
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x58]
	mov	rsi, rcx
	mov	al, 0
	call	__gmp_printf
	mov	dword ptr [rbp - 0x90], eax
	mov	eax, dword ptr [rbp - 0x60]
	add	eax, 1
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_44
.label_38:
	jmp	.label_41
.label_41:
	mov	eax, dword ptr [rbp - 0x5c]
	add	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_43
.label_51:
	lea	rdi, [rbp - 0x58]
	call	mp_factor_clear
	lea	rdi, [rbp - 0x40]
	call	__gmpz_clear
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0x94], eax
	call	fflush_unlocked
	mov	byte ptr [rbp - 1], 1
	mov	dword ptr [rbp - 0x98], eax
.label_45:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a80

	.globl strto2uintmax
	.type strto2uintmax, @function
strto2uintmax:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 0x34], 4
.label_67:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movsx	edx, byte ptr [rbp - 0x35]
	cmp	edx, 0x20
	jne	.label_65
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_68
.label_65:
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0x2b
	jne	.label_59
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_62
.label_59:
	jmp	.label_62
.label_68:
	jmp	.label_67
.label_62:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_61:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x44], edx
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_69
	jmp	.label_56
.label_69:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	xor	cl, 0xff
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_64
	mov	dword ptr [rbp - 0x34], 4
	jmp	.label_56
.label_64:
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_61
.label_56:
	jmp	.label_63
.label_63:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_58
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x48], edx
	cmp	dword ptr [rbp - 0x48], 0
	jne	.label_66
	jmp	.label_58
.label_66:
	movabs	rax, 0x1999999999999999
	mov	ecx, dword ptr [rbp - 0x48]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x48], ecx
	cmp	qword ptr [rbp - 0x28], rax
	seta	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_60
	mov	dword ptr [rbp - 0x34], 1
	jmp	.label_58
.label_60:
	imul	rax, qword ptr [rbp - 0x28], 0xa
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	shr	rax, 0x3d
	mov	rcx, qword ptr [rbp - 0x30]
	shr	rcx, 0x3f
	add	rax, rcx
	mov	edx, eax
	mov	dword ptr [rbp - 0x1c], edx
	imul	rax, qword ptr [rbp - 0x30], 0xa
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 1
	cmp	rax, rcx
	setb	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], edx
	imul	rax, qword ptr [rbp - 0x30], 0xa
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x48]
	mov	eax, edx
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x48]
	mov	ecx, edx
	cmp	rax, rcx
	setb	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], edx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	eax, edx
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	ecx, edx
	cmp	rax, rcx
	setb	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_57
	mov	dword ptr [rbp - 0x34], 1
	jmp	.label_58
.label_57:
	jmp	.label_63
.label_58:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	eax, dword ptr [rbp - 0x34]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ca0

	.globl print_factors_single
	.type print_factors_single, @function
print_factors_single:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	print_uintmaxes
	mov	edi, 0x3a
	call	lbuf_putc
	lea	rdx, [rbp - 0x110]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	factor
	mov	dword ptr [rbp - 0x114], 0
.label_75:
	mov	eax, dword ptr [rbp - 0x114]
	movzx	ecx, byte ptr [rbp - 0x16]
	cmp	eax, ecx
	jae	.label_71
	mov	dword ptr [rbp - 0x118], 0
.label_73:
	mov	eax, dword ptr [rbp - 0x118]
	mov	ecx, dword ptr [rbp - 0x114]
	mov	edx, ecx
	movzx	ecx, byte ptr [rbp + rdx - 0x30]
	cmp	eax, ecx
	jae	.label_70
	mov	edi, 0x20
	call	lbuf_putc
	xor	edi, edi
	mov	eax, dword ptr [rbp - 0x114]
	mov	ecx, eax
	mov	rsi, qword ptr [rbp + rcx*8 - 0x100]
	call	print_uintmaxes
	mov	eax, dword ptr [rbp - 0x118]
	add	eax, 1
	mov	dword ptr [rbp - 0x118], eax
	jmp	.label_73
.label_70:
	jmp	.label_74
.label_74:
	mov	eax, dword ptr [rbp - 0x114]
	add	eax, 1
	mov	dword ptr [rbp - 0x114], eax
	jmp	.label_75
.label_71:
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_72
	mov	edi, 0x20
	call	lbuf_putc
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x110]
	call	print_uintmaxes
.label_72:
	mov	edi, 0xa
	call	lbuf_putc
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402db0

	.globl mp_factor
	.type mp_factor, @function
mp_factor:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	mp_factor_init
	mov	rsi, qword ptr [rbp - 8]
	cmp	dword ptr [rsi + 4], 0
	jge	.label_77
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_78
.label_77:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 4], 0
	setg	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x14], edx
.label_78:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, 0
	je	.label_82
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mp_factor_using_division
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_80
	jmp	.label_84
.label_84:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_85
	movabs	rsi, OFFSET FLAT:.str.53
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x18], eax
.label_85:
	jmp	.label_79
.label_79:
	mov	rdi, qword ptr [rbp - 8]
	call	mp_prime_p
	test	al, 1
	jne	.label_83
	jmp	.label_81
.label_83:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	call	mp_factor_insert
	jmp	.label_76
.label_81:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	mp_factor_using_pollard_rho
.label_76:
	jmp	.label_80
.label_80:
	jmp	.label_82
.label_82:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402eb0

	.globl mp_factor_clear
	.type mp_factor_clear, @function
mp_factor_clear:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
.label_87:
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_86
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rdi, rcx
	call	__gmpz_clear
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_87
.label_86:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f30

	.globl print_uintmaxes
	.type print_uintmaxes, @function
print_uintmaxes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_92
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	lbuf_putint
	jmp	.label_95
.label_92:
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	edx, esi
	div	rcx
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x20], 0x3b9aca00
	jae	.label_96
	jmp	.label_91
.label_96:
	movabs	rdi, OFFSET FLAT:.str.41
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x99c
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.print_uintmaxes
	call	__assert_fail
.label_91:
	mov	qword ptr [rbp - 0x28], 0x3b9aca00
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x38], 0
	mov	dword ptr [rbp - 0x4c], 0x40
.label_88:
	cmp	dword ptr [rbp - 0x4c], 0
	jbe	.label_90
	jmp	.label_93
.label_93:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x30]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_94
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_89
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_89
.label_94:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0x60], rsi
	sub	rdx, qword ptr [rbp - 0x60]
	sbb	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], rdx
.label_89:
	jmp	.label_97
.label_97:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, -1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_88
.label_90:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	print_uintmaxes
	mov	eax, 9
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	lbuf_putint
.label_95:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030d0

	.globl lbuf_putc
	.type lbuf_putc, @function
lbuf_putc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	mov	rcx,  qword ptr [word ptr [label_33]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [label_33]],  rdx
	mov	byte ptr [rcx], al
	movsx	edi, byte ptr [rbp - 1]
	cmp	edi, 0xa
	jne	.label_100
	mov	rax,  qword ptr [word ptr [label_33]]
	mov	rcx,  qword ptr [word ptr [lbuf]]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
	cmp	dword ptr [dword ptr [lbuf_putc.line_buffered]],  -1
	jne	.label_98
	xor	edi, edi
	call	isatty
	mov	dword ptr [dword ptr [lbuf_putc.line_buffered]],  eax
.label_98:
	cmp	dword ptr [dword ptr [lbuf_putc.line_buffered]],  0
	je	.label_103
	call	lbuf_flush
	jmp	.label_99
.label_103:
	cmp	qword ptr [rbp - 0x10], 0x200
	jb	.label_101
	mov	rax,  qword ptr [word ptr [label_33]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [lbuf]]
	add	rax, 0x200
	mov	qword ptr [rbp - 0x20], rax
.label_104:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0xa
	je	.label_102
	jmp	.label_104
.label_102:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [label_33]],  rax
	call	lbuf_flush
	mov	rdi,  qword ptr [word ptr [lbuf]]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	rdx, rax
	call	memcpy
	mov	rax,  qword ptr [word ptr [lbuf]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [word ptr [label_33]],  rax
.label_101:
	jmp	.label_99
.label_99:
	jmp	.label_100
.label_100:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403210

	.globl factor
	.type factor, @function
factor:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0xfa], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], 0
	cmp	qword ptr [rbp - 8], 0
	jne	.label_106
	cmp	qword ptr [rbp - 0x10], 2
	jae	.label_106
	jmp	.label_105
.label_106:
	lea	rdi, [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	factor_using_division
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_107
	cmp	qword ptr [rbp - 0x10], 2
	jae	.label_107
	jmp	.label_105
.label_107:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	prime2_p
	test	al, 1
	jne	.label_108
	jmp	.label_111
.label_108:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	factor_insert_large
	jmp	.label_105
.label_111:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_110
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	factor_using_pollard_rho
	jmp	.label_109
.label_110:
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	factor_using_pollard_rho2
.label_109:
	jmp	.label_105
.label_105:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403310

	.globl lbuf_putint
	.type lbuf_putint, @function
lbuf_putint:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	call	umaxtostr
	mov	ecx, 0x15
	mov	esi, ecx
	lea	rdi, [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, rdi
	sub	rsi, rax
	sub	rsi, 1
	mov	qword ptr [rbp - 0x40], rsi
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_112:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_113
	mov	rax,  qword ptr [word ptr [label_33]]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [word ptr [label_33]],  rcx
	mov	byte ptr [rax], 0x30
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_112
.label_113:
	mov	rdi,  qword ptr [word ptr [label_33]]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x40]
	add	rdx,  qword ptr [word ptr [label_33]]
	mov	qword ptr [word ptr [label_33]],  rdx
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033d0

	.globl factor_using_division
	.type factor_using_division, @function
factor_using_division:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	and	rcx, 1
	cmp	rcx, 0
	jne	.label_157
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_171
	jmp	.label_120
.label_120:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x78], rax
	bsf	rcx, qword ptr [rbp - 0x78]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x24]
	shr	rax, cl
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x10], 0
	mov	edx, dword ptr [rbp - 0x24]
	add	edx, 0x40
	mov	dword ptr [rbp - 0x24], edx
	jmp	.label_125
.label_171:
	jmp	.label_149
.label_149:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	bsf	rcx, qword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x24], ecx
	jmp	.label_151
.label_151:
	mov	eax, 0x40
	mov	rcx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 0x24]
	mov	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 0x88], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x88]
	shl	rdx, cl
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	shr	rsi, cl
	or	rdx, rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, eax
	shr	rdx, cl
	mov	qword ptr [rbp - 0x10], rdx
	jmp	.label_125
.label_125:
	mov	eax, 2
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	call	factor_insert_multiplicity
.label_157:
	mov	qword ptr [rbp - 0x30], 3
	mov	dword ptr [rbp - 0x34], 0
.label_165:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x89], cl
	jbe	.label_153
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	cmp	rcx, 0x29c
	setb	dl
	mov	byte ptr [rbp - 0x89], dl
.label_153:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_167
	jmp	.label_115
.label_167:
	jmp	.label_119
.label_119:
	movabs	rax, OFFSET FLAT:primes_dtab
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x34]
	mov	esi, edx
	shl	rsi, 4
	add	rax, rsi
	imul	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x80], rcx
	mul	qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x50], rdx
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_123
	jmp	.label_150
.label_123:
	movabs	rax, OFFSET FLAT:primes_dtab
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x34]
	mov	esi, edx
	shl	rsi, 4
	mov	rdi, rax
	add	rdi, rsi
	imul	rcx, qword ptr [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x34]
	mov	esi, edx
	shl	rsi, 4
	add	rax, rsi
	cmp	rcx, qword ptr [rax + 8]
	seta	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_128
	jmp	.label_150
.label_128:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	factor_insert_multiplicity
	jmp	.label_119
.label_150:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	eax, eax
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_165
.label_115:
	cmp	qword ptr [rbp - 8], 0
	je	.label_124
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_124:
	jmp	.label_136
.label_136:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_159
	movabs	rax, OFFSET FLAT:primes_dtab
	mov	ecx, dword ptr [rbp - 0x34]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_121
.label_121:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 8]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_161
	jmp	.label_122
.label_161:
	xor	ecx, ecx
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_121
.label_122:
	jmp	.label_142
.label_142:
	jmp	.label_145
.label_145:
	jmp	.label_131
.label_131:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x18]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_148
	jmp	.label_143
.label_148:
	mov	ecx, 1
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_131
.label_143:
	jmp	.label_133
.label_133:
	jmp	.label_155
.label_155:
	jmp	.label_118
.label_118:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x20]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x28]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_141
	jmp	.label_164
.label_141:
	mov	ecx, 2
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_118
.label_164:
	jmp	.label_146
.label_146:
	jmp	.label_126
.label_126:
	jmp	.label_130
.label_130:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x38]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_129
	jmp	.label_154
.label_129:
	mov	ecx, 3
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_130
.label_154:
	jmp	.label_168
.label_168:
	jmp	.label_169
.label_169:
	jmp	.label_163
.label_163:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x40]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x48]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_132
	jmp	.label_160
.label_132:
	mov	ecx, 4
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_163
.label_160:
	jmp	.label_152
.label_152:
	jmp	.label_166
.label_166:
	jmp	.label_117
.label_117:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x50]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x58]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_135
	jmp	.label_137
.label_135:
	mov	ecx, 5
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_117
.label_137:
	jmp	.label_156
.label_156:
	jmp	.label_158
.label_158:
	jmp	.label_144
.label_144:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x60]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x68]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_139
	jmp	.label_127
.label_139:
	mov	ecx, 6
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_144
.label_127:
	jmp	.label_114
.label_114:
	jmp	.label_147
.label_147:
	jmp	.label_134
.label_134:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	imul	rax, qword ptr [rcx + 0x70]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 0x78]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_116
	jmp	.label_170
.label_116:
	mov	ecx, 7
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_134
.label_170:
	jmp	.label_138
.label_138:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff8]]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	jbe	.label_140
	jmp	.label_159
.label_140:
	jmp	.label_162
.label_162:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 8
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_136
.label_159:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a00

	.globl prime2_p
	.type prime2_p, @function
prime2_p:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2b0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_172
	mov	rdi, qword ptr [rbp - 0x18]
	call	prime_p
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_174
.label_172:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rbp - 0x18], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rsi, edx
	sub	rax, rsi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_189
	jmp	.label_213
.label_213:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x258], rax
	bsf	rcx, qword ptr [rbp - 0x258]
	mov	dword ptr [rbp - 0x7c], ecx
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	rax, cl
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], 0
	mov	edx, dword ptr [rbp - 0x7c]
	add	edx, 0x40
	mov	dword ptr [rbp - 0x7c], edx
	jmp	.label_200
.label_189:
	jmp	.label_187
.label_187:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x250], rax
	bsf	rcx, qword ptr [rbp - 0x250]
	mov	dword ptr [rbp - 0x7c], ecx
	jmp	.label_190
.label_190:
	mov	eax, 0x40
	mov	rcx, qword ptr [rbp - 0x38]
	sub	eax, dword ptr [rbp - 0x7c]
	mov	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 0x2a8], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x2a8]
	shl	rdx, cl
	mov	rsi, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, eax
	shr	rsi, cl
	or	rdx, rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, eax
	shr	rdx, cl
	mov	qword ptr [rbp - 0x28], rdx
	jmp	.label_200
.label_200:
	mov	qword ptr [rbp - 0x188], 2
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x190], rax
	mov	rax, qword ptr [rbp - 0x190]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x198]
	imul	rdx, qword ptr [rbp - 0x198]
	imul	rdx, qword ptr [rbp - 0x190]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x198]
	imul	rdx, qword ptr [rbp - 0x198]
	imul	rdx, qword ptr [rbp - 0x190]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x198]
	imul	rdx, qword ptr [rbp - 0x198]
	imul	rdx, qword ptr [rbp - 0x190]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x198], rax
	mov	rax, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_180
.label_180:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_206
	mov	qword ptr [rbp - 0x1a0], 1
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x1b0], 0x40
	jmp	.label_216
.label_206:
	mov	qword ptr [rbp - 0x1a0], 0
	mov	qword ptr [rbp - 0x1a8], 1
	mov	qword ptr [rbp - 0x1b0], 0x80
.label_216:
	jmp	.label_188
.label_188:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x1b0], rcx
	cmp	rax, 0
	jbe	.label_202
	jmp	.label_203
.label_203:
	mov	rax, qword ptr [rbp - 0x1a0]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x1a8]
	shr	rcx, 0x3f
	or	rax, rcx
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	shl	rax, 1
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1a0]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_207
	mov	rax, qword ptr [rbp - 0x1a0]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_184
	mov	rax, qword ptr [rbp - 0x1a8]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_184
.label_207:
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x298], rcx
	mov	qword ptr [rbp - 0x2a0], rsi
	sub	rdx, qword ptr [rbp - 0x2a0]
	sbb	rax, qword ptr [rbp - 0x298]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	qword ptr [rbp - 0x1a8], rdx
.label_184:
	jmp	.label_188
.label_202:
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_175
.label_175:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x260], rcx
	mov	qword ptr [rbp - 0x268], rsi
	add	rdx, qword ptr [rbp - 0x268]
	adc	rax, qword ptr [rbp - 0x260]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rdx
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_185
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_210
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_210
.label_185:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x270], rcx
	mov	qword ptr [rbp - 0x278], rsi
	sub	rdx, qword ptr [rbp - 0x278]
	sbb	rax, qword ptr [rbp - 0x270]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rdx
.label_210:
	jmp	.label_192
.label_192:
	lea	r9, [rbp - 0x60]
	lea	rcx, [rbp - 0x30]
	lea	rdx, [rbp - 0x50]
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	r8d, dword ptr [rbp - 0x7c]
	call	millerrabin2
	test	al, 1
	jne	.label_212
	mov	byte ptr [rbp - 1], 0
	jmp	.label_174
.label_212:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_222
	lea	rdx, [rbp - 0x180]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	call	factor
.label_222:
	mov	dword ptr [rbp - 0x1b4], 0
.label_191:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_186
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_195
	mov	byte ptr [rbp - 0x1b5], 1
	cmp	qword ptr [rbp - 0x178], 0
	je	.label_181
	jmp	.label_205
.label_205:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rax, qword ptr [rbp - 0x1f0]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rax, qword ptr [rbp - 0x1f8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rax, qword ptr [rbp - 0x1f8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rax, qword ptr [rbp - 0x1f8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f8]
	imul	rdx, qword ptr [rbp - 0x1f0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x1f8], rax
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	qword ptr [rbp - 0x1e8], rax
	lea	r9, [rbp - 0x60]
	lea	rcx, [rbp - 0x70]
	lea	rdx, [rbp - 0x1d0]
	lea	rsi, [rbp - 0x50]
	lea	rax, [rbp - 0x1e0]
	mov	rdi, qword ptr [rbp - 0x1e8]
	imul	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x1d0], rdi
	mov	qword ptr [rbp - 0x1c8], 0
	add	rax, 8
	mov	r8, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	powm2
	mov	r10b, 1
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x2a9], r10b
	jne	.label_214
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x58]
	setne	cl
	mov	byte ptr [rbp - 0x2a9], cl
.label_214:
	mov	al, byte ptr [rbp - 0x2a9]
	and	al, 1
	mov	byte ptr [rbp - 0x1b5], al
.label_181:
	mov	dword ptr [rbp - 0x1fc], 0
.label_183:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1fc]
	movzx	edx, byte ptr [rbp - 0x86]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x2aa], cl
	jae	.label_193
	mov	al, byte ptr [rbp - 0x1b5]
	mov	byte ptr [rbp - 0x2aa], al
.label_193:
	mov	al, byte ptr [rbp - 0x2aa]
	test	al, 1
	jne	.label_209
	jmp	.label_217
.label_209:
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	ecx, eax
	cmp	qword ptr [rbp + rcx*8 - 0x170], 2
	jne	.label_221
	jmp	.label_176
.label_176:
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x40]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rax, qword ptr [rbp - 0x38]
	shr	rax, 1
	mov	qword ptr [rbp - 0x1c8], rax
	jmp	.label_179
.label_221:
	jmp	.label_198
.label_198:
	jmp	.label_173
.label_173:
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	ecx, eax
	mov	rcx, qword ptr [rbp + rcx*8 - 0x170]
	mov	qword ptr [rbp - 0x218], rcx
	mov	rcx, qword ptr [rbp - 0x218]
	shr	rcx, 1
	and	rcx, 0x7f
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + binvert_table]]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x220], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x218]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x220], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x218]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x220], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x220]
	imul	rdx, qword ptr [rbp - 0x218]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x220], rcx
	mov	rcx, qword ptr [rbp - 0x220]
	mov	qword ptr [rbp - 0x208], rcx
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x210], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x1fc]
	mov	edx, ecx
	cmp	rax, qword ptr [rbp + rdx*8 - 0x170]
	jb	.label_196
	mov	rax, qword ptr [rbp - 0x210]
	mov	ecx, dword ptr [rbp - 0x1fc]
	mov	edx, ecx
	mov	rdx, qword ptr [rbp + rdx*8 - 0x170]
	mov	qword ptr [rbp - 0x290], rdx
	mul	qword ptr [rbp - 0x290]
	mov	qword ptr [rbp - 0x230], rax
	mov	qword ptr [rbp - 0x228], rdx
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x228]
	imul	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x1d0], rax
	jmp	.label_219
.label_196:
	mov	rax, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	qword ptr [rbp - 0x1c8], 0
.label_219:
	jmp	.label_194
.label_194:
	jmp	.label_179
.label_179:
	lea	r9, [rbp - 0x60]
	lea	rcx, [rbp - 0x70]
	lea	rdx, [rbp - 0x1d0]
	lea	rsi, [rbp - 0x50]
	lea	rax, [rbp - 0x1e0]
	add	rax, 8
	mov	r8, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	powm2
	mov	r10b, 1
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x2ab], r10b
	jne	.label_215
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x58]
	setne	cl
	mov	byte ptr [rbp - 0x2ab], cl
.label_215:
	mov	al, byte ptr [rbp - 0x2ab]
	and	al, 1
	mov	byte ptr [rbp - 0x1b5], al
	mov	eax, dword ptr [rbp - 0x1fc]
	add	eax, 1
	mov	dword ptr [rbp - 0x1fc], eax
	jmp	.label_183
.label_217:
	jmp	.label_199
.label_195:
	cmp	dword ptr [rbp - 0x1b4], 0x18
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x1b5], al
.label_199:
	test	byte ptr [rbp - 0x1b5], 1
	je	.label_204
	mov	byte ptr [rbp - 1], 1
	jmp	.label_174
.label_204:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x188], rcx
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_218
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x238], rax
	mov	qword ptr [rbp - 0x240], 0
	mov	qword ptr [rbp - 0x248], 0x40
	jmp	.label_201
.label_218:
	mov	qword ptr [rbp - 0x238], 0
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x240], rax
	mov	qword ptr [rbp - 0x248], 0x80
.label_201:
	jmp	.label_197
.label_197:
	mov	rax, qword ptr [rbp - 0x248]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x248], rcx
	cmp	rax, 0
	jbe	.label_220
	jmp	.label_208
.label_208:
	mov	rax, qword ptr [rbp - 0x238]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x240]
	shr	rcx, 0x3f
	or	rax, rcx
	mov	qword ptr [rbp - 0x238], rax
	mov	rax, qword ptr [rbp - 0x240]
	shl	rax, 1
	mov	qword ptr [rbp - 0x240], rax
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_182
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_178
	mov	rax, qword ptr [rbp - 0x240]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_178
.label_182:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x240]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x280], rcx
	mov	qword ptr [rbp - 0x288], rsi
	sub	rdx, qword ptr [rbp - 0x288]
	sbb	rax, qword ptr [rbp - 0x280]
	mov	qword ptr [rbp - 0x238], rax
	mov	qword ptr [rbp - 0x240], rdx
.label_178:
	jmp	.label_197
.label_220:
	mov	rax, qword ptr [rbp - 0x238]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x240]
	mov	qword ptr [rbp - 0x50], rax
	lea	r9, [rbp - 0x60]
	lea	rcx, [rbp - 0x30]
	lea	rdx, [rbp - 0x50]
	lea	rdi, [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	r8d, dword ptr [rbp - 0x7c]
	call	millerrabin2
	test	al, 1
	jne	.label_177
	mov	byte ptr [rbp - 1], 0
	jmp	.label_174
.label_177:
	jmp	.label_211
.label_211:
	mov	eax, dword ptr [rbp - 0x1b4]
	add	eax, 1
	mov	dword ptr [rbp - 0x1b4], eax
	jmp	.label_191
.label_186:
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_174:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x2b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404450

	.globl factor_insert_large
	.type factor_insert_large, @function
factor_insert_large:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_223
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	jne	.label_226
	jmp	.label_225
.label_226:
	movabs	rdi, OFFSET FLAT:.str.49
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x235
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_insert_large
	call	__assert_fail
.label_225:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_224
.label_223:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	factor_insert_multiplicity
.label_224:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl factor_using_pollard_rho
	.type factor_using_pollard_rho, @function
factor_using_pollard_rho:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x58], 1
	mov	qword ptr [rbp - 0x60], 1
	jmp	.label_253
.label_253:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 8]
	jae	.label_230
	jmp	.label_238
.label_230:
	movabs	rdi, OFFSET FLAT:.str.44
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x5c2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_using_pollard_rho
	call	__assert_fail
.label_238:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x88], 1
	mov	qword ptr [rbp - 0x90], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	dword ptr [rbp - 0x94], 0x40
.label_245:
	cmp	dword ptr [rbp - 0x94], 0
	jbe	.label_228
	jmp	.label_231
.label_231:
	mov	rax, qword ptr [rbp - 0x70]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x78]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x70]
	shr	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x80]
	shl	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x70]
	ja	.label_234
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x70]
	jne	.label_249
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x78]
	jb	.label_249
.label_234:
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xe8], rcx
	mov	qword ptr [rbp - 0xf0], rsi
	sub	rdx, qword ptr [rbp - 0xf0]
	sbb	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], rdx
.label_249:
	jmp	.label_243
.label_243:
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, -1
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_245
.label_228:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_252
.label_252:
	jmp	.label_257
.label_257:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	sub	rsi, qword ptr [rbp - 0x38]
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	movzx	eax, dil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xa0]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rax
.label_239:
	cmp	qword ptr [rbp - 8], 1
	je	.label_236
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_251
	jmp	.label_254
.label_251:
	movabs	rdi, OFFSET FLAT:.str.50
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x5c8
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.factor_using_pollard_rho
	call	__assert_fail
.label_254:
	jmp	.label_259
.label_259:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xa8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xa8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xb0]
	imul	rdx, qword ptr [rbp - 0xa8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_237
.label_237:
	jmp	.label_250
.label_250:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	call	mulredc
	mov	qword ptr [rbp - 0x20], rax
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	sub	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	movzx	eax, dil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xb8]
	add	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_256
.label_256:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	setb	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xc0]
	add	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	call	mulredc
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x58]
	and	rax, 0x1f
	cmp	rax, 1
	jne	.label_235
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	call	gcd_odd
	cmp	rax, 1
	je	.label_242
	jmp	.label_244
.label_242:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_235:
	jmp	.label_247
.label_247:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	cmp	rax, 0
	jne	.label_250
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	shl	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0xc8], 0
.label_229:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_233
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	call	mulredc
	mov	qword ptr [rbp - 0x20], rax
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	sub	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	movzx	eax, dil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xd0]
	add	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_241
.label_241:
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_229
.label_233:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_237
.label_244:
	jmp	.label_240
.label_240:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	call	mulredc
	mov	qword ptr [rbp - 0x30], rax
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	sub	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	movzx	eax, dil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xd8]
	add	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x10]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_246
.label_246:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	setb	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, qword ptr [rbp - 0xe0]
	add	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 8]
	call	gcd_odd
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 1
	je	.label_240
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_258
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_236
.label_258:
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 0x50]
	call	prime_p
	test	al, 1
	jne	.label_248
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_232
.label_248:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x50]
	call	factor_insert_multiplicity
.label_232:
	mov	rdi, qword ptr [rbp - 8]
	call	prime_p
	test	al, 1
	jne	.label_255
	jmp	.label_227
.label_255:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	factor_insert_multiplicity
	jmp	.label_236
.label_227:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rdx
	jmp	.label_239
.label_236:
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b60

	.globl factor_using_pollard_rho2
	.type factor_using_pollard_rho2, @function
factor_using_pollard_rho2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x98], 1
	mov	qword ptr [rbp - 0xa0], 1
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 8]
	jae	.label_272
	mov	qword ptr [rbp - 0xa8], 1
	mov	qword ptr [rbp - 0xb0], 0
	mov	qword ptr [rbp - 0xb8], 0x40
	jmp	.label_299
.label_272:
	mov	qword ptr [rbp - 0xa8], 0
	mov	qword ptr [rbp - 0xb0], 1
	mov	qword ptr [rbp - 0xb8], 0x80
.label_299:
	jmp	.label_308
.label_308:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xb8], rcx
	cmp	rax, 0
	jbe	.label_318
	jmp	.label_263
.label_263:
	mov	rax, qword ptr [rbp - 0xa8]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0xb0]
	shr	rcx, 0x3f
	or	rax, rcx
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_265
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_280
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_280
.label_265:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1d0], rcx
	mov	qword ptr [rbp - 0x1d8], rsi
	sub	rdx, qword ptr [rbp - 0x1d8]
	sbb	rax, qword ptr [rbp - 0x1d0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	qword ptr [rbp - 0xb0], rdx
.label_280:
	jmp	.label_308
.label_318:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_310
.label_310:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x120], rcx
	mov	qword ptr [rbp - 0x128], rsi
	add	rdx, qword ptr [rbp - 0x128]
	adc	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_315
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_266
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_266
.label_315:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x130], rcx
	mov	qword ptr [rbp - 0x138], rsi
	sub	rdx, qword ptr [rbp - 0x138]
	sbb	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
.label_266:
	jmp	.label_286
.label_286:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], rax
.label_285:
	mov	al, 1
	cmp	qword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0x1d9], al
	jne	.label_292
	cmp	qword ptr [rbp - 0x10], 1
	setne	al
	mov	byte ptr [rbp - 0x1d9], al
.label_292:
	mov	al, byte ptr [rbp - 0x1d9]
	test	al, 1
	jne	.label_302
	jmp	.label_264
.label_302:
	jmp	.label_309
.label_309:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rax, qword ptr [rbp - 0xc0]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_289
.label_289:
	jmp	.label_312
.label_312:
	lea	rdi, [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r10, qword ptr [rbp - 0x78]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x140], rdx
	add	rcx, qword ptr [rbp - 0x140]
	adc	rax, 0
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_307
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_260
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_260
.label_307:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rcx
	mov	qword ptr [rbp - 0x150], rsi
	sub	rdx, qword ptr [rbp - 0x150]
	sbb	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
.label_260:
	jmp	.label_273
.label_273:
	jmp	.label_275
.label_275:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x158], rcx
	mov	qword ptr [rbp - 0x160], rsi
	sub	rdx, qword ptr [rbp - 0x160]
	sbb	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
	cmp	qword ptr [rbp - 0x68], 0
	jge	.label_278
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x168], rcx
	mov	qword ptr [rbp - 0x170], rsi
	add	rdx, qword ptr [rbp - 0x170]
	adc	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
.label_278:
	jmp	.label_311
.label_311:
	lea	rdi, [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r8, qword ptr [rbp - 0x70]
	mov	r9, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r10, qword ptr [rbp - 0x78]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x98]
	and	rax, 0x1f
	cmp	rax, 1
	jne	.label_320
	lea	rdi, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	gcd2_odd
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_270
	cmp	qword ptr [rbp - 0x88], 1
	je	.label_274
.label_270:
	jmp	.label_281
.label_274:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
.label_320:
	jmp	.label_293
.label_293:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
	cmp	rax, 0
	jne	.label_312
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	mov	qword ptr [rbp - 0xd0], 0
.label_304:
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x98]
	jae	.label_313
	lea	rdi, [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r10, qword ptr [rbp - 0x78]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x178], rdx
	add	rcx, qword ptr [rbp - 0x178]
	adc	rax, 0
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_276
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_277
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_277
.label_276:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rsi
	sub	rdx, qword ptr [rbp - 0x188]
	sbb	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
.label_277:
	jmp	.label_298
.label_298:
	jmp	.label_301
.label_301:
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_304
.label_313:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_289
.label_281:
	jmp	.label_284
.label_284:
	lea	rdi, [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r10, qword ptr [rbp - 0x78]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x190], rdx
	add	rcx, qword ptr [rbp - 0x190]
	adc	rax, 0
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rcx
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_262
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_282
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_282
.label_262:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x198], rcx
	mov	qword ptr [rbp - 0x1a0], rsi
	sub	rdx, qword ptr [rbp - 0x1a0]
	sbb	rax, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rdx
.label_282:
	jmp	.label_297
.label_297:
	jmp	.label_300
.label_300:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	qword ptr [rbp - 0x1b0], rsi
	sub	rdx, qword ptr [rbp - 0x1b0]
	sbb	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
	cmp	qword ptr [rbp - 0x68], 0
	jge	.label_303
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1b8], rcx
	mov	qword ptr [rbp - 0x1c0], rsi
	add	rdx, qword ptr [rbp - 0x1c0]
	adc	rax, qword ptr [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rdx
.label_303:
	jmp	.label_267
.label_267:
	lea	rdi, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	gcd2_odd
	mov	qword ptr [rbp - 0x88], rax
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 0x1da], cl
	jne	.label_271
	cmp	qword ptr [rbp - 0x88], 1
	sete	al
	mov	byte ptr [rbp - 0x1da], al
.label_271:
	mov	al, byte ptr [rbp - 0x1da]
	test	al, 1
	jne	.label_284
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_287
	jmp	.label_290
.label_290:
	jmp	.label_291
.label_291:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xe8]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xe8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xe8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xf0]
	imul	rdx, qword ptr [rbp - 0xe8]
	sub	rax, rdx
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xe0], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x88]
	jb	.label_294
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x1c8], rcx
	mul	qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x100], rax
	mov	qword ptr [rbp - 0xf8], rdx
	mov	rax, qword ptr [rbp - 8]
	sub	rax, qword ptr [rbp - 0xf8]
	imul	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_295
.label_294:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], 0
.label_295:
	jmp	.label_314
.label_314:
	mov	rdi, qword ptr [rbp - 0x88]
	call	prime_p
	test	al, 1
	jne	.label_317
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_261
.label_317:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x88]
	call	factor_insert_multiplicity
.label_261:
	jmp	.label_268
.label_287:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_269
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x88]
	jne	.label_269
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, rax
	call	factor_using_pollard_rho2
	jmp	.label_264
.label_269:
	jmp	.label_283
.label_283:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x110]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x110]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x110]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x118]
	imul	rdx, qword ptr [rbp - 0x110]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x108], rax
	mov	rax, qword ptr [rbp - 0x108]
	imul	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], 0
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x88]
	call	prime2_p
	test	al, 1
	jne	.label_279
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, rax
	call	factor_using_pollard_rho2
	jmp	.label_288
.label_279:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x88]
	call	factor_insert_large
.label_288:
	jmp	.label_268
.label_268:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_296
	mov	rdi, qword ptr [rbp - 0x10]
	call	prime_p
	test	al, 1
	jne	.label_305
	jmp	.label_306
.label_305:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	factor_insert_multiplicity
	jmp	.label_264
.label_306:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	factor_using_pollard_rho
	jmp	.label_264
.label_296:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	prime2_p
	test	al, 1
	jne	.label_319
	jmp	.label_316
.label_319:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	factor_insert_large
	jmp	.label_264
.label_316:
	lea	rdi, [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	mod2
	lea	rdi, [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	mod2
	lea	rdi, [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	mod2
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_285
.label_264:
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405780

	.globl factor_insert_multiplicity
	.type factor_insert_multiplicity, @function
factor_insert_multiplicity:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	rsi, qword ptr [rbp - 8]
	movzx	edx, byte ptr [rsi + 0xfa]
	mov	dword ptr [rbp - 0x18], edx
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x10
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0xe0
	mov	qword ptr [rbp - 0x28], rsi
	mov	edx, dword ptr [rbp - 0x18]
	sub	edx, 1
	mov	dword ptr [rbp - 0x2c], edx
.label_327:
	cmp	dword ptr [rbp - 0x2c], 0
	jl	.label_321
	movsxd	rax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_325
	jmp	.label_321
.label_325:
	jmp	.label_324
.label_324:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, -1
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_327
.label_321:
	cmp	dword ptr [rbp - 0x2c], 0
	jl	.label_329
	movsxd	rax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_323
.label_329:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 1
	mov	dword ptr [rbp - 0x30], eax
.label_326:
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax, dword ptr [rbp - 0x2c]
	jle	.label_322
	movsxd	rax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rbp - 0x30]
	add	edx, 1
	movsxd	rcx, edx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + rcx*8], rax
	movsxd	rax, dword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dil, byte ptr [rcx + rax]
	mov	edx, dword ptr [rbp - 0x30]
	add	edx, 1
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], dil
	mov	eax, dword ptr [rbp - 0x30]
	add	eax, -1
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_326
.label_322:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	add	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + rdx*8], rax
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dil, cl
	mov	ecx, dword ptr [rbp - 0x2c]
	add	ecx, 1
	movsxd	rax, ecx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rax], dil
	mov	ecx, dword ptr [rbp - 0x18]
	add	ecx, 1
	mov	dil, cl
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xfa], dil
	jmp	.label_328
.label_323:
	mov	eax, dword ptr [rbp - 0x14]
	movsxd	rcx, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	esi, byte ptr [rdx + rcx]
	add	esi, eax
	mov	dil, sil
	mov	byte ptr [rdx + rcx], dil
.label_328:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058e0

	.globl factor_insert_refind
	.type factor_insert_refind, @function
factor_insert_refind:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	dword ptr [rbp - 0x1c], 0
.label_330:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 0x18]
	jae	.label_331
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, dword ptr [rbp - 0x1c]
	mov	eax, eax
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_330
.label_331:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	factor_insert_multiplicity
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405950

	.globl prime_p
	.type prime_p, @function
prime_p:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x220
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 1
	ja	.label_360
	mov	byte ptr [rbp - 1], 0
	jmp	.label_333
.label_360:
	cmp	qword ptr [rbp - 0x10], 0x17ded79
	jae	.label_356
	mov	byte ptr [rbp - 1], 1
	jmp	.label_333
.label_356:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	qword ptr [rbp - 0x138], rax
	mov	dword ptr [rbp - 0x14], 0
.label_338:
	mov	rax, qword ptr [rbp - 0x138]
	and	rax, 1
	cmp	rax, 0
	jne	.label_347
	mov	rax, qword ptr [rbp - 0x138]
	shr	rax, 1
	mov	qword ptr [rbp - 0x138], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_338
.label_347:
	mov	qword ptr [rbp - 0x140], 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	shr	rax, 1
	and	rax, 0x7f
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + binvert_table]]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x150]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x148]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x150]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x148]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x150]
	shl	rax, 1
	mov	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x150]
	imul	rdx, qword ptr [rbp - 0x148]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_361
.label_361:
	jmp	.label_346
.label_346:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_349
	jmp	.label_341
.label_349:
	movabs	rdi, OFFSET FLAT:.str.44
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x4c4
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.prime_p
	call	__assert_fail
.label_341:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x160], rax
	mov	qword ptr [rbp - 0x168], 0
	mov	qword ptr [rbp - 0x178], 1
	mov	qword ptr [rbp - 0x180], 0
	mov	qword ptr [rbp - 0x170], 0
	mov	dword ptr [rbp - 0x184], 0x40
.label_342:
	cmp	dword ptr [rbp - 0x184], 0
	jbe	.label_348
	jmp	.label_352
.label_352:
	mov	rax, qword ptr [rbp - 0x160]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x168]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x168], rax
	mov	rax, qword ptr [rbp - 0x160]
	shr	rax, 1
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x170]
	shl	rax, 1
	mov	qword ptr [rbp - 0x170], rax
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0x160]
	ja	.label_354
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0x160]
	jne	.label_340
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0x168]
	jb	.label_340
.label_354:
	mov	rax, qword ptr [rbp - 0x170]
	add	rax, 1
	mov	qword ptr [rbp - 0x170], rax
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, qword ptr [rbp - 0x160]
	mov	rdx, qword ptr [rbp - 0x180]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x200], rcx
	mov	qword ptr [rbp - 0x208], rsi
	sub	rdx, qword ptr [rbp - 0x208]
	sbb	rax, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x178], rax
	mov	qword ptr [rbp - 0x180], rdx
.label_340:
	jmp	.label_359
.label_359:
	mov	eax, dword ptr [rbp - 0x184]
	add	eax, -1
	mov	dword ptr [rbp - 0x184], eax
	jmp	.label_342
.label_348:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_350
.label_350:
	jmp	.label_355
.label_355:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	sub	rsi, qword ptr [rbp - 0x28]
	cmp	rdx, rsi
	setb	dil
	and	dil, 1
	movzx	eax, dil
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x190], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, qword ptr [rbp - 0x190]
	add	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x138]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	r9, qword ptr [rbp - 0x28]
	call	millerrabin
	test	al, 1
	jne	.label_353
	mov	byte ptr [rbp - 1], 0
	jmp	.label_333
.label_353:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_344
	xor	eax, eax
	mov	edi, eax
	lea	rdx, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, 1
	mov	rsi, rcx
	call	factor
.label_344:
	mov	dword ptr [rbp - 0x194], 0
.label_362:
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_371
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_339
	mov	byte ptr [rbp - 0x15], 1
	mov	dword ptr [rbp - 0x198], 0
.label_367:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x198]
	movzx	edx, byte ptr [rbp - 0x36]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x209], cl
	jae	.label_351
	mov	al, byte ptr [rbp - 0x15]
	mov	byte ptr [rbp - 0x209], al
.label_351:
	mov	al, byte ptr [rbp - 0x209]
	test	al, 1
	jne	.label_358
	jmp	.label_363
.label_358:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	ecx, dword ptr [rbp - 0x198]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x218], rdx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x218]
	div	qword ptr [rbp + rsi*8 - 0x120]
	mov	r8, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	rdx, r8
	mov	r8, r9
	call	powm
	cmp	rax, qword ptr [rbp - 0x28]
	setne	r10b
	and	r10b, 1
	mov	byte ptr [rbp - 0x15], r10b
	mov	eax, dword ptr [rbp - 0x198]
	add	eax, 1
	mov	dword ptr [rbp - 0x198], eax
	jmp	.label_367
.label_363:
	jmp	.label_357
.label_339:
	cmp	dword ptr [rbp - 0x194], 0x18
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
.label_357:
	test	byte ptr [rbp - 0x15], 1
	je	.label_364
	mov	byte ptr [rbp - 1], 1
	jmp	.label_333
.label_364:
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x1e8], rdx
	mov	rax, rcx
	mul	qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1a8], rax
	mov	qword ptr [rbp - 0x1a0], rdx
	cmp	qword ptr [rbp - 0x1a0], 0
	sete	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	cmp	rax, 0
	je	.label_369
	mov	rax, qword ptr [rbp - 0x1a8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdx
	jmp	.label_335
.label_369:
	jmp	.label_370
.label_370:
	mov	rax, qword ptr [rbp - 0x1a0]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_372
	jmp	.label_334
.label_372:
	movabs	rdi, OFFSET FLAT:.str.45
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x4f4
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.prime_p
	call	__assert_fail
.label_334:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	qword ptr [rbp - 0x1c0], 0
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	qword ptr [rbp - 0x1c8], 0
	mov	dword ptr [rbp - 0x1dc], 0x40
.label_366:
	cmp	dword ptr [rbp - 0x1dc], 0
	jbe	.label_332
	jmp	.label_336
.label_336:
	mov	rax, qword ptr [rbp - 0x1b8]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x1c0]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x1b8]
	shr	rax, 1
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rax, qword ptr [rbp - 0x1c8]
	shl	rax, 1
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x1d0]
	cmp	rax, qword ptr [rbp - 0x1b8]
	ja	.label_343
	mov	rax, qword ptr [rbp - 0x1d0]
	cmp	rax, qword ptr [rbp - 0x1b8]
	jne	.label_345
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x1c0]
	jb	.label_345
.label_343:
	mov	rax, qword ptr [rbp - 0x1c8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rcx, qword ptr [rbp - 0x1b8]
	mov	rdx, qword ptr [rbp - 0x1d8]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x1f0], rcx
	mov	qword ptr [rbp - 0x1f8], rsi
	sub	rdx, qword ptr [rbp - 0x1f8]
	sbb	rax, qword ptr [rbp - 0x1f0]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	qword ptr [rbp - 0x1d8], rdx
.label_345:
	jmp	.label_365
.label_365:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, -1
	mov	dword ptr [rbp - 0x1dc], eax
	jmp	.label_366
.label_332:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x1b0], rax
	jmp	.label_335
.label_335:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x138]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	r9, qword ptr [rbp - 0x28]
	call	millerrabin
	test	al, 1
	jne	.label_337
	mov	byte ptr [rbp - 1], 0
	jmp	.label_333
.label_337:
	jmp	.label_368
.label_368:
	mov	eax, dword ptr [rbp - 0x194]
	add	eax, 1
	mov	dword ptr [rbp - 0x194], eax
	jmp	.label_362
.label_371:
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_333:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x220
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4060a0

	.globl millerrabin2
	.type millerrabin2, @function
millerrabin2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rax, [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	qword ptr [rbp - 0x38], r9
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	powm2
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	jne	.label_373
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_373
	mov	byte ptr [rbp - 1], 1
	jmp	.label_374
.label_373:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x70], rcx
	mov	qword ptr [rbp - 0x78], rsi
	sub	rdx, qword ptr [rbp - 0x78]
	sbb	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rdx
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_379
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_379
	mov	byte ptr [rbp - 1], 1
	jmp	.label_374
.label_379:
	mov	dword ptr [rbp - 0x64], 1
.label_376:
	mov	eax, dword ptr [rbp - 0x64]
	cmp	eax, dword ptr [rbp - 0x2c]
	jae	.label_380
	lea	rdi, [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	r10, qword ptr [rbp - 0x18]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_377
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_377
	mov	byte ptr [rbp - 1], 1
	jmp	.label_374
.label_377:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	jne	.label_375
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_375
	mov	byte ptr [rbp - 1], 0
	jmp	.label_374
.label_375:
	jmp	.label_378
.label_378:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_376
.label_380:
	mov	byte ptr [rbp - 1], 0
.label_374:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406250

	.globl powm2
	.type powm2, @function
powm2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x70], rcx
	mov	dword ptr [rbp - 0x64], 0x40
.label_384:
	cmp	dword ptr [rbp - 0x64], 0
	jbe	.label_383
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	je	.label_385
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_385:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -1
	mov	dword ptr [rbp - 0x64], eax
	mov	rcx, qword ptr [rbp - 0x70]
	shr	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_384
.label_383:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
.label_386:
	cmp	qword ptr [rbp - 0x70], 0
	jbe	.label_381
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	je	.label_382
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_382:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	call	mulredc2
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x70]
	shr	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_386
.label_381:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406450

	.globl millerrabin
	.type millerrabin, @function
millerrabin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x38]
	call	powm
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_391
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_390
.label_391:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_392
.label_390:
	mov	dword ptr [rbp - 0x4c], 1
.label_394:
	mov	eax, dword ptr [rbp - 0x4c]
	cmp	eax, dword ptr [rbp - 0x2c]
	jae	.label_388
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	mulredc
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_389
	mov	byte ptr [rbp - 1], 1
	jmp	.label_392
.label_389:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_387
	mov	byte ptr [rbp - 1], 0
	jmp	.label_392
.label_387:
	jmp	.label_393
.label_393:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_394
.label_388:
	mov	byte ptr [rbp - 1], 0
.label_392:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406540

	.globl powm
	.type powm, @function
powm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, 1
	cmp	rcx, 0
	je	.label_395
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_395:
	jmp	.label_397
.label_397:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_396
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mulredc
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	and	rax, 1
	cmp	rax, 0
	je	.label_398
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mulredc
	mov	qword ptr [rbp - 0x30], rax
.label_398:
	jmp	.label_397
.label_396:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065f0

	.globl mulredc
	.type mulredc, @function
mulredc:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rax, rcx
	mul	qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 0x30]
	imul	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rcx
	mul	qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x40], rdx
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_399
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
.label_399:
	mov	rax, qword ptr [rbp - 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406670

	.globl mulredc2
	.type mulredc2, @function
mulredc2:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x128
	mov	rax, qword ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	xor	r11d, r11d
	mov	ebx, r11d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r10
	mov	qword ptr [rbp - 0x48], rax
	sub	rbx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rbx
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 0x3f
	cmp	rax, 0
	jne	.label_404
	jmp	.label_403
.label_404:
	movabs	rdi, OFFSET FLAT:.str.46
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x3e7
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	call	__assert_fail
.label_403:
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 0x3f
	cmp	rax, 0
	jne	.label_405
	jmp	.label_402
.label_405:
	movabs	rdi, OFFSET FLAT:.str.47
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x3e8
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	call	__assert_fail
.label_402:
	mov	rax, qword ptr [rbp - 0x38]
	shr	rax, 0x3f
	cmp	rax, 0
	jne	.label_400
	jmp	.label_401
.label_400:
	movabs	rdi, OFFSET FLAT:.str.48
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x3e9
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mulredc2
	call	__assert_fail
.label_401:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x120], rcx
	mul	qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x78], rdx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x118], rcx
	mul	qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x50], rdx
	mov	rax, qword ptr [rbp - 0x48]
	imul	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x110], rcx
	mul	qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], rdx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x108], rcx
	mul	qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x88], rdx
	cmp	qword ptr [rbp - 0x80], 0
	setne	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x100], rdx
	add	rcx, qword ptr [rbp - 0x100]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xf8], rdx
	add	rcx, qword ptr [rbp - 0xf8]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
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
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe0], rcx
	mul	qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x78], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd8], rcx
	mul	qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x88], rdx
	mov	rax, qword ptr [rbp - 0x78]
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
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xc8], rdx
	add	rcx, qword ptr [rbp - 0xc8]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xc0], rcx
	mul	qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], rdx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb8], rcx
	mul	qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x90], rax
	mov	qword ptr [rbp - 0x88], rdx
	cmp	qword ptr [rbp - 0x80], 0
	setne	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xb0], rdx
	add	rcx, qword ptr [rbp - 0xb0]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xa8], rdx
	add	rcx, qword ptr [rbp - 0xa8]
	adc	rax, 0
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x98], rcx
	mov	qword ptr [rbp - 0xa0], r8
	add	rdx, qword ptr [rbp - 0xa0]
	adc	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rdx
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x38]
	ja	.label_407
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_406
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x40]
	jb	.label_406
.label_407:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x130], rsi
	sub	rdx, qword ptr [rbp - 0x130]
	sbb	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rdx
.label_406:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rsp, 0x128
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406aa0

	.globl gcd_odd
	.type gcd_odd, @function
gcd_odd:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	and	rsi, 1
	cmp	rsi, 0
	jne	.label_408
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_408:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_412
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_409
.label_412:
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_413:
	jmp	.label_411
.label_411:
	mov	rax, qword ptr [rbp - 0x10]
	and	rax, 1
	cmp	rax, 0
	jne	.label_414
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_411
.label_414:
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_410
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_409
.label_410:
	mov	rax, qword ptr [rbp - 0x28]
	sar	rax, 0x3f
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	xor	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_413
.label_409:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ba0

	.globl gcd2_odd
	.type gcd2_odd, @function
gcd2_odd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x30]
	and	rcx, 1
	cmp	rcx, 0
	je	.label_426
	jmp	.label_420
.label_426:
	movabs	rdi, OFFSET FLAT:.str.51
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x1e3
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gcd2_odd
	call	__assert_fail
.label_420:
	mov	rax, qword ptr [rbp - 0x20]
	or	rax, qword ptr [rbp - 0x18]
	cmp	rax, 0
	jne	.label_435
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_419
.label_435:
	jmp	.label_415
.label_415:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 1
	cmp	rax, 0
	jne	.label_429
	jmp	.label_436
.label_436:
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_415
.label_429:
	jmp	.label_424
.label_424:
	mov	rax, qword ptr [rbp - 0x28]
	or	rax, qword ptr [rbp - 0x18]
	cmp	rax, 0
	jne	.label_430
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gcd_odd
	mov	qword ptr [rbp - 8], rax
	jmp	.label_419
.label_430:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_427
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_425
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x30]
	jbe	.label_425
.label_427:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x50], rsi
	sub	rdx, qword ptr [rbp - 0x50]
	sbb	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rdx
.label_428:
	jmp	.label_431
.label_431:
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_434
.label_434:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 1
	cmp	rax, 0
	je	.label_428
	jmp	.label_422
.label_425:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	ja	.label_433
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_416
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	jbe	.label_416
.label_433:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], rsi
	sub	rdx, qword ptr [rbp - 0x40]
	sbb	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rdx
.label_432:
	jmp	.label_418
.label_418:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x30]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_423
.label_423:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 1
	cmp	rax, 0
	je	.label_432
	jmp	.label_417
.label_416:
	jmp	.label_421
.label_417:
	jmp	.label_422
.label_422:
	jmp	.label_424
.label_421:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_419:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e00

	.globl mod2
	.type mod2, @function
mod2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_437
	jmp	.label_440
.label_437:
	movabs	rdi, OFFSET FLAT:.str.52
	movabs	rsi, OFFSET FLAT:.str.42
	mov	edx, 0x1a3
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mod2
	call	__assert_fail
.label_440:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_443
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_438
.label_443:
	jmp	.label_445
.label_445:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rax
	bsr	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	xor	rax, 0x3f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_448
.label_448:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	bsr	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	xor	rax, 0x3f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x38], ecx
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, 0x40
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x4c]
	mov	esi, edx
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x78]
	shl	rsi, cl
	mov	rdi, qword ptr [rbp - 0x30]
	sub	eax, dword ptr [rbp - 0x4c]
	mov	eax, eax
	mov	ecx, eax
	shr	rdi, cl
	or	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x4c]
	mov	ecx, eax
	shl	rsi, cl
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x50], 0
.label_446:
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x4c]
	jge	.label_441
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_447
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_439
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_439
.label_447:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x70], rsi
	sub	rdx, qword ptr [rbp - 0x70]
	sbb	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x20], rdx
.label_439:
	jmp	.label_444
.label_444:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x30]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_442
.label_442:
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_446
.label_441:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_438:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fd0

	.globl mp_factor_init
	.type mp_factor_init, @function
mp_factor_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407000

	.globl mp_factor_using_division
	.type mp_factor_using_division, @function
mp_factor_using_division:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_449
	movabs	rsi, OFFSET FLAT:.str.54
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x30], eax
.label_449:
	jmp	.label_457
.label_457:
	lea	rdi, [rbp - 0x20]
	call	__gmpz_init
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	__gmpz_scan1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	__gmpz_fdiv_q_2exp
.label_454:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_455
	mov	eax, 2
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	mp_factor_insert_ui
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, -1
	mov	qword ptr [rbp - 0x28], rsi
	jmp	.label_454
.label_455:
	mov	qword ptr [rbp - 0x28], 3
	mov	dword ptr [rbp - 0x2c], 1
.label_456:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, eax
	cmp	rcx, 0x29c
	ja	.label_452
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	__gmpz_divisible_ui_p
	cmp	eax, 0
	jne	.label_451
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [rbp - 0x2c], ecx
	mov	eax, eax
	mov	edx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rdx * 1) + primes_diff]]
	mov	edx, eax
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rdx
	call	__gmpz_cmp_ui
	cmp	eax, 0
	jge	.label_450
	jmp	.label_452
.label_450:
	jmp	.label_453
.label_451:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	__gmpz_tdiv_q_ui
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	call	mp_factor_insert_ui
.label_453:
	jmp	.label_456
.label_452:
	lea	rdi, [rbp - 0x20]
	call	__gmpz_clear
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407150

	.globl mp_prime_p
	.type mp_prime_p, @function
mp_prime_p:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	eax, 1
	mov	esi, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	jg	.label_475
	mov	byte ptr [rbp - 1], 0
	jmp	.label_462
.label_475:
	mov	eax, 0x17ded79
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	jge	.label_461
	mov	byte ptr [rbp - 1], 1
	jmp	.label_462
.label_461:
	xor	eax, eax
	mov	r8d, eax
	lea	rcx, [rbp - 0x60]
	lea	rdx, [rbp - 0x50]
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rbp - 0x30]
	mov	al, 0
	call	__gmpz_inits
	mov	r9d, 1
	mov	edx, r9d
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	call	__gmpz_sub_ui
	xor	r9d, r9d
	mov	esi, r9d
	lea	rdi, [rbp - 0x50]
	call	__gmpz_scan1
	lea	rsi, [rbp - 0x50]
	lea	rdi, [rbp - 0x30]
	mov	qword ptr [rbp - 0x80], rax
	mov	rdx, qword ptr [rbp - 0x80]
	call	__gmpz_tdiv_q_2exp
	mov	r9d, 2
	mov	esi, r9d
	lea	rdi, [rbp - 0x40]
	call	__gmpz_set_ui
	lea	r8, [rbp - 0x30]
	lea	rcx, [rbp - 0x60]
	lea	rdx, [rbp - 0x40]
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x80]
	call	mp_millerrabin
	test	al, 1
	jne	.label_466
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_460
.label_466:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_468
	lea	rsi, [rbp - 0x50]
	lea	rdi, [rbp - 0x60]
	call	__gmpz_set
	lea	rsi, [rbp - 0x78]
	lea	rdi, [rbp - 0x60]
	call	mp_factor
.label_468:
	mov	dword ptr [rbp - 0x84], 0
.label_473:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_474
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_458
	mov	byte ptr [rbp - 0x11], 1
	mov	qword ptr [rbp - 0x90], 0
.label_463:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x91], cl
	jae	.label_464
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x91], al
.label_464:
	mov	al, byte ptr [rbp - 0x91]
	test	al, 1
	jne	.label_469
	jmp	.label_471
.label_469:
	lea	rsi, [rbp - 0x50]
	lea	rdi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x78]
	mov	rdx, rax
	call	__gmpz_divexact
	lea	rax, [rbp - 0x60]
	lea	rsi, [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rdx, rax
	call	__gmpz_powm
	mov	r8d, 1
	mov	esi, r8d
	lea	rdi, [rbp - 0x60]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	setne	r9b
	and	r9b, 1
	mov	byte ptr [rbp - 0x11], r9b
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_463
.label_471:
	jmp	.label_470
.label_458:
	cmp	dword ptr [rbp - 0x84], 0x18
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
.label_470:
	test	byte ptr [rbp - 0x11], 1
	je	.label_472
	jmp	.label_459
.label_472:
	lea	rax, [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, ecx
	movzx	ecx,  byte ptr [byte ptr [+ (rdx * 1) + primes_diff]]
	mov	edx, ecx
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	lea	r8, [rbp - 0x30]
	lea	rcx, [rbp - 0x60]
	lea	rdx, [rbp - 0x40]
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x80]
	call	mp_millerrabin
	test	al, 1
	jne	.label_465
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_459
.label_465:
	jmp	.label_467
.label_467:
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, 1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_473
.label_474:
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_459:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_476
	lea	rdi, [rbp - 0x78]
	call	mp_factor_clear
.label_476:
	jmp	.label_460
.label_460:
	xor	eax, eax
	mov	r8d, eax
	lea	rcx, [rbp - 0x60]
	lea	rdx, [rbp - 0x50]
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rbp - 0x30]
	mov	al, 0
	call	__gmpz_clears
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_462:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407450

	.globl mp_factor_insert
	.type mp_factor_insert, @function
mp_factor_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x30], rsi
.label_479:
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_480
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	__gmpz_cmp
	cmp	eax, 0
	jg	.label_482
	jmp	.label_480
.label_482:
	jmp	.label_477
.label_477:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_479
.label_480:
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_484
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	__gmpz_cmp
	cmp	eax, 0
	je	.label_485
.label_484:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	__gmpz_init
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_483:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jle	.label_481
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	mov	rsi, rcx
	call	__gmpz_set
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rsi + rcx*8 + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_483
.label_481:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	__gmpz_set
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rsi + rax*8 + 8], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rax
	jmp	.label_478
.label_485:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx + rax*8]
	add	rdx, 1
	mov	qword ptr [rcx + rax*8], rdx
.label_478:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407640

	.globl mp_factor_using_pollard_rho
	.type mp_factor_using_pollard_rho, @function
mp_factor_using_pollard_rho:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_497
	movabs	rsi, OFFSET FLAT:.str.55
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x9c], eax
.label_497:
	jmp	.label_487
.label_487:
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rbp - 0x80]
	lea	rdi, [rbp - 0x70]
	mov	al, 0
	call	__gmpz_inits
	mov	ecx, 2
	mov	esi, ecx
	lea	rdi, [rbp - 0x50]
	call	__gmpz_init_set_si
	mov	ecx, 2
	mov	esi, ecx
	lea	rdi, [rbp - 0x30]
	call	__gmpz_init_set_si
	mov	ecx, 2
	mov	esi, ecx
	lea	rdi, [rbp - 0x40]
	call	__gmpz_init_set_si
	mov	ecx, 1
	mov	esi, ecx
	lea	rdi, [rbp - 0x60]
	call	__gmpz_init_set_ui
	mov	qword ptr [rbp - 0x88], 1
	mov	qword ptr [rbp - 0x90], 1
.label_504:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_486
	jmp	.label_490
.label_490:
	jmp	.label_492
.label_492:
	lea	rax, [rbp - 0x30]
	lea	rdi, [rbp - 0x70]
	mov	rsi, rax
	mov	rdx, rax
	call	__gmpz_mul
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_mod
	lea	rax, [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	lea	rdx, [rbp - 0x30]
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rbp - 0x70]
	call	__gmpz_sub
	lea	rdx, [rbp - 0x70]
	lea	rsi, [rbp - 0x60]
	lea	rdi, [rbp - 0x80]
	call	__gmpz_mul
	lea	rsi, [rbp - 0x80]
	lea	rdi, [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_mod
	mov	rax, qword ptr [rbp - 0x88]
	and	rax, 0x1f
	cmp	rax, 1
	jne	.label_499
	lea	rsi, [rbp - 0x60]
	lea	rdi, [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_gcd
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_501
	jmp	.label_498
.label_501:
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rbp - 0x50]
	call	__gmpz_set
.label_499:
	jmp	.label_505
.label_505:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
	cmp	rax, 0
	jne	.label_492
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rbp - 0x40]
	call	__gmpz_set
	mov	rsi, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x88], rsi
	mov	rsi, qword ptr [rbp - 0x90]
	shl	rsi, 1
	mov	qword ptr [rbp - 0x90], rsi
	mov	qword ptr [rbp - 0x98], 0
.label_503:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_493
	lea	rax, [rbp - 0x30]
	lea	rdi, [rbp - 0x70]
	mov	rsi, rax
	mov	rdx, rax
	call	__gmpz_mul
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_mod
	lea	rax, [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_503
.label_493:
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rbp - 0x50]
	call	__gmpz_set
	jmp	.label_490
.label_498:
	jmp	.label_491
.label_491:
	lea	rax, [rbp - 0x50]
	lea	rdi, [rbp - 0x70]
	mov	rsi, rax
	mov	rdx, rax
	call	__gmpz_mul
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_mod
	lea	rax, [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_add_ui
	lea	rdx, [rbp - 0x50]
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rbp - 0x70]
	call	__gmpz_sub
	lea	rax, [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_gcd
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_491
	lea	rdx, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	call	__gmpz_divexact
	lea	rdi, [rbp - 0x70]
	call	mp_prime_p
	test	al, 1
	jne	.label_495
	jmp	.label_496
.label_496:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_489
	movabs	rsi, OFFSET FLAT:.str.56
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa0], eax
.label_489:
	jmp	.label_500
.label_500:
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	mp_factor_using_pollard_rho
	jmp	.label_488
.label_495:
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x20]
	call	mp_factor_insert
.label_488:
	mov	rdi, qword ptr [rbp - 0x10]
	call	mp_prime_p
	test	al, 1
	jne	.label_502
	jmp	.label_494
.label_502:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mp_factor_insert
	jmp	.label_486
.label_494:
	lea	rax, [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_mod
	lea	rax, [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_mod
	lea	rax, [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rax
	call	__gmpz_mod
	jmp	.label_504
.label_486:
	xor	eax, eax
	mov	ecx, eax
	lea	r9, [rbp - 0x50]
	lea	r8, [rbp - 0x30]
	lea	rdx, [rbp - 0x40]
	lea	rsi, [rbp - 0x70]
	lea	rdi, [rbp - 0x80]
	lea	r10, [rbp - 0x60]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, r10
	mov	r10, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rsi
	mov	rsi, r10
	mov	r11, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, r11
	mov	rbx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rcx, rbx
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	__gmpz_clears
	add	rsp, 0xc8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a80

	.globl mp_factor_insert_ui
	.type mp_factor_insert_ui, @function
mp_factor_insert_ui:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rax, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	__gmpz_init_set_ui
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	call	mp_factor_insert
	lea	rdi, [rbp - 0x20]
	call	__gmpz_clear
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ac0

	.globl mp_millerrabin
	.type mp_millerrabin, @function
mp_millerrabin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	call	__gmpz_powm
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_508
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	__gmpz_cmp
	cmp	eax, 0
	jne	.label_510
.label_508:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_507
.label_510:
	mov	qword ptr [rbp - 0x40], 1
.label_506:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_513
	mov	eax, 2
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	call	__gmpz_powm_ui
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	__gmpz_cmp
	cmp	eax, 0
	jne	.label_509
	mov	byte ptr [rbp - 1], 1
	jmp	.label_507
.label_509:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	jne	.label_512
	mov	byte ptr [rbp - 1], 0
	jmp	.label_507
.label_512:
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_506
.label_513:
	mov	byte ptr [rbp - 1], 0
.label_507:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407bd0
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
	.align	32
	#Procedure 0x407bf0
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
	.align	32
	#Procedure 0x407c10

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_515
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_517
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_515
.label_517:
	movabs	rdi, OFFSET FLAT:.str_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_518
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
	jmp	.label_514
.label_518:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_514:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_515:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_516
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_516:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d00

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
	jbe	.label_519
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_522
	jmp	.label_519
.label_522:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_520
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_519
.label_520:
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
.label_519:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407db0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_523
	jmp	.label_526
.label_526:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_526
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_525
.label_523:
	jmp	.label_524
.label_524:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_524
	jmp	.label_525
.label_525:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407eb0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_530
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_530:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_531
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_528
.label_531:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_528:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_527
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_527
	movabs	rsi, OFFSET FLAT:.str.2_0
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_529
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_529:
	jmp	.label_527
.label_527:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fd0
	.globl proper_name
	.type proper_name, @function
proper_name:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_533
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_532
	jmp	.label_534
.label_532:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_535
.label_534:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 2
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x28]
	add	rdi, rax
	add	rdi, 1
	add	rdi, 1
	call	xmalloc
	movabs	rsi, OFFSET FLAT:.str_4
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	sprintf
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_535
.label_533:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_535:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408090

	.globl mbsstr_trimmed_wordbounded
	.type mbsstr_trimmed_wordbounded, @function
mbsstr_trimmed_wordbounded:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	eax, 2
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, eax
	call	trim2
	mov	qword ptr [rbp - 0x18], rax
	mov	byte ptr [rbp - 0x19], 0
.label_557:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_536
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	mbsstr
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_558
	jmp	.label_536
.label_558:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_565
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x58], rdi
	mov	byte ptr [rbp - 0x68], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x5c], 0
	mov	byte ptr [rbp - 0x69], 1
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rcx, qword ptr [rbp - 0x28]
	jae	.label_545
	jmp	.label_542
.label_542:
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x122], cl
	je	.label_553
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x122], al
.label_553:
	mov	al, byte ptr [rbp - 0x122]
	xor	al, 0xff
	test	al, 1
	jne	.label_559
	call	abort
.label_559:
	mov	eax, 0x30
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	lea	rsi, [rbp - 0x68]
	add	rsi, 0x10
	mov	rdi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_542
	test	byte ptr [rbp - 0x90], 1
	je	.label_554
	mov	edi, dword ptr [rbp - 0x8c]
	call	iswalnum
	cmp	eax, 0
	je	.label_554
	mov	byte ptr [rbp - 0x69], 0
.label_554:
	jmp	.label_545
.label_545:
	xor	eax, eax
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rbp - 0xe0]
	lea	rdi, [rbp - 0x68]
	mov	r8, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], r8
	mov	byte ptr [rbp - 0x68], 0
	add	rdi, 4
	mov	qword ptr [rbp - 0x130], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x138], rdx
	mov	dword ptr [rbp - 0x13c], eax
	call	memset
	mov	byte ptr [rbp - 0x5c], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rdx
	mov	byte ptr [rbp - 0xe0], 0
	mov	rdx, qword ptr [rbp - 0x130]
	add	rdx, 4
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memset
	mov	byte ptr [rbp - 0xd4], 0
.label_555:
	lea	rdi, [rbp - 0xe0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xc0], 1
	mov	byte ptr [rbp - 0x13d], cl
	je	.label_560
	cmp	dword ptr [rbp - 0xbc], 0
	sete	al
	mov	byte ptr [rbp - 0x13d], al
.label_560:
	mov	al, byte ptr [rbp - 0x13d]
	xor	al, 0xff
	test	al, 1
	jne	.label_540
	jmp	.label_550
.label_540:
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x13e], cl
	je	.label_547
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x13e], al
.label_547:
	mov	al, byte ptr [rbp - 0x13e]
	xor	al, 0xff
	test	al, 1
	jne	.label_551
	call	abort
.label_551:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd0], rax
	mov	byte ptr [rbp - 0xd4], 0
	jmp	.label_555
.label_550:
	lea	rdi, [rbp - 0x68]
	mov	byte ptr [rbp - 0x6a], 1
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x13f], cl
	je	.label_546
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x13f], al
.label_546:
	mov	al, byte ptr [rbp - 0x13f]
	xor	al, 0xff
	test	al, 1
	jne	.label_552
	jmp	.label_543
.label_552:
	mov	eax, 0x30
	mov	edx, eax
	lea	rcx, [rbp - 0x110]
	lea	rsi, [rbp - 0x68]
	add	rsi, 0x10
	mov	rdi, rcx
	call	memcpy
	test	byte ptr [rbp - 0x100], 1
	je	.label_538
	mov	edi, dword ptr [rbp - 0xfc]
	call	iswalnum
	cmp	eax, 0
	je	.label_538
	mov	byte ptr [rbp - 0x6a], 0
.label_538:
	jmp	.label_543
.label_543:
	test	byte ptr [rbp - 0x69], 1
	je	.label_563
	test	byte ptr [rbp - 0x6a], 1
	je	.label_563
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_536
.label_563:
	lea	rax, [rbp - 0x68]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rdi
	mov	byte ptr [rbp - 0x68], 0
	mov	rdi, rax
	add	rdi, 4
	mov	qword ptr [rbp - 0x148], rax
	call	memset
	mov	byte ptr [rbp - 0x5c], 0
	mov	rdi, qword ptr [rbp - 0x148]
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	r8b, cl
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x149], r8b
	je	.label_564
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x149], al
.label_564:
	mov	al, byte ptr [rbp - 0x149]
	xor	al, 0xff
	test	al, 1
	jne	.label_544
	jmp	.label_536
.label_544:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_548
.label_565:
	mov	byte ptr [rbp - 0x111], 1
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_539
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax - 1]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x158], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x158]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_562
	mov	byte ptr [rbp - 0x111], 0
.label_562:
	jmp	.label_539
.label_539:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x160], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x160]
	add	rdi, rax
	mov	qword ptr [rbp - 0x120], rdi
	mov	byte ptr [rbp - 0x121], 1
	mov	rax, qword ptr [rbp - 0x120]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_537
	mov	rax, qword ptr [rbp - 0x120]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x168], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x168]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_561
	mov	byte ptr [rbp - 0x121], 0
.label_561:
	jmp	.label_537
.label_537:
	test	byte ptr [rbp - 0x111], 1
	je	.label_541
	test	byte ptr [rbp - 0x121], 1
	je	.label_541
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_536
.label_541:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_549
	jmp	.label_536
.label_549:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_548:
	jmp	.label_556
.label_556:
	jmp	.label_557
.label_536:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408580

	.globl proper_name_utf8
	.type proper_name_utf8, @function
proper_name_utf8:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	je	.label_583
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	xstr_iconv
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0xa
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x78], rsi
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi,  qword ptr [word ptr [.str.2_1]]
	mov	qword ptr [rax + rdx], rsi
	mov	cx,  word ptr [word ptr [label_577]]
	mov	word ptr [rax + rdx + 8], cx
	mov	r8b,  byte ptr [byte ptr [label_578]]
	mov	byte ptr [rax + rdx + 0xa], r8b
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xstr_iconv
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_571
	mov	esi, 0x3f
	mov	rdi, qword ptr [rbp - 0x58]
	call	strchr
	cmp	rax, 0
	je	.label_574
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	jmp	.label_569
.label_574:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x48], rax
.label_569:
	jmp	.label_571
.label_571:
	jmp	.label_582
.label_583:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
.label_582:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_585
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_587
.label_585:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_567
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_568
.label_567:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x88], rax
.label_568:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x80], rax
.label_587:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	cmp	eax, 0
	je	.label_579
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_566
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_584
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_566
.label_584:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_573
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_566
	jmp	.label_573
.label_566:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_572
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_572:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_576
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_576:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_581
.label_573:
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	add	rax, 2
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x90], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x90]
	add	rdi, rax
	add	rdi, 1
	add	rdi, 1
	call	xmalloc
	movabs	rsi, OFFSET FLAT:.str_4
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	al, 0
	call	sprintf
	cmp	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 0x94], eax
	je	.label_575
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_575:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_580
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_580:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_581
.label_579:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_586
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_586
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_586:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_570
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_570
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_570:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_581:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088d0
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
	je	.label_588
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_589
.label_588:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_589
.label_589:
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
	.align	32
	#Procedure 0x408950
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_590
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_591
.label_590:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_591
.label_591:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408990
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
	je	.label_592
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_593
.label_592:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_593
.label_593:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4089e0

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
	je	.label_594
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_595
.label_594:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_595
.label_595:
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
	.align	32
	#Procedure 0x408a90
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_596
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_596:
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
	.align	32
	#Procedure 0x408ad0

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
	jne	.label_597
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_597:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_599
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_598
.label_599:
	call	abort
.label_598:
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
	.align	32
	#Procedure 0x408b40
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
	je	.label_600
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_601
.label_600:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_601
.label_601:
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
	.align	32
	#Procedure 0x408c10

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
.label_740:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_643
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_780]]
	jmp	rcx
.label_1265:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1264:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_656
	jmp	.label_658
.label_658:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_659
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_659:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_656
.label_656:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_678
.label_1266:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_678
.label_1267:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_790
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_790:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_692
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_759:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_696
	jmp	.label_699
.label_699:
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
	jmp	.label_706
.label_706:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_759
.label_696:
	jmp	.label_692
.label_692:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_678
.label_1262:
	mov	byte ptr [rbp - 0x79], 1
.label_1261:
	mov	byte ptr [rbp - 0x7b], 1
.label_1263:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_725
	mov	byte ptr [rbp - 0x79], 1
.label_725:
	jmp	.label_726
.label_726:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_727
	jmp	.label_730
.label_730:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_732
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_732:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_727
.label_727:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_678
.label_1260:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_678
.label_643:
	call	abort
.label_678:
	mov	qword ptr [rbp - 0x58], 0
.label_709:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_744
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_747
.label_744:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_747:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_758
	jmp	.label_765
.label_758:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_766
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_766
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_766
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_774
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_774
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_786
.label_774:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_786:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_766
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_766
	test	byte ptr [rbp - 0x7b], 1
	je	.label_793
	jmp	.label_611
.label_793:
	mov	byte ptr [rbp - 0x81], 1
.label_766:
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
	ja	.label_797
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_802]]
	jmp	rcx
.label_1271:
	test	byte ptr [rbp - 0x79], 1
	je	.label_603
	jmp	.label_738
.label_738:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_608
	jmp	.label_611
.label_608:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_617
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_617
	jmp	.label_619
.label_619:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_620
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_620:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_626
.label_626:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_629
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_629:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_778
.label_778:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_640
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_640:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_617:
	jmp	.label_649
.label_649:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_651
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_651:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_800
.label_800:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_662
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_662
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_662
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_662
	jmp	.label_679
.label_679:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_681
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_681:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_686
.label_686:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_689
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_689:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_662
.label_662:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_700
.label_603:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_704
	jmp	.label_707
.label_704:
	jmp	.label_700
.label_700:
	jmp	.label_635
.label_1282:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_708
	jmp	.label_716
.label_716:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_717
	jmp	.label_796
.label_708:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_720
	jmp	.label_611
.label_720:
	jmp	.label_724
.label_717:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_625
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_625
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_625
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_668
	jmp	.label_739
.label_739:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_668
	jmp	.label_742
.label_742:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_668
	jmp	.label_748
.label_748:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_668
	jmp	.label_753
.label_753:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_754
	jmp	.label_668
.label_668:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_761
	jmp	.label_611
.label_761:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_764
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_764:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_772
.label_772:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_776
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_776:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_782
.label_782:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_695
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_695:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_788
.label_788:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_664
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_664:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_792
.label_754:
	jmp	.label_792
.label_792:
	jmp	.label_625
.label_625:
	jmp	.label_724
.label_796:
	jmp	.label_724
.label_724:
	jmp	.label_635
.label_1272:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_602
.label_1273:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_602
.label_1277:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_602
.label_1275:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_623
.label_1278:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_623
.label_1274:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_623
.label_1276:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_602
.label_1283:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_606
	test	byte ptr [rbp - 0x7b], 1
	je	.label_610
	jmp	.label_611
.label_610:
	jmp	.label_614
.label_606:
	test	byte ptr [rbp - 0x79], 1
	je	.label_615
	test	byte ptr [rbp - 0x7b], 1
	je	.label_615
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_615
	jmp	.label_614
.label_615:
	jmp	.label_623
.label_623:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_624
	test	byte ptr [rbp - 0x7b], 1
	je	.label_624
	jmp	.label_611
.label_624:
	jmp	.label_602
.label_602:
	test	byte ptr [rbp - 0x79], 1
	je	.label_630
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_609
.label_630:
	jmp	.label_635
.label_1284:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_637
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_641
	jmp	.label_646
.label_637:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_641
.label_646:
	jmp	.label_635
.label_641:
	jmp	.label_648
.label_648:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_650
	jmp	.label_635
.label_650:
	jmp	.label_653
.label_653:
	mov	byte ptr [rbp - 0x83], 1
.label_1279:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_657
	test	byte ptr [rbp - 0x7b], 1
	je	.label_657
	jmp	.label_611
.label_657:
	jmp	.label_635
.label_1281:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_665
	test	byte ptr [rbp - 0x7b], 1
	je	.label_669
	jmp	.label_611
.label_669:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_673
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_673
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_673:
	jmp	.label_683
.label_683:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_801
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_801:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_688
.label_688:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_691
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_691:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_698
.label_698:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_705
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_705:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_665:
	jmp	.label_635
.label_1280:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_635
.label_797:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_663
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
	jmp	.label_613
.label_663:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_734
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_734:
	jmp	.label_642
.label_642:
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
	jne	.label_751
	jmp	.label_644
.label_751:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_757
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_644
.label_757:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_763
	mov	byte ptr [rbp - 0x91], 0
.label_783:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_767
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_767:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_779
	jmp	.label_781
.label_779:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_783
.label_781:
	jmp	.label_644
.label_763:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_622
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_622
	mov	qword ptr [rbp - 0xb8], 1
.label_618:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_789
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
	jb	.label_672
	jmp	.label_799
.label_799:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_672
	jmp	.label_791
.label_791:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_672
	jmp	.label_605
.label_605:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_607
	jmp	.label_672
.label_672:
	jmp	.label_611
.label_607:
	jmp	.label_729
.label_729:
	jmp	.label_677
.label_677:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_618
.label_789:
	jmp	.label_622
.label_622:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_627
	mov	byte ptr [rbp - 0x91], 0
.label_627:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_710
.label_710:
	jmp	.label_634
.label_634:
	jmp	.label_636
.label_636:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_642
.label_644:
	jmp	.label_613
.label_613:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_647
	test	byte ptr [rbp - 0x79], 1
	je	.label_655
	test	byte ptr [rbp - 0x91], 1
	jne	.label_655
.label_647:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_660:
	test	byte ptr [rbp - 0x79], 1
	je	.label_666
	test	byte ptr [rbp - 0x91], 1
	jne	.label_666
	jmp	.label_670
.label_670:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_671
	jmp	.label_611
.label_671:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_675
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_675
	jmp	.label_682
.label_682:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_684
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_684:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_687
.label_687:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_690
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_690:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_697
.label_697:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_703
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_703:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_675:
	jmp	.label_711
.label_711:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_712
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_712:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_718
.label_718:
	jmp	.label_721
.label_721:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_722
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_722:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_728
.label_728:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_733
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_733:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_736
.label_666:
	test	byte ptr [rbp - 0x81], 1
	je	.label_741
	jmp	.label_743
.label_743:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_745
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_745:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_741:
	jmp	.label_736
.label_736:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_755
	jmp	.label_760
.label_755:
	jmp	.label_762
.label_762:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_702
	test	byte ptr [rbp - 0x82], 1
	jne	.label_702
	jmp	.label_768
.label_768:
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
	jmp	.label_771
.label_771:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_775
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_775:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_702:
	jmp	.label_784
.label_784:
	jmp	.label_785
.label_785:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_787
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_787:
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
	jmp	.label_660
.label_760:
	jmp	.label_614
.label_655:
	jmp	.label_635
.label_635:
	test	byte ptr [rbp - 0x79], 1
	je	.label_794
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_795
.label_794:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_749
.label_795:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_749
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
	jne	.label_604
.label_749:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_604
	jmp	.label_614
.label_604:
	jmp	.label_609
.label_609:
	jmp	.label_633
.label_633:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_612
	jmp	.label_611
.label_612:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_616
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_616
	jmp	.label_621
.label_621:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_719
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_719:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_628
.label_628:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_631
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_631:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_639
.label_639:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_645
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_645:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_616:
	jmp	.label_652
.label_652:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_654
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_654:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_661
.label_661:
	jmp	.label_614
.label_614:
	jmp	.label_731
.label_731:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_667
	test	byte ptr [rbp - 0x82], 1
	jne	.label_667
	jmp	.label_773
.label_773:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_674
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_674:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_680
.label_680:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_685
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_685:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_667:
	jmp	.label_693
.label_693:
	jmp	.label_694
.label_694:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_676
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_676:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_714
	mov	byte ptr [rbp - 0x7e], 0
.label_714:
	jmp	.label_707
.label_707:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_709
.label_765:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_713
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_713
	test	byte ptr [rbp - 0x7b], 1
	je	.label_713
	jmp	.label_611
.label_713:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_723
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_723
	test	byte ptr [rbp - 0x7d], 1
	je	.label_723
	test	byte ptr [rbp - 0x7e], 1
	je	.label_638
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
	jmp	.label_735
.label_638:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_737
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_737
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_740
.label_737:
	jmp	.label_715
.label_715:
	jmp	.label_723
.label_723:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_746
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_746
	jmp	.label_750
.label_750:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_752
	jmp	.label_632
.label_632:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_756
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_756:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_798
.label_798:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_750
.label_752:
	jmp	.label_746
.label_746:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_770
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_770:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_735
.label_611:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_777
	test	byte ptr [rbp - 0x79], 1
	je	.label_777
	mov	dword ptr [rbp - 0x34], 4
.label_777:
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
.label_735:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409fb0
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
	.align	32
	#Procedure 0x409ff0

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
	je	.label_803
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_804
.label_803:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_804
.label_804:
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
	je	.label_805
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_805:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a150
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_807:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_808
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_807
.label_808:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_809
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_810]],  rax
.label_809:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_806
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_806:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a230

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
	.align	32
	#Procedure 0x40a270

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
	jge	.label_811
	call	abort
.label_811:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_815
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_818
	call	xalloc_die
.label_818:
	test	byte ptr [rbp - 0x31], 1
	je	.label_814
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_817
.label_814:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_817:
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
	je	.label_816
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_810]]
	mov	qword ptr [rax + 8], rcx
.label_816:
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
.label_815:
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
	ja	.label_812
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_813
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_813:
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
.label_812:
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
	.align	32
	#Procedure 0x40a4f0

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
	.align	32
	#Procedure 0x40a530
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
	.align	32
	#Procedure 0x40a550
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
	.align	32
	#Procedure 0x40a580

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
	.align	32
	#Procedure 0x40a5c0

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
	jne	.label_819
	call	abort
.label_819:
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
	.align	32
	#Procedure 0x40a630

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
	.align	32
	#Procedure 0x40a670
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
	.align	32
	#Procedure 0x40a6a0
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
	.align	32
	#Procedure 0x40a6d0

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
	.align	32
	#Procedure 0x40a750

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
	.align	32
	#Procedure 0x40a780

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
	.align	32
	#Procedure 0x40a7a0
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
	.align	32
	#Procedure 0x40a7d0
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
	.align	32
	#Procedure 0x40a880

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
	.align	32
	#Procedure 0x40a8c0

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
	.align	32
	#Procedure 0x40a940
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
	.align	32
	#Procedure 0x40a970
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
	.align	32
	#Procedure 0x40a9b0

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
	.align	32
	#Procedure 0x40a9f0
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
	.align	32
	#Procedure 0x40aa20

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
	.align	32
	#Procedure 0x40aa50

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
	.align	32
	#Procedure 0x40aa70

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
	je	.label_821
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_823
.label_821:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_820
	movabs	rax, OFFSET FLAT:.str.15
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_823
.label_820:
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_822
	movabs	rax, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_823
.label_822:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_823:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab70

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aba0

	.globl readtoken
	.type readtoken, @function
readtoken:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	xor	eax, eax
	mov	r8d, 0x20
	mov	r9d, r8d
	lea	r10, [rbp - 0x70]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	mov	qword ptr [rbp - 0x40], 0
.label_826:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_834
	lea	rsi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x71], dl
	movzx	edi, byte ptr [rbp - 0x71]
	call	set_nth_bit
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_826
.label_834:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_836:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x34], 0
	mov	byte ptr [rbp - 0x72], cl
	jl	.label_837
	lea	rsi, [rbp - 0x70]
	movsxd	rdi, dword ptr [rbp - 0x34]
	call	get_nth_bit
	mov	byte ptr [rbp - 0x72], al
.label_837:
	mov	al, byte ptr [rbp - 0x72]
	test	al, 1
	jne	.label_825
	jmp	.label_829
.label_825:
	jmp	.label_832
.label_832:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_836
.label_829:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x40], 0
.label_838:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_827
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_827
	mov	qword ptr [rbp - 8], -1
	jmp	.label_824
.label_827:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_828
	lea	rsi, [rbp - 0x48]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x30]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x30], rax
.label_828:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_830
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_833
.label_830:
	lea	rsi, [rbp - 0x70]
	movsxd	rdi, dword ptr [rbp - 0x34]
	call	get_nth_bit
	test	al, 1
	jne	.label_835
	jmp	.label_831
.label_835:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_833
.label_831:
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	byte ptr [rsi + rdx], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_838
.label_833:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_824:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad80

	.globl set_nth_bit
	.type set_nth_bit, @function
set_nth_bit:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, 0x3f
	mov	rcx, rdi
	shl	rsi, cl
	mov	rdi, qword ptr [rbp - 8]
	shr	rdi, 6
	mov	rax, qword ptr [rbp - 0x10]
	or	rsi, qword ptr [rax + rdi*8]
	mov	qword ptr [rax + rdi*8], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40adc0

	.globl get_nth_bit
	.type get_nth_bit, @function
get_nth_bit:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	shr	rsi, 6
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, 0x3f
	mov	rcx, rdi
	shr	rsi, cl
	and	rsi, 1
	cmp	rsi, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae00
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_839
	mov	qword ptr [rbp - 0x10], 0x40
	jmp	.label_845
.label_839:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_845:
	mov	eax, 8
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	edx, 8
	mov	esi, edx
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x68], 0
	mov	rdi, qword ptr [rbp - 0x48]
	call	init_tokenbuffer
.label_842:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	call	readtoken
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_840
	lea	rsi, [rbp - 0x60]
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdi, rcx
	call	x2nrealloc
	mov	r8d, 8
	mov	edx, r8d
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	call	xnrealloc
	mov	qword ptr [rbp - 0x58], rax
.label_840:
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_843
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rax*8], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + rax*8], 0
	jmp	.label_846
.label_843:
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rdi, rcx
	call	xnmalloc
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x80], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rcx + rax*8], rdx
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_842
.label_846:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_841
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	jmp	.label_844
.label_841:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
.label_844:
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40afe0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_852:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	write
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_850
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_847
.label_850:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_849
	jmp	.label_852
.label_849:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_848
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_848
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_853
.label_848:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_847
.label_853:
	jmp	.label_851
.label_851:
	jmp	.label_854
.label_854:
	jmp	.label_852
.label_847:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b090

	.globl trim2
	.type trim2, @function
trim2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	call	strdup
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_878
	call	xalloc_die
.label_878:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_881
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_885
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rdi
	mov	rdi, r8
	mov	dword ptr [rbp - 0x84], esi
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0x98], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 0xc
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0x84]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_886:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x99], cl
	jae	.label_866
	lea	rdi, [rbp - 0x60]
	call	mbiter_multi_next
	xor	eax, eax
	mov	cl, al
	mov	dl, 1
	test	dl, 1
	mov	byte ptr [rbp - 0x99], cl
	jne	.label_870
	jmp	.label_866
.label_870:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x9a], cl
	je	.label_862
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x9a], cl
.label_862:
	mov	al, byte ptr [rbp - 0x9a]
	mov	byte ptr [rbp - 0x99], al
.label_866:
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	jne	.label_880
	jmp	.label_882
.label_880:
	jmp	.label_884
.label_884:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_886
.label_882:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0xb0], rsi
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rdx, rax
	call	memmove
.label_885:
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_855
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x60]
	mov	dword ptr [rbp - 0x64], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, r8
	mov	dword ptr [rbp - 0xbc], esi
	mov	qword ptr [rbp - 0xc8], rdx
	mov	qword ptr [rbp - 0xd0], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 0xc
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rdx, qword ptr [rbp - 0xc8]
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_888:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0xd1], cl
	jae	.label_877
	lea	rdi, [rbp - 0x60]
	call	mbiter_multi_next
	mov	al, 1
	mov	byte ptr [rbp - 0xd1], al
.label_877:
	mov	al, byte ptr [rbp - 0xd1]
	test	al, 1
	jne	.label_887
	jmp	.label_889
.label_887:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_890
	test	byte ptr [rbp - 0x38], 1
	je	.label_890
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_890
	jmp	.label_859
.label_890:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_861
	test	byte ptr [rbp - 0x38], 1
	je	.label_863
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	jne	.label_861
.label_863:
	mov	dword ptr [rbp - 0x64], 1
	jmp	.label_859
.label_861:
	cmp	dword ptr [rbp - 0x64], 1
	jne	.label_865
	test	byte ptr [rbp - 0x38], 1
	je	.label_879
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	jne	.label_865
.label_879:
	jmp	.label_859
.label_865:
	cmp	dword ptr [rbp - 0x64], 1
	jne	.label_869
	test	byte ptr [rbp - 0x38], 1
	je	.label_869
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_869
	mov	dword ptr [rbp - 0x64], 2
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_876
.label_869:
	cmp	dword ptr [rbp - 0x64], 2
	jne	.label_856
	test	byte ptr [rbp - 0x38], 1
	je	.label_856
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_856
	jmp	.label_883
.label_856:
	mov	dword ptr [rbp - 0x64], 1
.label_883:
	jmp	.label_876
.label_876:
	jmp	.label_859
.label_859:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_888
.label_889:
	cmp	dword ptr [rbp - 0x64], 2
	jne	.label_891
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0
.label_891:
	jmp	.label_855
.label_855:
	jmp	.label_858
.label_881:
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_860
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rax
.label_875:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xd2], cl
	je	.label_864
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0xe0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0xe0]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	setne	sil
	mov	byte ptr [rbp - 0xd2], sil
.label_864:
	mov	al, byte ptr [rbp - 0xd2]
	test	al, 1
	jne	.label_871
	jmp	.label_892
.label_871:
	jmp	.label_874
.label_874:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_875
.label_892:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0xf0], rsi
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, rax
	call	memmove
.label_860:
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_873
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xf8], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0xf8]
	add	rdi, rax
	add	rdi, -1
	mov	qword ptr [rbp - 0x78], rdi
.label_872:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0xf9], cl
	jb	.label_857
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x108], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x108]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	setne	sil
	mov	byte ptr [rbp - 0xf9], sil
.label_857:
	mov	al, byte ptr [rbp - 0xf9]
	test	al, 1
	jne	.label_868
	jmp	.label_867
.label_868:
	mov	rax, qword ptr [rbp - 0x78]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_872
.label_867:
	jmp	.label_873
.label_873:
	jmp	.label_858
.label_858:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b5a0

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
	je	.label_895
	movabs	rsi, OFFSET FLAT:.str_5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_897
.label_895:
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_897:
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
	mov	ecx, OFFSET FLAT:.str.3_0
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
	ja	.label_896
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_894]]
	jmp	rcx
.label_1330:
	jmp	.label_893
.label_1331:
	movabs	rdi, OFFSET FLAT:.str.4_0
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
	jmp	.label_893
.label_1332:
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
	jmp	.label_893
.label_1333:
	movabs	rdi, OFFSET FLAT:.str.6
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
	jmp	.label_893
.label_1334:
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
	jmp	.label_893
.label_1335:
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
	jmp	.label_893
.label_1336:
	movabs	rdi, OFFSET FLAT:.str.9
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
	jmp	.label_893
.label_1337:
	movabs	rdi, OFFSET FLAT:.str.10_1
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
	jmp	.label_893
.label_1338:
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
	jmp	.label_893
.label_1339:
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
	jmp	.label_893
.label_896:
	movabs	rdi, OFFSET FLAT:.str.13_1
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
.label_893:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bb60
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
.label_900:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_898
	jmp	.label_899
.label_899:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_900
.label_898:
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
	.align	32
	#Procedure 0x40bbd0

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
.label_901:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_905
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_903
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_902
.label_903:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_902:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_905:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_907
	jmp	.label_906
.label_907:
	jmp	.label_904
.label_904:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_901
.label_906:
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
	.align	32
	#Procedure 0x40bce0

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
	je	.label_908
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
.label_908:
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
	.align	32
	#Procedure 0x40be50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_1
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.15_0
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_0
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
	.align	32
	#Procedure 0x40bee0

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
	jae	.label_909
	call	xalloc_die
.label_909:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf30

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
	jne	.label_910
	cmp	qword ptr [rbp - 8], 0
	je	.label_910
	call	xalloc_die
.label_910:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bf70

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
	jae	.label_911
	call	xalloc_die
.label_911:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bfc0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_912
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_912
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_914
.label_912:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_913
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_913
	call	xalloc_die
.label_913:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_914:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c040

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
	jne	.label_915
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_918
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
.label_918:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_916
	call	xalloc_die
.label_916:
	jmp	.label_917
.label_915:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_919
	call	xalloc_die
.label_919:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_917:
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
	.align	32
	#Procedure 0x40c130

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
	.align	32
	#Procedure 0x40c150
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
	.align	32
	#Procedure 0x40c180
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
	.align	32
	#Procedure 0x40c1c0
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
	jb	.label_920
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_921
.label_920:
	call	xalloc_die
.label_921:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c220

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
	.align	32
	#Procedure 0x40c260
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
	.align	32
	#Procedure 0x40c2a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_3
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40c2e0
	.globl xmem_cd_iconv
	.type xmem_cd_iconv, @function
xmem_cd_iconv:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	call	mem_cd_iconv
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_922
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_922
	call	xalloc_die
.label_922:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c340
	.globl xstr_cd_iconv
	.type xstr_cd_iconv, @function
xstr_cd_iconv:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	str_cd_iconv
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_923
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_923
	call	xalloc_die
.label_923:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c390

	.globl xstr_iconv
	.type xstr_iconv, @function
xstr_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	str_iconv
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_924
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_924
	call	xalloc_die
.label_924:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c3f0

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
	jne	.label_925
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_925:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_926
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_926
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_926
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_927
.label_926:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_927:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c4a0

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
	jne	.label_928
	mov	dword ptr [rbp - 4], 0
	jmp	.label_932
.label_928:
	jmp	.label_929
.label_929:
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
	jne	.label_931
	jmp	.label_930
.label_931:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_929
.label_930:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_932:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c560

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
	jne	.label_933
	test	byte ptr [rbp - 0x13], 1
	je	.label_935
	test	byte ptr [rbp - 0x11], 1
	jne	.label_933
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_935
.label_933:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_936
	call	__errno_location
	mov	dword ptr [rax], 0
.label_936:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_934
.label_935:
	mov	dword ptr [rbp - 4], 0
.label_934:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c610

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
	je	.label_937
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_6
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_939
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_4
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_938
.label_939:
	mov	byte ptr [rbp - 5], 0
.label_938:
	jmp	.label_937
.label_937:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c690

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
	jne	.label_940
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_940:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_941
	movabs	rax, OFFSET FLAT:.str.1_5
	mov	qword ptr [rbp - 8], rax
.label_941:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c6f0

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0x14], 1
	je	.label_956
	jmp	.label_944
.label_956:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 8], 1
	je	.label_946
	jmp	.label_955
.label_946:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	jne	.label_957
	jmp	.label_950
.label_957:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x2c], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 1
	jmp	.label_954
.label_950:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_960
	jmp	.label_942
.label_960:
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0x8e
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_942:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 8], 1
.label_955:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	add	rax, 0x14
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0xc
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	call	rpl_mbrtowc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], -1
	jne	.label_959
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	jmp	.label_947
.label_959:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], -2
	jne	.label_953
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	jmp	.label_952
.label_953:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_951
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_948
	jmp	.label_945
.label_948:
	movabs	rdi, OFFSET FLAT:.str.2_3
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0xa9
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_945:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_958
	jmp	.label_943
.label_958:
	movabs	rdi, OFFSET FLAT:.str.3_1
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	edx, 0xaa
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbiter_multi_next
	call	__assert_fail
.label_943:
	jmp	.label_951
.label_951:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_949
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 8], 0
.label_949:
	jmp	.label_952
.label_952:
	jmp	.label_947
.label_947:
	jmp	.label_954
.label_954:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x14], 1
.label_944:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c950
	.globl mbiter_multi_reloc
	.type mbiter_multi_reloc, @function
mbiter_multi_reloc:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x18]
	mov	qword ptr [rdi + 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi]
	mov	qword ptr [rdi], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c980
	.globl mbiter_multi_copy
	.type mbiter_multi_copy, @function
mbiter_multi_copy:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	and	cl, 1
	mov	byte ptr [rsi + 8], cl
	test	al, 1
	jne	.label_961
	jmp	.label_962
.label_961:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xc]
	mov	qword ptr [rax + 0xc], rcx
	jmp	.label_963
.label_962:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0xc
	mov	rdi, rcx
	call	memset
.label_963:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rax + 0x14], cl
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rdi, rax
	mov	rsi, rdx
	call	mb_copy
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca20

	.globl mbsstr
	.type mbsstr, @function
mbsstr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x250
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_975
	lea	rax, [rbp - 0x58]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rdi
	mov	byte ptr [rbp - 0x58], 0
	mov	rdi, rax
	add	rdi, 4
	mov	qword ptr [rbp - 0x1e8], rax
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	r8b, cl
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x1e9], r8b
	je	.label_991
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x1e9], al
.label_991:
	mov	al, byte ptr [rbp - 0x1e9]
	xor	al, 0xff
	test	al, 1
	jne	.label_999
	jmp	.label_1003
.label_999:
	xor	eax, eax
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rbp - 0xf8]
	lea	rdi, [rbp - 0xb8]
	mov	byte ptr [rbp - 0x59], 1
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa8], r8
	mov	byte ptr [rbp - 0xb8], 0
	add	rdi, 4
	mov	qword ptr [rbp - 0x1f8], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x200], rdx
	mov	dword ptr [rbp - 0x204], eax
	call	memset
	mov	byte ptr [rbp - 0xac], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rdx
	mov	byte ptr [rbp - 0xf8], 0
	mov	rdx, qword ptr [rbp - 0x1f8]
	add	rdx, 4
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x204]
	mov	rdx, qword ptr [rbp - 0x200]
	call	memset
	mov	byte ptr [rbp - 0xec], 0
.label_967:
	lea	rdi, [rbp - 0xf8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd8], 1
	mov	byte ptr [rbp - 0x205], cl
	je	.label_988
	cmp	dword ptr [rbp - 0xd4], 0
	sete	al
	mov	byte ptr [rbp - 0x205], al
.label_988:
	mov	al, byte ptr [rbp - 0x205]
	xor	al, 0xff
	test	al, 1
	jne	.label_994
	mov	qword ptr [rbp - 8], 0
	jmp	.label_970
.label_994:
	test	byte ptr [rbp - 0x59], 1
	je	.label_965
	cmp	qword ptr [rbp - 0x68], 0xa
	jb	.label_965
	mov	rax, qword ptr [rbp - 0x70]
	imul	rcx, qword ptr [rbp - 0x68], 5
	cmp	rax, rcx
	jb	.label_965
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x100], rax
.label_983:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x100], 0
	mov	byte ptr [rbp - 0x206], cl
	jbe	.label_1009
	lea	rdi, [rbp - 0xb8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x98], 1
	mov	byte ptr [rbp - 0x207], cl
	je	.label_964
	cmp	dword ptr [rbp - 0x94], 0
	sete	al
	mov	byte ptr [rbp - 0x207], al
.label_964:
	mov	al, byte ptr [rbp - 0x207]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x206], al
.label_1009:
	mov	al, byte ptr [rbp - 0x206]
	test	al, 1
	jne	.label_976
	jmp	.label_981
.label_976:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	byte ptr [rbp - 0xac], 0
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, -1
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_983
.label_981:
	lea	rdi, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	dl, cl
	test	byte ptr [rbp - 0x98], 1
	mov	byte ptr [rbp - 0x208], dl
	je	.label_995
	cmp	dword ptr [rbp - 0x94], 0
	sete	al
	mov	byte ptr [rbp - 0x208], al
.label_995:
	mov	al, byte ptr [rbp - 0x208]
	xor	al, 0xff
	test	al, 1
	jne	.label_1004
	lea	rdx, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	knuth_morris_pratt_multibyte
	and	al, 1
	mov	byte ptr [rbp - 0x109], al
	test	byte ptr [rbp - 0x109], 1
	je	.label_989
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_970
.label_989:
	mov	byte ptr [rbp - 0x59], 0
.label_1004:
	jmp	.label_965
.label_965:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	test	byte ptr [rbp - 0xd8], 1
	je	.label_966
	test	byte ptr [rbp - 0x38], 1
	je	.label_966
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, dword ptr [rbp - 0x34]
	je	.label_977
	jmp	.label_982
.label_966:
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_982
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0xe0]
	call	memcmp
	cmp	eax, 0
	jne	.label_982
.label_977:
	lea	rax, [rbp - 0x190]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	ecx, 0x40
	mov	edi, ecx
	lea	r8, [rbp - 0xf8]
	lea	r9, [rbp - 0x150]
	mov	qword ptr [rbp - 0x210], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x214], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x220], rdx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x228], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rax
	mov	byte ptr [rbp - 0x144], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x190], 0
	mov	rax, qword ptr [rbp - 0x228]
	add	rax, 4
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0x214]
	mov	rdx, qword ptr [rbp - 0x220]
	call	memset
	mov	byte ptr [rbp - 0x184], 0
	mov	rdi, qword ptr [rbp - 0x228]
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	r10b, cl
	test	byte ptr [rbp - 0x170], 1
	mov	byte ptr [rbp - 0x229], r10b
	je	.label_980
	cmp	dword ptr [rbp - 0x16c], 0
	sete	al
	mov	byte ptr [rbp - 0x229], al
.label_980:
	mov	al, byte ptr [rbp - 0x229]
	xor	al, 0xff
	test	al, 1
	jne	.label_987
	call	abort
.label_987:
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x184], 0
.label_979:
	lea	rdi, [rbp - 0x190]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x170], 1
	mov	byte ptr [rbp - 0x22a], cl
	je	.label_998
	cmp	dword ptr [rbp - 0x16c], 0
	sete	al
	mov	byte ptr [rbp - 0x22a], al
.label_998:
	mov	al, byte ptr [rbp - 0x22a]
	xor	al, 0xff
	test	al, 1
	jne	.label_984
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_970
.label_984:
	lea	rdi, [rbp - 0x150]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x130], 1
	mov	byte ptr [rbp - 0x22b], cl
	je	.label_1010
	cmp	dword ptr [rbp - 0x12c], 0
	sete	al
	mov	byte ptr [rbp - 0x22b], al
.label_1010:
	mov	al, byte ptr [rbp - 0x22b]
	xor	al, 0xff
	test	al, 1
	jne	.label_968
	mov	qword ptr [rbp - 8], 0
	jmp	.label_970
.label_968:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	test	byte ptr [rbp - 0x130], 1
	je	.label_973
	test	byte ptr [rbp - 0x170], 1
	je	.label_973
	mov	eax, dword ptr [rbp - 0x12c]
	cmp	eax, dword ptr [rbp - 0x16c]
	je	.label_969
	jmp	.label_985
.label_973:
	mov	rax, qword ptr [rbp - 0x138]
	cmp	rax, qword ptr [rbp - 0x178]
	jne	.label_985
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memcmp
	cmp	eax, 0
	je	.label_969
.label_985:
	jmp	.label_1000
.label_969:
	jmp	.label_1002
.label_1002:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rax
	mov	byte ptr [rbp - 0x144], 0
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x184], 0
	jmp	.label_979
.label_1000:
	jmp	.label_982
.label_982:
	jmp	.label_1011
.label_1011:
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	byte ptr [rbp - 0xec], 0
	jmp	.label_967
.label_1003:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_970
.label_975:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_972
	mov	byte ptr [rbp - 0x191], 1
	mov	qword ptr [rbp - 0x1a0], 0
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x1b0], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x1b9], dl
.label_1007:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_992
	mov	qword ptr [rbp - 8], 0
	jmp	.label_970
.label_992:
	test	byte ptr [rbp - 0x191], 1
	je	.label_1001
	cmp	qword ptr [rbp - 0x1a0], 0xa
	jb	.label_1001
	mov	rax, qword ptr [rbp - 0x1a8]
	imul	rcx, qword ptr [rbp - 0x1a0], 5
	cmp	rax, rcx
	jb	.label_1001
	cmp	qword ptr [rbp - 0x1b8], 0
	je	.label_1008
	mov	rdi, qword ptr [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0x1a8]
	sub	rax, qword ptr [rbp - 0x1b0]
	mov	rsi, rax
	call	strnlen
	add	rax, qword ptr [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	rax, qword ptr [rbp - 0x1b8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1012
	mov	qword ptr [rbp - 0x1b8], 0
.label_1012:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x1b0], rax
.label_1008:
	cmp	qword ptr [rbp - 0x1b8], 0
	jne	.label_974
	lea	rcx, [rbp - 0x1c8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, -1
	mov	qword ptr [rbp - 0x238], rdi
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x240], rcx
	mov	qword ptr [rbp - 0x248], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x238]
	mov	rsi, qword ptr [rbp - 0x248]
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x240]
	call	knuth_morris_pratt
	and	al, 1
	mov	byte ptr [rbp - 0x1c9], al
	test	byte ptr [rbp - 0x1c9], 1
	je	.label_997
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_970
.label_997:
	mov	byte ptr [rbp - 0x191], 0
.label_974:
	jmp	.label_1001
.label_1001:
	mov	rax, qword ptr [rbp - 0x1a0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x1b9]
	cmp	ecx, edx
	jne	.label_1005
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1e0], rax
.label_996:
	mov	rax, qword ptr [rbp - 0x1e0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_971
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_970
.label_971:
	mov	rax, qword ptr [rbp - 0x1d8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_978
	mov	qword ptr [rbp - 8], 0
	jmp	.label_970
.label_978:
	mov	rax, qword ptr [rbp - 0x1a8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1d8]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x1e0]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	je	.label_986
	jmp	.label_993
.label_986:
	jmp	.label_990
.label_990:
	mov	rax, qword ptr [rbp - 0x1d8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_996
.label_993:
	jmp	.label_1005
.label_1005:
	jmp	.label_1006
.label_1006:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1007
.label_972:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_970:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x250
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d2f0

	.globl knuth_morris_pratt_multibyte
	.type knuth_morris_pratt_multibyte, @function
knuth_morris_pratt_multibyte:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	call	mbslen
	movabs	rdx, 0x249249249249249
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jae	.label_1016
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	jmp	.label_1024
.label_1016:
	imul	rax, qword ptr [rbp - 0x28], 0x38
	cmp	rax, 0xfa1
	jae	.label_1030
	mov	rax, qword ptr [rbp - 0x28]
	imul	rax, rax, 0x38
	add	rax, 0x2e
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	add	rcx, 0x1f
	and	rcx, 0xffffffffffffffe0
	mov	qword ptr [rbp - 0x148], rcx
	jmp	.label_1036
.label_1030:
	imul	rdi, qword ptr [rbp - 0x28], 0x38
	call	mmalloca
	mov	qword ptr [rbp - 0x148], rax
.label_1036:
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x140], rax
.label_1024:
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1019
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1026
.label_1019:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, qword ptr [rbp - 0x30]
	imul	r8, qword ptr [rbp - 0x28], 0x30
	add	rdi, r8
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x90], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rdi
	mov	byte ptr [rbp - 0x88], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x7c], 0
.label_1047:
	lea	rdi, [rbp - 0x88]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x68], 1
	mov	byte ptr [rbp - 0x149], cl
	je	.label_1022
	cmp	dword ptr [rbp - 0x64], 0
	sete	al
	mov	byte ptr [rbp - 0x149], al
.label_1022:
	mov	al, byte ptr [rbp - 0x149]
	xor	al, 0xff
	test	al, 1
	jne	.label_1031
	jmp	.label_1037
.label_1031:
	lea	rax, [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x90]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	rdi, rcx
	mov	rsi, rax
	call	mb_copy
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x7c], 0
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1047
.label_1037:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 1
	mov	qword ptr [rbp - 0xa0], 0
	mov	qword ptr [rbp - 0x98], 2
.label_1046:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1032
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax, 1
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa8], rax
.label_1043:
	mov	rax, qword ptr [rbp - 0xa8]
	test	byte ptr [rax + 0x10], 1
	je	.label_1042
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1042
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	cmp	ecx, dword ptr [rax + 0x14]
	je	.label_1041
	jmp	.label_1028
.label_1042:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0xa0]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1028
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rax + 8]
	call	memcmp
	cmp	eax, 0
	jne	.label_1028
.label_1041:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	add	rcx, 1
	mov	qword ptr [rbp - 0xa0], rcx
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1018
.label_1028:
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_1033
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1018
.label_1033:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1043
.label_1018:
	jmp	.label_1039
.label_1039:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1046
.label_1032:
	xor	eax, eax
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rbp - 0x130]
	lea	rdi, [rbp - 0xf0]
	mov	r8, qword ptr [rbp - 0x20]
	mov	qword ptr [r8], 0
	mov	qword ptr [rbp - 0xb0], 0
	mov	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe0], r8
	mov	byte ptr [rbp - 0xf0], 0
	add	rdi, 4
	mov	qword ptr [rbp - 0x158], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x160], rdx
	mov	dword ptr [rbp - 0x164], eax
	call	memset
	mov	byte ptr [rbp - 0xe4], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x120], rdx
	mov	byte ptr [rbp - 0x130], 0
	mov	rdx, qword ptr [rbp - 0x158]
	add	rdx, 4
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x164]
	mov	rdx, qword ptr [rbp - 0x160]
	call	memset
	mov	byte ptr [rbp - 0x124], 0
.label_1020:
	lea	rdi, [rbp - 0x130]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x110], 1
	mov	byte ptr [rbp - 0x165], cl
	je	.label_1038
	cmp	dword ptr [rbp - 0x10c], 0
	sete	al
	mov	byte ptr [rbp - 0x165], al
.label_1038:
	mov	al, byte ptr [rbp - 0x165]
	xor	al, 0xff
	test	al, 1
	jne	.label_1048
	jmp	.label_1015
.label_1048:
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1025
	test	byte ptr [rbp - 0x110], 1
	je	.label_1025
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x14]
	cmp	ecx, dword ptr [rbp - 0x10c]
	je	.label_1029
	jmp	.label_1021
.label_1025:
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x118]
	jne	.label_1021
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 8]
	call	memcmp
	cmp	eax, 0
	jne	.label_1021
.label_1029:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x120], rax
	mov	byte ptr [rbp - 0x124], 0
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1027
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_1015
.label_1027:
	jmp	.label_1013
.label_1021:
	cmp	qword ptr [rbp - 0xb0], 0
	jbe	.label_1045
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0xb0]
	sub	rcx, rax
	mov	qword ptr [rbp - 0xb0], rcx
.label_1017:
	cmp	qword ptr [rbp - 0x138], 0
	jbe	.label_1035
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd0], 1
	mov	byte ptr [rbp - 0x166], cl
	je	.label_1014
	cmp	dword ptr [rbp - 0xcc], 0
	sete	al
	mov	byte ptr [rbp - 0x166], al
.label_1014:
	mov	al, byte ptr [rbp - 0x166]
	xor	al, 0xff
	test	al, 1
	jne	.label_1044
	call	abort
.label_1044:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, -1
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_1017
.label_1035:
	jmp	.label_1034
.label_1045:
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd0], 1
	mov	byte ptr [rbp - 0x167], cl
	je	.label_1040
	cmp	dword ptr [rbp - 0xcc], 0
	sete	al
	mov	byte ptr [rbp - 0x167], al
.label_1040:
	mov	al, byte ptr [rbp - 0x167]
	xor	al, 0xff
	test	al, 1
	jne	.label_1023
	call	abort
.label_1023:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x120], rax
	mov	byte ptr [rbp - 0x124], 0
.label_1034:
	jmp	.label_1013
.label_1013:
	jmp	.label_1020
.label_1015:
	mov	rdi, qword ptr [rbp - 0x40]
	call	freea
	mov	byte ptr [rbp - 1], 1
.label_1026:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d980

	.globl knuth_morris_pratt
	.type knuth_morris_pratt, @function
knuth_morris_pratt:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	movabs	rax, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rcx
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1049
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_1053
.label_1049:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 3
	cmp	rax, 0xfa1
	jae	.label_1050
	mov	rax, qword ptr [rbp - 0x30]
	lea	rax, [rax*8 + 0x2e]
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	add	rcx, 0x1f
	and	rcx, 0xffffffffffffffe0
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_1057
.label_1050:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 3
	mov	rdi, rax
	call	mmalloca
	mov	qword ptr [rbp - 0x78], rax
.label_1057:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_1053:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1059
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1065
.label_1059:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 1
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x40], 2
.label_1064:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1051
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x49], dl
.label_1063:
	movzx	eax, byte ptr [rbp - 0x49]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	movzx	esi, byte ptr [rdx + rcx]
	cmp	eax, esi
	jne	.label_1068
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1054
.label_1068:
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1066
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1054
.label_1066:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1063
.label_1054:
	jmp	.label_1062
.label_1062:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1064
.label_1051:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
.label_1060:
	mov	rax, qword ptr [rbp - 0x68]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1061
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	movzx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x68]
	movzx	esi, byte ptr [rax]
	cmp	edx, esi
	jne	.label_1067
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1055
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	jmp	.label_1061
.label_1055:
	jmp	.label_1058
.label_1067:
	cmp	qword ptr [rbp - 0x58], 0
	jbe	.label_1052
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_1056
.label_1052:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
.label_1056:
	jmp	.label_1058
.label_1058:
	jmp	.label_1060
.label_1061:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	freea
	mov	byte ptr [rbp - 1], 1
.label_1065:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dc10

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xc], 1
	je	.label_1074
	jmp	.label_1080
.label_1074:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax], 1
	je	.label_1082
	jmp	.label_1086
.label_1082:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	jne	.label_1075
	jmp	.label_1069
.label_1075:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x24], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	jmp	.label_1070
.label_1069:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_1077
	jmp	.label_1078
.label_1077:
	movabs	rdi, OFFSET FLAT:.str_7
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0x96
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_1078:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 1
.label_1086:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	add	rax, 0x14
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdi
	call	__ctype_get_mb_cur_max
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	strnlen1
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], -1
	jne	.label_1079
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_1084
.label_1079:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], -2
	jne	.label_1076
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	call	strlen
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_1073
.label_1076:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_1071
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1072
	jmp	.label_1085
.label_1072:
	movabs	rdi, OFFSET FLAT:.str.2_3
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0xb2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_1085:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x24], 0
	jne	.label_1081
	jmp	.label_1083
.label_1081:
	movabs	rdi, OFFSET FLAT:.str.3_1
	movabs	rsi, OFFSET FLAT:.str.1_7
	mov	edx, 0xb3
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_1083:
	jmp	.label_1071
.label_1071:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_1087
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
.label_1087:
	jmp	.label_1073
.label_1073:
	jmp	.label_1084
.label_1084:
	jmp	.label_1070
.label_1070:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xc], 1
.label_1080:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de70
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x10]
	mov	qword ptr [rdi + 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de90
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	and	cl, 1
	mov	byte ptr [rsi], cl
	test	al, 1
	jne	.label_1088
	jmp	.label_1089
.label_1088:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 4]
	mov	qword ptr [rax + 4], rcx
	jmp	.label_1090
.label_1089:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, rcx
	call	memset
.label_1090:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rax + 0xc], cl
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x10
	mov	rdi, rax
	mov	rsi, rdx
	call	mb_copy
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df20

	.globl mem_cd_iconv
	.type mem_cd_iconv, @function
mem_cd_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10f0
	xor	eax, eax
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, r9
	mov	rdx, r9
	mov	rcx, r9
	mov	r8, r9
	call	iconv
	mov	qword ptr [rbp - 0x48], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1050], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1058], rcx
	mov	qword ptr [rbp - 0x10c8], rax
.label_1093:
	cmp	qword ptr [rbp - 0x1058], 0
	jbe	.label_1091
	lea	rsi, [rbp - 0x1050]
	lea	rdx, [rbp - 0x1058]
	lea	rcx, [rbp - 0x1060]
	lea	r8, [rbp - 0x1068]
	lea	rax, [rbp - 0x1048]
	mov	qword ptr [rbp - 0x1060], rax
	mov	qword ptr [rbp - 0x1068], 0x1000
	mov	rdi, qword ptr [rbp - 0x20]
	call	iconv
	mov	qword ptr [rbp - 0x1070], rax
	cmp	qword ptr [rbp - 0x1070], -1
	jne	.label_1102
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_1099
	jmp	.label_1107
.label_1099:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1103
	jmp	.label_1091
.label_1103:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1092
.label_1107:
	jmp	.label_1102
.label_1102:
	lea	rax, [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x1060]
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_1093
.label_1091:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x1078]
	lea	r8, [rbp - 0x1080]
	lea	rsi, [rbp - 0x1048]
	mov	qword ptr [rbp - 0x1078], rsi
	mov	qword ptr [rbp - 0x1080], 0x1000
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10d0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10d0]
	call	iconv
	mov	qword ptr [rbp - 0x1088], rax
	cmp	qword ptr [rbp - 0x1088], -1
	jne	.label_1106
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1092
.label_1106:
	lea	rax, [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x1078]
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1096
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1092
.label_1096:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1104
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x38]
	jb	.label_1104
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1100
.label_1104:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1095
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1092
.label_1095:
	jmp	.label_1100
.label_1100:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x10d8], rcx
	mov	r8, qword ptr [rbp - 0x10d8]
	call	iconv
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1090], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1098], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10a0], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10a8], rcx
	mov	qword ptr [rbp - 0x10e0], rax
.label_1108:
	cmp	qword ptr [rbp - 0x1098], 0
	jbe	.label_1094
	lea	rsi, [rbp - 0x1090]
	lea	rdx, [rbp - 0x1098]
	lea	rcx, [rbp - 0x10a0]
	lea	r8, [rbp - 0x10a8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	iconv
	mov	qword ptr [rbp - 0x10b0], rax
	cmp	qword ptr [rbp - 0x10b0], -1
	jne	.label_1109
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1105
	jmp	.label_1094
.label_1105:
	jmp	.label_1098
.label_1109:
	jmp	.label_1108
.label_1094:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x10a0]
	lea	r8, [rbp - 0x10a8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10e8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10e8]
	call	iconv
	mov	qword ptr [rbp - 0x10b8], rax
	cmp	qword ptr [rbp - 0x10b8], -1
	jne	.label_1097
	jmp	.label_1098
.label_1097:
	cmp	qword ptr [rbp - 0x10a8], 0
	je	.label_1101
	call	abort
.label_1101:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1092
.label_1098:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1110
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10bc], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	ecx, dword ptr [rbp - 0x10bc]
	mov	dword ptr [rbp - 0x10ec], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x10ec]
	mov	dword ptr [rax], ecx
.label_1110:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1092:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e2d0

	.globl str_cd_iconv
	.type str_cd_iconv, @function
str_cd_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	eax, 0xffffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xb0], rcx
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x48], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x48]
	shr	rsi, 4
	cmp	rcx, rsi
	ja	.label_1111
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	mov	qword ptr [rbp - 0x28], rax
.label_1111:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1126
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1118
.label_1126:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0xb8], rcx
	mov	r8, qword ptr [rbp - 0xb8]
	call	iconv
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0xc0], rax
.label_1120:
	lea	rsi, [rbp - 0x38]
	lea	rdx, [rbp - 0x40]
	lea	rcx, [rbp - 0x50]
	lea	r8, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x18]
	call	iconv
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_1125
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1129
	jmp	.label_1119
.label_1129:
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_1131
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_1134
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1113
.label_1134:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	call	realloc
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_1123
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1113
.label_1123:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	sub	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1130
.label_1131:
	jmp	.label_1113
.label_1130:
	jmp	.label_1115
.label_1115:
	jmp	.label_1117
.label_1125:
	jmp	.label_1119
.label_1117:
	jmp	.label_1120
.label_1119:
	jmp	.label_1121
.label_1121:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x50]
	lea	r8, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	call	iconv
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], -1
	jne	.label_1127
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_1112
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_1132
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1113
.label_1132:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x90]
	call	realloc
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_1124
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1113
.label_1124:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	sub	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1128
.label_1112:
	jmp	.label_1113
.label_1128:
	jmp	.label_1114
.label_1127:
	jmp	.label_1122
.label_1114:
	jmp	.label_1121
.label_1122:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x50], rcx
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1116
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	realloc
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_1133
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x20], rax
.label_1133:
	jmp	.label_1116
.label_1116:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1118
.label_1113:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa4], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	ecx, dword ptr [rbp - 0xa4]
	mov	dword ptr [rbp - 0xcc], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_1118:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e670

	.globl str_iconv
	.type str_iconv, @function
str_iconv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	je	.label_1141
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1139
.label_1141:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strdup
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1142
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1142:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1135
.label_1139:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	iconv_open
	mov	rsi, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], rsi
	jne	.label_1140
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1135
.label_1140:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	str_cd_iconv
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1137
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rdi, qword ptr [rbp - 0x30]
	call	iconv_close
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x44], eax
	mov	dword ptr [rbp - 0x48], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x48]
	mov	dword ptr [rax], ecx
	jmp	.label_1136
.label_1137:
	mov	rdi, qword ptr [rbp - 0x30]
	call	iconv_close
	cmp	eax, 0
	jge	.label_1138
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], ecx
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x4c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1135
.label_1138:
	jmp	.label_1136
.label_1136:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1135:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e7b0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	xor	esi, esi
	call	memchr
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1144
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1143
.label_1144:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_1143:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e810

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
	jge	.label_1148
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1145
.label_1148:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1149
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1147
.label_1149:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1147
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1147:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1146
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1146:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1145:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e8e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1150
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1151
.label_1150:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1152
.label_1151:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1152:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e940

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
	je	.label_1153
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1153:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e980

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
	jne	.label_1154
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1154
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1154
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1156
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1155
.label_1156:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1155
.label_1154:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1155:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea50

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
	ja	.label_1157
	jmp	.label_1159
.label_1159:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1158
.label_1157:
	jmp	.label_1158
.label_1158:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eaa0
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
	#Procedure 0x40eb10
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
	#Procedure 0x40eb60
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
	#Procedure 0x40eb90
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
	#Procedure 0x40ebc0
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
	#Procedure 0x40ec10
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
	#Procedure 0x40ec50
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
	#Procedure 0x40ec90
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
	#Procedure 0x40ecd0
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
	#Procedure 0x40ed10
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
	#Procedure 0x40ed90
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
	jne	.label_1196
	jmp	.label_1195
.label_1195:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1197
.label_1196:
	mov	byte ptr [rbp - 1], 0
.label_1197:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ede0
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
	#Procedure 0x40ee20
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
	#Procedure 0x40ee90

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
	#Procedure 0x40eed0
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
	#Procedure 0x40ef10

	.globl mmalloca
	.type mmalloca, @function
mmalloca:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 1
	add	rdi, 0x20
	sub	rdi, 1
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rdi, qword ptr [rbp - 0x10]
	jb	.label_1213
	mov	rdi, qword ptr [rbp - 0x18]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1215
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	add	rax, 0x10
	sub	rax, 1
	and	rax, 0xffffffffffffffe0
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	dl, al
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax - 1], dl
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1214
.label_1215:
	jmp	.label_1213
.label_1213:
	mov	qword ptr [rbp - 8], 0
.label_1214:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40efb0

	.globl freea
	.type freea, @function
freea:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, 0xf
	cmp	rdi, 0
	je	.label_1216
	call	abort
.label_1216:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_1217
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	movzx	eax, byte ptr [rsi - 1]
	movsxd	rsi, eax
	sub	rcx, rsi
	add	rdx, rcx
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
.label_1217:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f020
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	call	wcwidth
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	jl	.label_1219
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1218
.label_1219:
	mov	edi, dword ptr [rbp - 4]
	call	iswcntrl
	mov	edi, 1
	xor	ecx, ecx
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0xc], edi
.label_1218:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f070

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 0x18
	cmp	rsi, rdi
	jne	.label_1220
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x18
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	jmp	.label_1221
.label_1220:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_1221:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	sil, dl
	and	sil, 1
	mov	byte ptr [rax + 0x10], sil
	test	dl, 1
	jne	.label_1223
	jmp	.label_1222
.label_1223:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_1222:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f130

	.globl is_basic
	.type is_basic, @function
is_basic:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	edi, byte ptr [rbp - 1]
	sar	edi, 5
	movsxd	rcx, edi
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	movzx	edx, byte ptr [rbp - 1]
	and	edx, 0x1f
	mov	ecx, edx
	shr	edi, cl
	and	edi, 1
	cmp	edi, 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f170

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1224
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x58]
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rdi
	mov	byte ptr [rbp - 0x58], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_1227:
	lea	rdi, [rbp - 0x58]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x59], cl
	je	.label_1225
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_1225:
	mov	al, byte ptr [rbp - 0x59]
	xor	al, 0xff
	test	al, 1
	jne	.label_1229
	jmp	.label_1226
.label_1229:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_1227
.label_1226:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1228
.label_1224:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 8], rax
.label_1228:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
