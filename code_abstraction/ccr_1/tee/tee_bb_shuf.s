	.section	.text
	.align	16
	#Procedure 0x401639
	.globl sub_401639
	.type sub_401639, @function
sub_401639:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40163a
	.globl sub_40163a
	.type sub_40163a, @function
sub_40163a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401672
	.globl sub_401672
	.type sub_401672, @function
sub_401672:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016ba
	.globl sub_4016ba
	.type sub_4016ba, @function
sub_4016ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016dc
	.globl sub_4016dc
	.type sub_4016dc, @function
sub_4016dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016ed
	.globl sub_4016ed
	.type sub_4016ed, @function
sub_4016ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401706
	.globl sub_401706
	.type sub_401706, @function
sub_401706:

	nop	word ptr cs:[rax + rax]
.label_11:
	xor	eax, eax
	jmp	.label_9
	.section	.text
	.align	16
	#Procedure 0x401714
	.globl sub_401714
	.type sub_401714, @function
sub_401714:

	nop	word ptr cs:[rax + rax]
.label_9:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40171f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_11
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_10]]
.label_13:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401735
	.globl sub_401735
	.type sub_401735, @function
sub_401735:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40173c

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_16
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_14
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_12
.label_16:
	test	rcx, rcx
	jne	.label_15
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_15:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_13
.label_12:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_14:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4017b0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4017be
	.globl sub_4017be
	.type sub_4017be, @function
sub_4017be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4017c0

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
	js	.label_17
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_20
	cmp	r12d, 0x7fffffff
	je	.label_22
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
	jne	.label_18
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_18:
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
.label_20:
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
	jbe	.label_23
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_19
.label_23:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_21
	mov	rdi, r14
	call	free
.label_21:
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
.label_19:
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
.label_17:
	call	abort
.label_22:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40197d
	.globl sub_40197d
	.type sub_40197d, @function
sub_40197d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401980
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	.section	.text
	.align	16
	#Procedure 0x401981
	.globl sub_401981
	.type sub_401981, @function
sub_401981:

	nop	word ptr cs:[rax + rax]
.label_24:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401993
	.globl sub_401993
	.type sub_401993, @function
sub_401993:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40199b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_24
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_26:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_25
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_27
	.section	.text
	.align	16
	#Procedure 0x4019d9
	.globl sub_4019d9
	.type sub_4019d9, @function
sub_4019d9:

	nop	dword ptr [rax]
.label_25:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_27:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_28
	inc	r9
	cmp	r9, 0xa
	jb	.label_26
.label_28:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a0f
	.globl sub_401a0f
	.type sub_401a0f, @function
sub_401a0f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401a10

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401a40

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
	je	.label_33
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_31
	jmp	.label_32
.label_33:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_32
.label_31:
	mov	eax, 1
	test	bpl, bpl
	je	.label_32
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
.label_32:
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
	#Procedure 0x401ac8
	.globl sub_401ac8
	.type sub_401ac8, @function
sub_401ac8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ad0

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
	je	.label_34
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_36
	jmp	.label_35
.label_34:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_35
.label_36:
	mov	eax, 1
	test	bpl, bpl
	je	.label_35
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
.label_35:
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
	#Procedure 0x401b49
	.globl sub_401b49
	.type sub_401b49, @function
sub_401b49:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b50

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
	je	.label_39
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_38
	jmp	.label_37
.label_39:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_37
.label_38:
	mov	eax, 1
	test	bpl, bpl
	je	.label_37
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
.label_37:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bb3
	.globl sub_401bb3
	.type sub_401bb3, @function
sub_401bb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bc0

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
	je	.label_42
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_40
	jmp	.label_41
.label_42:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_41
.label_40:
	mov	eax, 1
	test	bpl, bpl
	je	.label_41
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_41:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c1f
	.globl sub_401c1f
	.type sub_401c1f, @function
sub_401c1f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401c20

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
	je	.label_43
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_45
	jmp	.label_44
.label_43:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_44
.label_45:
	mov	eax, 1
	test	bpl, bpl
	je	.label_44
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_44:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401c69
	.globl sub_401c69
	.type sub_401c69, @function
sub_401c69:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c70

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
	je	.label_48
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_47
	jmp	.label_46
.label_48:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_46
.label_47:
	mov	eax, 1
	test	bpl, bpl
	je	.label_46
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_46:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cb5
	.globl sub_401cb5
	.type sub_401cb5, @function
sub_401cb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cc0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_51
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_50
	jmp	.label_49
.label_51:
	mov	eax, 1
	test	cl, cl
	je	.label_49
.label_50:
	xor	eax, eax
.label_49:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cef
	.globl sub_401cef
	.type sub_401cef, @function
sub_401cef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401cf0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_52:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_52
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401d11
	.globl sub_401d11
	.type sub_401d11, @function
sub_401d11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d20
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
	#Procedure 0x401d33
	.globl sub_401d33
	.type sub_401d33, @function
