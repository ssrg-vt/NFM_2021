	.section	.text
	.align	16
	#Procedure 0x4021f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_16
	jmp	.label_11
.label_11:
	movabs	rdi, OFFSET FLAT:label_12
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_17
.label_16:
	movabs	rdi, OFFSET FLAT:label_10
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_15
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x24], eax
	call	emit_ancillary_info
.label_17:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4022f0

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
.label_26:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_25
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_25:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_18
	jmp	.label_27
.label_18:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_26
.label_27:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_28
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_28:
	movabs	rdi, OFFSET FLAT:label_32
	call	gettext
	movabs	rsi, OFFSET FLAT:label_22
	movabs	rdx, OFFSET FLAT:label_23
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
	je	.label_29
	movabs	rsi, OFFSET FLAT:label_21
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_29
	movabs	rdi, OFFSET FLAT:label_30
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_29:
	movabs	rdi, OFFSET FLAT:label_24
	call	gettext
	movabs	rsi, OFFSET FLAT:label_23
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_31
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_19
	movabs	rsi, OFFSET FLAT:label_20
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
	#Procedure 0x402490

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
	movabs	rsi, OFFSET FLAT:label_19
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_37
	movabs	rsi, OFFSET FLAT:label_38
	mov	qword ptr [rbp - 0x28], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_37
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
.label_43:
	movabs	rdx, OFFSET FLAT:label_19
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_39
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x44], eax
	mov	dword ptr [rbp - 0x48], ecx
	je	.label_41
	jmp	.label_50
.label_50:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_49
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x50], eax
	jne	.label_33
	jmp	.label_42
.label_42:
	mov	byte ptr [byte ptr [dev_debug]],  1
	jmp	.label_45
.label_49:
	xor	edi, edi
	call	usage
.label_41:
	movabs	rdi, OFFSET FLAT:label_51
	movabs	rsi, OFFSET FLAT:label_52
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x58], rcx
	mov	qword ptr [rbp - 0x60], rax
	call	proper_name_utf8
	movabs	rdi, OFFSET FLAT:label_47
	movabs	rsi, OFFSET FLAT:label_48
	mov	qword ptr [rbp - 0x68], rax
	call	proper_name_utf8
	movabs	rsi, OFFSET FLAT:label_14
	movabs	rdx, OFFSET FLAT:label_22
	movabs	r8, OFFSET FLAT:label_36
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
.label_33:
	mov	edi, 1
	call	usage
.label_45:
	jmp	.label_43
.label_39:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_46
	call	do_stdin
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	jmp	.label_34
.label_46:
	mov	byte ptr [rbp - 0x15], 1
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 0x1c], eax
.label_54:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_40
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	print_factors
	test	al, 1
	jne	.label_44
	mov	byte ptr [rbp - 0x15], 0
.label_44:
	jmp	.label_53
.label_53:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_54
.label_40:
	jmp	.label_34
.label_34:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4026f0

	.globl lbuf_alloc
	.type lbuf_alloc, @function
lbuf_alloc:
	push	rbp
	mov	rbp, rsp
	cmp	qword ptr [word ptr [lbuf]],  0
	je	.label_55
	jmp	.label_56
.label_55:
	mov	eax, 0x400
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [word ptr [lbuf]],  rax
	mov	rax,  qword ptr [word ptr [lbuf]]
	mov	qword ptr [word ptr [label_57]],  rax
.label_56:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402730

	.globl lbuf_flush
	.type lbuf_flush, @function
lbuf_flush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 1
	mov	rax,  qword ptr [word ptr [label_57]]
	mov	rcx,  qword ptr [word ptr [lbuf]]
	sub	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsi,  qword ptr [word ptr [lbuf]]
	mov	rdx, qword ptr [rbp - 8]
	call	full_write
	cmp	rax, qword ptr [rbp - 8]
	je	.label_59
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_58
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_60
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_59:
	mov	rax,  qword ptr [word ptr [lbuf]]
	mov	qword ptr [word ptr [label_57]],  rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027c0

	.globl do_stdin
	.type do_stdin, @function
do_stdin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x18]
	mov	byte ptr [rbp - 1], 1
	call	init_tokenbuffer
.label_61:
	movabs	rsi, OFFSET FLAT:label_62
	mov	eax, 3
	mov	edx, eax
	lea	rcx, [rbp - 0x18]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	readtoken
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_64
	jmp	.label_63
.label_64:
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
	jmp	.label_61
.label_63:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402850

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
	je	.label_85
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x70], eax
	je	.label_73
	jmp	.label_76
.label_85:
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 1
	shr	rax, 1
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_77
	jmp	.label_84
.label_84:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_86
	movabs	rsi, OFFSET FLAT:label_70
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
.label_86:
	jmp	.label_79
.label_79:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_factors_single
	mov	byte ptr [rbp - 1], 1
	jmp	.label_72
.label_77:
	jmp	.label_65
.label_73:
	jmp	.label_65
.label_76:
	movabs	rdi, OFFSET FLAT:label_71
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
	jmp	.label_72
.label_65:
	jmp	.label_67
.label_67:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_69
	movabs	rsi, OFFSET FLAT:label_74
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
.label_69:
	jmp	.label_83
.label_83:
	mov	edx, 0xa
	lea	rdi, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	call	__gmpz_init_set_str
	movabs	rdi, OFFSET FLAT:label_82
	lea	rsi, [rbp - 0x40]
	mov	dword ptr [rbp - 0x88], eax
	mov	al, 0
	call	__gmp_printf
	lea	rsi, [rbp - 0x58]
	lea	rdi, [rbp - 0x40]
	mov	dword ptr [rbp - 0x8c], eax
	call	mp_factor
	mov	dword ptr [rbp - 0x5c], 0
.label_81:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	jae	.label_66
	mov	dword ptr [rbp - 0x60], 0
.label_80:
	mov	eax, dword ptr [rbp - 0x60]
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x5c]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x50]
	cmp	rcx, qword ptr [rsi + rdx*8]
	jae	.label_75
	movabs	rdi, OFFSET FLAT:label_87
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
	jmp	.label_80
.label_75:
	jmp	.label_78
.label_78:
	mov	eax, dword ptr [rbp - 0x5c]
	add	eax, 1
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_81
.label_66:
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
.label_72:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a90

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
.label_88:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movsx	edx, byte ptr [rbp - 0x35]
	cmp	edx, 0x20
	jne	.label_100
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_90
.label_100:
	movsx	eax, byte ptr [rbp - 0x35]
	cmp	eax, 0x2b
	jne	.label_95
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_98
.label_95:
	jmp	.label_98
.label_90:
	jmp	.label_88
.label_98:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_97:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x44], edx
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_91
	jmp	.label_93
.label_91:
	mov	eax, dword ptr [rbp - 0x44]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	xor	cl, 0xff
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_99
	mov	dword ptr [rbp - 0x34], 4
	jmp	.label_93
.label_99:
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_97
.label_93:
	jmp	.label_92
.label_92:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_89
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x48], edx
	cmp	dword ptr [rbp - 0x48], 0
	jne	.label_101
	jmp	.label_89
.label_101:
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
	je	.label_96
	mov	dword ptr [rbp - 0x34], 1
	jmp	.label_89
.label_96:
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
	je	.label_94
	mov	dword ptr [rbp - 0x34], 1
	jmp	.label_89
.label_94:
	jmp	.label_92
.label_89:
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
	.align	16
	#Procedure 0x402cb0

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
.label_103:
	mov	eax, dword ptr [rbp - 0x114]
	movzx	ecx, byte ptr [rbp - 0x16]
	cmp	eax, ecx
	jae	.label_105
	mov	dword ptr [rbp - 0x118], 0
.label_106:
	mov	eax, dword ptr [rbp - 0x118]
	mov	ecx, dword ptr [rbp - 0x114]
	mov	edx, ecx
	movzx	ecx, byte ptr [rbp + rdx - 0x30]
	cmp	eax, ecx
	jae	.label_104
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
	jmp	.label_106
.label_104:
	jmp	.label_102
.label_102:
	mov	eax, dword ptr [rbp - 0x114]
	add	eax, 1
	mov	dword ptr [rbp - 0x114], eax
	jmp	.label_103
.label_105:
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_107
	mov	edi, 0x20
	call	lbuf_putc
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x110]
	call	print_uintmaxes
.label_107:
	mov	edi, 0xa
	call	lbuf_putc
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402dc0

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
	jge	.label_111
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_112
.label_111:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 4], 0
	setg	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x14], edx
.label_112:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, 0
	je	.label_108
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mp_factor_using_division
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_114
	jmp	.label_116
.label_116:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_117
	movabs	rsi, OFFSET FLAT:label_109
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x18], eax
.label_117:
	jmp	.label_113
.label_113:
	mov	rdi, qword ptr [rbp - 8]
	call	mp_prime_p
	test	al, 1
	jne	.label_115
	jmp	.label_118
.label_115:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	call	mp_factor_insert
	jmp	.label_110
.label_118:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	mp_factor_using_pollard_rho
.label_110:
	jmp	.label_114
.label_114:
	jmp	.label_108
.label_108:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ec0

	.globl mp_factor_clear
	.type mp_factor_clear, @function
mp_factor_clear:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
.label_120:
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_119
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
	jmp	.label_120
.label_119:
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
	.align	16
	#Procedure 0x402f40

	.globl print_uintmaxes
	.type print_uintmaxes, @function
print_uintmaxes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_121
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	lbuf_putint
	jmp	.label_127
.label_121:
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
	jae	.label_128
	jmp	.label_133
.label_128:
	movabs	rdi, OFFSET FLAT:label_122
	movabs	rsi, OFFSET FLAT:label_123
	mov	edx, 0x99c
	movabs	rcx, OFFSET FLAT:label_124
	call	__assert_fail
.label_133:
	mov	qword ptr [rbp - 0x28], 0x3b9aca00
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x38], 0
	mov	dword ptr [rbp - 0x4c], 0x40
.label_130:
	cmp	dword ptr [rbp - 0x4c], 0
	jbe	.label_132
	jmp	.label_125
.label_125:
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
	ja	.label_131
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_126
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_126
.label_131:
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
.label_126:
	jmp	.label_129
.label_129:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, -1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_130
.label_132:
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
.label_127:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030e0

	.globl lbuf_putc
	.type lbuf_putc, @function
lbuf_putc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	mov	rcx,  qword ptr [word ptr [label_57]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [label_57]],  rdx
	mov	byte ptr [rcx], al
	movsx	edi, byte ptr [rbp - 1]
	cmp	edi, 0xa
	jne	.label_134
	mov	rax,  qword ptr [word ptr [label_57]]
	mov	rcx,  qword ptr [word ptr [lbuf]]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
	cmp	dword ptr [dword ptr [lbuf_putc.line_buffered]],  -1
	jne	.label_139
	xor	edi, edi
	call	isatty
	mov	dword ptr [dword ptr [lbuf_putc.line_buffered]],  eax
.label_139:
	cmp	dword ptr [dword ptr [lbuf_putc.line_buffered]],  0
	je	.label_137
	call	lbuf_flush
	jmp	.label_136
.label_137:
	cmp	qword ptr [rbp - 0x10], 0x200
	jb	.label_135
	mov	rax,  qword ptr [word ptr [label_57]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [lbuf]]
	add	rax, 0x200
	mov	qword ptr [rbp - 0x20], rax
.label_140:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0xa
	je	.label_138
	jmp	.label_140
.label_138:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [label_57]],  rax
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
	mov	qword ptr [word ptr [label_57]],  rax
.label_135:
	jmp	.label_136
.label_136:
	jmp	.label_134
.label_134:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403220

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
	jne	.label_141
	cmp	qword ptr [rbp - 0x10], 2
	jae	.label_141
	jmp	.label_142
.label_141:
	lea	rdi, [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	factor_using_division
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_145
	cmp	qword ptr [rbp - 0x10], 2
	jae	.label_145
	jmp	.label_142
.label_145:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	prime2_p
	test	al, 1
	jne	.label_143
	jmp	.label_146
.label_143:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	factor_insert_large
	jmp	.label_142
.label_146:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_147
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	factor_using_pollard_rho
	jmp	.label_144
.label_147:
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	factor_using_pollard_rho2
.label_144:
	jmp	.label_142
.label_142:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403320

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
.label_148:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_149
	mov	rax,  qword ptr [word ptr [label_57]]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [word ptr [label_57]],  rcx
	mov	byte ptr [rax], 0x30
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_148
.label_149:
	mov	rdi,  qword ptr [word ptr [label_57]]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x40]
	add	rdx,  qword ptr [word ptr [label_57]]
	mov	qword ptr [word ptr [label_57]],  rdx
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033e0

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
	jne	.label_198
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_157
	jmp	.label_164
.label_164:
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
	jmp	.label_169
