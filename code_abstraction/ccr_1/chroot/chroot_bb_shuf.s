	.section	.text
	.align	16
	#Procedure 0x401899
	.globl sub_401899
	.type sub_401899, @function
sub_401899:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40189a
	.globl sub_40189a
	.type sub_40189a, @function
sub_40189a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018d2
	.globl sub_4018d2
	.type sub_4018d2, @function
sub_4018d2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40191a
	.globl sub_40191a
	.type sub_40191a, @function
sub_40191a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40193c
	.globl sub_40193c
	.type sub_40193c, @function
sub_40193c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40194d
	.globl sub_40194d
	.type sub_40194d, @function
sub_40194d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401966
	.globl sub_401966
	.type sub_401966, @function
sub_401966:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401970

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
	mov	rcx,  qword ptr [word ptr [rip + label_9]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_10]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_11]]
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
	.section	.text
	.align	16
	#Procedure 0x4019dd
	.globl sub_4019dd
	.type sub_4019dd, @function
sub_4019dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019e0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4019ed
	.globl sub_4019ed
	.type sub_4019ed, @function
sub_4019ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x4019f7
	.globl sub_4019f7
	.type sub_4019f7, @function
sub_4019f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a00
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_12
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_12:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a1e
	.globl sub_401a1e
	.type sub_401a1e, @function
sub_401a1e:

	nop	
.label_14:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a21
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_13
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_15]]
.label_13:
	xor	eax, eax
	jmp	.label_14
	.section	.text
	.align	16
	#Procedure 0x401a36
	.globl sub_401a36
	.type sub_401a36, @function
sub_401a36:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a40

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
	jne	.label_25
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
	je	.label_22
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_18
	mov	eax, OFFSET FLAT:label_19
	jmp	.label_20
.label_22:
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
	je	.label_21
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_23
	mov	eax, OFFSET FLAT:label_24
	jmp	.label_20
.label_21:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_16
	mov	eax, OFFSET FLAT:label_17
.label_20:
	cmove	rax, rcx
.label_25:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401afd
	.globl sub_401afd
	.type sub_401afd, @function
sub_401afd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b00
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_26
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_26:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b26
	.globl sub_401b26
	.type sub_401b26, @function
sub_401b26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b30

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_27
	test	rbx, rbx
	jne	.label_27
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_27:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_29
	test	rax, rax
	je	.label_28
.label_29:
	pop	rbx
	ret	
.label_28:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401b60

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
	.section	.text
	.align	16
	#Procedure 0x401b97
	.globl sub_401b97
	.type sub_401b97, @function
sub_401b97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ba0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x401baa
	.globl sub_401baa
	.type sub_401baa, @function
sub_401baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bb0

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
	je	.label_32
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_30
	jmp	.label_31
.label_32:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_31
.label_30:
	mov	eax, 1
	test	bpl, bpl
	je	.label_31
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
.label_31:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c38
	.globl sub_401c38
	.type sub_401c38, @function
sub_401c38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c40

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
	je	.label_33
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_35
	jmp	.label_34
.label_33:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_34
.label_35:
	mov	eax, 1
	test	bpl, bpl
	je	.label_34
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
.label_34:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cb9
	.globl sub_401cb9
	.type sub_401cb9, @function
sub_401cb9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401cc0

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
	je	.label_38
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_37
	jmp	.label_36
.label_38:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_36
.label_37:
	mov	eax, 1
	test	bpl, bpl
	je	.label_36
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
.label_36:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d23
	.globl sub_401d23
	.type sub_401d23, @function
sub_401d23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d30

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
	je	.label_41
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_39
	jmp	.label_40
.label_41:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_40
.label_39:
	mov	eax, 1
	test	bpl, bpl
	je	.label_40
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_40:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d8f
	.globl sub_401d8f
	.type sub_401d8f, @function
sub_401d8f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401d90

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
	je	.label_42
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_44
	jmp	.label_43
.label_42:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_43
.label_44:
	mov	eax, 1
	test	bpl, bpl
	je	.label_43
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_43:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401dd9
	.globl sub_401dd9
	.type sub_401dd9, @function
sub_401dd9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401de0

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
	je	.label_47
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_46
	jmp	.label_45
.label_47:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_45
.label_46:
	mov	eax, 1
	test	bpl, bpl
	je	.label_45
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_45:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e25
	.globl sub_401e25
	.type sub_401e25, @function
sub_401e25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e30

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_50
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_49
	jmp	.label_48
.label_50:
	mov	eax, 1
	test	cl, cl
	je	.label_48
.label_49:
	xor	eax, eax
.label_48:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e5f
	.globl sub_401e5f
	.type sub_401e5f, @function
sub_401e5f:

	nop	
.label_53:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
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
	.section	.text
	.align	16
	#Procedure 0x401e98
	.globl sub_401e98
	.type sub_401e98, @function
sub_401e98:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ea2

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_53
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_57
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401fe0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_62
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_62:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ffe
	.globl sub_401ffe
	.type sub_401ffe, @function
sub_401ffe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402000

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
.label_96:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_99
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_103]]
.label_574:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_108
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_17
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_575:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_121
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_121
	xor	r14d, r14d
.label_131:
	cmp	r14, r11
	jae	.label_128
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_128:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_131
.label_121:
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
	jmp	.label_147
.label_567:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_147
.label_570:
	mov	al, 1
.label_568:
	mov	r12b, 1
.label_571:
	test	r12b, 1
	mov	cl, 1
	je	.label_151
	mov	ecx, eax
.label_151:
	mov	al, cl
.label_569:
	test	r12b, 1
	jne	.label_154
	test	r11, r11
	je	.label_156
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_156:
	mov	r14d, 1
	jmp	.label_160
.label_154:
	xor	r14d, r14d
.label_160:
	mov	ecx, OFFSET FLAT:label_17
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_147
.label_572:
	test	r12b, 1
	jne	.label_171
	test	r11, r11
	je	.label_94
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_94:
	mov	r14d, 1
	jmp	.label_174
.label_573:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_16
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_147
.label_171:
	xor	r14d, r14d
