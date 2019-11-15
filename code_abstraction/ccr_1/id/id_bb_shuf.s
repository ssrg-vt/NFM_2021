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
	#Procedure 0x40181f
	.globl sub_40181f
	.type sub_40181f, @function
sub_40181f:

	nop	
.label_10:
	cmp	edi, 0x7f
	je	.label_9
	xor	eax, eax
	jmp	.label_9
	.section	.text
	.align	16
	#Procedure 0x401829
	.globl sub_401829
	.type sub_401829, @function
sub_401829:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401838
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_10
.label_9:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401840
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
	#Procedure 0x401889
	.globl sub_401889
	.type sub_401889, @function
sub_401889:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401890

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_11:
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
	ja	.label_11
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018db
	.globl sub_4018db
	.type sub_4018db, @function
sub_4018db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018e0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_12
	ret	
.label_12:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x4018f3
	.globl sub_4018f3
	.type sub_4018f3, @function
sub_4018f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401900
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_13
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_13:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40191e
	.globl sub_40191e
	.type sub_40191e, @function
sub_40191e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401920

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
	#Procedure 0x401957
	.globl sub_401957
	.type sub_401957, @function
sub_401957:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401960
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_14
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_14:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401986
	.globl sub_401986
	.type sub_401986, @function
sub_401986:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401990

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_15
	test	rbx, rbx
	jne	.label_15
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_15:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_17
	test	rax, rax
	je	.label_16
.label_17:
	pop	rbx
	ret	
.label_16:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4019c0
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
	#Procedure 0x4019cd
	.globl sub_4019cd
	.type sub_4019cd, @function
sub_4019cd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4019d0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_18
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_18:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019ee
	.globl sub_4019ee
	.type sub_4019ee, @function
sub_4019ee:

	nop	
.label_19:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019f3
	.globl sub_4019f3
	.type sub_4019f3, @function
sub_4019f3:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019fb
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_19
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a10

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_29
	nop	
.label_28:
	mov	edi, OFFSET FLAT:label_20
	call	strcmp
	test	eax, eax
	je	.label_26
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_28
.label_26:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_20
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_21
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_21
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_20
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_32
	mov	ecx, OFFSET FLAT:label_33
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
	#Procedure 0x401b2a
	.globl sub_401b2a
	.type sub_401b2a, @function
sub_401b2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b30
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x401b3a
	.globl sub_401b3a
	.type sub_401b3a, @function
sub_401b3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b40

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
	je	.label_34
	mov	qword ptr [rax], rbx
.label_34:
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
	#Procedure 0x401c2c
	.globl sub_401c2c
	.type sub_401c2c, @function
sub_401c2c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c30

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_35
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_37
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_35
.label_37:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_35
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_36
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_36:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_35:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x401ca7
	.globl sub_401ca7
	.type sub_401ca7, @function
sub_401ca7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cb0

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
	je	.label_40
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_38
	jmp	.label_39
.label_40:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_39
.label_38:
	mov	eax, 1
	test	bpl, bpl
	je	.label_39
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
.label_39:
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
	#Procedure 0x401d38
	.globl sub_401d38
	.type sub_401d38, @function
sub_401d38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d40

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
	je	.label_41
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_43
	jmp	.label_42
.label_41:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_42
.label_43:
	mov	eax, 1
	test	bpl, bpl
	je	.label_42
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
.label_42:
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
	#Procedure 0x401db9
	.globl sub_401db9
	.type sub_401db9, @function
sub_401db9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401dc0

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
	je	.label_46
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_45
	jmp	.label_44
.label_46:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_44
.label_45:
	mov	eax, 1
	test	bpl, bpl
	je	.label_44
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
.label_44:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e23
	.globl sub_401e23
	.type sub_401e23, @function
sub_401e23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e30

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
	je	.label_49
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_47
	jmp	.label_48
.label_49:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_48
.label_47:
	mov	eax, 1
	test	bpl, bpl
	je	.label_48
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_48:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e8f
	.globl sub_401e8f
	.type sub_401e8f, @function
sub_401e8f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401e90

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
	je	.label_50
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_52
	jmp	.label_51
.label_50:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_51
.label_52:
	mov	eax, 1
	test	bpl, bpl
	je	.label_51
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_51:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ed9
	.globl sub_401ed9
	.type sub_401ed9, @function
sub_401ed9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ee0

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
	je	.label_55
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_54
	jmp	.label_53
.label_55:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_53
.label_54:
	mov	eax, 1
	test	bpl, bpl
	je	.label_53
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_53:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f25
	.globl sub_401f25
	.type sub_401f25, @function
sub_401f25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f30

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_58
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_57
	jmp	.label_56
.label_58:
	mov	eax, 1
	test	cl, cl
	je	.label_56
.label_57:
	xor	eax, eax
.label_56:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f5f
	.globl sub_401f5f
	.type sub_401f5f, @function
sub_401f5f:

	nop	
.label_61:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_59
.label_60:
	mov	eax, 1
	test	bpl, bpl
	je	.label_59
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
.label_59:
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
	#Procedure 0x401fa8
	.globl sub_401fa8
	.type sub_401fa8, @function
sub_401fa8:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401fab

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
	je	.label_61
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_60
	jmp	.label_59
	.section	.text
	.align	16
	#Procedure 0x401fe0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_63
	cmp	byte ptr [rax], 0x43
	jne	.label_65
	cmp	byte ptr [rax + 1], 0
	je	.label_62
.label_65:
	mov	esi, OFFSET FLAT:label_64
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_63
.label_62:
	xor	ebx, ebx
.label_63:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402011
	.globl sub_402011
	.type sub_402011, @function
sub_402011:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402020

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
	jne	.label_73
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
	je	.label_69
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_74
	mov	eax, OFFSET FLAT:label_75
	jmp	.label_72
.label_69:
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
	je	.label_68
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_70
	mov	eax, OFFSET FLAT:label_71
	jmp	.label_72
.label_68:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_66
	mov	eax, OFFSET FLAT:label_67
.label_72:
	cmove	rax, rcx
.label_73:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020dd
	.globl sub_4020dd
	.type sub_4020dd, @function
sub_4020dd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4020e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020e8
	.globl sub_4020e8
	.type sub_4020e8, @function
sub_4020e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4020fa
	.globl sub_4020fa
	.type sub_4020fa, @function
sub_4020fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402100
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
	#Procedure 0x40210f
	.globl sub_40210f
	.type sub_40210f, @function
sub_40210f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402110

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40211a
	.globl sub_40211a
	.type sub_40211a, @function