.label_157:
	jmp	.label_190
.label_190:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	bsf	rcx, qword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x24], ecx
	jmp	.label_191
.label_191:
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
	jmp	.label_169
.label_169:
	mov	eax, 2
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	call	factor_insert_multiplicity
.label_198:
	mov	qword ptr [rbp - 0x30], 3
	mov	dword ptr [rbp - 0x34], 0
.label_203:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x89], cl
	jbe	.label_193
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	cmp	rcx, 0x29c
	setb	dl
	mov	byte ptr [rbp - 0x89], dl
.label_193:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_152
	jmp	.label_159
.label_152:
	jmp	.label_163
.label_163:
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
	jbe	.label_167
	jmp	.label_185
.label_167:
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
	je	.label_200
	jmp	.label_185
.label_200:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	factor_insert_multiplicity
	jmp	.label_163
.label_185:
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
	jmp	.label_203
.label_159:
	cmp	qword ptr [rbp - 8], 0
	je	.label_168
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_168:
	jmp	.label_162
.label_162:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_179
	movabs	rax, OFFSET FLAT:primes_dtab
	mov	ecx, dword ptr [rbp - 0x34]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_187
.label_187:
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
	je	.label_202
	jmp	.label_166
.label_202:
	xor	ecx, ecx
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_187
.label_166:
	jmp	.label_183
.label_183:
	jmp	.label_172
.label_172:
	jmp	.label_173
.label_173:
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
	je	.label_189
	jmp	.label_160
.label_189:
	mov	ecx, 1
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_173
.label_160:
	jmp	.label_174
.label_174:
	jmp	.label_176
.label_176:
	jmp	.label_161
.label_161:
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
	je	.label_182
	jmp	.label_201
.label_182:
	mov	ecx, 2
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_161
.label_201:
	jmp	.label_165
.label_165:
	jmp	.label_170
.label_170:
	jmp	.label_150
.label_150:
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
	je	.label_204
	jmp	.label_194
.label_204:
	mov	ecx, 3
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_150
.label_194:
	jmp	.label_195
.label_195:
	jmp	.label_155
.label_155:
	jmp	.label_158
.label_158:
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
	je	.label_207
	jmp	.label_186
.label_207:
	mov	ecx, 4
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_158
.label_186:
	jmp	.label_153
.label_153:
	jmp	.label_205
.label_205:
	jmp	.label_192
.label_192:
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
	je	.label_151
	jmp	.label_177
.label_151:
	mov	ecx, 5
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_192
.label_177:
	jmp	.label_196
.label_196:
	jmp	.label_199
.label_199:
	jmp	.label_184
.label_184:
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
	je	.label_154
	jmp	.label_181
.label_154:
	mov	ecx, 6
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_184
.label_181:
	jmp	.label_197
.label_197:
	jmp	.label_188
.label_188:
	jmp	.label_175
.label_175:
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
	je	.label_171
	jmp	.label_156
.label_171:
	mov	ecx, 7
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, 1
	call	factor_insert_refind
	jmp	.label_175
.label_156:
	jmp	.label_178
.label_178:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff8]]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	jbe	.label_180
	jmp	.label_179
.label_180:
	jmp	.label_206
.label_206:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 8
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_162
.label_179:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a10

	.globl prime2_p
	.type prime2_p, @function
prime2_p:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2b0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_213
	mov	rdi, qword ptr [rbp - 0x18]
	call	prime_p
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_226
.label_213:
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
	jne	.label_230
	jmp	.label_253
.label_253:
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
	jmp	.label_240
.label_230:
	jmp	.label_227
.label_227:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x250], rax
	bsf	rcx, qword ptr [rbp - 0x250]
	mov	dword ptr [rbp - 0x7c], ecx
	jmp	.label_228
.label_228:
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
	jmp	.label_240
.label_240:
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
	jmp	.label_220
.label_220:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_247
	mov	qword ptr [rbp - 0x1a0], 1
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x1b0], 0x40
	jmp	.label_256
.label_247:
	mov	qword ptr [rbp - 0x1a0], 0
	mov	qword ptr [rbp - 0x1a8], 1
	mov	qword ptr [rbp - 0x1b0], 0x80
.label_256:
	jmp	.label_211
.label_211:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x1b0], rcx
	cmp	rax, 0
	jbe	.label_235
	jmp	.label_244
.label_244:
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
	ja	.label_248
	mov	rax, qword ptr [rbp - 0x1a0]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_223
	mov	rax, qword ptr [rbp - 0x1a8]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_223
.label_248:
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
.label_223:
	jmp	.label_211
.label_235:
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_215
.label_215:
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
	ja	.label_224
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_251
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_251
.label_224:
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
.label_251:
	jmp	.label_214
.label_214:
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
	jne	.label_250
	mov	byte ptr [rbp - 1], 0
	jmp	.label_226
.label_250:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_210
	lea	rdx, [rbp - 0x180]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	call	factor
.label_210:
	mov	dword ptr [rbp - 0x1b4], 0
.label_212:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_225
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_234
	mov	byte ptr [rbp - 0x1b5], 1
	cmp	qword ptr [rbp - 0x178], 0
	je	.label_252
	jmp	.label_246
.label_246:
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
	jne	.label_254
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x58]
	setne	cl
	mov	byte ptr [rbp - 0x2a9], cl
.label_254:
	mov	al, byte ptr [rbp - 0x2a9]
	and	al, 1
	mov	byte ptr [rbp - 0x1b5], al
.label_252:
	mov	dword ptr [rbp - 0x1fc], 0
.label_241:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1fc]
	movzx	edx, byte ptr [rbp - 0x86]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x2aa], cl
	jae	.label_232
	mov	al, byte ptr [rbp - 0x1b5]
	mov	byte ptr [rbp - 0x2aa], al
.label_232:
	mov	al, byte ptr [rbp - 0x2aa]
	test	al, 1
	jne	.label_249
	jmp	.label_257
.label_249:
	mov	eax, dword ptr [rbp - 0x1fc]
	mov	ecx, eax
	cmp	qword ptr [rbp + rcx*8 - 0x170], 2
	jne	.label_209
	jmp	.label_217
.label_217:
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x40]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rax, qword ptr [rbp - 0x38]
	shr	rax, 1
	mov	qword ptr [rbp - 0x1c8], rax
	jmp	.label_219
.label_209:
	jmp	.label_237
.label_237:
	jmp	.label_243
.label_243:
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
	jb	.label_259
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
	jmp	.label_242
.label_259:
	mov	rax, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	qword ptr [rbp - 0x1c8], 0
.label_242:
	jmp	.label_218
.label_218:
	jmp	.label_219
.label_219:
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
	jne	.label_255
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x58]
	setne	cl
	mov	byte ptr [rbp - 0x2ab], cl
.label_255:
	mov	al, byte ptr [rbp - 0x2ab]
	and	al, 1
	mov	byte ptr [rbp - 0x1b5], al
	mov	eax, dword ptr [rbp - 0x1fc]
	add	eax, 1
	mov	dword ptr [rbp - 0x1fc], eax
	jmp	.label_241
.label_257:
	jmp	.label_238
.label_234:
	cmp	dword ptr [rbp - 0x1b4], 0x18
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x1b5], al
.label_238:
	test	byte ptr [rbp - 0x1b5], 1
	je	.label_245
	mov	byte ptr [rbp - 1], 1
	jmp	.label_226
.label_245:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	ecx, eax
	movzx	eax,  byte ptr [byte ptr [+ (rcx * 1) + primes_diff]]
	mov	ecx, eax
	add	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x188], rcx
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_258
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x238], rax
	mov	qword ptr [rbp - 0x240], 0
	mov	qword ptr [rbp - 0x248], 0x40
	jmp	.label_216
.label_258:
	mov	qword ptr [rbp - 0x238], 0
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0x240], rax
	mov	qword ptr [rbp - 0x248], 0x80
.label_216:
	jmp	.label_236
.label_236:
	mov	rax, qword ptr [rbp - 0x248]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x248], rcx
	cmp	rax, 0
	jbe	.label_208
	jmp	.label_229
.label_229:
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
	ja	.label_221
	mov	rax, qword ptr [rbp - 0x238]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_239
	mov	rax, qword ptr [rbp - 0x240]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_239
.label_221:
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
.label_239:
	jmp	.label_236
.label_208:
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
	jne	.label_233
	mov	byte ptr [rbp - 1], 0
	jmp	.label_226
.label_233:
	jmp	.label_231
.label_231:
	mov	eax, dword ptr [rbp - 0x1b4]
	add	eax, 1
	mov	dword ptr [rbp - 0x1b4], eax
	jmp	.label_212
.label_225:
	movabs	rdi, OFFSET FLAT:label_222
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_226:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x2b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404460

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
	jbe	.label_260
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	jne	.label_265
	jmp	.label_264
.label_265:
	movabs	rdi, OFFSET FLAT:label_261
	movabs	rsi, OFFSET FLAT:label_123
	mov	edx, 0x235
	movabs	rcx, OFFSET FLAT:label_262
	call	__assert_fail
.label_264:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_263
.label_260:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	factor_insert_multiplicity
.label_263:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044f0

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
	jmp	.label_298
.label_298:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 8]
	jae	.label_276
	jmp	.label_283
.label_276:
	movabs	rdi, OFFSET FLAT:label_270
	movabs	rsi, OFFSET FLAT:label_123
	mov	edx, 0x5c2
	movabs	rcx, OFFSET FLAT:label_271
	call	__assert_fail
.label_283:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x88], 1
	mov	qword ptr [rbp - 0x90], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	dword ptr [rbp - 0x94], 0x40
.label_291:
	cmp	dword ptr [rbp - 0x94], 0
	jbe	.label_274
	jmp	.label_277
.label_277:
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
	ja	.label_279
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x70]
	jne	.label_294
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x78]
	jb	.label_294
.label_279:
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
.label_294:
	jmp	.label_289
.label_289:
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, -1
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_291
.label_274:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_297
.label_297:
	jmp	.label_267
.label_267:
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
.label_269:
	cmp	qword ptr [rbp - 8], 1
	je	.label_281
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_296
	jmp	.label_287
.label_296:
	movabs	rdi, OFFSET FLAT:label_301
	movabs	rsi, OFFSET FLAT:label_123
	mov	edx, 0x5c8
	movabs	rcx, OFFSET FLAT:label_271
	call	__assert_fail
.label_287:
	jmp	.label_300
.label_300:
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
	jmp	.label_282
.label_282:
	jmp	.label_295
.label_295:
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
	jmp	.label_266
.label_266:
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
	jne	.label_280
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	call	gcd_odd
	cmp	rax, 1
	je	.label_286
	jmp	.label_290
.label_286:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_280:
	jmp	.label_293
.label_293:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, -1
	mov	qword ptr [rbp - 0x58], rax
	cmp	rax, 0
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	shl	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0xc8], 0
.label_275:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_278
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
	jmp	.label_285
.label_285:
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_275
.label_278:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_282
.label_290:
	jmp	.label_272
.label_272:
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
	jmp	.label_292
.label_292:
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
	je	.label_272
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_268
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_281
.label_268:
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 0x50]
	call	prime_p
	test	al, 1
	jne	.label_284
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_299
.label_284:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x50]
	call	factor_insert_multiplicity
.label_299:
	mov	rdi, qword ptr [rbp - 8]
	call	prime_p
	test	al, 1
	jne	.label_288
	jmp	.label_273
.label_288:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	factor_insert_multiplicity
	jmp	.label_281
.label_273:
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
	jmp	.label_269
.label_281:
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b70

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
	jae	.label_338
	mov	qword ptr [rbp - 0xa8], 1
	mov	qword ptr [rbp - 0xb0], 0
	mov	qword ptr [rbp - 0xb8], 0x40
	jmp	.label_342
.label_338:
	mov	qword ptr [rbp - 0xa8], 0
	mov	qword ptr [rbp - 0xb0], 1
	mov	qword ptr [rbp - 0xb8], 0x80
.label_342:
	jmp	.label_351
.label_351:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xb8], rcx
	cmp	rax, 0
	jbe	.label_362
	jmp	.label_307
.label_307:
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
	ja	.label_309
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_324
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_324
.label_309:
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
.label_324:
	jmp	.label_351
.label_362:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_353
.label_353:
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
	ja	.label_358
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_310
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_310
.label_358:
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
.label_310:
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], rax
.label_328:
	mov	al, 1
	cmp	qword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0x1d9], al
	jne	.label_336
	cmp	qword ptr [rbp - 0x10], 1
	setne	al
	mov	byte ptr [rbp - 0x1d9], al
.label_336:
	mov	al, byte ptr [rbp - 0x1d9]
	test	al, 1
	jne	.label_345
	jmp	.label_308
.label_345:
	jmp	.label_352
