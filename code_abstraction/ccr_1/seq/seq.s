	.section	.text
	.align	32
	#Procedure 0x401820

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
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
	#Procedure 0x401970

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019a0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_19
	nop	
.label_31:
	mov	edi, OFFSET FLAT:label_23
	call	strcmp
	test	eax, eax
	je	.label_29
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_31
.label_29:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_23
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_20
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_23
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_27
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ac0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r13, rsi
	mov	r15d, edi
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_66]]
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_67]]
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_66]]
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_67]]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_27
	call	setlocale
	test	rax, rax
	setne	byte ptr [byte ptr [rip + locale_ok]]
	mov	edi, OFFSET FLAT:label_50
	mov	esi, OFFSET FLAT:label_51
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_50
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + equal_width]],  0
	mov	qword ptr [word ptr [rip + separator]], OFFSET FLAT:label_53
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	xor	ebp, ebp
	cmp	eax, r15d
	jge	.label_33
	xor	ebp, ebp
.label_76:
	cdqe	
	mov	rax, qword ptr [r13 + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_59
	movsx	eax, byte ptr [rax + 1]
	cmp	eax, 0x2e
	je	.label_33
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_33
.label_59:
	mov	edx, OFFSET FLAT:label_63
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_65
	cmp	eax, 0x77
	je	.label_68
	cmp	eax, 0x73
	je	.label_70
	cmp	eax, 0x66
	jne	.label_38
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_49
.label_68:
	mov	byte ptr [byte ptr [rip + equal_width]],  1
	jmp	.label_49
.label_70:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + separator]],  rax
.label_49:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r15d
	jl	.label_76
	jmp	.label_33
.label_65:
	cmp	eax, -1
	jne	.label_35
.label_33:
	mov	ebx, r15d
	sub	ebx,  dword ptr [dword ptr [rip + optind]]
	je	.label_39
	cmp	ebx, 4
	jae	.label_57
	xor	r12d, r12d
	test	rbp, rbp
	mov	r14d, 0
	je	.label_45
	lea	rsi, [rsp + 0xe0]
	mov	rdi, rbp
	call	long_double_format
	xor	r12d, r12d
	test	rax, rax
	mov	r14d, 0
	je	.label_45
	cmp	byte ptr [byte ptr [rip + equal_width]],  1
	je	.label_73
	mov	r12b, 1
	mov	r14, rax
.label_45:
	movsxd	rbp,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rbp*8]
	call	all_digits_p
	test	al, al
	je	.label_55
	cmp	ebx, 1
	je	.label_56
	mov	rdi, qword ptr [r13 + rbp*8 + 8]
	call	all_digits_p
	test	al, al
	je	.label_55
	cmp	ebx, 3
	jae	.label_60
.label_56:
	mov	al,  byte ptr [byte ptr [rip + equal_width]]
	or	al, r12b
	test	al, 1
	je	.label_61
	jmp	.label_55
.label_60:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rax, qword ptr [r13 + rax*8 + 8]
	cmp	byte ptr [rax], 0x31
	jne	.label_55
	cmp	byte ptr [rax + 1], 0
	jne	.label_55
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8 + 0x10]
	call	all_digits_p
	mov	cl,  byte ptr [byte ptr [rip + equal_width]]
	or	cl, r12b
	test	cl, 1
	jne	.label_55
	xor	al, 1
	jne	.label_55
.label_61:
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	call	strlen
	cmp	rax, 1
	jne	.label_55
	mov	edi, OFFSET FLAT:label_74
	cmp	ebx, 1
	je	.label_75
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8]
.label_75:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	lea	eax, [rbx + rax - 1]
	mov	rsi, qword ptr [r13 + rax*8]
	call	seq_fast
	test	al, al
	jne	.label_43
.label_55:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsi, qword ptr [r13 + rax*8]
	lea	rdi, [rsp + 0x70]
	call	scan_arg
	cmp	dword ptr [dword ptr [rip + optind]],  r15d
	jge	.label_52
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmmword ptr [rsp + 0xd0], xmm1
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsi, qword ptr [r13 + rax*8]
	lea	rdi, [rsp + 0x70]
	call	scan_arg
	cmp	dword ptr [dword ptr [rip + optind]],  r15d
	jge	.label_52
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	fld	xword ptr [rsp + 0xa0]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_58
	jnp	.label_69
.label_58:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsi, qword ptr [r13 + rax*8]
	lea	rdi, [rsp + 0x70]
	call	scan_arg