.label_174:
	mov	eax, OFFSET FLAT:label_16
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_147:
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
	jmp	.label_169
	.section	.text
	.align	16
	#Procedure 0x4022dc
	.globl sub_4022dc
	.type sub_4022dc, @function
sub_4022dc:

	nop	dword ptr [rax]
.label_132:
	inc	rsi
.label_169:
	cmp	rbp, -1
	je	.label_112
	cmp	rsi, rbp
	jne	.label_143
	jmp	.label_117
	.section	.text
	.align	16
	#Procedure 0x4022f3
	.globl sub_4022f3
	.type sub_4022f3, @function
sub_4022f3:

	nop	word ptr cs:[rax + rax]
.label_112:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_117
.label_143:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_123
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_125
	cmp	rbp, -1
	jne	.label_125
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
.label_125:
	cmp	rbx, rbp
	jbe	.label_136
.label_123:
	xor	r8d, r8d
.label_145:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_138
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_141]]
.label_472:
	test	rsi, rsi
	jne	.label_135
	jmp	.label_70
	.section	.text
	.align	16
	#Procedure 0x40238e
	.globl sub_40238e
	.type sub_40238e, @function
sub_40238e:

	nop	
.label_136:
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
	jne	.label_158
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_145
	jmp	.label_79
.label_158:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_145
.label_476:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_65
	test	rsi, rsi
	jne	.label_67
	cmp	rbp, 1
	je	.label_70
	xor	r13d, r13d
	jmp	.label_66
.label_465:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_74
	cmp	byte ptr [rsp + 7], 0
	jne	.label_75
	cmp	r12d, 2
	jne	.label_77
	mov	eax, r9d
	and	al, 1
	jne	.label_77
	cmp	r14, r11
	jae	.label_137
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_137:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_84
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_84:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_88
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_88:
	add	r14, 3
	mov	r9b, 1
.label_77:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_95
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_95:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_98
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_98
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_98
	cmp	r14, r11
	jae	.label_109
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_109:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_81
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_81:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_66
.label_466:
	mov	bl, 0x62
	jmp	.label_119
.label_467:
	mov	cl, 0x74
	jmp	.label_122
.label_468:
	mov	bl, 0x76
	jmp	.label_119
.label_469:
	mov	bl, 0x66
	jmp	.label_119
.label_470:
	mov	cl, 0x72
	jmp	.label_122
.label_473:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_127
	cmp	byte ptr [rsp + 7], 0
	jne	.label_75
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
	jae	.label_134
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_134:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_144
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_144:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_148
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_148:
	add	r14, 3
	xor	r9d, r9d
.label_127:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_66
.label_474:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_157
	cmp	r12d, 2
	jne	.label_135
	cmp	byte ptr [rsp + 7], 0
	je	.label_135
	jmp	.label_75
.label_475:
	cmp	r12d, 2
	jne	.label_167
	cmp	byte ptr [rsp + 7], 0
	jne	.label_75
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_73
.label_138:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_164
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
.label_116:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_89
	test	r8b, r8b
	je	.label_89
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_66
.label_65:
	test	rsi, rsi
	jne	.label_97
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_97
.label_70:
	mov	dl, 1
.label_471:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_75
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_66:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_104
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_106
	jmp	.label_110
	.section	.text
	.align	16
	#Procedure 0x4026d4
	.globl sub_4026d4
	.type sub_4026d4, @function
sub_4026d4:

	nop	word ptr cs:[rax + rax]
.label_104:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_110
.label_106:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_113
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_73
	jmp	.label_91
	.section	.text
	.align	16
	#Procedure 0x40271d
	.globl sub_40271d
	.type sub_40271d, @function
sub_40271d:

	nop	dword ptr [rax]
.label_110:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_91
	jmp	.label_73
.label_113:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_91
.label_74:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_132
	xor	r15d, r15d
	jmp	.label_135
.label_167:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_122
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_73
.label_122:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_75
.label_119:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_66
	nop	word ptr cs:[rax + rax]
.label_91:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_75
	cmp	r12d, 2
	jne	.label_152
	mov	eax, r9d
	and	al, 1
	jne	.label_152
	cmp	r14, r11
	jae	.label_155
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_155:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_78
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_78:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_163
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_163:
	add	r14, 3
	mov	r9b, 1
.label_152:
	cmp	r14, r11
	jae	.label_170
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_170:
	inc	r14
	jmp	.label_172
.label_164:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_175
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_175:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_161:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_83
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_86
	cmp	rbp, -2
	je	.label_118
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_92
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_120:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_165
	bt	rsi, rdx
	jb	.label_79
.label_165:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_120
.label_92:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_115
	xor	r13d, r13d
.label_115:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_161
	jmp	.label_116
.label_98:
	xor	r13d, r13d
	jmp	.label_66
.label_97:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_66
.label_157:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_135
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_135
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_135
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_139
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_142
	cmp	byte ptr [rsp + 7], 0
	jne	.label_75
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_149
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_149:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_168
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_168:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_159
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_159:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_162
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_162:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_66
.label_135:
	xor	eax, eax
.label_67:
	xor	r13d, r13d
	jmp	.label_66
.label_89:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_173
	.section	.text
	.align	16
	#Procedure 0x402a03
	.globl sub_402a03
	.type sub_402a03, @function
sub_402a03:

	nop	word ptr cs:[rax + rax]
.label_130:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_173:
	test	r8b, r8b
	je	.label_68
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_69
	cmp	r14, r11
	jae	.label_71
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_71:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_69
	.section	.text
	.align	16
	#Procedure 0x402a4c
	.globl sub_402a4c
	.type sub_402a4c, @function
sub_402a4c:

	nop	dword ptr [rax]
.label_68:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_79
	cmp	r12d, 2
	jne	.label_82
	mov	eax, r9d
	and	al, 1
	jne	.label_82
	cmp	r14, r11
	jae	.label_85
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_85:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_87
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_87:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_93
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_93:
	add	r14, 3
	mov	r9b, 1