.label_352:
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
	jmp	.label_354
.label_354:
	jmp	.label_331
.label_331:
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
	ja	.label_350
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_303
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_303
.label_350:
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
.label_303:
	jmp	.label_317
.label_317:
	jmp	.label_319
.label_319:
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
	jge	.label_322
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
.label_322:
	jmp	.label_355
.label_355:
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
	jne	.label_304
	lea	rdi, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	call	gcd2_odd
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_315
	cmp	qword ptr [rbp - 0x88], 1
	je	.label_318
.label_315:
	jmp	.label_325
.label_318:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
.label_304:
	jmp	.label_359
.label_359:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
	cmp	rax, 0
	jne	.label_331
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
.label_347:
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x98]
	jae	.label_356
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
	ja	.label_361
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_321
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_321
.label_361:
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
.label_321:
	jmp	.label_341
.label_341:
	jmp	.label_344
.label_344:
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_347
.label_356:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_354
.label_325:
	jmp	.label_327
.label_327:
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
	ja	.label_306
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_320
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_320
.label_306:
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
.label_320:
	jmp	.label_340
.label_340:
	jmp	.label_343
.label_343:
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
	jge	.label_346
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
.label_346:
	jmp	.label_311
.label_311:
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
	jne	.label_316
	cmp	qword ptr [rbp - 0x88], 1
	sete	al
	mov	byte ptr [rbp - 0x1da], al
.label_316:
	mov	al, byte ptr [rbp - 0x1da]
	test	al, 1
	jne	.label_327
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_332
	jmp	.label_334
.label_334:
	jmp	.label_335
.label_335:
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
	jb	.label_337
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
	jmp	.label_330
.label_337:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], 0
.label_330:
	jmp	.label_357
.label_357:
	mov	rdi, qword ptr [rbp - 0x88]
	call	prime_p
	test	al, 1
	jne	.label_360
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	factor_using_pollard_rho
	jmp	.label_305
.label_360:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x88]
	call	factor_insert_multiplicity
.label_305:
	jmp	.label_312
.label_332:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_313
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x88]
	jne	.label_313
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, rax
	call	factor_using_pollard_rho2
	jmp	.label_308
.label_313:
	jmp	.label_326
.label_326:
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
	jne	.label_323
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, rax
	call	factor_using_pollard_rho2
	jmp	.label_333
.label_323:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x88]
	call	factor_insert_large
.label_333:
	jmp	.label_312
.label_312:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_339
	mov	rdi, qword ptr [rbp - 0x10]
	call	prime_p
	test	al, 1
	jne	.label_348
	jmp	.label_349
.label_348:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	factor_insert_multiplicity
	jmp	.label_308
.label_349:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	factor_using_pollard_rho
	jmp	.label_308
.label_339:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	prime2_p
	test	al, 1
	jne	.label_302
	jmp	.label_314
.label_302:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	factor_insert_large
	jmp	.label_308
.label_314:
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
	jmp	.label_328
.label_308:
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405790

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
.label_363:
	cmp	dword ptr [rbp - 0x2c], 0
	jl	.label_365
	movsxd	rax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_370
	jmp	.label_365
.label_370:
	jmp	.label_368
.label_368:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, -1
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_363
.label_365:
	cmp	dword ptr [rbp - 0x2c], 0
	jl	.label_369
	movsxd	rax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_367
.label_369:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 1
	mov	dword ptr [rbp - 0x30], eax
.label_371:
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax, dword ptr [rbp - 0x2c]
	jle	.label_366
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
	jmp	.label_371
.label_366:
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
	jmp	.label_364
.label_367:
	mov	eax, dword ptr [rbp - 0x14]
	movsxd	rcx, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	esi, byte ptr [rdx + rcx]
	add	esi, eax
	mov	dil, sil
	mov	byte ptr [rdx + rcx], dil
.label_364:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058f0

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
.label_372:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 0x18]
	jae	.label_373
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
	jmp	.label_372
.label_373:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	factor_insert_multiplicity
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405960

	.globl prime_p
	.type prime_p, @function
prime_p:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x220
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 1
	ja	.label_408
	mov	byte ptr [rbp - 1], 0
	jmp	.label_381
.label_408:
	cmp	qword ptr [rbp - 0x10], 0x17ded79
	jae	.label_374
	mov	byte ptr [rbp - 1], 1
	jmp	.label_381
.label_374:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	qword ptr [rbp - 0x138], rax
	mov	dword ptr [rbp - 0x14], 0
.label_399:
	mov	rax, qword ptr [rbp - 0x138]
	and	rax, 1
	cmp	rax, 0
	jne	.label_392
	mov	rax, qword ptr [rbp - 0x138]
	shr	rax, 1
	mov	qword ptr [rbp - 0x138], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_399
.label_392:
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
	jmp	.label_410
.label_410:
	jmp	.label_383
.label_383:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_394
	jmp	.label_386
.label_394:
	movabs	rdi, OFFSET FLAT:label_270
	movabs	rsi, OFFSET FLAT:label_123
	mov	edx, 0x4c4
	movabs	rcx, OFFSET FLAT:label_401
	call	__assert_fail
.label_386:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x160], rax
	mov	qword ptr [rbp - 0x168], 0
	mov	qword ptr [rbp - 0x178], 1
	mov	qword ptr [rbp - 0x180], 0
	mov	qword ptr [rbp - 0x170], 0
	mov	dword ptr [rbp - 0x184], 0x40
.label_388:
	cmp	dword ptr [rbp - 0x184], 0
	jbe	.label_393
	jmp	.label_397
.label_397:
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
	ja	.label_415
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0x160]
	jne	.label_391
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0x168]
	jb	.label_391
.label_415:
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
.label_391:
	jmp	.label_385
.label_385:
	mov	eax, dword ptr [rbp - 0x184]
	add	eax, -1
	mov	dword ptr [rbp - 0x184], eax
	jmp	.label_388
.label_393:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_395
.label_395:
	jmp	.label_405
.label_405:
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
	jne	.label_398
	mov	byte ptr [rbp - 1], 0
	jmp	.label_381
.label_398:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_404
	xor	eax, eax
	mov	edi, eax
	lea	rdx, [rbp - 0x130]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, 1
	mov	rsi, rcx
	call	factor
.label_404:
	mov	dword ptr [rbp - 0x194], 0
.label_387:
	mov	eax, dword ptr [rbp - 0x194]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_376
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_384
	mov	byte ptr [rbp - 0x15], 1
	mov	dword ptr [rbp - 0x198], 0
.label_403:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x198]
	movzx	edx, byte ptr [rbp - 0x36]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x209], cl
	jae	.label_396
	mov	al, byte ptr [rbp - 0x15]
	mov	byte ptr [rbp - 0x209], al
.label_396:
	mov	al, byte ptr [rbp - 0x209]
	test	al, 1
	jne	.label_407
	jmp	.label_412
.label_407:
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
	jmp	.label_403
.label_412:
	jmp	.label_406
.label_384:
	cmp	dword ptr [rbp - 0x194], 0x18
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
.label_406:
	test	byte ptr [rbp - 0x15], 1
	je	.label_414
	mov	byte ptr [rbp - 1], 1
	jmp	.label_381
.label_414:
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
	je	.label_382
	mov	rax, qword ptr [rbp - 0x1a8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdx
	jmp	.label_413
.label_382:
	jmp	.label_375
.label_375:
	mov	rax, qword ptr [rbp - 0x1a0]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_378
	jmp	.label_389
.label_378:
	movabs	rdi, OFFSET FLAT:label_400
	movabs	rsi, OFFSET FLAT:label_123
	mov	edx, 0x4f4
	movabs	rcx, OFFSET FLAT:label_401
	call	__assert_fail
.label_389:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1b8], rax
	mov	qword ptr [rbp - 0x1c0], 0
	mov	rax, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	qword ptr [rbp - 0x1c8], 0
	mov	dword ptr [rbp - 0x1dc], 0x40
.label_377:
	cmp	dword ptr [rbp - 0x1dc], 0
	jbe	.label_380
	jmp	.label_409
.label_409:
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
	ja	.label_416
	mov	rax, qword ptr [rbp - 0x1d0]
	cmp	rax, qword ptr [rbp - 0x1b8]
	jne	.label_379
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x1c0]
	jb	.label_379
.label_416:
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
.label_379:
	jmp	.label_390
.label_390:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, -1
	mov	dword ptr [rbp - 0x1dc], eax
	jmp	.label_377
.label_380:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x1b0], rax
	jmp	.label_413
.label_413:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x138]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	r9, qword ptr [rbp - 0x28]
	call	millerrabin
	test	al, 1
	jne	.label_411
	mov	byte ptr [rbp - 1], 0
	jmp	.label_381
.label_411:
	jmp	.label_402
.label_402:
	mov	eax, dword ptr [rbp - 0x194]
	add	eax, 1
	mov	dword ptr [rbp - 0x194], eax
	jmp	.label_387
.label_376:
	movabs	rdi, OFFSET FLAT:label_222
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_381:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x220
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060b0

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
	jne	.label_417
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_417
	mov	byte ptr [rbp - 1], 1
	jmp	.label_418
.label_417:
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
	jne	.label_421
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_421
	mov	byte ptr [rbp - 1], 1
	jmp	.label_418
.label_421:
	mov	dword ptr [rbp - 0x64], 1
.label_424:
	mov	eax, dword ptr [rbp - 0x64]
	cmp	eax, dword ptr [rbp - 0x2c]
	jae	.label_422
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
	jne	.label_420
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_420
	mov	byte ptr [rbp - 1], 1
	jmp	.label_418
.label_420:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	jne	.label_423
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_423
	mov	byte ptr [rbp - 1], 0
	jmp	.label_418
.label_423:
	jmp	.label_419
.label_419:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_424
.label_422:
	mov	byte ptr [rbp - 1], 0
.label_418:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406260

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
.label_425:
	cmp	dword ptr [rbp - 0x64], 0
	jbe	.label_430
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	je	.label_426
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
.label_426:
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
	jmp	.label_425
.label_430:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
.label_428:
	cmp	qword ptr [rbp - 0x70], 0
	jbe	.label_429
	mov	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	je	.label_427
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
.label_427:
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
	jmp	.label_428
.label_429:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406460

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
	je	.label_438
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_437
.label_438:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_431
.label_437:
	mov	dword ptr [rbp - 0x4c], 1
.label_433:
	mov	eax, dword ptr [rbp - 0x4c]
	cmp	eax, dword ptr [rbp - 0x2c]
	jae	.label_435
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	mulredc
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_436
	mov	byte ptr [rbp - 1], 1
	jmp	.label_431
.label_436:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_434
	mov	byte ptr [rbp - 1], 0
	jmp	.label_431
.label_434:
	jmp	.label_432
.label_432:
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_433
.label_435:
	mov	byte ptr [rbp - 1], 0
.label_431:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406550

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
	je	.label_439
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_439:
	jmp	.label_441
.label_441:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_440
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
	je	.label_442
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mulredc
	mov	qword ptr [rbp - 0x30], rax
.label_442:
	jmp	.label_441
.label_440:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406600

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
	jae	.label_443
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
.label_443:
	mov	rax, qword ptr [rbp - 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406680

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
	jne	.label_444
	jmp	.label_450
.label_444:
	movabs	rdi, OFFSET FLAT:label_454
	movabs	rsi, OFFSET FLAT:label_123
	mov	edx, 0x3e7
	movabs	rcx, OFFSET FLAT:label_452
	call	__assert_fail
.label_450:
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 0x3f
	cmp	rax, 0
	jne	.label_445
	jmp	.label_449
.label_445:
	movabs	rdi, OFFSET FLAT:label_453
	movabs	rsi, OFFSET FLAT:label_123
	mov	edx, 0x3e8
	movabs	rcx, OFFSET FLAT:label_452
	call	__assert_fail
.label_449:
	mov	rax, qword ptr [rbp - 0x38]
	shr	rax, 0x3f
	cmp	rax, 0
	jne	.label_455
	jmp	.label_448
.label_455:
	movabs	rdi, OFFSET FLAT:label_451
	movabs	rsi, OFFSET FLAT:label_123
	mov	edx, 0x3e9
	movabs	rcx, OFFSET FLAT:label_452
	call	__assert_fail
.label_448:
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
	ja	.label_446
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_447
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x40]
	jb	.label_447
.label_446:
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
.label_447:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rsp, 0x128
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ab0

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
	jne	.label_459
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_459:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_457
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_460
.label_457:
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_462:
	jmp	.label_456
.label_456:
	mov	rax, qword ptr [rbp - 0x10]
	and	rax, 1
	cmp	rax, 0
	jne	.label_458
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_456
.label_458:
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_461
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_460
.label_461:
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
	jmp	.label_462
