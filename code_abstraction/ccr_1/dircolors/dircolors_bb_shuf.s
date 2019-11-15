	.section	.text
	.align	16
	#Procedure 0x401739
	.globl sub_401739
	.type sub_401739, @function
sub_401739:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40173a
	.globl sub_40173a
	.type sub_40173a, @function
sub_40173a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401772
	.globl sub_401772
	.type sub_401772, @function
sub_401772:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017ba
	.globl sub_4017ba
	.type sub_4017ba, @function
sub_4017ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4017dc
	.globl sub_4017dc
	.type sub_4017dc, @function
sub_4017dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4017ed
	.globl sub_4017ed
	.type sub_4017ed, @function
sub_4017ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401806
	.globl sub_401806
	.type sub_401806, @function
sub_401806:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401810

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
	jne	.label_9
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_9
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_10
.label_9:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_10:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_11
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_11:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40187e
	.globl sub_40187e
	.type sub_40187e, @function
sub_40187e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401880

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
	#Procedure 0x4018b9
	.globl sub_4018b9
	.type sub_4018b9, @function
sub_4018b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4018c0
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
	#Procedure 0x4018d1
	.globl sub_4018d1
	.type sub_4018d1, @function
sub_4018d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018e0
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
	#Procedure 0x4018f4
	.globl sub_4018f4
	.type sub_4018f4, @function
sub_4018f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401900

	.globl dc_parse_stream
	.type dc_parse_stream, @function
dc_parse_stream:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x30], 0
	mov	edi, OFFSET FLAT:label_12
	call	getenv
	test	rax, rax
	je	.label_32
	cmp	byte ptr [rax], 0
	jne	.label_34
.label_32:
	mov	eax, OFFSET FLAT:label_37
.label_34:
	mov	qword ptr [rsp + 0x28], rax
	mov	r13d, OFFSET FLAT:G_line
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 3
	mov	qword ptr [rsp], rax
	xor	r15d, r15d
	jmp	.label_35
	.section	.text
	.align	16
	#Procedure 0x40195f
	.globl sub_40195f
	.type sub_40195f, @function
sub_40195f:

	nop	
.label_13:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_35:
	test	r12, r12
	je	.label_36
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsp + 0x30]
	mov	rdx, r12
	call	getline
	mov	rdi, qword ptr [rsp + 0x20]
	test	rax, rax
	jg	.label_15
	jmp	.label_20
	.section	.text
	.align	16
	#Procedure 0x40199a
	.globl sub_40199a
	.type sub_40199a, @function
sub_40199a:

	nop	word ptr [rax + rax]
.label_36:
	mov	eax, OFFSET FLAT:label_25
	cmp	r13, rax
	je	.label_26
	mov	rdi, r13
	call	strlen
	mov	rdi, r13
	lea	r13, [r13 + rax + 1]
.label_15:
	inc	r15
	lea	rsi, [rsp + 8]
	lea	rdx, [rsp + 0x10]
	call	parse_line
	mov	r14, qword ptr [rsp + 8]
	test	r14, r14
	je	.label_35
	mov	rbp, qword ptr [rsp + 0x10]
	test	rbp, rbp
	je	.label_44
	mov	esi, OFFSET FLAT:label_12
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_45
	mov	rax, qword ptr [rsp]
	cmp	eax, 2
	mov	ecx, 1
	cmove	eax, ecx
	mov	qword ptr [rsp], rax
	test	eax, eax
	je	.label_51
	mov	al, byte ptr [r14]
	cmp	al, 0x2a
	je	.label_22
	cmp	al, 0x2e
	jne	.label_28
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	cmp	rax,  qword ptr [word ptr [rip + label_17]]
	jne	.label_29
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_29:
	mov	rax,  qword ptr [word ptr [rip + label_17]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_17]],  rcx
	mov	byte ptr [rax], 0x2a
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_40
	.section	.text
	.align	16
	#Procedure 0x401a69
	.globl sub_401a69
	.type sub_401a69, @function
sub_401a69:

	nop	dword ptr [rax]
.label_44:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, r15
	call	error
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_35
.label_45:
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	call	fnmatch
	test	eax, eax
	je	.label_41
	xor	eax, eax
	mov	rcx, qword ptr [rsp]
	cmp	ecx, 2
	sete	al
	add	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_13
.label_51:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_13
.label_41:
	mov	eax, 2
	mov	qword ptr [rsp], rax
	jmp	.label_13
.label_22:
	mov	rdi, r14
.label_40:
	call	append_quoted
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	cmp	rax,  qword ptr [word ptr [rip + label_17]]
	jne	.label_33
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_33:
	mov	rax,  qword ptr [word ptr [rip + label_17]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_17]],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, qword ptr [rsp + 0x10]
	call	append_quoted
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	cmp	rax,  qword ptr [word ptr [rip + label_17]]
	je	.label_38
	jmp	.label_24
.label_28:
	mov	esi, OFFSET FLAT:label_46
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_13
	mov	esi, OFFSET FLAT:label_49
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_13
	mov	esi, OFFSET FLAT:label_14
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_13
	mov	r14, rbx
	mov	rbx, -0x128
	mov	rbp, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_19:
	mov	rsi,  qword ptr [word ptr [rbx + label_27]]
	mov	rdi, rbp
	call	c_strcasecmp
	test	eax, eax
	je	.label_50
	add	rbx, 8
	jne	.label_19
	mov	rax, qword ptr [rsp]
	lea	eax, [rax - 1]
	cmp	eax, 1
	ja	.label_39
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rbx, r14
	test	rbx, rbx
	je	.label_42
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	jmp	.label_43
.label_50:
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	cmp	rax,  qword ptr [word ptr [rip + label_17]]
	jne	.label_18
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_18:
	mov	rax,  qword ptr [word ptr [rbx + label_30]]
	mov	al, byte ptr [rax]
	mov	rcx,  qword ptr [word ptr [rip + label_17]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + label_17]],  rdx
	mov	byte ptr [rcx], al
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	cmp	rax,  qword ptr [word ptr [rip + label_17]]
	jne	.label_31
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_31:
	mov	rax,  qword ptr [word ptr [rbx + label_30]]
	mov	al, byte ptr [rax + 1]
	mov	rcx,  qword ptr [word ptr [rip + label_17]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + label_17]],  rdx
	mov	byte ptr [rcx], al
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	cmp	rax,  qword ptr [word ptr [rip + label_17]]
	jne	.label_48
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_48:
	mov	rax,  qword ptr [word ptr [rip + label_17]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_17]],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, qword ptr [rsp + 0x10]
	call	append_quoted
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	cmp	rax,  qword ptr [word ptr [rip + label_17]]
	mov	rbx, r14
	jne	.label_24