.label_82:
	cmp	r14, r11
	jae	.label_166
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_166:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_101
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_101:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_107
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_107:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_69:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_73
	test	r9b, 1
	je	.label_64
	mov	ebx, eax
	and	bl, 1
	jne	.label_64
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_124
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_124:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_126
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_126:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_64:
	cmp	r14, r11
	jae	.label_130
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_130
	.section	.text
	.align	16
	#Procedure 0x402b53
	.globl sub_402b53
	.type sub_402b53, @function
sub_402b53:

	nop	word ptr cs:[rax + rax]
.label_73:
	test	r9b, 1
	je	.label_76
	and	al, 1
	jne	.label_76
	cmp	r14, r11
	jae	.label_140
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_140:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_111
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_111:
	add	r14, 2
	xor	r9d, r9d
.label_76:
	mov	ebx, r15d
.label_172:
	cmp	r14, r11
	jae	.label_150
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_150:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_132
.label_86:
	xor	r13d, r13d
.label_83:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_116
.label_118:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_105
	mov	rsi, qword ptr [rsp + 0x50]
.label_146:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_129
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_146
	xor	r13d, r13d
	jmp	.label_116
.label_105:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_116
.label_129:
	xor	r13d, r13d
	jmp	.label_116
.label_139:
	xor	r13d, r13d
	jmp	.label_66
.label_142:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_66
	.section	.text
	.align	16
	#Procedure 0x402c28
	.globl sub_402c28
	.type sub_402c28, @function
sub_402c28:

	nop	dword ptr [rax + rax]
.label_117:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_72
	or	dl, al
	je	.label_79
.label_72:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_80
	or	dl, al
	jne	.label_80
	test	r10b, 1
	jne	.label_90
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_80
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_96
.label_80:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_100
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_102
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_102
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_114:
	cmp	r14, r11
	jae	.label_133
	mov	byte ptr [rcx + r14], al
.label_133:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_114
	jmp	.label_102
.label_75:
	mov	qword ptr [rsp + 0x20], rbp
.label_79:
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
.label_153:
	mov	r14, rax
.label_63:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_90:
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
	jmp	.label_153
.label_100:
	mov	rcx, qword ptr [rsp + 8]
.label_102:
	cmp	r14, r11
	jae	.label_63
	mov	byte ptr [rcx + r14], 0
	jmp	.label_63
.label_99:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402dbc
	.globl sub_402dbc
	.type sub_402dbc, @function
sub_402dbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402dc0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_176
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_176:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402de3
	.globl sub_402de3
	.type sub_402de3, @function
sub_402de3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402df0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_177
	test	rax, rax
	je	.label_178
.label_177:
	pop	rbx
	ret	
.label_178:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402e0a
	.globl sub_402e0a
	.type sub_402e0a, @function
sub_402e0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e10
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
	.section	.text
	.align	16
	#Procedure 0x402e43
	.globl sub_402e43
	.type sub_402e43, @function
sub_402e43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e50
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x402e5a
	.globl sub_402e5a
	.type sub_402e5a, @function
sub_402e5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e60

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
	je	.label_179
	mov	qword ptr [rax], rbx
.label_179:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f4c
	.globl sub_402f4c
	.type sub_402f4c, @function
sub_402f4c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f50

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
	.section	.text
	.align	16
	#Procedure 0x402f89
	.globl sub_402f89
	.type sub_402f89, @function
sub_402f89:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f90

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	.section	.text
	.align	16
	#Procedure 0x402fa1
	.globl sub_402fa1
	.type sub_402fa1, @function
sub_402fa1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fb0
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
	.section	.text
	.align	16
	#Procedure 0x402fc4
	.globl sub_402fc4
	.type sub_402fc4, @function
sub_402fc4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fd0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fda
	.globl sub_402fda
	.type sub_402fda, @function
sub_402fda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fe0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_180
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_180
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_180:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x403006
	.globl sub_403006
	.type sub_403006, @function
sub_403006:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403010

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_181
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_183
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_183
.label_181:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_182
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_187:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_182:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_187
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_185
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4030d0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030df
	.globl sub_4030df
	.type sub_4030df, @function
sub_4030df:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4030e0

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030e4
	.globl sub_4030e4
	.type sub_4030e4, @function
sub_4030e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030f0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030ff
	.globl sub_4030ff
	.type sub_4030ff, @function
sub_4030ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403100
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403108
	.globl sub_403108
	.type sub_403108, @function
sub_403108:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403110

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_188:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_188
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40315b
	.globl sub_40315b
	.type sub_40315b, @function
sub_40315b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403160

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_190
	cmp	byte ptr [rax], 0x43
	jne	.label_192
	cmp	byte ptr [rax + 1], 0
	je	.label_189
.label_192:
	mov	esi, OFFSET FLAT:label_191
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_190
.label_189:
	xor	ebx, ebx
.label_190:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403191
	.globl sub_403191
	.type sub_403191, @function
sub_403191:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031a0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4031ae
	.globl sub_4031ae
	.type sub_4031ae, @function
sub_4031ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4031b0

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
	js	.label_196
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_199
	cmp	r12d, 0x7fffffff
	je	.label_194
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
	jne	.label_197
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_197:
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
.label_199:
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
	jbe	.label_195
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_198
.label_195:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_193
	mov	rdi, r14
	call	free
.label_193:
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
.label_198:
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
.label_196:
	call	abort
.label_194:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40336d
	.globl sub_40336d
	.type sub_40336d, @function
sub_40336d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403370

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403373
	.globl sub_403373
	.type sub_403373, @function
sub_403373:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403380
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40338a
	.globl sub_40338a
	.type sub_40338a, @function
sub_40338a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403390

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_200
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_202
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_200
.label_202:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_200
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_201
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_201:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_200:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403407
	.globl sub_403407
	.type sub_403407, @function
sub_403407:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403410

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40341a
	.globl sub_40341a
	.type sub_40341a, @function
sub_40341a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403420
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40342d
	.globl sub_40342d
	.type sub_40342d, @function
sub_40342d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403430
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
	.align	16
	#Procedure 0x403440

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_205:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_203
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_204
	.section	.text
	.align	16
	#Procedure 0x403469
	.globl sub_403469
	.type sub_403469, @function