sub_40211a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402120
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
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
	#Procedure 0x402140
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
	#Procedure 0x402173
	.globl sub_402173
	.type sub_402173, @function
sub_402173:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402180

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
	#Procedure 0x4021b6
	.globl sub_4021b6
	.type sub_4021b6, @function
sub_4021b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021c0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x4021c9
	.globl sub_4021c9
	.type sub_4021c9, @function
sub_4021c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4021d0

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
	mov	rax,  qword ptr [word ptr [rip + label_76]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_77]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_78]]
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
	#Procedure 0x402238
	.globl sub_402238
	.type sub_402238, @function
sub_402238:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402240
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40224a
	.globl sub_40224a
	.type sub_40224a, @function
sub_40224a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402250

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402280

	.globl print_full_info
	.type print_full_info, @function
print_full_info:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:ruid
	call	uidtostr_ptr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	mov	edi,  dword ptr [dword ptr [rip + ruid]]
	call	getpwuid
	mov	r15, rax
	test	r15, r15
	je	.label_94
	mov	rdx, qword ptr [r15]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_86
	xor	eax, eax
	call	__printf_chk
.label_94:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:rgid
	call	gidtostr_ptr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	mov	edi,  dword ptr [dword ptr [rip + rgid]]
	call	getgrgid
	test	rax, rax
	je	.label_88
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_86
	xor	eax, eax
	call	__printf_chk
.label_88:
	mov	eax,  dword ptr [dword ptr [rip + euid]]
	cmp	eax,  dword ptr [dword ptr [rip + ruid]]
	je	.label_82
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:euid
	call	uidtostr_ptr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	mov	edi,  dword ptr [dword ptr [rip + euid]]
	call	getpwuid
	mov	rbx, rax
	test	rbx, rbx
	je	.label_82
	mov	rdx, qword ptr [rbx]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_86
	xor	eax, eax
	call	__printf_chk
	mov	r15, rbx
.label_82:
	mov	eax,  dword ptr [dword ptr [rip + egid]]
	cmp	eax,  dword ptr [dword ptr [rip + rgid]]
	je	.label_102
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:egid
	call	gidtostr_ptr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	mov	edi,  dword ptr [dword ptr [rip + egid]]
	call	getgrgid
	test	rax, rax
	je	.label_102
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_86
	xor	eax, eax
	call	__printf_chk
.label_102:
	test	r14, r14
	je	.label_85
	mov	esi, 0xffffffff
	test	r15, r15
	je	.label_87
	mov	esi, dword ptr [r15 + 0x14]
	jmp	.label_87
.label_85:
	mov	esi,  dword ptr [dword ptr [rip + egid]]
.label_87:
	lea	rdx, [rsp]
	mov	rdi, r14
	call	xgetgroups
	mov	ebx, eax
	test	ebx, ebx
	js	.label_89
	je	.label_91
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_92:
	test	rbp, rbp
	jle	.label_101
	mov	edi, 0x2c
	call	putchar_unlocked
.label_101:
	mov	rax, qword ptr [rsp]
	lea	rdi, [rax + rbp*4]
	call	gidtostr_ptr
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rax, qword ptr [rsp]
	mov	edi, dword ptr [rax + rbp*4]
	call	getgrgid
	test	rax, rax
	je	.label_100
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_86
	xor	eax, eax
	call	__printf_chk
.label_100:
	inc	rbp
	cmp	ebp, ebx
	jne	.label_92
.label_91:
	mov	rdi, qword ptr [rsp]
	call	free
	jmp	.label_98
.label_89:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	test	r14, r14
	je	.label_96
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	jmp	.label_83
.label_96:
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_83:
	mov	byte ptr [byte ptr [rip + ok]],  0
.label_98:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40253f
	.globl sub_40253f
	.type sub_40253f, @function
sub_40253f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402540

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40254a
	.globl sub_40254a
	.type sub_40254a, @function
sub_40254a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550
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
	#Procedure 0x402560

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x402569
	.globl sub_402569
	.type sub_402569, @function
sub_402569:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402570

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40257a
	.globl sub_40257a
	.type sub_40257a, @function
sub_40257a:

	nop	word ptr [rax + rax]
.label_105:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
.label_106:
	lea	rdi, [rsp + 0xc]
	call	gidtostr_ptr_0
	mov	rdi, rax
.label_104:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4025c6
	.globl sub_4025c6
	.type sub_4025c6, @function
sub_4025c6:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025cf

	.globl print_group
	.type print_group, @function
print_group:
	push	rbx
	sub	rsp, 0x10
	mov	dword ptr [rsp + 0xc], edi
	mov	bl, 1
	test	sil, sil
	je	.label_106
	call	getgrgid
	test	rax, rax
	je	.label_105
	mov	rdi, qword ptr [rax]
	mov	bl, 1
	jmp	.label_104
	.section	.text
	.align	16
	#Procedure 0x4025f0

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
	je	.label_115
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0xa
	call	realloc_groupbuf
	mov	rbx, rax
	mov	r13d, 0xffffffff
	test	rbx, rbx
	je	.label_107
	mov	r15d, r12d
	mov	qword ptr [rsp + 0x10], r14
	nop	
.label_108:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rdi, rbp
	mov	esi, r15d
	mov	rdx, rbx
	lea	rcx, [rsp + 0xc]
	call	getgrouplist
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_109
	mov	eax, dword ptr [rsp + 0xc]
	cmp	r12d, eax
	jne	.label_109
	add	eax, eax
	mov	dword ptr [rsp + 0xc], eax
	nop	
.label_109:
	movsxd	rsi, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	call	realloc_groupbuf
	test	rax, rax
	je	.label_119
	test	r14d, r14d
	mov	rbx, rax
	js	.label_108
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r13d, dword ptr [rsp + 0xc]
	jmp	.label_107
.label_115:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_113
	cmp	r12d, -1
	jne	.label_116
	test	eax, eax
	jne	.label_118
.label_116:
	inc	dword ptr [rsp + 0xc]
.label_118:
	movsxd	rsi, dword ptr [rsp + 0xc]
	xor	edi, edi
	call	realloc_groupbuf
	mov	r15, rax
	mov	r13d, 0xffffffff
	test	r15, r15
	je	.label_107
	mov	edi, dword ptr [rsp + 0xc]
	xor	eax, eax
	cmp	r12d, -1
	setne	al
	sub	edi, eax
	lea	rsi, [r15 + rax*4]
	call	getgroups
	test	eax, eax
	js	.label_117
	cmp	r12d, -1
	mov	r13d, eax
	je	.label_114
	mov	dword ptr [r15], r12d
	inc	eax
	mov	r13d, eax