sub_401d33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d40

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d43
	.globl sub_401d43
	.type sub_401d43, @function
sub_401d43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d50

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
	#Procedure 0x401d67
	.globl sub_401d67
	.type sub_401d67, @function
sub_401d67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d70

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
	#Procedure 0x401da6
	.globl sub_401da6
	.type sub_401da6, @function
sub_401da6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401db0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_56
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_53:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_54
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_58
	cmp	qword ptr [rsp + 8], -1
	je	.label_59
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_55
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_54
.label_55:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_54
.label_59:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_54:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_53
	jmp	.label_57
.label_56:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_57:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_58:
	mov	rax, rbp
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
	#Procedure 0x401ead
	.globl sub_401ead
	.type sub_401ead, @function
sub_401ead:

	nop	dword ptr [rax]
.label_63:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
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
	#Procedure 0x401ee8
	.globl sub_401ee8
	.type sub_401ee8, @function
sub_401ee8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401eed

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_63
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
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
	mov	esi, OFFSET FLAT:label_67
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
	#Procedure 0x401fd0

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	.section	.text
	.align	16
	#Procedure 0x401fd5
	.globl sub_401fd5
	.type sub_401fd5, @function
sub_401fd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fe0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_68
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_68
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_69
.label_68:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402043
	.globl sub_402043
	.type sub_402043, @function
sub_402043:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402050
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
	#Procedure 0x40205f
	.globl sub_40205f
	.type sub_40205f, @function
sub_40205f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402060

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40206e
	.globl sub_40206e
	.type sub_40206e, @function
sub_40206e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402070

	.globl main
	.type main, @function
main:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_70
	call	setlocale
	mov	edi, OFFSET FLAT:label_82
	mov	esi, OFFSET FLAT:label_83
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_82
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + append]],  0
	mov	byte ptr [byte ptr [rip + ignore_interrupts]],  0
	jmp	.label_71
.label_88:
	mov	byte ptr [byte ptr [rip + ignore_interrupts]],  1
	nop	word ptr [rax + rax]
.label_71:
	mov	edx, OFFSET FLAT:label_79
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_85
	cmp	eax, 0x70
	je	.label_86
	cmp	eax, 0x69
	je	.label_88
	cmp	eax, 0x61
	jne	.label_90
	mov	byte ptr [byte ptr [rip + append]],  1
	jmp	.label_71
.label_86:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_72
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_80
	mov	edx, OFFSET FLAT:output_error_args
	mov	ecx, OFFSET FLAT:output_error_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + output_error_types]]
	mov	dword ptr [dword ptr [rip + output_error]],  eax
	jmp	.label_71
.label_72:
	mov	dword ptr [dword ptr [rip + output_error]],  2
	jmp	.label_71
.label_85:
	cmp	eax, -1
	jne	.label_91
	cmp	byte ptr [byte ptr [rip + ignore_interrupts]],  1
	jne	.label_81
	mov	edi, 2
	mov	esi, 1
	call	signal
.label_81:
	cmp	dword ptr [dword ptr [rip + output_error]],  0
	je	.label_87
	mov	edi, 0xd
	mov	esi, 1
	call	signal
.label_87:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	lea	rsi, [r14 + rax*8]
	mov	edi, ebx
	call	tee_files
	mov	ebx, eax
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_84
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_91:
	cmp	eax, 0xffffff7d
	je	.label_89
	cmp	eax, 0xffffff7e
	jne	.label_90
	xor	edi, edi
	call	usage
.label_89:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_73
	mov	edx, OFFSET FLAT:label_74
	mov	r8d, OFFSET FLAT:label_75
	mov	r9d, OFFSET FLAT:label_76
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_77
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_84:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_90:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x402241
	.globl sub_402241
	.type sub_402241, @function
sub_402241:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402250

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_92
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_92
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_92:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x402276
	.globl sub_402276
	.type sub_402276, @function
sub_402276:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402280
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40228a
	.globl sub_40228a
	.type sub_40228a, @function
sub_40228a:

	nop	word ptr [rax + rax]
.label_93:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402293
	.globl sub_402293
	.type sub_402293, @function
sub_402293:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402295
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_93
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022b0

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
	#Procedure 0x4022e7
	.globl sub_4022e7
	.type sub_4022e7, @function
sub_4022e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0
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
	#Procedure 0x402317
	.globl sub_402317
	.type sub_402317, @function
sub_402317:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402320
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
	#Procedure 0x402392
	.globl sub_402392
	.type sub_402392, @function
sub_402392:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_94
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_94:
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
	#Procedure 0x402423
	.globl sub_402423
	.type sub_402423, @function
sub_402423:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402430
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_95
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_95:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402456
	.globl sub_402456
	.type sub_402456, @function
sub_402456:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402460

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_96
	test	rbx, rbx
	jne	.label_96
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_96:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_98
	test	rax, rax
	je	.label_97