.label_460:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406bb0

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
	je	.label_482
	jmp	.label_476
.label_482:
	movabs	rdi, OFFSET FLAT:label_478
	movabs	rsi, OFFSET FLAT:label_123
	mov	edx, 0x1e3
	movabs	rcx, OFFSET FLAT:label_479
	call	__assert_fail
.label_476:
	mov	rax, qword ptr [rbp - 0x20]
	or	rax, qword ptr [rbp - 0x18]
	cmp	rax, 0
	jne	.label_468
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_475
.label_468:
	jmp	.label_471
.label_471:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 1
	cmp	rax, 0
	jne	.label_485
	jmp	.label_469
.label_469:
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_471
.label_485:
	jmp	.label_480
.label_480:
	mov	rax, qword ptr [rbp - 0x28]
	or	rax, qword ptr [rbp - 0x18]
	cmp	rax, 0
	jne	.label_486
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gcd_odd
	mov	qword ptr [rbp - 8], rax
	jmp	.label_475
.label_486:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_483
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_470
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x30]
	jbe	.label_470
.label_483:
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
.label_477:
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_467
.label_467:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 1
	cmp	rax, 0
	je	.label_477
	jmp	.label_463
.label_470:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	ja	.label_466
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_472
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	jbe	.label_472
.label_466:
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
.label_465:
	jmp	.label_474
.label_474:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x30]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_484
.label_484:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 1
	cmp	rax, 0
	je	.label_465
	jmp	.label_473
.label_472:
	jmp	.label_481
.label_473:
	jmp	.label_463
.label_463:
	jmp	.label_480
.label_481:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_475:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e10

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
	je	.label_496
	jmp	.label_498
.label_496:
	movabs	rdi, OFFSET FLAT:label_499
	movabs	rsi, OFFSET FLAT:label_123
	mov	edx, 0x1a3
	movabs	rcx, OFFSET FLAT:label_500
	call	__assert_fail
.label_498:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_490
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_497
.label_490:
	jmp	.label_492
.label_492:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rax
	bsr	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	xor	rax, 0x3f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_495
.label_495:
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
.label_493:
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x4c]
	jge	.label_487
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_494
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_491
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x30]
	jb	.label_491
.label_494:
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
.label_491:
	jmp	.label_488
.label_488:
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0x3f
	mov	rcx, qword ptr [rbp - 0x30]
	shr	rcx, 1
	or	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_489
.label_489:
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_493
.label_487:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_497:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406fe0

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
	.align	16
	#Procedure 0x407010

	.globl mp_factor_using_division
	.type mp_factor_using_division, @function
mp_factor_using_division:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_503
	movabs	rsi, OFFSET FLAT:label_509
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x30], eax
.label_503:
	jmp	.label_502
.label_502:
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
.label_506:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_510
	mov	eax, 2
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	mp_factor_insert_ui
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, -1
	mov	qword ptr [rbp - 0x28], rsi
	jmp	.label_506
.label_510:
	mov	qword ptr [rbp - 0x28], 3
	mov	dword ptr [rbp - 0x2c], 1
.label_501:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx, eax
	cmp	rcx, 0x29c
	ja	.label_507
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	__gmpz_divisible_ui_p
	cmp	eax, 0
	jne	.label_505
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
	jge	.label_504
	jmp	.label_507
.label_504:
	jmp	.label_508
.label_505:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	__gmpz_tdiv_q_ui
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	call	mp_factor_insert_ui
.label_508:
	jmp	.label_501
.label_507:
	lea	rdi, [rbp - 0x20]
	call	__gmpz_clear
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407160

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
	jg	.label_529
	mov	byte ptr [rbp - 1], 0
	jmp	.label_512
.label_529:
	mov	eax, 0x17ded79
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	jge	.label_515
	mov	byte ptr [rbp - 1], 1
	jmp	.label_512
.label_515:
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
	jne	.label_520
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_514
.label_520:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_523
	lea	rsi, [rbp - 0x50]
	lea	rdi, [rbp - 0x60]
	call	__gmpz_set
	lea	rsi, [rbp - 0x78]
	lea	rdi, [rbp - 0x60]
	call	mp_factor
.label_523:
	mov	dword ptr [rbp - 0x84], 0
.label_519:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, eax
	cmp	rcx, 0x29c
	jae	.label_528
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_513
	mov	byte ptr [rbp - 0x11], 1
	mov	qword ptr [rbp - 0x90], 0
.label_516:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x91], cl
	jae	.label_517
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x91], al
.label_517:
	mov	al, byte ptr [rbp - 0x91]
	test	al, 1
	jne	.label_524
	jmp	.label_526
.label_524:
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
	jmp	.label_516
.label_526:
	jmp	.label_525
.label_513:
	cmp	dword ptr [rbp - 0x84], 0x18
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
.label_525:
	test	byte ptr [rbp - 0x11], 1
	je	.label_527
	jmp	.label_521
.label_527:
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
	jne	.label_518
	mov	byte ptr [rbp - 0x11], 0
	jmp	.label_521
.label_518:
	jmp	.label_522
.label_522:
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, 1
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_519
.label_528:
	movabs	rdi, OFFSET FLAT:label_222
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_521:
	test	byte ptr [byte ptr [flag_prove_primality]],  1
	je	.label_511
	lea	rdi, [rbp - 0x78]
	call	mp_factor_clear
.label_511:
	jmp	.label_514
.label_514:
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
.label_512:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407460

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
.label_538:
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_536
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	__gmpz_cmp
	cmp	eax, 0
	jg	.label_531
	jmp	.label_536
.label_531:
	jmp	.label_537
.label_537:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_538
.label_536:
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_534
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	__gmpz_cmp
	cmp	eax, 0
	je	.label_535
.label_534:
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
.label_533:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jle	.label_530
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
	jmp	.label_533
.label_530:
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
	jmp	.label_532
.label_535:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx + rax*8]
	add	rdx, 1
	mov	qword ptr [rcx + rax*8], rdx
.label_532:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407650

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
	je	.label_555
	movabs	rsi, OFFSET FLAT:label_551
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x9c], eax
.label_555:
	jmp	.label_542
.label_542:
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
.label_540:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_541
	jmp	.label_547
.label_547:
	jmp	.label_546
.label_546:
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
	jne	.label_560
	lea	rsi, [rbp - 0x60]
	lea	rdi, [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x10]
	call	__gmpz_gcd
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	je	.label_552
	jmp	.label_556
.label_552:
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rbp - 0x50]
	call	__gmpz_set
.label_560:
	jmp	.label_558
.label_558:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
	cmp	rax, 0
	jne	.label_546
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rbp - 0x40]
	call	__gmpz_set
	mov	rsi, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x88], rsi
	mov	rsi, qword ptr [rbp - 0x90]
	shl	rsi, 1
	mov	qword ptr [rbp - 0x90], rsi
	mov	qword ptr [rbp - 0x98], 0
.label_539:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_549
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
	jmp	.label_539
.label_549:
	lea	rsi, [rbp - 0x30]
	lea	rdi, [rbp - 0x50]
	call	__gmpz_set
	jmp	.label_547
.label_556:
	jmp	.label_545
.label_545:
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
	je	.label_545
	lea	rdx, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	call	__gmpz_divexact
	lea	rdi, [rbp - 0x70]
	call	mp_prime_p
	test	al, 1
	jne	.label_544
	jmp	.label_554
.label_554:
	test	byte ptr [byte ptr [dev_debug]],  1
	je	.label_559
	movabs	rsi, OFFSET FLAT:label_557
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa0], eax
.label_559:
	jmp	.label_548
.label_548:
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	mp_factor_using_pollard_rho
	jmp	.label_543
.label_544:
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x20]
	call	mp_factor_insert
.label_543:
	mov	rdi, qword ptr [rbp - 0x10]
	call	mp_prime_p
	test	al, 1
	jne	.label_553
	jmp	.label_550
.label_553:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mp_factor_insert
	jmp	.label_541
.label_550:
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
	jmp	.label_540
.label_541:
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
	.align	16
	#Procedure 0x407a90

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
	.align	16
	#Procedure 0x407ad0

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
	je	.label_566
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	__gmpz_cmp
	cmp	eax, 0
	jne	.label_564
.label_566:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_561
.label_564:
	mov	qword ptr [rbp - 0x40], 1
.label_563:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_562
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
	jne	.label_567
	mov	byte ptr [rbp - 1], 1
	jmp	.label_561
.label_567:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	__gmpz_cmp_ui
	cmp	eax, 0
	jne	.label_568
	mov	byte ptr [rbp - 1], 0
	jmp	.label_561
.label_568:
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_563
.label_562:
	mov	byte ptr [rbp - 1], 0
.label_561:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407be0
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
	#Procedure 0x407c00
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
	#Procedure 0x407c20

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_573
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_574
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_573
.label_574:
	movabs	rdi, OFFSET FLAT:label_58
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_570
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_569
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_572
.label_570:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_60
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_572:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_573:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_571
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_571:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d10

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
.label_577:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_575
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_write
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_578
	jmp	.label_575
.label_578:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_576
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	jmp	.label_575
.label_576:
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
	jmp	.label_577
.label_575:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407dc0

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
	jae	.label_579
	jmp	.label_582
.label_582:
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
	jne	.label_582
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_581
.label_579:
	jmp	.label_580
.label_580:
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
	jne	.label_580
	jmp	.label_581
.label_581:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ec0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_583
	movabs	rdi, OFFSET FLAT:label_590
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_583:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_584
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_588
.label_584:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_588:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_585
	movabs	rsi, OFFSET FLAT:label_587
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_585
	movabs	rsi, OFFSET FLAT:label_586
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_589
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_589:
	jmp	.label_585
.label_585:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fe0
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
	je	.label_594
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_593
	jmp	.label_595
.label_593:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_591
.label_595:
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
	movabs	rsi, OFFSET FLAT:label_592
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	sprintf
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_591
.label_594:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_591:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080a0

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
.label_620:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_598
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	mbsstr
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_619
	jmp	.label_598
.label_619:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_596
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
	jae	.label_609
	jmp	.label_606
.label_606:
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x122], cl
	je	.label_617
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x122], al
.label_617:
	mov	al, byte ptr [rbp - 0x122]
	xor	al, 0xff
	test	al, 1
	jne	.label_622
	call	abort
.label_622:
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
	jb	.label_606
	test	byte ptr [rbp - 0x90], 1
	je	.label_605
	mov	edi, dword ptr [rbp - 0x8c]
	call	iswalnum
	cmp	eax, 0
	je	.label_605
	mov	byte ptr [rbp - 0x69], 0
.label_605:
	jmp	.label_609
.label_609:
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
.label_621:
	lea	rdi, [rbp - 0xe0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xc0], 1
	mov	byte ptr [rbp - 0x13d], cl
	je	.label_623
	cmp	dword ptr [rbp - 0xbc], 0
	sete	al
	mov	byte ptr [rbp - 0x13d], al
.label_623:
	mov	al, byte ptr [rbp - 0x13d]
	xor	al, 0xff
	test	al, 1
	jne	.label_603
	jmp	.label_599
.label_603:
	lea	rdi, [rbp - 0x68]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x13e], cl
	je	.label_613
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x13e], al
.label_613:
	mov	al, byte ptr [rbp - 0x13e]
	xor	al, 0xff
	test	al, 1
	jne	.label_611
	call	abort
.label_611:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	byte ptr [rbp - 0x5c], 0
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xd0], rax
	mov	byte ptr [rbp - 0xd4], 0
	jmp	.label_621
.label_599:
	lea	rdi, [rbp - 0x68]
	mov	byte ptr [rbp - 0x6a], 1
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x48], 1
	mov	byte ptr [rbp - 0x13f], cl
	je	.label_610
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x13f], al
.label_610:
	mov	al, byte ptr [rbp - 0x13f]
	xor	al, 0xff
	test	al, 1
	jne	.label_616
	jmp	.label_607
.label_616:
	mov	eax, 0x30
	mov	edx, eax
	lea	rcx, [rbp - 0x110]
	lea	rsi, [rbp - 0x68]
	add	rsi, 0x10
	mov	rdi, rcx
	call	memcpy
	test	byte ptr [rbp - 0x100], 1
	je	.label_601
	mov	edi, dword ptr [rbp - 0xfc]
	call	iswalnum
	cmp	eax, 0
	je	.label_601
	mov	byte ptr [rbp - 0x6a], 0
.label_601:
	jmp	.label_607
.label_607:
	test	byte ptr [rbp - 0x69], 1
	je	.label_612
	test	byte ptr [rbp - 0x6a], 1
	je	.label_612
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_598
.label_612:
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
	je	.label_597
	cmp	dword ptr [rbp - 0x44], 0
	sete	al
	mov	byte ptr [rbp - 0x149], al