.label_38:
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_24:
	mov	rax,  qword ptr [word ptr [rip + label_17]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_17]],  rcx
	mov	byte ptr [rax], 0x3a
	jmp	.label_13
.label_39:
	mov	rbx, r14
	jmp	.label_13
.label_42:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
.label_43:
	mov	rcx, rax
	mov	r9, qword ptr [rsp + 8]
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, r15
	call	error
	jmp	.label_13
.label_20:
	call	free
.label_26:
	mov	rax, qword ptr [rsp + 0x18]
	and	al, 1
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
	#Procedure 0x401d59
	.globl sub_401d59
	.type sub_401d59, @function
sub_401d59:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d60

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x401d69
	.globl sub_401d69
	.type sub_401d69, @function
sub_401d69:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d70

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
	mov	rax,  qword ptr [word ptr [rip + label_52]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_53]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_54]]
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
	#Procedure 0x401dd8
	.globl sub_401dd8
	.type sub_401dd8, @function
sub_401dd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401de0
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_56:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_55
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_56
.label_55:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e06
	.globl sub_401e06
	.type sub_401e06, @function
sub_401e06:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e10
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_57
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_57:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e2e
	.globl sub_401e2e
	.type sub_401e2e, @function
sub_401e2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401e30
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
	#Procedure 0x401e63
	.globl sub_401e63
	.type sub_401e63, @function
sub_401e63:

	nop	word ptr cs:[rax + rax]
.label_60:
	xor	eax, eax
	jmp	.label_58
	.section	.text
	.align	16
	#Procedure 0x401e74
	.globl sub_401e74
	.type sub_401e74, @function
sub_401e74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e7e
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_60
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_59]]
.label_58:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e90
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x401e9a
	.globl sub_401e9a
	.type sub_401e9a, @function
sub_401e9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ea0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x401eaa
	.globl sub_401eaa
	.type sub_401eaa, @function
sub_401eaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401eb0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_61
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_62
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ed5
	.globl sub_401ed5
	.type sub_401ed5, @function
sub_401ed5:

	nop	word ptr cs:[rax + rax]
.label_65:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_63
.label_64:
	mov	eax, 1
	test	bpl, bpl
	je	.label_63
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
.label_63:
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
	#Procedure 0x401f28
	.globl sub_401f28
	.type sub_401f28, @function
sub_401f28:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f2b

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
	je	.label_65
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_64
	jmp	.label_63
	.section	.text
	.align	16
	#Procedure 0x401f60

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401f6e
	.globl sub_401f6e
	.type sub_401f6e, @function
sub_401f6e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401f70

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
	js	.label_69
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_72
	cmp	r12d, 0x7fffffff
	je	.label_67
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
	jne	.label_70
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_70:
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
.label_72:
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
	jbe	.label_68
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_71
.label_68:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_66
	mov	rdi, r14
	call	free
.label_66:
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
.label_71:
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
.label_69:
	call	abort
.label_67:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40212d
	.globl sub_40212d
	.type sub_40212d, @function
sub_40212d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402130

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_73
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_75
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_75
.label_73:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_74
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_74:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_78:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_79
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_78
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_77
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4021f0

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_80
	xor	eax, eax
	nop	dword ptr [rax]
.label_81:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_81
.label_80:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402210

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_82
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_82:
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
	#Procedure 0x402293
	.globl sub_402293
	.type sub_402293, @function
sub_402293:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022a0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_83
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_83:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022b8
	.globl sub_4022b8
	.type sub_4022b8, @function
sub_4022b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022c0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_84
	test	rdx, rdx
	je	.label_84
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_84:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4022eb
	.globl sub_4022eb
	.type sub_4022eb, @function
sub_4022eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0

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
	#Procedure 0x402339
	.globl sub_402339
	.type sub_402339, @function
sub_402339:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402340

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:label_85
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ecx, eax
	mov	al, 1
	cmp	ecx, ebx
	je	.label_86
	test	ecx, ecx
	js	.label_87
	mov	edi, ecx
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
.label_87:
	xor	eax, eax
.label_86:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402373
	.globl sub_402373
	.type sub_402373, @function
sub_402373:

	nop	word ptr cs:[rax + rax]
.label_88:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402385
	.globl sub_402385
	.type sub_402385, @function
sub_402385:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40238f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_88
	call	rpl_calloc
	test	rax, rax
	je	.label_88
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023b0

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_89
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x38]
.label_89:
	mov	rcx, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x4023c9
	.globl sub_4023c9
	.type sub_4023c9, @function
sub_4023c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4023d0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023da
	.globl sub_4023da
	.type sub_4023da, @function
sub_4023da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_90
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_93:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_93
.label_90:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_94
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_92]], OFFSET FLAT:slot0
.label_94:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_91
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_91:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402471
	.globl sub_402471
	.type sub_402471, @function
sub_402471:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402480

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40248a
	.globl sub_40248a
	.type sub_40248a, @function
sub_40248a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402490
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40249d
	.globl sub_40249d
	.type sub_40249d, @function
sub_40249d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4024a0
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
	#Procedure 0x4024b0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	xor	ebp, ebp
	cmp	rbx, r14
	je	.label_95
	nop	word ptr cs:[rax + rax]
.label_97:
	movzx	edi, byte ptr [rbx]
	call	c_tolower
	mov	ebp, eax
	movzx	edi, byte ptr [r14]
	call	c_tolower
	and	ebp, 0xff
	je	.label_96
	inc	rbx
	inc	r14
	movzx	ecx, al
	cmp	ebp, ecx
	je	.label_97
.label_96:
	movzx	eax, al
	sub	ebp, eax
.label_95:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402504
	.globl sub_402504
	.type sub_402504, @function
sub_402504:

	nop	word ptr cs:[rax + rax]
.label_100:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_99:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402529
	.globl sub_402529
	.type sub_402529, @function
sub_402529:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402533

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 8]
	test	rsi, rsi
	je	.label_101
	nop	word ptr cs:[rax + rax]
.label_102:
	cmp	rsi, r14
	jae	.label_98
	cmp	qword ptr [rsi], r14
	jae	.label_100