.label_52:
	fld	xword ptr [rsp + 0xc0]
	fldz	
	fld	st(1)
	fmul	st(1)
	fucomip	st(1)
	jne	.label_36
	jp	.label_36
	cmp	dword ptr [rsp + 0xd8], 0
	jne	.label_36
	cmp	dword ptr [rsp + 0xb8], 0
	jne	.label_36
	fxch	st(1)
	fucomip	st(1)
	fldz	
	fxch	st(1)
	jb	.label_36
	fstp	st(1)
	mov	eax, dword ptr [rsp + 0x88]
	test	eax, eax
	fldz	
	fxch	st(1)
	jne	.label_36
	fstp	st(1)
	fld	xword ptr [rsp + 0xa0]
	fld1	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	fldz	
	fxch	st(1)
	jne	.label_36
	jp	.label_36
	fstp	st(1)
	fld	xword ptr [rsp + 0x70]
	fucomip	st(1)
	fstp	st(0)
	fldz	
	fldz	
	jb	.label_36
	fstp	st(1)
	fstp	st(0)
	or	r12b,  byte ptr [byte ptr [rip + equal_width]]
	test	r12b, 1
	fldz	
	fldz	
	jne	.label_36
	fstp	st(1)
	fstp	st(0)
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	call	strlen
	cmp	rax, 1
	fldz	
	fldz	
	jne	.label_36
	fstp	st(1)
	fstp	st(0)
	fld	xword ptr [rsp + 0xc0]
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x98]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_64
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	js	.label_77
	fld	xword ptr [rsp + 0x70]
	fldz	
	fld	st(1)
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_72
	jp	.label_72
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x68]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_64
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	jns	.label_37
.label_77:
	call	xalloc_die
.label_72:
	fstp	st(0)
	mov	edi, OFFSET FLAT:label_40
	call	xstrdup
	mov	qword ptr [rsp + 0x68], rax
.label_37:
	mov	rdi, qword ptr [rsp + 0x98]
	cmp	byte ptr [rdi], 0x2d
	je	.label_44
	mov	rsi, qword ptr [rsp + 0x68]
	cmp	byte ptr [rsi], 0x2d
	je	.label_44
	call	seq_fast
	test	al, al
	jne	.label_43
.label_44:
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
	fldz	
	fldz	
.label_36:
	fstp	st(1)
	fstp	st(0)
	test	r14, r14
	jne	.label_48
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0xa0]
	movaps	xmm1, xmmword ptr [rsp + 0xb0]
	movaps	xmmword ptr [rsp + 0x30], xmm1
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0xc0]
	movaps	xmm1, xmmword ptr [rsp + 0xd0]
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	call	get_default_format
	mov	r14, rax
.label_48:
	fld	xword ptr [rsp + 0xc0]
	fld	xword ptr [rsp + 0xa0]
	fld	xword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xe8]
	fstp	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp + 0x10]
	fstp	xword ptr [rsp]
	mov	rdi, r14
	call	print_numbers
.label_43:
	xor	eax, eax
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_35:
	cmp	eax, 0xffffff7d
	je	.label_34
	cmp	eax, 0xffffff7e
	jne	.label_38
	xor	edi, edi
	call	usage
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	jmp	.label_42
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8 + 0x18]
.label_47:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_34:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_23
	mov	edx, OFFSET FLAT:label_21
	mov	r8d, OFFSET FLAT:label_54
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_38:
	mov	edi, 1
	call	usage
.label_73:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
.label_42:
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
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8 - 8]
	jmp	.label_47
	.section	.text
	.align	32
	#Procedure 0x4020f0

	.globl long_double_format
	.type long_double_format, @function
long_double_format:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r12, rdi
	xor	ebp, ebp
	xor	ebx, ebx
	jmp	.label_89
	nop	word ptr [rax + rax]
.label_94:
	inc	rbp
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	lea	rbx, [rcx + rbx + 1]
.label_89:
	movzx	eax, byte ptr [r12 + rbx]
	cmp	al, 0x25
	jne	.label_88
	cmp	byte ptr [r12 + rbx + 1], 0x25
	jne	.label_91
	movzx	eax, byte ptr [r12 + rbx]
.label_88:
	test	al, al
	jne	.label_94
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	jmp	.label_82
.label_91:
	lea	rdi, [r12 + rbx + 1]
	inc	rbx
	mov	esi, OFFSET FLAT:label_79
	call	strspn
	mov	r14, rax
	add	r14, rbx
	lea	rdi, [r12 + r14]
	mov	esi, OFFSET FLAT:label_86
	call	strspn
	mov	r15, rax
	add	r15, r14
	cmp	byte ptr [r12 + r15], 0x2e
	jne	.label_92
	lea	rdi, [r12 + r15 + 1]
	mov	esi, OFFSET FLAT:label_86
	call	strspn
	lea	r15, [rax + r15 + 1]
.label_92:
	xor	eax, eax
	cmp	byte ptr [r12 + r15], 0x4c
	sete	al
	lea	rbx, [rax + r15]
	movsx	esi, byte ptr [r12 + rbx]
	test	esi, esi
	je	.label_83
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r13
	mov	edi, OFFSET FLAT:label_90
	mov	edx, 9
	call	memchr
	test	rax, rax
	je	.label_78
	lea	r13, [r12 + r15]
	inc	rbx
	xor	r14d, r14d
	jmp	.label_80
	nop	word ptr cs:[rax + rax]
.label_96:
	inc	r14
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	lea	rbx, [rcx + rbx + 1]
.label_80:
	movzx	eax, byte ptr [r12 + rbx]
	cmp	al, 0x25
	jne	.label_93
	cmp	byte ptr [r12 + rbx + 1], 0x25
	jne	.label_84
	movzx	eax, byte ptr [r12 + rbx]