sub_403469:

	nop	dword ptr [rax]
.label_203:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_204:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_206
	inc	r9
	cmp	r9, 0xa
	jb	.label_205
.label_206:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40349f
	.globl sub_40349f
	.type sub_40349f, @function
sub_40349f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4034a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	dword ptr [rsp + 8], 0xffffffff
	mov	qword ptr [rsp + 0x28], 0
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_269
	call	setlocale
	mov	edi, OFFSET FLAT:label_246
	mov	esi, OFFSET FLAT:label_247
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_246
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	ebx, ebx
	xor	r14d, r14d
	xor	r15d, r15d
	jmp	.label_212
.label_229:
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_212:
	mov	edx, OFFSET FLAT:label_214
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0xff
	jle	.label_223
	cmp	eax, 0x100
	je	.label_225
	cmp	eax, 0x102
	je	.label_229
	cmp	eax, 0x101
	jne	.label_233
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	rdi, r15
	call	strlen
	test	rax, rax
	je	.label_212
	cmp	byte ptr [r15 + rax - 1], 0x3a
	jne	.label_212
	mov	byte ptr [r15 + rax - 1], 0
	jmp	.label_212
.label_225:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_212
.label_223:
	cmp	eax, -1
	jne	.label_248
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jge	.label_250
	mov	r13, qword ptr [r12 + rax*8]
	mov	rdi, r13
	call	is_root
	test	bl, bl
	je	.label_257
	test	al, al
	je	.label_259
.label_257:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	al, al
	jne	.label_234
	test	r15, r15
	je	.label_266
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, r15
	call	parse_user_spec
.label_266:
	mov	edi, dword ptr [rsp + 0xc]
	call	uid_unset
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	al, al
	jne	.label_215
	test	r14, r14
	je	.label_207
	mov	edi, dword ptr [rsp + 8]
	call	gid_unset
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	al, al
	je	.label_209
.label_207:
	mov	edi, dword ptr [rsp + 0xc]
	call	getpwuid
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	rcx, rcx
	je	.label_215
	mov	edi, dword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	call	gid_unset
	mov	rcx, qword ptr [rsp + 0x10]
	test	al, al
	je	.label_221
	mov	eax, dword ptr [rcx + 0x14]
	mov	dword ptr [rsp + 8], eax
.label_221:
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
.label_215:
	test	r14, r14
	je	.label_232
.label_209:
	cmp	byte ptr [r14], 0
	je	.label_234
	lea	rsi, [rsp + 0x28]
	lea	rdx, [rsp + 0x18]
	xor	ecx, ecx
	mov	rdi, r14
	call	parse_additional_groups
.label_234:
	mov	rdi, r13
	call	chroot
	test	eax, eax
	jne	.label_244
	test	bl, bl
	jne	.label_245
	mov	edi, OFFSET FLAT:label_57
	call	chdir
	test	eax, eax
	jne	.label_249
.label_245:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	inc	rax
	cmp	eax, ebp
	jne	.label_252
	mov	edi, OFFSET FLAT:label_253
	call	getenv
	test	rax, rax
	jne	.label_258
	mov	edi, OFFSET FLAT:label_262
	call	bad_cast
.label_258:
	mov	qword ptr [r12], rax
	mov	edi, OFFSET FLAT:label_264
	call	bad_cast
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x10], 0
	jmp	.label_267
.label_252:
	lea	r12, [r12 + rax*8]
.label_267:
	test	r15, r15
	je	.label_213
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, r15
	call	parse_user_spec
	mov	rbp, rax
	test	rbp, rbp
	je	.label_213
	mov	edi, dword ptr [rsp + 0xc]
	call	uid_unset
	test	al, al
	je	.label_213
	mov	edi, dword ptr [rsp + 8]
	call	gid_unset
	test	al, al
	jne	.label_216
.label_213:
	mov	edi, dword ptr [rsp + 0xc]
	call	uid_unset
	test	al, al
	jne	.label_218
	test	r14, r14
	je	.label_220
	mov	edi, dword ptr [rsp + 8]
	call	gid_unset
	test	al, al
	je	.label_224
.label_220:
	mov	edi, dword ptr [rsp + 0xc]
	call	getpwuid
	mov	rbp, rax
	mov	edi, dword ptr [rsp + 8]
	call	gid_unset
	test	rbp, rbp
	je	.label_235
	test	al, al
	je	.label_236
	mov	eax, dword ptr [rbp + 0x14]
	mov	dword ptr [rsp + 8], eax
.label_236:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_218
.label_232:
	mov	edi, dword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x34], edi
	call	gid_unset
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_234
	xor	al, 1
	je	.label_234
	lea	rdx, [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, dword ptr [rsp + 0x34]
	call	xgetgroups
	test	eax, eax
	jle	.label_234
	cdqe	
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_234
.label_224:
	mov	r15, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], 0
	jmp	.label_263
.label_235:
	test	al, al
	jne	.label_268
.label_218:
	mov	r15, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], 0
	test	r14, r14
	je	.label_270
.label_263:
	mov	bl, 1
	cmp	byte ptr [r14], 0
	je	.label_210
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x18], 0
	sete	cl
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	mov	rdi, r14
	call	parse_additional_groups
	test	eax, eax
	je	.label_256
	mov	ebp, 0x7d
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_210
	jmp	.label_217