.label_98:
	mov	rbx, qword ptr [rsi + 8]
	mov	rdi, r15
	call	call_freefun
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_102
.label_101:
	test	r14, r14
	je	.label_99
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402580

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_77
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_104:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025c1

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [r14], rax
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	mov	rsi, rax
	call	call_chunkfun
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_104
	lea	rcx, [rax + r15 + 0x10]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [r14 + 0x50], 0xf9
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402630

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_106
	cmp	byte ptr [rax], 0x43
	jne	.label_108
	cmp	byte ptr [rax + 1], 0
	je	.label_105
.label_108:
	mov	esi, OFFSET FLAT:label_107
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_106
.label_105:
	xor	ebx, ebx
.label_106:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402661
	.globl sub_402661
	.type sub_402661, @function
sub_402661:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402670
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_109
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_109:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402696
	.globl sub_402696
	.type sub_402696, @function
sub_402696:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_110
	test	rbx, rbx
	jne	.label_110
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_110:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_112
	test	rax, rax
	je	.label_111
.label_112:
	pop	rbx
	ret	
.label_111:
	call	xalloc_die
.label_114:
	test	rcx, rcx
	jne	.label_113
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_113:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_115
.label_116:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x402712

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_114
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_117
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_116
.label_117:
	call	xalloc_die
.label_115:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402749
	.globl sub_402749
	.type sub_402749, @function
sub_402749:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402750

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
	#Procedure 0x402787
	.globl sub_402787
	.type sub_402787, @function
sub_402787:

	nop	word ptr [rax + rax]
.label_119:
	mov	ecx, 1
.label_118:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4027a0
	.globl sub_4027a0
	.type sub_4027a0, @function
sub_4027a0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027a5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_119
	test	rsi, rsi
	mov	ecx, 1
	je	.label_118
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_118
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027e0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027ea
	.globl sub_4027ea
	.type sub_4027ea, @function
sub_4027ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027f0

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
	#Procedure 0x4027fd
	.globl sub_4027fd
	.type sub_4027fd, @function
sub_4027fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402800

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_61
	call	setlocale
	mov	edi, OFFSET FLAT:label_131
	mov	esi, OFFSET FLAT:label_132
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_131
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebx, 2
	xor	ecx, ecx
.label_122:
	mov	r15d, ecx
	mov	ebp, ebx
	jmp	.label_120
.label_124:
	mov	ebp, 1
	nop	dword ptr [rax]
.label_120:
	mov	ebx, ebp
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_146
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_134
	cmp	eax, 0x62
	je	.label_120
	mov	cl, 1
	cmp	eax, 0x70
	je	.label_122
	cmp	eax, 0x63
	je	.label_124
	jmp	.label_126
.label_134:
	cmp	eax, -1
	jne	.label_157
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	test	r15b, r15b
	je	.label_142
	cmp	ebx, 2
	jne	.label_135
.label_142:
	sub	r14d, eax
	lea	r12, [r12 + rax*8]
	movzx	ebp, r15b
	xor	ebp, 1
	cmp	ebp, r14d
	jl	.label_128
	test	r15b, r15b
	je	.label_145
	mov	ebp, OFFSET FLAT:G_line
	mov	ebx, OFFSET FLAT:G_line
	nop	dword ptr [rax + rax]
.label_149:
	mov	rdi, rbx
	call	puts
	mov	rdi, rbx
	call	strlen
	lea	rbx, [rbx + rax + 1]
	mov	rcx, rbx
	sub	rcx, rbp
	xor	eax, eax
	cmp	rcx, 0x10c4
	jb	.label_149
	jmp	.label_121
.label_145:
	cmp	ebx, 2
	jne	.label_123
	call	guess_shell_syntax
	mov	ebx, eax
	cmp	ebx, 2
	je	.label_127
.label_123:
	mov	edi, OFFSET FLAT:lsc_obstack
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	test	r14d, r14d
	je	.label_141
	mov	rdi, qword ptr [r12]
	call	dc_parse_file
	jmp	.label_144
.label_141:
	xor	edi, edi
	xor	esi, esi
	call	dc_parse_stream
.label_144:
	mov	ecx, eax
	mov	eax, 1
	test	cl, cl
	je	.label_121
	mov	rbp,  qword ptr [word ptr [rip + label_17]]
	mov	r14,  qword ptr [word ptr [rip + label_136]]
	sub	rbp, r14
	jne	.label_137
	or	byte ptr [byte ptr [rip + label_150]],  2
.label_137:
	mov	rax,  qword ptr [word ptr [rip + label_151]]
	mov	rcx,  qword ptr [word ptr [rip + label_17]]
	add	rcx, rax
	not	rax
	and	rax, rcx
	mov	rcx,  qword ptr [word ptr [rip + label_152]]
	mov	rdx, rax
	sub	rdx, rcx
	mov	rsi,  qword ptr [word ptr [rip + label_16]]
	mov	rdi, rsi
	sub	rdi, rcx
	cmp	rdx, rdi
	cmova	rax, rsi
	mov	qword ptr [word ptr [rip + label_17]],  rax
	mov	qword ptr [word ptr [rip + label_136]],  rax
	test	ebx, ebx
	mov	eax, OFFSET FLAT:label_153
	mov	edi, OFFSET FLAT:label_154
	cmove	rdi, rax
	mov	eax, OFFSET FLAT:label_155
	mov	ebx, OFFSET FLAT:label_156
	cmove	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, rbp
	call	fwrite_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	call	fputs_unlocked
	xor	eax, eax
.label_121:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_157:
	cmp	eax, 0xffffff7d
	je	.label_129
	cmp	eax, 0xffffff7e
	jne	.label_126
	xor	edi, edi
	call	usage
.label_129:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_138
	mov	edx, OFFSET FLAT:label_139
	mov	r8d, OFFSET FLAT:label_140
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_135:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
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
.label_128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + rbp*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	test	r15b, r15b
	je	.label_130
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_133
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_130:
	mov	edi, 1
	call	usage
.label_126:
	mov	edi, 1
	call	usage
.label_127:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b30
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x402b3a
	.globl sub_402b3a
	.type sub_402b3a, @function
sub_402b3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b40

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
	je	.label_158
	mov	qword ptr [rax], rbx
.label_158:
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
	#Procedure 0x402c2c
	.globl sub_402c2c
	.type sub_402c2c, @function