.label_93:
	test	al, al
	jne	.label_96
	add	rbx, 2
	mov	rdi, rbx
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15], 0x4c
	lea	rdi, [rbx + r15 + 1]
	add	r13, qword ptr [rsp + 8]
	mov	rsi, r13
	call	strcpy
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	qword ptr [rax + 8], r14
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_84:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
.label_82:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	jmp	.label_82
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	movsx	r8d, byte ptr [r12 + rbx]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022d0

	.globl all_digits_p
	.type all_digits_p, @function
all_digits_p:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movsx	eax, byte ptr [rbx]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_97
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_86
	mov	rdi, rbx
	call	strspn
	cmp	r14, rax
	sete	al
	jmp	.label_98
.label_97:
	xor	eax, eax
.label_98:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402310

	.globl seq_fast
	.type seq_fast, @function
seq_fast:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rsi
	movzx	eax, byte ptr [rbx]
	mov	ebp, 0x69
	sub	ebp, eax
	jne	.label_104
	movzx	eax, byte ptr [rbx + 1]
	mov	ebp, 0x6e
	sub	ebp, eax
	jne	.label_104
	movzx	eax, byte ptr [rbx + 2]
	mov	ebp, 0x66
	sub	ebp, eax
	jne	.label_104
	movzx	ebp, byte ptr [rbx + 3]
	neg	ebp
.label_104:
	call	trim_leading_zeros
	mov	r15, rax
	mov	rdi, rbx
	call	trim_leading_zeros
	mov	rbx, rax
	mov	rdi, r15
	call	strlen
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x14], ebp
	test	ebp, ebp
	mov	qword ptr [rsp + 8], rax
	je	.label_108
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
.label_108:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rax, qword ptr [rsp + 8]
	inc	rax
	cmp	rax, rcx
	mov	qword ptr [rsp + 0x28], rcx
	cmovbe	rax, rcx
	cmp	rax, 0x1f
	mov	r12d, 0x1f
	cmova	r12, rax
	lea	r14, [r12 + 1]
	mov	rdi, r14
	call	xmalloc
	mov	r13, rax
	lea	rbp, [r13 + r12]
	mov	rdx, qword ptr [rsp + 8]
	sub	rbp, rdx
	inc	rdx
	mov	rdi, rbp
	mov	rsi, r15
	call	memcpy
	xor	ebx, ebx
	cmp	dword ptr [rsp + 0x14], 0
	mov	qword ptr [rsp + 0x18], rbp
	mov	r15d, 0
	je	.label_102
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	add	rbx, r12
	mov	rbp, qword ptr [rsp + 0x28]
	sub	rbx, rbp
	lea	rdx, [rbp + 1]
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x20]
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, rbx
	mov	rcx, rbp
	call	cmp
	test	eax, eax
	jle	.label_102
	xor	ebp, ebp
	jmp	.label_103
.label_102:
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x38], r15
	mov	qword ptr [rsp + 0x20], r13
	add	r14, r14
	cmp	r14, 0x2000
	mov	ebp, 0x2000
	cmovae	rbp, r14
	mov	rdi, rbp
	call	xmalloc
	mov	rbx, rax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x30], rbp
	lea	r13, [rbx + rbp]
	mov	rcx, -1
	mov	rdi, rbx
	call	__mempcpy_chk
	mov	r15, rax
	mov	r14d, dword ptr [rsp + 0x14]
	nop	dword ptr [rax]
.label_99:
	test	r14d, r14d
	je	.label_101
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x28]
	call	cmp
	test	eax, eax
	jns	.label_105
.label_101:
	mov	rax,  qword ptr [word ptr [rip + separator]]
	movzx	eax, byte ptr [rax]
	mov	byte ptr [r15], al
	inc	r15
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 8]
	call	incr
	cmp	qword ptr [rsp + 8], r12
	jne	.label_107
	lea	rsi, [r12 + r12 + 1]
	lea	r12, [r12 + r12]
	mov	rdi, qword ptr [rsp + 0x20]
	call	xrealloc
	mov	rdx, qword ptr [rsp + 8]
	lea	rbp, [rax + rdx]
	inc	rdx
	mov	rdi, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, rax
	call	memmove
	mov	qword ptr [rsp + 0x18], rbp
	lea	r14, [r12 + r12 + 2]
	cmp	qword ptr [rsp + 0x30], r14
	jae	.label_100
	sub	r15, rbx
	mov	rdi, rbx
	mov	rsi, r14
	call	xrealloc
	mov	rbx, rax
	add	r15, rbx
	lea	r13, [rbx + r14]
	mov	qword ptr [rsp + 0x30], r14
.label_100:
	mov	r14d, dword ptr [rsp + 0x14]
.label_107:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 8]
	mov	rcx, -1
	mov	rdi, r15
	mov	rdx, rbp
	call	__mempcpy_chk
	mov	r15, rax
	not	rbp
	add	rbp, r13
	cmp	rbp, r15
	jae	.label_99
	sub	r15, rbx
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r15
	call	fwrite_unlocked
	cmp	rax, 1
	mov	r15, rbx
	je	.label_99
	call	io_error
.label_105:
	mov	byte ptr [r15], 0xa
	inc	r15
	sub	r15, rbx
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r15
	call	fwrite_unlocked
	mov	bpl, 1
	cmp	rax, 1
	mov	r13, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x38]
	jne	.label_106