.label_270:
	mov	ebp, dword ptr [rsp + 8]
	mov	edi, ebp
	call	gid_unset
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_210
	xor	al, 1
	je	.label_210
	lea	rdx, [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, ebp
	call	xgetgroups
	test	eax, eax
	jle	.label_231
	cdqe	
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
.label_256:
	mov	r15, qword ptr [rsp + 0x20]
.label_210:
	mov	edi, dword ptr [rsp + 0xc]
	call	uid_unset
	test	bl, bl
	jne	.label_241
	xor	al, 1
	je	.label_242
.label_241:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r15
	call	setgroups
	test	eax, eax
	jne	.label_226
.label_242:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	ebp, dword ptr [rsp + 8]
	mov	edi, ebp
	call	gid_unset
	test	al, al
	jne	.label_219
	mov	edi, ebp
	call	setgid
	test	eax, eax
	jne	.label_261
.label_219:
	mov	ebp, dword ptr [rsp + 0xc]
	mov	edi, ebp
	call	uid_unset
	test	al, al
	jne	.label_265
	mov	edi, ebp
	call	setuid
	test	eax, eax
	jne	.label_254
.label_265:
	mov	rdi, qword ptr [r12]
	mov	rsi, r12
	call	execvp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	cmp	ebx, 2
	sete	bpl
	or	ebp, 0x7e
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, qword ptr [r12]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
.label_217:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_231:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_222
	xor	ebx, ebx
	jmp	.label_210
.label_248:
	cmp	eax, 0xffffff7d
	je	.label_230
	cmp	eax, 0xffffff7e
	jne	.label_233
	xor	edi, edi
	call	usage
.label_230:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_237
	mov	edx, OFFSET FLAT:label_238
	mov	r8d, OFFSET FLAT:label_239
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	call	usage
.label_259:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_57
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 0x7d
	call	usage
.label_244:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_233:
	mov	edi, 0x7d
	call	usage
.label_226:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
	jmp	.label_228
.label_261:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	jmp	.label_228
.label_254:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	jmp	.label_228
.label_249:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
.label_228:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_216:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 0x7d
	mov	edx, OFFSET FLAT:label_185
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_268:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_222:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
	jmp	.label_228
	.section	.text
	.align	16
	#Procedure 0x403b02
	.globl sub_403b02
	.type sub_403b02, @function
sub_403b02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b10

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_277
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_289:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_289
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_286
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_278
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_284
	cmp	eax, 0x22
	jne	.label_286
	mov	r12d, 1
.label_284:
	test	rbp, rbp
	jne	.label_288
	jmp	.label_273
.label_278:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_286
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_286
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_286
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_288:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_273
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_282
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_283
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_283
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_276
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_290
	cmp	ecx, 0x44
	je	.label_290
	cmp	ecx, 0x69
	jne	.label_276
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_276
.label_290:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_276
.label_283:
	mov	rsi, r14
.label_276:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_282
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_285]]
.label_539:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_275
.label_282:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_287
.label_540:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_275
.label_541:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_275
.label_543:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_275
.label_537:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_274
.label_538:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_275
.label_542:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_275
.label_544:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_275
.label_545:
	lea	rdi, [rsp]
	mov	edx, 7
.label_275:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_274:
	mov	rsi, r14
.label_547:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_273:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_287:
	mov	r15d, r12d
.label_286:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_546:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_274
.label_548:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_274
.label_277:
	mov	edi, OFFSET FLAT:label_279
	mov	esi, OFFSET FLAT:label_280
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_281
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x403db2
	.globl sub_403db2
	.type sub_403db2, @function
sub_403db2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dc0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_291
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_291:
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
	.section	.text
	.align	16
	#Procedure 0x403e43
	.globl sub_403e43
	.type sub_403e43, @function
sub_403e43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e50
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
	.section	.text
	.align	16
	#Procedure 0x403e99
	.globl sub_403e99
	.type sub_403e99, @function
sub_403e99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ea0
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
	.section	.text
	.align	16
	#Procedure 0x403ec7
	.globl sub_403ec7
	.type sub_403ec7, @function
sub_403ec7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x403ed9
	.globl sub_403ed9
	.type sub_403ed9, @function
sub_403ed9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ee0

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
	mov	rax,  qword ptr [word ptr [rip + label_9]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_10]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_11]]
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
	.section	.text
	.align	16
	#Procedure 0x403f48
	.globl sub_403f48
	.type sub_403f48, @function
sub_403f48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f50
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f5d
	.globl sub_403f5d
	.type sub_403f5d, @function
sub_403f5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f60
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f6f
	.globl sub_403f6f
	.type sub_403f6f, @function
sub_403f6f:

	nop	
.label_293:
	cmp	edi, 0x7f
	je	.label_292
	xor	eax, eax
	jmp	.label_292
	.section	.text
	.align	16
	#Procedure 0x403f79
	.globl sub_403f79
	.type sub_403f79, @function
sub_403f79:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f88
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_293
.label_292:
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f90
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f9a
	.globl sub_403f9a
	.type sub_403f9a, @function
sub_403f9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fa0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fad
	.globl sub_403fad
	.type sub_403fad, @function
sub_403fad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403fb0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fba
	.globl sub_403fba
	.type sub_403fba, @function
sub_403fba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fc0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_294
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_296
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_296
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_299
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_299:
	mov	rbx, r14
.label_296:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_294:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_295
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404061
	.globl sub_404061
	.type sub_404061, @function
sub_404061:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404070

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_269
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_300
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404095
	.globl sub_404095
	.type sub_404095, @function
sub_404095:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040a0
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
	.section	.text
	.align	16
	#Procedure 0x404112
	.globl sub_404112
	.type sub_404112, @function
sub_404112:

	nop	word ptr cs:[rax + rax]
.label_308:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_310
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	mov	dword ptr [rsp], 0xffffffff
	jmp	.label_301
	.section	.text
	.align	16
	#Procedure 0x40416c
	.globl sub_40416c
	.type sub_40416c, @function
sub_40416c:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404171

	.globl parse_additional_groups
	.type parse_additional_groups, @function
parse_additional_groups:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	dword ptr [rsp + 4], ecx
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	qword ptr [rsp + 0x28], rdi
	call	xstrdup
	mov	esi, OFFSET FLAT:label_307
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rax
	call	strtok
	mov	r15, rax
	xor	r13d, r13d
	test	r15, r15
	mov	ebx, 0
	mov	dword ptr [rsp], 0
	je	.label_315
	lea	r12, [rsp + 8]
	mov	dword ptr [rsp], 0
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.label_309
.label_309:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_269
	mov	rdi, r15
	mov	rcx, r12
	call	xstrtoul
	test	eax, eax
	jne	.label_313
	mov	rax, qword ptr [rsp + 8]
	shr	rax, 0x20
	jne	.label_313
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	dec	r15
	nop	word ptr cs:[rax + rax]