sub_402c2c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c30

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
	je	.label_159
	cmp	r15, -2
	jb	.label_159
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_159
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_159:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c86
	.globl sub_402c86
	.type sub_402c86, @function
sub_402c86:

	nop	word ptr cs:[rax + rax]
.label_161:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_160
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c9b
	.globl sub_402c9b
	.type sub_402c9b, @function
sub_402c9b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ca5
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_161
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_161
.label_160:
	ret	
.label_164:
	xor	eax, eax
.label_165:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cc3
	.globl sub_402cc3
	.type sub_402cc3, @function
sub_402cc3:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402cc6

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_163
	.section	.text
	.align	16
	#Procedure 0x402ccc
	.globl sub_402ccc
	.type sub_402ccc, @function
sub_402ccc:

	nop	word ptr cs:[rax + rax]
.label_162:
	mov	rcx, qword ptr [rcx + 8]
.label_163:
	test	rcx, rcx
	je	.label_164
	cmp	rcx, rsi
	jae	.label_162
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_162
	jmp	.label_165
	.section	.text
	.align	16
	#Procedure 0x402cf0

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
	je	.label_168
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_166
	jmp	.label_167
.label_168:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_167
.label_166:
	mov	eax, 1
	test	bpl, bpl
	je	.label_167
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
.label_167:
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
	#Procedure 0x402d78
	.globl sub_402d78
	.type sub_402d78, @function
sub_402d78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d80

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
	je	.label_169
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_171
	jmp	.label_170
.label_169:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_170
.label_171:
	mov	eax, 1
	test	bpl, bpl
	je	.label_170
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
.label_170:
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
	#Procedure 0x402df9
	.globl sub_402df9
	.type sub_402df9, @function
sub_402df9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402e00

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
	je	.label_174
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_173
	jmp	.label_172
.label_174:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_172
.label_173:
	mov	eax, 1
	test	bpl, bpl
	je	.label_172
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
.label_172:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e63
	.globl sub_402e63
	.type sub_402e63, @function
sub_402e63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e70

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
	je	.label_177
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_175
	jmp	.label_176
.label_177:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_176
.label_175:
	mov	eax, 1
	test	bpl, bpl
	je	.label_176
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_176:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ecf
	.globl sub_402ecf
	.type sub_402ecf, @function
sub_402ecf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402ed0

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
	je	.label_178
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_180
	jmp	.label_179
.label_178:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_179
.label_180:
	mov	eax, 1
	test	bpl, bpl
	je	.label_179
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_179:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f19
	.globl sub_402f19
	.type sub_402f19, @function
sub_402f19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f20

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
	je	.label_183
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_182
	jmp	.label_181
.label_183:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_181
.label_182:
	mov	eax, 1
	test	bpl, bpl
	je	.label_181
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_181:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f65
	.globl sub_402f65
	.type sub_402f65, @function
sub_402f65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f70

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_185
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_186
	jmp	.label_184
.label_185:
	mov	eax, 1
	test	cl, cl
	je	.label_184
.label_186:
	xor	eax, eax
.label_184:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f9f
	.globl sub_402f9f
	.type sub_402f9f, @function
sub_402f9f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402fa0
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
	#Procedure 0x402fc7
	.globl sub_402fc7
	.type sub_402fc7, @function
sub_402fc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fd0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_187
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_187:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402ff3
	.globl sub_402ff3
	.type sub_402ff3, @function
sub_402ff3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403000

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_188
	test	rax, rax
	je	.label_189
.label_188:
	pop	rbx
	ret	
.label_189:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40301a
	.globl sub_40301a
	.type sub_40301a, @function
sub_40301a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403020
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
	#Procedure 0x403039
	.globl sub_403039
	.type sub_403039, @function
sub_403039:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403040

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x403045
	.globl sub_403045
	.type sub_403045, @function
sub_403045:

	nop	word ptr cs:[rax + rax]
.label_190:
	mov	rcx, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x40305a
	.globl sub_40305a
	.type sub_40305a, @function
sub_40305a:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403061

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_190
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x40]
	.section	.text
	.align	16
	#Procedure 0x403070
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
	#Procedure 0x40307f
	.globl sub_40307f
	.type sub_40307f, @function
sub_40307f:

	nop	
.label_191:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403085
	.globl sub_403085
	.type sub_403085, @function
sub_403085:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403093

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_191
	pop	rcx
	ret	
.label_436:
	not	al
	and	al, 1
	mov	ebp, eax
	jmp	.label_197
	.section	.text
	.align	16
	#Procedure 0x4030ab
	.globl sub_4030ab
	.type sub_4030ab, @function
sub_4030ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030b0

	.globl append_quoted
	.type append_quoted, @function
append_quoted:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	cl, byte ptr [rbx]
	test	cl, cl
	je	.label_201
	inc	rbx
	mov	al, 1
	nop	word ptr cs:[rax + rax]
.label_200:
	movsx	ecx, cl
	lea	edx, [rcx - 0x3a]
	cmp	edx, 0x24
	ja	.label_198
	mov	bpl, 1
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_196]]
.label_198:
	cmp	ecx, 0x27
	mov	bpl, 1
	jne	.label_197
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	cmp	rax,  qword ptr [word ptr [rip + label_17]]
	jne	.label_202
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_202:
	mov	rax,  qword ptr [word ptr [rip + label_17]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_17]],  rcx
	mov	byte ptr [rax], 0x27
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	cmp	rax,  qword ptr [word ptr [rip + label_17]]
	jne	.label_199
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_199:
	mov	rax,  qword ptr [word ptr [rip + label_17]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_17]],  rcx
	mov	byte ptr [rax], 0x5c
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	cmp	rax,  qword ptr [word ptr [rip + label_17]]
	jne	.label_192
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_192:
	mov	rax,  qword ptr [word ptr [rip + label_17]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_17]],  rcx
	mov	byte ptr [rax], 0x27
.label_193:
	mov	bpl, 1
.label_197:
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	cmp	rax,  qword ptr [word ptr [rip + label_17]]
	jne	.label_194
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_194:
	movzx	eax, byte ptr [rbx - 1]
	mov	rcx,  qword ptr [word ptr [rip + label_17]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + label_17]],  rdx
	mov	byte ptr [rcx], al
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	mov	eax, ebp
	jne	.label_200
.label_201:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031de
	.globl sub_4031de
	.type sub_4031de, @function
sub_4031de:

	nop	dword ptr [rax]