.label_597:
	mov	al, byte ptr [rbp - 0x149]
	xor	al, 0xff
	test	al, 1
	jne	.label_608
	jmp	.label_598
.label_608:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_614
.label_596:
	mov	byte ptr [rbp - 0x111], 1
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_602
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
	je	.label_625
	mov	byte ptr [rbp - 0x111], 0
.label_625:
	jmp	.label_602
.label_602:
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
	je	.label_600
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
	je	.label_624
	mov	byte ptr [rbp - 0x121], 0
.label_624:
	jmp	.label_600
.label_600:
	test	byte ptr [rbp - 0x111], 1
	je	.label_604
	test	byte ptr [rbp - 0x121], 1
	je	.label_604
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_598
.label_604:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_615
	jmp	.label_598
.label_615:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_614:
	jmp	.label_618
.label_618:
	jmp	.label_620
.label_598:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408590

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
	movabs	rsi, OFFSET FLAT:label_634
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	je	.label_645
	movabs	rsi, OFFSET FLAT:label_634
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
	movabs	rsi, OFFSET FLAT:label_634
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x78], rsi
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi,  qword ptr [word ptr [label_638]]
	mov	qword ptr [rax + rdx], rsi
	mov	cx,  word ptr [word ptr [label_639]]
	mov	word ptr [rax + rdx + 8], cx
	mov	r8b,  byte ptr [byte ptr [label_640]]
	mov	byte ptr [rax + rdx + 0xa], r8b
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xstr_iconv
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_633
	mov	esi, 0x3f
	mov	rdi, qword ptr [rbp - 0x58]
	call	strchr
	cmp	rax, 0
	je	.label_635
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	jmp	.label_646
.label_635:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x48], rax
.label_646:
	jmp	.label_633
.label_633:
	jmp	.label_644
.label_645:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
.label_644:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_649
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_627
.label_649:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_629
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_631
.label_629:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x88], rax
.label_631:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x80], rax
.label_627:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	cmp	eax, 0
	je	.label_641
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_628
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_647
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_628
.label_647:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_630
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	call	mbsstr_trimmed_wordbounded
	test	al, 1
	jne	.label_628
	jmp	.label_630
.label_628:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_648
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_648:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_637
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_637:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_643
.label_630:
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
	movabs	rsi, OFFSET FLAT:label_592
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	al, 0
	call	sprintf
	cmp	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 0x94], eax
	je	.label_636
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_636:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_642
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_642:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_643
.label_641:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_626
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_626
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_626:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_632
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_632
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_632:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_643:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088e0
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
	je	.label_650
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_651
.label_650:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_651
.label_651:
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
	#Procedure 0x408960
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_652
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_653
.label_652:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_653
.label_653:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089a0
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
	je	.label_654
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_655
.label_654:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_655
.label_655:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4089f0

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
	je	.label_656
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_657
.label_656:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_657
.label_657:
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
	#Procedure 0x408aa0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_658
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_658:
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
	#Procedure 0x408ae0

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
	jne	.label_659
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_659:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_661
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_660
.label_661:
	call	abort
.label_660:
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
	#Procedure 0x408b50
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
	je	.label_662
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_663
.label_662:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_663
.label_663:
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
	#Procedure 0x408c20

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
.label_808:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_708
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_724]]
	jmp	rcx
.label_1363:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_1362:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_722
	jmp	.label_726
.label_726:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_727
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_727:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_722
.label_722:
	movabs	rax, OFFSET FLAT:label_833
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_741
.label_1364:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_741
.label_1365:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_746
	movabs	rdi, OFFSET FLAT:label_680
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_754
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_746:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_762
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_845:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_766
	jmp	.label_769
.label_769:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_771
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_771:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_775
.label_775:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_845
.label_766:
	jmp	.label_762
.label_762:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_741
.label_1360:
	mov	byte ptr [rbp - 0x79], 1
.label_1359:
	mov	byte ptr [rbp - 0x7b], 1
.label_1361:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_790
	mov	byte ptr [rbp - 0x79], 1
.label_790:
	jmp	.label_791
.label_791:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_792
	jmp	.label_797
.label_797:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_798
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_798:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_792
.label_792:
	movabs	rax, OFFSET FLAT:label_754
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_741
.label_1358:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_741
.label_708:
	call	abort
.label_741:
	mov	qword ptr [rbp - 0x58], 0
.label_777:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_861
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_816
.label_861:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_816:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_826
	jmp	.label_785
.label_826:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_836
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_836
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_836
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_844
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_844
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_698
.label_844:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_698:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_836
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_836
	test	byte ptr [rbp - 0x7b], 1
	je	.label_860
	jmp	.label_678
.label_860:
	mov	byte ptr [rbp - 0x81], 1
.label_836:
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
	ja	.label_864
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_666]]
	jmp	rcx
.label_1421:
	test	byte ptr [rbp - 0x79], 1
	je	.label_668
	jmp	.label_684
.label_684:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_717
	jmp	.label_678
.label_717:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_683
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_683
	jmp	.label_686
.label_686:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_783
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_783:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_690
.label_690:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_834
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_834:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_699
.label_699:
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
	mov	byte ptr [rbp - 0x7c], 1
.label_683:
	jmp	.label_714
.label_714:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_716
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_716:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_827
.label_827:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_729
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_729
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_729
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_729
	jmp	.label_744
.label_744:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_867
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_867:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_753
.label_753:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_759
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_759:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_729
.label_729:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_770
.label_668:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_796
	jmp	.label_752
.label_796:
	jmp	.label_770
.label_770:
	jmp	.label_700
.label_1432:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_776
	jmp	.label_781
.label_781:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_782
	jmp	.label_673
.label_776:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_682
	jmp	.label_678
.label_682:
	jmp	.label_789
.label_782:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_734
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_734
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_734
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_801
	jmp	.label_807
.label_807:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_801
	jmp	.label_811
.label_811:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_801
	jmp	.label_817
.label_817:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_801
	jmp	.label_821
.label_821:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_822
	jmp	.label_801
.label_801:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_829
	jmp	.label_678
.label_829:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_835
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_835:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_843
.label_843:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_846
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_846:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_850
.label_850:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_853
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_853:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_855
.label_855:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_803
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_803:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_859
.label_822:
	jmp	.label_859
.label_859:
	jmp	.label_734
.label_734:
	jmp	.label_789
.label_673:
	jmp	.label_789
.label_789:
	jmp	.label_700
.label_1422:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_667
.label_1423:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_667
.label_1427:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_667
.label_1425:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_664
.label_1428:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_664
.label_1424:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_664
.label_1426:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_667
.label_1433:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_671
	test	byte ptr [rbp - 0x7b], 1
	je	.label_675
	jmp	.label_678
.label_675:
	jmp	.label_679
.label_671:
	test	byte ptr [rbp - 0x79], 1
	je	.label_681
	test	byte ptr [rbp - 0x7b], 1
	je	.label_681
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_681
	jmp	.label_679
.label_681:
	jmp	.label_664
.label_664:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_689
	test	byte ptr [rbp - 0x7b], 1
	je	.label_689
	jmp	.label_678
.label_689:
	jmp	.label_667
.label_667:
	test	byte ptr [rbp - 0x79], 1
	je	.label_694
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_674
.label_694:
	jmp	.label_700
.label_1434:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_702
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_706
	jmp	.label_711
.label_702:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_706
.label_711:
	jmp	.label_700
.label_706:
	jmp	.label_713
.label_713:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_715
	jmp	.label_700
.label_715:
	jmp	.label_719
.label_719:
	mov	byte ptr [rbp - 0x83], 1
.label_1429:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_723
	test	byte ptr [rbp - 0x7b], 1
	je	.label_723
	jmp	.label_678
.label_723:
	jmp	.label_700
.label_1431:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_732
	test	byte ptr [rbp - 0x7b], 1
	je	.label_736
	jmp	.label_678
.label_736:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_739
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_739
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_739:
	jmp	.label_748
.label_748:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_750
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_750:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_757
.label_757:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_761
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_761:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_768
.label_768:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_773
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_773:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_732:
	jmp	.label_700
.label_1430:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_700
.label_864:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_858
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
	jmp	.label_695
.label_858:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_802
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_802:
	jmp	.label_707
.label_707:
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
	jne	.label_819
	jmp	.label_730
.label_819:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_825
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_730
.label_825:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_831
	mov	byte ptr [rbp - 0x91], 0
.label_851:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_837
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_837:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_848
	jmp	.label_849
.label_848:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_851
.label_849:
	jmp	.label_730
.label_831:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_688
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_688
	mov	qword ptr [rbp - 0xb8], 1
.label_685:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_857
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
	jmp	.label_866
.label_866:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_672
	jmp	.label_665
.label_665:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_672
	jmp	.label_670
.label_670:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_793
	jmp	.label_672
.label_672:
	jmp	.label_678
.label_793:
	jmp	.label_755
.label_755:
	jmp	.label_703
.label_703:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_685
.label_857:
	jmp	.label_688
.label_688:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_691
	mov	byte ptr [rbp - 0x91], 0
.label_691:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_693
.label_693:
	jmp	.label_856
.label_856:
	jmp	.label_701
.label_701:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_707
.label_730:
	jmp	.label_695
.label_695:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_712
	test	byte ptr [rbp - 0x79], 1
	je	.label_721
	test	byte ptr [rbp - 0x91], 1
	jne	.label_721
.label_712:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_743:
	test	byte ptr [rbp - 0x79], 1
	je	.label_733
	test	byte ptr [rbp - 0x91], 1
	jne	.label_733
	jmp	.label_737
.label_737:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_738
	jmp	.label_678
.label_738:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_742
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_742
	jmp	.label_747
.label_747:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_749
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_749:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_756
.label_756:
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
	jmp	.label_767
.label_767:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_841
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_841:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_742:
	jmp	.label_778
.label_778:
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
	jmp	.label_784
.label_784:
	jmp	.label_787
.label_787:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_788
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_788:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_795
.label_795:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_799
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_799:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_805
.label_733:
	test	byte ptr [rbp - 0x81], 1
	je	.label_809
	jmp	.label_812
.label_812:
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
	mov	byte ptr [rbp - 0x81], 0
.label_809:
	jmp	.label_805
.label_805:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_823
	jmp	.label_828
.label_823:
	jmp	.label_830
.label_830:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_832
	test	byte ptr [rbp - 0x82], 1
	jne	.label_832
	jmp	.label_838
.label_838:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_839
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_839:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_842
.label_842:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_786
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_786:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_832:
	jmp	.label_852
.label_852:
	jmp	.label_696
.label_696:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_854
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_854:
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
	jmp	.label_743
.label_828:
	jmp	.label_679
.label_721:
	jmp	.label_700
.label_700:
	test	byte ptr [rbp - 0x79], 1
	je	.label_862
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_863
.label_862:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_865
.label_863:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_865
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
	jne	.label_669
.label_865:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_669
	jmp	.label_679
.label_669:
	jmp	.label_674
.label_674:
	jmp	.label_676
.label_676:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_677
	jmp	.label_678
.label_677:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_687
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_687
	jmp	.label_794
.label_794:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_800
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_800:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_692
.label_692:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_697
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_697:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_704
.label_704:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_709
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_709:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_687:
	jmp	.label_718
.label_718:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_720
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_720:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_728
.label_728:
	jmp	.label_679
.label_679:
	jmp	.label_810
.label_810:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_735
	test	byte ptr [rbp - 0x82], 1
	jne	.label_735
	jmp	.label_731
.label_731:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_740
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_740:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_745
.label_745:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_751
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_751:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_735:
	jmp	.label_763
.label_763:
	jmp	.label_764
.label_764:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_765
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_765:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_772
	mov	byte ptr [rbp - 0x7e], 0
.label_772:
	jmp	.label_752
.label_752:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_777
.label_785:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_780
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_780
	test	byte ptr [rbp - 0x7b], 1
	je	.label_780
	jmp	.label_678
.label_780:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_710
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_710
	test	byte ptr [rbp - 0x7d], 1
	je	.label_710
	test	byte ptr [rbp - 0x7e], 1
	je	.label_725
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
	jmp	.label_804
.label_725:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_806
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_806
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_808
.label_806:
	jmp	.label_813
.label_813:
	jmp	.label_710
.label_710:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_815
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_815
	jmp	.label_818
.label_818:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_820
	jmp	.label_758
.label_758:
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
	jmp	.label_774
.label_774:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_818
.label_820:
	jmp	.label_815
.label_815:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_840
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_840:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_804
.label_678:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_847
	test	byte ptr [rbp - 0x79], 1
	je	.label_847
	mov	dword ptr [rbp - 0x34], 4