.label_314:
	movzx	r14d, byte ptr [r15 + 1]
	inc	r15
	movsx	edi, r14b
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_314
	cmp	r14b, 0x2b
	je	.label_306
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	jne	.label_304
	jmp	.label_306
.label_313:
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	je	.label_308
.label_304:
	mov	eax, dword ptr [rax + 0x10]
	mov	qword ptr [rsp + 8], rax
.label_306:
	cmp	r13, qword ptr [rsp + 0x18]
	jne	.label_312
	mov	edx, 4
	mov	rdi, rbx
	lea	rsi, [rsp + 0x18]
	call	x2nrealloc
	mov	rbx, rax
.label_312:
	mov	eax, dword ptr [rsp + 8]
	mov	dword ptr [rbx + r13*4], eax
	inc	r13
.label_301:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	call	strtok
	mov	r15, rax
	test	r15, r15
	jne	.label_309
.label_315:
	mov	edx, dword ptr [rsp]
	test	edx, edx
	setne	al
	test	r13, r13
	setne	cl
	or	cl, al
	mov	ebp, 0xffffffff
	cmovne	ebp, edx
	jne	.label_302
	mov	eax, dword ptr [rsp + 4]
	xor	al, 1
	jne	.label_302
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x28]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_310:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbx
	mov	ebp, 0xffffffff
	jmp	.label_303
.label_302:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbx
	test	ebp, ebp
	jne	.label_303
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r13
	xor	ebp, ebp
.label_303:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404339
	.globl sub_404339
	.type sub_404339, @function
sub_404339:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404340

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_185
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404370

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12d, esi
	mov	rbp, rdi
	test	rbp, rbp
	je	.label_322
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0xa
	call	realloc_groupbuf
	mov	rbx, rax
	mov	r13d, 0xffffffff
	test	rbx, rbx
	je	.label_318
	mov	r15d, r12d
	mov	qword ptr [rsp + 0x10], r14
	nop	
.label_319:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rdi, rbp
	mov	esi, r15d
	mov	rdx, rbx
	lea	rcx, [rsp + 0xc]
	call	getgrouplist
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_317
	mov	eax, dword ptr [rsp + 0xc]
	cmp	r12d, eax
	jne	.label_317
	add	eax, eax
	mov	dword ptr [rsp + 0xc], eax
	nop	
.label_317:
	movsxd	rsi, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	call	realloc_groupbuf
	test	rax, rax
	je	.label_330
	test	r14d, r14d
	mov	rbx, rax
	js	.label_319
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r13d, dword ptr [rsp + 0xc]
	jmp	.label_318
.label_322:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_324
	cmp	r12d, -1
	jne	.label_328
	test	eax, eax
	jne	.label_329
.label_328:
	inc	dword ptr [rsp + 0xc]
.label_329:
	movsxd	rsi, dword ptr [rsp + 0xc]
	xor	edi, edi
	call	realloc_groupbuf
	mov	r15, rax
	mov	r13d, 0xffffffff
	test	r15, r15
	je	.label_318
	mov	edi, dword ptr [rsp + 0xc]
	xor	eax, eax
	cmp	r12d, -1
	setne	al
	sub	edi, eax
	lea	rsi, [r15 + rax*4]
	call	getgroups
	test	eax, eax
	js	.label_321
	cmp	r12d, -1
	mov	r13d, eax
	je	.label_326
	mov	dword ptr [r15], r12d
	inc	eax
	mov	r13d, eax
.label_326:
	mov	qword ptr [r14], r15
	cmp	r13d, 2
	jl	.label_318
	mov	eax, dword ptr [r15]
	movsxd	rcx, r13d
	lea	rcx, [r15 + rcx*4]
	mov	rdx, r15
	add	rdx, 4
	jmp	.label_320
.label_330:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
	jmp	.label_318
.label_324:
	call	__errno_location
	mov	r13d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_318
	xor	edi, edi
	mov	esi, 1
	call	realloc_groupbuf
	test	rax, rax
	je	.label_318
	mov	qword ptr [r14], rax
	mov	dword ptr [rax], r12d
	xor	r13d, r13d
	cmp	r12d, -1
	setne	r13b
	jmp	.label_318
.label_321:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_318
.label_323:
	mov	dword ptr [r15 + 4], esi
	add	r15, 4
	jmp	.label_325
	.section	.text
	.align	16
	#Procedure 0x40451c
	.globl sub_40451c
	.type sub_40451c, @function
sub_40451c:

	nop	dword ptr [rax]
.label_320:
	mov	esi, dword ptr [rdx]
	cmp	esi, eax
	je	.label_327
	cmp	esi, dword ptr [r15]
	jne	.label_323
.label_327:
	dec	r13d
.label_325:
	add	rdx, 4
	cmp	rdx, rcx
	jb	.label_320
.label_318:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404549
	.globl sub_404549
	.type sub_404549, @function
sub_404549:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404550

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40457d
	.globl sub_40457d
	.type sub_40457d, @function
sub_40457d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404580

	.globl is_root
	.type is_root, @function
is_root:
	push	rbx
	call	canonicalize_file_name
	test	rax, rax
	je	.label_331
	movzx	edx, byte ptr [rax]
	mov	ecx, 0x2f
	sub	ecx, edx
	jne	.label_332
	movzx	ecx, byte ptr [rax + 1]
	neg	ecx
.label_332:
	test	ecx, ecx
	sete	bl
	jmp	.label_333
.label_331:
	xor	ebx, ebx
.label_333:
	mov	rdi, rax
	call	free
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045b2
	.globl sub_4045b2
	.type sub_4045b2, @function
sub_4045b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_334
	test	rsi, rsi
	mov	ecx, 1
	je	.label_335
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_335
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_334:
	mov	ecx, 1
.label_335:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x40460b
	.globl sub_40460b
	.type sub_40460b, @function
sub_40460b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404610

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_343
	nop	