.label_103:
	mov	rdi, r13
	call	free
	mov	rdi, r15
	call	free
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_106:
	call	io_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402600

	.globl scan_arg
	.type scan_arg, @function
scan_arg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rsi
	mov	r14, rdi
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	mov	rdi, r12
	call	xstrtold
	test	al, al
	je	.label_114
	fld	xword ptr [rsp]
	fucomip	st(0)
	jp	.label_112
	call	__ctype_b_loc
	mov	rbx, qword ptr [rax]
	dec	r12
	nop	word ptr cs:[rax + rax]
.label_118:
	movsx	ebp, byte ptr [r12 + 1]
	inc	r12
	mov	edi, ebp
	call	to_uchar
	movzx	eax, al
	movzx	eax, word ptr [rbx + rax*2]
	and	eax, 0x2000
	cmp	ebp, 0x2b
	je	.label_118
	test	ax, ax
	jne	.label_118
	mov	qword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0x7fffffff
	mov	esi, 0x2e
	mov	rdi, r12
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_111
	mov	esi, 0x70
	mov	rdi, r12
	call	strchr
	test	rax, rax
	jne	.label_111
	mov	dword ptr [rsp + 0x18], 0
.label_111:
	mov	esi, 0x78
	mov	edx, 0x58
	mov	rdi, r12
	call	__strcspn_c2
	cmp	byte ptr [rax + r12], 0
	jne	.label_119
	fld	xword ptr [rsp]
	fldz	
	fmul	st(1), st(0)
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_119
	jp	.label_119
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	test	r15, r15
	je	.label_126
	lea	rdi, [r15 + 1]
	mov	esi, 0x65
	mov	edx, 0x45
	call	__strcspn_c2
	mov	rbx, rax
	cmp	rbx, 0x7fffffff
	ja	.label_110
	mov	dword ptr [rsp + 0x18], ebx
	mov	rax, -1
	test	rbx, rbx
	je	.label_113
.label_110:
	mov	al, 1
	cmp	r15, r12
	je	.label_117
	movsx	eax, byte ptr [r15 - 1]
	add	eax, -0x30
	cmp	eax, 9
	seta	al
.label_117:
	movzx	eax, al
.label_113:
	add	qword ptr [rsp + 0x10], rax
.label_126:
	mov	esi, 0x65
	mov	rdi, r12
	call	strchr
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_120
	mov	esi, 0x45
	mov	rdi, r12
	call	strchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_119
.label_120:
	lea	rdi, [rbp + 1]
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	mov	r13, rax
	test	r13, r13
	js	.label_109
	movsxd	rax, dword ptr [rsp + 0x18]
	cmp	rax, r13
	cmovg	rax, r13
.label_109:
	sub	dword ptr [rsp + 0x18], eax
	mov	rdi, r12
	call	strlen
	mov	rcx, rbp
	sub	rcx, r12
	sub	rcx, rax
	add	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x10], rcx
	test	r13, r13
	js	.label_115
	test	r15, r15
	je	.label_116
	test	rbx, rbx
	je	.label_116
	mov	eax, dword ptr [rsp + 0x18]
	test	eax, eax
	jne	.label_116
	dec	rcx
	mov	qword ptr [rsp + 0x10], rcx
.label_116:
	cmp	rbx, r13
	cmovae	rbx, r13
	sub	r13, rbx
	jmp	.label_121
.label_115:
	test	r15, r15
	je	.label_123
	inc	r15
	cmp	rbp, r15
	jne	.label_124
.label_123:
	inc	rcx
	mov	qword ptr [rsp + 0x10], rcx
.label_124:
	neg	r13
.label_121:
	add	qword ptr [rsp + 0x10], r13
.label_119:
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmmword ptr [r14 + 0x10], xmm1
	movaps	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_112:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	rsi, r12
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028c0

	.globl get_default_format
	.type get_default_format, @function
get_default_format:
	push	r14
	push	rbx
	push	rax
	mov	eax, dword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x58]
	cmp	eax, r9d
	cmovge	r9d, eax
	mov	ebx, OFFSET FLAT:label_128
	cmp	r9d, 0x7fffffff
	je	.label_129
	lea	r14, [rsp + 0x60]
	mov	esi, dword ptr [r14 + 0x18]
	mov	ebx, OFFSET FLAT:label_128
	cmp	esi, 0x7fffffff
	je	.label_129
	cmp	byte ptr [byte ptr [rip + equal_width]],  1
	jne	.label_130
	lea	r10, [rsp + 0x20]
	mov	edi, r9d
	sub	edi, eax
	movsxd	rdi, edi
	mov	ebx, r9d
	sub	ebx, esi
	movsxd	rbx, ebx
	test	r9d, r9d
	sete	r8b
	setne	r11b
	test	esi, esi
	setne	dl
	sete	cl
	and	dl, r8b
	and	cl, r11b
	movzx	ecx, cl
	movzx	edx, dl
	sub	rbx, rdx
	add	rbx, rcx
	add	rbx, qword ptr [r14 + 0x10]
	test	eax, eax
	sete	al
	and	al, r11b
	movzx	r8d, al
	add	r8, rdi
	add	r8, qword ptr [r10 + 0x10]
	cmp	r8, rbx
	cmovbe	r8, rbx
	mov	ebx, OFFSET FLAT:label_128
	cmp	r8, 0x7fffffff
	ja	.label_129
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:label_131
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_129
.label_130:
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:label_132
	xor	eax, eax
	mov	r8d, r9d
	call	__sprintf_chk