.label_847:
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
.label_804:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fc0
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
	#Procedure 0x40a000

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
	je	.label_868
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_869
.label_868:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_869
.label_869:
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
	je	.label_870
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_870:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a160
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_872:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_873
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_872
.label_873:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_874
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_875]],  rax
.label_874:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_871
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_871:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a240

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
	#Procedure 0x40a280

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
	jge	.label_878
	call	abort
.label_878:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_883
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_877
	call	xalloc_die
.label_877:
	test	byte ptr [rbp - 0x31], 1
	je	.label_882
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_876
.label_882:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_876:
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
	je	.label_881
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_875]]
	mov	qword ptr [rax + 8], rcx
.label_881:
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
.label_883:
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
	ja	.label_879
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_880
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_880:
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
.label_879:
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
	#Procedure 0x40a500

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
	#Procedure 0x40a540
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
	#Procedure 0x40a560
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
	#Procedure 0x40a590

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
	#Procedure 0x40a5d0

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
	jne	.label_884
	call	abort
.label_884:
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
	#Procedure 0x40a640

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
	#Procedure 0x40a680
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
	#Procedure 0x40a6b0
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
	#Procedure 0x40a6e0

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
	#Procedure 0x40a760

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
	#Procedure 0x40a790

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
	#Procedure 0x40a7b0
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
	#Procedure 0x40a7e0
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
	#Procedure 0x40a890

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
	#Procedure 0x40a8d0

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
	#Procedure 0x40a950
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
	#Procedure 0x40a980
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
	#Procedure 0x40a9c0

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
	#Procedure 0x40aa00
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
	#Procedure 0x40aa30

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
	#Procedure 0x40aa60

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
	#Procedure 0x40aa80

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
	je	.label_890
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_887
.label_890:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_634
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_889
	movabs	rax, OFFSET FLAT:label_892
	movabs	rcx, OFFSET FLAT:label_893
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_887
.label_889:
	movabs	rsi, OFFSET FLAT:label_888
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_891
	movabs	rax, OFFSET FLAT:label_885
	movabs	rcx, OFFSET FLAT:label_886
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_887
.label_891:
	movabs	rax, OFFSET FLAT:label_754
	movabs	rcx, OFFSET FLAT:label_833
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_887:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ab80

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
	.align	16
	#Procedure 0x40abb0

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
.label_897:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_902
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
	jmp	.label_897
.label_902:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_905:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x34], 0
	mov	byte ptr [rbp - 0x72], cl
	jl	.label_906
	lea	rsi, [rbp - 0x70]
	movsxd	rdi, dword ptr [rbp - 0x34]
	call	get_nth_bit
	mov	byte ptr [rbp - 0x72], al
.label_906:
	mov	al, byte ptr [rbp - 0x72]
	test	al, 1
	jne	.label_896
	jmp	.label_899
.label_896:
	jmp	.label_901
.label_901:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getc_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_905
.label_899:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x40], 0
.label_894:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_898
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_898
	mov	qword ptr [rbp - 8], -1
	jmp	.label_903
.label_898:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_908
	lea	rsi, [rbp - 0x48]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x30]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x30], rax
.label_908:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_900
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_895
.label_900:
	lea	rsi, [rbp - 0x70]
	movsxd	rdi, dword ptr [rbp - 0x34]
	call	get_nth_bit
	test	al, 1
	jne	.label_907
	jmp	.label_904
.label_907:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_895
.label_904:
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
	jmp	.label_894
.label_895:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_903:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad90

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
	.align	16
	#Procedure 0x40add0

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
	.align	16
	#Procedure 0x40ae10
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
	jne	.label_913
	mov	qword ptr [rbp - 0x10], 0x40
	jmp	.label_910
.label_913:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_910:
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
.label_915:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	call	readtoken
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x60]
	jb	.label_914
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
.label_914:
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_916
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rax*8], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + rax*8], 0
	jmp	.label_911
.label_916:
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
	jmp	.label_915
.label_911:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_912
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	jmp	.label_909
.label_912:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
.label_909:
	mov	rax, qword ptr [rbp - 0x68]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aff0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_917:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	write
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_922
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_920
.label_922:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_923
	jmp	.label_917
.label_923:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_921
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_921
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_919
.label_921:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_920
.label_919:
	jmp	.label_924
.label_924:
	jmp	.label_918
.label_918:
	jmp	.label_917
.label_920:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b0a0

	.globl trim2
	.type trim2, @function
trim2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	call	strdup
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_938
	call	xalloc_die
.label_938:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_955
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_959
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
.label_960:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x99], cl
	jae	.label_936
	lea	rdi, [rbp - 0x60]
	call	mbiter_multi_next
	xor	eax, eax
	mov	cl, al
	mov	dl, 1
	test	dl, 1
	mov	byte ptr [rbp - 0x99], cl
	jne	.label_939
	jmp	.label_936
.label_939:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x9a], cl
	je	.label_944
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x9a], cl
.label_944:
	mov	al, byte ptr [rbp - 0x9a]
	mov	byte ptr [rbp - 0x99], al
.label_936:
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	jne	.label_953
	jmp	.label_956
.label_953:
	jmp	.label_957
.label_957:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_960
.label_956:
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
	mov	qword ptr [rbp - 0xb8], rax
.label_959:
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_927
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x60]
	mov	dword ptr [rbp - 0x64], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, r8
	mov	dword ptr [rbp - 0xc4], esi
	mov	qword ptr [rbp - 0xd0], rdx
	mov	qword ptr [rbp - 0xd8], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0xc0]
	add	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	byte ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 0xc
	mov	rdi, rax
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, qword ptr [rbp - 0xd0]
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_950:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0xd9], cl
	jae	.label_952
	lea	rdi, [rbp - 0x60]
	call	mbiter_multi_next
	mov	al, 1
	mov	byte ptr [rbp - 0xd9], al
.label_952:
	mov	al, byte ptr [rbp - 0xd9]
	test	al, 1
	jne	.label_961
	jmp	.label_962
.label_961:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_925
	test	byte ptr [rbp - 0x38], 1
	je	.label_925
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_925
	jmp	.label_929
.label_925:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_931
	test	byte ptr [rbp - 0x38], 1
	je	.label_933
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	jne	.label_931
.label_933:
	mov	dword ptr [rbp - 0x64], 1
	jmp	.label_929
.label_931:
	cmp	dword ptr [rbp - 0x64], 1
	jne	.label_935
	test	byte ptr [rbp - 0x38], 1
	je	.label_937
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	jne	.label_935
.label_937:
	jmp	.label_929
.label_935:
	cmp	dword ptr [rbp - 0x64], 1
	jne	.label_940
	test	byte ptr [rbp - 0x38], 1
	je	.label_940
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_940
	mov	dword ptr [rbp - 0x64], 2
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_949
.label_940:
	cmp	dword ptr [rbp - 0x64], 2
	jne	.label_951
	test	byte ptr [rbp - 0x38], 1
	je	.label_951
	mov	edi, dword ptr [rbp - 0x34]
	call	iswspace
	cmp	eax, 0
	je	.label_951
	jmp	.label_958
.label_951:
	mov	dword ptr [rbp - 0x64], 1
.label_958:
	jmp	.label_949
.label_949:
	jmp	.label_929
.label_929:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_950
.label_962:
	cmp	dword ptr [rbp - 0x64], 2
	jne	.label_926
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax], 0
.label_926:
	jmp	.label_927
.label_927:
	jmp	.label_928
.label_955:
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_954
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x78], rax
.label_948:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xda], cl
	je	.label_934
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0xe8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0xe8]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	setne	sil
	mov	byte ptr [rbp - 0xda], sil
.label_934:
	mov	al, byte ptr [rbp - 0xda]
	test	al, 1
	jne	.label_943
	jmp	.label_945
.label_943:
	jmp	.label_946
.label_946:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_948
.label_945:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, rax
	mov	qword ptr [rbp - 0xf8], rsi
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rdx, rax
	call	memmove
	mov	qword ptr [rbp - 0x100], rax
.label_954:
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_947
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x108]
	add	rdi, rax
	add	rdi, -1
	mov	qword ptr [rbp - 0x78], rdi
.label_942:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x109], cl
	jb	.label_930
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x118], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x118]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	ecx, 0
	setne	sil
	mov	byte ptr [rbp - 0x109], sil
.label_930:
	mov	al, byte ptr [rbp - 0x109]
	test	al, 1
	jne	.label_932
	jmp	.label_941
.label_932:
	mov	rax, qword ptr [rbp - 0x78]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_942
.label_941:
	jmp	.label_947
.label_947:
	jmp	.label_928
.label_928:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b5c0

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
	je	.label_963
	movabs	rsi, OFFSET FLAT:label_974
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_970
.label_963:
	movabs	rsi, OFFSET FLAT:label_971
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_970:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_980
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
	mov	ecx, OFFSET FLAT:label_979
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
	ja	.label_967
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_975]]
	jmp	rcx
.label_1341:
	jmp	.label_966
.label_1342:
	movabs	rdi, OFFSET FLAT:label_981
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
	jmp	.label_966
.label_1343:
	movabs	rdi, OFFSET FLAT:label_978
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
	jmp	.label_966
.label_1344:
	movabs	rdi, OFFSET FLAT:label_977
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
	jmp	.label_966
.label_1345:
	movabs	rdi, OFFSET FLAT:label_973
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
	jmp	.label_966
.label_1346:
	movabs	rdi, OFFSET FLAT:label_969
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
	jmp	.label_966
.label_1347:
	movabs	rdi, OFFSET FLAT:label_964
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
	jmp	.label_966
.label_1348:
	movabs	rdi, OFFSET FLAT:label_968
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
	jmp	.label_966
.label_1349:
	movabs	rdi, OFFSET FLAT:label_976
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
	jmp	.label_966
.label_1350:
	movabs	rdi, OFFSET FLAT:label_972
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
	jmp	.label_966
.label_967:
	movabs	rdi, OFFSET FLAT:label_965
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
.label_966:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb80
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
.label_984:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_982
	jmp	.label_983
.label_983:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_984
.label_982:
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
	#Procedure 0x40bbf0

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
.label_985:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_989
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_987
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_986
.label_987:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_986:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_989:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_991
	jmp	.label_990
.label_991:
	jmp	.label_988
.label_988:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_985
.label_990:
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
	#Procedure 0x40bd00

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
	je	.label_992
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
.label_992:
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
	#Procedure 0x40be70
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_993
	call	gettext
	movabs	rsi, OFFSET FLAT:label_995
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_996
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_22
	movabs	rdx, OFFSET FLAT:label_23
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_994
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
	#Procedure 0x40bf00

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
	jae	.label_997
	call	xalloc_die
.label_997:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf50

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
	jne	.label_998
	cmp	qword ptr [rbp - 8], 0
	je	.label_998
	call	xalloc_die
.label_998:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bf90

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
	jae	.label_999
	call	xalloc_die
.label_999:
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
	#Procedure 0x40bfe0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1000
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1000
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1002
.label_1000:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1001
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1001
	call	xalloc_die
.label_1001:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1002:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c060

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
	jne	.label_1003
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1006
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
.label_1006:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1004
	call	xalloc_die
.label_1004:
	jmp	.label_1005
.label_1003:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1007
	call	xalloc_die
.label_1007:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1005:
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
	#Procedure 0x40c150

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
	#Procedure 0x40c170
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
	#Procedure 0x40c1a0
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
	#Procedure 0x40c1e0
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
	jb	.label_1008
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1009
.label_1008:
	call	xalloc_die
.label_1009:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c240

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
	#Procedure 0x40c280
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
	#Procedure 0x40c2c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1010
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_60
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40c300
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
	jge	.label_1011
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1011
	call	xalloc_die
.label_1011:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c360
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
	jne	.label_1012
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1012
	call	xalloc_die
.label_1012:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c3b0

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
	jne	.label_1013
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_1013
	call	xalloc_die
.label_1013:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c410

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
	jne	.label_1014
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_1014:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_1015
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1015
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_1015
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_1016
.label_1015:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1016:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c4c0

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
	jne	.label_1017
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1021
.label_1017:
	jmp	.label_1018
.label_1018:
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
	jne	.label_1020
	jmp	.label_1019
.label_1020:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1018
.label_1019:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1021:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c580

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
	jne	.label_1022
	test	byte ptr [rbp - 0x13], 1
	je	.label_1024
	test	byte ptr [rbp - 0x11], 1
	jne	.label_1022
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_1024
.label_1022:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_1025
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1025:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1023
.label_1024:
	mov	dword ptr [rbp - 4], 0
.label_1023:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c630

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
	je	.label_1026
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1030
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1029
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1027
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1028
.label_1029:
	mov	byte ptr [rbp - 5], 0
.label_1028:
	jmp	.label_1026
.label_1026:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c6b0

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
	jne	.label_1031
	movabs	rax, OFFSET FLAT:label_19
	mov	qword ptr [rbp - 8], rax