.label_435:
	test	al, 1
	mov	bpl, 1
	je	.label_197
	mov	rax,  qword ptr [word ptr [rip + label_16]]
	cmp	rax,  qword ptr [word ptr [rip + label_17]]
	jne	.label_195
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_195:
	mov	rax,  qword ptr [word ptr [rip + label_17]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_17]],  rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_193
	.section	.text
	.align	16
	#Procedure 0x403229
	.globl sub_403229
	.type sub_403229, @function
sub_403229:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403230
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
	#Procedure 0x40323d
	.globl sub_40323d
	.type sub_40323d, @function
sub_40323d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403240
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_203:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_203
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403261
	.globl sub_403261
	.type sub_403261, @function
sub_403261:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403270

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	mov	rcx, qword ptr [r13]
	mov	r14, qword ptr [r13 + 0x18]
	sub	r14, qword ptr [r13 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r13 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_204
	test	al, al
	jne	.label_204
	mov	r15, qword ptr [r13 + 8]
	mov	rdi, r13
	mov	rsi, rbx
	call	call_chunkfun
	mov	r12, rax
	test	r12, r12
	je	.label_204
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r12 + 8], r15
	add	rbx, r12
	mov	qword ptr [r13 + 0x20], rbx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbx, qword ptr [r13 + 0x30]
	lea	rax, [rbx + r12 + 0x10]
	not	rbx
	and	rbx, rax
	mov	rdi, rbx
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r13 + 0x50], 2
	jne	.label_205
	mov	rax, qword ptr [r13 + 0x30]
	lea	rcx, [rax + r15 + 0x10]
	not	rax
	and	rax, rcx
	cmp	qword ptr [r13 + 0x10], rax
	jne	.label_205
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r12 + 8], rax
	mov	rdi, r13
	mov	rsi, r15
	call	call_freefun
.label_205:
	mov	qword ptr [r13 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r13 + 0x18], r14
	and	byte ptr [r13 + 0x50], 0xfd
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_204:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403360

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40336a
	.globl sub_40336a
	.type sub_40336a, @function
sub_40336a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403370

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	orig_freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_207
	test	rbx, rbx
	je	.label_207
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_207
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_207
	mov	edi, OFFSET FLAT:label_85
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_206
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_207
.label_206:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_207:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403401
	.globl sub_403401
	.type sub_403401, @function
sub_403401:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403410

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	.section	.text
	.align	16
	#Procedure 0x403415
	.globl sub_403415
	.type sub_403415, @function
sub_403415:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403420
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40342a
	.globl sub_40342a
	.type sub_40342a, @function
sub_40342a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403430

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_208:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_208
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_211
	.section	.text
	.align	16
	#Procedure 0x403451
	.globl sub_403451
	.type sub_403451, @function
sub_403451:

	nop	word ptr cs:[rax + rax]
.label_210:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403464
	.globl sub_403464
	.type sub_403464, @function
sub_403464:

	nop	dword ptr [rax + rax]
.label_209:
	inc	rax
	mov	sil, dl
.label_211:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_209
	test	cl, cl
	je	.label_210
	mov	edx, esi
	and	dl, 1
	je	.label_212
	xor	esi, esi
.label_212:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_209
	.section	.text
	.align	16
	#Procedure 0x403490

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_213
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_213
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_213:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x4034b6
	.globl sub_4034b6
	.type sub_4034b6, @function
sub_4034b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034c0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_214
.label_215:
	ret	
.label_214:
	cmp	edi, 0x7f
	je	.label_215
	xor	eax, eax
	jmp	.label_215
	.section	.text
	.align	16
	#Procedure 0x4034d1
	.globl sub_4034d1
	.type sub_4034d1, @function
sub_4034d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034e0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4034ea
	.globl sub_4034ea
	.type sub_4034ea, @function
sub_4034ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034f0
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
	#Procedure 0x403500

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x403509
	.globl sub_403509
	.type sub_403509, @function
sub_403509:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403510

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40351a
	.globl sub_40351a
	.type sub_40351a, @function
sub_40351a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403520
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40352a
	.globl sub_40352a
	.type sub_40352a, @function
sub_40352a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403530
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_217
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_139
	mov	ecx, OFFSET FLAT:label_220
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4035a4
	.globl sub_4035a4
	.type sub_4035a4, @function
sub_4035a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035b0

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
	#Procedure 0x4035c7
	.globl sub_4035c7
	.type sub_4035c7, @function
sub_4035c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035d0

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
	jne	.label_222
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
	je	.label_221
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_226
	mov	eax, OFFSET FLAT:label_227
	jmp	.label_225
.label_230:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_228
	mov	eax, OFFSET FLAT:label_229
.label_225:
	cmove	rax, rcx
.label_222:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40364f
	.globl sub_40364f
	.type sub_40364f, @function
sub_40364f:

	nop	dword ptr [rax]
.label_221:
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
	je	.label_230
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_223
	mov	eax, OFFSET FLAT:label_224
	jmp	.label_225
	.section	.text
	.align	16
	#Procedure 0x403690

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
	je	.label_241
	mov	edx, OFFSET FLAT:label_246
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_233
.label_241:
	mov	edx, OFFSET FLAT:label_235
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_233:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
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
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_242
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_243]]
.label_443:
	add	rsp, 8
	jmp	.label_234
.label_242:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
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
	jmp	.label_234
.label_444:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
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
.label_445:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
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
.label_446:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
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
.label_447:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
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
	jmp	.label_234
.label_448:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
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
	jmp	.label_234
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
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
	jmp	.label_234
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
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
	jmp	.label_234
.label_452:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
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
	jmp	.label_234
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
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
.label_234:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4039e8
	.globl sub_4039e8
	.type sub_4039e8, @function
sub_4039e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039f0
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
	#Procedure 0x4039ff
	.globl sub_4039ff
	.type sub_4039ff, @function
sub_4039ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403a00

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	and	byte ptr [rdi + 0x50], 0xfe
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a19
	.globl sub_403a19
	.type sub_403a19, @function
sub_403a19:

	nop	dword ptr [rax]
.label_250:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403a2e
	.globl sub_403a2e
	.type sub_403a2e, @function
sub_403a2e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a37

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_250
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_252
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_250
.label_252:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_250
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_251
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_251:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403aa0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403aa8
	.globl sub_403aa8
	.type sub_403aa8, @function
sub_403aa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_256
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_254
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_254
	mov	esi, OFFSET FLAT:label_255
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_258
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_258:
	mov	rbx, r14