.label_129:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029d0

	.globl print_numbers
	.type print_numbers, @function
print_numbers:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	fld	xword ptr [rsp + 0xe0]
	fld	xword ptr [rsp + 0xd0]
	fld	xword ptr [rsp + 0xc0]
	fxch	st(2)
	fucomi	st(2)
	seta	al
	fld	st(0)
	fstp	xword ptr [rsp + 0x4c]
	fld	st(2)
	fstp	xword ptr [rsp + 0x1c]
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	seta	cl
	fldz	
	fld	st(1)
	fstp	xword ptr [rsp + 0x64]
	fucomip	st(1)
	fstp	st(0)
	ja	.label_139
	mov	eax, ecx
.label_139:
	test	al, al
	jne	.label_142
	fld	xword ptr [rsp + 0x1c]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fldz	
	js	.label_137
	fstp	st(0)
	fld1	
	xor	r12d, r12d
	fld	xword ptr [rsp + 0x1c]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_141:
	test	r12b, r12b
	jne	.label_140
	fld	xword ptr [rsp + 0x64]
	fld	xword ptr [rsp + 0x28]
	fmul	st(1)
	fld	xword ptr [rsp + 0x1c]
	faddp	st(1)
	fld	xword ptr [rsp + 0x4c]
	fucomi	st(1)
	seta	r12b
	fld	st(1)
	fstp	xword ptr [rsp + 0x34]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	al
	fldz	
	fucomip	st(1)
	fstp	st(0)
	ja	.label_145
	mov	r12b, al
.label_145:
	test	r12b, r12b
	je	.label_143
	fstp	xword ptr [rsp + 0x58]
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	je	.label_144
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_134
	call	setlocale
.label_144:
	fld	xword ptr [rsp + 0x34]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x10]
	mov	rdx, rbx
	call	__asprintf_chk
	mov	ebp, eax
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	je	.label_138
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_27
	call	setlocale
.label_138:
	test	ebp, ebp
	js	.label_136
	movsxd	rax, ebp
	sub	rax, r14
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r15
	xor	r13d, r13d
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	lea	rdx, [rsp + 0x70]
	call	xstrtold
	fld	xword ptr [rsp + 0x70]
	test	al, al
	je	.label_146
	fld	xword ptr [rsp + 0x4c]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_133
	jp	.label_133
	mov	qword ptr [rsp + 0x40], 0
	fld	xword ptr [rsp + 0x58]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x40]
	mov	rdx, rbx
	call	__asprintf_chk
	test	eax, eax
	js	.label_136
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	setne	r13b
	mov	rdi, rbp
	call	free
	jmp	.label_133
.label_146:
	fstp	st(0)
.label_133:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	test	r13b, r13b
	fldz	
	je	.label_140
.label_143:
	fstp	st(0)
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_135
	fld1	
	fld	xword ptr [rsp + 0x28]
	faddp	st(1)
	fstp	xword ptr [rsp + 0x28]
	fld	xword ptr [rsp + 0x34]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fld	xword ptr [rsp + 0x34]
	jns	.label_141
.label_137:
	fstp	st(0)
	call	io_error
.label_140:
	fstp	st(0)
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:terminator
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_135
.label_142:
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_135:
	call	io_error
.label_136:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c40

	.globl trim_leading_zeros
	.type trim_leading_zeros, @function
trim_leading_zeros:
	xor	eax, eax
	jmp	.label_147
	nop	word ptr cs:[rax + rax]
.label_148:
	inc	rax
.label_147:
	movzx	ecx, byte ptr [rdi + rax]
	cmp	cl, 0x30
	je	.label_148
	test	cl, cl
	jne	.label_149
	lea	rcx, [rdi + rax]
	test	rax, rax
	lea	rax, [rdi + rax - 1]
	cmove	rax, rcx
	ret	
.label_149:
	add	rdi, rax
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c80

	.globl cmp
	.type cmp, @function
cmp:
	mov	eax, 0xffffffff
	cmp	rsi, rcx
	jb	.label_150
	mov	eax, 1
	cmp	rcx, rsi
	jae	.label_151
.label_150:
	ret	
.label_151:
	mov	rsi, rdx
	jmp	strcmp
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ca0

	.globl incr
	.type incr, @function
incr:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [rsi]
	lea	rcx, [r8 + rcx - 1]
	nop	dword ptr [rax + rax]
.label_153:
	movzx	eax, byte ptr [rcx]
	mov	edx, eax
	inc	dl
	mov	byte ptr [rcx], dl
	cmp	al, 0x39
	jl	.label_152
	mov	byte ptr [rcx], 0x30
	dec	rcx
	cmp	rcx, r8
	jae	.label_153
	mov	rax, qword ptr [rdi]
	lea	rcx, [rax - 1]
	mov	qword ptr [rdi], rcx
	mov	byte ptr [rax - 1], 0x31
	inc	qword ptr [rsi]
.label_152:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ce0

	.globl io_error
	.type io_error, @function