.label_1031:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1032
	movabs	rax, OFFSET FLAT:label_1033
	mov	qword ptr [rbp - 8], rax
.label_1032:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c710

	.globl mbiter_multi_next
	.type mbiter_multi_next, @function
mbiter_multi_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0x14], 1
	je	.label_1038
	jmp	.label_1050
.label_1038:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 8], 1
	je	.label_1052
	jmp	.label_1057
.label_1052:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	jne	.label_1039
	jmp	.label_1044
.label_1039:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x2c], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 1
	jmp	.label_1040
.label_1044:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_1043
	jmp	.label_1034
.label_1043:
	movabs	rdi, OFFSET FLAT:label_1046
	movabs	rsi, OFFSET FLAT:label_1047
	mov	edx, 0x8e
	movabs	rcx, OFFSET FLAT:label_1048
	call	__assert_fail
.label_1034:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 8], 1
.label_1057:
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
	jne	.label_1042
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	jmp	.label_1053
.label_1042:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], -2
	jne	.label_1036
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 0
	jmp	.label_1035
.label_1036:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_1041
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1037
	jmp	.label_1051
.label_1037:
	movabs	rdi, OFFSET FLAT:label_1055
	movabs	rsi, OFFSET FLAT:label_1047
	mov	edx, 0xa9
	movabs	rcx, OFFSET FLAT:label_1048
	call	__assert_fail
.label_1051:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x2c], 0
	jne	.label_1056
	jmp	.label_1049
.label_1056:
	movabs	rdi, OFFSET FLAT:label_1054
	movabs	rsi, OFFSET FLAT:label_1047
	mov	edx, 0xaa
	movabs	rcx, OFFSET FLAT:label_1048
	call	__assert_fail
.label_1049:
	jmp	.label_1041
.label_1041:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x28], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_1045
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 8], 0
.label_1045:
	jmp	.label_1035
.label_1035:
	jmp	.label_1053
.label_1053:
	jmp	.label_1040
.label_1040:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x14], 1
.label_1050:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c970
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
	.align	16
	#Procedure 0x40c9a0
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
	jne	.label_1058
	jmp	.label_1059
.label_1058:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xc]
	mov	qword ptr [rax + 0xc], rcx
	jmp	.label_1060
.label_1059:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0xc
	mov	rdi, rcx
	call	memset
.label_1060:
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
	.align	16
	#Procedure 0x40ca40

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
	jbe	.label_1081
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
	je	.label_1093
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x1e9], al
.label_1093:
	mov	al, byte ptr [rbp - 0x1e9]
	xor	al, 0xff
	test	al, 1
	jne	.label_1091
	jmp	.label_1103
.label_1091:
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
.label_1066:
	lea	rdi, [rbp - 0xf8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd8], 1
	mov	byte ptr [rbp - 0x205], cl
	je	.label_1090
	cmp	dword ptr [rbp - 0xd4], 0
	sete	al
	mov	byte ptr [rbp - 0x205], al
.label_1090:
	mov	al, byte ptr [rbp - 0x205]
	xor	al, 0xff
	test	al, 1
	jne	.label_1096
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1068
.label_1096:
	test	byte ptr [rbp - 0x59], 1
	je	.label_1070
	cmp	qword ptr [rbp - 0x68], 0xa
	jb	.label_1070
	mov	rax, qword ptr [rbp - 0x70]
	imul	rcx, qword ptr [rbp - 0x68], 5
	cmp	rax, rcx
	jb	.label_1070
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x100], rax
.label_1086:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x100], 0
	mov	byte ptr [rbp - 0x206], cl
	jbe	.label_1061
	lea	rdi, [rbp - 0xb8]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x98], 1
	mov	byte ptr [rbp - 0x207], cl
	je	.label_1069
	cmp	dword ptr [rbp - 0x94], 0
	sete	al
	mov	byte ptr [rbp - 0x207], al
.label_1069:
	mov	al, byte ptr [rbp - 0x207]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x206], al
.label_1061:
	mov	al, byte ptr [rbp - 0x206]
	test	al, 1
	jne	.label_1082
	jmp	.label_1085
.label_1082:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	byte ptr [rbp - 0xac], 0
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, -1
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_1086
.label_1085:
	lea	rdi, [rbp - 0xb8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
	call	mbuiter_multi_next
	xor	ecx, ecx
	mov	dl, cl
	test	byte ptr [rbp - 0x98], 1
	mov	byte ptr [rbp - 0x208], dl
	je	.label_1097
	cmp	dword ptr [rbp - 0x94], 0
	sete	al
	mov	byte ptr [rbp - 0x208], al
.label_1097:
	mov	al, byte ptr [rbp - 0x208]
	xor	al, 0xff
	test	al, 1
	jne	.label_1104
	lea	rdx, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	knuth_morris_pratt_multibyte
	and	al, 1
	mov	byte ptr [rbp - 0x109], al
	test	byte ptr [rbp - 0x109], 1
	je	.label_1073
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1068
.label_1073:
	mov	byte ptr [rbp - 0x59], 0
.label_1104:
	jmp	.label_1070
.label_1070:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	test	byte ptr [rbp - 0xd8], 1
	je	.label_1072
	test	byte ptr [rbp - 0x38], 1
	je	.label_1072
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, dword ptr [rbp - 0x34]
	je	.label_1083
	jmp	.label_1062
.label_1072:
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_1062
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0xe0]
	call	memcmp
	cmp	eax, 0
	jne	.label_1062
.label_1083:
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
	je	.label_1080
	cmp	dword ptr [rbp - 0x16c], 0
	sete	al
	mov	byte ptr [rbp - 0x229], al
.label_1080:
	mov	al, byte ptr [rbp - 0x229]
	xor	al, 0xff
	test	al, 1
	jne	.label_1089
	call	abort
.label_1089:
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x184], 0
.label_1107:
	lea	rdi, [rbp - 0x190]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x170], 1
	mov	byte ptr [rbp - 0x22a], cl
	je	.label_1100
	cmp	dword ptr [rbp - 0x16c], 0
	sete	al
	mov	byte ptr [rbp - 0x22a], al
.label_1100:
	mov	al, byte ptr [rbp - 0x22a]
	xor	al, 0xff
	test	al, 1
	jne	.label_1065
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1068
.label_1065:
	lea	rdi, [rbp - 0x150]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x130], 1
	mov	byte ptr [rbp - 0x22b], cl
	je	.label_1063
	cmp	dword ptr [rbp - 0x12c], 0
	sete	al
	mov	byte ptr [rbp - 0x22b], al
.label_1063:
	mov	al, byte ptr [rbp - 0x22b]
	xor	al, 0xff
	test	al, 1
	jne	.label_1074
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1068
.label_1074:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	test	byte ptr [rbp - 0x130], 1
	je	.label_1071
	test	byte ptr [rbp - 0x170], 1
	je	.label_1071
	mov	eax, dword ptr [rbp - 0x12c]
	cmp	eax, dword ptr [rbp - 0x16c]
	je	.label_1087
	jmp	.label_1092
.label_1071:
	mov	rax, qword ptr [rbp - 0x138]
	cmp	rax, qword ptr [rbp - 0x178]
	jne	.label_1092
	mov	rdi, qword ptr [rbp - 0x140]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memcmp
	cmp	eax, 0
	je	.label_1087
.label_1092:
	jmp	.label_1101
.label_1087:
	jmp	.label_1102
.label_1102:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x140], rax
	mov	byte ptr [rbp - 0x144], 0
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x180], rax
	mov	byte ptr [rbp - 0x184], 0
	jmp	.label_1107
.label_1101:
	jmp	.label_1062
.label_1062:
	jmp	.label_1064
.label_1064:
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	byte ptr [rbp - 0xec], 0
	jmp	.label_1066
.label_1103:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1068
.label_1081:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1078
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
.label_1108:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1094
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1068
.label_1094:
	test	byte ptr [rbp - 0x191], 1
	je	.label_1075
	cmp	qword ptr [rbp - 0x1a0], 0xa
	jb	.label_1075
	mov	rax, qword ptr [rbp - 0x1a8]
	imul	rcx, qword ptr [rbp - 0x1a0], 5
	cmp	rax, rcx
	jb	.label_1075
	cmp	qword ptr [rbp - 0x1b8], 0
	je	.label_1109
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
	jne	.label_1067
	mov	qword ptr [rbp - 0x1b8], 0
.label_1067:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0x1b0], rax
.label_1109:
	cmp	qword ptr [rbp - 0x1b8], 0
	jne	.label_1079
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
	je	.label_1099
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1068
.label_1099:
	mov	byte ptr [rbp - 0x191], 0
.label_1079:
	jmp	.label_1075
.label_1075:
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
	jne	.label_1105
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x1e0], rax
.label_1098:
	mov	rax, qword ptr [rbp - 0x1e0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1077
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1068
.label_1077:
	mov	rax, qword ptr [rbp - 0x1d8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1084
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1068
.label_1084:
	mov	rax, qword ptr [rbp - 0x1a8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1a8], rax
	mov	rax, qword ptr [rbp - 0x1d8]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x1e0]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	je	.label_1088
	jmp	.label_1095
.label_1088:
	jmp	.label_1076
.label_1076:
	mov	rax, qword ptr [rbp - 0x1d8]
	add	rax, 1
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_1098
.label_1095:
	jmp	.label_1105
.label_1105:
	jmp	.label_1106
.label_1106:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1108
.label_1078:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1068:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x250
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d310

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
	jae	.label_1122
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	jmp	.label_1129
.label_1122:
	imul	rax, qword ptr [rbp - 0x28], 0x38
	cmp	rax, 0xfa1
	jae	.label_1136
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
	jmp	.label_1142
.label_1136:
	imul	rdi, qword ptr [rbp - 0x28], 0x38
	call	mmalloca
	mov	qword ptr [rbp - 0x148], rax
.label_1142:
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x140], rax
.label_1129:
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1125
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1130
.label_1125:
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
.label_1115:
	lea	rdi, [rbp - 0x88]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x68], 1
	mov	byte ptr [rbp - 0x149], cl
	je	.label_1128
	cmp	dword ptr [rbp - 0x64], 0
	sete	al
	mov	byte ptr [rbp - 0x149], al
.label_1128:
	mov	al, byte ptr [rbp - 0x149]
	xor	al, 0xff
	test	al, 1
	jne	.label_1137
	jmp	.label_1143
.label_1137:
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
	jmp	.label_1115
.label_1143:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 1
	mov	qword ptr [rbp - 0xa0], 0
	mov	qword ptr [rbp - 0x98], 2
.label_1123:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1139
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax, 1
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa8], rax
.label_1113:
	mov	rax, qword ptr [rbp - 0xa8]
	test	byte ptr [rax + 0x10], 1
	je	.label_1112
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1112
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 0xa0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	cmp	ecx, dword ptr [rax + 0x14]
	je	.label_1120
	jmp	.label_1133
.label_1112:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0xa0]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1133
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
	jne	.label_1133
.label_1120:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	add	rcx, 1
	mov	qword ptr [rbp - 0xa0], rcx
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1124
.label_1133:
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_1140
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1124
.label_1140:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1113
.label_1124:
	jmp	.label_1121
.label_1121:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1123
.label_1139:
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
.label_1135:
	lea	rdi, [rbp - 0x130]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x110], 1
	mov	byte ptr [rbp - 0x165], cl
	je	.label_1145
	cmp	dword ptr [rbp - 0x10c], 0
	sete	al
	mov	byte ptr [rbp - 0x165], al
.label_1145:
	mov	al, byte ptr [rbp - 0x165]
	xor	al, 0xff
	test	al, 1
	jne	.label_1116
	jmp	.label_1114
.label_1116:
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1118
	test	byte ptr [rbp - 0x110], 1
	je	.label_1118
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x14]
	cmp	ecx, dword ptr [rbp - 0x10c]
	je	.label_1134
	jmp	.label_1127
.label_1118:
	mov	rax, qword ptr [rbp - 0xb0]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x118]
	jne	.label_1127
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
	jne	.label_1127
.label_1134:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x120], rax
	mov	byte ptr [rbp - 0x124], 0
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1132
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_1114
.label_1132:
	jmp	.label_1119
.label_1127:
	cmp	qword ptr [rbp - 0xb0], 0
	jbe	.label_1126
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0xb0]
	sub	rcx, rax
	mov	qword ptr [rbp - 0xb0], rcx
.label_1144:
	cmp	qword ptr [rbp - 0x138], 0
	jbe	.label_1141
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd0], 1
	mov	byte ptr [rbp - 0x166], cl
	je	.label_1111
	cmp	dword ptr [rbp - 0xcc], 0
	sete	al
	mov	byte ptr [rbp - 0x166], al
.label_1111:
	mov	al, byte ptr [rbp - 0x166]
	xor	al, 0xff
	test	al, 1
	jne	.label_1138
	call	abort