.label_98:
	pop	rbx
	ret	
.label_97:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402490

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
.label_170:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_175
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_179]]
.label_398:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_185
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_125
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_399:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_196
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_196
	xor	r14d, r14d
.label_206:
	cmp	r14, r11
	jae	.label_204
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_204:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_206
.label_196:
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
	jmp	.label_102
.label_391:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_102
.label_394:
	mov	al, 1
.label_392:
	mov	r12b, 1
.label_395:
	test	r12b, 1
	mov	cl, 1
	je	.label_110
	mov	ecx, eax
.label_110:
	mov	al, cl
.label_393:
	test	r12b, 1
	jne	.label_114
	test	r11, r11
	je	.label_117
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_117:
	mov	r14d, 1
	jmp	.label_122
.label_114:
	xor	r14d, r14d
.label_122:
	mov	ecx, OFFSET FLAT:label_125
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_102
.label_396:
	test	r12b, 1
	jne	.label_132
	test	r11, r11
	je	.label_133
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_133:
	mov	r14d, 1
	jmp	.label_171
.label_397:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_140
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_102
.label_132:
	xor	r14d, r14d
.label_171:
	mov	eax, OFFSET FLAT:label_140
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_102:
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
	jmp	.label_177
	.section	.text
	.align	16
	#Procedure 0x40276c
	.globl sub_40276c
	.type sub_40276c, @function
sub_40276c:

	nop	dword ptr [rax]
.label_174:
	inc	rsi
.label_177:
	cmp	rbp, -1
	je	.label_188
	cmp	rsi, rbp
	jne	.label_190
	jmp	.label_192
	.section	.text
	.align	16
	#Procedure 0x402783
	.globl sub_402783
	.type sub_402783, @function
sub_402783:

	nop	word ptr cs:[rax + rax]
.label_188:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_192
.label_190:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_198
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_107
	cmp	rbp, -1
	jne	.label_107
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
.label_107:
	cmp	rbx, rbp
	jbe	.label_208
.label_198:
	xor	r8d, r8d
.label_123:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_209
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_213]]
.label_480:
	test	rsi, rsi
	jne	.label_101
	jmp	.label_104
	.section	.text
	.align	16
	#Procedure 0x40281e
	.globl sub_40281e
	.type sub_40281e, @function
sub_40281e:

	nop	
.label_208:
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
	jne	.label_120
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_123
	jmp	.label_113
.label_120:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_123
.label_484:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_141
	test	rsi, rsi
	jne	.label_143
	cmp	rbp, 1
	je	.label_104
	xor	r13d, r13d
	jmp	.label_100
.label_473:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_148
	cmp	byte ptr [rsp + 7], 0
	jne	.label_103
	cmp	r12d, 2
	jne	.label_154
	mov	eax, r9d
	and	al, 1
	jne	.label_154
	cmp	r14, r11
	jae	.label_157
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_157:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_160
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_160:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_164
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_164:
	add	r14, 3
	mov	r9b, 1
.label_154:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_149
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_149:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_173
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_173
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_173
	cmp	r14, r11
	jae	.label_145
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_145:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_130
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_130:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_100
.label_474:
	mov	bl, 0x62
	jmp	.label_195
.label_475:
	mov	cl, 0x74
	jmp	.label_197
.label_476:
	mov	bl, 0x76
	jmp	.label_195
.label_477:
	mov	bl, 0x66
	jmp	.label_195
.label_478:
	mov	cl, 0x72
	jmp	.label_197
.label_481:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_202
	cmp	byte ptr [rsp + 7], 0
	jne	.label_103
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
	jae	.label_207
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_207:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_99
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_99:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_105
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_105:
	add	r14, 3
	xor	r9d, r9d
.label_202:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_100
.label_482:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_118
	cmp	r12d, 2
	jne	.label_101
	cmp	byte ptr [rsp + 7], 0
	je	.label_101
	jmp	.label_103
.label_483:
	cmp	r12d, 2
	jne	.label_129
	cmp	byte ptr [rsp + 7], 0
	jne	.label_103
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_155
.label_209:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_137
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
.label_106:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_153
	test	r8b, r8b
	je	.label_153
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_100
.label_141:
	test	rsi, rsi
	jne	.label_169
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_169
.label_104:
	mov	dl, 1
.label_479:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_103
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_100:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_180
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_183
	jmp	.label_186
	.section	.text
	.align	16
	#Procedure 0x402b64
	.globl sub_402b64
	.type sub_402b64, @function
sub_402b64:

	nop	word ptr cs:[rax + rax]
.label_180:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_186
.label_183:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_189
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_155
	jmp	.label_201
	.section	.text
	.align	16
	#Procedure 0x402bad
	.globl sub_402bad
	.type sub_402bad, @function
sub_402bad:

	nop	dword ptr [rax]
.label_186:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_201
	jmp	.label_155