.label_254:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_256:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_257
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403b51
	.globl sub_403b51
	.type sub_403b51, @function
sub_403b51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b60

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, r12
	call	fileno
	xor	r14d, r14d
	test	eax, eax
	mov	qword ptr [rsp], rbp
	je	.label_271
	cmp	eax, 1
	je	.label_260
	cmp	eax, 2
	je	.label_261
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_261:
	mov	bpl, r14b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r14b
	jmp	.label_269
.label_271:
	xor	ebp, ebp
	xor	r15d, r15d
	jmp	.label_259
.label_260:
	xor	ebp, ebp
.label_269:
	xor	r15d, r15d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_262
	xor	r13d, r13d
	xor	edi, edi
	call	protect_fd
	mov	r15b, 1
	test	al, al
	je	.label_264
.label_262:
	test	r14b, r14b
	je	.label_266
	mov	edi, 1
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_270
.label_266:
	test	bpl, bpl
	je	.label_259
	mov	edi, 2
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_264
.label_259:
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
	jmp	.label_264
.label_270:
	mov	r14b, 1
.label_264:
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	test	bpl, bpl
	je	.label_267
	mov	edi, 2
	call	close
.label_267:
	test	r14b, r14b
	je	.label_268
	mov	edi, 1
	call	close
.label_268:
	test	r15b, r15b
	je	.label_265
	xor	edi, edi
	call	close
.label_265:
	test	r13, r13
	jne	.label_263
	mov	dword ptr [rbx], r12d
.label_263:
	mov	rax, r13
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
	#Procedure 0x403c7e
	.globl sub_403c7e
	.type sub_403c7e, @function
sub_403c7e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403c80
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
	#Procedure 0x403cf2
	.globl sub_403cf2
	.type sub_403cf2, @function
sub_403cf2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d00

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
	je	.label_272
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
.label_272:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403d52
	.globl sub_403d52
	.type sub_403d52, @function
sub_403d52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d60

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	mov	qword ptr [rdi + 0x48], r9
	or	byte ptr [rdi + 0x50], 1
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d7d
	.globl sub_403d7d
	.type sub_403d7d, @function
sub_403d7d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d80
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
	#Procedure 0x403d96
	.globl sub_403d96
	.type sub_403d96, @function
sub_403d96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403da0

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
	#Procedure 0x403dcd
	.globl sub_403dcd
	.type sub_403dcd, @function
sub_403dcd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403dd0
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
	#Procedure 0x403de3
	.globl sub_403de3
	.type sub_403de3, @function
sub_403de3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403df0

	.globl guess_shell_syntax
	.type guess_shell_syntax, @function
guess_shell_syntax:
	push	rax
	mov	edi, OFFSET FLAT:label_273
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_274
	cmp	byte ptr [rax], 0
	je	.label_274
	mov	rdi, rax
	call	last_component
	cmp	byte ptr [rax], 0x63
	jne	.label_275
	cmp	byte ptr [rax + 1], 0x73
	jne	.label_275
	cmp	byte ptr [rax + 2], 0x68
	jne	.label_275
	mov	ecx, 1
	cmp	byte ptr [rax + 3], 0
	je	.label_274
.label_275:
	mov	esi, OFFSET FLAT:label_276
	mov	rdi, rax
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
.label_274:
	mov	eax, ecx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e46
	.globl sub_403e46
	.type sub_403e46, @function
sub_403e46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_283
	nop	
.label_282:
	mov	edi, OFFSET FLAT:label_138
	call	strcmp
	test	eax, eax
	je	.label_280
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_282
.label_280:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_138
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_139
	mov	ecx, OFFSET FLAT:label_220
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_277
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_277
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_277:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_138
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_220
	mov	ecx, OFFSET FLAT:label_138
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_286
	mov	ecx, OFFSET FLAT:label_61
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
	#Procedure 0x403f6a
	.globl sub_403f6a
	.type sub_403f6a, @function
sub_403f6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f70

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f73
	.globl sub_403f73
	.type sub_403f73, @function
sub_403f73:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f80

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
	mov	rcx,  qword ptr [word ptr [rip + label_52]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_53]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_54]]
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
	#Procedure 0x403fed
	.globl sub_403fed
	.type sub_403fed, @function
sub_403fed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ff0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x403ffd
	.globl sub_403ffd
	.type sub_403ffd, @function
sub_403ffd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404000

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x404007
	.globl sub_404007
	.type sub_404007, @function
sub_404007:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404010

	.globl dc_parse_file
	.type dc_parse_file, @function
dc_parse_file:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_287
	cmp	byte ptr [rbx + 1], 0
	je	.label_291
.label_287:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:label_288
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_289
.label_291:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rsi, rbx
	call	dc_parse_stream
	mov	bpl, al
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	eax, eax
	je	.label_290
.label_289:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_77
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_290:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404091
	.globl sub_404091
	.type sub_404091, @function
sub_404091:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040a0
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
	#Procedure 0x4040b3
	.globl sub_4040b3
	.type sub_4040b3, @function
sub_4040b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040c0

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_133
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4040fb
	.globl sub_4040fb
	.type sub_4040fb, @function
sub_4040fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404100
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
	#Procedure 0x40410f
	.globl sub_40410f
	.type sub_40410f, @function
sub_40410f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404110

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
.label_390:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_311
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_394]]
.label_495:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_398
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_229
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_496:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_298
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_298
	xor	r14d, r14d
.label_313:
	cmp	r14, r11
	jae	.label_308
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_308:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_313
.label_298:
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
	jmp	.label_331
.label_488:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_331
.label_491:
	mov	al, 1
.label_489:
	mov	r12b, 1
.label_492:
	test	r12b, 1
	mov	cl, 1
	je	.label_336
	mov	ecx, eax
.label_336:
	mov	al, cl
.label_490:
	test	r12b, 1
	jne	.label_339
	test	r11, r11
	je	.label_318
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_318:
	mov	r14d, 1
	jmp	.label_344
.label_339:
	xor	r14d, r14d
.label_344:
	mov	ecx, OFFSET FLAT:label_229
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_331
.label_493:
	test	r12b, 1
	jne	.label_352
	test	r11, r11
	je	.label_377
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_377:
	mov	r14d, 1
	jmp	.label_357
.label_494:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_228
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_331
.label_352:
	xor	r14d, r14d