.label_1138:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, -1
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_1144
.label_1141:
	jmp	.label_1131
.label_1126:
	lea	rdi, [rbp - 0xf0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0xd0], 1
	mov	byte ptr [rbp - 0x167], cl
	je	.label_1110
	cmp	dword ptr [rbp - 0xcc], 0
	sete	al
	mov	byte ptr [rbp - 0x167], al
.label_1110:
	mov	al, byte ptr [rbp - 0x167]
	xor	al, 0xff
	test	al, 1
	jne	.label_1117
	call	abort
.label_1117:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
	mov	byte ptr [rbp - 0xe4], 0
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x120], rax
	mov	byte ptr [rbp - 0x124], 0
.label_1131:
	jmp	.label_1119
.label_1119:
	jmp	.label_1135
.label_1114:
	mov	rdi, qword ptr [rbp - 0x40]
	call	freea
	mov	byte ptr [rbp - 1], 1
.label_1130:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d9a0

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
	jae	.label_1157
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_1149
.label_1157:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 3
	cmp	rax, 0xfa1
	jae	.label_1158
	mov	rax, qword ptr [rbp - 0x30]
	lea	rax, [rax*8 + 0x2e]
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	add	rcx, 0x1f
	and	rcx, 0xffffffffffffffe0
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_1164
.label_1158:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 3
	mov	rdi, rax
	call	mmalloca
	mov	qword ptr [rbp - 0x78], rax
.label_1164:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_1149:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1165
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1152
.label_1165:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 1
	mov	qword ptr [rbp - 0x48], 0
	mov	qword ptr [rbp - 0x40], 2
.label_1151:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1148
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x49], dl
.label_1161:
	movzx	eax, byte ptr [rbp - 0x49]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	movzx	esi, byte ptr [rdx + rcx]
	cmp	eax, esi
	jne	.label_1155
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1156
.label_1155:
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1153
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1156
.label_1153:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1161
.label_1156:
	jmp	.label_1150
.label_1150:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1151
.label_1148:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
.label_1146:
	mov	rax, qword ptr [rbp - 0x68]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1147
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	movzx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x68]
	movzx	esi, byte ptr [rax]
	cmp	edx, esi
	jne	.label_1154
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1162
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	jmp	.label_1147
.label_1162:
	jmp	.label_1159
.label_1154:
	cmp	qword ptr [rbp - 0x58], 0
	jbe	.label_1160
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
	jmp	.label_1163
.label_1160:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
.label_1163:
	jmp	.label_1159
.label_1159:
	jmp	.label_1146
.label_1147:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	freea
	mov	byte ptr [rbp - 1], 1
.label_1152:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc30

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xc], 1
	je	.label_1183
	jmp	.label_1170
.label_1183:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax], 1
	je	.label_1174
	jmp	.label_1179
.label_1174:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	jne	.label_1184
	jmp	.label_1177
.label_1184:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x24], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	jmp	.label_1168
.label_1177:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_1186
	jmp	.label_1167
.label_1186:
	movabs	rdi, OFFSET FLAT:label_1046
	movabs	rsi, OFFSET FLAT:label_1172
	mov	edx, 0x96
	movabs	rcx, OFFSET FLAT:label_1173
	call	__assert_fail
.label_1167:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 1
.label_1179:
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
	jne	.label_1169
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_1180
.label_1169:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], -2
	jne	.label_1185
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	call	strlen
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_1176
.label_1185:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_1182
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1171
	jmp	.label_1181
.label_1171:
	movabs	rdi, OFFSET FLAT:label_1055
	movabs	rsi, OFFSET FLAT:label_1172
	mov	edx, 0xb2
	movabs	rcx, OFFSET FLAT:label_1173
	call	__assert_fail
.label_1181:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x24], 0
	jne	.label_1178
	jmp	.label_1175
.label_1178:
	movabs	rdi, OFFSET FLAT:label_1054
	movabs	rsi, OFFSET FLAT:label_1172
	mov	edx, 0xb3
	movabs	rcx, OFFSET FLAT:label_1173
	call	__assert_fail
.label_1175:
	jmp	.label_1182
.label_1182:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_1166
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
.label_1166:
	jmp	.label_1176
.label_1176:
	jmp	.label_1180
.label_1180:
	jmp	.label_1168
.label_1168:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xc], 1
.label_1170:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de90
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
	.align	16
	#Procedure 0x40deb0
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
	jne	.label_1187
	jmp	.label_1188
.label_1187:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 4]
	mov	qword ptr [rax + 4], rcx
	jmp	.label_1189
.label_1188:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, rcx
	call	memset
.label_1189:
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
	.align	16
	#Procedure 0x40df40

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
.label_1201:
	cmp	qword ptr [rbp - 0x1058], 0
	jbe	.label_1196
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
	jne	.label_1200
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_1191
	jmp	.label_1193
.label_1191:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1192
	jmp	.label_1196
.label_1192:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1198
.label_1193:
	jmp	.label_1200
.label_1200:
	lea	rax, [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x1060]
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_1201
.label_1196:
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
	jne	.label_1199
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1198
.label_1199:
	lea	rax, [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x1078]
	sub	rcx, rax
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1204
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1198
.label_1204:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1190
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x38]
	jb	.label_1190
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1197
.label_1190:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1203
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1198
.label_1203:
	jmp	.label_1197
.label_1197:
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
.label_1194:
	cmp	qword ptr [rbp - 0x1098], 0
	jbe	.label_1202
	lea	rsi, [rbp - 0x1090]
	lea	rdx, [rbp - 0x1098]
	lea	rcx, [rbp - 0x10a0]
	lea	r8, [rbp - 0x10a8]
	mov	rdi, qword ptr [rbp - 0x20]
	call	iconv
	mov	qword ptr [rbp - 0x10b0], rax
	cmp	qword ptr [rbp - 0x10b0], -1
	jne	.label_1208
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1209
	jmp	.label_1202
.label_1209:
	jmp	.label_1206
.label_1208:
	jmp	.label_1194
.label_1202:
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
	jne	.label_1205
	jmp	.label_1206
.label_1205:
	cmp	qword ptr [rbp - 0x10a8], 0
	je	.label_1207
	call	abort
.label_1207:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1198
.label_1206:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1195
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
.label_1195:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1198:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10f0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e2f0

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
	ja	.label_1220
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	mov	qword ptr [rbp - 0x28], rax
.label_1220:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1231
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1212
.label_1231:
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
.label_1225:
	lea	rsi, [rbp - 0x38]
	lea	rdx, [rbp - 0x40]
	lea	rcx, [rbp - 0x50]
	lea	r8, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x18]
	call	iconv
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_1230
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1233
	jmp	.label_1213
.label_1233:
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_1215
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_1219
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1211
.label_1219:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	call	realloc
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_1221
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1211
.label_1221:
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
	jmp	.label_1210
.label_1215:
	jmp	.label_1211
.label_1210:
	jmp	.label_1222
.label_1222:
	jmp	.label_1224
.label_1230:
	jmp	.label_1213
.label_1224:
	jmp	.label_1225
.label_1213:
	jmp	.label_1226
.label_1226:
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
	jne	.label_1232
	call	__errno_location
	cmp	dword ptr [rax], 7
	jne	.label_1214
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_1216
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1211
.label_1216:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x90]
	call	realloc
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_1229
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1211
.label_1229:
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
	jmp	.label_1218
.label_1214:
	jmp	.label_1211
.label_1218:
	jmp	.label_1228
.label_1232:
	jmp	.label_1227
.label_1228:
	jmp	.label_1226
.label_1227:
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
	jae	.label_1223
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	realloc
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_1217
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x20], rax
.label_1217:
	jmp	.label_1223
.label_1223:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1212
.label_1211:
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
.label_1212:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e690

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
	je	.label_1236
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1234
.label_1236:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strdup
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1237
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1237:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1238
.label_1234:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	iconv_open
	mov	rsi, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], rsi
	jne	.label_1235
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1238
.label_1235:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	str_cd_iconv
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1240
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
	jmp	.label_1239
.label_1240:
	mov	rdi, qword ptr [rbp - 0x30]
	call	iconv_close
	cmp	eax, 0
	jge	.label_1241
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
	jmp	.label_1238
.label_1241:
	jmp	.label_1239
.label_1239:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1238:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e7d0

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
	je	.label_1243
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1242
.label_1243:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_1242:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e830

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
	jge	.label_1247
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1244
.label_1247:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1248
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1246
.label_1248:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1246
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1246:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1245
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1245:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1244:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e900

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1249
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_1250
.label_1249:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1251
.label_1250:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_1251:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e960

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
	je	.label_1252
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_1252:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e9a0

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
	jne	.label_1253
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1253
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1253
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1255
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1254
.label_1255:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1254
.label_1253:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_1254:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea70

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
	ja	.label_1256
	jmp	.label_1258
.label_1258:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1257
.label_1256:
	jmp	.label_1257
.label_1257:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eac0
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
	jb	.label_1259
	jmp	.label_1261
.label_1261:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1259
	jmp	.label_1260
.label_1260:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1262
	jmp	.label_1259
.label_1259:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1263
.label_1262:
	mov	byte ptr [rbp - 1], 0
.label_1263:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eb30
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
	jb	.label_1264
	jmp	.label_1267
.label_1267:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1265
	jmp	.label_1264
.label_1264:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1266
.label_1265:
	mov	byte ptr [rbp - 1], 0
.label_1266:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eb80
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1268
	jmp	.label_1270
.label_1270:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1269
.label_1268:
	mov	byte ptr [rbp - 1], 0
.label_1269:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ebb0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1271
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1271:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ebe0
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
	jb	.label_1272
	jmp	.label_1274
.label_1274:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1275
	jmp	.label_1272
.label_1272:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1273
.label_1275:
	mov	byte ptr [rbp - 1], 0
.label_1273:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ec30
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1276
	jmp	.label_1278
.label_1278:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1277
.label_1276:
	mov	byte ptr [rbp - 1], 0
.label_1277:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ec70
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1279
	jmp	.label_1281
.label_1281:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1280
.label_1279:
	mov	byte ptr [rbp - 1], 0
.label_1280:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ecb0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1282
	jmp	.label_1284
.label_1284:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1283
.label_1282:
	mov	byte ptr [rbp - 1], 0
.label_1283:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ecf0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1285
	jmp	.label_1287
.label_1287:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1286
.label_1285:
	mov	byte ptr [rbp - 1], 0
.label_1286:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ed30
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_1288
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1290]]
	jmp	rcx
.label_1392:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1289
.label_1288:
	mov	byte ptr [rbp - 1], 0
.label_1289:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ed80
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
	jb	.label_1291
	jmp	.label_1294
.label_1294:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1292
	jmp	.label_1291
.label_1291:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1293
.label_1292:
	mov	byte ptr [rbp - 1], 0
.label_1293:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40edd0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1295
	jmp	.label_1297
.label_1297:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1296
.label_1295:
	mov	byte ptr [rbp - 1], 0
.label_1296:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ee10
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
	jb	.label_1298
	jmp	.label_1300
.label_1300:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1298
	jmp	.label_1299
.label_1299:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1301
	jmp	.label_1298
.label_1298:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1302
.label_1301:
	mov	byte ptr [rbp - 1], 0
.label_1302:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ee80

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1303
	jmp	.label_1305
.label_1305:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1304
.label_1303:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1304:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eec0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1306
	jmp	.label_1308
.label_1308:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1307
.label_1306:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1307:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ef00

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
	jb	.label_1309
	mov	rdi, qword ptr [rbp - 0x18]
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1311
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
	jmp	.label_1310
.label_1311:
	jmp	.label_1309
.label_1309:
	mov	qword ptr [rbp - 8], 0
.label_1310:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40efa0

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
	je	.label_1312
	call	abort
.label_1312:
	mov	rax, qword ptr [rbp - 8]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_1313
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
.label_1313:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f010
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
	jl	.label_1314
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1315
.label_1314:
	mov	edi, dword ptr [rbp - 4]
	call	iswcntrl
	mov	edi, 1
	xor	ecx, ecx
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0xc], edi
.label_1315:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f060

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
	jne	.label_1316
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
	jmp	.label_1317
.label_1316:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_1317:
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
	jne	.label_1319
	jmp	.label_1318
.label_1319:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_1318:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f120

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
	.align	16
	#Procedure 0x40f160

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1324
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
.label_1320:
	lea	rdi, [rbp - 0x58]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x59], cl
	je	.label_1325
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_1325:
	mov	al, byte ptr [rbp - 0x59]
	xor	al, 0xff
	test	al, 1
	jne	.label_1323
	jmp	.label_1322
.label_1323:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_1320
.label_1322:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1321
.label_1324:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 8], rax
.label_1321:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