.label_114:
	mov	qword ptr [r14], r15
	cmp	r13d, 2
	jl	.label_107
	mov	eax, dword ptr [r15]
	movsxd	rcx, r13d
	lea	rcx, [r15 + rcx*4]
	mov	rdx, r15
	add	rdx, 4
	jmp	.label_112
.label_119:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
	jmp	.label_107
.label_113:
	call	__errno_location
	mov	r13d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_107
	xor	edi, edi
	mov	esi, 1
	call	realloc_groupbuf
	test	rax, rax
	je	.label_107
	mov	qword ptr [r14], rax
	mov	dword ptr [rax], r12d
	xor	r13d, r13d
	cmp	r12d, -1
	setne	r13b
	jmp	.label_107
.label_117:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_107
.label_111:
	mov	dword ptr [r15 + 4], esi
	add	r15, 4
	jmp	.label_110
	.section	.text
	.align	16
	#Procedure 0x40279c
	.globl sub_40279c
	.type sub_40279c, @function
sub_40279c:

	nop	dword ptr [rax]
.label_112:
	mov	esi, dword ptr [rdx]
	cmp	esi, eax
	je	.label_120
	cmp	esi, dword ptr [r15]
	jne	.label_111
.label_120:
	dec	r13d
.label_110:
	add	rdx, 4
	cmp	rdx, rcx
	jb	.label_112
.label_107:
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
	#Procedure 0x4027c9
	.globl sub_4027c9
	.type sub_4027c9, @function
sub_4027c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4027d0

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
	je	.label_121
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_122:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_122
.label_121:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40280e
	.globl sub_40280e
	.type sub_40280e, @function
sub_40280e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402810

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_124:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_123
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_125
	.section	.text
	.align	16
	#Procedure 0x402839
	.globl sub_402839
	.type sub_402839, @function
sub_402839:

	nop	dword ptr [rax]
.label_123:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_125:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_126
	inc	r9
	cmp	r9, 0xa
	jb	.label_124
.label_126:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40286f
	.globl sub_40286f
	.type sub_40286f, @function
sub_40286f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402870

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
	#Procedure 0x40289d
	.globl sub_40289d
	.type sub_40289d, @function
sub_40289d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4028a0

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
	#Procedure 0x4028b3
	.globl sub_4028b3
	.type sub_4028b3, @function
sub_4028b3:

	nop	word ptr cs:[rax + rax]
.label_129:
	xor	eax, eax
	jmp	.label_127
	.section	.text
	.align	16
	#Procedure 0x4028c4
	.globl sub_4028c4
	.type sub_4028c4, @function
sub_4028c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028ce
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_129
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_128]]
.label_127:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028e0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4028ea
	.globl sub_4028ea
	.type sub_4028ea, @function
sub_4028ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_130
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_133:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_133
.label_130:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_134
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_131]], OFFSET FLAT:slot0
.label_134:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_132
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_132:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402981
	.globl sub_402981
	.type sub_402981, @function
sub_402981:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402990

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_135
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_137
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_137
.label_135:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_136
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_137:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_139
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_138
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_136:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_138:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_140
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a50

	.globl realloc_groupbuf
	.type realloc_groupbuf, @function
realloc_groupbuf:
	push	rax
	mov	rax, rsi
	shr	rax, 0x3d
	je	.label_141
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_141:
	shl	rsi, 2
	call	realloc
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a74
	.globl sub_402a74
	.type sub_402a74, @function
sub_402a74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a8a
	.globl sub_402a8a
	.type sub_402a8a, @function
sub_402a8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a90

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_142
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_142
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_142:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402ab6
	.globl sub_402ab6
	.type sub_402ab6, @function
sub_402ab6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ac0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_143
	test	rdx, rdx
	je	.label_143
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_143:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402aeb
	.globl sub_402aeb
	.type sub_402aeb, @function
sub_402aeb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402af0

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
	#Procedure 0x402b07
	.globl sub_402b07
	.type sub_402b07, @function
sub_402b07:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b10

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_146
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_149
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_146:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
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
	#Procedure 0x402c2b
	.globl sub_402c2b
	.type sub_402c2b, @function
sub_402c2b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c30

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_152
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_152:
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
	#Procedure 0x402cb3
	.globl sub_402cb3
	.type sub_402cb3, @function
sub_402cb3:

	nop	word ptr cs:[rax + rax]
.label_153:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402cc5
	.globl sub_402cc5
	.type sub_402cc5, @function
sub_402cc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ccf
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_153
	call	rpl_calloc
	test	rax, rax
	je	.label_153
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cf0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_154
	test	rsi, rsi
	mov	ecx, 1
	je	.label_155
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_155
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_154:
	mov	ecx, 1
.label_155:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402d3b
	.globl sub_402d3b
	.type sub_402d3b, @function
sub_402d3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d40

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
	mov	rcx,  qword ptr [word ptr [rip + label_76]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_77]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_78]]
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
	#Procedure 0x402dad
	.globl sub_402dad
	.type sub_402dad, @function
sub_402dad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402db0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x402dbd
	.globl sub_402dbd
	.type sub_402dbd, @function
sub_402dbd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402dc0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x402dc7
	.globl sub_402dc7
	.type sub_402dc7, @function
sub_402dc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dd0

	.globl print_stuff
	.type print_stuff, @function
print_stuff:
	push	rax
	cmp	byte ptr [byte ptr [rip + just_user]],  1
	jne	.label_159
	mov	al,  byte ptr [byte ptr [rip + use_real]]
	mov	ecx, OFFSET FLAT:ruid
	mov	edx, OFFSET FLAT:euid
	test	al, al
	cmovne	rdx, rcx
	mov	edi, dword ptr [rdx]
	call	print_user
	jmp	.label_156
.label_159:
	cmp	byte ptr [byte ptr [rip + just_group]],  1
	jne	.label_160
	mov	al,  byte ptr [byte ptr [rip + use_real]]
	mov	ecx, OFFSET FLAT:rgid
	mov	edx, OFFSET FLAT:egid
	test	al, al
	cmovne	rdx, rcx
	mov	edi, dword ptr [rdx]
	movzx	esi,  byte ptr [byte ptr [rip + use_name]]
	call	print_group
	and	byte ptr [byte ptr [rip + ok]],  al
	jmp	.label_156