.label_342:
	mov	edi, OFFSET FLAT:label_237
	call	strcmp
	test	eax, eax
	je	.label_340
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_342
.label_340:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_237
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_238
	mov	ecx, OFFSET FLAT:label_339
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_336
	mov	esi, OFFSET FLAT:label_338
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_336
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_336:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_237
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_339
	mov	ecx, OFFSET FLAT:label_237
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_346
	mov	ecx, OFFSET FLAT:label_269
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	16
	#Procedure 0x40472a
	.globl sub_40472a
	.type sub_40472a, @function
sub_40472a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404730
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_347:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_347
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x404751
	.globl sub_404751
	.type sub_404751, @function
sub_404751:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404760

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  0x7d
	ret	
	.section	.text
	.align	16
	#Procedure 0x40476b
	.globl sub_40476b
	.type sub_40476b, @function
sub_40476b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404770
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40477a
	.globl sub_40477a
	.type sub_40477a, @function
sub_40477a:

	nop	word ptr [rax + rax]
.label_348:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404783
	.globl sub_404783
	.type sub_404783, @function
sub_404783:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40478b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_348
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047a0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_349
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_350:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_350
.label_349:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047de
	.globl sub_4047de
	.type sub_4047de, @function
sub_4047de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4047e0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x4047e5
	.globl sub_4047e5
	.type sub_4047e5, @function
sub_4047e5:

	nop	word ptr cs:[rax + rax]
.label_352:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4047f5

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_351
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_352
.label_351:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404810

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
	.section	.text
	.align	16
	#Procedure 0x404846
	.globl sub_404846
	.type sub_404846, @function
sub_404846:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404850

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x404867
	.globl sub_404867
	.type sub_404867, @function
sub_404867:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404870

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
	je	.label_362
	mov	edx, OFFSET FLAT:label_358
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_364
.label_362:
	mov	edx, OFFSET FLAT:label_365
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_364:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
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
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_354
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_355]]
.label_522:
	add	rsp, 8
	jmp	.label_353
.label_354:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
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
	jmp	.label_353
.label_523:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
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
.label_524:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
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
.label_525:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
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
.label_526:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
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
	jmp	.label_353
.label_527:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
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
	jmp	.label_353
.label_528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
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
	jmp	.label_353
.label_529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
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
	jmp	.label_353
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
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
	jmp	.label_353
.label_530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
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
.label_353:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bc8
	.globl sub_404bc8
	.type sub_404bc8, @function
sub_404bc8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bd0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_372
	ret	
.label_372:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x404be3
	.globl sub_404be3
	.type sub_404be3, @function
sub_404be3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bf0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x404bfa
	.globl sub_404bfa
	.type sub_404bfa, @function
sub_404bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c00
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_374
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_238
	mov	ecx, OFFSET FLAT:label_339
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404c74
	.globl sub_404c74
	.type sub_404c74, @function
sub_404c74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c80

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
	jne	.label_377
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_377
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_378
.label_377:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_378:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_379
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_379:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404cee
	.globl sub_404cee
	.type sub_404cee, @function
sub_404cee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404cf0

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbp, r8
	mov	r15, rsi
	mov	eax, dword ptr [rdx]
	mov	esi, 0xffffffff
	test	rcx, rcx
	je	.label_407
	mov	esi, dword ptr [rcx]
.label_407:
	test	rbp, rbp
	je	.label_384
	mov	qword ptr [rbp], 0
.label_384:
	test	r9, r9
	je	.label_387
	mov	qword ptr [r9], 0
.label_387:
	test	r15, r15
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 4], eax
	je	.label_390
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], r9
	xor	r13d, r13d
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_395
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	r13, rax
	mov	byte ptr [r13 + rbx], 0
.label_395:
	lea	rax, [r15 + 1]
	xor	r12d, r12d
	cmp	byte ptr [r15 + 1], 0
	cmovne	r12, rax
	jmp	.label_403
.label_390:
	xor	r14d, r14d
	cmp	byte ptr [rdi], 0
	je	.label_399
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], r9
	call	xstrdup
	mov	r13, rax
	xor	r12d, r12d
.label_403:
	xor	r14d, r14d
	test	r13, r13
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_386
	cmp	byte ptr [r13], 0x2b
	je	.label_393
	mov	rdi, r13
	call	getpwnam
	test	rax, rax
	je	.label_393
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rsp + 4], ecx
	xor	r14d, r14d
	test	r15, r15
	je	.label_398
	test	r12, r12
	jne	.label_398
	mov	ebx, dword ptr [rax + 0x14]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 8], rbx
	je	.label_405
	mov	rdi, qword ptr [rax]
	jmp	.label_408
.label_393:
	mov	ebp, OFFSET FLAT:label_409
	xor	r14d, r14d
	test	r15, r15
	je	.label_410
	test	r12, r12
	je	.label_381
.label_410:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_269
	mov	rdi, r13
	call	xstrtoul
	test	eax, eax
	jne	.label_388
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_388
	xor	ebp, ebp
	cmp	eax, -1
	jne	.label_392
.label_388:
	mov	ebp, OFFSET FLAT:label_397
	mov	eax, dword ptr [rsp + 4]
.label_392:
	xor	r14d, r14d
	mov	dword ptr [rsp + 4], eax
	jmp	.label_381
.label_386:
	xor	r13d, r13d
	xor	ebp, ebp
	jmp	.label_400
.label_399:
	xor	r13d, r13d
	jmp	.label_402
.label_405:
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	call	umaxtostr
	mov	rdi, rax
.label_408:
	call	xstrdup
	mov	r14, rax
	call	endgrent
.label_398:
	xor	ebp, ebp
.label_381:
	call	endpwent
.label_400:
	test	r12, r12
	je	.label_380
	test	rbp, rbp
	jne	.label_380
	cmp	byte ptr [r12], 0x2b
	je	.label_394
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_394
	mov	ebx, dword ptr [rax + 0x10]
	jmp	.label_396
.label_380:
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_389
.label_394:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_269
	mov	rdi, r12
	call	xstrtoul
	test	eax, eax
	jne	.label_401
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_401
	cmp	ebx, -1
	jne	.label_396