io_error:
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402d20

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d30

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 8]
	call	strtold
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	je	.label_156
	fstp	xword ptr [rsp + 0x1c]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp + 8], rax
	jae	.label_155
	mov	qword ptr [rsp + 8], rax
	jmp	.label_156
.label_155:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0x1c]
.label_156:
	test	r14, r14
	je	.label_157
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_157:
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402db0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dc0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402dd0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_158
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_160
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_160
.label_158:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_159
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_160:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_154
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_161
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_162
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_159:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_161:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_163
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_167
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_169
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_169
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_165
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_165:
	mov	rbx, r14
.label_169:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_167:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_168
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f40
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
	#Procedure 0x402f80
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
	#Procedure 0x402f90
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
	#Procedure 0x402fa0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
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
	#Procedure 0x402fe0
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
	#Procedure 0x403000

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_170
	test	rdx, rdx
	je	.label_170
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_170:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403030
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
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
	#Procedure 0x4030b0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb0], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_248:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_252
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_256]]
.label_506:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_262
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_202
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_507:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_272
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_272
	xor	r14d, r14d
.label_283:
	cmp	r14, r11
	jae	.label_279
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_279:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_283
.label_272:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_174
.label_499:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_174
.label_502:
	mov	al, 1
.label_500:
	mov	r12b, 1
.label_503:
	test	r12b, 1
	mov	cl, 1
	je	.label_189
	mov	ecx, eax
.label_189:
	mov	al, cl
.label_501:
	test	r12b, 1
	jne	.label_192
	test	r11, r11
	je	.label_194
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_194:
	mov	r14d, 1
	jmp	.label_199
.label_192:
	xor	r14d, r14d
.label_199:
	mov	ecx, OFFSET FLAT:label_202
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_174
.label_504:
	test	r12b, 1
	jne	.label_207
	test	r11, r11
	je	.label_209
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_209:
	mov	r14d, 1
	jmp	.label_214
.label_505:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_216
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_174
.label_207:
	xor	r14d, r14d
.label_214:
	mov	eax, OFFSET FLAT:label_216
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_174:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_231
	nop	dword ptr [rax]
.label_269:
	inc	rsi
.label_231:
	cmp	rbp, -1
	je	.label_264
	cmp	rsi, rbp
	jne	.label_277
	jmp	.label_268
	nop	word ptr cs:[rax + rax]
.label_264:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_268
.label_277:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_274
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_276
	cmp	rbp, -1
	jne	.label_276
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_276:
	cmp	rbx, rbp
	jbe	.label_173
.label_274:
	xor	r8d, r8d
.label_200:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_175
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_179]]
.label_435:
	test	rsi, rsi
	jne	.label_172
	jmp	.label_185
	nop	
.label_173:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_197
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_200
	jmp	.label_208
.label_197:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_200
.label_439:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_217
	test	rsi, rsi
	jne	.label_218
	cmp	rbp, 1
	je	.label_185
	xor	r13d, r13d
	jmp	.label_180
.label_428:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_224
	cmp	byte ptr [rsp + 7], 0
	jne	.label_177
	cmp	r12d, 2
	jne	.label_230
	mov	eax, r9d
	and	al, 1
	jne	.label_230
	cmp	r14, r11
	jae	.label_184
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_184:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_235
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_235:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_241
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_241:
	add	r14, 3
	mov	r9b, 1
.label_230:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_247
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_247:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_250
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_250
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_250
	cmp	r14, r11
	jae	.label_236
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_236:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_225
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_225:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_180
.label_429:
	mov	bl, 0x62
	jmp	.label_271
.label_430:
	mov	cl, 0x74
	jmp	.label_273
.label_431:
	mov	bl, 0x76
	jmp	.label_271
.label_432:
	mov	bl, 0x66
	jmp	.label_271
.label_433:
	mov	cl, 0x72
	jmp	.label_273
.label_436:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_278
	cmp	byte ptr [rsp + 7], 0
	jne	.label_177
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_284
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_284:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_183
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_183:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_186
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_186:
	add	r14, 3
	xor	r9d, r9d
.label_278:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_180
.label_437:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_195
	cmp	r12d, 2
	jne	.label_172
	cmp	byte ptr [rsp + 7], 0
	je	.label_172
	jmp	.label_177
.label_438:
	cmp	r12d, 2
	jne	.label_239
	cmp	byte ptr [rsp + 7], 0
	jne	.label_177
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_171
.label_175:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_280
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_201:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_229
	test	r8b, r8b
	je	.label_229
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_180
.label_217:
	test	rsi, rsi
	jne	.label_249
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_249
.label_185:
	mov	dl, 1
.label_434:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_177
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_180:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_257
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_259
	jmp	.label_211
	nop	word ptr cs:[rax + rax]
.label_257:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_211
.label_259:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_265
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_171
	jmp	.label_223
	nop	dword ptr [rax]
.label_211:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_223
	jmp	.label_171
.label_265:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_223
.label_224:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_269
	xor	r15d, r15d
	jmp	.label_172
.label_239:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_273
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_171
.label_273:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_177
.label_271:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_180
	nop	word ptr cs:[rax + rax]