.label_160:
	cmp	byte ptr [byte ptr [rip + just_group_list]],  1
	jne	.label_158
	mov	esi,  dword ptr [dword ptr [rip + ruid]]
	mov	edx,  dword ptr [dword ptr [rip + rgid]]
	mov	ecx,  dword ptr [dword ptr [rip + egid]]
	mov	al,  byte ptr [byte ptr [rip + opt_zero]]
	test	al, al
	sete	al
	shl	al, 5
	movzx	r8d,  byte ptr [byte ptr [rip + use_name]]
	movzx	r9d, al
	call	print_group_list
	and	byte ptr [byte ptr [rip + ok]],  al
	jmp	.label_156
.label_158:
	call	print_full_info
.label_156:
	cmp	byte ptr [byte ptr [rip + opt_zero]],  1
	jne	.label_157
	cmp	byte ptr [byte ptr [rip + multiple_users]],  0
	je	.label_157
	mov	al,  byte ptr [byte ptr [rip + just_group_list]]
	xor	al, 1
	test	al, 1
	jne	.label_157
	xor	edi, edi
	call	putchar_unlocked
	xor	edi, edi
	pop	rax
	jmp	putchar_unlocked
.label_157:
	mov	al,  byte ptr [byte ptr [rip + opt_zero]]
	xor	ecx, ecx
	test	al, al
	mov	edi, 0xa
	cmovne	edi, ecx
	pop	rax
	jmp	putchar_unlocked
	.section	.text
	.align	16
	#Procedure 0x402eba
	.globl sub_402eba
	.type sub_402eba, @function
sub_402eba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ec0

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
	je	.label_161
	cmp	r15, -2
	jb	.label_161
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_161
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_161:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f16
	.globl sub_402f16
	.type sub_402f16, @function
sub_402f16:

	nop	word ptr cs:[rax + rax]
.label_163:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402f25

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_162
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_163
.label_162:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f40

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
	#Procedure 0x402f6d
	.globl sub_402f6d
	.type sub_402f6d, @function
sub_402f6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f70

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
	je	.label_165
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_164
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_164
.label_165:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_164
	test	cl, cl
	jne	.label_164
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_164:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fd6
	.globl sub_402fd6
	.type sub_402fd6, @function
sub_402fd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fe0

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], r9d
	mov	ebx, r8d
	mov	r14d, ecx
	mov	r13d, edx
	mov	r12, rdi
	mov	r15b, 1
	xor	ebp, ebp
	test	r12, r12
	je	.label_171
	mov	edi, esi
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	setne	r15b
.label_171:
	movzx	esi, bl
	mov	edi, r13d
	mov	dword ptr [rsp + 0xc], esi
	call	print_group
	mov	bl, al
	test	bl, bl
	je	.label_173
	mov	bl, r15b
.label_173:
	cmp	r14d, r13d
	je	.label_175
	mov	eax, dword ptr [rsp + 8]
	movsx	edi, al
	call	putchar_unlocked
	mov	edi, r14d
	mov	esi, dword ptr [rsp + 0xc]
	call	print_group
	test	al, al
	je	.label_167
	mov	eax, ebx
.label_167:
	mov	bl, al
.label_175:
	test	rbp, rbp
	mov	esi, r14d
	je	.label_169
	mov	esi, dword ptr [rbp + 0x14]
.label_169:
	lea	rdx, [rsp + 0x10]
	mov	rdi, r12
	call	xgetgroups
	test	eax, eax
	js	.label_170
	je	.label_176
	mov	ecx, dword ptr [rsp + 8]
	movsx	r12d, cl
	movsxd	rbp, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_166:
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax + r15*4]
	cmp	eax, r13d
	je	.label_168
	cmp	eax, r14d
	je	.label_168
	mov	edi, r12d
	call	putchar_unlocked
	mov	rax, qword ptr [rsp + 0x10]
	mov	edi, dword ptr [rax + r15*4]
	mov	esi, dword ptr [rsp + 0xc]
	call	print_group
	test	al, al
	je	.label_174
	mov	eax, ebx
.label_174:
	mov	bl, al
.label_168:
	inc	r15
	cmp	r15, rbp
	jl	.label_166
.label_176:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	and	bl, 1
	jmp	.label_177
.label_170:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	test	r12, r12
	je	.label_172
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_178
.label_172:
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_178:
	xor	ebx, ebx
.label_177:
	mov	eax, ebx
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
	#Procedure 0x40314a
	.globl sub_40314a
	.type sub_40314a, @function
sub_40314a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403150
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40315a
	.globl sub_40315a
	.type sub_40315a, @function
sub_40315a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403160

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
	jae	.label_189
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_187:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_187
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_179
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_190
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_192
	cmp	eax, 0x22
	jne	.label_179
	mov	r12d, 1
.label_192:
	test	rbp, rbp
	jne	.label_183
	jmp	.label_180
.label_190:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_179
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_179
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_179
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_183:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_180
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_191
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_181
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_181
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_186
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_184
	cmp	ecx, 0x44
	je	.label_184
	cmp	ecx, 0x69
	jne	.label_186
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_186
.label_184:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_186
.label_181:
	mov	rsi, r14
.label_186:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_191
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_196]]
.label_474:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_185
.label_191:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_182
.label_475:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_185
.label_476:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_185
.label_478:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_185
.label_472:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_188
.label_473:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_185
.label_477:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_185
.label_479:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_185
.label_480:
	lea	rdi, [rsp]
	mov	edx, 7
.label_185:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_188:
	mov	rsi, r14
.label_482:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_180:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_182:
	mov	r15d, r12d
.label_179:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_481:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_188
.label_483:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_188
.label_189:
	mov	edi, OFFSET FLAT:label_193
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_195
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x403402
	.globl sub_403402
	.type sub_403402, @function
sub_403402:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403410

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
	je	.label_204
	mov	esi, dword ptr [rcx]
.label_204:
	test	rbp, rbp
	je	.label_211
	mov	qword ptr [rbp], 0
.label_211:
	test	r9, r9
	je	.label_216
	mov	qword ptr [r9], 0
.label_216:
	test	r15, r15
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 4], eax
	je	.label_218
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], r9
	xor	r13d, r13d
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_221
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	r13, rax
	mov	byte ptr [r13 + rbx], 0
.label_221:
	lea	rax, [r15 + 1]
	xor	r12d, r12d
	cmp	byte ptr [r15 + 1], 0
	cmovne	r12, rax
	jmp	.label_198
.label_218:
	xor	r14d, r14d
	cmp	byte ptr [rdi], 0
	je	.label_206
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], r9
	call	xstrdup
	mov	r13, rax
	xor	r12d, r12d