.label_189:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_201
.label_148:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_174
	xor	r15d, r15d
	jmp	.label_101
.label_129:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_197
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_155
.label_197:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_103
.label_195:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_100
	nop	word ptr cs:[rax + rax]
.label_201:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_103
	cmp	r12d, 2
	jne	.label_111
	mov	eax, r9d
	and	al, 1
	jne	.label_111
	cmp	r14, r11
	jae	.label_116
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_116:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_203
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_203:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_127
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_127:
	add	r14, 3
	mov	r9b, 1
.label_111:
	cmp	r14, r11
	jae	.label_131
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_131:
	inc	r14
	jmp	.label_135
.label_137:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_138
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_138:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_150:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_159
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_162
	cmp	rbp, -2
	je	.label_124
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_167
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_187:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_151
	bt	rsi, rdx
	jb	.label_113
.label_151:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_187
.label_167:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_191
	xor	r13d, r13d
.label_191:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_150
	jmp	.label_106
.label_173:
	xor	r13d, r13d
	jmp	.label_100
.label_169:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_100
.label_118:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_101
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_101
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_101
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_210
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_212
	cmp	byte ptr [rsp + 7], 0
	jne	.label_103
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_182
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_182:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_194
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_194:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_121
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_121:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_126
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_126:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_100
.label_101:
	xor	eax, eax
.label_143:
	xor	r13d, r13d
	jmp	.label_100
.label_153:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_136
	.section	.text
	.align	16
	#Procedure 0x402e93
	.globl sub_402e93
	.type sub_402e93, @function
sub_402e93:

	nop	word ptr cs:[rax + rax]
.label_205:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_136:
	test	r8b, r8b
	je	.label_144
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_146
	cmp	r14, r11
	jae	.label_181
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_181:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_146
	.section	.text
	.align	16
	#Procedure 0x402edc
	.globl sub_402edc
	.type sub_402edc, @function
sub_402edc:

	nop	dword ptr [rax]
.label_144:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_113
	cmp	r12d, 2
	jne	.label_158
	mov	eax, r9d
	and	al, 1
	jne	.label_158
	cmp	r14, r11
	jae	.label_161
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_161:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_163
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_163:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_168
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_168:
	add	r14, 3
	mov	r9b, 1
.label_158:
	cmp	r14, r11
	jae	.label_172
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_172:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_193
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_193:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_184
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_184:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_146:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_155
	test	r9b, 1
	je	.label_134
	mov	ebx, eax
	and	bl, 1
	jne	.label_134
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_199
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_199:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_108
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_108:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_134:
	cmp	r14, r11
	jae	.label_205
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_205
	.section	.text
	.align	16
	#Procedure 0x402fe3
	.globl sub_402fe3
	.type sub_402fe3, @function
sub_402fe3:

	nop	word ptr cs:[rax + rax]
.label_155:
	test	r9b, 1
	je	.label_200
	and	al, 1
	jne	.label_200
	cmp	r14, r11
	jae	.label_211
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_211:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_115
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_115:
	add	r14, 2
	xor	r9d, r9d
.label_200:
	mov	ebx, r15d
.label_135:
	cmp	r14, r11
	jae	.label_109
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_109:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_174
.label_162:
	xor	r13d, r13d
.label_159:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_106
.label_124:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_128
	mov	rsi, qword ptr [rsp + 0x50]
.label_156:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_139
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_156
	xor	r13d, r13d
	jmp	.label_106
.label_128:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_106
.label_139:
	xor	r13d, r13d
	jmp	.label_106
.label_210:
	xor	r13d, r13d
	jmp	.label_100
.label_212:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_100
	.section	.text
	.align	16
	#Procedure 0x4030b8
	.globl sub_4030b8
	.type sub_4030b8, @function
sub_4030b8:

	nop	dword ptr [rax + rax]
.label_192:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_147
	or	dl, al
	je	.label_113
.label_147:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_165
	or	dl, al
	jne	.label_165
	test	r10b, 1
	jne	.label_166
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_165
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_170
.label_165:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_176
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_178
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_178
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_152:
	cmp	r14, r11
	jae	.label_142
	mov	byte ptr [rcx + r14], al
.label_142:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_152
	jmp	.label_178
.label_103:
	mov	qword ptr [rsp + 0x20], rbp
.label_113:
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
.label_112:
	mov	r14, rax
.label_119:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_166:
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
	jmp	.label_112
.label_176:
	mov	rcx, qword ptr [rsp + 8]
.label_178:
	cmp	r14, r11
	jae	.label_119
	mov	byte ptr [rcx + r14], 0
	jmp	.label_119
.label_175:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40324c
	.globl sub_40324c
	.type sub_40324c, @function
sub_40324c:

	nop	dword ptr [rax]
.label_216:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_214
.label_215:
	mov	eax, 1
	test	bpl, bpl
	je	.label_214
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
.label_214:
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
	#Procedure 0x403298
	.globl sub_403298
	.type sub_403298, @function