.label_401:
	mov	ebp, OFFSET FLAT:label_404
	mov	rbx, qword ptr [rsp + 8]
.label_396:
	call	endgrent
	mov	rdi, r12
	call	xstrdup
	mov	r14, rax
	mov	esi, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
.label_389:
	test	rbp, rbp
	je	.label_382
	xor	ebx, ebx
	jmp	.label_383
.label_382:
	mov	rbp, qword ptr [rsp + 0x20]
.label_402:
	mov	rax, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 4]
	mov	dword ptr [rax], edx
	test	rcx, rcx
	je	.label_385
	mov	dword ptr [rcx], esi
.label_385:
	test	rbp, rbp
	je	.label_391
	mov	qword ptr [rbp], r13
	xor	r13d, r13d
.label_391:
	mov	bl, 1
	xor	ebp, ebp
	test	r9, r9
	je	.label_383
	mov	qword ptr [r9], r14
	xor	ebp, ebp
	xor	r14d, r14d
.label_383:
	mov	rdi, r13
	call	free
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_406
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbp
	call	dcgettext
.label_406:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f7d
	.globl sub_404f7d
	.type sub_404f7d, @function
sub_404f7d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f80

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404f8a
	.globl sub_404f8a
	.type sub_404f8a, @function
sub_404f8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f90
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
	.align	16
	#Procedure 0x404fa0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x404fa9
	.globl sub_404fa9
	.type sub_404fa9, @function
sub_404fa9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404fb0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x404fba
	.globl sub_404fba
	.type sub_404fba, @function
sub_404fba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fd3
	.globl sub_404fd3
	.type sub_404fd3, @function
sub_404fd3:

	nop	word ptr cs:[rax + rax]
.label_413:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404fe5
	.globl sub_404fe5
	.type sub_404fe5, @function
sub_404fe5:

	nop	dword ptr [rax]
.label_414:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404ff1

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_411
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_414
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_412
.label_411:
	test	rcx, rcx
	jne	.label_415
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_415:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_413
.label_412:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x405060

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
	je	.label_416
	cmp	r15, -2
	jb	.label_416
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_416
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_416:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050b6
	.globl sub_4050b6
	.type sub_4050b6, @function
sub_4050b6:

	nop	word ptr cs:[rax + rax]
.label_419:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_417
.label_418:
	mov	eax, 1
	test	bpl, bpl
	je	.label_417
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
.label_417:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405108
	.globl sub_405108
	.type sub_405108, @function
sub_405108:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40510b

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
	je	.label_419
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_418
	jmp	.label_417
	.section	.text
	.align	16
	#Procedure 0x405140
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
	.section	.text
	.align	16
	#Procedure 0x405156
	.globl sub_405156
	.type sub_405156, @function
sub_405156:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405160
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_420
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_420
.label_421:
	ret	
.label_420:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_421
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405186
	.globl sub_405186
	.type sub_405186, @function
sub_405186:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405190

	.globl uid_unset
	.type uid_unset, @function
uid_unset:
	cmp	edi, -1
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405197
	.globl sub_405197
	.type sub_405197, @function
sub_405197:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051a0

	.globl realloc_groupbuf
	.type realloc_groupbuf, @function
realloc_groupbuf:
	push	rax
	mov	rax, rsi
	shr	rax, 0x3d
	je	.label_422
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_422:
	shl	rsi, 2
	call	realloc
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051c4
	.globl sub_4051c4
	.type sub_4051c4, @function
sub_4051c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0

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
	je	.label_424
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_423
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_423
.label_424:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_423
	test	cl, cl
	jne	.label_423
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_423:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405236
	.globl sub_405236
	.type sub_405236, @function
sub_405236:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405240

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, r8
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_425
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_425:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	qword ptr [rsp], rbp
	mov	r9, rbp
	call	parse_with_separator
	mov	rbp, rax
	test	rbx, rbx
	je	.label_427
	test	r14, r14
	jne	.label_427
	test	rbp, rbp
	je	.label_427
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_427
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_426
.label_427:
	mov	rax, rbp
.label_426:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052e4
	.globl sub_4052e4
	.type sub_4052e4, @function
sub_4052e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052f8
	.globl sub_4052f8
	.type sub_4052f8, @function
sub_4052f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405300

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_428
	test	rdx, rdx
	je	.label_428
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_428:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40532b
	.globl sub_40532b
	.type sub_40532b, @function
sub_40532b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330
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
	.section	.text
	.align	16
	#Procedure 0x405349
	.globl sub_405349
	.type sub_405349, @function
sub_405349:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405350

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40535a
	.globl sub_40535a
	.type sub_40535a, @function
sub_40535a:

	nop	word ptr [rax + rax]
.label_429:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405365
	.globl sub_405365
	.type sub_405365, @function
sub_405365:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40536f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_429
	call	rpl_calloc
	test	rax, rax
	je	.label_429
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405390

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
	.section	.text
	.align	16
	#Procedure 0x4053bd
	.globl sub_4053bd
	.type sub_4053bd, @function
sub_4053bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4053c0

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
	.section	.text
	.align	16
	#Procedure 0x4053d3
	.globl sub_4053d3
	.type sub_4053d3, @function
sub_4053d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053e0

	.globl gid_unset
	.type gid_unset, @function
gid_unset:
	cmp	edi, -1
	sete	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053e7
	.globl sub_4053e7
	.type sub_4053e7, @function
sub_4053e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0

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
	je	.label_430
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
.label_430:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405442
	.globl sub_405442
	.type sub_405442, @function
sub_405442:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405450
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_431
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_433:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_433
.label_431:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_434
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_435]], OFFSET FLAT:slot0
.label_434:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_432
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_432:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054e1
	.globl sub_4054e1
	.type sub_4054e1, @function
sub_4054e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405555
	.globl sub_405555
	.type sub_405555, @function
sub_405555:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405562
	.globl sub_405562
	.type sub_405562, @function
sub_405562:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405586
	.globl sub_405586
	.type sub_405586, @function
sub_405586:

	nop	word ptr cs:[rax + rax]