.label_198:
	xor	r14d, r14d
	test	r13, r13
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_215
	cmp	byte ptr [r13], 0x2b
	je	.label_220
	mov	rdi, r13
	call	getpwnam
	test	rax, rax
	je	.label_220
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rsp + 4], ecx
	xor	r14d, r14d
	test	r15, r15
	je	.label_223
	test	r12, r12
	jne	.label_223
	mov	ebx, dword ptr [rax + 0x14]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 8], rbx
	je	.label_200
	mov	rdi, qword ptr [rax]
	jmp	.label_205
.label_220:
	mov	ebp, OFFSET FLAT:label_202
	xor	r14d, r14d
	test	r15, r15
	je	.label_203
	test	r12, r12
	je	.label_209
.label_203:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_33
	mov	rdi, r13
	call	xstrtoul
	test	eax, eax
	jne	.label_217
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_217
	xor	ebp, ebp
	cmp	eax, -1
	jne	.label_227
.label_217:
	mov	ebp, OFFSET FLAT:label_222
	mov	eax, dword ptr [rsp + 4]
.label_227:
	xor	r14d, r14d
	mov	dword ptr [rsp + 4], eax
	jmp	.label_209
.label_215:
	xor	r13d, r13d
	xor	ebp, ebp
	jmp	.label_224
.label_206:
	xor	r13d, r13d
	jmp	.label_225
.label_200:
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	call	umaxtostr
	mov	rdi, rax
.label_205:
	call	xstrdup
	mov	r14, rax
	call	endgrent
.label_223:
	xor	ebp, ebp
.label_209:
	call	endpwent
.label_224:
	test	r12, r12
	je	.label_208
	test	rbp, rbp
	jne	.label_208
	cmp	byte ptr [r12], 0x2b
	je	.label_201
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_201
	mov	ebx, dword ptr [rax + 0x10]
	jmp	.label_197
.label_208:
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_207
.label_201:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_33
	mov	rdi, r12
	call	xstrtoul
	test	eax, eax
	jne	.label_213
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_213
	cmp	ebx, -1
	jne	.label_197
.label_213:
	mov	ebp, OFFSET FLAT:label_199
	mov	rbx, qword ptr [rsp + 8]
.label_197:
	call	endgrent
	mov	rdi, r12
	call	xstrdup
	mov	r14, rax
	mov	esi, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
.label_207:
	test	rbp, rbp
	je	.label_210
	xor	ebx, ebx
	jmp	.label_212
.label_210:
	mov	rbp, qword ptr [rsp + 0x20]
.label_225:
	mov	rax, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 4]
	mov	dword ptr [rax], edx
	test	rcx, rcx
	je	.label_214
	mov	dword ptr [rcx], esi
.label_214:
	test	rbp, rbp
	je	.label_219
	mov	qword ptr [rbp], r13
	xor	r13d, r13d
.label_219:
	mov	bl, 1
	xor	ebp, ebp
	test	r9, r9
	je	.label_212
	mov	qword ptr [r9], r14
	xor	ebp, ebp
	xor	r14d, r14d
.label_212:
	mov	rdi, r13
	call	free
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_226
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbp
	call	dcgettext
.label_226:
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
	#Procedure 0x40369d
	.globl sub_40369d
	.type sub_40369d, @function
sub_40369d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_33
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_228
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036c5
	.globl sub_4036c5
	.type sub_4036c5, @function
sub_4036c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036d0
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
	#Procedure 0x4036f7
	.globl sub_4036f7
	.type sub_4036f7, @function
sub_4036f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403700

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
	jne	.label_229
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_229
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_230
.label_229:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_230:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_231
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_231:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40376e
	.globl sub_40376e
	.type sub_40376e, @function
sub_40376e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403770
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
	#Procedure 0x40377d
	.globl sub_40377d
	.type sub_40377d, @function
sub_40377d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403780
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
	#Procedure 0x403793
	.globl sub_403793
	.type sub_403793, @function
sub_403793:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_232
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_232:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4037c3
	.globl sub_4037c3
	.type sub_4037c3, @function
sub_4037c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_233
	test	rax, rax
	je	.label_234
.label_233:
	pop	rbx
	ret	
.label_234:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4037ea
	.globl sub_4037ea
	.type sub_4037ea, @function
sub_4037ea:

	nop	word ptr [rax + rax]
.label_237:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0xc]
	call	uidtostr_ptr
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	byte ptr [byte ptr [rip + ok]],  0
.label_238:
	lea	rdi, [rsp + 0xc]
	call	uidtostr_ptr
	mov	rdi, rax
.label_236:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	add	rsp, 0x10
	pop	rbx
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x403844
	.globl sub_403844
	.type sub_403844, @function
sub_403844:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40384f

	.globl print_user
	.type print_user, @function
print_user:
	push	rbx
	sub	rsp, 0x10
	mov	dword ptr [rsp + 0xc], edi
	cmp	byte ptr [byte ptr [rip + use_name]],  1
	jne	.label_238
	call	getpwuid
	test	rax, rax
	je	.label_237
	mov	rdi, qword ptr [rax]
	jmp	.label_236
.label_239:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403875
	.globl sub_403875
	.type sub_403875, @function
sub_403875:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403883

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
	je	.label_239
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
	.section	.text
	.align	16
	#Procedure 0x4038d0

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
	#Procedure 0x403909
	.globl sub_403909
	.type sub_403909, @function
sub_403909:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403910
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
	#Procedure 0x403921
	.globl sub_403921
	.type sub_403921, @function
sub_403921:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403930
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
	#Procedure 0x403944
	.globl sub_403944
	.type sub_403944, @function
sub_403944:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403950

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_33
	call	setlocale
	mov	edi, OFFSET FLAT:label_260
	mov	esi, OFFSET FLAT:label_261
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_260
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_267
.label_518:
	mov	byte ptr [byte ptr [rip + just_group_list]],  1
	nop	
.label_267:
	mov	edx, OFFSET FLAT:label_269
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x46
	jle	.label_275
	add	eax, -0x47
	cmp	eax, 0x33
	ja	.label_259
	jmp	qword ptr [word ptr [+ (rax * 8) + label_255]]
.label_520:
	mov	byte ptr [byte ptr [rip + just_group]],  1
	jmp	.label_267
.label_521:
	mov	byte ptr [byte ptr [rip + use_name]],  1
	jmp	.label_267
.label_522:
	mov	byte ptr [byte ptr [rip + use_real]],  1
	jmp	.label_267
.label_523:
	mov	byte ptr [byte ptr [rip + just_user]],  1
	jmp	.label_267
.label_524:
	mov	byte ptr [byte ptr [rip + opt_zero]],  1
	jmp	.label_267