.label_223:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_177
	cmp	r12d, 2
	jne	.label_190
	mov	eax, r9d
	and	al, 1
	jne	.label_190
	cmp	r14, r11
	jae	.label_193
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_193:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_251
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_251:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_204
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_204:
	add	r14, 3
	mov	r9b, 1
.label_190:
	cmp	r14, r11
	jae	.label_206
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_206:
	inc	r14
	jmp	.label_210
.label_280:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_215
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_215:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_213:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_234
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_238
	cmp	rbp, -2
	je	.label_242
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_245
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_240:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_227
	bt	rsi, rdx
	jb	.label_208
.label_227:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_240
.label_245:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_267
	xor	r13d, r13d
.label_267:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_213
	jmp	.label_201
.label_250:
	xor	r13d, r13d
	jmp	.label_180
.label_249:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_180
.label_195:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_172
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_172
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_172
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_196
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_260
	cmp	byte ptr [rsp + 7], 0
	jne	.label_177
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_258
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_258:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_285
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_285:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_198
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_198:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_203
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_203:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_180
.label_172:
	xor	eax, eax
.label_218:
	xor	r13d, r13d
	jmp	.label_180
.label_229:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_212
	nop	word ptr cs:[rax + rax]
.label_281:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_212:
	test	r8b, r8b
	je	.label_219
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_220
	cmp	r14, r11
	jae	.label_221
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_221:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_220
	nop	dword ptr [rax]
.label_219:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_208
	cmp	r12d, 2
	jne	.label_233
	mov	eax, r9d
	and	al, 1
	jne	.label_233
	cmp	r14, r11
	jae	.label_237
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_237:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_226
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_226:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_246
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_246:
	add	r14, 3
	mov	r9b, 1
.label_233:
	cmp	r14, r11
	jae	.label_282
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_282:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_188
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_188:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_261
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_261:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_220:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_171
	test	r9b, 1
	je	.label_182
	mov	ebx, eax
	and	bl, 1
	jne	.label_182
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_275
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_275:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_244
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_244:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_182:
	cmp	r14, r11
	jae	.label_281
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_281
	nop	word ptr cs:[rax + rax]
.label_171:
	test	r9b, 1
	je	.label_176
	and	al, 1
	jne	.label_176
	cmp	r14, r11
	jae	.label_178
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_178:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_228
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_228:
	add	r14, 2
	xor	r9d, r9d
.label_176:
	mov	ebx, r15d
.label_210:
	cmp	r14, r11
	jae	.label_187
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_187:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_269
.label_238:
	xor	r13d, r13d
.label_234:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_201
.label_242:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_205
	mov	rsi, qword ptr [rsp + 0x50]
.label_270:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_254
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_270
	xor	r13d, r13d
	jmp	.label_201
.label_205:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_201
.label_254:
	xor	r13d, r13d
	jmp	.label_201
.label_196:
	xor	r13d, r13d
	jmp	.label_180
.label_260:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_180
	nop	dword ptr [rax + rax]
.label_268:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_222
	or	dl, al
	je	.label_208
.label_222:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_232
	or	dl, al
	jne	.label_232
	test	r10b, 1
	jne	.label_243
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_232
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_248
.label_232:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_253
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_255
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_255
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_266:
	cmp	r14, r11
	jae	.label_263
	mov	byte ptr [rcx + r14], al
.label_263:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_266
	jmp	.label_255
.label_177:
	mov	qword ptr [rsp + 0x20], rbp
.label_208:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_191:
	mov	r14, rax
.label_181:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_243:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_191
.label_253:
	mov	rcx, qword ptr [rsp + 8]
.label_255:
	cmp	r14, r11
	jae	.label_181
	mov	byte ptr [rcx + r14], 0
	jmp	.label_181
.label_252:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e70
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e80

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_286
	mov	qword ptr [rax], rbx
.label_286:
	mov	rax, r14
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
	#Procedure 0x403f70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_287
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_290:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_290
.label_287:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_291
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_288]], OFFSET FLAT:slot0
.label_291:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_289
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_289:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404010

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404020

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_292
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_295
	cmp	r12d, 0x7fffffff
	je	.label_297
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_293
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_293:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_295:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_298
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_294
.label_298:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_296
	mov	rdi, r14
	call	free
.label_296:
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_294:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_292:
	call	abort
.label_297:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041e0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041f0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404200
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	32
	#Procedure 0x404210

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404250

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_299
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_299:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042b0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042f0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404310
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404330

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_300]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_301]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_302]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043d0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404420

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404430

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_300]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_301]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_302]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4044c0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044f0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x404500

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404510

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404520

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_308
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_304
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_309
	mov	eax, OFFSET FLAT:label_310
	jmp	.label_307
.label_304:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_303
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_305
	mov	eax, OFFSET FLAT:label_306
	jmp	.label_307
.label_303:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_216
	mov	eax, OFFSET FLAT:label_202
.label_307:
	cmove	rax, rcx
.label_308:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_312
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_313
	jmp	.label_311
.label_312:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_311
.label_313:
	mov	eax, 1
	test	bpl, bpl
	je	.label_311
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_311:
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
	#Procedure 0x404660

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_316
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_314
	jmp	.label_315