.label_357:
	mov	eax, OFFSET FLAT:label_228
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_331:
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
	jmp	.label_374
	.section	.text
	.align	16
	#Procedure 0x4043ec
	.globl sub_4043ec
	.type sub_4043ec, @function
sub_4043ec:

	nop	dword ptr [rax]
.label_375:
	inc	rsi
.label_374:
	cmp	rbp, -1
	je	.label_401
	cmp	rsi, rbp
	jne	.label_373
	jmp	.label_295
	.section	.text
	.align	16
	#Procedure 0x404403
	.globl sub_404403
	.type sub_404403, @function
sub_404403:

	nop	word ptr cs:[rax + rax]
.label_401:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_295
.label_373:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_301
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_303
	cmp	rbp, -1
	jne	.label_303
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
.label_303:
	cmp	rbx, rbp
	jbe	.label_319
.label_301:
	xor	r8d, r8d
.label_345:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_321
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_327]]
.label_506:
	test	rsi, rsi
	jne	.label_316
	jmp	.label_332
	.section	.text
	.align	16
	#Procedure 0x40449e
	.globl sub_40449e
	.type sub_40449e, @function
sub_40449e:

	nop	
.label_319:
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
	jne	.label_342
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_345
	jmp	.label_353
.label_342:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_345
.label_510:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_360
	test	rsi, rsi
	jne	.label_362
	cmp	rbp, 1
	je	.label_332
	xor	r13d, r13d
	jmp	.label_294
.label_499:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_371
	cmp	byte ptr [rsp + 7], 0
	jne	.label_310
	cmp	r12d, 2
	jne	.label_309
	mov	eax, r9d
	and	al, 1
	jne	.label_309
	cmp	r14, r11
	jae	.label_376
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_376:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_380
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_380:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_384
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_384:
	add	r14, 3
	mov	r9b, 1
.label_309:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_393
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_393:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_391
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_391
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_391
	cmp	r14, r11
	jae	.label_399
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_399:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_317
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_317:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_294
.label_500:
	mov	bl, 0x62
	jmp	.label_296
.label_501:
	mov	cl, 0x74
	jmp	.label_300
.label_502:
	mov	bl, 0x76
	jmp	.label_296
.label_503:
	mov	bl, 0x66
	jmp	.label_296
.label_504:
	mov	cl, 0x72
	jmp	.label_300
.label_507:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_306
	cmp	byte ptr [rsp + 7], 0
	jne	.label_310
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
	jae	.label_315
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_315:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_330
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_330:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_333
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_333:
	add	r14, 3
	xor	r9d, r9d
.label_306:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_294
.label_508:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_341
	cmp	r12d, 2
	jne	.label_316
	cmp	byte ptr [rsp + 7], 0
	je	.label_316
	jmp	.label_310
.label_509:
	cmp	r12d, 2
	jne	.label_350
	cmp	byte ptr [rsp + 7], 0
	jne	.label_310
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_297
.label_321:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_304
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
.label_305:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_349
	test	r8b, r8b
	je	.label_349
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_294
.label_360:
	test	rsi, rsi
	jne	.label_361
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_361
.label_332:
	mov	dl, 1
.label_505:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_310
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_294:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_395
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_396
	jmp	.label_340
	.section	.text
	.align	16
	#Procedure 0x4047e4
	.globl sub_4047e4
	.type sub_4047e4, @function
sub_4047e4:

	nop	word ptr cs:[rax + rax]
.label_395:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_340
.label_396:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_402
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_297
	jmp	.label_355
	.section	.text
	.align	16
	#Procedure 0x40482d
	.globl sub_40482d
	.type sub_40482d, @function
sub_40482d:

	nop	dword ptr [rax]
.label_340:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_355
	jmp	.label_297
.label_402:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_355
.label_371:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_375
	xor	r15d, r15d
	jmp	.label_316
.label_350:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_300
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_297
.label_300:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_310
.label_296:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_294
	nop	word ptr cs:[rax + rax]
.label_355:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_310
	cmp	r12d, 2
	jne	.label_337
	mov	eax, r9d
	and	al, 1
	jne	.label_337
	cmp	r14, r11
	jae	.label_314
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_314:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_388
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_388:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_347
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_347:
	add	r14, 3
	mov	r9b, 1
.label_337:
	cmp	r14, r11
	jae	.label_351
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_351:
	inc	r14
	jmp	.label_354
.label_304:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_358
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_358:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_325:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_379
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_382
	cmp	rbp, -2
	je	.label_346
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_386
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_372:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_324
	bt	rsi, rdx
	jb	.label_353
.label_324:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_372
.label_386:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_404
	xor	r13d, r13d
.label_404:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_325
	jmp	.label_305
.label_391:
	xor	r13d, r13d
	jmp	.label_294
.label_361:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_294
.label_341:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_316
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_316
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_316
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_334
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_367
	cmp	byte ptr [rsp + 7], 0
	jne	.label_310
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_366
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_366:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_307
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_307:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_343
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_343:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_359
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_359:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_294
.label_316:
	xor	eax, eax
.label_362:
	xor	r13d, r13d
	jmp	.label_294
.label_349:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_356
	.section	.text
	.align	16
	#Procedure 0x404b13
	.globl sub_404b13
	.type sub_404b13, @function
sub_404b13:

	nop	word ptr cs:[rax + rax]
.label_312:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_356:
	test	r8b, r8b
	je	.label_363
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_364
	cmp	r14, r11
	jae	.label_368
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_368:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_364
	.section	.text
	.align	16
	#Procedure 0x404b5c
	.globl sub_404b5c
	.type sub_404b5c, @function
sub_404b5c:

	nop	dword ptr [rax]
.label_363:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_353
	cmp	r12d, 2
	jne	.label_378
	mov	eax, r9d
	and	al, 1
	jne	.label_378
	cmp	r14, r11
	jae	.label_381
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_381:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_383
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_383:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_387
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_387:
	add	r14, 3
	mov	r9b, 1
.label_378:
	cmp	r14, r11
	jae	.label_369
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_369:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_329
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_329:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_397
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_397:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_364:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_297
	test	r9b, 1
	je	.label_299
	mov	ebx, eax
	and	bl, 1
	jne	.label_299
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_302
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_302:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_293
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_293:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_299:
	cmp	r14, r11
	jae	.label_312
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_312
	.section	.text
	.align	16
	#Procedure 0x404c63
	.globl sub_404c63
	.type sub_404c63, @function