.label_275:
	cmp	eax, -1
	jne	.label_281
	movzx	edx,  byte ptr [byte ptr [rip + just_user]]
	movzx	ecx,  byte ptr [byte ptr [rip + just_group]]
	lea	eax, [rcx + rdx]
	movzx	esi,  byte ptr [byte ptr [rip + just_group_list]]
	add	eax, esi
	cmp	eax, 2
	jae	.label_242
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	or	cl, dl
	or	cl, sil
	jne	.label_248
	mov	cl,  byte ptr [byte ptr [rip + use_real]]
	test	cl, cl
	jne	.label_250
	cmp	byte ptr [byte ptr [rip + use_name]],  1
	je	.label_250
	cmp	byte ptr [byte ptr [rip + opt_zero]],  1
	je	.label_253
.label_248:
	movsxd	r15, ebp
	sub	r15, rax
	test	r15d, r15d
	je	.label_254
	cmp	r15d, 1
	setne	byte ptr [byte ptr [rip + multiple_users]]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	add	r15, rax
	jmp	.label_258
	.section	.text
	.align	16
	#Procedure 0x403a84
	.globl sub_403a84
	.type sub_403a84, @function
sub_403a84:

	nop	word ptr cs:[rax + rax]
.label_244:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	inc	rax
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_258:
	cmp	rax, r15
	jae	.label_277
	mov	rdi, qword ptr [r14 + rax*8]
	cmp	byte ptr [rdi], 0
	je	.label_271
	mov	esi, OFFSET FLAT:euid
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	call	parse_user_spec
	test	rax, rax
	jne	.label_271
	mov	edi,  dword ptr [dword ptr [rip + euid]]
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	je	.label_271
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	rbx, rax
	mov	eax, dword ptr [rbp + 0x10]
	mov	dword ptr [dword ptr [rip + euid]],  eax
	mov	dword ptr [dword ptr [rip + ruid]],  eax
	mov	eax, dword ptr [rbp + 0x14]
	mov	dword ptr [dword ptr [rip + egid]],  eax
	mov	dword ptr [dword ptr [rip + rgid]],  eax
	mov	rdi, rbx
	call	print_stuff
	mov	rdi, rbx
	call	free
	jmp	.label_244
	.section	.text
	.align	16
	#Procedure 0x403b1a
	.globl sub_403b1a
	.type sub_403b1a, @function
sub_403b1a:

	nop	word ptr [rax + rax]
.label_271:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	byte ptr [byte ptr [rip + ok]],  0
	jmp	.label_244
.label_254:
	cmp	byte ptr [byte ptr [rip + just_user]],  1
	jne	.label_256
	mov	al,  byte ptr [byte ptr [rip + use_real]]
	jmp	.label_270
.label_256:
	mov	al,  byte ptr [byte ptr [rip + just_group]]
	test	al, al
	jne	.label_262
	mov	al,  byte ptr [byte ptr [rip + just_group_list]]
.label_270:
	test	al, al
	jne	.label_262
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	geteuid
	mov	dword ptr [dword ptr [rip + euid]],  eax
	cmp	eax, -1
	jne	.label_262
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_272
.label_262:
	cmp	byte ptr [byte ptr [rip + just_user]],  1
	jne	.label_274
	mov	al,  byte ptr [byte ptr [rip + use_real]]
	test	al, al
	jne	.label_276
	jmp	.label_273
.label_274:
	mov	al,  byte ptr [byte ptr [rip + just_group]]
	test	al, al
	jne	.label_273
.label_276:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getuid
	mov	dword ptr [dword ptr [rip + ruid]],  eax
	cmp	eax, -1
	jne	.label_273
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_282
.label_273:
	mov	al,  byte ptr [byte ptr [rip + just_user]]
	test	al, al
	jne	.label_251
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getegid
	mov	dword ptr [dword ptr [rip + egid]],  eax
	cmp	eax, -1
	jne	.label_245
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	jne	.label_246
.label_245:
	mov	dword ptr [rbx], 0
	call	getgid
	mov	dword ptr [dword ptr [rip + rgid]],  eax
	cmp	eax, -1
	jne	.label_251
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_268
.label_251:
	xor	edi, edi
	call	print_stuff
.label_277:
	movzx	eax,  byte ptr [byte ptr [rip + ok]]
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_281:
	cmp	eax, 0xffffff7d
	je	.label_257
	cmp	eax, 0xffffff7e
	jne	.label_259
	xor	edi, edi
	call	usage
.label_519:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
	jmp	.label_264
.label_257:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_20
	mov	edx, OFFSET FLAT:label_24
	mov	r8d, OFFSET FLAT:label_265
	mov	r9d, OFFSET FLAT:label_266
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_259:
	mov	edi, 1
	call	usage
.label_242:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_278
	jmp	.label_264
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
	jmp	.label_264
.label_253:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
.label_264:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_282:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
	jmp	.label_241
.label_246:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_268:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	jmp	.label_241
.label_272:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
.label_241:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x403d60

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
	je	.label_283
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_283:
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
	je	.label_285
	test	r14, r14
	jne	.label_285
	test	rbp, rbp
	je	.label_285
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_285
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_284
.label_285:
	mov	rax, rbp
.label_284:
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
	#Procedure 0x403e04
	.globl sub_403e04
	.type sub_403e04, @function
sub_403e04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e10

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403e1e
	.globl sub_403e1e
	.type sub_403e1e, @function
sub_403e1e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e20

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
	js	.label_286
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_289
	cmp	r12d, 0x7fffffff
	je	.label_291
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
	jne	.label_287
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_287:
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
.label_289:
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
	jbe	.label_292
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_288
.label_292:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_290
	mov	rdi, r14
	call	free
.label_290:
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
.label_288:
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
.label_286:
	call	abort
.label_291:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403fdd
	.globl sub_403fdd
	.type sub_403fdd, @function
sub_403fdd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403fe0

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
.label_321:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_398
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_331]]
.label_509:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_336
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_67
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_510:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_347
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_347
	xor	r14d, r14d
.label_359:
	cmp	r14, r11
	jae	.label_356
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_356:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_359
.label_347:
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
	jmp	.label_363
.label_502:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_363
.label_505:
	mov	al, 1
.label_503:
	mov	r12b, 1
.label_506:
	test	r12b, 1
	mov	cl, 1
	je	.label_375
	mov	ecx, eax
.label_375:
	mov	al, cl
.label_504:
	test	r12b, 1
	jne	.label_378
	test	r11, r11
	je	.label_365
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_365:
	mov	r14d, 1
	jmp	.label_384