.label_316:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_315
.label_314:
	mov	eax, 1
	test	bpl, bpl
	je	.label_315
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_315:
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
	#Procedure 0x4046f0

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_317
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_319
	jmp	.label_318
.label_317:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_318
.label_319:
	mov	eax, 1
	test	bpl, bpl
	je	.label_318
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_318:
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
	#Procedure 0x404770

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_322
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_321
	jmp	.label_320
.label_322:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_320
.label_321:
	mov	eax, 1
	test	bpl, bpl
	je	.label_320
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_320:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_325
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_323
	jmp	.label_324
.label_325:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_324
.label_323:
	mov	eax, 1
	test	bpl, bpl
	je	.label_324
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_324:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404840

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_326
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_328
	jmp	.label_327
.label_326:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_327
.label_328:
	mov	eax, 1
	test	bpl, bpl
	je	.label_327
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_327:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404890

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_331
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_330
	jmp	.label_329
.label_331:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_329
.label_330:
	mov	eax, 1
	test	bpl, bpl
	je	.label_329
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_329:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048e0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_334
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_333
	jmp	.label_332
.label_334:
	mov	eax, 1
	test	cl, cl
	je	.label_332
.label_333:
	xor	eax, eax
.label_332:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404910

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_345
	mov	edx, OFFSET FLAT:label_350
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_337
.label_345:
	mov	edx, OFFSET FLAT:label_339
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_337:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
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
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_346
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_347]]
.label_450:
	add	rsp, 8
	jmp	.label_338
.label_346:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_338
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_452:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_338
.label_455:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_338
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_338
.label_457:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_338
.label_459:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_338
.label_458:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_338:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c70
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_354:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_354
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_356:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_355
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_357
	nop	dword ptr [rax]
.label_355:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_357:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_358
	inc	r9
	cmp	r9, 0xa
	jb	.label_356
.label_358:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d00

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_359
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_359:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_361
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e10
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_364
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_364:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e40

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_365
	test	rax, rax
	je	.label_366
.label_365:
	pop	rbx
	ret	
.label_366:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e60
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_367
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_367:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e90

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_368
	test	rbx, rbx
	jne	.label_368
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_368:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_370
	test	rax, rax
	je	.label_369
.label_370:
	pop	rbx
	ret	
.label_369:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404ec0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_371
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_374
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_372
.label_371:
	test	rcx, rcx
	jne	.label_375
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_375:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_373
.label_372:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_374:
	call	xalloc_die
.label_373:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f40

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f50
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f60
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f90
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_376
	call	rpl_calloc
	test	rax, rax
	je	.label_376
	pop	rcx
	ret	
.label_376:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fc0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ff0

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405010

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_162
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405040

	.globl xstrtold
	.type xstrtold, @function
xstrtold:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, rbx
	je	.label_381
	test	r15, r15
	jne	.label_378
	cmp	byte ptr [rax], 0
	je	.label_378
	xor	eax, eax
	jmp	.label_379
.label_378:
	mov	al, 1
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_380
	jnp	.label_382
.label_380:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_382
.label_381:
	xor	eax, eax
.label_382:
	test	r15, r15
	je	.label_379
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15], rcx
.label_379:
	fstp	xword ptr [r14]
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_383
	test	rsi, rsi
	mov	ecx, 1
	je	.label_384
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_384
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_383:
	mov	ecx, 1
.label_384:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405120

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
	je	.label_385
	cmp	r15, -2
	jb	.label_385
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_385
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_385:
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
	#Procedure 0x405180
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_386
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_386
.label_387:
	ret	
.label_386:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_387
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051b0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_388
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_388:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4051d0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051e0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4051f0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_389
.label_390:
	ret	
.label_389:
	cmp	edi, 0x7f
	je	.label_390
	xor	eax, eax
	jmp	.label_390
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405210
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405220
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405230
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405240
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_391
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_392]]
.label_393:
	ret	
.label_391:
	xor	eax, eax
	jmp	.label_393
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405270
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_394
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_394:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405290

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052a0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_395
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_395:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4052c0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052d0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052e0

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	call	c_locale
	test	rax, rax
	je	.label_396
	mov	rdi, rax
	call	uselocale
	mov	r15, rax
	test	r15, r15
	je	.label_396
	mov	rdi, r14
	mov	rsi, rbx
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	uselocale
	test	rax, rax
	je	.label_397
	mov	dword ptr [rbx], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_398
.label_396:
	fldz	
	test	rbx, rbx
	je	.label_398
	mov	qword ptr [rbx], r14
.label_398:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_397:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405360

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_399
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_134
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_399:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405390

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_401
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_400
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_400
.label_401:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_400
	test	cl, cl
	jne	.label_400
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_400:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405400

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_403
	cmp	byte ptr [rax], 0x43
	jne	.label_405
	cmp	byte ptr [rax + 1], 0
	je	.label_402
.label_405:
	mov	esi, OFFSET FLAT:label_404
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_403
.label_402:
	xor	ebx, ebx
.label_403:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405440

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_27
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_406
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405470

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_407
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_409
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_407
.label_409:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_407
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_408
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_408:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_407:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_410
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_410
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_410:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405520

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_411
	ret	
.label_411:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405540

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
	jne	.label_412
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_412
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_413
.label_412:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_413:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_414
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_414:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x4055b0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