sub_403298:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40329b

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
	je	.label_216
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_215
	jmp	.label_214
	.section	.text
	.align	16
	#Procedure 0x4032d0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x4032da
	.globl sub_4032da
	.type sub_4032da, @function
sub_4032da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032e0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4032ea
	.globl sub_4032ea
	.type sub_4032ea, @function
sub_4032ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x4032fd
	.globl sub_4032fd
	.type sub_4032fd, @function
sub_4032fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403300
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
	#Procedure 0x403310
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40331a
	.globl sub_40331a
	.type sub_40331a, @function
sub_40331a:

	nop	word ptr [rax + rax]
.label_219:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_217
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403340
	.globl sub_403340
	.type sub_403340, @function
sub_403340:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40334f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_219
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_221
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_221
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_218
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_218:
	mov	rbx, r14
.label_221:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033d0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x4033d9
	.globl sub_4033d9
	.type sub_4033d9, @function
sub_4033d9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033e0

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
	mov	rax,  qword ptr [word ptr [rip + label_223]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_224]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_225]]
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
	#Procedure 0x403448
	.globl sub_403448
	.type sub_403448, @function
sub_403448:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403450

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
	je	.label_226
	cmp	r15, -2
	jb	.label_226
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_226
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_226:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034a6
	.globl sub_4034a6
	.type sub_4034a6, @function
sub_4034a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034b0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x4034ba
	.globl sub_4034ba
	.type sub_4034ba, @function
sub_4034ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034c0

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
	je	.label_227
	mov	qword ptr [rax], rbx
.label_227:
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
	#Procedure 0x4035ac
	.globl sub_4035ac
	.type sub_4035ac, @function
sub_4035ac:

	nop	dword ptr [rax]
.label_232:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_229
	.section	.text
	.align	16
	#Procedure 0x4035bc

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_231
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_232
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_232
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_228
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_229
.label_231:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_229:
	test	ebx, ebx
	js	.label_228
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_228
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_230
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_228
.label_230:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_228:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403673
	.globl sub_403673
	.type sub_403673, @function
sub_403673:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403680

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_233
	nop	
.label_243:
	mov	edi, OFFSET FLAT:label_73
	call	strcmp
	test	eax, eax
	je	.label_241
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_243
.label_241:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_73
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_74
	mov	ecx, OFFSET FLAT:label_236
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_235
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_235
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_73
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_236
	mov	ecx, OFFSET FLAT:label_73
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_239
	mov	ecx, OFFSET FLAT:label_70
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
	#Procedure 0x40379a
	.globl sub_40379a
	.type sub_40379a, @function
sub_40379a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037a0
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
	#Procedure 0x4037ad
	.globl sub_4037ad
	.type sub_4037ad, @function
sub_4037ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4037b0
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
	#Procedure 0x4037bd
	.globl sub_4037bd
	.type sub_4037bd, @function
sub_4037bd:

	nop	dword ptr [rax]
.label_245:
	cmp	edi, 0x7f
	je	.label_244
	xor	eax, eax
	jmp	.label_244
	.section	.text
	.align	16
	#Procedure 0x4037c9
	.globl sub_4037c9
	.type sub_4037c9, @function
sub_4037c9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037d8
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_245
.label_244:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037e0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	16
	#Procedure 0x4037ed
	.globl sub_4037ed
	.type sub_4037ed, @function
sub_4037ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4037f0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x4037f5
	.globl sub_4037f5
	.type sub_4037f5, @function
sub_4037f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403800

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_246
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_246:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40381a
	.globl sub_40381a
	.type sub_40381a, @function
sub_40381a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403820

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_247
	ret	
.label_247:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x403833
	.globl sub_403833
	.type sub_403833, @function
sub_403833:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403840

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
	mov	rcx,  qword ptr [word ptr [rip + label_223]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_224]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_225]]
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
	#Procedure 0x4038ad
	.globl sub_4038ad
	.type sub_4038ad, @function
sub_4038ad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038b0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4038bd
	.globl sub_4038bd
	.type sub_4038bd, @function
sub_4038bd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x4038c7
	.globl sub_4038c7
	.type sub_4038c7, @function
sub_4038c7:

	nop	word ptr [rax + rax]
.label_248:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_250
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_252:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_248
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_253:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403954

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_251
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_252
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_252
.label_251:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_253
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403990
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x40399a
	.globl sub_40399a
	.type sub_40399a, @function
sub_40399a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4039aa
	.globl sub_4039aa
	.type sub_4039aa, @function
sub_4039aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039b0
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
	#Procedure 0x4039c0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x4039c9
	.globl sub_4039c9
	.type sub_4039c9, @function
sub_4039c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x4039da
	.globl sub_4039da
	.type sub_4039da, @function
sub_4039da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039e0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_254
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_254:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403a03
	.globl sub_403a03
	.type sub_403a03, @function
sub_403a03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a10

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_255
	test	rax, rax
	je	.label_256