.label_378:
	xor	r14d, r14d
.label_384:
	mov	ecx, OFFSET FLAT:label_67
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_363
.label_507:
	test	r12b, 1
	jne	.label_391
	test	r11, r11
	je	.label_389
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_389:
	mov	r14d, 1
	jmp	.label_395
.label_508:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_66
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_363
.label_391:
	xor	r14d, r14d
.label_395:
	mov	eax, OFFSET FLAT:label_66
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_363:
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
	jmp	.label_305
	.section	.text
	.align	16
	#Procedure 0x4042bc
	.globl sub_4042bc
	.type sub_4042bc, @function
sub_4042bc:

	nop	dword ptr [rax]
.label_324:
	inc	rsi
.label_305:
	cmp	rbp, -1
	je	.label_340
	cmp	rsi, rbp
	jne	.label_338
	jmp	.label_344
	.section	.text
	.align	16
	#Procedure 0x4042d3
	.globl sub_4042d3
	.type sub_4042d3, @function
sub_4042d3:

	nop	word ptr cs:[rax + rax]
.label_340:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_344
.label_338:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_350
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_354
	cmp	rbp, -1
	jne	.label_354
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
.label_354:
	cmp	rbx, rbp
	jbe	.label_362
.label_350:
	xor	r8d, r8d
.label_339:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_364
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_368]]
.label_550:
	test	rsi, rsi
	jne	.label_332
	jmp	.label_295
	.section	.text
	.align	16
	#Procedure 0x40436e
	.globl sub_40436e
	.type sub_40436e, @function
sub_40436e:

	nop	
.label_362:
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
	jne	.label_382
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_339
	jmp	.label_296
.label_382:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_339
.label_554:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_401
	test	rsi, rsi
	jne	.label_369
	cmp	rbp, 1
	je	.label_295
	xor	r13d, r13d
	jmp	.label_297
.label_543:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_300
	cmp	byte ptr [rsp + 7], 0
	jne	.label_302
	cmp	r12d, 2
	jne	.label_303
	mov	eax, r9d
	and	al, 1
	jne	.label_303
	cmp	r14, r11
	jae	.label_367
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_367:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_310
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_310:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_314
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_314:
	add	r14, 3
	mov	r9b, 1
.label_303:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_320
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_320:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_326
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_326
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_326
	cmp	r14, r11
	jae	.label_337
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_337:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_335
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_335:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_297
.label_544:
	mov	bl, 0x62
	jmp	.label_345
.label_545:
	mov	cl, 0x74
	jmp	.label_349
.label_546:
	mov	bl, 0x76
	jmp	.label_345
.label_547:
	mov	bl, 0x66
	jmp	.label_345
.label_548:
	mov	cl, 0x72
	jmp	.label_349
.label_551:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_355
	cmp	byte ptr [rsp + 7], 0
	jne	.label_302
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
	jae	.label_360
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_360:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_370
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_370:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_372
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_372:
	add	r14, 3
	xor	r9d, r9d
.label_355:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_297
.label_552:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_381
	cmp	r12d, 2
	jne	.label_332
	cmp	byte ptr [rsp + 7], 0
	je	.label_332
	jmp	.label_302
.label_553:
	cmp	r12d, 2
	jne	.label_387
	cmp	byte ptr [rsp + 7], 0
	jne	.label_302
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_346
.label_364:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_371
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
.label_334:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_315
	test	r8b, r8b
	je	.label_315
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_297
.label_401:
	test	rsi, rsi
	jne	.label_322
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_322
.label_295:
	mov	dl, 1
.label_549:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_302
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_297:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_333
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_400
	jmp	.label_325
	.section	.text
	.align	16
	#Procedure 0x4046b4
	.globl sub_4046b4
	.type sub_4046b4, @function
sub_4046b4:

	nop	word ptr cs:[rax + rax]
.label_333:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_325
.label_400:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_341
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_346
	jmp	.label_294
	.section	.text
	.align	16
	#Procedure 0x4046fd
	.globl sub_4046fd
	.type sub_4046fd, @function
sub_4046fd:

	nop	dword ptr [rax]
.label_325:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_294
	jmp	.label_346
.label_341:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_294
.label_300:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_324
	xor	r15d, r15d
	jmp	.label_332
.label_387:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_349
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_346
.label_349:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_302
.label_345:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_297
	nop	word ptr cs:[rax + rax]
.label_294:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_302
	cmp	r12d, 2
	jne	.label_376
	mov	eax, r9d
	and	al, 1
	jne	.label_376
	cmp	r14, r11
	jae	.label_379
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_379:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_402
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_402:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_403
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_403:
	add	r14, 3
	mov	r9b, 1
.label_376:
	cmp	r14, r11
	jae	.label_390
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_390:
	inc	r14
	jmp	.label_393
.label_371:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_396
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_396:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_361:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_308
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_312
	cmp	rbp, -2
	je	.label_404
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_318
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_309:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_353
	bt	rsi, rdx
	jb	.label_296
.label_353:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_309
.label_318:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_343
	xor	r13d, r13d
.label_343:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_361
	jmp	.label_334
.label_326:
	xor	r13d, r13d
	jmp	.label_297
.label_322:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_297
.label_381:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_332
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_332
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_332
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_392
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_397
	cmp	byte ptr [rsp + 7], 0
	jne	.label_302
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_373
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_373:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_357
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_357:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_399
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_399:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_385
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_385:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_297
.label_332:
	xor	eax, eax
.label_369:
	xor	r13d, r13d
	jmp	.label_297
.label_315:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_394
	.section	.text
	.align	16
	#Procedure 0x4049e3
	.globl sub_4049e3
	.type sub_4049e3, @function
sub_4049e3:

	nop	word ptr cs:[rax + rax]
.label_358:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_394:
	test	r8b, r8b
	je	.label_405
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_293
	cmp	r14, r11
	jae	.label_298
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_298:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_293
	.section	.text
	.align	16
	#Procedure 0x404a2c
	.globl sub_404a2c
	.type sub_404a2c, @function
sub_404a2c:

	nop	dword ptr [rax]
.label_405:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_296
	cmp	r12d, 2
	jne	.label_307
	mov	eax, r9d
	and	al, 1
	jne	.label_307
	cmp	r14, r11
	jae	.label_311
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_311:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_313
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_313:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_319
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_319:
	add	r14, 3
	mov	r9b, 1