sub_404c63:

	nop	word ptr cs:[rax + rax]
.label_297:
	test	r9b, 1
	je	.label_323
	and	al, 1
	jne	.label_323
	cmp	r14, r11
	jae	.label_326
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_326:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_365
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_365:
	add	r14, 2
	xor	r9d, r9d
.label_323:
	mov	ebx, r15d
.label_354:
	cmp	r14, r11
	jae	.label_335
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_335:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_375
.label_382:
	xor	r13d, r13d
.label_379:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_305
.label_346:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_348
	mov	rsi, qword ptr [rsp + 0x50]
.label_400:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_322
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_400
	xor	r13d, r13d
	jmp	.label_305
.label_348:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_305
.label_322:
	xor	r13d, r13d
	jmp	.label_305
.label_334:
	xor	r13d, r13d
	jmp	.label_294
.label_367:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_294
	.section	.text
	.align	16
	#Procedure 0x404d38
	.globl sub_404d38
	.type sub_404d38, @function
sub_404d38:

	nop	dword ptr [rax + rax]
.label_295:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_370
	or	dl, al
	je	.label_353
.label_370:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_320
	or	dl, al
	jne	.label_320
	test	r10b, 1
	jne	.label_385
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_320
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_390
.label_320:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_392
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_292
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_292
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_403:
	cmp	r14, r11
	jae	.label_389
	mov	byte ptr [rcx + r14], al
.label_389:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_403
	jmp	.label_292
.label_310:
	mov	qword ptr [rsp + 0x20], rbp
.label_353:
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
.label_338:
	mov	r14, rax
.label_328:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_385:
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
	jmp	.label_338
.label_392:
	mov	rcx, qword ptr [rsp + 8]
.label_292:
	cmp	r14, r11
	jae	.label_328
	mov	byte ptr [rcx + r14], 0
	jmp	.label_328
.label_311:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ecc
	.globl sub_404ecc
	.type sub_404ecc, @function
sub_404ecc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ed0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_408
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_408:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_409
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
	#Procedure 0x404fcb
	.globl sub_404fcb
	.type sub_404fcb, @function
sub_404fcb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fd0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_413:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_412
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_414
	.section	.text
	.align	16
	#Procedure 0x404ff9
	.globl sub_404ff9
	.type sub_404ff9, @function
sub_404ff9:

	nop	dword ptr [rax]
.label_412:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_414:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_415
	inc	r9
	cmp	r9, 0xa
	jb	.label_413
.label_415:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40502f
	.globl sub_40502f
	.type sub_40502f, @function
sub_40502f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405030

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
	#Procedure 0x405066
	.globl sub_405066
	.type sub_405066, @function
sub_405066:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405070
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40507a
	.globl sub_40507a
	.type sub_40507a, @function
sub_40507a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405080
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x405088
	.globl sub_405088
	.type sub_405088, @function
sub_405088:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405090
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_416
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_416:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050ae
	.globl sub_4050ae
	.type sub_4050ae, @function
sub_4050ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4050b0

	.globl parse_line
	.type parse_line, @function
parse_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	qword ptr [r12], 0
	mov	qword ptr [r14], 0
	call	__ctype_b_loc
	mov	qword ptr [rsp], rax
	mov	rbp, qword ptr [rax]
	dec	r15
	nop	word ptr cs:[rax + rax]
.label_417:
	movzx	ebx, byte ptr [r15 + 1]
	inc	r15
	movsx	edi, bl
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_417
	test	bl, bl
	je	.label_419
	cmp	bl, 0x23
	je	.label_419
	mov	rbx, r14
	mov	rax, qword ptr [rsp]
	mov	r14, qword ptr [rax]
	mov	r13, r15
	nop	dword ptr [rax + rax]
.label_418:
	movsx	ebp, byte ptr [r13]
	mov	edi, ebp
	call	to_uchar
	movzx	eax, al
	inc	r13
	test	ebp, ebp
	je	.label_423
	movzx	eax, word ptr [r14 + rax*2]
	and	eax, 0x2000
	test	ax, ax
	je	.label_418
.label_423:
	lea	rsi, [r13 - 1]
	sub	rsi, r15
	mov	rdi, r15
	call	xstrndup
	mov	qword ptr [r12], rax
	cmp	byte ptr [r13 - 1], 0
	mov	r14, rbx
	je	.label_419
	mov	rax, qword ptr [rsp]
	mov	rbp, qword ptr [rax]
	nop	dword ptr [rax]
.label_420:
	movzx	ebx, byte ptr [r13]
	movsx	edi, bl
	call	to_uchar
	movzx	eax, al
	inc	r13
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_420
	test	bl, bl
	je	.label_419
	cmp	bl, 0x23
	je	.label_419
	lea	rbx, [r13 - 1]
	jmp	.label_422
	.section	.text
	.align	16
	#Procedure 0x4051a9
	.globl sub_4051a9
	.type sub_4051a9, @function
sub_4051a9:

	nop	dword ptr [rax]
.label_425:
	inc	r13
.label_422:
	movzx	eax, byte ptr [r13 - 1]
	cmp	al, 0x23
	je	.label_424
	test	al, al
	jne	.label_425
.label_424:
	mov	rax, qword ptr [rsp]
	mov	rbp, qword ptr [rax]
	nop	word ptr [rax + rax]
.label_421:
	movsx	edi, byte ptr [r13 - 2]
	call	to_uchar
	movzx	eax, al
	dec	r13
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_421
	sub	r13, rbx
	mov	rdi, rbx
	mov	rsi, r13
	call	xstrndup
	mov	qword ptr [r14], rax
.label_419:
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
	#Procedure 0x405207
	.globl sub_405207
	.type sub_405207, @function
sub_405207:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405210

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_426
	ret	
.label_426:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x405223
	.globl sub_405223
	.type sub_405223, @function
sub_405223:

	nop	word ptr cs:[rax + rax]
.label_428:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_427
	test	cl, cl
	jne	.label_427
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_427:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40525b
	.globl sub_40525b
	.type sub_40525b, @function
sub_40525b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405265

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
	je	.label_428
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_427
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_427
	.section	.text
	.align	16
	#Procedure 0x405305
	.globl sub_405305
	.type sub_405305, @function
sub_405305:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405312
	.globl sub_405312
	.type sub_405312, @function
sub_405312:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405336
	.globl sub_405336
	.type sub_405336, @function
sub_405336:

	nop	word ptr cs:[rax + rax]