.label_255:
	pop	rbx
	ret	
.label_256:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403a2a
	.globl sub_403a2a
	.type sub_403a2a, @function
sub_403a2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a30
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
	#Procedure 0x403a63
	.globl sub_403a63
	.type sub_403a63, @function
sub_403a63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a70
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a7a
	.globl sub_403a7a
	.type sub_403a7a, @function
sub_403a7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a80
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_257
	call	rpl_calloc
	test	rax, rax
	je	.label_257
	pop	rcx
	ret	
.label_257:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403aa6
	.globl sub_403aa6
	.type sub_403aa6, @function
sub_403aa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0

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
	#Procedure 0x403ae9
	.globl sub_403ae9
	.type sub_403ae9, @function
sub_403ae9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403af0
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
	#Procedure 0x403b01
	.globl sub_403b01
	.type sub_403b01, @function
sub_403b01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b10
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
	#Procedure 0x403b24
	.globl sub_403b24
	.type sub_403b24, @function
sub_403b24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b30
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_259
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_74
	mov	ecx, OFFSET FLAT:label_236
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x403ba4
	.globl sub_403ba4
	.type sub_403ba4, @function
sub_403ba4:

	nop	word ptr cs:[rax + rax]
.label_262:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x403bbe
	.globl sub_403bbe
	.type sub_403bbe, @function
sub_403bbe:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bc7

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_262
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_264
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_262
.label_264:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_262
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_263
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_263:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c30
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c33
	.globl sub_403c33
	.type sub_403c33, @function
sub_403c33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c40

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_265
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_265:
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
	#Procedure 0x403ca8
	.globl sub_403ca8
	.type sub_403ca8, @function
sub_403ca8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cb0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_267
	cmp	byte ptr [rax], 0x43
	jne	.label_269
	cmp	byte ptr [rax + 1], 0
	je	.label_266
.label_269:
	mov	esi, OFFSET FLAT:label_268
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_267
.label_266:
	xor	ebx, ebx
.label_267:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ce1
	.globl sub_403ce1
	.type sub_403ce1, @function
sub_403ce1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cf0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403cfa
	.globl sub_403cfa
	.type sub_403cfa, @function
sub_403cfa:

	nop	word ptr [rax + rax]
.label_273:
	mov	esi, OFFSET FLAT:label_270
.label_272:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	16
	#Procedure 0x403d53

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_273
	mov	esi, OFFSET FLAT:label_271
	jmp	.label_272
	.section	.text
	.align	16
	#Procedure 0x403d70

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_275
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_277
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_278
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_274
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_275
.label_274:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_276
.label_277:
	mov	rax, rbx
	jmp	.label_275
.label_278:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_276:
	xor	eax, eax
.label_275:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403df6
	.globl sub_403df6
	.type sub_403df6, @function
sub_403df6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e00
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e03
	.globl sub_403e03
	.type sub_403e03, @function
sub_403e03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e10
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
	#Procedure 0x403e26
	.globl sub_403e26
	.type sub_403e26, @function
sub_403e26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e30

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e34
	.globl sub_403e34
	.type sub_403e34, @function
sub_403e34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e40
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x403e4a
	.globl sub_403e4a
	.type sub_403e4a, @function
sub_403e4a:

	nop	word ptr [rax + rax]
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
	#Procedure 0x403ecd
	.globl sub_403ecd
	.type sub_403ecd, @function
sub_403ecd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0
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
	#Procedure 0x403ee3
	.globl sub_403ee3
	.type sub_403ee3, @function
sub_403ee3:

	nop	word ptr cs:[rax + rax]
.label_279:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403ef5
	.globl sub_403ef5
	.type sub_403ef5, @function
sub_403ef5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f03

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
	je	.label_279
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
	#Procedure 0x403f50
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f58
	.globl sub_403f58
	.type sub_403f58, @function
sub_403f58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f60

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
	jne	.label_280
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_280
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_281
.label_280:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_281:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_282
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_282:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fce
	.globl sub_403fce
	.type sub_403fce, @function
sub_403fce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403fd0
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
	#Procedure 0x403fdf
	.globl sub_403fdf
	.type sub_403fdf, @function
sub_403fdf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403fe0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_283
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_286:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_286
.label_283:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_287
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_284]], OFFSET FLAT:slot0
.label_287:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_285
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_285:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404071
	.globl sub_404071
	.type sub_404071, @function
sub_404071:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080

	.globl tee_files
	.type tee_files, @function