.label_307:
	cmp	r14, r11
	jae	.label_383
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_383:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_328
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_328:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_388
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_388:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_293:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_346
	test	r9b, 1
	je	.label_348
	mov	ebx, eax
	and	bl, 1
	jne	.label_348
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_352
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_352:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_316
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_316:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_348:
	cmp	r14, r11
	jae	.label_358
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_358
	.section	.text
	.align	16
	#Procedure 0x404b33
	.globl sub_404b33
	.type sub_404b33, @function
sub_404b33:

	nop	word ptr cs:[rax + rax]
.label_346:
	test	r9b, 1
	je	.label_329
	and	al, 1
	jne	.label_329
	cmp	r14, r11
	jae	.label_366
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_366:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_301
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_301:
	add	r14, 2
	xor	r9d, r9d
.label_329:
	mov	ebx, r15d
.label_393:
	cmp	r14, r11
	jae	.label_374
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_374:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_324
.label_312:
	xor	r13d, r13d
.label_308:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_334
.label_404:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_386
	mov	rsi, qword ptr [rsp + 0x50]
.label_304:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_323
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_304
	xor	r13d, r13d
	jmp	.label_334
.label_386:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_334
.label_323:
	xor	r13d, r13d
	jmp	.label_334
.label_392:
	xor	r13d, r13d
	jmp	.label_297
.label_397:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_297
	.section	.text
	.align	16
	#Procedure 0x404c08
	.globl sub_404c08
	.type sub_404c08, @function
sub_404c08:

	nop	dword ptr [rax + rax]
.label_344:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_299
	or	dl, al
	je	.label_296
.label_299:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_306
	or	dl, al
	jne	.label_306
	test	r10b, 1
	jne	.label_317
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_306
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_321
.label_306:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_327
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_330
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_330
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_342:
	cmp	r14, r11
	jae	.label_351
	mov	byte ptr [rcx + r14], al
.label_351:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_342
	jmp	.label_330
.label_302:
	mov	qword ptr [rsp + 0x20], rbp
.label_296:
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
.label_377:
	mov	r14, rax
.label_380:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_317:
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
	jmp	.label_377
.label_327:
	mov	rcx, qword ptr [rsp + 8]
.label_330:
	cmp	r14, r11
	jae	.label_380
	mov	byte ptr [rcx + r14], 0
	jmp	.label_380
.label_398:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404d9c
	.globl sub_404d9c
	.type sub_404d9c, @function
sub_404d9c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404da0
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
	#Procedure 0x404db9
	.globl sub_404db9
	.type sub_404db9, @function
sub_404db9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0
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
	#Procedure 0x404e32
	.globl sub_404e32
	.type sub_404e32, @function
sub_404e32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e40

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e4a
	.globl sub_404e4a
	.type sub_404e4a, @function
sub_404e4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e50
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e5a
	.globl sub_404e5a
	.type sub_404e5a, @function
sub_404e5a:

	nop	word ptr [rax + rax]
.label_410:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_406
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404e80
	.globl sub_404e80
	.type sub_404e80, @function
sub_404e80:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e8f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_410
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_408
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_408
	mov	esi, OFFSET FLAT:label_409
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_407
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_407:
	mov	rbx, r14
.label_408:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f10
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_413
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_415
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404f84
	.globl sub_404f84
	.type sub_404f84, @function
sub_404f84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f90
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
	#Procedure 0x404f9f
	.globl sub_404f9f
	.type sub_404f9f, @function
sub_404f9f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404fa0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_416:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_416
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x404fc1
	.globl sub_404fc1
	.type sub_404fc1, @function
sub_404fc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fd0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fda
	.globl sub_404fda
	.type sub_404fda, @function
sub_404fda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0

	.globl uidtostr_ptr
	.type uidtostr_ptr, @function
uidtostr_ptr:
	mov	edi, dword ptr [rdi]
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	jmp	umaxtostr
	.section	.text
	.align	16
	#Procedure 0x404fec
	.globl sub_404fec
	.type sub_404fec, @function
sub_404fec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ff0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x404ff5
	.globl sub_404ff5
	.type sub_404ff5, @function
sub_404ff5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405000
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x405008
	.globl sub_405008
	.type sub_405008, @function
sub_405008:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405010

	.globl gidtostr_ptr_0
	.type gidtostr_ptr_0, @function
gidtostr_ptr_0:
	mov	edi, dword ptr [rdi]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	jmp	umaxtostr
	.section	.text
	.align	16
	#Procedure 0x40501c
	.globl sub_40501c
	.type sub_40501c, @function
sub_40501c:

	nop	dword ptr [rax]
.label_420:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405025
	.globl sub_405025
	.type sub_405025, @function
sub_405025:

	nop	dword ptr [rax]
.label_421:
	test	rcx, rcx
	jne	.label_419
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_419:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_420
.label_417:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x40506e

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_421
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_418
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_417
.label_418:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4050a0
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
	#Procedure 0x4050b6
	.globl sub_4050b6
	.type sub_4050b6, @function
sub_4050b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050c0

	.globl gidtostr_ptr
	.type gidtostr_ptr, @function
gidtostr_ptr:
	mov	edi, dword ptr [rdi]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	jmp	umaxtostr
	.section	.text
	.align	16
	#Procedure 0x4050cc
	.globl sub_4050cc
	.type sub_4050cc, @function
sub_4050cc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4050d0

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
	je	.label_428
	mov	edx, OFFSET FLAT:label_437
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_424
.label_428:
	mov	edx, OFFSET FLAT:label_426
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_424:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_431
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
	mov	esi, OFFSET FLAT:label_427
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_433
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_434]]
.label_566:
	add	rsp, 8
	jmp	.label_425
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
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
	jmp	.label_425
.label_567:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_432
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
.label_568:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_422
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
.label_569:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
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
.label_570:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
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
	jmp	.label_425
.label_571:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_430
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
	jmp	.label_425
.label_572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_436
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
	jmp	.label_425
.label_573:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_439
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
	jmp	.label_425
.label_575:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
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
	jmp	.label_425
.label_574:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
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
.label_425:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405428
	.globl sub_405428
	.type sub_405428, @function
sub_405428:

	nop	dword ptr [rax + rax]
.label_442:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_441
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40543b
	.globl sub_40543b
	.type sub_40543b, @function
sub_40543b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405445
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_442
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_442
.label_441:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054c5
	.globl sub_4054c5
	.type sub_4054c5, @function
sub_4054c5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054d2
	.globl sub_4054d2
	.type sub_4054d2, @function
sub_4054d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054f6
	.globl sub_4054f6
	.type sub_4054f6, @function
sub_4054f6:

	nop	word ptr cs:[rax + rax]