tee_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2058
	mov	r14, rsi
	mov	ebx, edi
	mov	al,  byte ptr [byte ptr [rip + append]]
	mov	ecx, OFFSET FLAT:label_288
	mov	ebp, OFFSET FLAT:label_289
	test	al, al
	cmovne	rbp, rcx
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	esi, 2
	call	fadvise
	lea	eax, [rbx + 1]
	mov	dword ptr [rsp + 0x34], eax
	movsxd	rdi, eax
	mov	esi, 8
	call	xnmalloc
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rax], rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	bad_cast
	mov	qword ptr [r14 - 8], rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	esi, esi
	mov	edx, 2
	xor	ecx, ecx
	call	setvbuf
	mov	al, 1
	mov	qword ptr [rsp], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x38], rbx
	test	ebx, ebx
	jle	.label_297
	mov	rax, qword ptr [rsp + 0x18]
	lea	r13, [rax + 8]
	mov	al, 1
	mov	qword ptr [rsp], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x38]
	mov	r12d, eax
	mov	r15, r14
	mov	qword ptr [rsp + 0x48], r14
	nop	dword ptr [rax]
.label_309:
	mov	rdi, qword ptr [r15]
	mov	rsi, rbp
	call	fopen_safer
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_313
	xor	esi, esi
	mov	edx, 2
	xor	ecx, ecx
	mov	rdi, rax
	call	setvbuf
	inc	qword ptr [rsp + 0x20]
	jmp	.label_293
	.section	.text
	.align	16
	#Procedure 0x40419c
	.globl sub_40419c
	.type sub_40419c, @function
sub_40419c:

	nop	dword ptr [rax]
.label_313:
	mov	eax,  dword ptr [dword ptr [rip + output_error]]
	add	eax, -3
	cmp	eax, 2
	mov	r14, rbp
	sbb	ebp, ebp
	and	ebp, 1
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	edi, ebp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x48]
	mov	esi, ebx
	call	error
.label_293:
	add	r15, 8
	add	r13, 8
	dec	r12d
	jne	.label_309
.label_297:
	lea	rax, [r14 - 8]
	mov	qword ptr [rsp + 0x40], rax
	lea	r12, [rsp + 0x50]
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x38]
.label_312:
	mov	r15, rbp
	mov	rbx, qword ptr [rsp + 0x20]
.label_311:
	test	rbx, rbx
	je	.label_295
	nop	word ptr cs:[rax + rax]
.label_305:
	xor	edi, edi
	mov	edx, 0x2000
	mov	rsi, r12
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_301
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	jne	.label_303
	test	rbx, rbx
	jne	.label_305
	jmp	.label_303
	.section	.text
	.align	16
	#Procedure 0x404261
	.globl sub_404261
	.type sub_404261, @function
sub_404261:

	nop	word ptr cs:[rax + rax]
.label_301:
	je	.label_310
	test	r13d, r13d
	mov	r15, rbp
	js	.label_311
	mov	ebx, dword ptr [rsp + 0x34]
	mov	rax, qword ptr [rsp + 0x40]
	mov	r15, qword ptr [rsp + 0x18]
	nop	dword ptr [rax]
.label_308:
	mov	rcx, qword ptr [r15]
	test	rcx, rcx
	je	.label_299
	mov	qword ptr [rsp + 0x10], rax
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, rbp
	call	fwrite_unlocked
	cmp	rax, 1
	jne	.label_298
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_299
	.section	.text
	.align	16
	#Procedure 0x4042c1
	.globl sub_4042c1
	.type sub_4042c1, @function
sub_4042c1:

	nop	word ptr cs:[rax + rax]
.label_298:
	mov	dword ptr [rsp + 0xc], ebx
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	bl, 1
	mov	dword ptr [rsp + 0x30], eax
	cmp	eax, 0x20
	jne	.label_294
	mov	eax,  dword ptr [dword ptr [rip + output_error]]
	or	eax, 2
	cmp	eax, 3
	sete	bl
.label_294:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	cmp	qword ptr [r15], rdi
	jne	.label_304
	call	clearerr_unlocked
.label_304:
	test	bl, bl
	je	.label_296
	mov	eax,  dword ptr [dword ptr [rip + output_error]]
	add	eax, -3
	cmp	eax, 2
	sbb	eax, eax
	and	eax, 1
	mov	dword ptr [rsp + 0x2c], eax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	edi, dword ptr [rsp + 0x2c]
	mov	esi, dword ptr [rsp + 0x30]
	call	error
.label_296:
	mov	qword ptr [r15], 0
	test	bl, bl
	je	.label_302
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_302:
	mov	ebx, dword ptr [rsp + 0xc]
	mov	rax, qword ptr [rsp + 0x10]
	dec	qword ptr [rsp + 0x20]
.label_299:
	add	r15, 8
	add	rax, 8
	dec	ebx
	jne	.label_308
	jmp	.label_312
.label_303:
	cmp	eax, 4
	cmovne	r15, rbp
.label_295:
	mov	r12, qword ptr [rsp]
	cmp	r15, -1
	jne	.label_290
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_292
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_290:
	test	r13d, r13d
	jle	.label_300
	mov	rbp, qword ptr [rsp + 0x18]
	add	rbp, 8
	nop	dword ptr [rax]
.label_291:
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_306
	call	rpl_fclose
	test	eax, eax
	je	.label_306
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rdx, qword ptr [r14]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_30
	xor	eax, eax
	mov	esi, r15d
	call	error
.label_306:
	add	rbp, 8
	add	r14, 8
	dec	r13d
	jne	.label_291
.label_300:
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	and	r12b, 1
	mov	eax, r12d
	add	rsp, 0x2058
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_310:
	mov	r12, qword ptr [rsp]
	jmp	.label_290
	.section	.text
	.align	16
	#Procedure 0x404449
	.globl sub_404449
	.type sub_404449, @function
sub_404449:

	nop	dword ptr [rax]
.label_315:
	mov	ecx, 1
.label_314:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x404460
	.globl sub_404460
	.type sub_404460, @function
sub_404460:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404465

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_315
	test	rsi, rsi
	mov	ecx, 1
	je	.label_314
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_314
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044a0

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
	je	.label_328
	mov	edx, OFFSET FLAT:label_319
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_325
.label_328:
	mov	edx, OFFSET FLAT:label_326
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_325:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
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
	mov	esi, OFFSET FLAT:label_327
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_331
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_332]]
.label_447:
	add	rsp, 8
	jmp	.label_318
.label_331:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
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
	jmp	.label_318
.label_448:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
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
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
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
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
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
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
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
	jmp	.label_318
.label_452:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
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
	jmp	.label_318
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
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
	jmp	.label_318
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
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
	jmp	.label_318
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
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
	jmp	.label_318
.label_455:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
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
.label_318:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047f8
	.globl sub_4047f8
	.type sub_4047f8, @function
sub_4047f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404800
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
	#Procedure 0x40480f
	.globl sub_40480f
	.type sub_40480f, @function
sub_40480f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404810

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_345
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_345:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_341
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_340
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_342
	test	esi, esi
	jne	.label_341
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_347
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_338
.label_341:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_337
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_342
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_344
.label_340:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_342:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_348
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_336
.label_348:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_336:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_344:
	cmp	eax, 6
	jne	.label_337
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_346
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_335
.label_337:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_339
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_343
.label_347:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_338:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_346:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_335:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_339:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_343:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049c4
	.globl sub_4049c4
	.type sub_4049c4, @function
sub_4049c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0

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
	jne	.label_350
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
	je	.label_349
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_354
	mov	eax, OFFSET FLAT:label_355
	jmp	.label_353
.label_349:
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
	je	.label_356
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_351
	mov	eax, OFFSET FLAT:label_352
	jmp	.label_353
.label_356:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_140
	mov	eax, OFFSET FLAT:label_125
.label_353:
	cmove	rax, rcx
.label_350:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a8d
	.globl sub_404a8d
	.type sub_404a8d, @function
sub_404a8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a90

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x404a95
	.globl sub_404a95
	.type sub_404a95, @function
sub_404a95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404aa0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_357
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_357:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404abe
	.globl sub_404abe
	.type sub_404abe, @function
sub_404abe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404ac0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ac8
	.globl sub_404ac8
	.type sub_404ac8, @function
sub_404ac8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ad0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ada
	.globl sub_404ada
	.type sub_404ada, @function
sub_404ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ae0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x404aea
	.globl sub_404aea
	.type sub_404aea, @function
sub_404aea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404af0
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
	#Procedure 0x404b09
	.globl sub_404b09
	.type sub_404b09, @function
sub_404b09:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b10

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_358
	test	rdx, rdx
	je	.label_358
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_358:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b3b
	.globl sub_404b3b
	.type sub_404b3b, @function
sub_404b3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b40

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
	je	.label_359
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_360
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_360
.label_359:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_360
	test	cl, cl
	jne	.label_360
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_360:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ba6
	.globl sub_404ba6
	.type sub_404ba6, @function
sub_404ba6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bb0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_361
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_361
.label_362:
	ret	
.label_361:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_362
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bd6
	.globl sub_404bd6
	.type sub_404bd6, @function
sub_404bd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404be0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_369
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_365:
	test	rbp, rbp
	je	.label_367
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_364
.label_367:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_370
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_366
	.section	.text
	.align	16
	#Procedure 0x404c73
	.globl sub_404c73
	.type sub_404c73, @function
sub_404c73:

	nop	word ptr cs:[rax + rax]
.label_364:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_368
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_366:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_365
.label_369:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	.section	.text
	.align	16
	#Procedure 0x404cde
	.globl sub_404cde
	.type sub_404cde, @function
sub_404cde:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404ce0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_70
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_371
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d05
	.globl sub_404d05
	.type sub_404d05, @function
sub_404d05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d75
	.globl sub_404d75
	.type sub_404d75, @function
sub_404d75:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d82
	.globl sub_404d82
	.type sub_404d82, @function
sub_404d82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da6
	.globl sub_404da6
	.type sub_404da6, @function
sub_404da6:

	nop	word ptr cs:[rax + rax]
